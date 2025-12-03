@interface DebugInformationWrapper
- (id)copyWithZone:(void *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation DebugInformationWrapper

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  DebugInformationWrapper.encode(with:)(coderCopy);
}

- (id)copyWithZone:(void *)zone
{
  selfCopy = self;
  DebugInformationWrapper.copy(with:)(v6);

  sub_18E1E15F4(v6, v6[3]);
  v4 = sub_18E44F3BC();
  sub_18E1C9934(v6);
  return v4;
}

@end