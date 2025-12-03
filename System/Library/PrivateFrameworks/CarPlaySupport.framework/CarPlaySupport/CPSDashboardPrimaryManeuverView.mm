@interface CPSDashboardPrimaryManeuverView
+ (id)instructionsForManeuver:(id)maneuver;
+ (id)junctionImageForManeuver:(id)maneuver;
+ (id)symbolImageForManeuver:(id)maneuver;
@end

@implementation CPSDashboardPrimaryManeuverView

+ (id)instructionsForManeuver:(id)maneuver
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, maneuver);
  dashboardAttributedInstructionVariants = [location[0] dashboardAttributedInstructionVariants];
  v10 = [dashboardAttributedInstructionVariants count];
  *&v3 = MEMORY[0x277D82BD8](dashboardAttributedInstructionVariants).n128_u64[0];
  if (v10)
  {
    attributedInstructionVariants = [location[0] attributedInstructionVariants];
    v12 = 1;
  }

  else
  {
    dashboardInstructionVariants = [location[0] dashboardInstructionVariants];
    v8 = [dashboardInstructionVariants count];
    *&v4 = MEMORY[0x277D82BD8](dashboardInstructionVariants).n128_u64[0];
    if (v8)
    {
      attributedInstructionVariants = [location[0] dashboardInstructionVariants];
    }

    else
    {
      v11.receiver = selfCopy;
      v11.super_class = &OBJC_METACLASS___CPSDashboardPrimaryManeuverView;
      attributedInstructionVariants = objc_msgSendSuper2(&v11, sel_instructionsForManeuver_, location[0], v4);
    }

    v12 = 1;
  }

  objc_storeStrong(location, 0);
  v5 = attributedInstructionVariants;

  return v5;
}

+ (id)symbolImageForManeuver:(id)maneuver
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, maneuver);
  dashboardSymbolImage = [location[0] dashboardSymbolImage];
  *&v3 = MEMORY[0x277D82BD8](dashboardSymbolImage).n128_u64[0];
  if (dashboardSymbolImage)
  {
    dashboardSymbolImage2 = [location[0] dashboardSymbolImage];
  }

  else
  {
    v7.receiver = selfCopy;
    v7.super_class = &OBJC_METACLASS___CPSDashboardPrimaryManeuverView;
    dashboardSymbolImage2 = objc_msgSendSuper2(&v7, sel_symbolImageForManeuver_, location[0], v3);
  }

  v8 = 1;
  objc_storeStrong(location, 0);
  v4 = dashboardSymbolImage2;

  return v4;
}

+ (id)junctionImageForManeuver:(id)maneuver
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, maneuver);
  dashboardJunctionImage = [location[0] dashboardJunctionImage];
  *&v3 = MEMORY[0x277D82BD8](dashboardJunctionImage).n128_u64[0];
  if (dashboardJunctionImage)
  {
    dashboardJunctionImage2 = [location[0] dashboardJunctionImage];
  }

  else
  {
    v7.receiver = selfCopy;
    v7.super_class = &OBJC_METACLASS___CPSDashboardPrimaryManeuverView;
    dashboardJunctionImage2 = objc_msgSendSuper2(&v7, sel_junctionImageForManeuver_, location[0], v3);
  }

  v8 = 1;
  objc_storeStrong(location, 0);
  v4 = dashboardJunctionImage2;

  return v4;
}

@end