@interface MRMediaControlsCustomRow
+ (id)rowWithType:(id)a3 titleOverride:(id)a4 identifier:(id)a5;
- (BOOL)isEqual:(id)a3;
- (MRMediaControlsCustomRow)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MRMediaControlsCustomRow

+ (id)rowWithType:(id)a3 titleOverride:(id)a4 identifier:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = objc_alloc_init(MRMediaControlsCustomRow);
  [(MRMediaControlsCustomRow *)v10 setType:v9];

  [(MRMediaControlsCustomRow *)v10 setTitleOverride:v8];
  [(MRMediaControlsCustomRow *)v10 setIdentifier:v7];

  return v10;
}

- (void)encodeWithCoder:(id)a3
{
  type = self->_type;
  v6 = a3;
  v5 = [(UTType *)type identifier];
  [v6 encodeObject:v5 forKey:@"type"];

  [v6 encodeObject:self->_titleOverride forKey:@"titleOverride"];
  [v6 encodeObject:self->_identifier forKey:@"identifier"];
}

- (MRMediaControlsCustomRow)initWithCoder:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = MRMediaControlsCustomRow;
  v5 = [(MRMediaControlsCustomRow *)&v15 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"type"];
    v7 = [MEMORY[0x1E6982C40] typeWithIdentifier:v6];
    type = v5->_type;
    v5->_type = v7;

    if (!v5->_type)
    {

      v13 = 0;
      goto LABEL_6;
    }

    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"titleOverride"];
    titleOverride = v5->_titleOverride;
    v5->_titleOverride = v9;

    v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v11;
  }

  v13 = v5;
LABEL_6:

  return v13;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    LOBYTE(v11) = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(MRMediaControlsCustomRow *)v5 type];
      v7 = [v6 isEqual:self->_type];

      v8 = [(MRMediaControlsCustomRow *)v5 titleOverride];
      v9 = v7 & [v8 isEqualToString:self->_titleOverride];

      v10 = [(MRMediaControlsCustomRow *)v5 identifier];

      v11 = v9 & [v10 isEqualToString:self->_identifier];
    }

    else
    {
      LOBYTE(v11) = 0;
    }
  }

  return v11;
}

@end