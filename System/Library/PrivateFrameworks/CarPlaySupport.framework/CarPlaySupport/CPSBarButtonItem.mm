@interface CPSBarButtonItem
- (CPSBarButtonItem)initWithCPBarButton:(id)a3;
- (CPSBarButtonItem)initWithCPBarButton:(id)a3 type:(unint64_t)a4;
- (CPSButtonDelegate)delegate;
- (void)didSelectButton:(id)a3 withInteractionModel:(unint64_t)a4;
@end

@implementation CPSBarButtonItem

- (CPSButtonDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (CPSBarButtonItem)initWithCPBarButton:(id)a3
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
  v9 = [(CPSBarButtonItem *)v5 initWithCPBarButton:location[0] type:v4];
  v7 = MEMORY[0x277D82BE0](v9);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v9, 0);
  return v7;
}

- (CPSBarButtonItem)initWithCPBarButton:(id)a3 type:(unint64_t)a4
{
  v18 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v16 = a4;
  v12 = v18;
  v14 = [location[0] title];
  v13 = [location[0] image];
  v4 = barButtonStyle(location[0]);
  v18 = 0;
  v15.receiver = v12;
  v15.super_class = CPSBarButtonItem;
  v18 = [(CPUIBarButtonItem *)&v15 initWithTitle:v14 image:v13 style:v4 type:a4];
  objc_storeStrong(&v18, v18);
  MEMORY[0x277D82BD8](v13);
  *&v5 = MEMORY[0x277D82BD8](v14).n128_u64[0];
  if (v18)
  {
    v6 = [location[0] identifier];
    cps_identifier = v18->_cps_identifier;
    v18->_cps_identifier = v6;
    MEMORY[0x277D82BD8](cps_identifier);
    objc_storeStrong(&v18->_barButton, location[0]);
    [(CPUIBarButtonItem *)v18 setCpui_delegate:v18];
    v8 = [location[0] isEnabled];
    [(CPUIBarButtonItem *)v18 setEnabled:v8];
  }

  v10 = MEMORY[0x277D82BE0](v18);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v18, 0);
  return v10;
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
  v10 = [(CPSBarButtonItem *)v13 delegate];
  v11 = objc_opt_respondsToSelector();
  *&v5 = MEMORY[0x277D82BD8](v10).n128_u64[0];
  if (v11)
  {
    v7 = [(CPSBarButtonItem *)v13 delegate];
    v6 = [(CPSBarButtonItem *)v13 barButton];
    [(CPSButtonDelegate *)v7 didSelectButton:?];
    MEMORY[0x277D82BD8](v6);
    MEMORY[0x277D82BD8](v7);
  }

  objc_storeStrong(location, 0);
}

@end