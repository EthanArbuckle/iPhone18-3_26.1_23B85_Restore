@interface DKIDSHandler
- (_TtC11DockKitCore12DKIDSHandler)init;
- (void)service:(id)service account:(id)account incomingData:(id)data fromID:(id)d context:(id)context;
- (void)service:(id)service account:(id)account incomingMessage:(id)message fromID:(id)d context:(id)context;
@end

@implementation DKIDSHandler

- (void)service:(id)service account:(id)account incomingData:(id)data fromID:(id)d context:(id)context
{
  dataCopy = data;
  if (data)
  {
    serviceCopy = service;
    accountCopy = account;
    dCopy = d;
    contextCopy = context;
    selfCopy = self;
    v17 = dataCopy;
    dataCopy = sub_224627038();
    v19 = v18;

    if (d)
    {
LABEL_3:
      v20 = sub_224627CD8();
      v22 = v21;

      goto LABEL_6;
    }
  }

  else
  {
    serviceCopy2 = service;
    accountCopy2 = account;
    dCopy2 = d;
    contextCopy2 = context;
    selfCopy2 = self;
    v19 = 0xF000000000000000;
    if (d)
    {
      goto LABEL_3;
    }
  }

  v20 = 0;
  v22 = 0;
LABEL_6:
  sub_224590994(dataCopy, v19, v20, v22);

  sub_2245687AC(dataCopy, v19);
}

- (void)service:(id)service account:(id)account incomingMessage:(id)message fromID:(id)d context:(id)context
{
  dCopy = d;
  if (message)
  {
    sub_224627C58();
    if (dCopy)
    {
LABEL_3:
      v12 = sub_224627CD8();
      dCopy = v13;
      goto LABEL_6;
    }
  }

  else if (d)
  {
    goto LABEL_3;
  }

  v12 = 0;
LABEL_6:
  serviceCopy = service;
  accountCopy = account;
  contextCopy = context;
  selfCopy = self;
  sub_22459109C(service, v12, dCopy);
}

- (_TtC11DockKitCore12DKIDSHandler)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for DKIDSHandler();
  return [(DKIDSHandler *)&v3 init];
}

@end