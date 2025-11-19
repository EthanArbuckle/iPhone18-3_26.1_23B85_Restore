@interface UAFPaths
+ (id)calorimetryWRMetConfigPath;
- (_TtC15CoreMotionFDNML8UAFPaths)init;
@end

@implementation UAFPaths

+ (id)calorimetryWRMetConfigPath
{
  _s15CoreMotionFDNML8UAFPathsC26calorimetryWRMetConfigPathSSSgyFZ_0();
  if (v2)
  {
    v3 = sub_245F76868();
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (_TtC15CoreMotionFDNML8UAFPaths)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for UAFPaths();
  return [(UAFPaths *)&v3 init];
}

@end