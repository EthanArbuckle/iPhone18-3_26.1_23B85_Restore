@interface CDPStateSwiftUIProvider
+ (void)makeSwiftUIViewForRemoteSecretDuringSignInCdpContext:(CDPContext *)a3 validator:(CDPRemoteDeviceSecretValidator *)a4 devices:(NSArray *)a5 presentingViewController:(UIViewController *)a6 performingAccountRecovery:(BOOL)a7 delegate:(CDPUIController *)a8 offeringRemoteApproval:(BOOL)a9 canShowRPD:(BOOL)a10 isADPEnabled:(BOOL)a11 selectedDevice:(CDPDevice *)a12 isNaturalUIEnabled:(BOOL)a13 completionHandler:(id)a14;
- (CDPStateSwiftUIProvider)init;
@end

@implementation CDPStateSwiftUIProvider

+ (void)makeSwiftUIViewForRemoteSecretDuringSignInCdpContext:(CDPContext *)a3 validator:(CDPRemoteDeviceSecretValidator *)a4 devices:(NSArray *)a5 presentingViewController:(UIViewController *)a6 performingAccountRecovery:(BOOL)a7 delegate:(CDPUIController *)a8 offeringRemoteApproval:(BOOL)a9 canShowRPD:(BOOL)a10 isADPEnabled:(BOOL)a11 selectedDevice:(CDPDevice *)a12 isNaturalUIEnabled:(BOOL)a13 completionHandler:(id)a14
{
  v41 = a4;
  v42 = a5;
  v40 = a1;
  v38 = a13;
  v39 = a7;
  v36 = a10;
  v37 = a11;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE0EC88);
  MEMORY[0x28223BE20](v19 - 8);
  v21 = &v35 - v20;
  v22 = _Block_copy(a14);
  v23 = swift_allocObject();
  *(v23 + 16) = a3;
  *(v23 + 24) = a4;
  *(v23 + 32) = a5;
  *(v23 + 40) = a6;
  *(v23 + 48) = v39;
  *(v23 + 56) = a8;
  *(v23 + 64) = a9;
  v24 = v37;
  *(v23 + 65) = v36;
  *(v23 + 66) = v24;
  *(v23 + 72) = a12;
  *(v23 + 80) = v38;
  v25 = v40;
  *(v23 + 88) = v22;
  *(v23 + 96) = v25;
  v26 = sub_24525531C();
  (*(*(v26 - 8) + 56))(v21, 1, 1, v26);
  v27 = swift_allocObject();
  v27[2] = 0;
  v27[3] = 0;
  v27[4] = &unk_24525CF10;
  v27[5] = v23;
  v28 = swift_allocObject();
  v28[2] = 0;
  v28[3] = 0;
  v28[4] = &unk_24525CF20;
  v28[5] = v27;
  v29 = a3;
  v30 = v41;
  v31 = v42;
  v32 = a6;
  v33 = a8;
  v34 = a12;
  sub_245239540(0, 0, v21, &unk_24525CF30, v28);
}

- (CDPStateSwiftUIProvider)init
{
  v3.receiver = self;
  v3.super_class = CDPStateSwiftUIProvider;
  return [(CDPStateSwiftUIProvider *)&v3 init];
}

@end