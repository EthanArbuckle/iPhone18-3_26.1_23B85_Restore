@interface CPSDashboardSecondaryManeuverView
- (CPSDashboardSecondaryManeuverView)initWithManeuver:(id)maneuver;
@end

@implementation CPSDashboardSecondaryManeuverView

- (CPSDashboardSecondaryManeuverView)initWithManeuver:(id)maneuver
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, maneuver);
  v3 = selfCopy;
  selfCopy = 0;
  v8.receiver = v3;
  v8.super_class = CPSDashboardSecondaryManeuverView;
  selfCopy = [(CPSSecondaryManeuverView *)&v8 initWithManeuver:location[0]];
  objc_storeStrong(&selfCopy, selfCopy);
  if (selfCopy)
  {
    v6 = selfCopy;
    _carSystemQuaternaryColor = [MEMORY[0x277D75348] _carSystemQuaternaryColor];
    [(CPSDashboardSecondaryManeuverView *)v6 setBackgroundColor:?];
    MEMORY[0x277D82BD8](_carSystemQuaternaryColor);
  }

  v5 = MEMORY[0x277D82BE0](selfCopy);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v5;
}

@end