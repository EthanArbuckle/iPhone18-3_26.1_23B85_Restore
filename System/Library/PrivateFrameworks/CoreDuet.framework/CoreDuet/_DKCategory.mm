@interface _DKCategory
+ (id)_categoryFromManagedObject:(id)object readMetadata:(BOOL)metadata cache:(id)cache;
+ (id)categoryWithInteger:(int64_t)integer type:(id)type;
+ (id)fromPBCodable:(id)codable;
- (BOOL)copyToManagedObject:(id)object;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (_DKCategory)initWithCoder:(id)coder;
- (_DKCategory)initWithInteger:(int64_t)integer type:(id)type cache:(id)cache;
- (id)stringValue;
- (id)toPBCodable;
- (int64_t)compareValue:(id)value;
- (int64_t)typeCode;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _DKCategory

- (id)toPBCodable
{
  v3 = objc_alloc_init(_DKPRValue);
  v4 = objc_alloc_init(_DKPRValueType);
  [(_DKPRValue *)v3 setType:v4];
  type = [(_DKPRValue *)v3 type];
  [(_DKPRValueType *)type setType:?];

  categoryType = [(_DKCategory *)self categoryType];
  typeCode = [categoryType typeCode];
  type2 = [(_DKPRValue *)v3 type];
  [(_DKPRValueType *)type2 setTypeCode:typeCode];

  [(_DKPRValue *)v3 setIntegerValue:?];

  return v3;
}

- (int64_t)typeCode
{
  categoryType = [(_DKCategory *)self categoryType];
  typeCode = [categoryType typeCode];

  return typeCode;
}

+ (id)categoryWithInteger:(int64_t)integer type:(id)type
{
  typeCopy = type;
  v6 = [_DKCategory alloc];
  v7 = +[_DKCategoryCache sharedCached];
  v8 = [(_DKCategory *)v6 initWithInteger:integer type:typeCopy cache:v7];

  return v8;
}

- (_DKCategory)initWithInteger:(int64_t)integer type:(id)type cache:(id)cache
{
  typeCopy = type;
  cacheCopy = cache;
  v11 = cacheCopy;
  if (!cacheCopy || ([cacheCopy categoryWithInteger:integer type:typeCopy], (v12 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v17.receiver = self;
    v17.super_class = _DKCategory;
    v13 = [(_DKObject *)&v17 init];
    v14 = v13;
    if (v13)
    {
      v13->_integerValue = integer;
      objc_storeStrong(&v13->_categoryType, type);
    }

    v12 = v14;
    self = v12;
  }

  v15 = v12;

  return v15;
}

- (_DKCategory)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = _DKCategory;
  v5 = [(_DKObject *)&v13 initWithCoder:coderCopy];
  if (v5)
  {
    v5->_integerValue = [coderCopy decodeInt64ForKey:@"integerValue"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"categoryType"];
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

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = _DKCategory;
  coderCopy = coder;
  [(_DKObject *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeInt64:self->_integerValue forKey:{@"integerValue", v5.receiver, v5.super_class}];
  [coderCopy encodeObject:self->_categoryType forKey:@"categoryType"];
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

- (int64_t)compareValue:(id)value
{
  valueCopy = value;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = valueCopy;
    categoryType = [v5 categoryType];
    categoryType2 = [(_DKCategory *)self categoryType];
    v8 = [categoryType isEqual:categoryType2];

    if (v8)
    {
      integerValue = [v5 integerValue];
      if (integerValue == [(_DKCategory *)self integerValue])
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
  stringValue = [v2 stringValue];

  return stringValue;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (self == equalCopy)
  {
    v12 = 1;
  }

  else if (equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && (v14.receiver = self, v14.super_class = _DKCategory, [(_DKObject *)&v14 isEqual:v5]))
  {
    v6 = v5;
    integerValue = [(_DKCategory *)self integerValue];
    if (integerValue == [(_DKCategory *)v6 integerValue])
    {
      categoryType = [(_DKCategory *)self categoryType];
      categoryType2 = [(_DKCategory *)v6 categoryType];
      if (categoryType == categoryType2)
      {
        v12 = 1;
      }

      else
      {
        categoryType3 = [(_DKCategory *)self categoryType];
        categoryType4 = [(_DKCategory *)v6 categoryType];
        v12 = [categoryType3 isEqual:categoryType4];
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

+ (id)fromPBCodable:(id)codable
{
  codableCopy = codable;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = codableCopy;
    integerValue = [(_DKPRValue *)v4 integerValue];
    type = [(_DKPRValue *)v4 type];

    v7 = [(_DKObjectType *)_DKCategoryType objectTypeWithTypeCode:[(_DKPRValueType *)type typeCode]];
    v8 = [_DKCategory categoryWithInteger:integerValue type:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (id)_categoryFromManagedObject:(id)object readMetadata:(BOOL)metadata cache:(id)cache
{
  cacheCopy = cache;
  objectCopy = object;
  v8 = +[_DKObjectType objectTypeWithTypeCode:](_DKCategoryType, "objectTypeWithTypeCode:", [objectCopy categoryType]);
  v9 = +[_DKCategory categoryWithInteger:type:](_DKCategory, "categoryWithInteger:type:", [objectCopy integerValue], v8);
  v10 = [v9 copyBaseObjectInfoFromManagedObject:objectCopy cache:cacheCopy];

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

- (BOOL)copyToManagedObject:(id)object
{
  objectCopy = object;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && (v9.receiver = self, v9.super_class = _DKCategory, [(_DKObject *)&v9 copyToManagedObject:objectCopy]))
  {
    v5 = objectCopy;
    [v5 setIntegerValue:{-[_DKCategory integerValue](self, "integerValue")}];
    categoryType = [(_DKCategory *)self categoryType];
    [v5 setCategoryType:{objc_msgSend(categoryType, "typeCode")}];

    v7 = 1;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end