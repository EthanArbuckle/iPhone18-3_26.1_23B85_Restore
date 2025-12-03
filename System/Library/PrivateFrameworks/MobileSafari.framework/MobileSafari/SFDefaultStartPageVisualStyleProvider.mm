@interface SFDefaultStartPageVisualStyleProvider
+ (SFDefaultStartPageVisualStyleProvider)sharedProvider;
- (NSDirectionalEdgeInsets)sectionContentInsetsWithViewLayoutMargins:(NSDirectionalEdgeInsets)result;
- (UIEdgeInsets)collectionViewContentInsetsWithNavigationBarPosition:(int64_t)position traitCollection:(id)collection;
- (UIFont)sectionHeaderLargeTitleFont;
- (double)rowSpacingForSectionItemType:(int64_t)type containerSize:(CGSize)size;
- (double)siteIconSizeForContainerSize:(CGSize)size;
- (id)interItemSpacingForSectionItemType:(int64_t)type;
- (int64_t)numberOfColumnsForSectionItemType:(int64_t)type sectionWidth:(double)width traitCollection:(id)collection;
- (int64_t)numberOfRowsForSection:(int64_t)section traitCollectionIsHorizontalCompact:(BOOL)compact;
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

- (double)siteIconSizeForContainerSize:(CGSize)size
{
  width = size.width;
  if (size.width > 500.0 && size.height > 428.0)
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

- (double)rowSpacingForSectionItemType:(int64_t)type containerSize:(CGSize)size
{
  result = 20.0;
  if ((type - 2) <= 3)
  {
    return dbl_18BC3DC70[type - 2];
  }

  return result;
}

- (id)interItemSpacingForSectionItemType:(int64_t)type
{
  if ((type - 3) > 1)
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

- (UIEdgeInsets)collectionViewContentInsetsWithNavigationBarPosition:(int64_t)position traitCollection:(id)collection
{
  v4 = 20.0;
  if (position == 3)
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

- (int64_t)numberOfColumnsForSectionItemType:(int64_t)type sectionWidth:(double)width traitCollection:(id)collection
{
  preferredContentSizeCategory = [collection preferredContentSizeCategory];
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory);

  is2024FavoritesEnabled = [MEMORY[0x1E69C8880] is2024FavoritesEnabled];
  v10 = 1010.0;
  if (!is2024FavoritesEnabled)
  {
    v10 = 900.0;
  }

  if (v10 <= width)
  {
    v14 = (width / 350.0);
    v15 = 4 * v14;
    v13 = 6;
  }

  else
  {
    is2024FavoritesEnabled2 = [MEMORY[0x1E69C8880] is2024FavoritesEnabled];
    v12 = 700.0;
    if (!is2024FavoritesEnabled2)
    {
      v12 = 900.0;
    }

    if (v12 <= width)
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

    else if (width >= 500.0)
    {
      v13 = 3;
      v14 = 2;
      v15 = 6;
    }

    else
    {
      if ([MEMORY[0x1E69C8880] is2024SuggestionsEnabled])
      {
        if (width < 300.0)
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
  if (type > 3)
  {
    if (type != 4)
    {
      if (type != 5)
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
    if (type != 2)
    {
      if (type != 3)
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

- (int64_t)numberOfRowsForSection:(int64_t)section traitCollectionIsHorizontalCompact:(BOOL)compact
{
  v4 = 1;
  v5 = 2;
  if (compact)
  {
    v5 = 3;
  }

  if (section == 4)
  {
    v4 = 2;
  }

  if (section == 5)
  {
    v4 = 3;
  }

  if (section == 3)
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