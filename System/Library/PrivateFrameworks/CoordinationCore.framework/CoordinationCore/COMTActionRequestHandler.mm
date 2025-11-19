@interface COMTActionRequestHandler
- (COMTActionRequestHandler)initWithType:(id)a3 actions:(id)a4 delegate:(id)a5 dispatchQueue:(id)a6;
- (COMTActionRequestHandlerDelegate)delegate;
- (id)description;
@end

@implementation COMTActionRequestHandler

- (COMTActionRequestHandler)initWithType:(id)a3 actions:(id)a4 delegate:(id)a5 dispatchQueue:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v18.receiver = self;
  v18.super_class = COMTActionRequestHandler;
  v15 = [(COMTActionRequestHandler *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_targetType, a3);
    objc_storeStrong(&v16->_actions, a4);
    objc_storeWeak(&v16->_delegate, v13);
    objc_storeStrong(&v16->_delegateQueue, a6);
  }

  return v16;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(COMTActionRequestHandler *)self delegate];
  v7 = [v3 stringWithFormat:@"<%@: %p, delegate = %p>", v5, self, v6];

  return v7;
}

- (COMTActionRequestHandlerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end