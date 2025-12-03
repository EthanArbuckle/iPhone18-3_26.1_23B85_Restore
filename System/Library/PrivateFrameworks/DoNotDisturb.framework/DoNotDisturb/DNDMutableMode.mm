@interface DNDMutableMode
- (id)copyWithZone:(_NSZone *)zone;
- (void)setIdentifier:(id)identifier;
- (void)setName:(id)name;
- (void)setSymbolDescriptor:(id)descriptor;
- (void)setSymbolImageName:(id)name;
- (void)setTintColorName:(id)name;
@end

@implementation DNDMutableMode

- (void)setTintColorName:(id)name
{
  v4 = [name copy];
  tintColorName = self->super._tintColorName;
  self->super._tintColorName = v4;

  MEMORY[0x2821F96F8](v4, tintColorName);
}

- (void)setSymbolDescriptor:(id)descriptor
{
  v4 = [descriptor copy];
  symbolDescriptor = self->super._symbolDescriptor;
  self->super._symbolDescriptor = v4;

  MEMORY[0x2821F96F8](v4, symbolDescriptor);
}

- (void)setSymbolImageName:(id)name
{
  v4 = [name copy];
  symbolImageName = self->super._symbolImageName;
  self->super._symbolImageName = v4;

  MEMORY[0x2821F96F8](v4, symbolImageName);
}

- (void)setName:(id)name
{
  v4 = [name copy];
  name = self->super._name;
  self->super._name = v4;

  MEMORY[0x2821F96F8](v4, name);
}

- (void)setIdentifier:(id)identifier
{
  v4 = [identifier copy];
  identifier = self->super._identifier;
  self->super._identifier = v4;

  MEMORY[0x2821F96F8](v4, identifier);
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [DNDMode alloc];

  return [(DNDMode *)v4 _initWithMode:self];
}

@end