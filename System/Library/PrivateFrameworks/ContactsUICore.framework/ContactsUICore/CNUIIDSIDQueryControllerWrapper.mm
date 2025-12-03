@interface CNUIIDSIDQueryControllerWrapper
- (BOOL)refreshIDStatusForDestinations:(id)destinations service:(id)service listenerID:(id)d queue:(id)queue completionBlock:(id)block;
- (CNUIIDSIDQueryControllerWrapper)initWithController:(id)controller;
@end

@implementation CNUIIDSIDQueryControllerWrapper

- (CNUIIDSIDQueryControllerWrapper)initWithController:(id)controller
{
  controllerCopy = controller;
  v10.receiver = self;
  v10.super_class = CNUIIDSIDQueryControllerWrapper;
  v6 = [(CNUIIDSIDQueryControllerWrapper *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_controller, controller);
    v8 = v7;
  }

  return v7;
}

- (BOOL)refreshIDStatusForDestinations:(id)destinations service:(id)service listenerID:(id)d queue:(id)queue completionBlock:(id)block
{
  blockCopy = block;
  queueCopy = queue;
  dCopy = d;
  serviceCopy = service;
  destinationsCopy = destinations;
  controller = [(CNUIIDSIDQueryControllerWrapper *)self controller];
  v18 = [controller refreshIDStatusForDestinations:destinationsCopy service:serviceCopy listenerID:dCopy queue:queueCopy completionBlock:blockCopy];

  return v18;
}

@end