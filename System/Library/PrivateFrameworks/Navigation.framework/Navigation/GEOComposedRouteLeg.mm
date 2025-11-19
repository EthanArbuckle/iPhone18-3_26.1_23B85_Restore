@interface GEOComposedRouteLeg
@end

@implementation GEOComposedRouteLeg

void __104__GEOComposedRouteLeg_MNExtras__waypointSubstitutedComposedStringForString_waypoint_useWaypointAddress___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 type] == 18)
  {
    if (*(a1 + 40))
    {
      v4 = 7;
    }

    else
    {
      v4 = [*(a1 + 32) waypointCategory];
    }

    v5 = [v3 substitutionFormat];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __104__GEOComposedRouteLeg_MNExtras__waypointSubstitutedComposedStringForString_waypoint_useWaypointAddress___block_invoke_2;
    v6[3] = &unk_1E8430C20;
    v8 = *(a1 + 40);
    v7 = *(a1 + 32);
    [v5 setSubstitutionForWaypointCategory:v4 handler:v6];
  }
}

id __104__GEOComposedRouteLeg_MNExtras__waypointSubstitutedComposedStringForString_waypoint_useWaypointAddress___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  if (*(a1 + 40))
  {
    [v7 navDisplayAddress];
  }

  else
  {
    [v7 bestDisplayName:0];
  }
  v8 = ;
  if (v8)
  {
    v9 = [v6 firstObject];
    v10 = [v9 stringFormat];
    [v10 setOverrideValue:v8];

    v11 = v5;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

@end