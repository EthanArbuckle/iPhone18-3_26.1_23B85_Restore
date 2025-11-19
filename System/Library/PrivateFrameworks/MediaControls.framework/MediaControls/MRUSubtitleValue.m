@interface MRUSubtitleValue
- (BOOL)isEqualToSubtitleValue:(id)a3;
- (MRUSubtitleValue)initWithText:(id)a3 icon:(id)a4 accessory:(int64_t)a5;
- (id)description;
@end

@implementation MRUSubtitleValue

- (MRUSubtitleValue)initWithText:(id)a3 icon:(id)a4 accessory:(int64_t)a5
{
  v8 = a3;
  v9 = a4;
  v14.receiver = self;
  v14.super_class = MRUSubtitleValue;
  v10 = [(MRUSubtitleValue *)&v14 init];
  if (v10)
  {
    v11 = [v8 copy];
    text = v10->_text;
    v10->_text = v11;

    objc_storeStrong(&v10->_icon, a4);
    v10->_accessory = a5;
  }

  return v10;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(MRUSubtitleValue *)self text];
  v6 = [MEMORY[0x1E696AD98] numberWithInteger:{-[MRUSubtitleValue accessory](self, "accessory")}];
  v7 = [v3 stringWithFormat:@"<%@: %p text=%@ accessory=%@ >", v4, self, v5, v6];

  return v7;
}

- (BOOL)isEqualToSubtitleValue:(id)a3
{
  v4 = a3;
  v5 = [(MRUSubtitleValue *)self text];
  v6 = [v4 text];
  if ([v5 isEqual:v6])
  {
    v7 = [(MRUSubtitleValue *)self icon];
    v8 = [v4 icon];
    if (v7 == v8)
    {
      v10 = [(MRUSubtitleValue *)self accessory];
      v9 = v10 == [v4 accessory];
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