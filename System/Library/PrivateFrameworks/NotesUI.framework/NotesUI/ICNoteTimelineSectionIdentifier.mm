@interface ICNoteTimelineSectionIdentifier
+ (id)sortDescriptorsWithDirection:(int64_t)direction;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToICNoteTimelineSectionIdentifier:(id)identifier;
- (ICNoteTimelineSectionIdentifier)initWithTimelineSectionType:(int64_t)type referenceDate:(id)date title:(id)title sortOrder:(unint64_t)order;
- (id)description;
- (id)typeString;
- (unint64_t)hash;
@end

@implementation ICNoteTimelineSectionIdentifier

- (unint64_t)hash
{
  v15.receiver = self;
  v15.super_class = ICNoteTimelineSectionIdentifier;
  v3 = [(ICNoteSectionIdentifier *)&v15 hash];
  timelineSectionType = [(ICNoteTimelineSectionIdentifier *)self timelineSectionType];
  sectionTitle = [(ICNoteTimelineSectionIdentifier *)self sectionTitle];
  [sectionTitle hash];
  [(ICNoteTimelineSectionIdentifier *)self sortOrder];
  v13 = ICHashWithHashKeys(v3, v6, v7, v8, v9, v10, v11, v12, timelineSectionType);

  return v13;
}

- (ICNoteTimelineSectionIdentifier)initWithTimelineSectionType:(int64_t)type referenceDate:(id)date title:(id)title sortOrder:(unint64_t)order
{
  dateCopy = date;
  titleCopy = title;
  v16.receiver = self;
  v16.super_class = ICNoteTimelineSectionIdentifier;
  v13 = [(ICNoteSectionIdentifier *)&v16 initWithNoteSectionType:5];
  v14 = v13;
  if (v13)
  {
    v13->_timelineSectionType = type;
    objc_storeStrong(&v13->_referenceDate, date);
    objc_storeStrong(&v14->_sectionTitle, title);
    v14->_sortOrder = order;
  }

  return v14;
}

+ (id)sortDescriptorsWithDirection:(int64_t)direction
{
  v8[2] = *MEMORY[0x1E69E9840];
  v3 = direction == 0;
  v4 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"timelineSectionType" ascending:v3];
  v8[0] = v4;
  v5 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"sortOrder" ascending:v3];
  v8[1] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:2];

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v8.receiver = self;
  v8.super_class = ICNoteTimelineSectionIdentifier;
  if ([(ICNoteSectionIdentifier *)&v8 isEqual:equalCopy])
  {
    objc_opt_class();
    v5 = ICDynamicCast();
    v6 = [(ICNoteTimelineSectionIdentifier *)self isEqualToICNoteTimelineSectionIdentifier:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  typeString = [(ICNoteTimelineSectionIdentifier *)self typeString];
  sectionTitle = [(ICNoteTimelineSectionIdentifier *)self sectionTitle];
  v6 = [v3 stringWithFormat:@"type: %@, title: %@, sortOrder: %lu", typeString, sectionTitle, -[ICNoteTimelineSectionIdentifier sortOrder](self, "sortOrder")];

  return v6;
}

- (BOOL)isEqualToICNoteTimelineSectionIdentifier:(id)identifier
{
  identifierCopy = identifier;
  timelineSectionType = [(ICNoteTimelineSectionIdentifier *)self timelineSectionType];
  if (timelineSectionType == [identifierCopy timelineSectionType])
  {
    sectionTitle = [(ICNoteTimelineSectionIdentifier *)self sectionTitle];
    sectionTitle2 = [identifierCopy sectionTitle];
    if ([sectionTitle isEqualToString:sectionTitle2])
    {
      sortOrder = [(ICNoteTimelineSectionIdentifier *)self sortOrder];
      v9 = sortOrder == [identifierCopy sortOrder];
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)typeString
{
  timelineSectionType = [(ICNoteTimelineSectionIdentifier *)self timelineSectionType];
  if ((timelineSectionType - 1) > 8)
  {
    return @"Invitations";
  }

  else
  {
    return off_1E8469888[timelineSectionType - 1];
  }
}

@end