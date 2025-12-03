@interface HealthFollowUpExtensionViewController
+ (id)actionIdentifiers;
+ (void)clearFollowUpItemWithIdentifier:(id)identifier;
- (id)makeHealthStore;
- (id)makeHealthViewControllerToPresent;
- (void)processFollowUpItem:(id)item selectedAction:(id)action completion:(id)completion;
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
  uniqueIdentifier = [(FLFollowUpItem *)self->_activeItem uniqueIdentifier];
  if ([uniqueIdentifier isEqualToString:kHKEmergencyFollowUpUniqueIdentifier])
  {
    identifier = [(FLFollowUpAction *)self->_activeAction identifier];
    makeHealthStore = [(HealthFollowUpExtensionViewController *)self makeHealthStore];
    v6 = [_TtC23HealthFollowUpExtension41EmergencyAccessBuddyViewControllerCreator makeFollowUpViewControllerFor:identifier healthStore:makeHealthStore followUpDelegate:self];
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

- (void)processFollowUpItem:(id)item selectedAction:(id)action completion:(id)completion
{
  itemCopy = item;
  actionCopy = action;
  completionCopy = completion;
  _HKInitializeLogging();
  v11 = HKLogDefault;
  if (os_log_type_enabled(HKLogDefault, OS_LOG_TYPE_DEFAULT))
  {
    v12 = v11;
    v21 = 138412802;
    v22 = objc_opt_class();
    v23 = 2112;
    v24 = itemCopy;
    v25 = 2112;
    v26 = actionCopy;
    v13 = v22;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "[%@] Extension processing item: %@ action: %@", &v21, 0x20u);
  }

  actionIdentifiers = [objc_opt_class() actionIdentifiers];
  identifier = [actionCopy identifier];
  v16 = [actionIdentifiers containsObject:identifier];

  if (v16)
  {
    objc_storeStrong(&self->_activeAction, action);
    v17 = itemCopy;
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
    activeItem = [itemCopy uniqueIdentifier];
    [v20 clearFollowUpItemWithIdentifier:activeItem];
  }

  completionCopy[2](completionCopy, v16 ^ 1);
}

+ (void)clearFollowUpItemWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = [FLFollowUpController alloc];
  v6 = [v5 initWithClientIdentifier:kHKEmergencyFollowUpClientIdentifier];
  if (v6)
  {
    v11 = identifierCopy;
    v7 = [NSArray arrayWithObjects:&v11 count:1];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_100001C50;
    v8[3] = &unk_1000042A8;
    selfCopy = self;
    v9 = identifierCopy;
    [v6 clearPendingFollowUpItemsWithUniqueIdentifiers:v7 completion:v8];
  }
}

- (id)makeHealthStore
{
  v2 = objc_alloc_init(HKHealthStore);

  return v2;
}

@end