@interface HDIDSInvitation
- (HDIDSInvitation)initWithUUID:(id)a3 fromID:(id)a4 codableObject:(id)a5;
@end

@implementation HDIDSInvitation

- (HDIDSInvitation)initWithUUID:(id)a3 fromID:(id)a4 codableObject:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v19.receiver = self;
  v19.super_class = HDIDSInvitation;
  v11 = [(HDIDSInvitation *)&v19 init];
  if (v11)
  {
    v12 = [v8 copy];
    UUID = v11->_UUID;
    v11->_UUID = v12;

    v14 = [v9 copy];
    fromID = v11->_fromID;
    v11->_fromID = v14;

    v16 = [v10 copy];
    codableObject = v11->_codableObject;
    v11->_codableObject = v16;
  }

  return v11;
}

@end