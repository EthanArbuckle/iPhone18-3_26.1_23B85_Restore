@interface _MFDelayedNotification
- (_MFDelayedNotification)initWithNotificationMessage:(id)message identifier:(id)identifier submissionDate:(double)date context:(id)context;
@end

@implementation _MFDelayedNotification

- (_MFDelayedNotification)initWithNotificationMessage:(id)message identifier:(id)identifier submissionDate:(double)date context:(id)context
{
  messageCopy = message;
  identifierCopy = identifier;
  contextCopy = context;
  v20.receiver = self;
  v20.super_class = _MFDelayedNotification;
  v14 = [(_MFDelayedNotification *)&v20 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_notificationMessage, message);
    v16 = [identifierCopy copy];
    identifier = v15->_identifier;
    v15->_identifier = v16;

    v15->_submissionDate = date;
    objc_storeStrong(&v15->_context, context);
    atomic_store(0, &v15->_invalidated);
    atomic_store(0, &v15->_processing);
    v18 = v15;
  }

  return v15;
}

@end