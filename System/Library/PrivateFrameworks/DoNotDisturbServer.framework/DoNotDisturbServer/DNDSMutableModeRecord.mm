@interface DNDSMutableModeRecord
- (id)copyWithZone:(_NSZone *)a3;
- (void)setModeIdentifier:(id)a3;
- (void)setName:(id)a3;
- (void)setSymbolDescriptorImageName:(id)a3;
- (void)setSymbolDescriptorTintColorNames:(id)a3;
- (void)setSymbolImageName:(id)a3;
- (void)setTintColorName:(id)a3;
@end

@implementation DNDSMutableModeRecord

- (void)setSymbolImageName:(id)a3
{
  v4 = [a3 copy];
  symbolImageName = self->super._symbolImageName;
  self->super._symbolImageName = v4;

  MEMORY[0x2821F96F8](v4, symbolImageName);
}

- (void)setTintColorName:(id)a3
{
  v4 = [a3 copy];
  tintColorName = self->super._tintColorName;
  self->super._tintColorName = v4;

  MEMORY[0x2821F96F8](v4, tintColorName);
}

- (void)setSymbolDescriptorTintColorNames:(id)a3
{
  v4 = [a3 copy];
  symbolDescriptorTintColorNames = self->super._symbolDescriptorTintColorNames;
  self->super._symbolDescriptorTintColorNames = v4;

  MEMORY[0x2821F96F8](v4, symbolDescriptorTintColorNames);
}

- (void)setSymbolDescriptorImageName:(id)a3
{
  v4 = [a3 copy];
  symbolDescriptorImageName = self->super._symbolDescriptorImageName;
  self->super._symbolDescriptorImageName = v4;

  MEMORY[0x2821F96F8](v4, symbolDescriptorImageName);
}

- (void)setName:(id)a3
{
  v4 = [a3 copy];
  name = self->super._name;
  self->super._name = v4;

  MEMORY[0x2821F96F8](v4, name);
}

- (void)setModeIdentifier:(id)a3
{
  v4 = [a3 copy];
  modeIdentifier = self->super._modeIdentifier;
  self->super._modeIdentifier = v4;

  MEMORY[0x2821F96F8](v4, modeIdentifier);
}

- (id)copyWithZone:(_NSZone *)a3
{
  v17 = [DNDSModeRecord allocWithZone:a3];
  v16 = [(DNDSModeRecord *)self symbolImageName];
  v4 = [(DNDSModeRecord *)self tintColorName];
  v5 = [(DNDSModeRecord *)self symbolDescriptorTintStyle];
  v6 = [(DNDSModeRecord *)self symbolDescriptorTintColorNames];
  v7 = [(DNDSModeRecord *)self symbolDescriptorImageName];
  v8 = [(DNDSModeRecord *)self name];
  v9 = [(DNDSModeRecord *)self modeIdentifier];
  v10 = [(DNDSModeRecord *)self semanticType];
  v11 = [(DNDSModeRecord *)self visibility];
  v12 = [(DNDSModeRecord *)self identifier];
  v13 = [(DNDSModeRecord *)self placeholderExcludedPlatforms];
  v14 = [(DNDSModeRecord *)v17 _initWithSymbolImageName:v16 tintColorName:v4 symbolDescriptorTintStyle:v5 symbolDescriptorTintColorNames:v6 symbolDescriptorImageName:v7 name:v8 modeIdentifier:v9 semanticType:v10 visibility:v11 identifier:v12 placeholderExcludedPlatforms:v13];

  return v14;
}

@end