@interface CDPStateSwiftUIProvider
+ (void)makeSwiftUIViewForRemoteSecretDuringSignInCdpContext:(CDPContext *)context validator:(CDPRemoteDeviceSecretValidator *)validator devices:(NSArray *)devices presentingViewController:(UIViewController *)controller performingAccountRecovery:(BOOL)recovery delegate:(CDPUIController *)delegate offeringRemoteApproval:(BOOL)approval canShowRPD:(BOOL)self0 isADPEnabled:(BOOL)self1 selectedDevice:(CDPDevice *)self2 isNaturalUIEnabled:(BOOL)self3 completionHandler:(id)self4;
- (CDPStateSwiftUIProvider)init;
@end

@implementation CDPStateSwiftUIProvider

+ (void)makeSwiftUIViewForRemoteSecretDuringSignInCdpContext:(CDPContext *)context validator:(CDPRemoteDeviceSecretValidator *)validator devices:(NSArray *)devices presentingViewController:(UIViewController *)controller performingAccountRecovery:(BOOL)recovery delegate:(CDPUIController *)delegate offeringRemoteApproval:(BOOL)approval canShowRPD:(BOOL)self0 isADPEnabled:(BOOL)self1 selectedDevice:(CDPDevice *)self2 isNaturalUIEnabled:(BOOL)self3 completionHandler:(id)self4
{
  validatorCopy = validator;
  devicesCopy = devices;
  selfCopy = self;
  iEnabledCopy = iEnabled;
  recoveryCopy = recovery;
  dCopy = d;
  enabledCopy = enabled;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE0EC88);
  MEMORY[0x28223BE20](v19 - 8);
  v21 = &v35 - v20;
  v22 = _Block_copy(handler);
  v23 = swift_allocObject();
  *(v23 + 16) = context;
  *(v23 + 24) = validator;
  *(v23 + 32) = devices;
  *(v23 + 40) = controller;
  *(v23 + 48) = recoveryCopy;
  *(v23 + 56) = delegate;
  *(v23 + 64) = approval;
  v24 = enabledCopy;
  *(v23 + 65) = dCopy;
  *(v23 + 66) = v24;
  *(v23 + 72) = device;
  *(v23 + 80) = iEnabledCopy;
  v25 = selfCopy;
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
  contextCopy = context;
  v30 = validatorCopy;
  v31 = devicesCopy;
  controllerCopy = controller;
  delegateCopy = delegate;
  deviceCopy = device;
  sub_245239540(0, 0, v21, &unk_24525CF30, v28);
}

- (CDPStateSwiftUIProvider)init
{
  v3.receiver = self;
  v3.super_class = CDPStateSwiftUIProvider;
  return [(CDPStateSwiftUIProvider *)&v3 init];
}

@end