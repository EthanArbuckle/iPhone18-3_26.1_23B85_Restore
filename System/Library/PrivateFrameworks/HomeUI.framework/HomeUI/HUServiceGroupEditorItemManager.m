@interface HUServiceGroupEditorItemManager
- (HUServiceGroupEditorItemManager)initWithDelegate:(id)a3 sourceItem:(id)a4;
- (HUServiceGroupEditorItemManager)initWithServiceGroupBuilder:(id)a3 mode:(unint64_t)a4 delegate:(id)a5;
- (id)_buildItemProvidersForHome:(id)a3;
- (id)_identifierForSection:(unint64_t)a3;
- (id)_sectionIdentifierForItem:(id)a3;
- (id)currentSectionIdentifiers;
- (int64_t)instructionsSectionIndex;
- (int64_t)serviceGridSectionIndex;
- (unint64_t)_numberOfSections;
@end

@implementation HUServiceGroupEditorItemManager

- (HUServiceGroupEditorItemManager)initWithDelegate:(id)a3 sourceItem:(id)a4
{
  v6 = [MEMORY[0x277CCA890] currentHandler];
  v7 = NSStringFromSelector(sel_initWithServiceGroupBuilder_mode_delegate_);
  [v6 handleFailureInMethod:a2 object:self file:@"HUServiceGroupEditorItemManager.m" lineNumber:36 description:{@"%s is unavailable; use %@ instead", "-[HUServiceGroupEditorItemManager initWithDelegate:sourceItem:]", v7}];

  return 0;
}

- (HUServiceGroupEditorItemManager)initWithServiceGroupBuilder:(id)a3 mode:(unint64_t)a4 delegate:(id)a5
{
  v9 = a3;
  v13.receiver = self;
  v13.super_class = HUServiceGroupEditorItemManager;
  v10 = [(HFItemManager *)&v13 initWithDelegate:a5 sourceItem:0];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_serviceGroupBuilder, a3);
    v11->_mode = a4;
  }

  return v11;
}

- (int64_t)instructionsSectionIndex
{
  v2 = [(HUServiceGroupEditorItemManager *)self currentSectionIdentifiers];
  v3 = [v2 indexOfObject:@"HUServiceGroupEditorInstructionsSectionIdentifier"];

  return v3;
}

- (int64_t)serviceGridSectionIndex
{
  v2 = [(HUServiceGroupEditorItemManager *)self currentSectionIdentifiers];
  v3 = [v2 indexOfObject:@"HUServiceGroupEditorServiceGridSectionIdentifier"];

  return v3;
}

- (id)_buildItemProvidersForHome:(id)a3
{
  v26[1] = *MEMORY[0x277D85DE8];
  v4 = [MEMORY[0x277CBEB58] set];
  v5 = [(HUServiceGroupEditorItemManager *)self serviceGroupBuilder];
  if (![(HUServiceGroupEditorItemManager *)self mode])
  {
    v6 = objc_alloc(MEMORY[0x277D14B38]);
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __62__HUServiceGroupEditorItemManager__buildItemProvidersForHome___block_invoke;
    v24[3] = &unk_277DB7478;
    v25 = v5;
    v7 = [v6 initWithResultsBlock:v24];
    [(HUServiceGroupEditorItemManager *)self setNameAndIconItem:v7];

    v8 = [(HUServiceGroupEditorItemManager *)self nameAndIconItem];
    [v4 addObject:v8];
  }

  v9 = [HUInstructionsItem alloc];
  v19 = MEMORY[0x277D85DD0];
  v20 = 3221225472;
  v21 = __62__HUServiceGroupEditorItemManager__buildItemProvidersForHome___block_invoke_2;
  v22 = &unk_277DB7478;
  v23 = v5;
  v10 = v5;
  v11 = [(HFStaticItem *)v9 initWithResultsBlock:&v19];
  [(HUServiceGroupEditorItemManager *)self setInstructionsItem:v11, v19, v20, v21, v22];

  v12 = [(HUServiceGroupEditorItemManager *)self instructionsItem];
  [v4 addObject:v12];

  v13 = objc_alloc(MEMORY[0x277D14B38]);
  v14 = [v13 initWithResults:MEMORY[0x277CBEC10]];
  [(HUServiceGroupEditorItemManager *)self setServiceGridItem:v14];

  v15 = [(HUServiceGroupEditorItemManager *)self serviceGridItem];
  [v4 addObject:v15];

  v16 = [objc_alloc(MEMORY[0x277D14B40]) initWithItems:v4];
  v26[0] = v16;
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:1];

  return v17;
}

id __62__HUServiceGroupEditorItemManager__buildItemProvidersForHome___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CBEB38] dictionary];
  v3 = [*(a1 + 32) primaryServiceType];
  if (v3)
  {
    v4 = [MEMORY[0x277D14AC0] defaultIconDescriptorForServiceType:v3 serviceSubtype:0];
    [v2 na_safeSetObject:v4 forKey:*MEMORY[0x277D13E88]];
  }

  v5 = [MEMORY[0x277D2C900] futureWithResult:v2];

  return v5;
}

id __62__HUServiceGroupEditorItemManager__buildItemProvidersForHome___block_invoke_2(uint64_t a1)
{
  v2 = [MEMORY[0x277CBEB38] dictionary];
  [v2 setObject:&unk_282491880 forKeyedSubscript:@"instructionsStyle"];
  v3 = _HULocalizedStringWithDefaultValue(@"HUServiceGroupEditorAccessoriesInstructionsTitle", @"HUServiceGroupEditorAccessoriesInstructionsTitle", 1);
  [v2 setObject:v3 forKeyedSubscript:*MEMORY[0x277D13F60]];

  v4 = [*(a1 + 32) name];
  v5 = [v4 length];

  if (v5)
  {
    v6 = [*(a1 + 32) name];
    v13 = HULocalizedStringWithFormat(@"HUServiceGroupEditorAccessoriesInstructionsDescriptionWithName", @"%@", v7, v8, v9, v10, v11, v12, v6);
  }

  else
  {
    v13 = _HULocalizedStringWithDefaultValue(@"HUServiceGroupEditorAccessoriesInstructionsDescriptionWithoutName", @"HUServiceGroupEditorAccessoriesInstructionsDescriptionWithoutName", 1);
  }

  [v2 setObject:v13 forKeyedSubscript:*MEMORY[0x277D13E20]];
  v14 = [MEMORY[0x277D2C900] futureWithResult:v2];

  return v14;
}

- (unint64_t)_numberOfSections
{
  v2 = [(HUServiceGroupEditorItemManager *)self currentSectionIdentifiers];
  v3 = [v2 count];

  return v3;
}

- (id)_identifierForSection:(unint64_t)a3
{
  v4 = [(HUServiceGroupEditorItemManager *)self currentSectionIdentifiers];
  if ([v4 count] <= a3)
  {
    NSLog(&cfstr_ReceivedIdenti.isa, a3, [v4 count]);
  }

  if ([v4 count] <= a3)
  {
    v5 = 0;
  }

  else
  {
    v5 = [v4 objectAtIndexedSubscript:a3];
  }

  return v5;
}

- (id)_sectionIdentifierForItem:(id)a3
{
  v5 = a3;
  v6 = [(HUServiceGroupEditorItemManager *)self nameAndIconItem];
  v7 = [v5 isEqual:v6];

  if (v7)
  {
    v8 = @"HUServiceGroupEditorNameSectionIdentifier";
  }

  else
  {
    v9 = [(HUServiceGroupEditorItemManager *)self instructionsItem];
    v10 = [v5 isEqual:v9];

    if (v10)
    {
      v8 = @"HUServiceGroupEditorInstructionsSectionIdentifier";
    }

    else
    {
      v11 = [(HUServiceGroupEditorItemManager *)self serviceGridItem];
      v12 = [v5 isEqual:v11];

      if (v12)
      {
        v8 = @"HUServiceGroupEditorServiceGridSectionIdentifier";
      }

      else
      {
        v13 = [MEMORY[0x277CCA890] currentHandler];
        [v13 handleFailureInMethod:a2 object:self file:@"HUServiceGroupEditorItemManager.m" lineNumber:135 description:{@"Couldn't find a section for item: %@", v5}];

        v8 = 0;
      }
    }
  }

  return v8;
}

- (id)currentSectionIdentifiers
{
  v3 = [MEMORY[0x277CBEB18] array];
  if (![(HUServiceGroupEditorItemManager *)self mode])
  {
    [v3 addObject:@"HUServiceGroupEditorNameSectionIdentifier"];
  }

  [v3 addObject:@"HUServiceGroupEditorInstructionsSectionIdentifier"];
  [v3 addObject:@"HUServiceGroupEditorServiceGridSectionIdentifier"];

  return v3;
}

@end