@interface HMFPreference
- (BOOL)BOOLValue;
- (HMFPreference)init;
- (HMFPreference)initWithKey:(id)key options:(unint64_t)options defaultValue:(id)value parent:(id)parent;
- (HMFPreference)parent;
- (NSData)dataValue;
- (NSNumber)numberValue;
- (NSString)stringValue;
- (id)shortDescription;
@end

@implementation HMFPreference

- (BOOL)BOOLValue
{
  if (__disabledDueToParent(self))
  {
    return 0;
  }

  value = [(HMFPreference *)self value];
  if (value)
  {
    numberValue = [(HMFPreference *)self numberValue];
    v6 = numberValue;
    v3 = !numberValue || [numberValue BOOLValue];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (NSNumber)numberValue
{
  if (__disabledDueToParent(self))
  {
    v3 = 0;
    goto LABEL_15;
  }

  value = [(HMFPreference *)self value];
  if (!value)
  {
    goto LABEL_13;
  }

  objc_opt_class();
  v5 = objc_opt_isKindOfClass() & 1;
  if (v5)
  {
    v6 = value;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  v3 = value;
  if (v5)
  {
    goto LABEL_14;
  }

  v8 = value;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v10 = (isKindOfClass & 1) != 0 ? v8 : 0;
  v11 = v10;

  if (isKindOfClass)
  {
    v12 = objc_alloc_init(MEMORY[0x277CCABB8]);
    [v12 setNumberStyle:1];
    v3 = [v12 numberFromString:v8];
  }

  else
  {
LABEL_13:
    v3 = 0;
  }

LABEL_14:

LABEL_15:

  return v3;
}

- (HMFPreference)parent
{
  WeakRetained = objc_loadWeakRetained(&self->_parent);

  return WeakRetained;
}

- (HMFPreference)init
{
  v2 = MEMORY[0x277CBEAD8];
  v3 = *MEMORY[0x277CBE658];
  v4 = MEMORY[0x277CCACA8];
  v5 = NSStringFromSelector(a2);
  v6 = [v4 stringWithFormat:@"%@ is unavailable", v5];
  v7 = [v2 exceptionWithName:v3 reason:v6 userInfo:0];
  v8 = v7;

  objc_exception_throw(v7);
}

- (HMFPreference)initWithKey:(id)key options:(unint64_t)options defaultValue:(id)value parent:(id)parent
{
  keyCopy = key;
  valueCopy = value;
  parentCopy = parent;
  v19.receiver = self;
  v19.super_class = HMFPreference;
  v13 = [(HMFPreference *)&v19 init];
  if (v13)
  {
    v14 = [keyCopy copy];
    key = v13->_key;
    v13->_key = v14;

    v13->_options = options;
    v16 = [valueCopy copy];
    value = v13->_value;
    v13->_value = v16;

    objc_storeWeak(&v13->_parent, parentCopy);
  }

  return v13;
}

- (id)shortDescription
{
  v3 = MEMORY[0x277CCACA8];
  shortDescription = [objc_opt_class() shortDescription];
  v5 = [(HMFPreference *)self key];
  v6 = [v3 stringWithFormat:@"%@ %@", shortDescription, v5];

  return v6;
}

- (NSString)stringValue
{
  if (__disabledDueToParent(self))
  {
    v3 = 0;
  }

  else
  {
    value = [(HMFPreference *)self value];
    if (value)
    {
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      if (isKindOfClass)
      {
        v6 = value;
      }

      else
      {
        v6 = 0;
      }

      v7 = v6;
      if (isKindOfClass)
      {
        stringValue = [value stringValue];
      }

      else
      {
        v9 = value;
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v10 = v9;
        }

        else
        {
          v10 = 0;
        }

        stringValue = v10;
      }

      v3 = stringValue;
    }

    else
    {
      v3 = 0;
    }
  }

  return v3;
}

- (NSData)dataValue
{
  if (__disabledDueToParent(self))
  {
    v3 = 0;
  }

  else
  {
    value = [(HMFPreference *)self value];
    if (value)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v5 = value;
      }

      else
      {
        v5 = 0;
      }

      v3 = v5;
    }

    else
    {
      v3 = 0;
    }
  }

  return v3;
}

@end