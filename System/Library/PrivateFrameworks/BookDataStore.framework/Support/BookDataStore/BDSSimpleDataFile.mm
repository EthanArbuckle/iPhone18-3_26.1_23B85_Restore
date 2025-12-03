@interface BDSSimpleDataFile
- (BDSSimpleDataFile)initWithURL:(id)l;
- (BOOL)remove:(id *)remove;
- (BOOL)save:(id)save error:(id *)error;
- (id)load:(id *)load;
@end

@implementation BDSSimpleDataFile

- (BDSSimpleDataFile)initWithURL:(id)l
{
  lCopy = l;
  v9.receiver = self;
  v9.super_class = BDSSimpleDataFile;
  v6 = [(BDSSimpleDataFile *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_url, l);
  }

  return v7;
}

- (id)load:(id *)load
{
  v3 = [(BDSSimpleDataFile *)self url];
  v4 = [NSData dataWithContentsOfURL:v3];

  return v4;
}

- (BOOL)save:(id)save error:(id *)error
{
  saveCopy = save;
  v7 = [(BDSSimpleDataFile *)self url];
  v12 = 0;
  v8 = [saveCopy writeToURL:v7 options:1073741825 error:&v12];

  v9 = v12;
  if (error && v9)
  {
    v10 = v9;
    *error = v9;
  }

  return v8;
}

- (BOOL)remove:(id *)remove
{
  v5 = +[NSFileManager defaultManager];
  v6 = [(BDSSimpleDataFile *)self url];
  v11 = 0;
  v7 = [v5 removeItemAtURL:v6 error:&v11];
  v8 = v11;

  if (remove && v8)
  {
    v9 = v8;
    *remove = v8;
  }

  return v7;
}

@end