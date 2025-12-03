@interface DOCDefaultSourceUIManager
- (DOCDefaultSourceUIManager)init;
- (LSApplicationRecord)hostApplicationRecord;
- (NSURL)settingsDocumentsAndDataURL;
- (UIViewController)viewController;
- (void)applicationDidBecomeActive:(id)active;
- (void)cleanupAlert:(id)alert;
- (void)dealloc;
- (void)dismissAlert;
- (void)getIsICloudDriveEnabledWithCompletion:(id)completion;
- (void)presentAlert;
- (void)promptToUseICloudOrLocal;
- (void)promptToUseOtherOrLocal;
- (void)setAlert:(id)alert;
- (void)ubiquityIdentityDidChange:(id)change;
- (void)updateAlertState;
- (void)updateAlertStateFor:(id)for;
@end

@implementation DOCDefaultSourceUIManager

- (UIViewController)viewController
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (void)setAlert:(id)alert
{
  v5 = type metadata accessor for DispatchPredicate();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = (&v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  alertCopy = alert;
  selfCopy = self;
  *v9 = static OS_dispatch_queue.main.getter();
  (*(v6 + 104))(v9, *MEMORY[0x277D85200], v5);
  LOBYTE(alert) = _dispatchPreconditionTest(_:)();
  (*(v6 + 8))(v9, v5);
  if (alert)
  {
    v12 = *(selfCopy + OBJC_IVAR___DOCDefaultSourceUIManager_alert);
    *(selfCopy + OBJC_IVAR___DOCDefaultSourceUIManager_alert) = alertCopy;
  }

  else
  {
    __break(1u);
  }
}

- (LSApplicationRecord)hostApplicationRecord
{
  selfCopy = self;
  configuration = [(DOCDefaultSourceUIManager *)selfCopy configuration];
  hostIdentifier = [(DOCConfiguration *)configuration hostIdentifier];

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
  selfCopy = self;
  DOCDefaultSourceUIManager.settingsDocumentsAndDataURL.getter(v7);

  URL._bridgeToObjectiveC()(v9);
  v11 = v10;
  (*(v4 + 8))(v7, v3);

  return v11;
}

- (void)dealloc
{
  v3 = objc_opt_self();
  selfCopy = self;
  defaultCenter = [v3 defaultCenter];
  [defaultCenter removeObserver_];

  DistributedCenter = CFNotificationCenterGetDistributedCenter();
  if (DistributedCenter)
  {
    v7 = DistributedCenter;
    CFNotificationCenterRemoveEveryObserver(v7, selfCopy);

    v8.receiver = selfCopy;
    v8.super_class = DOCDefaultSourceUIManager;
    [(DOCDefaultSourceUIManager *)&v8 dealloc];
  }

  else
  {
    __break(1u);
  }
}

- (void)ubiquityIdentityDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  specialized DOCDefaultSourceUIManager.ubiquityIdentityDidChange(_:)(&unk_285C91140, partial apply for closure #1 in DOCDefaultSourceUIManager.ubiquityIdentityDidChange(_:), &block_descriptor_145_0);
}

- (void)applicationDidBecomeActive:(id)active
{
  activeCopy = active;
  selfCopy = self;
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
  selfCopy = self;
  alert = [(DOCDefaultSourceUIManager *)selfCopy alert];
  if (alert)
  {
    v3 = alert;
    [(UIAlertController *)alert dismissViewControllerAnimated:1 completion:0];
  }

  [(DOCDefaultSourceUIManager *)selfCopy setAlert:0];
}

- (void)cleanupAlert:(id)alert
{
  alertCopy = alert;
  selfCopy = self;
  DOCDefaultSourceUIManager.cleanupAlert(_:)(alertCopy);
}

- (void)promptToUseICloudOrLocal
{
  selfCopy = self;
  DOCDefaultSourceUIManager.promptToUseICloudOrLocal()();
}

- (void)promptToUseOtherOrLocal
{
  selfCopy = self;
  DOCDefaultSourceUIManager.promptToUseOtherOrLocal()();
}

- (void)getIsICloudDriveEnabledWithCompletion:(id)completion
{
  v4 = _Block_copy(completion);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  v6 = swift_allocObject();
  *(v6 + 16) = partial apply for thunk for @escaping @callee_unowned @convention(block) (@unowned ObjCBool) -> ();
  *(v6 + 24) = v5;
  selfCopy = self;

  DOCDefaultSourceUIManager.getICloudSourcesIfEnabled(completion:)(partial apply for closure #1 in DOCDefaultSourceUIManager.getIsICloudDriveEnabled(completion:), v6);
}

- (void)updateAlertState
{
  selfCopy = self;
  DOCDefaultSourceUIManager.updateAlertState()();
}

- (void)updateAlertStateFor:(id)for
{
  forCopy = for;
  selfCopy = self;
  DOCDefaultSourceUIManager.updateAlertState(for:)(forCopy);
}

- (DOCDefaultSourceUIManager)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end