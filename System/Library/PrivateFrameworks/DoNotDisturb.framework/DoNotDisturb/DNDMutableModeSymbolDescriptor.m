@interface DNDMutableModeSymbolDescriptor
- (DNDMutableModeSymbolDescriptor)initWithTintStyle:(unint64_t)a3 tintColorNames:(id)a4 imageName:(id)a5;
- (void)setImageName:(id)a3;
- (void)setTintColorNames:(id)a3;
@end

@implementation DNDMutableModeSymbolDescriptor

- (DNDMutableModeSymbolDescriptor)initWithTintStyle:(unint64_t)a3 tintColorNames:(id)a4 imageName:(id)a5
{
  v6.receiver = self;
  v6.super_class = DNDMutableModeSymbolDescriptor;
  return [(DNDModeSymbolDescriptor *)&v6 initWithTintStyle:a3 tintColorNames:a4 imageName:a5];
}

- (void)setTintColorNames:(id)a3
{
  v4 = [a3 copy];
  tintColorNames = self->super._tintColorNames;
  self->super._tintColorNames = v4;

  MEMORY[0x2821F96F8](v4, tintColorNames);
}

- (void)setImageName:(id)a3
{
  v4 = [a3 copy];
  imageName = self->super._imageName;
  self->super._imageName = v4;

  MEMORY[0x2821F96F8](v4, imageName);
}

@end