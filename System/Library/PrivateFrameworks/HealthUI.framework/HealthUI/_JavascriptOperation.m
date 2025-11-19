@interface _JavascriptOperation
- (_JavascriptOperation)initWithJavascript:(id)a3 completion:(id)a4;
- (void)submitJavascript:(id)a3 finishBlock:(id)a4;
@end

@implementation _JavascriptOperation

- (_JavascriptOperation)initWithJavascript:(id)a3 completion:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = _JavascriptOperation;
  v9 = [(_JavascriptOperation *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_javascript, a3);
    v11 = _Block_copy(v8);
    completion = v10->_completion;
    v10->_completion = v11;
  }

  return v10;
}

- (void)submitJavascript:(id)a3 finishBlock:(id)a4
{
  v6 = a4;
  javascript = self->_javascript;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __53___JavascriptOperation_submitJavascript_finishBlock___block_invoke;
  v9[3] = &unk_1E81BB4B0;
  v9[4] = self;
  v10 = v6;
  v8 = v6;
  [a3 evaluateJavaScript:javascript completionHandler:v9];
}

@end