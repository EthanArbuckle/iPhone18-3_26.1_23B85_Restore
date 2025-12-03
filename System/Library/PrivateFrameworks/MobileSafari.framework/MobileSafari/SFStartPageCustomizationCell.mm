@interface SFStartPageCustomizationCell
- (SFStartPageCustomizationCell)initWithFrame:(CGRect)frame;
- (SFStartPageCustomizationCellDelegate)delegate;
- (void)setAccessories:(id)accessories;
- (void)setOn:(BOOL)on;
- (void)valueDidChange:(id)change;
@end

@implementation SFStartPageCustomizationCell

- (SFStartPageCustomizationCell)initWithFrame:(CGRect)frame
{
  v8.receiver = self;
  v8.super_class = SFStartPageCustomizationCell;
  v3 = [(SFStartPageCustomizationCell *)&v8 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x1E69DCFD0]);
    v5 = v3->_switch;
    v3->_switch = v4;

    [(UISwitch *)v3->_switch addTarget:v3 action:sel_valueDidChange_ forControlEvents:4096];
    [(SFStartPageCustomizationCell *)v3 setAccessories:MEMORY[0x1E695E0F0]];
    v6 = v3;
  }

  return v3;
}

- (void)setOn:(BOOL)on
{
  onCopy = on;
  v4 = self->_switch;
  areAnimationsEnabled = [MEMORY[0x1E69DD250] areAnimationsEnabled];

  [(UISwitch *)v4 setOn:onCopy animated:areAnimationsEnabled];
}

- (void)setAccessories:(id)accessories
{
  accessoriesCopy = accessories;
  v5 = [accessoriesCopy mutableCopy];
  v6 = [accessoriesCopy count];

  if (v6)
  {
    v7 = 12.0;
  }

  else
  {
    v7 = 0.0;
  }

  v8 = [objc_alloc(MEMORY[0x1E69DC790]) sf_initWithCustomView:self->_switch placement:1 trailingPadding:v7];
  [v5 insertObject:v8 atIndex:0];
  v9.receiver = self;
  v9.super_class = SFStartPageCustomizationCell;
  [(SFStartPageCustomizationCell *)&v9 setAccessories:v5];
}

- (void)valueDidChange:(id)change
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained startPageCustomizationCellDidChangeValue:self];
  }
}

- (SFStartPageCustomizationCellDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end