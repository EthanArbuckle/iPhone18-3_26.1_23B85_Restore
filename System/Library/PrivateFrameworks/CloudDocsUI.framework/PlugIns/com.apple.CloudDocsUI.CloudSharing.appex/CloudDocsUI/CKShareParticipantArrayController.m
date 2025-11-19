@interface CKShareParticipantArrayController
- (BOOL)objectAttributeModified:(id)a3 newObject:(id)a4;
- (CKShareParticipantArrayController)initWithDelegate:(id)a3;
- (CKShareParticipantArrayController)initWithDelegate:(id)a3 share:(id)a4;
- (void)_scheduleParticipantLookup:(id)a3;
- (void)_scheduleParticipantUpdate;
- (void)setShare:(id)a3;
@end

@implementation CKShareParticipantArrayController

- (CKShareParticipantArrayController)initWithDelegate:(id)a3 share:(id)a4
{
  v6 = a4;
  v7 = [(CKShareParticipantArrayController *)self initWithDelegate:a3];
  v8 = v7;
  if (v7)
  {
    [(CKShareParticipantArrayController *)v7 setShare:v6];
  }

  return v8;
}

- (CKShareParticipantArrayController)initWithDelegate:(id)a3
{
  v10.receiver = self;
  v10.super_class = CKShareParticipantArrayController;
  v3 = [(CKShareParticipantArrayController *)&v10 initWithDelegate:a3];
  v4 = v3;
  if (v3)
  {
    currentParticipants = v3->_currentParticipants;
    v3->_currentParticipants = &__NSArray0__struct;

    v6 = objc_alloc_init(CNAvatarViewController);
    v7 = [v6 descriptorForRequiredKeys];
    avatarKeyDescriptor = v4->_avatarKeyDescriptor;
    v4->_avatarKeyDescriptor = v7;
  }

  return v4;
}

- (void)setShare:(id)a3
{
  v5 = a3;
  if (self->_share != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_share, a3);
    [(CKShareParticipantArrayController *)self _scheduleParticipantUpdate];
    v5 = v6;
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

  v4 = [(CKShareParticipantArrayController *)self share];
  v5 = [(CKShareParticipantArrayController *)self operationQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10002300C;
  v7[3] = &unk_10004CA08;
  v8 = v4;
  v9 = self;
  v6 = v4;
  [v5 addOperationWithBlock:v7];
}

- (void)_scheduleParticipantLookup:(id)a3
{
  v4 = a3;
  v5 = [(CKShareParticipantArrayController *)self operationQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000233C4;
  v7[3] = &unk_10004CA08;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [v5 addOperationWithBlock:v7];
}

- (BOOL)objectAttributeModified:(id)a3 newObject:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 contact];
  v8 = [v6 contact];

  if (v7 == v8 && ([v5 participant], v9 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v6, "participant"), v10 = objc_claimAutoreleasedReturnValue(), v10, v9, v9 == v10))
  {
    v13 = [v5 contact];
    v14 = [v6 contact];
    v15 = [v13 isEqual:v14];

    v11 = v15 ^ 1;
  }

  else
  {
    v11 = 1;
  }

  return v11;
}

@end