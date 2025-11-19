@interface GDFact
- (GDFact)initWithPredicate:(unint64_t)a3 object:(id)a4;
@end

@implementation GDFact

- (GDFact)initWithPredicate:(unint64_t)a3 object:(id)a4
{
  v7 = a4;
  v11.receiver = self;
  v11.super_class = GDFact;
  v8 = [(GDFact *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_predicate = a3;
    objc_storeStrong(&v8->_object, a4);
  }

  return v9;
}

@end