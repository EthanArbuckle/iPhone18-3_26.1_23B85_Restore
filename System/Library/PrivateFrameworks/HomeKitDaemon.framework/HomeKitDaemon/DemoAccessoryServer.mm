@interface DemoAccessoryServer
- (BOOL)removePairingForCurrentControllerOnQueue:(id)a3 completion:(id)a4;
- (_TtC13HomeKitDaemon19DemoAccessoryServer)initWithKeystore:(id)a3;
- (void)addPairing:(id)a3 completionQueue:(id)a4 completionHandler:(id)a5;
- (void)authenticateAccessory;
- (void)continueAuthAfterValidation:(BOOL)a3;
- (void)continuePairingAfterAuthPrompt;
- (void)continuePairingUsingWAC;
- (void)disconnectWithError:(id)a3;
- (void)enableEvents:(BOOL)a3 forCharacteristics:(id)a4 withCompletionHandler:(id)a5 queue:(id)a6;
- (void)handleUpdatesForCharacteristics:(id)a3 stateNumber:(id)a4;
- (void)identifyWithCompletion:(id)a3;
- (void)listPairingsWithCompletionQueue:(id)a3 completionHandler:(id)a4;
- (void)provisionToken:(id)a3;
- (void)readCharacteristicValues:(id)a3 timeout:(double)a4 expiry:(id)a5 completionQueue:(id)a6 completionHandler:(id)a7;
- (void)removePairing:(id)a3 completionQueue:(id)a4 completionHandler:(id)a5;
- (void)startPairingWithRequest:(id)a3;
- (void)tearDownSessionOnAuthCompletion;
- (void)writeCharacteristicValues:(id)a3 timeout:(double)a4 expiry:(id)a5 completionQueue:(id)a6 completionHandler:(id)a7;
@end

@implementation DemoAccessoryServer

- (void)disconnectWithError:(id)a3
{
  ObjectType = swift_getObjectType();
  v5 = swift_allocObject();
  *(v5 + 16) = self;
  *(v5 + 24) = ObjectType;
  v6 = self;
  sub_22960E33C(sub_229619CF8, v5);
}

- (void)authenticateAccessory
{
  v2 = self;
  sub_22960EA38();
}

- (void)continueAuthAfterValidation:(BOOL)a3
{
  v3 = self;
  sub_22961784C();
}

- (void)tearDownSessionOnAuthCompletion
{
  v2 = self;
  sub_22960ED28();
}

- (void)provisionToken:(id)a3
{
  v4 = a3;
  v8 = self;
  v5 = sub_22A4DB62C();
  v7 = v6;

  sub_229617AAC();
  sub_2295798D4(v5, v7);
}

- (void)continuePairingAfterAuthPrompt
{
  v2 = self;
  sub_22960F050();
}

- (void)continuePairingUsingWAC
{
  v2 = self;
  sub_22960F2F8();
}

- (void)startPairingWithRequest:(id)a3
{
  ObjectType = swift_getObjectType();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87DF18, &qword_22A57A998);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v9 = &ObjectType - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = &ObjectType - v10;
  v20 = a3;
  v12 = sub_229562F68(0, &qword_27D87DF20, 0x277CFEA08);
  v13 = a3;
  v14 = self;
  MEMORY[0x22AACEC10](&v20, v12);
  (*(v6 + 16))(v9, v11, v5);
  v15 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v16 = (v7 + v15 + 7) & 0xFFFFFFFFFFFFFFF8;
  v17 = swift_allocObject();
  (*(v6 + 32))(v17 + v15, v9, v5);
  *(v17 + v16) = v14;
  *(v17 + ((v16 + 15) & 0xFFFFFFFFFFFFFFF8)) = ObjectType;
  v18 = v14;
  sub_22960E33C(sub_229619C54, v17);

  (*(v6 + 8))(v11, v5);
}

- (void)addPairing:(id)a3 completionQueue:(id)a4 completionHandler:(id)a5
{
  v8 = _Block_copy(a5);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  v10 = a3;
  v11 = a4;
  v12 = self;
  sub_229617D0C(v10, sub_229619D28, v9);
}

- (void)removePairing:(id)a3 completionQueue:(id)a4 completionHandler:(id)a5
{
  v8 = _Block_copy(a5);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  v10 = a3;
  v11 = a4;
  v12 = self;
  sub_229610DB8(a3, v11, sub_229619D28, v9);
}

- (BOOL)removePairingForCurrentControllerOnQueue:(id)a3 completion:(id)a4
{
  v6 = _Block_copy(a4);
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

  v8 = a3;
  v9 = self;
  v10 = sub_229618230(v6, v7);
  sub_2295571A0(v6);

  return v10;
}

- (void)listPairingsWithCompletionQueue:(id)a3 completionHandler:(id)a4
{
  v6 = _Block_copy(a4);
  _Block_copy(v6);
  v7 = a3;
  v8 = self;
  sub_229618820(v8, v6);
  _Block_release(v6);
  _Block_release(v6);
}

- (void)writeCharacteristicValues:(id)a3 timeout:(double)a4 expiry:(id)a5 completionQueue:(id)a6 completionHandler:(id)a7
{
  v10 = _Block_copy(a7);
  sub_229562F68(0, &qword_27D87DEF8, 0x277CFEAF0);
  v11 = sub_22A4DD83C();
  v12 = swift_allocObject();
  *(v12 + 16) = v10;
  v13 = a5;
  v14 = a6;
  v15 = self;
  sub_2296189DC(v11, sub_229619D14, v12);
}

- (void)readCharacteristicValues:(id)a3 timeout:(double)a4 expiry:(id)a5 completionQueue:(id)a6 completionHandler:(id)a7
{
  v10 = _Block_copy(a7);
  sub_229562F68(0, &qword_27D87DEE8, 0x277CFEA68);
  v11 = sub_22A4DD83C();
  v12 = swift_allocObject();
  *(v12 + 16) = v10;
  v13 = a5;
  v14 = a6;
  v15 = self;
  sub_229618DD4(v11, sub_229619D14, v12);
}

- (void)enableEvents:(BOOL)a3 forCharacteristics:(id)a4 withCompletionHandler:(id)a5 queue:(id)a6
{
  v7 = a3;
  v9 = _Block_copy(a5);
  sub_229562F68(0, &qword_27D87DEE8, 0x277CFEA68);
  v10 = sub_22A4DD83C();
  v11 = swift_allocObject();
  *(v11 + 16) = v9;
  v12 = a6;
  v13 = self;
  sub_2296192AC(v7, v10, sub_229617844, v11);
}

- (void)identifyWithCompletion:(id)a3
{
  v4 = _Block_copy(a3);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  v6 = self;
  sub_229612E74(sub_2295B994C, v5);
}

- (void)handleUpdatesForCharacteristics:(id)a3 stateNumber:(id)a4
{
  ObjectType = swift_getObjectType();
  sub_229562F68(0, &qword_27D87DEE8, 0x277CFEA68);
  v7 = sub_22A4DD83C();
  v8 = swift_allocObject();
  v8[2] = a4;
  v8[3] = v7;
  v8[4] = self;
  v8[5] = ObjectType;
  v9 = a4;
  v10 = self;
  v11 = v9;
  v12 = v10;
  sub_22960E33C(sub_229619D24, v8);
}

- (_TtC13HomeKitDaemon19DemoAccessoryServer)initWithKeystore:(id)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end