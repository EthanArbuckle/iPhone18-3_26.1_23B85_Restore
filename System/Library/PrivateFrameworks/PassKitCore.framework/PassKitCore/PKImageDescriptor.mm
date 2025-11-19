@interface PKImageDescriptor
+ (void)_createForType:(uint64_t)a3 withTintColor:(char)a4 hasBackground:;
- (BOOL)isEqual:(id)a3;
- (PKImageDescriptor)initWithCoder:(id)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PKImageDescriptor

+ (void)_createForType:(uint64_t)a3 withTintColor:(char)a4 hasBackground:
{
  objc_opt_self();
  v7 = off_1E79BFE68;
  if (a2)
  {
    v7 = off_1E79BFE70;
  }

  v8 = objc_alloc(*v7);
  v9 = v8;
  if (v8 && (v13.receiver = v8, v13.super_class = PKImageDescriptor, (v10 = objc_msgSendSuper2(&v13, sel_init)) != 0))
  {
    v11 = v10;
    v10[2] = a2;

    v11[3] = a3;
    *(v11 + 8) = a4;
  }

  else
  {

    return 0;
  }

  return v11;
}

- (PKImageDescriptor)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"type"];
  v6 = v5;
  if (v5 == @"bitmap" || v5 && (v7 = [(__CFString *)v5 isEqualToString:@"bitmap"], v6, (v7 & 1) != 0))
  {
    v8 = 0;
  }

  else
  {

    v9 = v6;
    if (v9 != @"symbol")
    {
      v10 = v9;
      if (!v6 || (v11 = [(__CFString *)v9 isEqualToString:@"symbol"], v10, (v11 & 1) == 0))
      {

LABEL_15:
        v15 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"PKImageDescriptor" code:0 userInfo:0];
        [v4 failWithError:v15];

        v16 = 0;
        goto LABEL_18;
      }
    }

    v8 = 1;
  }

  if (!objc_opt_class() || (objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_15;
  }

  if (self && (v18.receiver = self, v18.super_class = PKImageDescriptor, (v12 = [(PKImageDescriptor *)&v18 init]) != 0))
  {
    v13 = v12;
    v12->_type = v8;
    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"tintColor"];
    PKSemanticColorFromString(v14, &v13->_tintColor);

    v13->_hasBackground = [v4 decodeBoolForKey:@"hasBackground"];
  }

  else
  {
    v13 = 0;
  }

  self = v13;
  v16 = self;
LABEL_18:

  return v16;
}

- (void)encodeWithCoder:(id)a3
{
  type = self->_type;
  v5 = @"symbol";
  if (type != 1)
  {
    v5 = 0;
  }

  if (type)
  {
    v6 = v5;
  }

  else
  {
    v6 = @"bitmap";
  }

  v8 = a3;
  [v8 encodeObject:v6 forKey:@"type"];
  v7 = PKSemanticColorToString(self->_tintColor);
  [v8 encodeObject:v7 forKey:@"tintColor"];

  [v8 encodeBool:self->_hasBackground forKey:@"hasBackground"];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v6 = 1;
  }

  else
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v6 = 0;
    if (v4 && (isKindOfClass & 1) != 0)
    {
      v7 = v4;
      v8 = v7;
      if (!self)
      {
        goto LABEL_26;
      }

      type = v7->_type;
      if (type != self->_type || v7->_tintColor != self->_tintColor)
      {
        goto LABEL_26;
      }

      if (type != 1)
      {
        if (type)
        {
          goto LABEL_23;
        }

        v10 = v7;
        v11 = v10;
        v12 = v10[4];
        isa = self[1].super.isa;
        if (v12 && isa)
        {
          v14 = [v10[4] isEqual:isa];

          if ((v14 & 1) == 0)
          {
            goto LABEL_26;
          }

LABEL_23:
          v6 = 1;
LABEL_27:

          goto LABEL_28;
        }

        if (v12 == isa)
        {
          goto LABEL_23;
        }

LABEL_26:
        v6 = 0;
        goto LABEL_27;
      }

      v15 = v7;
      v16 = self[1].super.isa;
      v17 = v15[4];
      v18 = v16;
      v19 = v18;
      if (v17 == v18)
      {
      }

      else
      {
        if (!v17 || !v18)
        {

LABEL_25:
          goto LABEL_26;
        }

        v20 = [(objc_class *)v17 isEqualToString:v18];

        if ((v20 & 1) == 0)
        {
          goto LABEL_25;
        }
      }

      goto LABEL_23;
    }
  }

LABEL_28:

  return v6;
}

- (unint64_t)hash
{
  type = self->_type;
  if (!type)
  {
    v3 = &OBJC_IVAR___PKImageDescriptorBitmap__imageHash;
    goto LABEL_5;
  }

  if (type == 1)
  {
    v3 = &OBJC_IVAR___PKImageDescriptorSymbol__name;
LABEL_5:
    [*(&self->super.isa + *v3) hash];
  }

  return SipHash();
}

@end