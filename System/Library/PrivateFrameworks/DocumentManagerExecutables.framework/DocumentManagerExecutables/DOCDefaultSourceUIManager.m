@interface DOCDefaultSourceUIManager
- (DOCDefaultSourceUIManager)init;
- (LSApplicationRecord)hostApplicationRecord;
- (NSURL)settingsDocumentsAndDataURL;
- (UIViewController)viewController;
- (void)applicationDidBecomeActive:(id)a3;
- (void)cleanupAlert:(id)a3;
- (void)dealloc;
- (void)dismissAlert;
- (void)getIsICloudDriveEnabledWithCompletion:(id)a3;
- (void)presentAlert;
- (void)promptToUseICloudOrLocal;
- (void)promptToUseOtherOrLocal;
- (void)setAlert:(id)a3;
- (void)ubiquityIdentityDidChange:(id)a3;
- (void)updateAlertState;
- (void)updateAlertStateFor:(id)a3;
@end

@implementation DOCDefaultSourceUIManager

- (UIViewController)viewController
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (void)setAlert:(id)a3
{
  v5 = type metadata accessor for DispatchPredicate();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = (&v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  v10 = a3;
  v11 = self;
  *v9 = static OS_dispatch_queue.main.getter();
  (*(v6 + 104))(v9, *MEMORY[0x277D85200], v5);
  LOBYTE(a3) = _dispatchPreconditionTest(_:)();
  (*(v6 + 8))(v9, v5);
  if (a3)
  {
    v12 = *(v11 + OBJC_IVAR___DOCDefaultSourceUIManager_alert);
    *(v11 + OBJC_IVAR___DOCDefaultSourceUIManager_alert) = v10;
  }

  else
  {
    __break(1u);
  }
}

- (LSApplicationRecord)hostApplicationRecord
{
  v2 = self;
  v3 = [(DOCDefaultSourceUIManager *)v2 configuration];
  v4 = [(DOCConfiguration *)v3 hostIdentifier];

  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  v8 = objc_allocWithZone(MEMORY[0x277CC1E70]);
  v9 = @nonobjc LSApplicationRecord.init(bundleIdentifier:allowPlaceholder:)(v5, v7, 0);

  return v9;
}

- (NSURL)settingsDocumentsAndDataURL
{
  v3 = type metadata accessor for URL();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = self;
  DOCDefaultSourceUIManager.settingsDocumentsAndDataURL.getter(v7);

  URL._bridgeToObjectiveC()(v9);
  v11 = v10;
  (*(v4 + 8))(v7, v3);

  return v11;
}

- (void)dealloc
{
  v3 = objc_opt_self();
  v4 = self;
  v5 = [v3 defaultCenter];
  [v5 removeObserver_];

  DistributedCenter = CFNotificationCenterGetDistributedCenter();
  if (DistributedCenter)
  {
    v7 = DistributedCenter;
    CFNotificationCenterRemoveEveryObserver(v7, v4);

    v8.receiver = v4;
    v8.super_class = DOCDefaultSourceUIManager;
    [(DOCDefaultSourceUIManager *)&v8 dealloc];
  }

  else
  {
    __break(1u);
  }
}

- (void)ubiquityIdentityDidChange:(id)a3
{
  v4 = a3;
  v5 = self;
  specialized DOCDefaultSourceUIManager.ubiquityIdentityDidChange(_:)(&unk_285C91140, partial apply for closure #1 in DOCDefaultSourceUIManager.ubiquityIdentityDidChange(_:), &block_descriptor_145_0);
}

- (void)applicationDidBecomeActive:(id)a3
{
  v4 = a3;
  v5 = self;
  specialized DOCDefaultSourceUIManager.ubiquityIdentityDidChange(_:)(&unk_285C910F0, partial apply for closure #1 in DOCDefaultSourceUIManager.applicationDidBecomeActive(_:), &block_descriptor_139);
}

- (void)presentAlert
{
  v3 = OBJC_IVAR___DOCDefaultSourceUIManager_state;
  swift_beginAccess();
  if (*(self + v3))
  {
    if (*(self + v3) == 1)
    {
      v4 = &selRef_promptToUseICloudOrLocal;
    }

    else
    {
      v4 = &selRef_promptToUseOtherOrLocal;
    }

    [self *v4];
  }
}

- (void)dismissAlert
{
  v4 = self;
  v2 = [(DOCDefaultSourceUIManager *)v4 alert];
  if (v2)
  {
    v3 = v2;
    [(UIAlertController *)v2 dismissViewControllerAnimated:1 completion:0];
  }

  [(DOCDefaultSourceUIManager *)v4 setAlert:0];
}

- (void)cleanupAlert:(id)a3
{
  v4 = a3;
  v5 = self;
  DOCDefaultSourceUIManager.cleanupAlert(_:)(v4);
}

- (void)promptToUseICloudOrLocal
{
  v2 = self;
  DOCDefaultSourceUIManager.promptToUseICloudOrLocal()();
}

- (void)promptToUseOtherOrLocal
{
  v2 = self;
  DOCDefaultSourceUIManager.promptToUseOtherOrLocal()();
}

- (void)getIsICloudDriveEnabledWithCompletion:(id)a3
{
  v4 = _Block_copy(a3);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  v6 = swift_allocObject();
  *(v6 + 16) = partial apply for thunk for @escaping @callee_unowned @convention(block) (@unowned ObjCBool) -> ();
  *(v6 + 24) = v5;
  v7 = self;

  DOCDefaultSourceUIManager.getICloudSourcesIfEnabled(completion:)(partial apply for closure #1 in DOCDefaultSourceUIManager.getIsICloudDriveEnabled(completion:), v6);
}

- (void)updateAlertState
{
  v2 = self;
  DOCDefaultSourceUIManager.updateAlertState()();
}

- (void)updateAlertStateFor:(id)a3
{
  v4 = a3;
  v5 = self;
  DOCDefaultSourceUIManager.updateAlertState(for:)(v4);
}

- (DOCDefaultSourceUIManager)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end