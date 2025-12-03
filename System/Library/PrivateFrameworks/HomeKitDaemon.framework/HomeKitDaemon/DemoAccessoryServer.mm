@interface DemoAccessoryServer
- (BOOL)removePairingForCurrentControllerOnQueue:(id)queue completion:(id)completion;
- (_TtC13HomeKitDaemon19DemoAccessoryServer)initWithKeystore:(id)keystore;
- (void)addPairing:(id)pairing completionQueue:(id)queue completionHandler:(id)handler;
- (void)authenticateAccessory;
- (void)continueAuthAfterValidation:(BOOL)validation;
- (void)continuePairingAfterAuthPrompt;
- (void)continuePairingUsingWAC;
- (void)disconnectWithError:(id)error;
- (void)enableEvents:(BOOL)events forCharacteristics:(id)characteristics withCompletionHandler:(id)handler queue:(id)queue;
- (void)handleUpdatesForCharacteristics:(id)characteristics stateNumber:(id)number;
- (void)identifyWithCompletion:(id)completion;
- (void)listPairingsWithCompletionQueue:(id)queue completionHandler:(id)handler;
- (void)provisionToken:(id)token;
- (void)readCharacteristicValues:(id)values timeout:(double)timeout expiry:(id)expiry completionQueue:(id)queue completionHandler:(id)handler;
- (void)removePairing:(id)pairing completionQueue:(id)queue completionHandler:(id)handler;
- (void)startPairingWithRequest:(id)request;
- (void)tearDownSessionOnAuthCompletion;
- (void)writeCharacteristicValues:(id)values timeout:(double)timeout expiry:(id)expiry completionQueue:(id)queue completionHandler:(id)handler;
@end

@implementation DemoAccessoryServer

- (void)disconnectWithError:(id)error
{
  ObjectType = swift_getObjectType();
  v5 = swift_allocObject();
  *(v5 + 16) = self;
  *(v5 + 24) = ObjectType;
  selfCopy = self;
  sub_22960E33C(sub_229619CF8, v5);
}

- (void)authenticateAccessory
{
  selfCopy = self;
  sub_22960EA38();
}

- (void)continueAuthAfterValidation:(BOOL)validation
{
  selfCopy = self;
  sub_22961784C();
}

- (void)tearDownSessionOnAuthCompletion
{
  selfCopy = self;
  sub_22960ED28();
}

- (void)provisionToken:(id)token
{
  tokenCopy = token;
  selfCopy = self;
  v5 = sub_22A4DB62C();
  v7 = v6;

  sub_229617AAC();
  sub_2295798D4(v5, v7);
}

- (void)continuePairingAfterAuthPrompt
{
  selfCopy = self;
  sub_22960F050();
}

- (void)continuePairingUsingWAC
{
  selfCopy = self;
  sub_22960F2F8();
}

- (void)startPairingWithRequest:(id)request
{
  ObjectType = swift_getObjectType();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87DF18, &qword_22A57A998);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v9 = &ObjectType - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = &ObjectType - v10;
  requestCopy = request;
  v12 = sub_229562F68(0, &qword_27D87DF20, 0x277CFEA08);
  requestCopy2 = request;
  selfCopy = self;
  MEMORY[0x22AACEC10](&requestCopy, v12);
  (*(v6 + 16))(v9, v11, v5);
  v15 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v16 = (v7 + v15 + 7) & 0xFFFFFFFFFFFFFFF8;
  v17 = swift_allocObject();
  (*(v6 + 32))(v17 + v15, v9, v5);
  *(v17 + v16) = selfCopy;
  *(v17 + ((v16 + 15) & 0xFFFFFFFFFFFFFFF8)) = ObjectType;
  v18 = selfCopy;
  sub_22960E33C(sub_229619C54, v17);

  (*(v6 + 8))(v11, v5);
}

- (void)addPairing:(id)pairing completionQueue:(id)queue completionHandler:(id)handler
{
  v8 = _Block_copy(handler);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  pairingCopy = pairing;
  queueCopy = queue;
  selfCopy = self;
  sub_229617D0C(pairingCopy, sub_229619D28, v9);
}

- (void)removePairing:(id)pairing completionQueue:(id)queue completionHandler:(id)handler
{
  v8 = _Block_copy(handler);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  pairingCopy = pairing;
  queueCopy = queue;
  selfCopy = self;
  sub_229610DB8(pairing, queueCopy, sub_229619D28, v9);
}

- (BOOL)removePairingForCurrentControllerOnQueue:(id)queue completion:(id)completion
{
  v6 = _Block_copy(completion);
  if (v6)
  {
    v7 = swift_allocObject();
    *(v7 + 16) = v6;
    v6 = sub_229619D28;
  }

  else
  {
    v7 = 0;
  }

  queueCopy = queue;
  selfCopy = self;
  v10 = sub_229618230(v6, v7);
  sub_2295571A0(v6);

  return v10;
}

- (void)listPairingsWithCompletionQueue:(id)queue completionHandler:(id)handler
{
  v6 = _Block_copy(handler);
  _Block_copy(v6);
  queueCopy = queue;
  selfCopy = self;
  sub_229618820(selfCopy, v6);
  _Block_release(v6);
  _Block_release(v6);
}

- (void)writeCharacteristicValues:(id)values timeout:(double)timeout expiry:(id)expiry completionQueue:(id)queue completionHandler:(id)handler
{
  v10 = _Block_copy(handler);
  sub_229562F68(0, &qword_27D87DEF8, 0x277CFEAF0);
  v11 = sub_22A4DD83C();
  v12 = swift_allocObject();
  *(v12 + 16) = v10;
  expiryCopy = expiry;
  queueCopy = queue;
  selfCopy = self;
  sub_2296189DC(v11, sub_229619D14, v12);
}

- (void)readCharacteristicValues:(id)values timeout:(double)timeout expiry:(id)expiry completionQueue:(id)queue completionHandler:(id)handler
{
  v10 = _Block_copy(handler);
  sub_229562F68(0, &qword_27D87DEE8, 0x277CFEA68);
  v11 = sub_22A4DD83C();
  v12 = swift_allocObject();
  *(v12 + 16) = v10;
  expiryCopy = expiry;
  queueCopy = queue;
  selfCopy = self;
  sub_229618DD4(v11, sub_229619D14, v12);
}

- (void)enableEvents:(BOOL)events forCharacteristics:(id)characteristics withCompletionHandler:(id)handler queue:(id)queue
{
  eventsCopy = events;
  v9 = _Block_copy(handler);
  sub_229562F68(0, &qword_27D87DEE8, 0x277CFEA68);
  v10 = sub_22A4DD83C();
  v11 = swift_allocObject();
  *(v11 + 16) = v9;
  queueCopy = queue;
  selfCopy = self;
  sub_2296192AC(eventsCopy, v10, sub_229617844, v11);
}

- (void)identifyWithCompletion:(id)completion
{
  v4 = _Block_copy(completion);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  selfCopy = self;
  sub_229612E74(sub_2295B994C, v5);
}

- (void)handleUpdatesForCharacteristics:(id)characteristics stateNumber:(id)number
{
  ObjectType = swift_getObjectType();
  sub_229562F68(0, &qword_27D87DEE8, 0x277CFEA68);
  v7 = sub_22A4DD83C();
  v8 = swift_allocObject();
  v8[2] = number;
  v8[3] = v7;
  v8[4] = self;
  v8[5] = ObjectType;
  numberCopy = number;
  selfCopy = self;
  v11 = numberCopy;
  v12 = selfCopy;
  sub_22960E33C(sub_229619D24, v8);
}

- (_TtC13HomeKitDaemon19DemoAccessoryServer)initWithKeystore:(id)keystore
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end