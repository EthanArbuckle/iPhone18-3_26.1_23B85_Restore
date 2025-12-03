@interface HUWheelControlPopUpButton
- (HUControlViewDelegate)delegate;
- (id)_createMenu;
- (void)setValue:(id)value;
- (void)setValueFormatter:(id)formatter;
- (void)setValues:(id)values;
@end

@implementation HUWheelControlPopUpButton

- (id)_createMenu
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  objc_initWeak(&location, self);
  values = [(HUWheelControlPopUpButton *)self values];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __40__HUWheelControlPopUpButton__createMenu__block_invoke;
  v8[3] = &unk_277DBF5A0;
  objc_copyWeak(&v10, &location);
  v5 = v3;
  v9 = v5;
  [values enumerateObjectsUsingBlock:v8];

  v6 = [MEMORY[0x277D75710] menuWithTitle:&stru_2823E0EE8 children:v5];

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);

  return v6;
}

void __40__HUWheelControlPopUpButton__createMenu__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v7 = MEMORY[0x277D750C8];
  v8 = [WeakRetained valueFormatter];
  v9 = [v8 stringForObjectValue:v5];
  v15 = MEMORY[0x277D85DD0];
  v16 = 3221225472;
  v17 = __40__HUWheelControlPopUpButton__createMenu__block_invoke_2;
  v18 = &unk_277DBACC8;
  v19 = WeakRetained;
  v20 = v5;
  v10 = v5;
  v11 = [v7 actionWithTitle:v9 image:0 identifier:0 handler:&v15];

  v12 = [WeakRetained values];
  v13 = [WeakRetained value];
  v14 = [v12 indexOfObject:v13];

  [v11 setState:v14 == a3];
  [*(a1 + 32) addObject:v11];
}

void __40__HUWheelControlPopUpButton__createMenu__block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) setValue:*(a1 + 40)];
  v2 = [*(a1 + 32) _createMenu];
  [*(a1 + 32) setMenu:v2];

  v3 = [*(a1 + 32) delegate];
  [v3 controlView:*(a1 + 32) valueDidChange:*(a1 + 40)];
}

- (void)setValues:(id)values
{
  valuesCopy = values;
  if (![(NSArray *)self->_values isEqualToArray:?])
  {
    objc_storeStrong(&self->_values, values);
    _createMenu = [(HUWheelControlPopUpButton *)self _createMenu];
    [(HUWheelControlPopUpButton *)self setMenu:_createMenu];
  }
}

- (void)setValueFormatter:(id)formatter
{
  formatterCopy = formatter;
  if (([(NSFormatter *)self->_valueFormatter isEqual:?]& 1) == 0)
  {
    objc_storeStrong(&self->_valueFormatter, formatter);
    _createMenu = [(HUWheelControlPopUpButton *)self _createMenu];
    [(HUWheelControlPopUpButton *)self setMenu:_createMenu];
  }
}

- (void)setValue:(id)value
{
  valueCopy = value;
  if (valueCopy)
  {
    v10 = valueCopy;
    v6 = [self->_value isEqualToNumber:valueCopy];
    valueCopy = v10;
    if ((v6 & 1) == 0)
    {
      objc_storeStrong(&self->_value, value);
      valueFormatter = [(HUWheelControlPopUpButton *)self valueFormatter];
      v8 = [valueFormatter stringForObjectValue:v10];
      [(HUWheelControlPopUpButton *)self setTitle:v8 forState:0];

      _createMenu = [(HUWheelControlPopUpButton *)self _createMenu];
      [(HUWheelControlPopUpButton *)self setMenu:_createMenu];

      valueCopy = v10;
    }
  }
}

- (HUControlViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end