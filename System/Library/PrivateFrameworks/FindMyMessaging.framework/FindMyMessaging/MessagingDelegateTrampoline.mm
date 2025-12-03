@interface MessagingDelegateTrampoline
- (_TtC15FindMyMessaging27MessagingDelegateTrampoline)init;
- (void)service:(id)service account:(id)account identifier:(id)identifier didSendWithSuccess:(BOOL)success error:(id)error;
- (void)service:(id)service account:(id)account identifier:(id)identifier fromID:(id)d hasBeenDeliveredWithContext:(id)context;
- (void)service:(id)service account:(id)account incomingData:(id)data fromID:(id)d context:(id)context;
- (void)service:(id)service account:(id)account incomingMessage:(id)message fromID:(id)d context:(id)context;
- (void)service:(id)service account:(id)account incomingResourceAtURL:(id)l metadata:(id)metadata fromID:(id)d context:(id)context;
- (void)service:(id)service account:(id)account inviteReceivedForSession:(id)session fromID:(id)d withContext:(id)context;
- (void)service:(id)service activeAccountsChanged:(id)changed;
@end

@implementation MessagingDelegateTrampoline

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
    dataCopy = sub_24AF3517C();
    v19 = v18;

    if (d)
    {
LABEL_3:
      v20 = sub_24AF353AC();
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
  sub_24AF2A87C(service, account, dataCopy, v19, v20, v22, context);

  sub_24AF11EB0(dataCopy, v19);
}

- (void)service:(id)service account:(id)account incomingResourceAtURL:(id)l metadata:(id)metadata fromID:(id)d context:(id)context
{
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EFC11D0, &qword_24AF3A970);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v18 = &v27 - v17;
  if (l)
  {
    sub_24AF3512C();
    v19 = sub_24AF3513C();
    (*(*(v19 - 8) + 56))(v18, 0, 1, v19);
  }

  else
  {
    v20 = sub_24AF3513C();
    (*(*(v20 - 8) + 56))(v18, 1, 1, v20);
  }

  if (metadata)
  {
    metadata = sub_24AF352FC();
  }

  if (d)
  {
    v21 = sub_24AF353AC();
    d = v22;
  }

  else
  {
    v21 = 0;
  }

  serviceCopy = service;
  accountCopy = account;
  contextCopy = context;
  selfCopy = self;
  sub_24AF2B978(serviceCopy, accountCopy, v18, metadata, v21, d, contextCopy);

  sub_24AEE2E10(v18, &unk_27EFC11D0, &qword_24AF3A970);
}

- (void)service:(id)service account:(id)account incomingMessage:(id)message fromID:(id)d context:(id)context
{
  dCopy = d;
  if (message)
  {
    v12 = sub_24AF352FC();
    if (dCopy)
    {
LABEL_3:
      v13 = sub_24AF353AC();
      dCopy = v14;
      goto LABEL_6;
    }
  }

  else
  {
    v12 = 0;
    if (d)
    {
      goto LABEL_3;
    }
  }

  v13 = 0;
LABEL_6:
  serviceCopy = service;
  accountCopy = account;
  contextCopy = context;
  selfCopy = self;
  sub_24AF2CD44(service, account, v12, v13, dCopy, context);
}

- (void)service:(id)service account:(id)account identifier:(id)identifier didSendWithSuccess:(BOOL)success error:(id)error
{
  successCopy = success;
  if (identifier)
  {
    v12 = sub_24AF353AC();
    v14 = v13;
  }

  else
  {
    v12 = 0;
    v14 = 0;
  }

  serviceCopy = service;
  accountCopy = account;
  errorCopy = error;
  selfCopy = self;
  sub_24AF2DBEC(service, account, v12, v14, successCopy, error);
}

- (void)service:(id)service account:(id)account identifier:(id)identifier fromID:(id)d hasBeenDeliveredWithContext:(id)context
{
  dCopy = d;
  if (identifier)
  {
    v12 = sub_24AF353AC();
    v14 = v13;
    if (dCopy)
    {
      goto LABEL_3;
    }

LABEL_6:
    v15 = 0;
    if (context)
    {
      goto LABEL_4;
    }

LABEL_7:
    memset(v23, 0, sizeof(v23));
    serviceCopy = service;
    accountCopy = account;
    selfCopy = self;
    goto LABEL_8;
  }

  v12 = 0;
  v14 = 0;
  if (!d)
  {
    goto LABEL_6;
  }

LABEL_3:
  v15 = sub_24AF353AC();
  dCopy = v16;
  if (!context)
  {
    goto LABEL_7;
  }

LABEL_4:
  serviceCopy2 = service;
  accountCopy2 = account;
  selfCopy2 = self;
  swift_unknownObjectRetain();
  sub_24AF357BC();
  swift_unknownObjectRelease();
LABEL_8:
  sub_24AF2E9B0(service, account, v12, v14, v15, dCopy);

  sub_24AEE2E10(v23, &qword_27EFC0968, &qword_24AF381E8);
}

- (void)service:(id)service activeAccountsChanged:(id)changed
{
  if (changed)
  {
    v6 = sub_24AF3566C();
  }

  else
  {
    v6 = 0;
  }

  serviceCopy = service;
  selfCopy = self;
  sub_24AF2F978(service, v6);
}

- (void)service:(id)service account:(id)account inviteReceivedForSession:(id)session fromID:(id)d withContext:(id)context
{
  if (d)
  {
    v12 = sub_24AF353AC();
    v14 = v13;
  }

  else
  {
    v12 = 0;
    v14 = 0;
  }

  serviceCopy = service;
  accountCopy = account;
  sessionCopy = session;
  if (context)
  {
    contextCopy = context;
    selfCopy = self;
    context = sub_24AF3517C();
    v21 = v20;
  }

  else
  {
    selfCopy2 = self;
    v21 = 0xF000000000000000;
  }

  sub_24AF306D8(serviceCopy, accountCopy, sessionCopy, v12, v14, context, v21);
  sub_24AF11EB0(context, v21);
}

- (_TtC15FindMyMessaging27MessagingDelegateTrampoline)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end