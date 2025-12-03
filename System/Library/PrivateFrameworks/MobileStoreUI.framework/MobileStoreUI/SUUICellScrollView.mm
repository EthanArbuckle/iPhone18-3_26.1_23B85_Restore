@interface SUUICellScrollView
- (void)touchesBegan:(id)began withEvent:(id)event;
- (void)touchesCancelled:(id)cancelled withEvent:(id)event;
- (void)touchesEnded:(id)ended withEvent:(id)event;
- (void)touchesMoved:(id)moved withEvent:(id)event;
@end

@implementation SUUICellScrollView

- (void)touchesBegan:(id)began withEvent:(id)event
{
  beganCopy = began;
  eventCopy = event;
  selfCopy = self;
  v9 = objc_opt_class();
  InstanceMethod = class_getInstanceMethod(v9, a2);
  Implementation = method_getImplementation(InstanceMethod);
  (Implementation)(selfCopy, a2, beganCopy, eventCopy);
}

- (void)touchesCancelled:(id)cancelled withEvent:(id)event
{
  cancelledCopy = cancelled;
  eventCopy = event;
  selfCopy = self;
  v9 = objc_opt_class();
  InstanceMethod = class_getInstanceMethod(v9, a2);
  Implementation = method_getImplementation(InstanceMethod);
  (Implementation)(selfCopy, a2, cancelledCopy, eventCopy);
}

- (void)touchesEnded:(id)ended withEvent:(id)event
{
  endedCopy = ended;
  eventCopy = event;
  selfCopy = self;
  v9 = objc_opt_class();
  InstanceMethod = class_getInstanceMethod(v9, a2);
  Implementation = method_getImplementation(InstanceMethod);
  (Implementation)(selfCopy, a2, endedCopy, eventCopy);
}

- (void)touchesMoved:(id)moved withEvent:(id)event
{
  movedCopy = moved;
  eventCopy = event;
  selfCopy = self;
  v9 = objc_opt_class();
  InstanceMethod = class_getInstanceMethod(v9, a2);
  Implementation = method_getImplementation(InstanceMethod);
  (Implementation)(selfCopy, a2, movedCopy, eventCopy);
}

@end