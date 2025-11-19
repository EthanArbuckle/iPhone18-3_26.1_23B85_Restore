@interface SFDefaultStartPageVisualStyleProvider
+ (SFDefaultStartPageVisualStyleProvider)sharedProvider;
- (NSDirectionalEdgeInsets)sectionContentInsetsWithViewLayoutMargins:(NSDirectionalEdgeInsets)result;
- (UIEdgeInsets)collectionViewContentInsetsWithNavigationBarPosition:(int64_t)a3 traitCollection:(id)a4;
- (UIFont)sectionHeaderLargeTitleFont;
- (double)rowSpacingForSectionItemType:(int64_t)a3 containerSize:(CGSize)a4;
- (double)siteIconSizeForContainerSize:(CGSize)a3;
- (id)interItemSpacingForSectionItemType:(int64_t)a3;
- (int64_t)numberOfColumnsForSectionItemType:(int64_t)a3 sectionWidth:(double)a4 traitCollection:(id)a5;
- (int64_t)numberOfRowsForSection:(int64_t)a3 traitCollectionIsHorizontalCompact:(BOOL)a4;
@end

@implementation SFDefaultStartPageVisualStyleProvider

+ (SFDefaultStartPageVisualStyleProvider)sharedProvider
{
  if (sharedProvider_onceToken != -1)
  {
    +[SFDefaultStartPageVisualStyleProvider sharedProvider];
  }

  v3 = sharedProvider_sharedProvider;

  return v3;
}

void __55__SFDefaultStartPageVisualStyleProvider_sharedProvider__block_invoke()
{
  v0 = objc_alloc_init(SFDefaultStartPageVisualStyleProvider);
  v1 = sharedProvider_sharedProvider;
  sharedProvider_sharedProvider = v0;
}

- (double)siteIconSizeForContainerSize:(CGSize)a3
{
  width = a3.width;
  if (a3.width > 500.0 && a3.height > 428.0)
  {
    goto LABEL_6;
  }

  if (deviceUsesLargeIcons_onceToken != -1)
  {
    [SFDefaultStartPageVisualStyleProvider siteIconSizeForContainerSize:];
  }

  if (deviceUsesLargeIcons_result)
  {
LABEL_6:
    v4 = 76.0;
  }

  else
  {
    v4 = 60.0;
    if (width <= 300.0)
    {
      return v4;
    }
  }

  if ([MEMORY[0x1E69C8880] is2024FavoritesEnabled])
  {
    return 72.0;
  }

  return v4;
}

- (double)rowSpacingForSectionItemType:(int64_t)a3 containerSize:(CGSize)a4
{
  result = 20.0;
  if ((a3 - 2) <= 3)
  {
    return dbl_18BC3DC70[a3 - 2];
  }

  return result;
}

- (id)interItemSpacingForSectionItemType:(int64_t)a3
{
  if ((a3 - 3) > 1)
  {
    v5 = 0;
  }

  else
  {
    v5 = [MEMORY[0x1E6995590] fixedSpacing:{8.0, v3}];
  }

  return v5;
}

- (NSDirectionalEdgeInsets)sectionContentInsetsWithViewLayoutMargins:(NSDirectionalEdgeInsets)result
{
  v3 = 0.0;
  v4 = 10.0;
  result.bottom = v4;
  result.top = v3;
  return result;
}

- (UIEdgeInsets)collectionViewContentInsetsWithNavigationBarPosition:(int64_t)a3 traitCollection:(id)a4
{
  v4 = 20.0;
  if (a3 == 3)
  {
    v4 = 4.0;
  }

  v5 = 0.0;
  v6 = 20.0;
  v7 = 0.0;
  result.right = v7;
  result.bottom = v6;
  result.left = v5;
  result.top = v4;
  return result;
}

- (int64_t)numberOfColumnsForSectionItemType:(int64_t)a3 sectionWidth:(double)a4 traitCollection:(id)a5
{
  v7 = [a5 preferredContentSizeCategory];
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(v7);

  v9 = [MEMORY[0x1E69C8880] is2024FavoritesEnabled];
  v10 = 1010.0;
  if (!v9)
  {
    v10 = 900.0;
  }

  if (v10 <= a4)
  {
    v14 = (a4 / 350.0);
    v15 = 4 * v14;
    v13 = 6;
  }

  else
  {
    v11 = [MEMORY[0x1E69C8880] is2024FavoritesEnabled];
    v12 = 700.0;
    if (!v11)
    {
      v12 = 900.0;
    }

    if (v12 <= a4)
    {
      if ([MEMORY[0x1E69C8880] is2024FavoritesEnabled])
      {
        v15 = 8;
      }

      else
      {
        v15 = 6;
      }

      v13 = 4;
      v14 = 2;
    }

    else if (a4 >= 500.0)
    {
      v13 = 3;
      v14 = 2;
      v15 = 6;
    }

    else
    {
      if ([MEMORY[0x1E69C8880] is2024SuggestionsEnabled])
      {
        if (a4 < 300.0)
        {
          v13 = 1;
        }

        else
        {
          v13 = 2;
        }
      }

      else
      {
        v13 = 2;
      }

      v14 = 1;
      v15 = 4;
    }
  }

  result = 1;
  if (a3 > 3)
  {
    if (a3 != 4)
    {
      if (a3 != 5)
      {
        return result;
      }

      return v14;
    }

    if (v13 - IsAccessibilityCategory <= 1)
    {
      return 1;
    }

    else
    {
      return v13 - IsAccessibilityCategory;
    }
  }

  else
  {
    if (a3 != 2)
    {
      if (a3 != 3)
      {
        return result;
      }

      return v14;
    }

    if (v15 - IsAccessibilityCategory <= 1)
    {
      return 1;
    }

    else
    {
      return v15 - IsAccessibilityCategory;
    }
  }
}

- (int64_t)numberOfRowsForSection:(int64_t)a3 traitCollectionIsHorizontalCompact:(BOOL)a4
{
  v4 = 1;
  v5 = 2;
  if (a4)
  {
    v5 = 3;
  }

  if (a3 == 4)
  {
    v4 = 2;
  }

  if (a3 == 5)
  {
    v4 = 3;
  }

  if (a3 == 3)
  {
    return v5;
  }

  else
  {
    return v4;
  }
}

- (UIFont)sectionHeaderLargeTitleFont
{
  v2 = [MEMORY[0x1E69DB880] preferredFontDescriptorWithTextStyle:*MEMORY[0x1E69DDD58]];
  v3 = [v2 fontDescriptorWithSymbolicTraits:2];

  v4 = MEMORY[0x1E69DB878];
  [v3 pointSize];
  v5 = [v4 fontWithDescriptor:v3 size:?];

  return v5;
}

@end