@interface MIStagingRecord
- (BOOL)isEqual:(id)equal;
- (MIStagingRecord)initWithStagingBase:(id)base relativePath:(id)path;
- (NSURL)completeURL;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
@end

@implementation MIStagingRecord

- (MIStagingRecord)initWithStagingBase:(id)base relativePath:(id)path
{
  baseCopy = base;
  pathCopy = path;
  v12.receiver = self;
  v12.super_class = MIStagingRecord;
  v9 = [(MIStagingRecord *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_stagingBase, base);
    objc_storeStrong(&v10->_relativePath, path);
  }

  return v10;
}

- (NSURL)completeURL
{
  stagingBase = [(MIStagingRecord *)self stagingBase];
  relativePath = [(MIStagingRecord *)self relativePath];
  v5 = [stagingBase URLByAppendingPathComponent:relativePath isDirectory:1];

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v10 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      stagingBase = [(MIStagingRecord *)v5 stagingBase];
      stagingBase2 = [(MIStagingRecord *)self stagingBase];
      if ([stagingBase isEqual:stagingBase2])
      {
        relativePath = [(MIStagingRecord *)v5 relativePath];
        relativePath2 = [(MIStagingRecord *)self relativePath];
        v10 = [relativePath isEqual:relativePath2];
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
  stagingBase = [(MIStagingRecord *)self stagingBase];
  path = [stagingBase path];
  relativePath = [(MIStagingRecord *)self relativePath];
  v6 = [NSString stringWithFormat:@"%@/%@", path, relativePath];

  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  stagingBase = [(MIStagingRecord *)self stagingBase];
  relativePath = [(MIStagingRecord *)self relativePath];
  v7 = [v4 initWithStagingBase:stagingBase relativePath:relativePath];

  return v7;
}

- (unint64_t)hash
{
  stagingBase = [(MIStagingRecord *)self stagingBase];
  v4 = [stagingBase hash];
  relativePath = [(MIStagingRecord *)self relativePath];
  v6 = [relativePath hash];

  return v6 ^ v4;
}

@end