@interface MUContactsViewModelGenerator
+ (id)symbolImageForAddressItem;
- (MUContactsViewModelGenerator)initWithContact:(id)a3;
- (id)headerLabelFromAddress:(id)a3;
- (id)sectionViewsFromContentViews:(id)a3 headerLabels:(id)a4;
- (id)viewModelForAddress:(id)a3;
@end

@implementation MUContactsViewModelGenerator

- (id)sectionViewsFromContentViews:(id)a3 headerLabels:(id)a4
{
  v5 = a4;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __74__MUContactsViewModelGenerator_sectionViewsFromContentViews_headerLabels___block_invoke;
  v9[3] = &unk_1E8219CE8;
  v10 = v5;
  v6 = v5;
  v7 = MUMap(a3, v9);

  return v7;
}

MUPlaceSectionView *__74__MUContactsViewModelGenerator_sectionViewsFromContentViews_headerLabels___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = a2;
  v6 = [v4 objectAtIndex:a3];
  v7 = [[MUPlaceSectionHeaderViewModel alloc] initWithTitleString:v6 showSeeMore:0];
  v8 = [[MUPlaceSectionView alloc] initWithStyle:0 sectionHeaderViewModel:v7 sectionFooterViewModel:0];
  [(MUPlaceSectionView *)v8 attachViewToContentView:v5];
  v9 = [v5 accessibilityIdentifier];

  v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@Section", v6];
  v11 = [v9 stringByAppendingString:v10];

  [(MUPlaceSectionView *)v8 setAccessibilityIdentifier:v11];
  v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@PlaceDetailsSection", v6];
  [(MUPlaceSectionView *)v8 setHeaderAXIdentifierWithBaseString:v12];

  return v8;
}

- (id)headerLabelFromAddress:(id)a3
{
  v3 = a3;
  v4 = [v3 label];
  v5 = [v4 isEqualToString:*MEMORY[0x1E695CB60]];

  if (v5)
  {
    v6 = @"Home [Placecard]";
  }

  else
  {
    v7 = [v3 label];
    v8 = [v7 isEqualToString:*MEMORY[0x1E695CBD8]];

    if (v8)
    {
      v6 = @"Work [Placecard]";
    }

    else
    {
      v9 = [v3 label];
      v10 = [v9 isEqualToString:*MEMORY[0x1E695CBC8]];

      if (v10)
      {
        v6 = @"School [Placecard]";
      }

      else
      {
        v11 = [v3 label];

        if (v11)
        {
          v12 = MEMORY[0x1E695CEE0];
          v13 = [v3 label];
          v14 = [v12 localizedStringForLabel:v13];

          if (v14)
          {
            v15 = v14;
          }

          else
          {
            v15 = _MULocalizedStringFromThisBundle(@"Other [Placecard]");
          }

          v16 = v15;

          goto LABEL_12;
        }

        v6 = @"Details [Placecard]";
      }
    }
  }

  v16 = _MULocalizedStringFromThisBundle(v6);
LABEL_12:

  return v16;
}

- (id)viewModelForAddress:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(MULabeledValueActionViewModel);
  v5 = [v3 identifier];
  v6 = [MEMORY[0x1E695CD58] _mapkit_sharedLocationContactIdentifer];
  v7 = [v5 isEqualToString:v6];

  if (v7)
  {
    v8 = @"Shared Location Address [Placecard]";
  }

  else
  {
    v8 = @"Address [Placecard]";
  }

  v9 = _MULocalizedStringFromThisBundle(v8);
  [(MULabeledValueActionViewModel *)v4 setTitleString:v9];

  v10 = MEMORY[0x1E695CF68];
  v11 = [v3 value];
  v12 = [v10 stringFromPostalAddress:v11 style:0];
  [(MULabeledValueActionViewModel *)v4 setValueString:v12];

  [(MULabeledValueActionViewModel *)v4 setAnalyticsTarget:1502];
  v13 = +[MUContactsViewModelGenerator symbolImageForAddressItem];
  [(MULabeledValueActionViewModel *)v4 setSymbolName:v13];

  return v4;
}

- (MUContactsViewModelGenerator)initWithContact:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = MUContactsViewModelGenerator;
  v6 = [(MUContactsViewModelGenerator *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_contact, a3);
  }

  return v7;
}

+ (id)symbolImageForAddressItem
{
  if (MapKitIdiomIsMacCatalyst())
  {
    v2 = @"arrow.triangle.turn.up.right.circle";
  }

  else
  {
    v2 = @"arrow.triangle.turn.up.right.circle.fill";
  }

  return v2;
}

@end