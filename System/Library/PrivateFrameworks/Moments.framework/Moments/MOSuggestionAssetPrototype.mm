@interface MOSuggestionAssetPrototype
- (MOSuggestionAssetPrototype)initWithCoder:(id)a3;
- (id)init:(id)a3 identifier:(id)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MOSuggestionAssetPrototype

- (id)init:(id)a3 identifier:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = MOSuggestionAssetPrototype;
  v9 = [(MOSuggestionAssetPrototype *)&v12 init];
  p_isa = &v9->super.isa;
  if (v9)
  {
    objc_storeStrong(&v9->_assetType, a3);
    objc_storeStrong(p_isa + 2, a4);
  }

  return p_isa;
}

- (void)encodeWithCoder:(id)a3
{
  assetType = self->_assetType;
  v5 = a3;
  [v5 encodeObject:assetType forKey:@"MOSuggestionAssetPrototypeType"];
  [v5 encodeObject:self->_identifier forKey:@"MOSuggestionAssetPrototypeIdentifier"];
}

- (MOSuggestionAssetPrototype)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = MOSuggestionAssetPrototype;
  v5 = [(MOSuggestionAssetPrototype *)&v11 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"MOSuggestionAssetPrototypeType"];
    assetType = v5->_assetType;
    v5->_assetType = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"MOSuggestionAssetPrototypeIdentifier"];
    identifier = v5->_identifier;
    v5->_identifier = v8;
  }

  return v5;
}

@end