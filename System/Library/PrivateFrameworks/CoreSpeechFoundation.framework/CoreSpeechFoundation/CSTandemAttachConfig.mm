@interface CSTandemAttachConfig
- (CSTandemAttachConfig)initWithAllowMultiChannel:(BOOL)channel;
@end

@implementation CSTandemAttachConfig

- (CSTandemAttachConfig)initWithAllowMultiChannel:(BOOL)channel
{
  v5.receiver = self;
  v5.super_class = CSTandemAttachConfig;
  result = [(CSTandemAttachConfig *)&v5 init];
  if (result)
  {
    result->_allowMultiChannel = channel;
  }

  return result;
}

@end