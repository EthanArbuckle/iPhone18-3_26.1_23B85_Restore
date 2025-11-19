@interface EMMailbox(MSExtension)
- (id)bucketBarConfigurationIdentifier;
@end

@implementation EMMailbox(MSExtension)

- (id)bucketBarConfigurationIdentifier
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [a1 smartMailboxType];
    [a1 type];
    v2 = NSStringFromEMSmartMailboxType();
  }

  else
  {
    v3 = [a1 objectID];
    v4 = [v3 url];
    v2 = [v4 absoluteString];
  }

  return v2;
}

@end