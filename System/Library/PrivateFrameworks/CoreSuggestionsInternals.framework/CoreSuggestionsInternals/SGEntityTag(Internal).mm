@interface SGEntityTag(Internal)
+ (id)identity:()Internal;
+ (id)messageWithEmailKey:()Internal;
@end

@implementation SGEntityTag(Internal)

+ (id)messageWithEmailKey:()Internal
{
  v4 = a3;
  messageId = [v4 messageId];
  source = [v4 source];

  v7 = [self messageWithMessageId:messageId fromSource:source];

  return v7;
}

+ (id)identity:()Internal
{
  v3 = MEMORY[0x277D01FA0];
  serialize = [a3 serialize];
  v5 = [v3 tagForLabel:@"ID" value:serialize];

  return v5;
}

@end