@interface LNActionConfigurationContext
- (BOOL)isEqual:(id)equal;
- (LNActionConfigurationContext)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation LNActionConfigurationContext

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (self != equalCopy)
  {
    v6 = equalCopy;
    if (!v6 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      LOBYTE(v12) = 0;
LABEL_20:

      goto LABEL_21;
    }

    widgetFamily = [(LNActionConfigurationContext *)self widgetFamily];
    widgetFamily2 = [(LNActionConfigurationContext *)v6 widgetFamily];
    v9 = widgetFamily;
    v10 = widgetFamily2;
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

    origin = [(LNActionConfigurationContext *)self origin];
    origin2 = [(LNActionConfigurationContext *)v6 origin];
    v14 = origin;
    v17 = origin2;
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
  widgetFamily = [(LNActionConfigurationContext *)self widgetFamily];
  v3 = [widgetFamily hash];

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  widgetFamily = [(LNActionConfigurationContext *)self widgetFamily];
  origin = [(LNActionConfigurationContext *)self origin];
  v8 = [v3 stringWithFormat:@"<%@: %p, widgetFamily: %@, origin: %@>", v5, self, widgetFamily, origin];

  return v8;
}

- (LNActionConfigurationContext)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(LNActionConfigurationContext *)self init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"widgetFamily"];
    widgetFamily = v5->_widgetFamily;
    v5->_widgetFamily = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"origin"];
    origin = v5->_origin;
    v5->_origin = v8;

    v10 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  widgetFamily = [(LNActionConfigurationContext *)self widgetFamily];
  [coderCopy encodeObject:widgetFamily forKey:@"widgetFamily"];

  origin = [(LNActionConfigurationContext *)self origin];
  [coderCopy encodeObject:origin forKey:@"origin"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(objc_opt_class());
  widgetFamily = [(LNActionConfigurationContext *)self widgetFamily];
  [v4 setWidgetFamily:widgetFamily];

  origin = [(LNActionConfigurationContext *)self origin];
  [v4 setOrigin:origin];

  return v4;
}

@end