@interface XRRecountConfiguration
- (BOOL)isEqual:(id)equal;
- (XRRecountConfiguration)init;
- (XRRecountConfiguration)initWithAnalysisMode:(id)mode countingMode:(id)countingMode;
- (XRRecountConfiguration)initWithCoder:(id)coder;
- (id)initFromAttribute:(id)attribute;
- (void)encodeWithCoder:(id)coder;
@end

@implementation XRRecountConfiguration

- (id)initFromAttribute:(id)attribute
{
  if (attribute)
  {
    swift_unknownObjectRetain();
    sub_248030D68();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v4, 0, sizeof(v4));
  }

  return XRRecountConfiguration.init(from:)(v4);
}

- (XRRecountConfiguration)initWithAnalysisMode:(id)mode countingMode:(id)countingMode
{
  v5 = sub_248030B38();
  v7 = v6;
  v8 = sub_248030B38();
  v9 = (self + OBJC_IVAR___XRRecountConfiguration_analysisMode);
  *v9 = v5;
  v9[1] = v7;
  v10 = (self + OBJC_IVAR___XRRecountConfiguration_countingMode);
  *v10 = v8;
  v10[1] = v11;
  v13.receiver = self;
  v13.super_class = XRRecountConfiguration;
  return [(XRRecountConfiguration *)&v13 init];
}

- (XRRecountConfiguration)initWithCoder:(id)coder
{
  coderCopy = coder;
  v4 = sub_2480269F4(coderCopy);

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  XRRecountConfiguration.encode(with:)(coderCopy);
}

- (BOOL)isEqual:(id)equal
{
  if (equal)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    sub_248030D68();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    selfCopy2 = self;
  }

  v6 = XRRecountConfiguration.isEqual(_:)(v8);

  sub_2480261D4(v8);
  return v6 & 1;
}

- (XRRecountConfiguration)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end