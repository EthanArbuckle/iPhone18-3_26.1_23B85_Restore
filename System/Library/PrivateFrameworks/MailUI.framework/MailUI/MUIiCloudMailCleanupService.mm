@interface MUIiCloudMailCleanupService
+ (BOOL)isFeatureAvailable;
- (BOOL)isConsentAccepted;
- (BOOL)isSenderEmailAddressBlocked:(id)a3;
- (BOOL)isSetUp;
- (BOOL)isUnsubscribeEnabled;
- (BOOL)shouldShowConsent;
- (BOOL)shouldShowICloudUnsubscribe;
- (NSString)statusText;
- (id)getConsentViewController;
- (id)getDashboardViewController;
- (id)tipForMailboxType:(id)a3 bucket:(int64_t)a4;
- (void)acceptTip:(id)a3 completion:(id)a4;
- (void)blockSenderWithSenderEmailAddress:(ECEmailAddressConvertible *)a3 entryPoint:(NSString *)a4 completionHandler:(id)a5;
- (void)dismissTip:(id)a3;
- (void)forceSync;
- (void)onAppearTip:(id)a3;
- (void)prepare;
- (void)setProviderDelegate:(id)a3;
- (void)unblockSenderWithSenderEmailAddress:(ECEmailAddressConvertible *)a3 completionHandler:(id)a4;
- (void)updatePrimaryAccountCategoriesHidden:(BOOL)a3;
@end

@implementation MUIiCloudMailCleanupService

+ (BOOL)isFeatureAvailable
{
  swift_getObjCClassMetadata();
  swift_getObjCClassMetadata();
  sub_214C444B4();
  return sub_214CCD384() & 1;
}

- (void)prepare
{
  swift_getObjectType();
  MEMORY[0x277D82BE0](self);
  MUIiCloudMailCleanupService.prepare()();
  MEMORY[0x277D82BD8](self);
}

- (BOOL)isSetUp
{
  swift_getObjectType();
  MEMORY[0x277D82BE0](self);
  sub_214C458F8();
  MEMORY[0x277D82BD8](self);
  return sub_214CCD384() & 1;
}

- (NSString)statusText
{
  swift_getObjectType();
  MEMORY[0x277D82BE0](self);
  sub_214C45AA4();
  MEMORY[0x277D82BD8](self);
  v5 = sub_214CCF544();

  return v5;
}

- (id)tipForMailboxType:(id)a3 bucket:(int64_t)a4
{
  swift_getObjectType();
  MEMORY[0x277D82BE0](a3);
  MEMORY[0x277D82BE0](self);
  v5 = sub_214CCF564();
  v11 = MUIiCloudMailCleanupService.tip(forMailboxType:bucket:)(v5, v6, a4);

  MEMORY[0x277D82BD8](a3);
  MEMORY[0x277D82BD8](self);

  return v11;
}

- (void)acceptTip:(id)a3 completion:(id)a4
{
  swift_getObjectType();
  MEMORY[0x277D82BE0](a3);
  v7 = _Block_copy(a4);
  MEMORY[0x277D82BE0](self);
  v8 = sub_214CCF564();
  v10 = v5;
  v9 = swift_allocObject();
  *(v9 + 16) = v7;
  MUIiCloudMailCleanupService.acceptTip(_:completion:)(v8, v10, sub_214B8ACA0, v9);

  MEMORY[0x277D82BD8](a3);
  MEMORY[0x277D82BD8](self);
}

- (void)dismissTip:(id)a3
{
  swift_getObjectType();
  MEMORY[0x277D82BE0](a3);
  MEMORY[0x277D82BE0](self);
  v4._countAndFlagsBits = sub_214CCF564();
  MUIiCloudMailCleanupService.dismissTip(_:)(v4);

  MEMORY[0x277D82BD8](a3);
  MEMORY[0x277D82BD8](self);
}

- (void)onAppearTip:(id)a3
{
  swift_getObjectType();
  MEMORY[0x277D82BE0](a3);
  MEMORY[0x277D82BE0](self);
  v4._countAndFlagsBits = sub_214CCF564();
  MUIiCloudMailCleanupService.onAppearTip(_:)(v4);

  MEMORY[0x277D82BD8](a3);
  MEMORY[0x277D82BD8](self);
}

- (BOOL)isSenderEmailAddressBlocked:(id)a3
{
  swift_getObjectType();
  swift_unknownObjectRetain();
  MEMORY[0x277D82BE0](self);
  MUIiCloudMailCleanupService.isSenderEmailAddressBlocked(_:)(a3);
  MEMORY[0x277D82BD8](self);
  swift_unknownObjectRelease();
  return sub_214CCD384() & 1;
}

- (void)updatePrimaryAccountCategoriesHidden:(BOOL)a3
{
  swift_getObjectType();
  MEMORY[0x277D82BE0](self);
  v4 = sub_214CCD394();
  MUIiCloudMailCleanupService.updatePrimaryAccountCategoriesHidden(_:)(v4 & 1);
  MEMORY[0x277D82BD8](self);
}

- (void)blockSenderWithSenderEmailAddress:(ECEmailAddressConvertible *)a3 entryPoint:(NSString *)a4 completionHandler:(id)a5
{
  swift_getObjectType();
  swift_unknownObjectRetain();
  MEMORY[0x277D82BE0](a4);
  v9 = _Block_copy(a5);
  MEMORY[0x277D82BE0](self);
  v5 = swift_allocObject();
  v5[2] = a3;
  v5[3] = a4;
  v5[4] = v9;
  v5[5] = self;
  sub_214C49094(&unk_214CF4A28, v5);
}

- (void)unblockSenderWithSenderEmailAddress:(ECEmailAddressConvertible *)a3 completionHandler:(id)a4
{
  swift_getObjectType();
  swift_unknownObjectRetain();
  v7 = _Block_copy(a4);
  MEMORY[0x277D82BE0](self);
  v4 = swift_allocObject();
  v4[2] = a3;
  v4[3] = v7;
  v4[4] = self;
  sub_214C49094(&unk_214CF4A40, v4);
}

- (BOOL)isConsentAccepted
{
  swift_getObjectType();
  MEMORY[0x277D82BE0](self);
  MUIiCloudMailCleanupService.isConsentAccepted()();
  MEMORY[0x277D82BD8](self);
  return sub_214CCD384() & 1;
}

- (BOOL)isUnsubscribeEnabled
{
  swift_getObjectType();
  MEMORY[0x277D82BE0](self);
  MUIiCloudMailCleanupService.isUnsubscribeEnabled()();
  MEMORY[0x277D82BD8](self);
  return sub_214CCD384() & 1;
}

- (BOOL)shouldShowICloudUnsubscribe
{
  swift_getObjectType();
  MEMORY[0x277D82BE0](self);
  MUIiCloudMailCleanupService.shouldShowICloudUnsubscribe()();
  MEMORY[0x277D82BD8](self);
  return sub_214CCD384() & 1;
}

- (BOOL)shouldShowConsent
{
  swift_getObjectType();
  MEMORY[0x277D82BE0](self);
  MUIiCloudMailCleanupService.shouldShowConsent()();
  MEMORY[0x277D82BD8](self);
  return sub_214CCD384() & 1;
}

- (void)forceSync
{
  swift_getObjectType();
  MEMORY[0x277D82BE0](self);
  MUIiCloudMailCleanupService.forceSync()();
  MEMORY[0x277D82BD8](self);
}

- (void)setProviderDelegate:(id)a3
{
  swift_getObjectType();
  MEMORY[0x277D82BE0](a3);
  MEMORY[0x277D82BE0](self);
  MUIiCloudMailCleanupService.setProviderDelegate(_:)(a3);
  MEMORY[0x277D82BD8](self);
  MEMORY[0x277D82BD8](a3);
}

- (id)getDashboardViewController
{
  swift_getObjectType();
  MEMORY[0x277D82BE0](self);
  MUIiCloudMailCleanupService.getDashboardViewController()(v3);
  v7 = v4;
  MEMORY[0x277D82BD8](self);

  return v7;
}

- (id)getConsentViewController
{
  swift_getObjectType();
  MEMORY[0x277D82BE0](self);
  MUIiCloudMailCleanupService.getConsentViewController()(v3);
  v7 = v4;
  MEMORY[0x277D82BD8](self);

  return v7;
}

@end