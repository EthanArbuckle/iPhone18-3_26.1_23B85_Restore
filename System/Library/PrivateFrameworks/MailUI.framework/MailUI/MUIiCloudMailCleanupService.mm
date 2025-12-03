@interface MUIiCloudMailCleanupService
+ (BOOL)isFeatureAvailable;
- (BOOL)isConsentAccepted;
- (BOOL)isSenderEmailAddressBlocked:(id)blocked;
- (BOOL)isSetUp;
- (BOOL)isUnsubscribeEnabled;
- (BOOL)shouldShowConsent;
- (BOOL)shouldShowICloudUnsubscribe;
- (NSString)statusText;
- (id)getConsentViewController;
- (id)getDashboardViewController;
- (id)tipForMailboxType:(id)type bucket:(int64_t)bucket;
- (void)acceptTip:(id)tip completion:(id)completion;
- (void)blockSenderWithSenderEmailAddress:(ECEmailAddressConvertible *)address entryPoint:(NSString *)point completionHandler:(id)handler;
- (void)dismissTip:(id)tip;
- (void)forceSync;
- (void)onAppearTip:(id)tip;
- (void)prepare;
- (void)setProviderDelegate:(id)delegate;
- (void)unblockSenderWithSenderEmailAddress:(ECEmailAddressConvertible *)address completionHandler:(id)handler;
- (void)updatePrimaryAccountCategoriesHidden:(BOOL)hidden;
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

- (id)tipForMailboxType:(id)type bucket:(int64_t)bucket
{
  swift_getObjectType();
  MEMORY[0x277D82BE0](type);
  MEMORY[0x277D82BE0](self);
  v5 = sub_214CCF564();
  v11 = MUIiCloudMailCleanupService.tip(forMailboxType:bucket:)(v5, v6, bucket);

  MEMORY[0x277D82BD8](type);
  MEMORY[0x277D82BD8](self);

  return v11;
}

- (void)acceptTip:(id)tip completion:(id)completion
{
  swift_getObjectType();
  MEMORY[0x277D82BE0](tip);
  v7 = _Block_copy(completion);
  MEMORY[0x277D82BE0](self);
  v8 = sub_214CCF564();
  v10 = v5;
  v9 = swift_allocObject();
  *(v9 + 16) = v7;
  MUIiCloudMailCleanupService.acceptTip(_:completion:)(v8, v10, sub_214B8ACA0, v9);

  MEMORY[0x277D82BD8](tip);
  MEMORY[0x277D82BD8](self);
}

- (void)dismissTip:(id)tip
{
  swift_getObjectType();
  MEMORY[0x277D82BE0](tip);
  MEMORY[0x277D82BE0](self);
  v4._countAndFlagsBits = sub_214CCF564();
  MUIiCloudMailCleanupService.dismissTip(_:)(v4);

  MEMORY[0x277D82BD8](tip);
  MEMORY[0x277D82BD8](self);
}

- (void)onAppearTip:(id)tip
{
  swift_getObjectType();
  MEMORY[0x277D82BE0](tip);
  MEMORY[0x277D82BE0](self);
  v4._countAndFlagsBits = sub_214CCF564();
  MUIiCloudMailCleanupService.onAppearTip(_:)(v4);

  MEMORY[0x277D82BD8](tip);
  MEMORY[0x277D82BD8](self);
}

- (BOOL)isSenderEmailAddressBlocked:(id)blocked
{
  swift_getObjectType();
  swift_unknownObjectRetain();
  MEMORY[0x277D82BE0](self);
  MUIiCloudMailCleanupService.isSenderEmailAddressBlocked(_:)(blocked);
  MEMORY[0x277D82BD8](self);
  swift_unknownObjectRelease();
  return sub_214CCD384() & 1;
}

- (void)updatePrimaryAccountCategoriesHidden:(BOOL)hidden
{
  swift_getObjectType();
  MEMORY[0x277D82BE0](self);
  v4 = sub_214CCD394();
  MUIiCloudMailCleanupService.updatePrimaryAccountCategoriesHidden(_:)(v4 & 1);
  MEMORY[0x277D82BD8](self);
}

- (void)blockSenderWithSenderEmailAddress:(ECEmailAddressConvertible *)address entryPoint:(NSString *)point completionHandler:(id)handler
{
  swift_getObjectType();
  swift_unknownObjectRetain();
  MEMORY[0x277D82BE0](point);
  v9 = _Block_copy(handler);
  MEMORY[0x277D82BE0](self);
  v5 = swift_allocObject();
  v5[2] = address;
  v5[3] = point;
  v5[4] = v9;
  v5[5] = self;
  sub_214C49094(&unk_214CF4A28, v5);
}

- (void)unblockSenderWithSenderEmailAddress:(ECEmailAddressConvertible *)address completionHandler:(id)handler
{
  swift_getObjectType();
  swift_unknownObjectRetain();
  v7 = _Block_copy(handler);
  MEMORY[0x277D82BE0](self);
  v4 = swift_allocObject();
  v4[2] = address;
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

- (void)setProviderDelegate:(id)delegate
{
  swift_getObjectType();
  MEMORY[0x277D82BE0](delegate);
  MEMORY[0x277D82BE0](self);
  MUIiCloudMailCleanupService.setProviderDelegate(_:)(delegate);
  MEMORY[0x277D82BD8](self);
  MEMORY[0x277D82BD8](delegate);
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