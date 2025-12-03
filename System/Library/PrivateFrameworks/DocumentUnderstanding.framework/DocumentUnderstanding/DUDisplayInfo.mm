@interface DUDisplayInfo
- (CGPoint)absoluteOriginOnScreen;
- (CGRect)frameInWindow;
- (id)copyWithZone:(void *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation DUDisplayInfo

- (CGRect)frameInWindow
{
  v2 = sub_232B5617C();
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (CGPoint)absoluteOriginOnScreen
{
  v2 = sub_232B56308();
  result.y = v3;
  result.x = v2;
  return result;
}

- (id)copyWithZone:(void *)zone
{
  selfCopy = self;
  sub_232B57378(v6);

  sub_232B203C8(v6, v6[3]);
  v4 = sub_232CEA740();
  sub_232B2040C(v6);
  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  sub_232B5746C(coderCopy);
}

@end