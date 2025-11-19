@interface ICNoteTimelineSectionIdentifier
+ (id)sortDescriptorsWithDirection:(int64_t)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToICNoteTimelineSectionIdentifier:(id)a3;
- (ICNoteTimelineSectionIdentifier)initWithTimelineSectionType:(int64_t)a3 referenceDate:(id)a4 title:(id)a5 sortOrder:(unint64_t)a6;
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
  v4 = [(ICNoteTimelineSectionIdentifier *)self timelineSectionType];
  v5 = [(ICNoteTimelineSectionIdentifier *)self sectionTitle];
  [v5 hash];
  [(ICNoteTimelineSectionIdentifier *)self sortOrder];
  v13 = ICHashWithHashKeys(v3, v6, v7, v8, v9, v10, v11, v12, v4);

  return v13;
}

- (ICNoteTimelineSectionIdentifier)initWithTimelineSectionType:(int64_t)a3 referenceDate:(id)a4 title:(id)a5 sortOrder:(unint64_t)a6
{
  v11 = a4;
  v12 = a5;
  v16.receiver = self;
  v16.super_class = ICNoteTimelineSectionIdentifier;
  v13 = [(ICNoteSectionIdentifier *)&v16 initWithNoteSectionType:5];
  v14 = v13;
  if (v13)
  {
    v13->_timelineSectionType = a3;
    objc_storeStrong(&v13->_referenceDate, a4);
    objc_storeStrong(&v14->_sectionTitle, a5);
    v14->_sortOrder = a6;
  }

  return v14;
}

+ (id)sortDescriptorsWithDirection:(int64_t)a3
{
  v8[2] = *MEMORY[0x1E69E9840];
  v3 = a3 == 0;
  v4 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"timelineSectionType" ascending:v3];
  v8[0] = v4;
  v5 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"sortOrder" ascending:v3];
  v8[1] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:2];

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = ICNoteTimelineSectionIdentifier;
  if ([(ICNoteSectionIdentifier *)&v8 isEqual:v4])
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
  v4 = [(ICNoteTimelineSectionIdentifier *)self typeString];
  v5 = [(ICNoteTimelineSectionIdentifier *)self sectionTitle];
  v6 = [v3 stringWithFormat:@"type: %@, title: %@, sortOrder: %lu", v4, v5, -[ICNoteTimelineSectionIdentifier sortOrder](self, "sortOrder")];

  return v6;
}

- (BOOL)isEqualToICNoteTimelineSectionIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(ICNoteTimelineSectionIdentifier *)self timelineSectionType];
  if (v5 == [v4 timelineSectionType])
  {
    v6 = [(ICNoteTimelineSectionIdentifier *)self sectionTitle];
    v7 = [v4 sectionTitle];
    if ([v6 isEqualToString:v7])
    {
      v8 = [(ICNoteTimelineSectionIdentifier *)self sortOrder];
      v9 = v8 == [v4 sortOrder];
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
  v2 = [(ICNoteTimelineSectionIdentifier *)self timelineSectionType];
  if ((v2 - 1) > 8)
  {
    return @"Invitations";
  }

  else
  {
    return off_1E8469888[v2 - 1];
  }
}

@end