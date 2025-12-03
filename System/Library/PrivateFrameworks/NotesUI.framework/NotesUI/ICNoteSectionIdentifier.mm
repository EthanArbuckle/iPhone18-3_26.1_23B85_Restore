@interface ICNoteSectionIdentifier
+ (NSArray)sortDescriptors;
+ (NSDictionary)titles;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToICNoteSectionIdentifier:(id)identifier;
- (ICNoteSectionIdentifier)initWithNoteSectionType:(int64_t)type;
- (NSString)debugDescription;
- (NSString)expansionStateContext;
- (NSString)title;
- (unint64_t)hash;
@end

@implementation ICNoteSectionIdentifier

+ (NSArray)sortDescriptors
{
  v5[1] = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"sectionType" ascending:1];
  v5[0] = v2;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:1];

  return v3;
}

- (unint64_t)hash
{
  result = self->_hash;
  if (!result)
  {
    sectionType = [(ICNoteSectionIdentifier *)self sectionType];
    result = ICHashWithHashKeys(sectionType, v5, v6, v7, v8, v9, v10, v11, 0);
  }

  self->_hash = result;
  return result;
}

- (NSString)expansionStateContext
{
  sectionType = [(ICNoteSectionIdentifier *)self sectionType];

  return NSStringFromICNoteSectionType(sectionType);
}

+ (NSDictionary)titles
{
  if (titles_onceToken != -1)
  {
    +[ICNoteSectionIdentifier titles];
  }

  v3 = titles_titles;

  return v3;
}

void __33__ICNoteSectionIdentifier_titles__block_invoke()
{
  v7[5] = *MEMORY[0x1E69E9840];
  v7[0] = &stru_1F4F94F00;
  v6[0] = &unk_1F4FC3CD8;
  v6[1] = &unk_1F4FC3CF0;
  v0 = __ICLocalizedFrameworkString_impl(@"Invitations", @"Invitations", 0, 1);
  v7[1] = v0;
  v6[2] = &unk_1F4FC3D08;
  v1 = __ICLocalizedFrameworkString_impl(@"Folders", @"Folders", 0, 1);
  v7[2] = v1;
  v6[3] = &unk_1F4FC3D20;
  v2 = __ICLocalizedFrameworkString_impl(@"Pinned", @"Pinned", 0, 1);
  v7[3] = v2;
  v6[4] = &unk_1F4FC3D38;
  v3 = __ICLocalizedFrameworkString_impl(@"Notes", @"Notes", 0, 1);
  v7[4] = v3;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:v6 count:5];
  v5 = titles_titles;
  titles_titles = v4;
}

- (ICNoteSectionIdentifier)initWithNoteSectionType:(int64_t)type
{
  v5.receiver = self;
  v5.super_class = ICNoteSectionIdentifier;
  result = [(ICNoteSectionIdentifier *)&v5 init];
  if (result)
  {
    result->_sectionType = type;
  }

  return result;
}

- (NSString)title
{
  titles = [objc_opt_class() titles];
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:{-[ICNoteSectionIdentifier sectionType](self, "sectionType")}];
  v5 = [titles objectForKeyedSubscript:v4];

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v7 = 1;
  }

  else if (equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    objc_opt_class();
    v6 = ICDynamicCast();
    v7 = [(ICNoteSectionIdentifier *)self isEqualToICNoteSectionIdentifier:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (NSString)debugDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromICNoteSectionType([(ICNoteSectionIdentifier *)self sectionType]);
  v6 = [v3 stringWithFormat:@"<%@: %p> sectionType: %@", v4, self, v5];

  return v6;
}

- (BOOL)isEqualToICNoteSectionIdentifier:(id)identifier
{
  identifierCopy = identifier;
  sectionType = [(ICNoteSectionIdentifier *)self sectionType];
  sectionType2 = [identifierCopy sectionType];

  return sectionType == sectionType2;
}

@end