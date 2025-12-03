@interface FUPegasusBridge
+ (id)unsubscribeWithChannelId:(id)id;
+ (void)fetchUpdateFor:(NSString *)for completionHandler:(id)handler;
+ (void)flightSearchResponseFor:(NSString *)for date:(NSDate *)date clientBundleIdentifier:(NSString *)identifier completionHandler:(id)handler;
+ (void)subscribeTo:(NSString *)to date:(NSDate *)date clientBundleIdentifier:(NSString *)identifier completionHandler:(id)handler;
+ (void)subscribeTo:(NSString *)to date:(NSDate *)date clientBundleIdentifier:(NSString *)identifier pushMessagesHandler:(id)handler completionHandler:;
- (_TtC19FlightUtilitiesCore15FUPegasusBridge)init;
@end

@implementation FUPegasusBridge

+ (void)flightSearchResponseFor:(NSString *)for date:(NSDate *)date clientBundleIdentifier:(NSString *)identifier completionHandler:(id)handler
{
  v11 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0615F0, &qword_24B8572F8) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v13 = &v22 - v12;
  v14 = _Block_copy(handler);
  v15 = swift_allocObject();
  v15[2] = for;
  v15[3] = date;
  v15[4] = identifier;
  v15[5] = v14;
  v15[6] = self;
  v16 = sub_24B855C2C();
  (*(*(v16 - 8) + 56))(v13, 1, 1, v16);
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_24B857398;
  v17[5] = v15;
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = &unk_24B8573A0;
  v18[5] = v17;
  forCopy = for;
  dateCopy = date;
  identifierCopy = identifier;
  sub_24B852528(0, 0, v13, &unk_24B8573A8, v18);
}

+ (void)subscribeTo:(NSString *)to date:(NSDate *)date clientBundleIdentifier:(NSString *)identifier pushMessagesHandler:(id)handler completionHandler:
{
  v7 = v6;
  v13 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0615F0, &qword_24B8572F8) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v15 = &v25 - v14;
  v16 = _Block_copy(handler);
  v17 = _Block_copy(v7);
  v18 = swift_allocObject();
  v18[2] = to;
  v18[3] = date;
  v18[4] = identifier;
  v18[5] = v16;
  v18[6] = v17;
  v18[7] = self;
  v19 = sub_24B855C2C();
  (*(*(v19 - 8) + 56))(v15, 1, 1, v19);
  v20 = swift_allocObject();
  v20[2] = 0;
  v20[3] = 0;
  v20[4] = &unk_24B857378;
  v20[5] = v18;
  v21 = swift_allocObject();
  v21[2] = 0;
  v21[3] = 0;
  v21[4] = &unk_24B857380;
  v21[5] = v20;
  toCopy = to;
  dateCopy = date;
  identifierCopy = identifier;
  sub_24B852528(0, 0, v15, &unk_24B857388, v21);
}

+ (void)subscribeTo:(NSString *)to date:(NSDate *)date clientBundleIdentifier:(NSString *)identifier completionHandler:(id)handler
{
  v11 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0615F0, &qword_24B8572F8) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v13 = &v22 - v12;
  v14 = _Block_copy(handler);
  v15 = swift_allocObject();
  v15[2] = to;
  v15[3] = date;
  v15[4] = identifier;
  v15[5] = v14;
  v15[6] = self;
  v16 = sub_24B855C2C();
  (*(*(v16 - 8) + 56))(v13, 1, 1, v16);
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_24B857350;
  v17[5] = v15;
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = &unk_24B857358;
  v18[5] = v17;
  toCopy = to;
  dateCopy = date;
  identifierCopy = identifier;
  sub_24B852528(0, 0, v13, &unk_24B857360, v18);
}

+ (void)fetchUpdateFor:(NSString *)for completionHandler:(id)handler
{
  v7 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0615F0, &qword_24B8572F8) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v9 = &v16 - v8;
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  v11[2] = for;
  v11[3] = v10;
  v11[4] = self;
  v12 = sub_24B855C2C();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_24B857308;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_24B857318;
  v14[5] = v13;
  forCopy = for;
  sub_24B852528(0, 0, v9, &unk_24B857328, v14);
}

+ (id)unsubscribeWithChannelId:(id)id
{
  sub_24B855B7C();
  v3 = _s19FlightUtilitiesCore15FUPegasusBridgeC11unsubscribe9channelIds5Error_pSgSS_tFZ_0();

  if (v3)
  {
    v4 = sub_24B8558FC();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (_TtC19FlightUtilitiesCore15FUPegasusBridge)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for FUPegasusBridge();
  return [(FUPegasusBridge *)&v3 init];
}

@end