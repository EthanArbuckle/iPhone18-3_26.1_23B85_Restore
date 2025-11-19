@interface SFStartPageCustomizationCell
- (SFStartPageCustomizationCell)initWithFrame:(CGRect)a3;
- (SFStartPageCustomizationCellDelegate)delegate;
- (void)setAccessories:(id)a3;
- (void)setOn:(BOOL)a3;
- (void)valueDidChange:(id)a3;
@end

@implementation SFStartPageCustomizationCell

- (SFStartPageCustomizationCell)initWithFrame:(CGRect)a3
{
  v8.receiver = self;
  v8.super_class = SFStartPageCustomizationCell;
  v3 = [(SFStartPageCustomizationCell *)&v8 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
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

- (void)setOn:(BOOL)a3
{
  v3 = a3;
  v4 = self->_switch;
  v5 = [MEMORY[0x1E69DD250] areAnimationsEnabled];

  [(UISwitch *)v4 setOn:v3 animated:v5];
}

- (void)setAccessories:(id)a3
{
  v4 = a3;
  v5 = [v4 mutableCopy];
  v6 = [v4 count];

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

- (void)valueDidChange:(id)a3
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