@interface ConversationUtils
+ (id)conversationTurnTypeToStringWithTurnType:(int64_t)a3;
+ (int64_t)stringToConversationTurnTypeWithTypeString:(id)a3;
- (_TtC26DeepThoughtBiomeFoundation17ConversationUtils)init;
@end

@implementation ConversationUtils

+ (id)conversationTurnTypeToStringWithTurnType:(int64_t)a3
{
  v3 = sub_248730FC0();

  return v3;
}

+ (int64_t)stringToConversationTurnTypeWithTypeString:(id)a3
{
  v3 = sub_248730FF0();
  v5 = v4;
  if (v3 == 0xD000000000000015 && 0x800000024873B500 == v4 || (v6 = v3, (sub_248731880() & 1) != 0))
  {

    return 0;
  }

  else if (v6 == 0xD000000000000018 && 0x800000024873B4E0 == v5)
  {

    return 1;
  }

  else
  {
    v8 = sub_248731880();

    if (v8)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

- (_TtC26DeepThoughtBiomeFoundation17ConversationUtils)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for ConversationUtils();
  return [(ConversationUtils *)&v3 init];
}

@end