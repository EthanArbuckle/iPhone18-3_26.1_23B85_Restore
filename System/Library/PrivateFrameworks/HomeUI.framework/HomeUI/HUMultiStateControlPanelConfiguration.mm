@interface HUMultiStateControlPanelConfiguration
- (HUControlPanelRule)rule;
- (void)setupControlsForCell:(id)a3 item:(id)a4;
@end

@implementation HUMultiStateControlPanelConfiguration

- (HUControlPanelRule)rule
{
  v2 = objc_opt_class();

  return [HUControlPanelClassRule ruleWithControlItemClass:v2];
}

- (void)setupControlsForCell:(id)a3 item:(id)a4
{
  v52 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = objc_opt_class();
  v8 = v5;
  if (!v8)
  {
    goto LABEL_7;
  }

  if (objc_opt_isKindOfClass())
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;
  v11 = v8;
  if (!v10)
  {
    v12 = [MEMORY[0x277CCA890] currentHandler];
    v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"id  _Nullable NAAssertCast(Class  _Nonnull __unsafe_unretained, id  _Nonnull __strong)"}];
    [v12 handleFailureInFunction:v13 file:@"NSObject+NAAdditions.h" lineNumber:54 description:{@"Expected class of %@ but was %@", v7, objc_opt_class()}];

LABEL_7:
    v11 = 0;
  }

  v40 = v11;

  v14 = objc_opt_class();
  v15 = [v6 controlItems];
  v16 = [v15 anyObject];
  v41 = v8;
  if (!v16)
  {
LABEL_14:
    v18 = 0;
    goto LABEL_15;
  }

  if (objc_opt_isKindOfClass())
  {
    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  v18 = v16;
  if (!v17)
  {
    v19 = [MEMORY[0x277CCA890] currentHandler];
    v20 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"id  _Nullable NAAssertCast(Class  _Nonnull __unsafe_unretained, id  _Nonnull __strong)"}];
    [v19 handleFailureInFunction:v20 file:@"NSObject+NAAdditions.h" lineNumber:54 description:{@"Expected class of %@ but was %@", v14, objc_opt_class()}];

    goto LABEL_14;
  }

LABEL_15:

  v21 = objc_alloc_init(HUMultiStateControlView);
  v42 = v6;
  v22 = v6;
  v23 = v21;
  v24 = [v22 identifierForControlItem:v18];
  [(HUMultiStateControlView *)v23 setIdentifier:v24];

  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  v25 = [v18 possibleValueSet];
  v26 = [v25 sortedValues];

  obj = v26;
  v27 = [v26 countByEnumeratingWithState:&v47 objects:v51 count:16];
  if (v27)
  {
    v28 = v27;
    v46 = *v48;
    v29 = *MEMORY[0x277D13F60];
    v30 = *MEMORY[0x277D13E88];
    v43 = v18;
    v44 = v23;
    do
    {
      for (i = 0; i != v28; ++i)
      {
        if (*v48 != v46)
        {
          objc_enumerationMutation(obj);
        }

        v32 = *(*(&v47 + 1) + 8 * i);
        v33 = [v18 possibleValueSet];
        v34 = [v33 displayResultsForValue:v32];

        v35 = [v34 objectForKeyedSubscript:v29];
        v36 = [v34 objectForKeyedSubscript:v30];
        v37 = v36;
        if (v35)
        {
          [(HUMultiStateControlView *)v23 addPossibleValue:v32 withTitle:v35];
        }

        else if (v36 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
        {
          v38 = [v37 imageIdentifier];
          v39 = HUImageNamed(v38);
          if (v39)
          {
            [(HUMultiStateControlView *)v44 addPossibleValue:v32 withImage:v39];
          }

          else
          {
            NSLog(&cfstr_MultiStateCont.isa, v43, v32);
          }

          v18 = v43;
          v23 = v44;
        }

        else
        {
          NSLog(&cfstr_MultiStateCont_0.isa, v18, v32);
        }
      }

      v28 = [obj countByEnumeratingWithState:&v47 objects:v51 count:16];
    }

    while (v28);
  }

  [v40 setControlView:v23];
}

@end