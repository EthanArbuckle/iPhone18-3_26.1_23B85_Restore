@interface FigWeakReference
+ (id)weakReferenceToObject:(id)object;
- (FigWeakReference)initWithReferencedObject:(id)object;
- (void)dealloc;
@end

@implementation FigWeakReference

- (void)dealloc
{
  objc_storeWeak(&self->_referencedObject, 0);
  v3.receiver = self;
  v3.super_class = FigWeakReference;
  [(FigWeakReference *)&v3 dealloc];
}

+ (id)weakReferenceToObject:(id)object
{
  v3 = [objc_alloc(objc_opt_class()) initWithReferencedObject:object];

  return v3;
}

- (FigWeakReference)initWithReferencedObject:(id)object
{
  v7.receiver = self;
  v7.super_class = FigWeakReference;
  v4 = [(FigWeakReference *)&v7 init];
  v5 = v4;
  if (v4)
  {
    if (object)
    {
      objc_storeWeak(&v4->_referencedObject, object);
    }

    else
    {

      return 0;
    }
  }

  return v5;
}

@end