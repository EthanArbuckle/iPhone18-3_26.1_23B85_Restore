@interface PeopleDiscoveryEvent
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
@end

@implementation PeopleDiscoveryEvent

+ (id)eventWithData:(id)data dataVersion:(unsigned int)version
{
  dataCopy = data;
  v6 = sub_25469D0A8();
  v8 = v7;

  swift_getObjCClassMetadata();
  v9 = static PeopleDiscoveryEvent.event(with:dataVersion:)(v6, v8, version);
  sub_25469B2DC(v6, v8);

  return v9;
}

@end