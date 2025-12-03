@interface MRTextInputMessage
- (MRTextInputMessage)initWithActionType:(unint64_t)type text:(id)text;
- (NSString)text;
- (unint64_t)actionType;
@end

@implementation MRTextInputMessage

- (MRTextInputMessage)initWithActionType:(unint64_t)type text:(id)text
{
  textCopy = text;
  v10.receiver = self;
  v10.super_class = MRTextInputMessage;
  v7 = [(MRProtocolMessage *)&v10 init];
  if (v7)
  {
    v8 = objc_alloc_init(_MRTextInputMessageProtobuf);
    [(_MRTextInputMessageProtobuf *)v8 setText:textCopy];
    [(_MRTextInputMessageProtobuf *)v8 setActionType:type];
    [(MRProtocolMessage *)v7 setUnderlyingCodableMessage:v8];
  }

  return v7;
}

- (unint64_t)actionType
{
  underlyingCodableMessage = [(MRProtocolMessage *)self underlyingCodableMessage];
  actionType = [underlyingCodableMessage actionType];

  return actionType;
}

- (NSString)text
{
  underlyingCodableMessage = [(MRProtocolMessage *)self underlyingCodableMessage];
  text = [underlyingCodableMessage text];

  return text;
}

@end