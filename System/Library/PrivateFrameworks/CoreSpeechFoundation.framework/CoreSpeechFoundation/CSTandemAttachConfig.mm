@interface CSTandemAttachConfig
- (CSTandemAttachConfig)initWithAllowMultiChannel:(BOOL)a3;
@end

@implementation CSTandemAttachConfig

- (CSTandemAttachConfig)initWithAllowMultiChannel:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = CSTandemAttachConfig;
  result = [(CSTandemAttachConfig *)&v5 init];
  if (result)
  {
    result->_allowMultiChannel = a3;
  }

  return result;
}

@end