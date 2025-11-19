@interface _GCApplicationComponent
- (_GCApplicationComponent)init;
- (id)_init;
@end

@implementation _GCApplicationComponent

- (_GCApplicationComponent)init
{
  [(_GCApplicationComponent *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (id)_init
{
  if (result)
  {
    v1.receiver = result;
    v1.super_class = _GCApplicationComponent;
    return objc_msgSendSuper2(&v1, sel_init);
  }

  return result;
}

@end