@interface HDIDSInvitation
- (HDIDSInvitation)initWithUUID:(id)d fromID:(id)iD codableObject:(id)object;
@end

@implementation HDIDSInvitation

- (HDIDSInvitation)initWithUUID:(id)d fromID:(id)iD codableObject:(id)object
{
  dCopy = d;
  iDCopy = iD;
  objectCopy = object;
  v19.receiver = self;
  v19.super_class = HDIDSInvitation;
  v11 = [(HDIDSInvitation *)&v19 init];
  if (v11)
  {
    v12 = [dCopy copy];
    UUID = v11->_UUID;
    v11->_UUID = v12;

    v14 = [iDCopy copy];
    fromID = v11->_fromID;
    v11->_fromID = v14;

    v16 = [objectCopy copy];
    codableObject = v11->_codableObject;
    v11->_codableObject = v16;
  }

  return v11;
}

@end