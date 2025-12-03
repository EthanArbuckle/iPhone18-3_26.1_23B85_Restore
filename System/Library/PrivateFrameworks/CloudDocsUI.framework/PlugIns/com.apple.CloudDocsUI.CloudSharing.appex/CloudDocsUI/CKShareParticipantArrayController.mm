@interface CKShareParticipantArrayController
- (BOOL)objectAttributeModified:(id)modified newObject:(id)object;
- (CKShareParticipantArrayController)initWithDelegate:(id)delegate;
- (CKShareParticipantArrayController)initWithDelegate:(id)delegate share:(id)share;
- (void)_scheduleParticipantLookup:(id)lookup;
- (void)_scheduleParticipantUpdate;
- (void)setShare:(id)share;
@end

@implementation CKShareParticipantArrayController

- (CKShareParticipantArrayController)initWithDelegate:(id)delegate share:(id)share
{
  shareCopy = share;
  v7 = [(CKShareParticipantArrayController *)self initWithDelegate:delegate];
  v8 = v7;
  if (v7)
  {
    [(CKShareParticipantArrayController *)v7 setShare:shareCopy];
  }

  return v8;
}

- (CKShareParticipantArrayController)initWithDelegate:(id)delegate
{
  v10.receiver = self;
  v10.super_class = CKShareParticipantArrayController;
  v3 = [(CKShareParticipantArrayController *)&v10 initWithDelegate:delegate];
  v4 = v3;
  if (v3)
  {
    currentParticipants = v3->_currentParticipants;
    v3->_currentParticipants = &__NSArray0__struct;

    v6 = objc_alloc_init(CNAvatarViewController);
    descriptorForRequiredKeys = [v6 descriptorForRequiredKeys];
    avatarKeyDescriptor = v4->_avatarKeyDescriptor;
    v4->_avatarKeyDescriptor = descriptorForRequiredKeys;
  }

  return v4;
}

- (void)setShare:(id)share
{
  shareCopy = share;
  if (self->_share != shareCopy)
  {
    v6 = shareCopy;
    objc_storeStrong(&self->_share, share);
    [(CKShareParticipantArrayController *)self _scheduleParticipantUpdate];
    shareCopy = v6;
  }
}

- (void)_scheduleParticipantUpdate
{
  v3 = cdui_default_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "[INFO] Scheduling participant update", buf, 2u);
  }

  share = [(CKShareParticipantArrayController *)self share];
  operationQueue = [(CKShareParticipantArrayController *)self operationQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10002300C;
  v7[3] = &unk_10004CA08;
  v8 = share;
  selfCopy = self;
  v6 = share;
  [operationQueue addOperationWithBlock:v7];
}

- (void)_scheduleParticipantLookup:(id)lookup
{
  lookupCopy = lookup;
  operationQueue = [(CKShareParticipantArrayController *)self operationQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000233C4;
  v7[3] = &unk_10004CA08;
  v7[4] = self;
  v8 = lookupCopy;
  v6 = lookupCopy;
  [operationQueue addOperationWithBlock:v7];
}

- (BOOL)objectAttributeModified:(id)modified newObject:(id)object
{
  modifiedCopy = modified;
  objectCopy = object;
  contact = [modifiedCopy contact];
  contact2 = [objectCopy contact];

  if (contact == contact2 && ([modifiedCopy participant], v9 = objc_claimAutoreleasedReturnValue(), objc_msgSend(objectCopy, "participant"), v10 = objc_claimAutoreleasedReturnValue(), v10, v9, v9 == v10))
  {
    contact3 = [modifiedCopy contact];
    contact4 = [objectCopy contact];
    v15 = [contact3 isEqual:contact4];

    v11 = v15 ^ 1;
  }

  else
  {
    v11 = 1;
  }

  return v11;
}

@end