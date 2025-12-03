@interface UIView(ICDidMoveToWindowHandler)
- (void)ic_addDidMoveToWindowHandler:()ICDidMoveToWindowHandler;
@end

@implementation UIView(ICDidMoveToWindowHandler)

- (void)ic_addDidMoveToWindowHandler:()ICDidMoveToWindowHandler
{
  v4 = a3;
  v5 = objc_getAssociatedObject(self, ICDidMoveToWindowSpyKey);

  if (v5)
  {
    [MEMORY[0x1E69B7A38] handleFailedAssertWithCondition:"__objc_no" functionName:"-[UIView(ICDidMoveToWindowHandler) ic_addDidMoveToWindowHandler:]" simulateCrash:1 showAlert:0 format:@"ICDidMoveToWindowSpyKey is already set"];
  }

  else
  {
    v6 = [ICDidMoveToWindowSpy alloc];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __65__UIView_ICDidMoveToWindowHandler__ic_addDidMoveToWindowHandler___block_invoke;
    v8[3] = &unk_1E846A9E8;
    v9 = v4;
    v7 = [(ICDidMoveToWindowSpy *)v6 initWithOwner:self handler:v8];
    [(ICDidMoveToWindowSpy *)v7 setHidden:1];
    [self addSubview:v7];
    objc_setAssociatedObject(self, ICDidMoveToWindowSpyKey, v7, 1);
  }
}

@end