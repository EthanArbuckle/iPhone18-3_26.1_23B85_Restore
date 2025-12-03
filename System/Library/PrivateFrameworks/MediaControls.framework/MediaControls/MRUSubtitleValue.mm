@interface MRUSubtitleValue
- (BOOL)isEqualToSubtitleValue:(id)value;
- (MRUSubtitleValue)initWithText:(id)text icon:(id)icon accessory:(int64_t)accessory;
- (id)description;
@end

@implementation MRUSubtitleValue

- (MRUSubtitleValue)initWithText:(id)text icon:(id)icon accessory:(int64_t)accessory
{
  textCopy = text;
  iconCopy = icon;
  v14.receiver = self;
  v14.super_class = MRUSubtitleValue;
  v10 = [(MRUSubtitleValue *)&v14 init];
  if (v10)
  {
    v11 = [textCopy copy];
    text = v10->_text;
    v10->_text = v11;

    objc_storeStrong(&v10->_icon, icon);
    v10->_accessory = accessory;
  }

  return v10;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  text = [(MRUSubtitleValue *)self text];
  v6 = [MEMORY[0x1E696AD98] numberWithInteger:{-[MRUSubtitleValue accessory](self, "accessory")}];
  v7 = [v3 stringWithFormat:@"<%@: %p text=%@ accessory=%@ >", v4, self, text, v6];

  return v7;
}

- (BOOL)isEqualToSubtitleValue:(id)value
{
  valueCopy = value;
  text = [(MRUSubtitleValue *)self text];
  text2 = [valueCopy text];
  if ([text isEqual:text2])
  {
    icon = [(MRUSubtitleValue *)self icon];
    icon2 = [valueCopy icon];
    if (icon == icon2)
    {
      accessory = [(MRUSubtitleValue *)self accessory];
      v9 = accessory == [valueCopy accessory];
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

@end