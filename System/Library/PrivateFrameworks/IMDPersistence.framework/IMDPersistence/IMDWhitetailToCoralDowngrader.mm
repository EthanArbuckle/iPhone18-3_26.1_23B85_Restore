@interface IMDWhitetailToCoralDowngrader
- (id)createDowngradeHelper;
@end

@implementation IMDWhitetailToCoralDowngrader

- (id)createDowngradeHelper
{
  v3 = [IMDWhitetailToCoralDowngradeHelper alloc];
  v6 = objc_msgSend_destinationPath(self, v4, v5);

  return MEMORY[0x1EEE66B58](v3, sel_initWithPath_, v6);
}

@end