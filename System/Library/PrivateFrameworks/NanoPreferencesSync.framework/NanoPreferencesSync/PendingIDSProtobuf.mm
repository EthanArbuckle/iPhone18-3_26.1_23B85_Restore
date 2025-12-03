@interface PendingIDSProtobuf
+ (id)pendingIDSProtobufMessageTypeToString:(unint64_t)string;
- (PendingIDSProtobuf)initWithIDSProtobuf:(id)protobuf ofType:(unint64_t)type from:(id)from receivedAt:(id)at;
- (id)description;
@end

@implementation PendingIDSProtobuf

- (PendingIDSProtobuf)initWithIDSProtobuf:(id)protobuf ofType:(unint64_t)type from:(id)from receivedAt:(id)at
{
  protobufCopy = protobuf;
  fromCopy = from;
  atCopy = at;
  v17.receiver = self;
  v17.super_class = PendingIDSProtobuf;
  v14 = [(PendingIDSProtobuf *)&v17 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_idsProtobuf, protobuf);
    v15->_messageType = type;
    objc_storeStrong(&v15->_receivedDate, at);
    objc_storeStrong(&v15->_fromIDSDevice, from);
  }

  return v15;
}

- (id)description
{
  v3 = [NSString alloc];
  receivedDate = self->_receivedDate;
  context = [(IDSProtobuf *)self->_idsProtobuf context];
  outgoingResponseIdentifier = [context outgoingResponseIdentifier];
  v7 = [PendingIDSProtobuf pendingIDSProtobufMessageTypeToString:self->_messageType];
  v8 = [v3 initWithFormat:@"PendingIDSProtobuf for IDSProtobuf received at: %@, GUID: %@, type: %@", receivedDate, outgoingResponseIdentifier, v7];

  return v8;
}

+ (id)pendingIDSProtobufMessageTypeToString:(unint64_t)string
{
  if (string > 4)
  {
    return @"Undefined";
  }

  else
  {
    return off_10003D1E0[string];
  }
}

@end