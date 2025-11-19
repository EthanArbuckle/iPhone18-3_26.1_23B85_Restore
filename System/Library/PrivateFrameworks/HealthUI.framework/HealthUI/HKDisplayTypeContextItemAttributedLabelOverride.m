@interface HKDisplayTypeContextItemAttributedLabelOverride
+ (HKDisplayTypeContextItemAttributedLabelOverride)attributedLabelOverrideWithText:(id)a3 selectedText:(id)a4;
- (BOOL)_isEqualToAttributedLabelOverride:(id)a3;
- (BOOL)isEqual:(id)a3;
- (id)attributedLabelTextWithSelectionState:(BOOL)a3;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation HKDisplayTypeContextItemAttributedLabelOverride

+ (HKDisplayTypeContextItemAttributedLabelOverride)attributedLabelOverrideWithText:(id)a3 selectedText:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = objc_alloc_init(HKDisplayTypeContextItemAttributedLabelOverride);
  attributedLabelText = v7->_attributedLabelText;
  v7->_attributedLabelText = v5;
  v9 = v5;

  selectedAttributedLabelText = v7->_selectedAttributedLabelText;
  v7->_selectedAttributedLabelText = v6;

  return v7;
}

- (id)attributedLabelTextWithSelectionState:(BOOL)a3
{
  if (a3)
  {
    [(HKDisplayTypeContextItemAttributedLabelOverride *)self selectedAttributedLabelText];
  }

  else
  {
    [(HKDisplayTypeContextItemAttributedLabelOverride *)self attributedLabelText];
  }
  v3 = ;

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(HKDisplayTypeContextItemAttributedLabelOverride *)self _isEqualToAttributedLabelOverride:v4];
  }

  return v5;
}

- (BOOL)_isEqualToAttributedLabelOverride:(id)a3
{
  v4 = a3;
  attributedLabelText = self->_attributedLabelText;
  v6 = [v4 attributedLabelText];
  if ([(NSAttributedString *)attributedLabelText isEqualToAttributedString:v6])
  {
    selectedAttributedLabelText = self->_selectedAttributedLabelText;
    v8 = [v4 selectedAttributedLabelText];
    v9 = [(NSAttributedString *)selectedAttributedLabelText isEqualToAttributedString:v8];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v5 = [(HKDisplayTypeContextItemAttributedLabelOverride *)self attributedLabelText];
  v6 = v4[1];
  v4[1] = v5;

  v7 = [(HKDisplayTypeContextItemAttributedLabelOverride *)self selectedAttributedLabelText];
  v8 = v4[2];
  v4[2] = v7;

  return v4;
}

@end