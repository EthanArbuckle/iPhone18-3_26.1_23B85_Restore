@interface ICAttachmentsFilterTypeSelection
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToICAttachmentsFilterTypeSelection:(id)selection;
- (ICAttachmentsFilterTypeSelection)initWithAttachmentSection:(signed __int16)section;
- (ICAttachmentsFilterTypeSelection)initWithSelectionType:(unint64_t)type;
- (id)copyWithZone:(_NSZone *)zone;
- (id)debugDescription;
- (id)rawFilterValue;
- (unint64_t)hash;
@end

@implementation ICAttachmentsFilterTypeSelection

- (ICAttachmentsFilterTypeSelection)initWithSelectionType:(unint64_t)type
{
  v5.receiver = self;
  v5.super_class = ICAttachmentsFilterTypeSelection;
  result = [(ICAttachmentsFilterTypeSelection *)&v5 init];
  if (result)
  {
    result->_selectionType = type;
  }

  return result;
}

- (ICAttachmentsFilterTypeSelection)initWithAttachmentSection:(signed __int16)section
{
  sectionCopy = section;
  v8.receiver = self;
  v8.super_class = ICAttachmentsFilterTypeSelection;
  v4 = [(ICAttachmentsFilterTypeSelection *)&v8 init];
  v5 = v4;
  if (v4)
  {
    v6 = sectionCopy > 7;
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {
    [(ICAttachmentsFilterTypeSelection *)v4 setSelectionType:qword_2150C1390[sectionCopy]];
  }

  return v5;
}

- (id)debugDescription
{
  v2 = MEMORY[0x277CCACA8];
  v3 = NSStringFromICAttachmentsFilterSelectionType([(ICAttachmentsFilterTypeSelection *)self selectionType]);
  v4 = [v2 stringWithFormat:@"selectionType: %@", v3];

  return v4;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [[ICAttachmentsFilterTypeSelection allocWithZone:?]];
  [(ICAttachmentsFilterTypeSelection *)v4 setSelectionType:[(ICAttachmentsFilterTypeSelection *)self selectionType]];
  return v4;
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
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(ICAttachmentsFilterTypeSelection *)self isEqualToICAttachmentsFilterTypeSelection:v5];
  }

  return v6;
}

- (unint64_t)hash
{
  v2 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[ICAttachmentsFilterTypeSelection selectionType](self, "selectionType")}];
  v3 = [v2 hash];
  v11 = ICHashWithHashKeys(v3, v4, v5, v6, v7, v8, v9, v10, 0);

  return v11;
}

- (id)rawFilterValue
{
  selectionType = [(ICAttachmentsFilterTypeSelection *)self selectionType];

  return NSStringFromICAttachmentsFilterSelectionType(selectionType);
}

- (BOOL)isEqualToICAttachmentsFilterTypeSelection:(id)selection
{
  selectionCopy = selection;
  selectionType = [(ICAttachmentsFilterTypeSelection *)self selectionType];
  selectionType2 = [selectionCopy selectionType];

  return selectionType == selectionType2;
}

@end