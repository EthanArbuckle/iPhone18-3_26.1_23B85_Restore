@interface SUUICellScrollView
- (void)touchesBegan:(id)a3 withEvent:(id)a4;
- (void)touchesCancelled:(id)a3 withEvent:(id)a4;
- (void)touchesEnded:(id)a3 withEvent:(id)a4;
- (void)touchesMoved:(id)a3 withEvent:(id)a4;
@end

@implementation SUUICellScrollView

- (void)touchesBegan:(id)a3 withEvent:(id)a4
{
  v12 = a3;
  v7 = a4;
  v8 = self;
  v9 = objc_opt_class();
  InstanceMethod = class_getInstanceMethod(v9, a2);
  Implementation = method_getImplementation(InstanceMethod);
  (Implementation)(v8, a2, v12, v7);
}

- (void)touchesCancelled:(id)a3 withEvent:(id)a4
{
  v12 = a3;
  v7 = a4;
  v8 = self;
  v9 = objc_opt_class();
  InstanceMethod = class_getInstanceMethod(v9, a2);
  Implementation = method_getImplementation(InstanceMethod);
  (Implementation)(v8, a2, v12, v7);
}

- (void)touchesEnded:(id)a3 withEvent:(id)a4
{
  v12 = a3;
  v7 = a4;
  v8 = self;
  v9 = objc_opt_class();
  InstanceMethod = class_getInstanceMethod(v9, a2);
  Implementation = method_getImplementation(InstanceMethod);
  (Implementation)(v8, a2, v12, v7);
}

- (void)touchesMoved:(id)a3 withEvent:(id)a4
{
  v12 = a3;
  v7 = a4;
  v8 = self;
  v9 = objc_opt_class();
  InstanceMethod = class_getInstanceMethod(v9, a2);
  Implementation = method_getImplementation(InstanceMethod);
  (Implementation)(v8, a2, v12, v7);
}

@end