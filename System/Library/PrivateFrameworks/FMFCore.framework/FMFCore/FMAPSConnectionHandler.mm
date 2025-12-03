@interface FMAPSConnectionHandler
- (_TtC7FMFCore22FMAPSConnectionHandler)init;
- (void)connection:(id)connection didReceiveMessageForTopic:(id)topic userInfo:(id)info;
- (void)connection:(id)connection didReceivePublicToken:(id)token;
- (void)connection:(id)connection didReceiveToken:(id)token forTopic:(id)topic identifier:(id)identifier;
@end

@implementation FMAPSConnectionHandler

- (void)connection:(id)connection didReceivePublicToken:(id)token
{
  if (token)
  {
    connectionCopy = connection;
    selfCopy = self;
    tokenCopy = token;
    v9 = sub_24A4AAA10();
    v11 = v10;
  }

  else
  {
    connectionCopy2 = connection;
    selfCopy2 = self;
    v9 = 0;
    v11 = 0xF000000000000000;
  }

  sub_24A3A8D3C(v9, v11);
  sub_24A386DFC(v9, v11);
}

- (_TtC7FMFCore22FMAPSConnectionHandler)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)connection:(id)connection didReceiveToken:(id)token forTopic:(id)topic identifier:(id)identifier
{
  tokenCopy = token;
  if (token)
  {
    connectionCopy = connection;
    topicCopy = topic;
    identifierCopy = identifier;
    selfCopy = self;
    v14 = tokenCopy;
    tokenCopy = sub_24A4AAA10();
    v16 = v15;

    if (topic)
    {
      goto LABEL_3;
    }
  }

  else
  {
    connectionCopy2 = connection;
    topicCopy2 = topic;
    identifierCopy2 = identifier;
    selfCopy2 = self;
    v16 = 0xF000000000000000;
    if (topic)
    {
LABEL_3:
      sub_24A4AB850();

      if (!identifier)
      {
        goto LABEL_7;
      }

      goto LABEL_4;
    }
  }

  if (identifier)
  {
LABEL_4:
    sub_24A4AB850();
  }

LABEL_7:
  sub_24A456BE4(tokenCopy, v16);

  sub_24A386DFC(tokenCopy, v16);
}

- (void)connection:(id)connection didReceiveMessageForTopic:(id)topic userInfo:(id)info
{
  infoCopy = info;
  if (topic)
  {
    v8 = sub_24A4AB850();
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
    infoCopy = sub_24A4AB780();
  }

LABEL_4:
  connectionCopy = connection;
  selfCopy = self;
  sub_24A45714C(v8, v10, infoCopy);
}

@end