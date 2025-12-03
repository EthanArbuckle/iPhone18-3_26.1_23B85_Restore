@interface VideoMessagingFileTransferer
- (void)service:(id)service account:(id)account identifier:(id)identifier didSendWithSuccess:(BOOL)success error:(id)error context:(id)context;
- (void)service:(id)service account:(id)account incomingResourceAtURL:(id)l metadata:(id)metadata fromID:(id)d context:(id)context;
- (void)service:(id)service account:(id)account pendingResourceWithMetadata:(id)metadata fromID:(id)d acknowledgementBlock:(id)block context:(id)context;
@end

@implementation VideoMessagingFileTransferer

- (void)service:(id)service account:(id)account incomingResourceAtURL:(id)l metadata:(id)metadata fromID:(id)d context:(id)context
{
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5A20, &qword_1BC901BF0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v18 = &v25 - v17;
  if (l)
  {
    sub_1BC8F6FB4();
    v19 = sub_1BC8F7014();
    v20 = 0;
  }

  else
  {
    v19 = sub_1BC8F7014();
    v20 = 1;
  }

  __swift_storeEnumTagSinglePayload(v18, v20, 1, v19);
  if (metadata)
  {
    sub_1BC8F7AA4();
  }

  if (d)
  {
    sub_1BC8F7C24();
  }

  serviceCopy = service;
  accountCopy = account;
  contextCopy = context;
  selfCopy = self;
  sub_1BC846AD4();

  sub_1BC7C1744(v18, &qword_1EBCF5A20, &qword_1BC901BF0);
}

- (void)service:(id)service account:(id)account pendingResourceWithMetadata:(id)metadata fromID:(id)d acknowledgementBlock:(id)block context:(id)context
{
  v14 = _Block_copy(block);
  if (metadata)
  {
    sub_1BC8F7AA4();
  }

  if (d)
  {
    sub_1BC8F7C24();
    if (!v14)
    {
      goto LABEL_7;
    }

    goto LABEL_5;
  }

  if (v14)
  {
LABEL_5:
    *(swift_allocObject() + 16) = v14;
    v14 = sub_1BC849AD0;
  }

LABEL_7:
  serviceCopy = service;
  accountCopy = account;
  contextCopy = context;
  selfCopy = self;
  sub_1BC84809C();
  sub_1BC7BE108(v14);
}

- (void)service:(id)service account:(id)account identifier:(id)identifier didSendWithSuccess:(BOOL)success error:(id)error context:(id)context
{
  if (identifier)
  {
    sub_1BC8F7C24();
  }

  serviceCopy = service;
  accountCopy = account;
  errorCopy = error;
  contextCopy = context;
  selfCopy = self;
  sub_1BC848B1C();
}

@end