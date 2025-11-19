@interface VideoMessagingFileTransferer
- (void)service:(id)a3 account:(id)a4 identifier:(id)a5 didSendWithSuccess:(BOOL)a6 error:(id)a7 context:(id)a8;
- (void)service:(id)a3 account:(id)a4 incomingResourceAtURL:(id)a5 metadata:(id)a6 fromID:(id)a7 context:(id)a8;
- (void)service:(id)a3 account:(id)a4 pendingResourceWithMetadata:(id)a5 fromID:(id)a6 acknowledgementBlock:(id)a7 context:(id)a8;
@end

@implementation VideoMessagingFileTransferer

- (void)service:(id)a3 account:(id)a4 incomingResourceAtURL:(id)a5 metadata:(id)a6 fromID:(id)a7 context:(id)a8
{
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5A20, &qword_1BC901BF0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v18 = &v25 - v17;
  if (a5)
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
  if (a6)
  {
    sub_1BC8F7AA4();
  }

  if (a7)
  {
    sub_1BC8F7C24();
  }

  v21 = a3;
  v22 = a4;
  v23 = a8;
  v24 = self;
  sub_1BC846AD4();

  sub_1BC7C1744(v18, &qword_1EBCF5A20, &qword_1BC901BF0);
}

- (void)service:(id)a3 account:(id)a4 pendingResourceWithMetadata:(id)a5 fromID:(id)a6 acknowledgementBlock:(id)a7 context:(id)a8
{
  v14 = _Block_copy(a7);
  if (a5)
  {
    sub_1BC8F7AA4();
  }

  if (a6)
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
  v15 = a3;
  v16 = a4;
  v17 = a8;
  v18 = self;
  sub_1BC84809C();
  sub_1BC7BE108(v14);
}

- (void)service:(id)a3 account:(id)a4 identifier:(id)a5 didSendWithSuccess:(BOOL)a6 error:(id)a7 context:(id)a8
{
  if (a5)
  {
    sub_1BC8F7C24();
  }

  v13 = a3;
  v14 = a4;
  v15 = a7;
  v16 = a8;
  v17 = self;
  sub_1BC848B1C();
}

@end