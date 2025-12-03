@interface JavaScriptDialogState
- (JavaScriptDialogState)initWithMessage:(id)message defaultText:(id)text type:(int64_t)type completionHandler:(id)handler;
@end

@implementation JavaScriptDialogState

- (JavaScriptDialogState)initWithMessage:(id)message defaultText:(id)text type:(int64_t)type completionHandler:(id)handler
{
  messageCopy = message;
  textCopy = text;
  handlerCopy = handler;
  v22.receiver = self;
  v22.super_class = JavaScriptDialogState;
  v13 = [(JavaScriptDialogState *)&v22 init];
  if (v13)
  {
    v14 = [messageCopy copy];
    message = v13->_message;
    v13->_message = v14;

    v16 = [textCopy copy];
    defaultText = v13->_defaultText;
    v13->_defaultText = v16;

    v13->_type = type;
    v18 = _Block_copy(handlerCopy);
    completionHandler = v13->_completionHandler;
    v13->_completionHandler = v18;

    v20 = v13;
  }

  return v13;
}

@end