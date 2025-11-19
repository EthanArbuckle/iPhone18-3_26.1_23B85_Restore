@interface DNDMutableMode
- (id)copyWithZone:(_NSZone *)a3;
- (void)setIdentifier:(id)a3;
- (void)setName:(id)a3;
- (void)setSymbolDescriptor:(id)a3;
- (void)setSymbolImageName:(id)a3;
- (void)setTintColorName:(id)a3;
@end

@implementation DNDMutableMode

- (void)setTintColorName:(id)a3
{
  v4 = [a3 copy];
  tintColorName = self->super._tintColorName;
  self->super._tintColorName = v4;

  MEMORY[0x2821F96F8](v4, tintColorName);
}

- (void)setSymbolDescriptor:(id)a3
{
  v4 = [a3 copy];
  symbolDescriptor = self->super._symbolDescriptor;
  self->super._symbolDescriptor = v4;

  MEMORY[0x2821F96F8](v4, symbolDescriptor);
}

- (void)setSymbolImageName:(id)a3
{
  v4 = [a3 copy];
  symbolImageName = self->super._symbolImageName;
  self->super._symbolImageName = v4;

  MEMORY[0x2821F96F8](v4, symbolImageName);
}

- (void)setName:(id)a3
{
  v4 = [a3 copy];
  name = self->super._name;
  self->super._name = v4;

  MEMORY[0x2821F96F8](v4, name);
}

- (void)setIdentifier:(id)a3
{
  v4 = [a3 copy];
  identifier = self->super._identifier;
  self->super._identifier = v4;

  MEMORY[0x2821F96F8](v4, identifier);
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [DNDMode alloc];

  return [(DNDMode *)v4 _initWithMode:self];
}

@end