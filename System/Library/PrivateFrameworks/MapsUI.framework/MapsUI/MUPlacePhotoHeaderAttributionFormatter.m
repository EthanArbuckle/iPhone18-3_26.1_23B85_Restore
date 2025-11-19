@interface MUPlacePhotoHeaderAttributionFormatter
+ (id)formattedHeaderStringForPhotoAttributions:(id)a3;
- (id)formattedHeaderStringForAttributionItems:(id)a3;
@end

@implementation MUPlacePhotoHeaderAttributionFormatter

- (id)formattedHeaderStringForAttributionItems:(id)a3
{
  v28 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v6 = v3;
  v7 = [v6 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v24;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v24 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v23 + 1) + 8 * i);
        v12 = [v11 visibility];
        v13 = v4;
        if (v12)
        {
          if (v12 != 1)
          {
            continue;
          }

          v13 = v5;
        }

        [v13 addObject:v11];
      }

      v8 = [v6 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v8);
  }

  v14 = MUMap(v4, &__block_literal_global_13566);
  if ([v14 count])
  {
    v15 = [v14 sortedArrayUsingComparator:&__block_literal_global_23];
    v16 = [v15 mutableCopy];

    if ([v5 count])
    {
      v17 = _MULocalizedStringFromThisBundle(@"Others [Generic vendor attribution]");
      [v16 addObject:v17];
    }

    v18 = objc_alloc_init(MEMORY[0x1E696AD08]);
    v19 = [v16 copy];
    v20 = [v18 stringFromItems:v19];
  }

  else
  {
    v20 = 0;
  }

  v21 = *MEMORY[0x1E69E9840];

  return v20;
}

id __83__MUPlacePhotoHeaderAttributionFormatter_formattedHeaderStringForAttributionItems___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 displayName];
  v4 = [v3 length];

  if (v4)
  {
    v5 = [v2 displayName];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)formattedHeaderStringForPhotoAttributions:(id)a3
{
  v3 = MUMap(a3, &__block_literal_global_39);
  v4 = objc_alloc_init(MUPlacePhotoHeaderAttributionFormatter);
  v5 = [(MUPlacePhotoHeaderAttributionFormatter *)v4 formattedHeaderStringForAttributionItems:v3];

  return v5;
}

MUPlacePhotoHeaderAttributionItem *__112__MUPlacePhotoHeaderAttributionFormatter_MKMapItemAttributionExtras__formattedHeaderStringForPhotoAttributions___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 requiresAttributionInPhotoViewerHeader];
  v4 = [MUPlacePhotoHeaderAttributionItem alloc];
  v5 = [v2 captionDisplayName];

  v6 = [(MUPlacePhotoHeaderAttributionItem *)v4 initWithDisplayName:v5 visibility:v3 ^ 1u];

  return v6;
}

@end