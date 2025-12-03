@interface PBUIImageSlot
- (id)_initWithImage:(id)image lifetimeToken:(id)token;
- (void)dealloc;
@end

@implementation PBUIImageSlot

- (id)_initWithImage:(id)image lifetimeToken:(id)token
{
  imageCopy = image;
  tokenCopy = token;
  v12.receiver = self;
  v12.super_class = PBUIImageSlot;
  v9 = [(PBUIImageSlot *)&v12 init];
  p_isa = &v9->super.isa;
  if (v9)
  {
    objc_storeStrong(&v9->_image, image);
    objc_storeStrong(p_isa + 2, token);
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