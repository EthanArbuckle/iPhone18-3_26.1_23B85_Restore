@interface PBUIImageSlot
- (id)_initWithImage:(id)a3 lifetimeToken:(id)a4;
- (void)dealloc;
@end

@implementation PBUIImageSlot

- (id)_initWithImage:(id)a3 lifetimeToken:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = PBUIImageSlot;
  v9 = [(PBUIImageSlot *)&v12 init];
  p_isa = &v9->super.isa;
  if (v9)
  {
    objc_storeStrong(&v9->_image, a3);
    objc_storeStrong(p_isa + 2, a4);
  }

  return p_isa;
}

- (void)dealloc
{
  [(BSInvalidatable *)self->_lifetimeToken invalidate];
  lifetimeToken = self->_lifetimeToken;
  self->_lifetimeToken = 0;

  v4.receiver = self;
  v4.super_class = PBUIImageSlot;
  [(PBUIImageSlot *)&v4 dealloc];
}

@end