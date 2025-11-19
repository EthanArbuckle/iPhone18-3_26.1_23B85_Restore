@interface MDMPushServiceConnection
+ (id)connectionWithEnvironment:(unint64_t)a3 channel:(unint64_t)a4 queue:(id)a5;
- (void)requestAppTokenForTopic:(id)a3;
@end

@implementation MDMPushServiceConnection

+ (id)connectionWithEnvironment:(unint64_t)a3 channel:(unint64_t)a4 queue:(id)a5
{
  v8 = MEMORY[0x277CEE9F0];
  if (a3)
  {
    v8 = MEMORY[0x277CEE9E8];
  }

  v9 = *v8;
  v10 = MEMORY[0x277D24CB0];
  if (!a3)
  {
    v10 = MEMORY[0x277D24CB8];
  }

  v11 = MEMORY[0x277D24E08];
  if (a3)
  {
    v11 = MEMORY[0x277D24E00];
  }

  if (a4)
  {
    v10 = v11;
  }

  v12 = *v10;
  v13 = v9;
  v14 = a5;
  v15 = [(APSConnection *)[MDMPushServiceConnection alloc] initWithEnvironmentName:v13 namedDelegatePort:v12 queue:v14];

  [(MDMPushServiceConnection *)v15 setChannel:a4];
  [(MDMPushServiceConnection *)v15 setEnvironment:a3];

  return v15;
}

- (void)requestAppTokenForTopic:(id)a3
{
  v6 = a3;
  v4 = [(MDMPushServiceConnection *)self channel];
  v5 = MEMORY[0x277D24CF8];
  if (v4)
  {
    v5 = MEMORY[0x277D24E10];
  }

  [(APSConnection *)self requestTokenForTopic:v6 identifier:*v5];
}

@end