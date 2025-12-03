@interface NSUserDefaults(BrowsingAssistantExtras)
- (id)browsingAssistant_favoritedMenuActions;
- (uint64_t)browsingAssistant_isMenuActionFavorited:()BrowsingAssistantExtras;
- (void)browsingAssistant_setMenuActionFavorited:()BrowsingAssistantExtras favorited:;
@end

@implementation NSUserDefaults(BrowsingAssistantExtras)

- (id)browsingAssistant_favoritedMenuActions
{
  v2 = [self objectForKey:@"SFFavoritedMenuActions"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && ![v2 safari_containsObjectPassingTest:&__block_literal_global_111])
  {
    if (([self BOOLForKey:@"SFDidMigrateAutoFillFeedbackOutOfFavoritedMenuActions"] & 1) == 0)
    {
      v4 = [v2 safari_arrayByRemovingObject:@"PageMenuActionReportAutoFillIssue"];
      [self setObject:v4 forKey:@"SFFavoritedMenuActions"];
      [self setBool:1 forKey:@"SFDidMigrateAutoFillFeedbackOutOfFavoritedMenuActions"];

      v2 = v4;
    }

    v2 = v2;
    v3 = v2;
  }

  else
  {
    [self setObject:0 forKey:@"SFFavoritedMenuActions"];
    v3 = MEMORY[0x1E695E0F0];
  }

  return v3;
}

- (uint64_t)browsingAssistant_isMenuActionFavorited:()BrowsingAssistantExtras
{
  v4 = a3;
  if (SFIsMenuActionConfigurable(v4))
  {
    browsingAssistant_favoritedMenuActions = [self browsingAssistant_favoritedMenuActions];
    v6 = [browsingAssistant_favoritedMenuActions containsObject:v4];
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
    browsingAssistant_favoritedMenuActions = [self browsingAssistant_favoritedMenuActions];
    if ([browsingAssistant_favoritedMenuActions containsObject:v8] != a4)
    {
      if (a4)
      {
        [browsingAssistant_favoritedMenuActions arrayByAddingObject:v8];
      }

      else
      {
        [browsingAssistant_favoritedMenuActions safari_arrayByRemovingObject:v8];
      }
      v7 = ;
      [self setObject:v7 forKey:@"SFFavoritedMenuActions"];
    }
  }
}

@end