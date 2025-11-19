@interface LNActionConfigurationContext
- (BOOL)isEqual:(id)a3;
- (LNActionConfigurationContext)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation LNActionConfigurationContext

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self != v4)
  {
    v6 = v4;
    if (!v6 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      LOBYTE(v12) = 0;
LABEL_20:

      goto LABEL_21;
    }

    v7 = [(LNActionConfigurationContext *)self widgetFamily];
    v8 = [(LNActionConfigurationContext *)v6 widgetFamily];
    v9 = v7;
    v10 = v8;
    v11 = v10;
    if (v9 == v10)
    {
    }

    else
    {
      LOBYTE(v12) = 0;
      v13 = v10;
      v14 = v9;
      if (!v9 || !v10)
      {
LABEL_18:

LABEL_19:
        goto LABEL_20;
      }

      v12 = [v9 isEqualToString:v10];

      if (!v12)
      {
        goto LABEL_19;
      }
    }

    v15 = [(LNActionConfigurationContext *)self origin];
    v16 = [(LNActionConfigurationContext *)v6 origin];
    v14 = v15;
    v17 = v16;
    v13 = v17;
    if (v14 == v17)
    {
      LOBYTE(v12) = 1;
    }

    else
    {
      LOBYTE(v12) = 0;
      if (v14 && v17)
      {
        LOBYTE(v12) = [v14 isEqualToString:v17];
      }
    }

    goto LABEL_18;
  }

  LOBYTE(v12) = 1;
LABEL_21:

  return v12;
}

- (unint64_t)hash
{
  v2 = [(LNActionConfigurationContext *)self widgetFamily];
  v3 = [v2 hash];

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(LNActionConfigurationContext *)self widgetFamily];
  v7 = [(LNActionConfigurationContext *)self origin];
  v8 = [v3 stringWithFormat:@"<%@: %p, widgetFamily: %@, origin: %@>", v5, self, v6, v7];

  return v8;
}

- (LNActionConfigurationContext)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(LNActionConfigurationContext *)self init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"widgetFamily"];
    widgetFamily = v5->_widgetFamily;
    v5->_widgetFamily = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"origin"];
    origin = v5->_origin;
    v5->_origin = v8;

    v10 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(LNActionConfigurationContext *)self widgetFamily];
  [v4 encodeObject:v5 forKey:@"widgetFamily"];

  v6 = [(LNActionConfigurationContext *)self origin];
  [v4 encodeObject:v6 forKey:@"origin"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(objc_opt_class());
  v5 = [(LNActionConfigurationContext *)self widgetFamily];
  [v4 setWidgetFamily:v5];

  v6 = [(LNActionConfigurationContext *)self origin];
  [v4 setOrigin:v6];

  return v4;
}

@end