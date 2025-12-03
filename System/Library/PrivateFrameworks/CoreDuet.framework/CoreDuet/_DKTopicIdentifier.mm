@interface _DKTopicIdentifier
+ (id)withTopic:(id)topic;
@end

@implementation _DKTopicIdentifier

+ (id)withTopic:(id)topic
{
  topicCopy = topic;
  type = [self type];
  v6 = [_DKIdentifier identifierWithString:topicCopy type:type];

  return v6;
}

@end