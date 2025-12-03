@interface CKClosure
- (void)encodeWithCoder:(id)coder;
@end

@implementation CKClosure

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  sub_1C86C0598(coderCopy);
}

@end