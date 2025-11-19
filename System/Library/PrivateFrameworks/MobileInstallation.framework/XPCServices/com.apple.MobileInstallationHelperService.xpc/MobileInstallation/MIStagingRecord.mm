@interface MIStagingRecord
- (BOOL)isEqual:(id)a3;
- (MIStagingRecord)initWithStagingBase:(id)a3 relativePath:(id)a4;
- (NSURL)completeURL;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
@end

@implementation MIStagingRecord

- (MIStagingRecord)initWithStagingBase:(id)a3 relativePath:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = MIStagingRecord;
  v9 = [(MIStagingRecord *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_stagingBase, a3);
    objc_storeStrong(&v10->_relativePath, a4);
  }

  return v10;
}

- (NSURL)completeURL
{
  v3 = [(MIStagingRecord *)self stagingBase];
  v4 = [(MIStagingRecord *)self relativePath];
  v5 = [v3 URLByAppendingPathComponent:v4 isDirectory:1];

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v10 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(MIStagingRecord *)v5 stagingBase];
      v7 = [(MIStagingRecord *)self stagingBase];
      if ([v6 isEqual:v7])
      {
        v8 = [(MIStagingRecord *)v5 relativePath];
        v9 = [(MIStagingRecord *)self relativePath];
        v10 = [v8 isEqual:v9];
      }

      else
      {
        v10 = 0;
      }
    }

    else
    {
      v10 = 0;
    }
  }

  return v10;
}

- (id)description
{
  v3 = [(MIStagingRecord *)self stagingBase];
  v4 = [v3 path];
  v5 = [(MIStagingRecord *)self relativePath];
  v6 = [NSString stringWithFormat:@"%@/%@", v4, v5];

  return v6;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  v5 = [(MIStagingRecord *)self stagingBase];
  v6 = [(MIStagingRecord *)self relativePath];
  v7 = [v4 initWithStagingBase:v5 relativePath:v6];

  return v7;
}

- (unint64_t)hash
{
  v3 = [(MIStagingRecord *)self stagingBase];
  v4 = [v3 hash];
  v5 = [(MIStagingRecord *)self relativePath];
  v6 = [v5 hash];

  return v6 ^ v4;
}

@end