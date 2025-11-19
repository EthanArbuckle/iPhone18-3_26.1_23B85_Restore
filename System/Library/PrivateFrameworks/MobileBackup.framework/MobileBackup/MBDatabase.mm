@interface MBDatabase
+ (id)databaseWithDrive:(id)a3 path:(id)a4 domainManager:(id)a5 error:(id *)a6;
+ (id)databaseWithFile:(id)a3 domainManager:(id)a4 error:(id *)a5;
- (MBDatabase)initWithData:(id)a3 domainManager:(id)a4 error:(id *)a5;
- (MBDatabase)initWithDrive:(id)a3 path:(id)a4 domainManager:(id)a5 error:(id *)a6;
- (MBDatabase)initWithFile:(id)a3 domainManager:(id)a4 error:(id *)a5;
- (NSString)description;
- (id)enumerateFiles:(id)a3;
- (id)fileAtOffset:(unint64_t)a3;
- (id)fileEnumerator;
- (id)indexFromDatabaseIgnoringTruncation:(BOOL)a3;
@end

@implementation MBDatabase

+ (id)databaseWithFile:(id)a3 domainManager:(id)a4 error:(id *)a5
{
  v7 = a4;
  v8 = a3;
  v9 = [[MBDatabase alloc] initWithFile:v8 domainManager:v7 error:a5];

  return v9;
}

+ (id)databaseWithDrive:(id)a3 path:(id)a4 domainManager:(id)a5 error:(id *)a6
{
  v9 = a5;
  v10 = a4;
  v11 = a3;
  v12 = [[MBDatabase alloc] initWithDrive:v11 path:v10 domainManager:v9 error:a6];

  return v12;
}

- (MBDatabase)initWithData:(id)a3 domainManager:(id)a4 error:(id *)a5
{
  v7 = a3;
  v8 = a4;
  v17.receiver = self;
  v17.super_class = MBDatabase;
  v9 = [(MBDatabase *)&v17 init];
  if (v9)
  {
    v10 = [[MBDecoder alloc] initWithData:v7];
    decoder = v9->_decoder;
    v9->_decoder = v10;

    objc_storeStrong(&v9->_domainManager, a4);
    if ([(MBDecoder *)v9->_decoder decodeInt32]!= 1835164770)
    {
      v16 = [[MBException alloc] initWithCode:11 format:@"Incorrect database magic number"];
LABEL_11:
      objc_exception_throw(v16);
    }

    [(MBDecoder *)v9->_decoder decodeVersion];
    v9->_version = v12;
    if (v12 < 5.0 || v12 >= 6.0)
    {
      v16 = [[MBException alloc] initWithCode:203 format:{@"Unsupported database version: %0.1f", *&v9->_version}];
      goto LABEL_11;
    }

    v9->_offsetBase = [(MBDecoder *)v9->_decoder offset];
  }

  v14 = v9;

  return v14;
}

- (MBDatabase)initWithFile:(id)a3 domainManager:(id)a4 error:(id *)a5
{
  v8 = a4;
  v9 = [NSData dataWithContentsOfFile:a3 options:8 error:a5];
  if (v9)
  {
    self = [(MBDatabase *)self initWithData:v9 domainManager:v8 error:a5];
    v10 = self;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (MBDatabase)initWithDrive:(id)a3 path:(id)a4 domainManager:(id)a5 error:(id *)a6
{
  v10 = a5;
  v11 = [a3 dataAtPath:a4 options:&off_1003E1E60 error:a6];
  if (v11)
  {
    self = [(MBDatabase *)self initWithData:v11 domainManager:v10 error:a6];
    v12 = self;
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)fileAtOffset:(unint64_t)a3
{
  [(MBDecoder *)self->_decoder setOffset:self->_offsetBase + a3];
  decoder = self->_decoder;

  return [MBFile fileWithDecoder:decoder database:self];
}

- (id)fileEnumerator
{
  v3 = [MBDecoder alloc];
  v4 = [(MBDecoder *)self->_decoder data];
  v5 = [(MBDecoder *)v3 initWithData:v4];

  [(MBDecoder *)v5 setOffset:self->_offsetBase];
  v6 = [[MBDatabaseFileEnumerator alloc] initWithDecoder:v5 database:self];

  return v6;
}

- (id)enumerateFiles:(id)a3
{
  v4 = a3;
  v5 = [(MBDatabase *)self fileEnumerator];
  v6 = [v5 nextObject];
  if (v6)
  {
    v7 = v6;
    do
    {
      if (!v4[2](v4, v7))
      {
        break;
      }

      v7 = [v5 nextObject];
    }

    while (v7);
  }

  return 0;
}

- (id)indexFromDatabaseIgnoringTruncation:(BOOL)a3
{
  v4 = +[MBDatabaseIndex databaseIndex];
  v5 = [MBDecoder alloc];
  v6 = [(MBDecoder *)self->_decoder data];
  v7 = [(MBDecoder *)v5 initWithData:v6];

  [(MBDecoder *)v7 setOffset:self->_offsetBase];
  v8 = [(MBDecoder *)v7 offset];
  v9 = [(MBDecoder *)v7 data];
  v10 = [v9 length];

  if (v8 < v10)
  {
    do
    {
      v11 = objc_autoreleasePoolPush();
      v12 = [(MBDecoder *)v7 offset];
      offsetBase = self->_offsetBase;
      v14 = [MBFile fileWithDecoder:v7 database:self];
      v15 = &v12[-offsetBase];
      v16 = +[MBDatabaseIndex flagsForMode:](MBDatabaseIndex, "flagsForMode:", [v14 mode]);
      v17 = [v14 fileID];
      [v4 setOffset:v15 flags:v16 forFileID:v17];

      v18 = [v14 domain];
      v19 = [v14 nonRedirectedDomain];

      if (v18 != v19)
      {
        [v4 setDomainRedirects:1];
      }

      objc_autoreleasePoolPop(v11);
      v20 = [(MBDecoder *)v7 offset];
      v21 = [(MBDecoder *)v7 data];
      v22 = [v21 length];
    }

    while (v20 < v22);
  }

  return v4;
}

- (NSString)description
{
  v3 = objc_opt_class();
  [(MBDatabase *)self version];
  return [NSString stringWithFormat:@"<%@: version=%0.1f>", v3, v4];
}

@end