@interface _DKCategory
+ (id)_categoryFromManagedObject:(id)a3 readMetadata:(BOOL)a4 cache:(id)a5;
+ (id)categoryWithInteger:(int64_t)a3 type:(id)a4;
+ (id)fromPBCodable:(id)a3;
- (BOOL)copyToManagedObject:(id)a3;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (_DKCategory)initWithCoder:(id)a3;
- (_DKCategory)initWithInteger:(int64_t)a3 type:(id)a4 cache:(id)a5;
- (id)stringValue;
- (id)toPBCodable;
- (int64_t)compareValue:(id)a3;
- (int64_t)typeCode;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _DKCategory

- (id)toPBCodable
{
  v3 = objc_alloc_init(_DKPRValue);
  v4 = objc_alloc_init(_DKPRValueType);
  [(_DKPRValue *)v3 setType:v4];
  v5 = [(_DKPRValue *)v3 type];
  [(_DKPRValueType *)v5 setType:?];

  v6 = [(_DKCategory *)self categoryType];
  v7 = [v6 typeCode];
  v8 = [(_DKPRValue *)v3 type];
  [(_DKPRValueType *)v8 setTypeCode:v7];

  [(_DKPRValue *)v3 setIntegerValue:?];

  return v3;
}

- (int64_t)typeCode
{
  v2 = [(_DKCategory *)self categoryType];
  v3 = [v2 typeCode];

  return v3;
}

+ (id)categoryWithInteger:(int64_t)a3 type:(id)a4
{
  v5 = a4;
  v6 = [_DKCategory alloc];
  v7 = +[_DKCategoryCache sharedCached];
  v8 = [(_DKCategory *)v6 initWithInteger:a3 type:v5 cache:v7];

  return v8;
}

- (_DKCategory)initWithInteger:(int64_t)a3 type:(id)a4 cache:(id)a5
{
  v9 = a4;
  v10 = a5;
  v11 = v10;
  if (!v10 || ([v10 categoryWithInteger:a3 type:v9], (v12 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v17.receiver = self;
    v17.super_class = _DKCategory;
    v13 = [(_DKObject *)&v17 init];
    v14 = v13;
    if (v13)
    {
      v13->_integerValue = a3;
      objc_storeStrong(&v13->_categoryType, a4);
    }

    v12 = v14;
    self = v12;
  }

  v15 = v12;

  return v15;
}

- (_DKCategory)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = _DKCategory;
  v5 = [(_DKObject *)&v13 initWithCoder:v4];
  if (v5)
  {
    v5->_integerValue = [v4 decodeInt64ForKey:@"integerValue"];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"categoryType"];
    categoryType = v5->_categoryType;
    v5->_categoryType = v6;

    v8 = +[_DKCategoryCache sharedCached];
    v9 = [v8 categoryWithInteger:v5->_integerValue type:v5->_categoryType];

    if (v9)
    {
      v10 = v9;
    }

    else
    {
      v10 = v5;
    }

    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = _DKCategory;
  v4 = a3;
  [(_DKObject *)&v5 encodeWithCoder:v4];
  [v4 encodeInt64:self->_integerValue forKey:{@"integerValue", v5.receiver, v5.super_class}];
  [v4 encodeObject:self->_categoryType forKey:@"categoryType"];
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  integerValue = self->_integerValue;
  categoryType = self->_categoryType;
  v11.receiver = self;
  v11.super_class = _DKCategory;
  v8 = [(_DKObject *)&v11 description];
  v9 = [v3 stringWithFormat:@"%@: { integerValue=%d categoryType=%@; %@}", v5, integerValue, categoryType, v8];;

  return v9;
}

- (int64_t)compareValue:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [v5 categoryType];
    v7 = [(_DKCategory *)self categoryType];
    v8 = [v6 isEqual:v7];

    if (v8)
    {
      v9 = [v5 integerValue];
      if (v9 == [(_DKCategory *)self integerValue])
      {
        v10 = 0;
      }

      else
      {
        v10 = -1;
      }
    }

    else
    {
      v10 = -1;
    }
  }

  else
  {
    v10 = -1;
  }

  return v10;
}

- (id)stringValue
{
  v2 = [MEMORY[0x1E696AD98] numberWithInteger:self->_integerValue];
  v3 = [v2 stringValue];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self == v4)
  {
    v12 = 1;
  }

  else if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && (v14.receiver = self, v14.super_class = _DKCategory, [(_DKObject *)&v14 isEqual:v5]))
  {
    v6 = v5;
    v7 = [(_DKCategory *)self integerValue];
    if (v7 == [(_DKCategory *)v6 integerValue])
    {
      v8 = [(_DKCategory *)self categoryType];
      v9 = [(_DKCategory *)v6 categoryType];
      if (v8 == v9)
      {
        v12 = 1;
      }

      else
      {
        v10 = [(_DKCategory *)self categoryType];
        v11 = [(_DKCategory *)v6 categoryType];
        v12 = [v10 isEqual:v11];
      }
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

+ (id)fromPBCodable:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
    v5 = [(_DKPRValue *)v4 integerValue];
    v6 = [(_DKPRValue *)v4 type];

    v7 = [(_DKObjectType *)_DKCategoryType objectTypeWithTypeCode:[(_DKPRValueType *)v6 typeCode]];
    v8 = [_DKCategory categoryWithInteger:v5 type:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (id)_categoryFromManagedObject:(id)a3 readMetadata:(BOOL)a4 cache:(id)a5
{
  v6 = a5;
  v7 = a3;
  v8 = +[_DKObjectType objectTypeWithTypeCode:](_DKCategoryType, "objectTypeWithTypeCode:", [v7 categoryType]);
  v9 = +[_DKCategory categoryWithInteger:type:](_DKCategory, "categoryWithInteger:type:", [v7 integerValue], v8);
  v10 = [v9 copyBaseObjectInfoFromManagedObject:v7 cache:v6];

  if (v10)
  {
    v11 = v9;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (BOOL)copyToManagedObject:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && (v9.receiver = self, v9.super_class = _DKCategory, [(_DKObject *)&v9 copyToManagedObject:v4]))
  {
    v5 = v4;
    [v5 setIntegerValue:{-[_DKCategory integerValue](self, "integerValue")}];
    v6 = [(_DKCategory *)self categoryType];
    [v5 setCategoryType:{objc_msgSend(v6, "typeCode")}];

    v7 = 1;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end