@interface BDSSimpleDataFile
- (BDSSimpleDataFile)initWithURL:(id)a3;
- (BOOL)remove:(id *)a3;
- (BOOL)save:(id)a3 error:(id *)a4;
- (id)load:(id *)a3;
@end

@implementation BDSSimpleDataFile

- (BDSSimpleDataFile)initWithURL:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = BDSSimpleDataFile;
  v6 = [(BDSSimpleDataFile *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_url, a3);
  }

  return v7;
}

- (id)load:(id *)a3
{
  v3 = [(BDSSimpleDataFile *)self url];
  v4 = [NSData dataWithContentsOfURL:v3];

  return v4;
}

- (BOOL)save:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(BDSSimpleDataFile *)self url];
  v12 = 0;
  v8 = [v6 writeToURL:v7 options:1073741825 error:&v12];

  v9 = v12;
  if (a4 && v9)
  {
    v10 = v9;
    *a4 = v9;
  }

  return v8;
}

- (BOOL)remove:(id *)a3
{
  v5 = +[NSFileManager defaultManager];
  v6 = [(BDSSimpleDataFile *)self url];
  v11 = 0;
  v7 = [v5 removeItemAtURL:v6 error:&v11];
  v8 = v11;

  if (a3 && v8)
  {
    v9 = v8;
    *a3 = v8;
  }

  return v7;
}

@end