@interface S3AccessConfig
- (S3AccessConfig)initWithAWSAccessKeyID:(id)d AWSSecretAccessKey:(id)key;
@end

@implementation S3AccessConfig

- (S3AccessConfig)initWithAWSAccessKeyID:(id)d AWSSecretAccessKey:(id)key
{
  dCopy = d;
  keyCopy = key;
  v12.receiver = self;
  v12.super_class = S3AccessConfig;
  v9 = [(S3AccessConfig *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_AWSAccessKeyID, d);
    objc_storeStrong(&v10->_AWSSecretAccessKey, key);
  }

  return v10;
}

@end