@interface JavaScriptDialogState
- (JavaScriptDialogState)initWithMessage:(id)a3 defaultText:(id)a4 type:(int64_t)a5 completionHandler:(id)a6;
@end

@implementation JavaScriptDialogState

- (JavaScriptDialogState)initWithMessage:(id)a3 defaultText:(id)a4 type:(int64_t)a5 completionHandler:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v22.receiver = self;
  v22.super_class = JavaScriptDialogState;
  v13 = [(JavaScriptDialogState *)&v22 init];
  if (v13)
  {
    v14 = [v10 copy];
    message = v13->_message;
    v13->_message = v14;

    v16 = [v11 copy];
    defaultText = v13->_defaultText;
    v13->_defaultText = v16;

    v13->_type = a5;
    v18 = _Block_copy(v12);
    completionHandler = v13->_completionHandler;
    v13->_completionHandler = v18;

    v20 = v13;
  }

  return v13;
}

@end