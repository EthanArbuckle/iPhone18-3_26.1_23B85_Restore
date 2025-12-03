@interface PKPrecursorPassUpgradeRequestDescription
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToDescription:(id)description;
- (id)_init;
- (unint64_t)hash;
@end

@implementation PKPrecursorPassUpgradeRequestDescription

- (id)_init
{
  v3.receiver = self;
  v3.super_class = PKPrecursorPassUpgradeRequestDescription;
  return [(PKPrecursorPassUpgradeRequestDescription *)&v3 init];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(PKPrecursorPassUpgradeRequestDescription *)self isEqualToDescription:v5];
  }

  return v6;
}

- (BOOL)isEqualToDescription:(id)description
{
  descriptionCopy = description;
  v5 = descriptionCopy[1];
  v6 = self->_localizedTitle;
  v7 = v5;
  v8 = v7;
  if (v6 == v7)
  {
  }

  else
  {
    if (v6)
    {
      v9 = v7 == 0;
    }

    else
    {
      v9 = 1;
    }

    if (v9)
    {
      goto LABEL_14;
    }

    v10 = [(NSString *)v6 isEqualToString:v7];

    if (!v10)
    {
      goto LABEL_15;
    }
  }

  v11 = descriptionCopy[2];
  v6 = self->_localizedDescription;
  v12 = v11;
  v8 = v12;
  if (v6 != v12)
  {
    if (v6 && v12)
    {
      v13 = [(NSString *)v6 isEqualToString:v12];

      if (v13)
      {
        goto LABEL_18;
      }

LABEL_15:
      v14 = 0;
      goto LABEL_16;
    }

LABEL_14:

    goto LABEL_15;
  }

LABEL_18:
  actions = self->_actions;
  v17 = descriptionCopy[3];
  if (actions && v17)
  {
    v14 = [(NSArray *)actions isEqual:?];
  }

  else
  {
    v14 = actions == v17;
  }

LABEL_16:

  return v14;
}

- (unint64_t)hash
{
  array = [MEMORY[0x1E695DF70] array];
  [array safelyAddObject:self->_localizedTitle];
  [array safelyAddObject:self->_localizedDescription];
  [array safelyAddObject:self->_actions];
  v4 = PKCombinedHash(17, array);

  return v4;
}

@end