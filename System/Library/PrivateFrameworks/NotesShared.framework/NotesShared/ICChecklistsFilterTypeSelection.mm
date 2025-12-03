@interface ICChecklistsFilterTypeSelection
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToICChecklistsFilterTypeSelection:(id)selection;
- (ICChecklistsFilterTypeSelection)initWithSelectionType:(unint64_t)type;
- (id)copyWithZone:(_NSZone *)zone;
- (id)rawFilterValue;
- (unint64_t)hash;
@end

@implementation ICChecklistsFilterTypeSelection

- (ICChecklistsFilterTypeSelection)initWithSelectionType:(unint64_t)type
{
  v5.receiver = self;
  v5.super_class = ICChecklistsFilterTypeSelection;
  result = [(ICChecklistsFilterTypeSelection *)&v5 init];
  if (result)
  {
    result->_selectionType = type;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [ICChecklistsFilterTypeSelection allocWithZone:zone];
  selectionType = [(ICChecklistsFilterTypeSelection *)self selectionType];

  return [(ICChecklistsFilterTypeSelection *)v4 initWithSelectionType:selectionType];
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
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(ICChecklistsFilterTypeSelection *)self isEqualToICChecklistsFilterTypeSelection:v5];
  }

  return v6;
}

- (unint64_t)hash
{
  result = self->_hash;
  if (!result)
  {
    v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[ICChecklistsFilterTypeSelection selectionType](self, "selectionType")}];
    v5 = [v4 hash];
    self->_hash = ICHashWithHashKeys(v5, v6, v7, v8, v9, v10, v11, v12, 0);

    return self->_hash;
  }

  return result;
}

- (id)rawFilterValue
{
  selectionType = [(ICChecklistsFilterTypeSelection *)self selectionType];
  if (selectionType - 1 > 2)
  {
    return @"Any";
  }

  else
  {
    return off_278196478[selectionType - 1];
  }
}

- (BOOL)isEqualToICChecklistsFilterTypeSelection:(id)selection
{
  selectionCopy = selection;
  selectionType = [(ICChecklistsFilterTypeSelection *)self selectionType];
  selectionType2 = [selectionCopy selectionType];

  return selectionType == selectionType2;
}

@end