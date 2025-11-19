@interface XRRecountConfiguration
- (BOOL)isEqual:(id)a3;
- (XRRecountConfiguration)init;
- (XRRecountConfiguration)initWithAnalysisMode:(id)a3 countingMode:(id)a4;
- (XRRecountConfiguration)initWithCoder:(id)a3;
- (id)initFromAttribute:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation XRRecountConfiguration

- (id)initFromAttribute:(id)a3
{
  if (a3)
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

- (XRRecountConfiguration)initWithAnalysisMode:(id)a3 countingMode:(id)a4
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

- (XRRecountConfiguration)initWithCoder:(id)a3
{
  v3 = a3;
  v4 = sub_2480269F4(v3);

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = self;
  XRRecountConfiguration.encode(with:)(v4);
}

- (BOOL)isEqual:(id)a3
{
  if (a3)
  {
    v4 = self;
    swift_unknownObjectRetain();
    sub_248030D68();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    v5 = self;
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