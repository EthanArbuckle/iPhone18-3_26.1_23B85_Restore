@interface PeopleDiscoveryEvent
+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4;
@end

@implementation PeopleDiscoveryEvent

+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4
{
  v5 = a3;
  v6 = sub_25469D0A8();
  v8 = v7;

  swift_getObjCClassMetadata();
  v9 = static PeopleDiscoveryEvent.event(with:dataVersion:)(v6, v8, a4);
  sub_25469B2DC(v6, v8);

  return v9;
}

@end