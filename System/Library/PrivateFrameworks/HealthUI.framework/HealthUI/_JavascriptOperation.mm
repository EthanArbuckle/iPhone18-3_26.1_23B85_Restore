@interface _JavascriptOperation
- (_JavascriptOperation)initWithJavascript:(id)javascript completion:(id)completion;
- (void)submitJavascript:(id)javascript finishBlock:(id)block;
@end

@implementation _JavascriptOperation

- (_JavascriptOperation)initWithJavascript:(id)javascript completion:(id)completion
{
  javascriptCopy = javascript;
  completionCopy = completion;
  v14.receiver = self;
  v14.super_class = _JavascriptOperation;
  v9 = [(_JavascriptOperation *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_javascript, javascript);
    v11 = _Block_copy(completionCopy);
    completion = v10->_completion;
    v10->_completion = v11;
  }

  return v10;
}

- (void)submitJavascript:(id)javascript finishBlock:(id)block
{
  blockCopy = block;
  javascript = self->_javascript;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __53___JavascriptOperation_submitJavascript_finishBlock___block_invoke;
  v9[3] = &unk_1E81BB4B0;
  v9[4] = self;
  v10 = blockCopy;
  v8 = blockCopy;
  [javascript evaluateJavaScript:javascript completionHandler:v9];
}

@end