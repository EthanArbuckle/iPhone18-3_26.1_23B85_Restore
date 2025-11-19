@interface IDSInvitation
- (IDSInvitation)initWithState:(int64_t)a3 expirationDate:(id)a4 uniqueID:(id)a5 context:(id)a6;
@end

@implementation IDSInvitation

- (IDSInvitation)initWithState:(int64_t)a3 expirationDate:(id)a4 uniqueID:(id)a5 context:(id)a6
{
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v19.receiver = self;
  v19.super_class = IDSInvitation;
  v14 = [(IDSInvitation *)&v19 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_context, a6);
    objc_storeStrong(&v15->_expirationDate, a4);
    if (v12)
    {
      v16 = v12;
    }

    else
    {
      v16 = [MEMORY[0x1E696AFB0] UUID];
    }

    uniqueID = v15->_uniqueID;
    v15->_uniqueID = v16;

    v15->_state = a3;
  }

  return v15;
}

@end