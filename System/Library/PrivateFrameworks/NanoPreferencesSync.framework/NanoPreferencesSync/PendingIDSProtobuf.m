@interface PendingIDSProtobuf
+ (id)pendingIDSProtobufMessageTypeToString:(unint64_t)a3;
- (PendingIDSProtobuf)initWithIDSProtobuf:(id)a3 ofType:(unint64_t)a4 from:(id)a5 receivedAt:(id)a6;
- (id)description;
@end

@implementation PendingIDSProtobuf

- (PendingIDSProtobuf)initWithIDSProtobuf:(id)a3 ofType:(unint64_t)a4 from:(id)a5 receivedAt:(id)a6
{
  v11 = a3;
  v12 = a5;
  v13 = a6;
  v17.receiver = self;
  v17.super_class = PendingIDSProtobuf;
  v14 = [(PendingIDSProtobuf *)&v17 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_idsProtobuf, a3);
    v15->_messageType = a4;
    objc_storeStrong(&v15->_receivedDate, a6);
    objc_storeStrong(&v15->_fromIDSDevice, a5);
  }

  return v15;
}

- (id)description
{
  v3 = [NSString alloc];
  receivedDate = self->_receivedDate;
  v5 = [(IDSProtobuf *)self->_idsProtobuf context];
  v6 = [v5 outgoingResponseIdentifier];
  v7 = [PendingIDSProtobuf pendingIDSProtobufMessageTypeToString:self->_messageType];
  v8 = [v3 initWithFormat:@"PendingIDSProtobuf for IDSProtobuf received at: %@, GUID: %@, type: %@", receivedDate, v6, v7];

  return v8;
}

+ (id)pendingIDSProtobufMessageTypeToString:(unint64_t)a3
{
  if (a3 > 4)
  {
    return @"Undefined";
  }

  else
  {
    return off_10003D1E0[a3];
  }
}

@end