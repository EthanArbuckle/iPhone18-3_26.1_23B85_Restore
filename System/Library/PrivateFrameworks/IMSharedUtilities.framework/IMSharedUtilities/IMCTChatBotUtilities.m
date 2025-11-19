@interface IMCTChatBotUtilities
+ (BOOL)IMHandleIsChatBot:(id)a3;
+ (id)IMChipFromCTChip:(id)a3 originalID:(id)a4;
+ (id)IMChipListFromCTChipList:(id)a3 originalID:(id)a4;
+ (id)IMChipListFromSuggestions:(id)a3;
- (IMCTChatBotUtilities)init;
@end

@implementation IMCTChatBotUtilities

+ (BOOL)IMHandleIsChatBot:(id)a3
{
  v3 = sub_1A88C82E8();
  v5 = sub_1A87BB058(v3, v4);

  return v5 & 1;
}

+ (id)IMChipListFromSuggestions:(id)a3
{
  sub_1A88C82E8();
  swift_getObjCClassMetadata();
  v3 = sub_1A87BA620();

  return v3;
}

+ (id)IMChipListFromCTChipList:(id)a3 originalID:(id)a4
{
  sub_1A88C82E8();
  swift_getObjCClassMetadata();
  v5 = a3;
  v6 = sub_1A87BA95C(a3);

  return v6;
}

+ (id)IMChipFromCTChip:(id)a3 originalID:(id)a4
{
  sub_1A88C82E8();
  v5 = a3;
  v6 = sub_1A87BC3A0(v5);

  return v6;
}

- (IMCTChatBotUtilities)init
{
  v3.receiver = self;
  v3.super_class = IMCTChatBotUtilities;
  return [(IMCTChatBotUtilities *)&v3 init];
}

@end