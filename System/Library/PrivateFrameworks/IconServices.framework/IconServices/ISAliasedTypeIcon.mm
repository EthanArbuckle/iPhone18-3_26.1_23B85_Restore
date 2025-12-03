@interface ISAliasedTypeIcon
- (ISAliasedTypeIcon)initWithType:(id)type moniker:(id)moniker;
- (id)description;
@end

@implementation ISAliasedTypeIcon

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = ISAliasedTypeIcon;
  v4 = [(ISTypeIcon *)&v8 description];
  moniker = [(ISAliasedTypeIcon *)self moniker];
  v6 = [v3 stringWithFormat:@"%@, Moniker: %@", v4, moniker];

  return v6;
}

- (ISAliasedTypeIcon)initWithType:(id)type moniker:(id)moniker
{
  monikerCopy = moniker;
  v11.receiver = self;
  v11.super_class = ISAliasedTypeIcon;
  v8 = [(ISTypeIcon *)&v11 initWithType:type];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_moniker, moniker);
  }

  return v9;
}

@end