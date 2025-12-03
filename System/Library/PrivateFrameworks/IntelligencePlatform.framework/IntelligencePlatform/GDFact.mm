@interface GDFact
- (GDFact)initWithPredicate:(unint64_t)predicate object:(id)object;
@end

@implementation GDFact

- (GDFact)initWithPredicate:(unint64_t)predicate object:(id)object
{
  objectCopy = object;
  v11.receiver = self;
  v11.super_class = GDFact;
  v8 = [(GDFact *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_predicate = predicate;
    objc_storeStrong(&v8->_object, object);
  }

  return v9;
}

@end