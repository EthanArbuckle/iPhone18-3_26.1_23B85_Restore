@interface HFPropertyDifference
+ (BOOL)object:(id)object isEqualToObject:(id)toObject;
+ (id)compareObjectA:(id)a toObjectB:(id)b key:(id)key priority:(unint64_t)priority;
- (HFPropertyDifference)initWithObjectA:(id)a toObjectB:(id)b key:(id)key priority:(unint64_t)priority;
- (id)copyWithZone:(_NSZone *)zone;
- (id)descriptionBuilder;
@end

@implementation HFPropertyDifference

- (HFPropertyDifference)initWithObjectA:(id)a toObjectB:(id)b key:(id)key priority:(unint64_t)priority
{
  aCopy = a;
  bCopy = b;
  v16.receiver = self;
  v16.super_class = HFPropertyDifference;
  v13 = [(HFDifference *)&v16 initWithKey:key priority:priority];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_valueA, a);
    objc_storeStrong(&v14->_valueB, b);
  }

  return v14;
}

+ (id)compareObjectA:(id)a toObjectB:(id)b key:(id)key priority:(unint64_t)priority
{
  aCopy = a;
  bCopy = b;
  keyCopy = key;
  if ([self object:aCopy isEqualToObject:bCopy])
  {
    v13 = 0;
  }

  else
  {
    v13 = [[self alloc] initWithObjectA:aCopy toObjectB:bCopy key:keyCopy priority:priority];
  }

  return v13;
}

+ (BOOL)object:(id)object isEqualToObject:(id)toObject
{
  objectCopy = object;
  toObjectCopy = toObject;
  v7 = objectCopy;
  v8 = toObjectCopy;
  v9 = v8;
  if (v7 == v8)
  {
    v11 = 1;
    v12 = v8;
    v13 = v7;
LABEL_16:

    goto LABEL_17;
  }

  if (!v7)
  {

    goto LABEL_7;
  }

  v10 = [v7 isEqual:v8];

  if ((v10 & 1) == 0)
  {
LABEL_7:
    objc_opt_class();
    v14 = v7;
    if (objc_opt_isKindOfClass())
    {
      v15 = v14;
    }

    else
    {
      v15 = 0;
    }

    v13 = v15;

    objc_opt_class();
    v16 = v9;
    if (objc_opt_isKindOfClass())
    {
      v17 = v16;
    }

    else
    {
      v17 = 0;
    }

    v12 = v17;

    v11 = 0;
    if (v13 && v12)
    {
      v11 = [v13 isEqualToString:v12];
      v12 = v16;
      v13 = v14;
    }

    goto LABEL_16;
  }

  v11 = 1;
LABEL_17:

  return v11;
}

- (id)descriptionBuilder
{
  v11.receiver = self;
  v11.super_class = HFPropertyDifference;
  descriptionBuilder = [(HFDifference *)&v11 descriptionBuilder];
  valueA = [(HFPropertyDifference *)self valueA];
  if (_MergedGlobals_3 != -1)
  {
    dispatch_once(&_MergedGlobals_3, &__block_literal_global_70_2);
  }

  v5 = qword_280E023D8;
  v6 = [descriptionBuilder appendObject:valueA withName:v5];

  valueB = [(HFPropertyDifference *)self valueB];
  if (qword_280E023E0 != -1)
  {
    dispatch_once(&qword_280E023E0, &__block_literal_global_77);
  }

  v8 = qword_280E023E8;
  v9 = [descriptionBuilder appendObject:valueB withName:v8];

  return descriptionBuilder;
}

void __42__HFPropertyDifference_descriptionBuilder__block_invoke_2()
{
  v0 = qword_280E023D8;
  qword_280E023D8 = @"valueA";
}

void __42__HFPropertyDifference_descriptionBuilder__block_invoke_4()
{
  v0 = qword_280E023E8;
  qword_280E023E8 = @"valueB";
}

- (id)copyWithZone:(_NSZone *)zone
{
  v11.receiver = self;
  v11.super_class = HFPropertyDifference;
  v4 = [(HFDifference *)&v11 copyWithZone:zone];
  objc_opt_class();
  v5 = v4;
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  valueA = [(HFPropertyDifference *)self valueA];
  [v7 setValueA:valueA];

  valueB = [(HFPropertyDifference *)self valueB];
  [v7 setValueB:valueB];

  return v7;
}

@end