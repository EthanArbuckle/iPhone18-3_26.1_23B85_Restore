@interface EMMailbox(MSExtension)
- (id)bucketBarConfigurationIdentifier;
@end

@implementation EMMailbox(MSExtension)

- (id)bucketBarConfigurationIdentifier
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [self smartMailboxType];
    [self type];
    absoluteString = NSStringFromEMSmartMailboxType();
  }

  else
  {
    objectID = [self objectID];
    v4 = [objectID url];
    absoluteString = [v4 absoluteString];
  }

  return absoluteString;
}

@end