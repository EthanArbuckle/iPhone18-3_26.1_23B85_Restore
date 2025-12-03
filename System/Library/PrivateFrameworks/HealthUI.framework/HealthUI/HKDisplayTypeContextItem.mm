@interface HKDisplayTypeContextItem
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToContextItem:(id)item;
- (HKDisplayTypeContextItem)init;
- (id)debugDescription;
- (unint64_t)hash;
@end

@implementation HKDisplayTypeContextItem

- (HKDisplayTypeContextItem)init
{
  v5.receiver = self;
  v5.super_class = HKDisplayTypeContextItem;
  v2 = [(HKDisplayTypeContextItem *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(HKDisplayTypeContextItem *)v2 setInfoHidden:1];
    [(HKDisplayTypeContextItem *)v3 setUserInteractive:1];
    [(HKDisplayTypeContextItem *)v3 setUnit:0];
    [(HKDisplayTypeContextItem *)v3 setValue:0];
    [(HKDisplayTypeContextItem *)v3 setValueContext:0];
    [(HKDisplayTypeContextItem *)v3 setAttributedLabelTextOverride:0];
  }

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
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(HKDisplayTypeContextItem *)self isEqualToContextItem:equalCopy];
  }

  return v5;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_title hash];
  v4 = [(HKDisplayTypeContextItemTitleAccessory *)self->_titleAccessory hash]^ v3;
  v5 = v4 ^ [(HKDisplayTypeContextItemTitleAccessory *)self->_selectedTitleAccessory hash]^ self->_infoHidden;
  useTightSpacingBetweenValueAndUnit = self->_useTightSpacingBetweenValueAndUnit;
  v7 = useTightSpacingBetweenValueAndUnit ^ [(NSString *)self->_value hash];
  v8 = v5 ^ v7 ^ [(NSString *)self->_valueContext hash];
  v9 = [(HKDisplayTypeContextItemAttributedLabelOverride *)self->_attributedLabelTextOverride hash];
  v10 = v9 ^ [(NSString *)self->_unit hash];
  v11 = v10 ^ [(NSString *)self->_dateString hash];
  return v8 ^ v11 ^ [(NSString *)self->_analyticsIdentifier hash];
}

- (BOOL)isEqualToContextItem:(id)item
{
  itemCopy = item;
  v5 = itemCopy;
  if (itemCopy && ((v6 = *(itemCopy + 2), !(v6 | self->_title)) || [v6 isEqualToString:?]) && *(v5 + 3) == self->_titleAccessory && *(v5 + 4) == self->_selectedTitleAccessory && v5[8] == self->_infoHidden && v5[9] == self->_useTightSpacingBetweenValueAndUnit && v5[10] == self->_isUnitIncludedInValue && v5[11] == self->_userInteractive && ((v7 = *(v5 + 6), !(v7 | self->_value)) || objc_msgSend(v7, "isEqualToString:")) && ((v8 = *(v5 + 7), !(v8 | self->_valueContext)) || objc_msgSend(v8, "isEqualToString:")) && objc_msgSend(*(v5 + 8), "isEqual:", self->_attributedLabelTextOverride) && ((v9 = *(v5 + 5), !(v9 | self->_unit)) || objc_msgSend(v9, "isEqualToString:")) && ((v10 = *(v5 + 9), !(v10 | self->_dateString)) || objc_msgSend(v10, "isEqualToString:")))
  {
    v11 = *(v5 + 10);
    if (v11 | self->_analyticsIdentifier)
    {
      v12 = [v11 isEqualToString:?];
    }

    else
    {
      v12 = 1;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)debugDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v7.receiver = self;
  v7.super_class = HKDisplayTypeContextItem;
  v4 = [(HKDisplayTypeContextItem *)&v7 debugDescription];
  v5 = [v3 stringWithFormat:@"%@: %@ %@ %@ (%@) %@", v4, self->_title, self->_value, self->_unit, self->_valueContext, self->_attributedLabelTextOverride];

  return v5;
}

@end