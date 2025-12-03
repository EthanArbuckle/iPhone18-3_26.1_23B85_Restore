@interface MUContactsViewModelGenerator
+ (id)symbolImageForAddressItem;
- (MUContactsViewModelGenerator)initWithContact:(id)contact;
- (id)headerLabelFromAddress:(id)address;
- (id)sectionViewsFromContentViews:(id)views headerLabels:(id)labels;
- (id)viewModelForAddress:(id)address;
@end

@implementation MUContactsViewModelGenerator

- (id)sectionViewsFromContentViews:(id)views headerLabels:(id)labels
{
  labelsCopy = labels;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __74__MUContactsViewModelGenerator_sectionViewsFromContentViews_headerLabels___block_invoke;
  v9[3] = &unk_1E8219CE8;
  v10 = labelsCopy;
  v6 = labelsCopy;
  v7 = MUMap(views, v9);

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

- (id)headerLabelFromAddress:(id)address
{
  addressCopy = address;
  label = [addressCopy label];
  v5 = [label isEqualToString:*MEMORY[0x1E695CB60]];

  if (v5)
  {
    v6 = @"Home [Placecard]";
  }

  else
  {
    label2 = [addressCopy label];
    v8 = [label2 isEqualToString:*MEMORY[0x1E695CBD8]];

    if (v8)
    {
      v6 = @"Work [Placecard]";
    }

    else
    {
      label3 = [addressCopy label];
      v10 = [label3 isEqualToString:*MEMORY[0x1E695CBC8]];

      if (v10)
      {
        v6 = @"School [Placecard]";
      }

      else
      {
        label4 = [addressCopy label];

        if (label4)
        {
          v12 = MEMORY[0x1E695CEE0];
          label5 = [addressCopy label];
          v14 = [v12 localizedStringForLabel:label5];

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

- (id)viewModelForAddress:(id)address
{
  addressCopy = address;
  v4 = objc_alloc_init(MULabeledValueActionViewModel);
  identifier = [addressCopy identifier];
  _mapkit_sharedLocationContactIdentifer = [MEMORY[0x1E695CD58] _mapkit_sharedLocationContactIdentifer];
  v7 = [identifier isEqualToString:_mapkit_sharedLocationContactIdentifer];

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
  value = [addressCopy value];
  v12 = [v10 stringFromPostalAddress:value style:0];
  [(MULabeledValueActionViewModel *)v4 setValueString:v12];

  [(MULabeledValueActionViewModel *)v4 setAnalyticsTarget:1502];
  v13 = +[MUContactsViewModelGenerator symbolImageForAddressItem];
  [(MULabeledValueActionViewModel *)v4 setSymbolName:v13];

  return v4;
}

- (MUContactsViewModelGenerator)initWithContact:(id)contact
{
  contactCopy = contact;
  v9.receiver = self;
  v9.super_class = MUContactsViewModelGenerator;
  v6 = [(MUContactsViewModelGenerator *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_contact, contact);
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