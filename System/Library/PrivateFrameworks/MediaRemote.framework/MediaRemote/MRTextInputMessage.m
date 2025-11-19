@interface MRTextInputMessage
- (MRTextInputMessage)initWithActionType:(unint64_t)a3 text:(id)a4;
- (NSString)text;
- (unint64_t)actionType;
@end

@implementation MRTextInputMessage

- (MRTextInputMessage)initWithActionType:(unint64_t)a3 text:(id)a4
{
  v6 = a4;
  v10.receiver = self;
  v10.super_class = MRTextInputMessage;
  v7 = [(MRProtocolMessage *)&v10 init];
  if (v7)
  {
    v8 = objc_alloc_init(_MRTextInputMessageProtobuf);
    [(_MRTextInputMessageProtobuf *)v8 setText:v6];
    [(_MRTextInputMessageProtobuf *)v8 setActionType:a3];
    [(MRProtocolMessage *)v7 setUnderlyingCodableMessage:v8];
  }

  return v7;
}

- (unint64_t)actionType
{
  v2 = [(MRProtocolMessage *)self underlyingCodableMessage];
  v3 = [v2 actionType];

  return v3;
}

- (NSString)text
{
  v2 = [(MRProtocolMessage *)self underlyingCodableMessage];
  v3 = [v2 text];

  return v3;
}

@end