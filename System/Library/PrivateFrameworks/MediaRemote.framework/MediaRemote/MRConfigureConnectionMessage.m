@interface MRConfigureConnectionMessage
- (MRConfigureConnectionMessage)initWithGroupID:(id)a3;
- (MRConfigureConnectionMessage)initWithUnderlyingCodableMessage:(id)a3 error:(id)a4;
- (NSString)groupID;
- (void)setGroupID:(id)a3;
@end

@implementation MRConfigureConnectionMessage

- (MRConfigureConnectionMessage)initWithGroupID:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = MRConfigureConnectionMessage;
  v5 = [(MRProtocolMessage *)&v8 init];
  if (v5)
  {
    v6 = objc_alloc_init(_MRConfigureConnectionMessageProtobuf);
    [(_MRConfigureConnectionMessageProtobuf *)v6 setGroupID:v4];
    [(MRProtocolMessage *)v5 setUnderlyingCodableMessage:v6];
  }

  return v5;
}

- (MRConfigureConnectionMessage)initWithUnderlyingCodableMessage:(id)a3 error:(id)a4
{
  v5.receiver = self;
  v5.super_class = MRConfigureConnectionMessage;
  return [(MRProtocolMessage *)&v5 initWithUnderlyingCodableMessage:a3 error:a4];
}

- (NSString)groupID
{
  v2 = [(MRProtocolMessage *)self underlyingCodableMessage];
  v3 = [v2 groupID];

  return v3;
}

- (void)setGroupID:(id)a3
{
  v4 = a3;
  v5 = [(MRProtocolMessage *)self underlyingCodableMessage];
  [v5 setGroupID:v4];
}

@end