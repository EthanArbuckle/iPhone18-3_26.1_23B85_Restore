@interface PKPrecursorPassUpgradeRequestAction
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToAction:(id)a3;
- (id)_init;
- (unint64_t)hash;
@end

@implementation PKPrecursorPassUpgradeRequestAction

- (id)_init
{
  v3.receiver = self;
  v3.super_class = PKPrecursorPassUpgradeRequestAction;
  return [(PKPrecursorPassUpgradeRequestAction *)&v3 init];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(PKPrecursorPassUpgradeRequestAction *)self isEqualToAction:v5];
  }

  return v6;
}

- (BOOL)isEqualToAction:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_actionType != v4[2])
  {
    goto LABEL_12;
  }

  v6 = v4[1];
  v7 = self->_localizedActionText;
  v8 = v6;
  v9 = v8;
  if (v7 == v8)
  {
  }

  else
  {
    if (!v7 || !v8)
    {

LABEL_12:
      v13 = 0;
      goto LABEL_13;
    }

    v10 = [(NSString *)v7 isEqualToString:v8];

    if (!v10)
    {
      goto LABEL_12;
    }
  }

  actionURL = self->_actionURL;
  v12 = v5[3];
  if (actionURL && v12)
  {
    v13 = [(NSURL *)actionURL isEqual:?];
  }

  else
  {
    v13 = actionURL == v12;
  }

LABEL_13:

  return v13;
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x1E695DF70] array];
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_actionType];
  [v3 safelyAddObject:v4];

  [v3 safelyAddObject:self->_localizedActionText];
  [v3 safelyAddObject:self->_actionURL];
  v5 = PKCombinedHash(17, v3);

  return v5;
}

@end