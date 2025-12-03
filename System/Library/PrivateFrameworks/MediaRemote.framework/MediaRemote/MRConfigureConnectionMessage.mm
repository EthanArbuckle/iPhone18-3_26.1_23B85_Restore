@interface MRConfigureConnectionMessage
- (MRConfigureConnectionMessage)initWithGroupID:(id)d;
- (MRConfigureConnectionMessage)initWithUnderlyingCodableMessage:(id)message error:(id)error;
- (NSString)groupID;
- (void)setGroupID:(id)d;
@end

@implementation MRConfigureConnectionMessage

- (MRConfigureConnectionMessage)initWithGroupID:(id)d
{
  dCopy = d;
  v8.receiver = self;
  v8.super_class = MRConfigureConnectionMessage;
  v5 = [(MRProtocolMessage *)&v8 init];
  if (v5)
  {
    v6 = objc_alloc_init(_MRConfigureConnectionMessageProtobuf);
    [(_MRConfigureConnectionMessageProtobuf *)v6 setGroupID:dCopy];
    [(MRProtocolMessage *)v5 setUnderlyingCodableMessage:v6];
  }

  return v5;
}

- (MRConfigureConnectionMessage)initWithUnderlyingCodableMessage:(id)message error:(id)error
{
  v5.receiver = self;
  v5.super_class = MRConfigureConnectionMessage;
  return [(MRProtocolMessage *)&v5 initWithUnderlyingCodableMessage:message error:error];
}

- (NSString)groupID
{
  underlyingCodableMessage = [(MRProtocolMessage *)self underlyingCodableMessage];
  groupID = [underlyingCodableMessage groupID];

  return groupID;
}

- (void)setGroupID:(id)d
{
  dCopy = d;
  underlyingCodableMessage = [(MRProtocolMessage *)self underlyingCodableMessage];
  [underlyingCodableMessage setGroupID:dCopy];
}

@end