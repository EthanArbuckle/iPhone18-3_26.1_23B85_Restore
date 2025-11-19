@interface WFModelContentLocation
+ (NSString)prefix;
+ (id)objectWithWFSerializedRepresentation:(id)a3;
- (NSString)localizedTitle;
@end

@implementation WFModelContentLocation

+ (NSString)prefix
{
  static WFModelContentLocation.prefix.getter();
  v2 = sub_21E3437A0();

  return v2;
}

- (NSString)localizedTitle
{
  v2 = self;
  WFModelContentLocation.localizedTitle.getter();
  v4 = v3;

  if (v4)
  {
    v5 = sub_21E3437A0();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)objectWithWFSerializedRepresentation:(id)a3
{
  v3 = sub_21E343740();
  swift_getObjCClassMetadata();
  v4 = static WFModelContentLocation.object(withWFSerializedRepresentation:)(v3);

  return v4;
}

@end