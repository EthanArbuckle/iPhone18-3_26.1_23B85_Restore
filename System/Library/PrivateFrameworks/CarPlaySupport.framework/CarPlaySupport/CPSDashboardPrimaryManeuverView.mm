@interface CPSDashboardPrimaryManeuverView
+ (id)instructionsForManeuver:(id)a3;
+ (id)junctionImageForManeuver:(id)a3;
+ (id)symbolImageForManeuver:(id)a3;
@end

@implementation CPSDashboardPrimaryManeuverView

+ (id)instructionsForManeuver:(id)a3
{
  v14 = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v9 = [location[0] dashboardAttributedInstructionVariants];
  v10 = [v9 count];
  *&v3 = MEMORY[0x277D82BD8](v9).n128_u64[0];
  if (v10)
  {
    v15 = [location[0] attributedInstructionVariants];
    v12 = 1;
  }

  else
  {
    v7 = [location[0] dashboardInstructionVariants];
    v8 = [v7 count];
    *&v4 = MEMORY[0x277D82BD8](v7).n128_u64[0];
    if (v8)
    {
      v15 = [location[0] dashboardInstructionVariants];
    }

    else
    {
      v11.receiver = v14;
      v11.super_class = &OBJC_METACLASS___CPSDashboardPrimaryManeuverView;
      v15 = objc_msgSendSuper2(&v11, sel_instructionsForManeuver_, location[0], v4);
    }

    v12 = 1;
  }

  objc_storeStrong(location, 0);
  v5 = v15;

  return v5;
}

+ (id)symbolImageForManeuver:(id)a3
{
  v10 = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v6 = [location[0] dashboardSymbolImage];
  *&v3 = MEMORY[0x277D82BD8](v6).n128_u64[0];
  if (v6)
  {
    v11 = [location[0] dashboardSymbolImage];
  }

  else
  {
    v7.receiver = v10;
    v7.super_class = &OBJC_METACLASS___CPSDashboardPrimaryManeuverView;
    v11 = objc_msgSendSuper2(&v7, sel_symbolImageForManeuver_, location[0], v3);
  }

  v8 = 1;
  objc_storeStrong(location, 0);
  v4 = v11;

  return v4;
}

+ (id)junctionImageForManeuver:(id)a3
{
  v10 = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v6 = [location[0] dashboardJunctionImage];
  *&v3 = MEMORY[0x277D82BD8](v6).n128_u64[0];
  if (v6)
  {
    v11 = [location[0] dashboardJunctionImage];
  }

  else
  {
    v7.receiver = v10;
    v7.super_class = &OBJC_METACLASS___CPSDashboardPrimaryManeuverView;
    v11 = objc_msgSendSuper2(&v7, sel_junctionImageForManeuver_, location[0], v3);
  }

  v8 = 1;
  objc_storeStrong(location, 0);
  v4 = v11;

  return v4;
}

@end