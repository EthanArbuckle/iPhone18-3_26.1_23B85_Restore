@interface IKDialogTemplate
- (unint64_t)type;
@end

@implementation IKDialogTemplate

- (unint64_t)type
{
  v2 = [(IKViewElement *)self attributes];
  v3 = [v2 objectForKeyedSubscript:@"type"];
  v4 = [v3 isEqualToString:@"error"];

  return v4;
}

@end