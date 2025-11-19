@interface NSUserDefaults(BrowsingAssistantExtras)
- (id)browsingAssistant_favoritedMenuActions;
- (uint64_t)browsingAssistant_isMenuActionFavorited:()BrowsingAssistantExtras;
- (void)browsingAssistant_setMenuActionFavorited:()BrowsingAssistantExtras favorited:;
@end

@implementation NSUserDefaults(BrowsingAssistantExtras)

- (id)browsingAssistant_favoritedMenuActions
{
  v2 = [a1 objectForKey:@"SFFavoritedMenuActions"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && ![v2 safari_containsObjectPassingTest:&__block_literal_global_111])
  {
    if (([a1 BOOLForKey:@"SFDidMigrateAutoFillFeedbackOutOfFavoritedMenuActions"] & 1) == 0)
    {
      v4 = [v2 safari_arrayByRemovingObject:@"PageMenuActionReportAutoFillIssue"];
      [a1 setObject:v4 forKey:@"SFFavoritedMenuActions"];
      [a1 setBool:1 forKey:@"SFDidMigrateAutoFillFeedbackOutOfFavoritedMenuActions"];

      v2 = v4;
    }

    v2 = v2;
    v3 = v2;
  }

  else
  {
    [a1 setObject:0 forKey:@"SFFavoritedMenuActions"];
    v3 = MEMORY[0x1E695E0F0];
  }

  return v3;
}

- (uint64_t)browsingAssistant_isMenuActionFavorited:()BrowsingAssistantExtras
{
  v4 = a3;
  if (SFIsMenuActionConfigurable(v4))
  {
    v5 = [a1 browsingAssistant_favoritedMenuActions];
    v6 = [v5 containsObject:v4];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)browsingAssistant_setMenuActionFavorited:()BrowsingAssistantExtras favorited:
{
  v8 = a3;
  if (SFIsMenuActionConfigurable(v8))
  {
    v6 = [a1 browsingAssistant_favoritedMenuActions];
    if ([v6 containsObject:v8] != a4)
    {
      if (a4)
      {
        [v6 arrayByAddingObject:v8];
      }

      else
      {
        [v6 safari_arrayByRemovingObject:v8];
      }
      v7 = ;
      [a1 setObject:v7 forKey:@"SFFavoritedMenuActions"];
    }
  }
}

@end