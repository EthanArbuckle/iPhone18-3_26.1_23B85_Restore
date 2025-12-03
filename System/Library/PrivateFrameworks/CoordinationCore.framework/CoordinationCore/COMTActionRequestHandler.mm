@interface COMTActionRequestHandler
- (COMTActionRequestHandler)initWithType:(id)type actions:(id)actions delegate:(id)delegate dispatchQueue:(id)queue;
- (COMTActionRequestHandlerDelegate)delegate;
- (id)description;
@end

@implementation COMTActionRequestHandler

- (COMTActionRequestHandler)initWithType:(id)type actions:(id)actions delegate:(id)delegate dispatchQueue:(id)queue
{
  typeCopy = type;
  actionsCopy = actions;
  delegateCopy = delegate;
  queueCopy = queue;
  v18.receiver = self;
  v18.super_class = COMTActionRequestHandler;
  v15 = [(COMTActionRequestHandler *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_targetType, type);
    objc_storeStrong(&v16->_actions, actions);
    objc_storeWeak(&v16->_delegate, delegateCopy);
    objc_storeStrong(&v16->_delegateQueue, queue);
  }

  return v16;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  delegate = [(COMTActionRequestHandler *)self delegate];
  v7 = [v3 stringWithFormat:@"<%@: %p, delegate = %p>", v5, self, delegate];

  return v7;
}

- (COMTActionRequestHandlerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end