@interface CPSDashboardSecondaryManeuverView
- (CPSDashboardSecondaryManeuverView)initWithManeuver:(id)a3;
@end

@implementation CPSDashboardSecondaryManeuverView

- (CPSDashboardSecondaryManeuverView)initWithManeuver:(id)a3
{
  v10 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = v10;
  v10 = 0;
  v8.receiver = v3;
  v8.super_class = CPSDashboardSecondaryManeuverView;
  v10 = [(CPSSecondaryManeuverView *)&v8 initWithManeuver:location[0]];
  objc_storeStrong(&v10, v10);
  if (v10)
  {
    v6 = v10;
    v7 = [MEMORY[0x277D75348] _carSystemQuaternaryColor];
    [(CPSDashboardSecondaryManeuverView *)v6 setBackgroundColor:?];
    MEMORY[0x277D82BD8](v7);
  }

  v5 = MEMORY[0x277D82BE0](v10);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v10, 0);
  return v5;
}

@end