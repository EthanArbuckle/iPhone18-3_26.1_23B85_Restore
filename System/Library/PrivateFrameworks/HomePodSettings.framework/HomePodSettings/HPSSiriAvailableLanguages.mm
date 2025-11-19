@interface HPSSiriAvailableLanguages
+ (id)valueClasses;
- (HPSSiriAvailableLanguages)initWithCoder:(id)a3;
@end

@implementation HPSSiriAvailableLanguages

- (HPSSiriAvailableLanguages)initWithCoder:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v19.receiver = self;
  v19.super_class = HPSSiriAvailableLanguages;
  v3 = [(HPSSetting *)&v19 initWithCoder:a3];
  if (v3)
  {
    objc_opt_class();
    v4 = [(HPSSetting *)v3 value];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if ((isKindOfClass & 1) == 0)
    {
LABEL_14:
      v12 = 0;
      goto LABEL_15;
    }

    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v6 = [(HPSSiriAvailableLanguages *)v3 languages];
    v7 = [v6 countByEnumeratingWithState:&v15 objects:v20 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v16;
      while (2)
      {
        v10 = 0;
        do
        {
          if (*v16 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v15 + 1) + 8 * v10);
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {

            goto LABEL_14;
          }

          ++v10;
        }

        while (v8 != v10);
        v8 = [v6 countByEnumeratingWithState:&v15 objects:v20 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }
    }
  }

  v12 = v3;
LABEL_15:

  v13 = *MEMORY[0x277D85DE8];
  return v12;
}

+ (id)valueClasses
{
  v2 = MEMORY[0x277CBEB98];
  v3 = objc_opt_class();
  return [v2 setWithObjects:{v3, objc_opt_class(), 0}];
}

@end