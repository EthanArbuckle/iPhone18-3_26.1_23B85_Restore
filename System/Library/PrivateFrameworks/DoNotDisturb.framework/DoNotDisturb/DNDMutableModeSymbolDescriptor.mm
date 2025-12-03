@interface DNDMutableModeSymbolDescriptor
- (DNDMutableModeSymbolDescriptor)initWithTintStyle:(unint64_t)style tintColorNames:(id)names imageName:(id)name;
- (void)setImageName:(id)name;
- (void)setTintColorNames:(id)names;
@end

@implementation DNDMutableModeSymbolDescriptor

- (DNDMutableModeSymbolDescriptor)initWithTintStyle:(unint64_t)style tintColorNames:(id)names imageName:(id)name
{
  v6.receiver = self;
  v6.super_class = DNDMutableModeSymbolDescriptor;
  return [(DNDModeSymbolDescriptor *)&v6 initWithTintStyle:style tintColorNames:names imageName:name];
}

- (void)setTintColorNames:(id)names
{
  v4 = [names copy];
  tintColorNames = self->super._tintColorNames;
  self->super._tintColorNames = v4;

  MEMORY[0x2821F96F8](v4, tintColorNames);
}

- (void)setImageName:(id)name
{
  v4 = [name copy];
  imageName = self->super._imageName;
  self->super._imageName = v4;

  MEMORY[0x2821F96F8](v4, imageName);
}

@end