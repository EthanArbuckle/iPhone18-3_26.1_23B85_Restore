@interface PushNotifications
- (void)connection:(id)connection didReceiveMessageForTopic:(id)topic userInfo:(id)info;
- (void)connection:(id)connection didReceivePublicToken:(id)token;
@end

@implementation PushNotifications

- (void)connection:(id)connection didReceivePublicToken:(id)token
{
  tokenCopy = token;
  if (token)
  {
    connectionCopy = connection;
    selfCopy = self;
    v8 = tokenCopy;
    tokenCopy = sub_217005FB4();
    v10 = v9;
  }

  else
  {
    connectionCopy2 = connection;
    selfCopy2 = self;
    v10 = 0xF000000000000000;
  }

  sub_21677A510(tokenCopy, v10);
}

- (void)connection:(id)connection didReceiveMessageForTopic:(id)topic userInfo:(id)info
{
  infoCopy = info;
  if (topic)
  {
    v8 = sub_21700E514();
    v10 = v9;
    if (!infoCopy)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = 0;
  v10 = 0;
  if (info)
  {
LABEL_3:
    infoCopy = sub_21700E354();
  }

LABEL_4:
  connectionCopy = connection;
  selfCopy = self;
  sub_216EFD3C4(selfCopy, v8, v10, infoCopy);
}

@end