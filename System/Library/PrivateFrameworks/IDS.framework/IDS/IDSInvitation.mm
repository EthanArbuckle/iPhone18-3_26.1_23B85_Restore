@interface IDSInvitation
- (IDSInvitation)initWithState:(int64_t)state expirationDate:(id)date uniqueID:(id)d context:(id)context;
@end

@implementation IDSInvitation

- (IDSInvitation)initWithState:(int64_t)state expirationDate:(id)date uniqueID:(id)d context:(id)context
{
  dateCopy = date;
  dCopy = d;
  contextCopy = context;
  v19.receiver = self;
  v19.super_class = IDSInvitation;
  v14 = [(IDSInvitation *)&v19 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_context, context);
    objc_storeStrong(&v15->_expirationDate, date);
    if (dCopy)
    {
      uUID = dCopy;
    }

    else
    {
      uUID = [MEMORY[0x1E696AFB0] UUID];
    }

    uniqueID = v15->_uniqueID;
    v15->_uniqueID = uUID;

    v15->_state = state;
  }

  return v15;
}

@end