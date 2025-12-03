@interface MOSuggestionAssetPrototype
- (MOSuggestionAssetPrototype)initWithCoder:(id)coder;
- (id)init:(id)init identifier:(id)identifier;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MOSuggestionAssetPrototype

- (id)init:(id)init identifier:(id)identifier
{
  initCopy = init;
  identifierCopy = identifier;
  v12.receiver = self;
  v12.super_class = MOSuggestionAssetPrototype;
  v9 = [(MOSuggestionAssetPrototype *)&v12 init];
  p_isa = &v9->super.isa;
  if (v9)
  {
    objc_storeStrong(&v9->_assetType, init);
    objc_storeStrong(p_isa + 2, identifier);
  }

  return p_isa;
}

- (void)encodeWithCoder:(id)coder
{
  assetType = self->_assetType;
  coderCopy = coder;
  [coderCopy encodeObject:assetType forKey:@"MOSuggestionAssetPrototypeType"];
  [coderCopy encodeObject:self->_identifier forKey:@"MOSuggestionAssetPrototypeIdentifier"];
}

- (MOSuggestionAssetPrototype)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = MOSuggestionAssetPrototype;
  v5 = [(MOSuggestionAssetPrototype *)&v11 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"MOSuggestionAssetPrototypeType"];
    assetType = v5->_assetType;
    v5->_assetType = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"MOSuggestionAssetPrototypeIdentifier"];
    identifier = v5->_identifier;
    v5->_identifier = v8;
  }

  return v5;
}

@end