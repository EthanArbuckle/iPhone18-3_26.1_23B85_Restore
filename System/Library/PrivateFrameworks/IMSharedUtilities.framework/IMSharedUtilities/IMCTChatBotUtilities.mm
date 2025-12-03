@interface IMCTChatBotUtilities
+ (BOOL)IMHandleIsChatBot:(id)bot;
+ (id)IMChipFromCTChip:(id)chip originalID:(id)d;
+ (id)IMChipListFromCTChipList:(id)list originalID:(id)d;
+ (id)IMChipListFromSuggestions:(id)suggestions;
- (IMCTChatBotUtilities)init;
@end

@implementation IMCTChatBotUtilities

+ (BOOL)IMHandleIsChatBot:(id)bot
{
  v3 = sub_1A88C82E8();
  v5 = sub_1A87BB058(v3, v4);

  return v5 & 1;
}

+ (id)IMChipListFromSuggestions:(id)suggestions
{
  sub_1A88C82E8();
  swift_getObjCClassMetadata();
  v3 = sub_1A87BA620();

  return v3;
}

+ (id)IMChipListFromCTChipList:(id)list originalID:(id)d
{
  sub_1A88C82E8();
  swift_getObjCClassMetadata();
  listCopy = list;
  v6 = sub_1A87BA95C(list);

  return v6;
}

+ (id)IMChipFromCTChip:(id)chip originalID:(id)d
{
  sub_1A88C82E8();
  chipCopy = chip;
  v6 = sub_1A87BC3A0(chipCopy);

  return v6;
}

- (IMCTChatBotUtilities)init
{
  v3.receiver = self;
  v3.super_class = IMCTChatBotUtilities;
  return [(IMCTChatBotUtilities *)&v3 init];
}

@end