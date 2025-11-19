@interface MCKeyValue
- (MCKeyValue)initWithCoder:(id)a3;
- (MCKeyValue)initWithData:(id)a3 localizedKey:(id)a4;
- (MCKeyValue)initWithDate:(id)a3 localizedKey:(id)a4;
- (MCKeyValue)initWithLocalizedArray:(id)a3 localizedKey:(id)a4;
- (MCKeyValue)initWithLocalizedString:(id)a3 localizedKey:(id)a4;
- (MCKeyValue)initWithValue:(id)a3 localizedKey:(id)a4;
- (void)encodeWithCoder:(id)a3;
- (void)setData:(id)a3 localizedKey:(id)a4;
- (void)setDate:(id)a3 localizedKey:(id)a4;
- (void)setLocalizedArray:(id)a3 localizedKey:(id)a4;
- (void)setLocalizedString:(id)a3 localizedKey:(id)a4;
- (void)setValue:(id)a3 localizedKey:(id)a4;
@end

@implementation MCKeyValue

- (MCKeyValue)initWithData:(id)a3 localizedKey:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11.receiver = self;
  v11.super_class = MCKeyValue;
  v8 = [(MCKeyValue *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(MCKeyValue *)v8 setData:v6 localizedKey:v7];
  }

  return v9;
}

- (MCKeyValue)initWithDate:(id)a3 localizedKey:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11.receiver = self;
  v11.super_class = MCKeyValue;
  v8 = [(MCKeyValue *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(MCKeyValue *)v8 setDate:v6 localizedKey:v7];
  }

  return v9;
}

- (MCKeyValue)initWithLocalizedArray:(id)a3 localizedKey:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11.receiver = self;
  v11.super_class = MCKeyValue;
  v8 = [(MCKeyValue *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(MCKeyValue *)v8 setLocalizedArray:v6 localizedKey:v7];
  }

  return v9;
}

- (MCKeyValue)initWithLocalizedString:(id)a3 localizedKey:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11.receiver = self;
  v11.super_class = MCKeyValue;
  v8 = [(MCKeyValue *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(MCKeyValue *)v8 setLocalizedString:v6 localizedKey:v7];
  }

  return v9;
}

- (MCKeyValue)initWithValue:(id)a3 localizedKey:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = [(MCKeyValue *)self initWithData:v6 localizedKey:v7];
    goto LABEL_16;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = [(MCKeyValue *)self initWithDate:v6 localizedKey:v7];
    goto LABEL_16;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = [v6 firstObject];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v8 = [(MCKeyValue *)self initWithLocalizedArray:v6 localizedKey:v7];
      goto LABEL_16;
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = self;
    v12 = v6;
LABEL_15:
    v8 = [(MCKeyValue *)v11 initWithLocalizedString:v12 localizedKey:v7];
    goto LABEL_16;
  }

  if (!v6)
  {
    v11 = self;
    v12 = 0;
    goto LABEL_15;
  }

  v13 = _MCLogObjects;
  if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_1A795B000, v13, OS_LOG_TYPE_ERROR, "Failed to set key & value of MCKeyValue as value was unrecognized type", buf, 2u);
  }

  v16.receiver = self;
  v16.super_class = MCKeyValue;
  v8 = [(MCKeyValue *)&v16 init];
LABEL_16:
  v14 = v8;

  return v14;
}

- (void)setData:(id)a3 localizedKey:(id)a4
{
  v8 = a3;
  v7 = a4;
  if (self->_key != v7)
  {
    objc_storeStrong(&self->_key, a4);
  }

  if (self->_value != v8)
  {
    objc_storeStrong(&self->_value, a3);
    self->_valueType = 1;
  }
}

- (void)setDate:(id)a3 localizedKey:(id)a4
{
  v8 = a3;
  v7 = a4;
  if (self->_key != v7)
  {
    objc_storeStrong(&self->_key, a4);
  }

  if (self->_value != v8)
  {
    objc_storeStrong(&self->_value, a3);
    self->_valueType = 2;
  }
}

- (void)setLocalizedArray:(id)a3 localizedKey:(id)a4
{
  v10 = a3;
  v7 = a4;
  v8 = [v10 firstObject];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    if (self->_key != v7)
    {
      objc_storeStrong(&self->_key, a4);
    }

    if (self->_value != v10)
    {
      objc_storeStrong(&self->_value, a3);
      self->_valueType = 0;
    }
  }
}

- (void)setLocalizedString:(id)a3 localizedKey:(id)a4
{
  v8 = a3;
  v7 = a4;
  if (self->_key != v7)
  {
    objc_storeStrong(&self->_key, a4);
  }

  if (self->_value != v8)
  {
    objc_storeStrong(&self->_value, a3);
    self->_valueType = 3;
  }
}

- (void)setValue:(id)a3 localizedKey:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    [(MCKeyValue *)self setDate:v6 localizedKey:v7];
    goto LABEL_4;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = [v6 firstObject];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      [(MCKeyValue *)self setLocalizedArray:v6 localizedKey:v7];
      goto LABEL_4;
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = self;
    v11 = v6;
LABEL_14:
    [(MCKeyValue *)v10 setLocalizedString:v11 localizedKey:v7];
    goto LABEL_4;
  }

  if (!v6)
  {
    v10 = self;
    v11 = 0;
    goto LABEL_14;
  }

  v12 = _MCLogObjects;
  if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_ERROR))
  {
    *v13 = 0;
    _os_log_impl(&dword_1A795B000, v12, OS_LOG_TYPE_ERROR, "Failed to set key & value of MCKeyValue as value was unrecognized type", v13, 2u);
  }

LABEL_4:
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(MCKeyValue *)self key];
  [v4 encodeObject:v5 forKey:@"key"];

  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[MCKeyValue valueType](self, "valueType")}];
  [v4 encodeObject:v6 forKey:@"valueType"];

  v7 = [(MCKeyValue *)self value];
  [v4 encodeObject:v7 forKey:@"value"];
}

- (MCKeyValue)initWithCoder:(id)a3
{
  v4 = a3;
  v19.receiver = self;
  v19.super_class = MCKeyValue;
  v5 = [(MCKeyValue *)&v19 init];
  if (v5)
  {
    v6 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    v7 = [v4 decodeObjectOfClasses:v6 forKey:@"key"];
    key = v5->_key;
    v5->_key = v7;

    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"valueType"];
    v5->_valueType = [v9 unsignedIntegerValue];

    valueType = v5->_valueType;
    if (valueType > 1)
    {
      if (valueType == 2)
      {
        v11 = MEMORY[0x1E695DFD8];
        goto LABEL_11;
      }

      if (valueType == 3)
      {
        v11 = MEMORY[0x1E695DFD8];
        goto LABEL_11;
      }
    }

    else
    {
      if (!valueType)
      {
        v12 = MEMORY[0x1E695DFD8];
        v13 = objc_opt_class();
        [v12 setWithObjects:{v13, objc_opt_class(), 0}];
        v14 = LABEL_12:;
        v15 = [v4 decodeObjectOfClasses:v14 forKey:@"value"];
        value = v5->_value;
        v5->_value = v15;

        goto LABEL_13;
      }

      if (valueType == 1)
      {
        v11 = MEMORY[0x1E695DFD8];
LABEL_11:
        [v11 setWithObjects:{objc_opt_class(), 0, v18}];
        goto LABEL_12;
      }
    }
  }

LABEL_13:

  return v5;
}

@end