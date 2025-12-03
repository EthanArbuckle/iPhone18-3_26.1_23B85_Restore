@interface ConversationStreamFactory
+ (id)createWithType:(int64_t)type;
@end

@implementation ConversationStreamFactory

+ (id)createWithType:(int64_t)type
{
  if (type)
  {
    v3 = type metadata accessor for ConversationStreamAIMLIS();
  }

  else
  {
    v3 = type metadata accessor for ConversationStreamPLL();
  }

  v4 = [objc_allocWithZone(v3) init];

  return v4;
}

@end