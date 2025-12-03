@interface PKPrecursorPassUpgradeRequestAction
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToAction:(id)action;
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
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(PKPrecursorPassUpgradeRequestAction *)self isEqualToAction:v5];
  }

  return v6;
}

- (BOOL)isEqualToAction:(id)action
{
  actionCopy = action;
  v5 = actionCopy;
  if (self->_actionType != actionCopy[2])
  {
    goto LABEL_12;
  }

  v6 = actionCopy[1];
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
  array = [MEMORY[0x1E695DF70] array];
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_actionType];
  [array safelyAddObject:v4];

  [array safelyAddObject:self->_localizedActionText];
  [array safelyAddObject:self->_actionURL];
  v5 = PKCombinedHash(17, array);

  return v5;
}

@end