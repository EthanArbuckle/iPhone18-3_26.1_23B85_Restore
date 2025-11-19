@interface LAUIDisplayLinkTargetProxy
- (id)initWithTarget:(id *)a1;
- (void)drawWithDisplayLink:(id)a3;
@end

@implementation LAUIDisplayLinkTargetProxy

- (id)initWithTarget:(id *)a1
{
  v3 = a2;
  if (a1)
  {
    v6.receiver = a1;
    v6.super_class = LAUIDisplayLinkTargetProxy;
    v4 = objc_msgSendSuper2(&v6, sel_init);
    a1 = v4;
    if (v4)
    {
      objc_storeWeak(v4 + 1, v3);
    }
  }

  return a1;
}

- (void)drawWithDisplayLink:(id)a3
{
  v6 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_target);
  v5 = WeakRetained;
  if (WeakRetained)
  {
    [(LAUIRenderLoop *)WeakRetained _drawWithDisplayLink:v6];
  }
}

@end