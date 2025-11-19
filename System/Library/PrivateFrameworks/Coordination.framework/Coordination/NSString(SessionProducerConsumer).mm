@interface NSString(SessionProducerConsumer)
- (id)_sessionConsumerSubTopic;
- (id)_sessionProducerSubTopic;
@end

@implementation NSString(SessionProducerConsumer)

- (id)_sessionProducerSubTopic
{
  if ([a1 hasPrefix:@"SessionProducer+"])
  {
    v2 = [a1 rangeOfString:@"SessionProducer+"];
    v4 = [a1 substringFromIndex:v2 + v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)_sessionConsumerSubTopic
{
  if ([a1 hasPrefix:@"SessionConsumer+"])
  {
    v2 = [a1 rangeOfString:@"SessionConsumer+"];
    v4 = [a1 substringFromIndex:v2 + v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end