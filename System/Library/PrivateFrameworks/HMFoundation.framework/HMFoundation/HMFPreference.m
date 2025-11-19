@interface HMFPreference
- (BOOL)BOOLValue;
- (HMFPreference)init;
- (HMFPreference)initWithKey:(id)a3 options:(unint64_t)a4 defaultValue:(id)a5 parent:(id)a6;
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

  v4 = [(HMFPreference *)self value];
  if (v4)
  {
    v5 = [(HMFPreference *)self numberValue];
    v6 = v5;
    v3 = !v5 || [v5 BOOLValue];
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

  v4 = [(HMFPreference *)self value];
  if (!v4)
  {
    goto LABEL_13;
  }

  objc_opt_class();
  v5 = objc_opt_isKindOfClass() & 1;
  if (v5)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  v3 = v4;
  if (v5)
  {
    goto LABEL_14;
  }

  v8 = v4;
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

- (HMFPreference)initWithKey:(id)a3 options:(unint64_t)a4 defaultValue:(id)a5 parent:(id)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a6;
  v19.receiver = self;
  v19.super_class = HMFPreference;
  v13 = [(HMFPreference *)&v19 init];
  if (v13)
  {
    v14 = [v10 copy];
    key = v13->_key;
    v13->_key = v14;

    v13->_options = a4;
    v16 = [v11 copy];
    value = v13->_value;
    v13->_value = v16;

    objc_storeWeak(&v13->_parent, v12);
  }

  return v13;
}

- (id)shortDescription
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [objc_opt_class() shortDescription];
  v5 = [(HMFPreference *)self key];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

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
    v4 = [(HMFPreference *)self value];
    if (v4)
    {
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      if (isKindOfClass)
      {
        v6 = v4;
      }

      else
      {
        v6 = 0;
      }

      v7 = v6;
      if (isKindOfClass)
      {
        v8 = [v4 stringValue];
      }

      else
      {
        v9 = v4;
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v10 = v9;
        }

        else
        {
          v10 = 0;
        }

        v8 = v10;
      }

      v3 = v8;
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
    v4 = [(HMFPreference *)self value];
    if (v4)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v5 = v4;
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