@interface JavaUtilTreeMap_RelationEnum
+ (void)initialize;
- (id)forOrderWithBoolean:(BOOL)boolean;
@end

@implementation JavaUtilTreeMap_RelationEnum

- (id)forOrderWithBoolean:(BOOL)boolean
{
  if (!boolean)
  {
    ordinal = [self ordinal];
    if (ordinal <= 1)
    {
      if (ordinal)
      {
        if (ordinal != 1)
        {
          goto LABEL_13;
        }

        return qword_100558080;
      }

      else
      {
        return qword_100558088;
      }
    }

    else
    {
      switch(ordinal)
      {
        case 2:
          return qword_100558070;
        case 4:
          return qword_100558068;
        case 5:
          return JavaUtilTreeMap_RelationEnum_values_;
        default:
LABEL_13:
          v4 = new_JavaLangIllegalStateException_init();
          objc_exception_throw(v4);
      }
    }
  }

  return self;
}

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    v2 = [JavaUtilTreeMap_RelationEnum alloc];
    JavaLangEnum_initWithNSString_withInt_(v2, @"LOWER", 0);
    JavaUtilTreeMap_RelationEnum_values_[0] = v2;
    v3 = [JavaUtilTreeMap_RelationEnum alloc];
    JavaLangEnum_initWithNSString_withInt_(v3, @"FLOOR", 1);
    qword_100558068 = v3;
    v4 = [JavaUtilTreeMap_RelationEnum alloc];
    JavaLangEnum_initWithNSString_withInt_(v4, @"EQUAL", 2);
    qword_100558070 = v4;
    v5 = [JavaUtilTreeMap_RelationEnum alloc];
    JavaLangEnum_initWithNSString_withInt_(v5, @"CREATE", 3);
    qword_100558078 = v5;
    v6 = [JavaUtilTreeMap_RelationEnum alloc];
    JavaLangEnum_initWithNSString_withInt_(v6, @"CEILING", 4);
    qword_100558080 = v6;
    v7 = [JavaUtilTreeMap_RelationEnum alloc];
    JavaLangEnum_initWithNSString_withInt_(v7, @"HIGHER", 5);
    qword_100558088 = v7;
    atomic_store(1u, &JavaUtilTreeMap_RelationEnum__initialized);
  }
}

@end