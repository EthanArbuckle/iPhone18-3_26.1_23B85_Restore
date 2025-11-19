@interface _EDWrappedMessage
- (_EDWrappedMessage)initWithMessage:(id)a3 databaseID:(int64_t)a4;
@end

@implementation _EDWrappedMessage

- (_EDWrappedMessage)initWithMessage:(id)a3 databaseID:(int64_t)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = _EDWrappedMessage;
  v8 = [(_EDWrappedMessage *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_message, a3);
    v9->_databaseID = a4;
  }

  return v9;
}

@end