@interface HKDisplayTypeContextItemAttributedLabelOverride
+ (HKDisplayTypeContextItemAttributedLabelOverride)attributedLabelOverrideWithText:(id)text selectedText:(id)selectedText;
- (BOOL)_isEqualToAttributedLabelOverride:(id)override;
- (BOOL)isEqual:(id)equal;
- (id)attributedLabelTextWithSelectionState:(BOOL)state;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation HKDisplayTypeContextItemAttributedLabelOverride

+ (HKDisplayTypeContextItemAttributedLabelOverride)attributedLabelOverrideWithText:(id)text selectedText:(id)selectedText
{
  textCopy = text;
  selectedTextCopy = selectedText;
  v7 = objc_alloc_init(HKDisplayTypeContextItemAttributedLabelOverride);
  attributedLabelText = v7->_attributedLabelText;
  v7->_attributedLabelText = textCopy;
  v9 = textCopy;

  selectedAttributedLabelText = v7->_selectedAttributedLabelText;
  v7->_selectedAttributedLabelText = selectedTextCopy;

  return v7;
}

- (id)attributedLabelTextWithSelectionState:(BOOL)state
{
  if (state)
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(HKDisplayTypeContextItemAttributedLabelOverride *)self _isEqualToAttributedLabelOverride:equalCopy];
  }

  return v5;
}

- (BOOL)_isEqualToAttributedLabelOverride:(id)override
{
  overrideCopy = override;
  attributedLabelText = self->_attributedLabelText;
  attributedLabelText = [overrideCopy attributedLabelText];
  if ([(NSAttributedString *)attributedLabelText isEqualToAttributedString:attributedLabelText])
  {
    selectedAttributedLabelText = self->_selectedAttributedLabelText;
    selectedAttributedLabelText = [overrideCopy selectedAttributedLabelText];
    v9 = [(NSAttributedString *)selectedAttributedLabelText isEqualToAttributedString:selectedAttributedLabelText];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  attributedLabelText = [(HKDisplayTypeContextItemAttributedLabelOverride *)self attributedLabelText];
  v6 = v4[1];
  v4[1] = attributedLabelText;

  selectedAttributedLabelText = [(HKDisplayTypeContextItemAttributedLabelOverride *)self selectedAttributedLabelText];
  v8 = v4[2];
  v4[2] = selectedAttributedLabelText;

  return v4;
}

@end