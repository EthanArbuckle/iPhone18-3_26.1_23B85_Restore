@interface DDFlightAction
- (BOOL)extractAirlineCode:(id *)code flightNumber:(int64_t *)number;
- (id)quickActionTitle;
- (id)viewController;
- (void)closePressed;
- (void)prepareViewControllerForActionController:(id)controller;
- (void)updateBarButtonItems:(id)items forViewController:(id)controller;
@end

@implementation DDFlightAction

- (void)prepareViewControllerForActionController:(id)controller
{
  v11[1] = *MEMORY[0x277D85DE8];
  v10.receiver = self;
  v10.super_class = DDFlightAction;
  controllerCopy = controller;
  [(DDAction *)&v10 prepareViewControllerForActionController:controllerCopy];
  v5 = objc_alloc(MEMORY[0x277D751E0]);
  v6 = [v5 initWithBarButtonSystemItem:0 target:self action:{sel_closePressed, v10.receiver, v10.super_class}];
  v11[0] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:1];

  topViewController = [(UINavigationController *)self->_viewController topViewController];
  [(DDFlightAction *)self updateBarButtonItems:v7 forViewController:topViewController];

  -[DDFlightAction adaptForPresentationInPopover:](self, "adaptForPresentationInPopover:", [controllerCopy isPresentingInPopover]);
  [controllerCopy action:self presentationShouldBeModal:0];

  v9 = *MEMORY[0x277D85DE8];
}

- (id)quickActionTitle
{
  v9 = 0;
  v10 = 0;
  v3 = [(DDFlightAction *)self extractAirlineCode:&v9 flightNumber:&v10];
  v4 = v9;
  if (v3)
  {
    quickActionTitle = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%ld", v4, v10];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = DDFlightAction;
    quickActionTitle = [(DDAction *)&v8 quickActionTitle];
  }

  v6 = quickActionTitle;

  return v6;
}

- (void)closePressed
{
  delegate = [(DDAction *)self delegate];
  [delegate actionDidFinish:self];
}

- (BOOL)extractAirlineCode:(id *)code flightNumber:(int64_t *)number
{
  result = [(DDAction *)self result];
  if (result)
  {
    Type = DDResultGetType();
    if (CFStringCompare(Type, *MEMORY[0x277D040D0], 0))
    {
      LOBYTE(result) = 0;
    }

    else
    {
      v8 = *MEMORY[0x277D04040];
      SubresultWithType = DDResultGetSubresultWithType();
      v10 = *MEMORY[0x277D040D8];
      v11 = DDResultGetSubresultWithType();
      if (SubresultWithType)
      {
        v19 = v11 == 0;
      }

      else
      {
        v19 = 1;
      }

      if (v19)
      {
        [(DDFlightAction *)v11 extractAirlineCode:v12 flightNumber:v13, v14, v15, v16, v17, v18, v21];
      }

      *code = DDResultGetValue();
      *number = [DDResultGetValue() integerValue];
      LOBYTE(result) = 1;
    }
  }

  return result;
}

- (id)viewController
{
  v18[1] = *MEMORY[0x277D85DE8];
  viewController = self->_viewController;
  if (!viewController)
  {
    v16 = 0;
    v17 = 0;
    [(DDFlightAction *)self extractAirlineCode:&v16 flightNumber:&v17];
    v4 = v16;
    gotLoadHelper_x8__OBJC_CLASS___FUFlightViewController(v5);
    v7 = objc_alloc(*(v6 + 2480));
    v8 = [v7 initWithFlightCode:v17 airlineCode:v4];
    v9 = objc_alloc_init(DDAutoCloseNavigationController);
    [(DDAutoCloseNavigationController *)v9 pushViewController:v8 animated:0];
    [(DDAutoCloseNavigationController *)v9 setNavigationBarHidden:0];
    [(DDAutoCloseNavigationController *)v9 setTarget:self];
    v10 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:0 target:v9 action:sel_closePressed];
    v18[0] = v10;
    v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:1];

    [(DDFlightAction *)self updateBarButtonItems:v11 forViewController:v8];
    objc_storeStrong(&self->_viewController, v9);
    currentDevice = [MEMORY[0x277D75418] currentDevice];
    userInterfaceIdiom = [currentDevice userInterfaceIdiom];

    if (userInterfaceIdiom <= 6 && ((1 << userInterfaceIdiom) & 0x62) != 0)
    {
      [(UINavigationController *)self->_viewController setModalPresentationStyle:7];
    }

    viewController = self->_viewController;
  }

  v14 = *MEMORY[0x277D85DE8];

  return viewController;
}

- (void)updateBarButtonItems:(id)items forViewController:(id)controller
{
  itemsCopy = items;
  navigationItem = [controller navigationItem];
  [navigationItem setRightBarButtonItems:itemsCopy];
}

@end