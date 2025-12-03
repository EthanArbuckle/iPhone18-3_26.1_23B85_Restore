@interface NSAttributedString(MobileSafariFrameworkExtras)
+ (id)safari_richListOfLinksForTabs:()MobileSafariFrameworkExtras includingBulletForSingleLink:;
@end

@implementation NSAttributedString(MobileSafariFrameworkExtras)

+ (id)safari_richListOfLinksForTabs:()MobileSafariFrameworkExtras includingBulletForSingleLink:
{
  v39[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [MEMORY[0x1E69E20D8] linkCountForTabs:v5];
  if (v6)
  {
    v7 = v6;
    v31 = objc_alloc_init(MEMORY[0x1E696AD40]);
    v38 = *MEMORY[0x1E69DB688];
    v8 = objc_alloc_init(MEMORY[0x1E69DB7C8]);
    v9 = objc_alloc(MEMORY[0x1E69DB838]);
    v10 = [v9 initWithMarkerFormat:*MEMORY[0x1E69DB718] options:0];
    v37 = v10;
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v37 count:1];
    [v8 setTextLists:v11];

    v39[0] = v8;
    v29 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v39 forKeys:&v38 count:1];

    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v28 = v5;
    obj = v5;
    v12 = [obj countByEnumeratingWithState:&v32 objects:v36 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v33;
      if (v7 == 1)
      {
        v15 = a4;
      }

      else
      {
        v15 = 1;
      }

      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v33 != v14)
          {
            objc_enumerationMutation(obj);
          }

          v17 = *(*(&v32 + 1) + 8 * i);
          v18 = [v17 url];
          if (v18)
          {
            title = [v17 title];
            if ([title length])
            {
              safari_userVisibleHostWithoutWWWSubdomain = title;
            }

            else
            {
              safari_userVisibleHostWithoutWWWSubdomain = [v18 safari_userVisibleHostWithoutWWWSubdomain];
            }

            v21 = safari_userVisibleHostWithoutWWWSubdomain;
            v22 = MEMORY[0x1E696AAB0];
            absoluteString = [v18 absoluteString];
            v24 = [v22 safari_attributedStringWithLinkText:v21 linkUrl:absoluteString extraTitle:0];
            v25 = [v24 mutableCopy];

            if (v15)
            {
              [v25 addAttributes:v29 range:{0, objc_msgSend(v21, "length")}];
            }

            [v31 appendAttributedString:v25];
          }
        }

        v13 = [obj countByEnumeratingWithState:&v32 objects:v36 count:16];
      }

      while (v13);
    }

    v26 = [v31 copy];
    v5 = v28;
  }

  else
  {
    v26 = 0;
  }

  return v26;
}

@end