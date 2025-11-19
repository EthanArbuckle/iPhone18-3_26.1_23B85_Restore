@interface NUErrorMessage
- (BOOL)isEqual:(id)a3;
- (NUErrorMessage)initWithTitle:(id)a3 subtitle:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
@end

@implementation NUErrorMessage

- (NUErrorMessage)initWithTitle:(id)a3 subtitle:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = NUErrorMessage;
  v9 = [(NUErrorMessage *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_title, a3);
    objc_storeStrong(&v10->_subtitle, a4);
  }

  return v10;
}

- (BOOL)isEqual:(id)a3
{
  if (self == a3)
  {
    return 1;
  }

  v4 = a3;
  objc_opt_class();
  v5 = FCDynamicCast();

  if (v5)
  {
    v6 = MEMORY[0x277CCACA8];
    v7 = [(NUErrorMessage *)self title];
    v8 = [v5 title];
    if ([v6 fc_string:v7 isEqualToString:v8])
    {
      v9 = MEMORY[0x277CCACA8];
      v10 = [(NUErrorMessage *)self subtitle];
      v11 = [v5 subtitle];
      v12 = [v9 fc_string:v10 isEqualToString:v11];
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (unint64_t)hash
{
  v3 = [(NUErrorMessage *)self title];
  v4 = [v3 hash];
  v5 = [(NUErrorMessage *)self subtitle];
  v6 = [v5 hash];

  return v6 ^ v4;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [NUErrorMessage alloc];
  v6 = [(NUErrorMessage *)self title];
  v7 = [v6 copyWithZone:a3];
  v8 = [(NUErrorMessage *)self subtitle];
  v9 = [v8 copyWithZone:a3];
  v10 = [(NUErrorMessage *)v5 initWithTitle:v7 subtitle:v9];

  return v10;
}

@end