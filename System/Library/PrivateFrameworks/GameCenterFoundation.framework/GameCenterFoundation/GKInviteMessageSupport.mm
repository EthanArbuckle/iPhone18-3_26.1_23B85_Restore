@interface GKInviteMessageSupport
+ (id)extractPropertiesWithData:(id)data;
+ (id)makeInviteMessageDoneWithProperties:(id)properties;
@end

@implementation GKInviteMessageSupport

+ (id)makeInviteMessageDoneWithProperties:(id)properties
{
  propertiesCopy = properties;
  if (properties)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DC950, qword_227AA10E8);
    propertiesCopy = sub_227A7241C();
  }

  v4 = static InviteMessageSupport.makeInviteMessageDone(properties:)(propertiesCopy);
  v6 = v5;

  v7 = sub_227A71B8C();
  sub_2279E3FA4(v4, v6);

  return v7;
}

+ (id)extractPropertiesWithData:(id)data
{
  dataCopy = data;
  v4 = sub_227A71B9C();
  v6 = v5;

  v7 = static InviteMessageSupport.extractProperties(data:)(v4, v6);
  sub_2279E3FA4(v4, v6);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DC950, qword_227AA10E8);
    v8 = sub_227A7240C();
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end