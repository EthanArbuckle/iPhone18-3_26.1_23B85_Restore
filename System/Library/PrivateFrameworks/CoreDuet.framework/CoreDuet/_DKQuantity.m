@interface _DKQuantity
+ (id)fromPBCodable:(id)a3;
+ (id)objectFromManagedObject:(id)a3 readMetadata:(BOOL)a4 excludedMetadataKeys:(id)a5 cache:(id)a6;
+ (id)quantityWithDouble:(double)a3 type:(id)a4;
- (BOOL)copyToManagedObject:(id)a3;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (_DKQuantity)initWithCoder:(id)a3;
- (_DKQuantity)initWithDouble:(double)a3 type:(id)a4;
- (id)stringValue;
- (id)toPBCodable;
- (int64_t)compareValue:(id)a3;
- (int64_t)typeCode;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _DKQuantity

- (id)toPBCodable
{
  v3 = objc_alloc_init(_DKPRValue);
  v4 = objc_alloc_init(_DKPRValueType);
  [(_DKPRValue *)v3 setType:v4];
  v5 = [(_DKPRValue *)v3 type];
  [(_DKPRValueType *)v5 setType:?];

  v6 = [(_DKQuantity *)self quantityType];
  v7 = [v6 typeCode];
  v8 = [(_DKPRValue *)v3 type];
  [(_DKPRValueType *)v8 setTypeCode:v7];

  [(_DKQuantity *)self doubleValue];
  [(_DKPRValue *)v3 setDoubleValue:v9];

  return v3;
}

+ (id)fromPBCodable:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
    v5 = [(_DKPRValue *)v4 doubleValue];
    v6 = [(_DKPRValue *)v4 type];

    v7 = [(_DKObjectType *)_DKQuantityType objectTypeWithTypeCode:[(_DKPRValueType *)v6 typeCode]];
    v8 = [_DKQuantity quantityWithDouble:v7 type:v5];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (id)quantityWithDouble:(double)a3 type:(id)a4
{
  v5 = a4;
  v6 = [[_DKQuantity alloc] initWithDouble:v5 type:a3];

  return v6;
}

- (_DKQuantity)initWithDouble:(double)a3 type:(id)a4
{
  v7 = a4;
  v11.receiver = self;
  v11.super_class = _DKQuantity;
  v8 = [(_DKObject *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_doubleValue = a3;
    objc_storeStrong(&v8->_quantityType, a4);
  }

  return v9;
}

- (_DKQuantity)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = _DKQuantity;
  v5 = [(_DKObject *)&v11 initWithCoder:v4];
  if (v5)
  {
    [v4 decodeDoubleForKey:@"doubleValue"];
    v5->_doubleValue = v6;
    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"quantityType"];
    quantityType = v5->_quantityType;
    v5->_quantityType = v7;

    v9 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = _DKQuantity;
  v4 = a3;
  [(_DKObject *)&v5 encodeWithCoder:v4];
  [v4 encodeDouble:@"doubleValue" forKey:{self->_doubleValue, v5.receiver, v5.super_class}];
  [v4 encodeObject:self->_quantityType forKey:@"quantityType"];
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  doubleValue = self->_doubleValue;
  quantityType = self->_quantityType;
  v11.receiver = self;
  v11.super_class = _DKQuantity;
  v8 = [(_DKObject *)&v11 description];
  v9 = [v3 stringWithFormat:@"%@: { doubleValue=%f quantityType=%@; %@ }", v5, *&doubleValue, quantityType, v8];;

  return v9;
}

- (int64_t)compareValue:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [v5 quantityType];
    v7 = [(_DKQuantity *)self quantityType];
    v8 = [v6 isEqual:v7];

    if (v8)
    {
      [v5 doubleValue];
      v10 = v9;
      [(_DKQuantity *)self doubleValue];
      if (v10 == v11)
      {
        v12 = 0;
      }

      else
      {
        [v5 doubleValue];
        v14 = v13;
        [(_DKQuantity *)self doubleValue];
        if (v14 <= v15)
        {
          v12 = 1;
        }

        else
        {
          v12 = -1;
        }
      }
    }

    else
    {
      v12 = -1;
    }
  }

  else
  {
    v12 = -1;
  }

  return v12;
}

- (id)stringValue
{
  v2 = [MEMORY[0x1E696AD98] numberWithDouble:self->_doubleValue];
  v3 = [v2 stringValue];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self == v4)
  {
    v14 = 1;
  }

  else if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && (v16.receiver = self, v16.super_class = _DKQuantity, [(_DKObject *)&v16 isEqual:v5]))
  {
    v6 = v5;
    [(_DKQuantity *)self doubleValue];
    v8 = v7;
    [(_DKQuantity *)v6 doubleValue];
    if (v8 == v9)
    {
      v10 = [(_DKQuantity *)self quantityType];
      v11 = [(_DKQuantity *)v6 quantityType];
      if (v10 == v11)
      {
        v14 = 1;
      }

      else
      {
        v12 = [(_DKQuantity *)self quantityType];
        v13 = [(_DKQuantity *)v6 quantityType];
        v14 = [v12 isEqual:v13];
      }
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (int64_t)typeCode
{
  v2 = [(_DKQuantity *)self quantityType];
  v3 = [v2 typeCode];

  return v3;
}

+ (id)objectFromManagedObject:(id)a3 readMetadata:(BOOL)a4 excludedMetadataKeys:(id)a5 cache:(id)a6
{
  v7 = a3;
  v8 = a6;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = v7;
    v10 = +[_DKObjectType objectTypeWithTypeCode:](_DKQuantityType, "objectTypeWithTypeCode:", [v9 quantityType]);
    [v9 doubleValue];
    v11 = [_DKQuantity quantityWithDouble:v10 type:?];
    if ([v11 copyBaseObjectInfoFromManagedObject:v9 cache:v8])
    {
      v12 = v11;
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (BOOL)copyToManagedObject:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && (v9.receiver = self, v9.super_class = _DKQuantity, [(_DKObject *)&v9 copyToManagedObject:v4]))
  {
    v5 = v4;
    [(_DKQuantity *)self doubleValue];
    [v5 setDoubleValue:?];
    v6 = [(_DKQuantity *)self quantityType];
    [v5 setQuantityType:{objc_msgSend(v6, "typeCode")}];

    v7 = 1;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end