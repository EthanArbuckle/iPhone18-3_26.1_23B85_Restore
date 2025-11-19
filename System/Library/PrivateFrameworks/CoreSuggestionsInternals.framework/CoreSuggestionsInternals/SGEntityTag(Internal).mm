@interface SGEntityTag(Internal)
+ (id)identity:()Internal;
+ (id)messageWithEmailKey:()Internal;
@end

@implementation SGEntityTag(Internal)

+ (id)messageWithEmailKey:()Internal
{
  v4 = a3;
  v5 = [v4 messageId];
  v6 = [v4 source];

  v7 = [a1 messageWithMessageId:v5 fromSource:v6];

  return v7;
}

+ (id)identity:()Internal
{
  v3 = MEMORY[0x277D01FA0];
  v4 = [a3 serialize];
  v5 = [v3 tagForLabel:@"ID" value:v4];

  return v5;
}

@end