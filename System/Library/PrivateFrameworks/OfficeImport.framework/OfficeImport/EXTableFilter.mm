@interface EXTableFilter
+ (id)edTableFilterFromXmlTableFilterElement:(_xmlNode *)a3 state:(id)a4;
+ (int)edFilterOperatorFromXmlOperatorString:(id)a3;
@end

@implementation EXTableFilter

+ (id)edTableFilterFromXmlTableFilterElement:(_xmlNode *)a3 state:(id)a4
{
  if (a3)
  {
    v6 = objc_alloc_init(EDTableFilter);
    v12 = 0;
    v7 = CXOptionalStringAttribute(a3, CXNoNamespace, "operator", &v12);
    v8 = v12;
    if (v7)
    {
      v9 = [a1 edFilterOperatorFromXmlOperatorString:v8];
    }

    else
    {
      v9 = 1;
    }

    [(EDTableFilter *)v6 setOperatorType:v9];
    v11 = 0.0;
    if (CXOptionalDoubleAttribute(a3, CXNoNamespace, "val", &v11))
    {
      [(EDTableFilter *)v6 setValue:v11];
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (int)edFilterOperatorFromXmlOperatorString:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (!v3)
  {
    goto LABEL_12;
  }

  if (([v3 isEqualToString:@"notEqual"] & 1) == 0)
  {
    if ([v4 isEqualToString:@"greaterThanOrEqual"])
    {
      v5 = 3;
      goto LABEL_13;
    }

    if ([v4 isEqualToString:@"greaterThan"])
    {
      v5 = 4;
      goto LABEL_13;
    }

    if ([v4 isEqualToString:@"lessThan"])
    {
      v5 = 5;
      goto LABEL_13;
    }

    if ([v4 isEqualToString:@"lessThanOrEqual"])
    {
      v5 = 6;
      goto LABEL_13;
    }

LABEL_12:
    v5 = 1;
    goto LABEL_13;
  }

  v5 = 2;
LABEL_13:

  return v5;
}

@end