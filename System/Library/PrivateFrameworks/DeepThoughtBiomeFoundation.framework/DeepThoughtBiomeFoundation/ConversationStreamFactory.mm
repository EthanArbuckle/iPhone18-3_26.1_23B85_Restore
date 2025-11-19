@interface ConversationStreamFactory
+ (id)createWithType:(int64_t)a3;
@end

@implementation ConversationStreamFactory

+ (id)createWithType:(int64_t)a3
{
  if (a3)
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