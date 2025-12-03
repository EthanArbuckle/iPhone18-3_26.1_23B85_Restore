@interface CFXFilterEffectContentDataSource
- (CFXFilterEffectContentDataSource)initWithEffectID:(id)d;
@end

@implementation CFXFilterEffectContentDataSource

- (CFXFilterEffectContentDataSource)initWithEffectID:(id)d
{
  v54 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v52.receiver = self;
  v52.super_class = CFXFilterEffectContentDataSource;
  v5 = [(CFXFilterEffectContentDataSource *)&v52 init];
  if (!v5)
  {
LABEL_25:
    v22 = v5;
    goto LABEL_26;
  }

  jfxBundle = [MEMORY[0x277CCA8D8] jfxBundle];
  v7 = MEMORY[0x277CBEAC0];
  v8 = [jfxBundle pathForResource:kJFXEffectPropertiesResourceFile ofType:kJFXEffectPropertiesPlistKey];
  v9 = [v7 dictionaryWithContentsOfFile:v8];

  v10 = [v9 objectForKey:@"Filters"];
  v11 = v10;
  if (v10 && [v10 count])
  {
    firstObject = [v11 firstObject];
    v13 = [firstObject objectForKey:@"effects"];
    if (v13)
    {
      v45 = firstObject;
      v46 = v9;
      v47 = jfxBundle;
      v50 = 0u;
      v51 = 0u;
      v48 = 0u;
      v49 = 0u;
      v14 = v13;
      v15 = [v14 countByEnumeratingWithState:&v48 objects:v53 count:16];
      if (v15)
      {
        v16 = v15;
        v17 = *v49;
LABEL_7:
        v18 = 0;
        while (1)
        {
          if (*v49 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = *(*(&v48 + 1) + 8 * v18);
          v20 = [v19 objectForKey:@"identifier"];
          if ([v20 isEqualToString:dCopy])
          {
            break;
          }

          if (v16 == ++v18)
          {
            v16 = [v14 countByEnumeratingWithState:&v48 objects:v53 count:16];
            if (v16)
            {
              goto LABEL_7;
            }

            goto LABEL_13;
          }
        }

        v21 = v19;

        if (!v21 || [v21 count] < 3)
        {
          goto LABEL_16;
        }

        v5->_isContentAvailable = 0;
        contentVersion = v5->_contentVersion;
        v5->_contentAvailability = 0;
        v5->_contentVersion = @"nodatasource";

        requiredProVideoVersion = v5->_requiredProVideoVersion;
        v5->_requiredProVideoVersion = 0;

        v5->_isContentNew = 0;
        v25 = [dCopy stringByAppendingString:@"_Display Name"];
        jfxBundle2 = [MEMORY[0x277CCA8D8] jfxBundle];
        v44 = v25;
        v27 = [jfxBundle2 localizedStringForKey:v25 value:&stru_28553D028 table:0];

        localizedDisplayName = v5->_localizedDisplayName;
        v5->_localizedDisplayName = v27;

        v29 = [dCopy stringByAppendingString:@"_Accessibility Name"];
        jfxBundle3 = [MEMORY[0x277CCA8D8] jfxBundle];
        v31 = [jfxBundle3 localizedStringForKey:v29 value:&stru_28553D028 table:0];

        v42 = v31;
        objc_storeStrong(&v5->_localizedAccessibilityName, v31);
        v32 = [v21 objectForKey:@"isExpensive"];
        isExpensive = v5->_isExpensive;
        v5->_isExpensive = v32;

        v34 = [v21 objectForKey:@"proxyRenderScale"];
        proxyRenderScale = v5->_proxyRenderScale;
        v5->_proxyRenderScale = v34;

        v36 = [v21 objectForKey:@"isStyleTransfer"];
        v37 = v36;
        if (v36)
        {
          LOBYTE(v36) = [v36 BOOLValue];
        }

        v5->_isStyleTransfer = v36;
        v38 = [v21 objectForKey:{*MEMORY[0x277D41A40], v42}];
        v39 = v38;
        if (v38)
        {
          intValue = [v38 intValue];
        }

        else
        {
          intValue = 2;
        }

        v5->_inverseToneMapOperator = intValue;

        goto LABEL_25;
      }

LABEL_13:

      v21 = 0;
LABEL_16:
      v9 = v46;
      jfxBundle = v47;
      firstObject = v45;
    }
  }

  v22 = 0;
LABEL_26:

  return v22;
}

@end