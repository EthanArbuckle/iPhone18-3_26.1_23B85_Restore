@interface _MFDelayedNotification
- (_MFDelayedNotification)initWithNotificationMessage:(id)a3 identifier:(id)a4 submissionDate:(double)a5 context:(id)a6;
@end

@implementation _MFDelayedNotification

- (_MFDelayedNotification)initWithNotificationMessage:(id)a3 identifier:(id)a4 submissionDate:(double)a5 context:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a6;
  v20.receiver = self;
  v20.super_class = _MFDelayedNotification;
  v14 = [(_MFDelayedNotification *)&v20 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_notificationMessage, a3);
    v16 = [v12 copy];
    identifier = v15->_identifier;
    v15->_identifier = v16;

    v15->_submissionDate = a5;
    objc_storeStrong(&v15->_context, a6);
    atomic_store(0, &v15->_invalidated);
    atomic_store(0, &v15->_processing);
    v18 = v15;
  }

  return v15;
}

@end