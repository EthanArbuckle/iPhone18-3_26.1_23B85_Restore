@interface DNDSMutableModeRecord
- (id)copyWithZone:(_NSZone *)zone;
- (void)setModeIdentifier:(id)identifier;
- (void)setName:(id)name;
- (void)setSymbolDescriptorImageName:(id)name;
- (void)setSymbolDescriptorTintColorNames:(id)names;
- (void)setSymbolImageName:(id)name;
- (void)setTintColorName:(id)name;
@end

@implementation DNDSMutableModeRecord

- (void)setSymbolImageName:(id)name
{
  v4 = [name copy];
  symbolImageName = self->super._symbolImageName;
  self->super._symbolImageName = v4;

  MEMORY[0x2821F96F8](v4, symbolImageName);
}

- (void)setTintColorName:(id)name
{
  v4 = [name copy];
  tintColorName = self->super._tintColorName;
  self->super._tintColorName = v4;

  MEMORY[0x2821F96F8](v4, tintColorName);
}

- (void)setSymbolDescriptorTintColorNames:(id)names
{
  v4 = [names copy];
  symbolDescriptorTintColorNames = self->super._symbolDescriptorTintColorNames;
  self->super._symbolDescriptorTintColorNames = v4;

  MEMORY[0x2821F96F8](v4, symbolDescriptorTintColorNames);
}

- (void)setSymbolDescriptorImageName:(id)name
{
  v4 = [name copy];
  symbolDescriptorImageName = self->super._symbolDescriptorImageName;
  self->super._symbolDescriptorImageName = v4;

  MEMORY[0x2821F96F8](v4, symbolDescriptorImageName);
}

- (void)setName:(id)name
{
  v4 = [name copy];
  name = self->super._name;
  self->super._name = v4;

  MEMORY[0x2821F96F8](v4, name);
}

- (void)setModeIdentifier:(id)identifier
{
  v4 = [identifier copy];
  modeIdentifier = self->super._modeIdentifier;
  self->super._modeIdentifier = v4;

  MEMORY[0x2821F96F8](v4, modeIdentifier);
}

- (id)copyWithZone:(_NSZone *)zone
{
  v17 = [DNDSModeRecord allocWithZone:zone];
  symbolImageName = [(DNDSModeRecord *)self symbolImageName];
  tintColorName = [(DNDSModeRecord *)self tintColorName];
  symbolDescriptorTintStyle = [(DNDSModeRecord *)self symbolDescriptorTintStyle];
  symbolDescriptorTintColorNames = [(DNDSModeRecord *)self symbolDescriptorTintColorNames];
  symbolDescriptorImageName = [(DNDSModeRecord *)self symbolDescriptorImageName];
  name = [(DNDSModeRecord *)self name];
  modeIdentifier = [(DNDSModeRecord *)self modeIdentifier];
  semanticType = [(DNDSModeRecord *)self semanticType];
  visibility = [(DNDSModeRecord *)self visibility];
  identifier = [(DNDSModeRecord *)self identifier];
  placeholderExcludedPlatforms = [(DNDSModeRecord *)self placeholderExcludedPlatforms];
  v14 = [(DNDSModeRecord *)v17 _initWithSymbolImageName:symbolImageName tintColorName:tintColorName symbolDescriptorTintStyle:symbolDescriptorTintStyle symbolDescriptorTintColorNames:symbolDescriptorTintColorNames symbolDescriptorImageName:symbolDescriptorImageName name:name modeIdentifier:modeIdentifier semanticType:semanticType visibility:visibility identifier:identifier placeholderExcludedPlatforms:placeholderExcludedPlatforms];

  return v14;
}

@end