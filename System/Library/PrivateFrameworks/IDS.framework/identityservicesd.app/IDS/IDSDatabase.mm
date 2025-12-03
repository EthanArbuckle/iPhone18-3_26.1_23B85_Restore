@interface IDSDatabase
- (IDSDatabase)initWithDataProtectionClass:(unsigned int)class filename:(id)filename;
- (void)deleteDatabase;
- (void)ensureDatabaseIsInitialized;
@end

@implementation IDSDatabase

- (void)ensureDatabaseIsInitialized
{
  filename = [(IDSDatabase *)self filename];

  if (filename)
  {
    v4[0] = _NSConcreteStackBlock;
    v4[1] = 3221225472;
    v4[2] = sub_1006B7790;
    v4[3] = &unk_100BDDBB0;
    v4[4] = self;
    filename = objc_retainBlock(v4);
  }

  sub_10000B6F0(1, self, filename);
}

- (IDSDatabase)initWithDataProtectionClass:(unsigned int)class filename:(id)filename
{
  v4 = *&class;
  filenameCopy = filename;
  v10.receiver = self;
  v10.super_class = IDSDatabase;
  v7 = [(IDSDatabase *)&v10 init];
  v8 = v7;
  if (v7)
  {
    [(IDSDatabase *)v7 setFilename:filenameCopy];
    [(IDSDatabase *)v8 setDataProtectionClass:v4];
  }

  return v8;
}

- (void)deleteDatabase
{
  filename = [(IDSDatabase *)self filename];

  if (filename)
  {
    filename2 = [(IDSDatabase *)self filename];
    CSDBSqliteDeleteDatabase();
  }
}

@end