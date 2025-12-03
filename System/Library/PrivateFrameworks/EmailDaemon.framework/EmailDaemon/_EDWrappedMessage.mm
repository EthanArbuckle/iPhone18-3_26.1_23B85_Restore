@interface _EDWrappedMessage
- (_EDWrappedMessage)initWithMessage:(id)message databaseID:(int64_t)d;
@end

@implementation _EDWrappedMessage

- (_EDWrappedMessage)initWithMessage:(id)message databaseID:(int64_t)d
{
  messageCopy = message;
  v11.receiver = self;
  v11.super_class = _EDWrappedMessage;
  v8 = [(_EDWrappedMessage *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_message, message);
    v9->_databaseID = d;
  }

  return v9;
}

@end