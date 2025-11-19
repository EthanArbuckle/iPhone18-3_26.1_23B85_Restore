@interface ISAliasedTypeIcon
- (ISAliasedTypeIcon)initWithType:(id)a3 moniker:(id)a4;
- (id)description;
@end

@implementation ISAliasedTypeIcon

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = ISAliasedTypeIcon;
  v4 = [(ISTypeIcon *)&v8 description];
  v5 = [(ISAliasedTypeIcon *)self moniker];
  v6 = [v3 stringWithFormat:@"%@, Moniker: %@", v4, v5];

  return v6;
}

- (ISAliasedTypeIcon)initWithType:(id)a3 moniker:(id)a4
{
  v7 = a4;
  v11.receiver = self;
  v11.super_class = ISAliasedTypeIcon;
  v8 = [(ISTypeIcon *)&v11 initWithType:a3];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_moniker, a4);
  }

  return v9;
}

@end