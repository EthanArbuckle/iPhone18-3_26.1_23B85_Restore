@interface ICAttachmentsFilterTypeSelection
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToICAttachmentsFilterTypeSelection:(id)a3;
- (ICAttachmentsFilterTypeSelection)initWithAttachmentSection:(signed __int16)a3;
- (ICAttachmentsFilterTypeSelection)initWithSelectionType:(unint64_t)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)debugDescription;
- (id)rawFilterValue;
- (unint64_t)hash;
@end

@implementation ICAttachmentsFilterTypeSelection

- (ICAttachmentsFilterTypeSelection)initWithSelectionType:(unint64_t)a3
{
  v5.receiver = self;
  v5.super_class = ICAttachmentsFilterTypeSelection;
  result = [(ICAttachmentsFilterTypeSelection *)&v5 init];
  if (result)
  {
    result->_selectionType = a3;
  }

  return result;
}

- (ICAttachmentsFilterTypeSelection)initWithAttachmentSection:(signed __int16)a3
{
  v3 = a3;
  v8.receiver = self;
  v8.super_class = ICAttachmentsFilterTypeSelection;
  v4 = [(ICAttachmentsFilterTypeSelection *)&v8 init];
  v5 = v4;
  if (v4)
  {
    v6 = v3 > 7;
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {
    [(ICAttachmentsFilterTypeSelection *)v4 setSelectionType:qword_2150C1390[v3]];
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

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [[ICAttachmentsFilterTypeSelection allocWithZone:?]];
  [(ICAttachmentsFilterTypeSelection *)v4 setSelectionType:[(ICAttachmentsFilterTypeSelection *)self selectionType]];
  return v4;
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
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(ICAttachmentsFilterTypeSelection *)self isEqualToICAttachmentsFilterTypeSelection:v5];
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
  v2 = [(ICAttachmentsFilterTypeSelection *)self selectionType];

  return NSStringFromICAttachmentsFilterSelectionType(v2);
}

- (BOOL)isEqualToICAttachmentsFilterTypeSelection:(id)a3
{
  v4 = a3;
  v5 = [(ICAttachmentsFilterTypeSelection *)self selectionType];
  v6 = [v4 selectionType];

  return v5 == v6;
}

@end