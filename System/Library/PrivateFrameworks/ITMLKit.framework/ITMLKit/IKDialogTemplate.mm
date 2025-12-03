@interface IKDialogTemplate
- (unint64_t)type;
@end

@implementation IKDialogTemplate

- (unint64_t)type
{
  attributes = [(IKViewElement *)self attributes];
  v3 = [attributes objectForKeyedSubscript:@"type"];
  v4 = [v3 isEqualToString:@"error"];

  return v4;
}

@end