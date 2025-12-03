@interface MDMPushServiceConnection
+ (id)connectionWithEnvironment:(unint64_t)environment channel:(unint64_t)channel queue:(id)queue;
- (void)requestAppTokenForTopic:(id)topic;
@end

@implementation MDMPushServiceConnection

+ (id)connectionWithEnvironment:(unint64_t)environment channel:(unint64_t)channel queue:(id)queue
{
  v8 = MEMORY[0x277CEE9F0];
  if (environment)
  {
    v8 = MEMORY[0x277CEE9E8];
  }

  v9 = *v8;
  v10 = MEMORY[0x277D24CB0];
  if (!environment)
  {
    v10 = MEMORY[0x277D24CB8];
  }

  v11 = MEMORY[0x277D24E08];
  if (environment)
  {
    v11 = MEMORY[0x277D24E00];
  }

  if (channel)
  {
    v10 = v11;
  }

  v12 = *v10;
  v13 = v9;
  queueCopy = queue;
  v15 = [(APSConnection *)[MDMPushServiceConnection alloc] initWithEnvironmentName:v13 namedDelegatePort:v12 queue:queueCopy];

  [(MDMPushServiceConnection *)v15 setChannel:channel];
  [(MDMPushServiceConnection *)v15 setEnvironment:environment];

  return v15;
}

- (void)requestAppTokenForTopic:(id)topic
{
  topicCopy = topic;
  channel = [(MDMPushServiceConnection *)self channel];
  v5 = MEMORY[0x277D24CF8];
  if (channel)
  {
    v5 = MEMORY[0x277D24E10];
  }

  [(APSConnection *)self requestTokenForTopic:topicCopy identifier:*v5];
}

@end