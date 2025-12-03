@interface MCKeyValue
- (MCKeyValue)initWithCoder:(id)coder;
- (MCKeyValue)initWithData:(id)data localizedKey:(id)key;
- (MCKeyValue)initWithDate:(id)date localizedKey:(id)key;
- (MCKeyValue)initWithLocalizedArray:(id)array localizedKey:(id)key;
- (MCKeyValue)initWithLocalizedString:(id)string localizedKey:(id)key;
- (MCKeyValue)initWithValue:(id)value localizedKey:(id)key;
- (void)encodeWithCoder:(id)coder;
- (void)setData:(id)data localizedKey:(id)key;
- (void)setDate:(id)date localizedKey:(id)key;
- (void)setLocalizedArray:(id)array localizedKey:(id)key;
- (void)setLocalizedString:(id)string localizedKey:(id)key;
- (void)setValue:(id)value localizedKey:(id)key;
@end

@implementation MCKeyValue

- (MCKeyValue)initWithData:(id)data localizedKey:(id)key
{
  dataCopy = data;
  keyCopy = key;
  v11.receiver = self;
  v11.super_class = MCKeyValue;
  v8 = [(MCKeyValue *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(MCKeyValue *)v8 setData:dataCopy localizedKey:keyCopy];
  }

  return v9;
}

- (MCKeyValue)initWithDate:(id)date localizedKey:(id)key
{
  dateCopy = date;
  keyCopy = key;
  v11.receiver = self;
  v11.super_class = MCKeyValue;
  v8 = [(MCKeyValue *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(MCKeyValue *)v8 setDate:dateCopy localizedKey:keyCopy];
  }

  return v9;
}

- (MCKeyValue)initWithLocalizedArray:(id)array localizedKey:(id)key
{
  arrayCopy = array;
  keyCopy = key;
  v11.receiver = self;
  v11.super_class = MCKeyValue;
  v8 = [(MCKeyValue *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(MCKeyValue *)v8 setLocalizedArray:arrayCopy localizedKey:keyCopy];
  }

  return v9;
}

- (MCKeyValue)initWithLocalizedString:(id)string localizedKey:(id)key
{
  stringCopy = string;
  keyCopy = key;
  v11.receiver = self;
  v11.super_class = MCKeyValue;
  v8 = [(MCKeyValue *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(MCKeyValue *)v8 setLocalizedString:stringCopy localizedKey:keyCopy];
  }

  return v9;
}

- (MCKeyValue)initWithValue:(id)value localizedKey:(id)key
{
  valueCopy = value;
  keyCopy = key;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = [(MCKeyValue *)self initWithData:valueCopy localizedKey:keyCopy];
    goto LABEL_16;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = [(MCKeyValue *)self initWithDate:valueCopy localizedKey:keyCopy];
    goto LABEL_16;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    firstObject = [valueCopy firstObject];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v8 = [(MCKeyValue *)self initWithLocalizedArray:valueCopy localizedKey:keyCopy];
      goto LABEL_16;
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    selfCopy2 = self;
    v12 = valueCopy;
LABEL_15:
    v8 = [(MCKeyValue *)selfCopy2 initWithLocalizedString:v12 localizedKey:keyCopy];
    goto LABEL_16;
  }

  if (!valueCopy)
  {
    selfCopy2 = self;
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

- (void)setData:(id)data localizedKey:(id)key
{
  dataCopy = data;
  keyCopy = key;
  if (self->_key != keyCopy)
  {
    objc_storeStrong(&self->_key, key);
  }

  if (self->_value != dataCopy)
  {
    objc_storeStrong(&self->_value, data);
    self->_valueType = 1;
  }
}

- (void)setDate:(id)date localizedKey:(id)key
{
  dateCopy = date;
  keyCopy = key;
  if (self->_key != keyCopy)
  {
    objc_storeStrong(&self->_key, key);
  }

  if (self->_value != dateCopy)
  {
    objc_storeStrong(&self->_value, date);
    self->_valueType = 2;
  }
}

- (void)setLocalizedArray:(id)array localizedKey:(id)key
{
  arrayCopy = array;
  keyCopy = key;
  firstObject = [arrayCopy firstObject];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    if (self->_key != keyCopy)
    {
      objc_storeStrong(&self->_key, key);
    }

    if (self->_value != arrayCopy)
    {
      objc_storeStrong(&self->_value, array);
      self->_valueType = 0;
    }
  }
}

- (void)setLocalizedString:(id)string localizedKey:(id)key
{
  stringCopy = string;
  keyCopy = key;
  if (self->_key != keyCopy)
  {
    objc_storeStrong(&self->_key, key);
  }

  if (self->_value != stringCopy)
  {
    objc_storeStrong(&self->_value, string);
    self->_valueType = 3;
  }
}

- (void)setValue:(id)value localizedKey:(id)key
{
  valueCopy = value;
  keyCopy = key;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    [(MCKeyValue *)self setDate:valueCopy localizedKey:keyCopy];
    goto LABEL_4;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    firstObject = [valueCopy firstObject];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      [(MCKeyValue *)self setLocalizedArray:valueCopy localizedKey:keyCopy];
      goto LABEL_4;
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    selfCopy2 = self;
    v11 = valueCopy;
LABEL_14:
    [(MCKeyValue *)selfCopy2 setLocalizedString:v11 localizedKey:keyCopy];
    goto LABEL_4;
  }

  if (!valueCopy)
  {
    selfCopy2 = self;
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

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(MCKeyValue *)self key];
  [coderCopy encodeObject:v5 forKey:@"key"];

  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[MCKeyValue valueType](self, "valueType")}];
  [coderCopy encodeObject:v6 forKey:@"valueType"];

  value = [(MCKeyValue *)self value];
  [coderCopy encodeObject:value forKey:@"value"];
}

- (MCKeyValue)initWithCoder:(id)coder
{
  coderCopy = coder;
  v19.receiver = self;
  v19.super_class = MCKeyValue;
  v5 = [(MCKeyValue *)&v19 init];
  if (v5)
  {
    v6 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    v7 = [coderCopy decodeObjectOfClasses:v6 forKey:@"key"];
    key = v5->_key;
    v5->_key = v7;

    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"valueType"];
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
        v15 = [coderCopy decodeObjectOfClasses:v14 forKey:@"value"];
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