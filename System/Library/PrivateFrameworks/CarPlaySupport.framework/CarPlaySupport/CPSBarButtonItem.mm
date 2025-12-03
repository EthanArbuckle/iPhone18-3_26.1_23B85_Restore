@interface CPSBarButtonItem
- (CPSBarButtonItem)initWithCPBarButton:(id)button;
- (CPSBarButtonItem)initWithCPBarButton:(id)button type:(unint64_t)type;
- (CPSButtonDelegate)delegate;
- (void)didSelectButton:(id)button withInteractionModel:(unint64_t)model;
@end

@implementation CPSBarButtonItem

- (CPSButtonDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (CPSBarButtonItem)initWithCPBarButton:(id)button
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, button);
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v4 = 3;
  if ((isKindOfClass & 1) == 0)
  {
    v4 = 0;
  }

  v5 = selfCopy;
  selfCopy = 0;
  selfCopy = [(CPSBarButtonItem *)v5 initWithCPBarButton:location[0] type:v4];
  v7 = MEMORY[0x277D82BE0](selfCopy);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v7;
}

- (CPSBarButtonItem)initWithCPBarButton:(id)button type:(unint64_t)type
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, button);
  typeCopy = type;
  v12 = selfCopy;
  title = [location[0] title];
  image = [location[0] image];
  v4 = barButtonStyle(location[0]);
  selfCopy = 0;
  v15.receiver = v12;
  v15.super_class = CPSBarButtonItem;
  selfCopy = [(CPUIBarButtonItem *)&v15 initWithTitle:title image:image style:v4 type:type];
  objc_storeStrong(&selfCopy, selfCopy);
  MEMORY[0x277D82BD8](image);
  *&v5 = MEMORY[0x277D82BD8](title).n128_u64[0];
  if (selfCopy)
  {
    identifier = [location[0] identifier];
    cps_identifier = selfCopy->_cps_identifier;
    selfCopy->_cps_identifier = identifier;
    MEMORY[0x277D82BD8](cps_identifier);
    objc_storeStrong(&selfCopy->_barButton, location[0]);
    [(CPUIBarButtonItem *)selfCopy setCpui_delegate:selfCopy];
    isEnabled = [location[0] isEnabled];
    [(CPUIBarButtonItem *)selfCopy setEnabled:isEnabled];
  }

  v10 = MEMORY[0x277D82BE0](selfCopy);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v10;
}

- (void)didSelectButton:(id)button withInteractionModel:(unint64_t)model
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, button);
  mEMORY[0x277CF91B0] = [MEMORY[0x277CF91B0] sharedInstance];
  [mEMORY[0x277CF91B0] setLastButtonPressInteractionModel:model];
  *&v4 = MEMORY[0x277D82BD8](mEMORY[0x277CF91B0]).n128_u64[0];
  delegate = [(CPSBarButtonItem *)selfCopy delegate];
  v11 = objc_opt_respondsToSelector();
  *&v5 = MEMORY[0x277D82BD8](delegate).n128_u64[0];
  if (v11)
  {
    delegate2 = [(CPSBarButtonItem *)selfCopy delegate];
    barButton = [(CPSBarButtonItem *)selfCopy barButton];
    [(CPSButtonDelegate *)delegate2 didSelectButton:?];
    MEMORY[0x277D82BD8](barButton);
    MEMORY[0x277D82BD8](delegate2);
  }

  objc_storeStrong(location, 0);
}

@end