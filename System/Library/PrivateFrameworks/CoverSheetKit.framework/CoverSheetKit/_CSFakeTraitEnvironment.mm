@interface _CSFakeTraitEnvironment
- (_CSFakeTraitEnvironment)initWithTraitCollection:(id)collection;
@end

@implementation _CSFakeTraitEnvironment

- (_CSFakeTraitEnvironment)initWithTraitCollection:(id)collection
{
  collectionCopy = collection;
  v9.receiver = self;
  v9.super_class = _CSFakeTraitEnvironment;
  v6 = [(_CSFakeTraitEnvironment *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_traitCollection, collection);
  }

  return v7;
}

@end