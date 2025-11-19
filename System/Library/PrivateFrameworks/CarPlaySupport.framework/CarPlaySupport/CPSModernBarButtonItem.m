@interface CPSModernBarButtonItem
- (CPSButtonDelegate)delegate;
- (CPSModernBarButtonItem)initWithCPBarButton:(id)a3;
- (CPSModernBarButtonItem)initWithCPBarButton:(id)a3 type:(unint64_t)a4;
- (void)didSelectButton:(id)a3 withInteractionModel:(unint64_t)a4;
@end

@implementation CPSModernBarButtonItem

- (CPSModernBarButtonItem)initWithCPBarButton:(id)a3
{
  v9 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v4 = 3;
  if ((isKindOfClass & 1) == 0)
  {
    v4 = 0;
  }

  v5 = v9;
  v9 = 0;
  v9 = [(CPSModernBarButtonItem *)v5 initWithCPBarButton:location[0] type:v4];
  v7 = MEMORY[0x277D82BE0](v9);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v9, 0);
  return v7;
}

- (CPSModernBarButtonItem)initWithCPBarButton:(id)a3 type:(unint64_t)a4
{
  v17 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v15 = a4;
  v11 = v17;
  v13 = [location[0] title];
  v12 = [location[0] image];
  v17 = 0;
  v14.receiver = v11;
  v14.super_class = CPSModernBarButtonItem;
  v17 = [CPUIModernBarButtonItem initWithTitle:sel_initWithTitle_image_type_ image:v13 type:?];
  objc_storeStrong(&v17, v17);
  MEMORY[0x277D82BD8](v12);
  *&v4 = MEMORY[0x277D82BD8](v13).n128_u64[0];
  if (v17)
  {
    v5 = [location[0] identifier];
    cps_identifier = v17->_cps_identifier;
    v17->_cps_identifier = v5;
    MEMORY[0x277D82BD8](cps_identifier);
    objc_storeStrong(&v17->_barButton, location[0]);
    [(CPUIModernBarButtonItem *)v17 setCpui_delegate:v17];
    v7 = [location[0] isEnabled];
    [(CPUIModernBarButtonItem *)v17 setEnabled:v7];
  }

  v9 = MEMORY[0x277D82BE0](v17);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v17, 0);
  return v9;
}

- (void)didSelectButton:(id)a3 withInteractionModel:(unint64_t)a4
{
  v13 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v9 = [MEMORY[0x277CF91B0] sharedInstance];
  [v9 setLastButtonPressInteractionModel:a4];
  *&v4 = MEMORY[0x277D82BD8](v9).n128_u64[0];
  v10 = [(CPSModernBarButtonItem *)v13 delegate];
  v11 = objc_opt_respondsToSelector();
  *&v5 = MEMORY[0x277D82BD8](v10).n128_u64[0];
  if (v11)
  {
    v7 = [(CPSModernBarButtonItem *)v13 delegate];
    v6 = [(CPSModernBarButtonItem *)v13 barButton];
    [(CPSButtonDelegate *)v7 didSelectButton:?];
    MEMORY[0x277D82BD8](v6);
    MEMORY[0x277D82BD8](v7);
  }

  objc_storeStrong(location, 0);
}

- (CPSButtonDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end