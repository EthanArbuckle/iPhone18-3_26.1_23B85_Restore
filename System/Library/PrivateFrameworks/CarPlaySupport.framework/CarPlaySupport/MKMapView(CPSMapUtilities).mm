@interface MKMapView(CPSMapUtilities)
- (void)_CPS_setCamera:()CPSMapUtilities animated:completionBlock:;
@end

@implementation MKMapView(CPSMapUtilities)

- (void)_CPS_setCamera:()CPSMapUtilities animated:completionBlock:
{
  v23 = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, obj);
  v21 = a4;
  v20 = 0;
  objc_storeStrong(&v20, a5);
  if (v21)
  {
    v19[1] = 0x3FED1EB851EB851FLL;
    LODWORD(v5) = 2.0;
    LODWORD(v6) = 1133903872;
    LODWORD(v7) = 1137180672;
    [v23 setCamera:location[0] duration:&__block_literal_global_9 springMass:0.91 springStiffness:v5 springDamping:v6 springVelocity:v7 completionHandler:0.0];
    when = dispatch_time(0, (0.91 * 1000000000.0));
    v9 = MEMORY[0x277D85CD0];
    v8 = MEMORY[0x277D85CD0];
    queue = v9;
    v14 = MEMORY[0x277D85DD0];
    v15 = -1073741824;
    v16 = 0;
    v17 = __70__MKMapView_CPSMapUtilities___CPS_setCamera_animated_completionBlock___block_invoke_2;
    v18 = &unk_278D935E8;
    v19[0] = MEMORY[0x277D82BE0](v20);
    dispatch_after(when, queue, &v14);
    MEMORY[0x277D82BD8](queue);
    objc_storeStrong(v19, 0);
  }

  else
  {
    [v23 setCamera:location[0] animated:0];
    if (v20)
    {
      (*(v20 + 2))();
    }
  }

  objc_storeStrong(&v20, 0);
  objc_storeStrong(location, 0);
}

@end