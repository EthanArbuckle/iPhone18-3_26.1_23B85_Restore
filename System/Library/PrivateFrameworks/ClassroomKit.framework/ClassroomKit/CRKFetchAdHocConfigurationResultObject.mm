@interface CRKFetchAdHocConfigurationResultObject
- (CRKFetchAdHocConfigurationResultObject)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CRKFetchAdHocConfigurationResultObject

- (CRKFetchAdHocConfigurationResultObject)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = CRKFetchAdHocConfigurationResultObject;
  v5 = [(CATTaskResultObject *)&v9 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodePropertyListForKey:@"configuration"];
    configuration = v5->_configuration;
    v5->_configuration = v6;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = CRKFetchAdHocConfigurationResultObject;
  coderCopy = coder;
  [(CATTaskResultObject *)&v6 encodeWithCoder:coderCopy];
  v5 = [(CRKFetchAdHocConfigurationResultObject *)self configuration:v6.receiver];
  [coderCopy encodeObject:v5 forKey:@"configuration"];
}

@end