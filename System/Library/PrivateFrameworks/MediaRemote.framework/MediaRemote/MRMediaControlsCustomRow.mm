@interface MRMediaControlsCustomRow
+ (id)rowWithType:(id)type titleOverride:(id)override identifier:(id)identifier;
- (BOOL)isEqual:(id)equal;
- (MRMediaControlsCustomRow)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MRMediaControlsCustomRow

+ (id)rowWithType:(id)type titleOverride:(id)override identifier:(id)identifier
{
  identifierCopy = identifier;
  overrideCopy = override;
  typeCopy = type;
  v10 = objc_alloc_init(MRMediaControlsCustomRow);
  [(MRMediaControlsCustomRow *)v10 setType:typeCopy];

  [(MRMediaControlsCustomRow *)v10 setTitleOverride:overrideCopy];
  [(MRMediaControlsCustomRow *)v10 setIdentifier:identifierCopy];

  return v10;
}

- (void)encodeWithCoder:(id)coder
{
  type = self->_type;
  coderCopy = coder;
  identifier = [(UTType *)type identifier];
  [coderCopy encodeObject:identifier forKey:@"type"];

  [coderCopy encodeObject:self->_titleOverride forKey:@"titleOverride"];
  [coderCopy encodeObject:self->_identifier forKey:@"identifier"];
}

- (MRMediaControlsCustomRow)initWithCoder:(id)coder
{
  coderCopy = coder;
  v15.receiver = self;
  v15.super_class = MRMediaControlsCustomRow;
  v5 = [(MRMediaControlsCustomRow *)&v15 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"type"];
    v7 = [MEMORY[0x1E6982C40] typeWithIdentifier:v6];
    type = v5->_type;
    v5->_type = v7;

    if (!v5->_type)
    {

      v13 = 0;
      goto LABEL_6;
    }

    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"titleOverride"];
    titleOverride = v5->_titleOverride;
    v5->_titleOverride = v9;

    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v11;
  }

  v13 = v5;
LABEL_6:

  return v13;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    LOBYTE(v11) = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      type = [(MRMediaControlsCustomRow *)v5 type];
      v7 = [type isEqual:self->_type];

      titleOverride = [(MRMediaControlsCustomRow *)v5 titleOverride];
      v9 = v7 & [titleOverride isEqualToString:self->_titleOverride];

      identifier = [(MRMediaControlsCustomRow *)v5 identifier];

      v11 = v9 & [identifier isEqualToString:self->_identifier];
    }

    else
    {
      LOBYTE(v11) = 0;
    }
  }

  return v11;
}

@end