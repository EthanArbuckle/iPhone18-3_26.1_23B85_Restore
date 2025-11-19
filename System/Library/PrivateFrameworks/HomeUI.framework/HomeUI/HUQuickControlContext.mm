@interface HUQuickControlContext
- (Class)viewProfileClass;
- (HUQuickControlContext)initWithQuickControlClass:(Class)a3 controlItems:(id)a4 home:(id)a5 itemUpdater:(id)a6;
- (HUQuickControlItemUpdating)itemUpdater;
- (id)affectedCharacteristics;
@end

@implementation HUQuickControlContext

- (HUQuickControlContext)initWithQuickControlClass:(Class)a3 controlItems:(id)a4 home:(id)a5 itemUpdater:(id)a6
{
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v17.receiver = self;
  v17.super_class = HUQuickControlContext;
  v14 = [(HUQuickControlContext *)&v17 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_quickControlClass, a3);
    objc_storeStrong(&v15->_controlItems, a4);
    objc_storeStrong(&v15->_home, a5);
    objc_storeWeak(&v15->_itemUpdater, v13);
  }

  return v15;
}

- (id)affectedCharacteristics
{
  v2 = [(HUQuickControlContext *)self controlItems];
  v3 = [v2 na_flatMap:&__block_literal_global_277];

  return v3;
}

id __48__HUQuickControlContext_affectedCharacteristics__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 characteristicOptions];
  v4 = [v3 objectForKeyedSubscript:&unk_282492540];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __48__HUQuickControlContext_affectedCharacteristics__block_invoke_2;
  v8[3] = &unk_277DB73C0;
  v9 = v2;
  v5 = v2;
  v6 = [v4 na_flatMap:v8];

  return v6;
}

id __48__HUQuickControlContext_affectedCharacteristics__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 valueSource];
  v5 = [v4 allCharacteristicsForCharacteristicType:v3];

  return v5;
}

- (Class)viewProfileClass
{
  if ([(objc_class *)[(HUQuickControlContext *)self quickControlClass] isEqual:objc_opt_class()]|| [(objc_class *)[(HUQuickControlContext *)self quickControlClass] isEqual:objc_opt_class()]|| [(objc_class *)[(HUQuickControlContext *)self quickControlClass] isEqual:objc_opt_class()])
  {
    goto LABEL_4;
  }

  if ([(objc_class *)[(HUQuickControlContext *)self quickControlClass] isEqual:objc_opt_class()])
  {
    objc_opt_class();
    v5 = [(HUQuickControlContext *)self controlItems];
    v6 = [v5 allObjects];
    v7 = [v6 firstObject];
    if (objc_opt_isKindOfClass())
    {
      v8 = v7;
    }

    else
    {
      v8 = 0;
    }

    v9 = v8;

    v10 = [v9 possibleValueSet];
    v11 = v10;
    if (v9)
    {
      v12 = [v10 allValues];
      v13 = [v12 count];

      if (v13 == 2)
      {
        [HUQuickControlUtilities shouldDisplayQuickControlAsPushButton:v9 preferredControl:[(HUQuickControlContext *)self preferredControl]];
        v3 = objc_opt_class();
      }

      else
      {
        v17 = [v9 multiStateCharacteristicType];
        if (([v17 isEqualToString:*MEMORY[0x277CCFB20]] & 1) == 0)
        {
          [v17 isEqualToString:*MEMORY[0x277CCFB18]];
        }

        v3 = objc_opt_class();
      }
    }

    else
    {
      v3 = 0;
    }
  }

  else if ([(objc_class *)[(HUQuickControlContext *)self quickControlClass] isEqual:objc_opt_class()])
  {
    v14 = [(HUQuickControlContext *)self controlItems];
    v15 = [v14 allObjects];
    v16 = [v15 firstObject];

    [HUQuickControlUtilities shouldDisplayQuickControlAsPushButton:v16 preferredControl:[(HUQuickControlContext *)self preferredControl]];
    v3 = objc_opt_class();
  }

  else
  {
    if ([(objc_class *)[(HUQuickControlContext *)self quickControlClass] isEqual:objc_opt_class()]|| [(objc_class *)[(HUQuickControlContext *)self quickControlClass] isEqual:objc_opt_class()]|| [(objc_class *)[(HUQuickControlContext *)self quickControlClass] isEqual:objc_opt_class()]|| [(objc_class *)[(HUQuickControlContext *)self quickControlClass] isEqual:objc_opt_class()])
    {
LABEL_4:
      v3 = objc_opt_class();
      goto LABEL_5;
    }

    v3 = 0;
  }

LABEL_5:

  return v3;
}

- (HUQuickControlItemUpdating)itemUpdater
{
  WeakRetained = objc_loadWeakRetained(&self->_itemUpdater);

  return WeakRetained;
}

@end