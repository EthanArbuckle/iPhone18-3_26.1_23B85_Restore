@interface HealthFollowUpExtensionViewController
+ (id)actionIdentifiers;
+ (void)clearFollowUpItemWithIdentifier:(id)a3;
- (id)makeHealthStore;
- (id)makeHealthViewControllerToPresent;
- (void)processFollowUpItem:(id)a3 selectedAction:(id)a4 completion:(id)a5;
@end

@implementation HealthFollowUpExtensionViewController

+ (id)actionIdentifiers
{
  v4[0] = kHKEmergencyFollowUpOnboardActionIdentifier;
  v4[1] = kHKEmergencyFollowUpReviewActionIdentifier;
  v2 = [NSArray arrayWithObjects:v4 count:2];

  return v2;
}

- (id)makeHealthViewControllerToPresent
{
  v3 = [(FLFollowUpItem *)self->_activeItem uniqueIdentifier];
  if ([v3 isEqualToString:kHKEmergencyFollowUpUniqueIdentifier])
  {
    v4 = [(FLFollowUpAction *)self->_activeAction identifier];
    v5 = [(HealthFollowUpExtensionViewController *)self makeHealthStore];
    v6 = [_TtC23HealthFollowUpExtension41EmergencyAccessBuddyViewControllerCreator makeFollowUpViewControllerFor:v4 healthStore:v5 followUpDelegate:self];
  }

  else
  {
    _HKInitializeLogging();
    v7 = HKLogDefault;
    if (os_log_type_enabled(HKLogDefault, OS_LOG_TYPE_ERROR))
    {
      sub_100002AEC(v7);
    }

    v6 = 0;
  }

  return v6;
}

- (void)processFollowUpItem:(id)a3 selectedAction:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  _HKInitializeLogging();
  v11 = HKLogDefault;
  if (os_log_type_enabled(HKLogDefault, OS_LOG_TYPE_DEFAULT))
  {
    v12 = v11;
    v21 = 138412802;
    v22 = objc_opt_class();
    v23 = 2112;
    v24 = v8;
    v25 = 2112;
    v26 = v9;
    v13 = v22;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "[%@] Extension processing item: %@ action: %@", &v21, 0x20u);
  }

  v14 = [objc_opt_class() actionIdentifiers];
  v15 = [v9 identifier];
  v16 = [v14 containsObject:v15];

  if (v16)
  {
    objc_storeStrong(&self->_activeAction, a4);
    v17 = v8;
    activeItem = self->_activeItem;
    self->_activeItem = v17;
  }

  else
  {
    _HKInitializeLogging();
    v19 = HKLogDefault;
    if (os_log_type_enabled(HKLogDefault, OS_LOG_TYPE_ERROR))
    {
      sub_100002B88(v19);
    }

    v20 = objc_opt_class();
    activeItem = [v8 uniqueIdentifier];
    [v20 clearFollowUpItemWithIdentifier:activeItem];
  }

  v10[2](v10, v16 ^ 1);
}

+ (void)clearFollowUpItemWithIdentifier:(id)a3
{
  v4 = a3;
  v5 = [FLFollowUpController alloc];
  v6 = [v5 initWithClientIdentifier:kHKEmergencyFollowUpClientIdentifier];
  if (v6)
  {
    v11 = v4;
    v7 = [NSArray arrayWithObjects:&v11 count:1];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_100001C50;
    v8[3] = &unk_1000042A8;
    v10 = a1;
    v9 = v4;
    [v6 clearPendingFollowUpItemsWithUniqueIdentifiers:v7 completion:v8];
  }
}

- (id)makeHealthStore
{
  v2 = objc_alloc_init(HKHealthStore);

  return v2;
}

@end