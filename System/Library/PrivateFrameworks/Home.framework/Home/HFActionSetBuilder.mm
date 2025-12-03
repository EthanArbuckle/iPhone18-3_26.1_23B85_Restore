@interface HFActionSetBuilder
- (HFActionSetBuilder)initWithExistingObject:(id)object inHome:(id)home;
- (HFActionSetBuilder)initWithHome:(id)home;
- (NSSet)hf_accessoryLikeObjects;
- (id)_builderCommitItem;
- (id)_deleteActionSet:(id)set fromHome:(id)home;
- (id)_lazilyClearApplicationData;
- (id)_lazilyUpdateIcon;
- (id)_lazilyUpdateIncludedContext;
- (id)_lazy_performValidation;
- (id)_legacyCommitItemWithOperationType:(id)type;
- (id)_updateIconOnBuilder:(id)builder;
- (id)_updateValueForContextType:(unint64_t)type;
- (id)commitItem;
- (id)compareToObject:(id)object;
- (id)copyWithZone:(_NSZone *)zone;
- (id)createActionSetBuilder;
- (id)deleteActionSet;
- (id)getOrCreateActionSetBuilder;
- (id)performValidation;
- (id)transformedError:(id)error withOperationType:(id)type;
- (id)updateActionSetBuilder:(id)builder;
- (unint64_t)hash;
- (void)_updateValueForContextType:(unint64_t)type onActionSetBuilder:(id)builder;
- (void)notifyObserversForCreatedActionSet:(id)set;
- (void)notifyObserversForRenamedActionSet:(id)set;
- (void)updateFromActionSetBuilder:(id)builder;
@end

@implementation HFActionSetBuilder

- (id)compareToObject:(id)object
{
  objectCopy = object;
  v5 = [[HFComparisonResult alloc] initWithObjectA:self objectB:objectCopy];
  if (![(HFComparisonResult *)v5 containsCriticalDifference])
  {
    name = [(HFActionSetBuilder *)self name];
    name2 = [objectCopy name];
    v8 = [HFPropertyDifference compareObjectA:name toObjectB:name2 key:@"name" priority:3];
    [(HFComparisonResult *)v5 add:v8];

    iconDescriptor = [(HFActionSetBuilder *)self iconDescriptor];
    iconDescriptor2 = [objectCopy iconDescriptor];
    v11 = [HFPropertyDifference compareObjectA:iconDescriptor toObjectB:iconDescriptor2 key:@"iconDescriptor" priority:2];
    [(HFComparisonResult *)v5 add:v11];

    iconTintColor = [(HFActionSetBuilder *)self iconTintColor];
    iconTintColor2 = [objectCopy iconTintColor];
    v14 = [HFPropertyDifference compareObjectA:iconTintColor toObjectB:iconTintColor2 key:@"iconTintColor" priority:2];
    [(HFComparisonResult *)v5 add:v14];

    v15 = [MEMORY[0x277CCABB0] numberWithBool:{-[HFActionSetBuilder showInHomeDashboard](self, "showInHomeDashboard")}];
    v16 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(objectCopy, "showInHomeDashboard")}];
    v17 = [HFPropertyDifference compareObjectA:v15 toObjectB:v16 key:@"showInHomeDashboard" priority:1];
    [(HFComparisonResult *)v5 add:v17];

    actions = [(HFAbstractBaseActionSetBuilder *)self actions];
    actions2 = [objectCopy actions];
    v20 = [HFContainedObjectListDifference containedObjectDifferenceWithKey:@"actions" objectsA:actions objectsB:actions2];
    [(HFComparisonResult *)v5 add:v20];
  }

  return v5;
}

- (unint64_t)hash
{
  name = [(HFActionSetBuilder *)self name];
  v3 = [name hash];

  return v3;
}

- (id)performValidation
{
  v12 = *MEMORY[0x277D85DE8];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __59__HFActionSetBuilder_AutomationBuilders__performValidation__block_invoke;
  v7[3] = &unk_277DF61C8;
  v7[4] = self;
  v3 = __59__HFActionSetBuilder_AutomationBuilders__performValidation__block_invoke(v7);
  if (v3)
  {
    v4 = HFLogForCategory(0x2BuLL);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      selfCopy = self;
      v10 = 2112;
      v11 = v3;
      _os_log_error_impl(&dword_20D9BF000, v4, OS_LOG_TYPE_ERROR, "Error validating action set builder: %@. Error: %@", buf, 0x16u);
    }
  }

  v5 = *MEMORY[0x277D85DE8];

  return v3;
}

id __59__HFActionSetBuilder_AutomationBuilders__performValidation__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) verifyPropertyIsSet:@"name"];
  if (v2)
  {
    goto LABEL_2;
  }

  v4 = *(a1 + 32);
  v5 = [v4 name];
  v3 = [v4 verifyNameIsNotEmpty:v5];

  if (!v3)
  {
    v6 = [*(a1 + 32) actionSet];
    v7 = [v6 actionSetType];
    v8 = [v7 isEqualToString:*MEMORY[0x277CCF1A8]];

    if (v8)
    {
      v2 = [*(a1 + 32) verifyProperty:@"actions" matchesCondition:&__block_literal_global_48 description:@"Action sets must have at least one action"];
      if (v2)
      {
LABEL_2:
        v3 = v2;
        goto LABEL_9;
      }
    }

    v9 = [*(a1 + 32) actions];
    v10 = [v9 na_map:&__block_literal_global_10_0];
    v3 = [v10 firstObject];

    if (v3)
    {
      v11 = v3;
    }
  }

LABEL_9:

  return v3;
}

- (id)getOrCreateActionSetBuilder
{
  home = [(HFItemBuilder *)self home];
  areAutomationBuildersSupported = [home areAutomationBuildersSupported];

  if (!areAutomationBuildersSupported)
  {
    v7 = 0;
    goto LABEL_8;
  }

  actionSet = [(HFAbstractBaseActionSetBuilder *)self actionSet];
  if (actionSet)
  {
    home3 = actionSet;
  }

  else
  {
    home2 = [(HFItemBuilder *)self home];
    actionSets = [home2 actionSets];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __69__HFActionSetBuilder_AutomationBuilders__getOrCreateActionSetBuilder__block_invoke;
    v14[3] = &unk_277DF4280;
    v14[4] = self;
    home3 = [actionSets na_firstObjectPassingTest:v14];

    if (!home3)
    {
      v13 = [HFActionSetBuilderPair alloc];
      home3 = [(HFItemBuilder *)self home];
      newActionSetBuilder = [home3 newActionSetBuilder];
      v11 = [(HFActionSetBuilderPair *)v13 initWithBuilder:newActionSetBuilder];
      goto LABEL_7;
    }
  }

  newActionSetBuilder = [home3 copyAsBuilder];
  v11 = [[HFActionSetBuilderPair alloc] initWithActionSet:home3 builder:newActionSetBuilder];
LABEL_7:
  v7 = v11;

LABEL_8:

  return v7;
}

BOOL __69__HFActionSetBuilder_AutomationBuilders__getOrCreateActionSetBuilder__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 name];
  v5 = [v4 lowercaseString];
  v6 = [*(a1 + 32) name];
  v7 = [v6 lowercaseString];
  if ([v5 isEqualToString:v7])
  {
    v8 = [v3 actions];
    v9 = [v8 count] == 0;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)updateActionSetBuilder:(id)builder
{
  v30 = *MEMORY[0x277D85DE8];
  builderCopy = builder;
  if (builderCopy)
  {
    name = [(HFActionSetBuilder *)self name];
    [builderCopy setName:name];

    [(HFAbstractBaseActionSetBuilder *)self updateActionsInBuilder:builderCopy];
    if ([(HFActionSetBuilder *)self shouldClearApplicationData])
    {
      v26 = 0u;
      v27 = 0u;
      v24 = 0u;
      v25 = 0u;
      applicationData = [builderCopy applicationData];
      allKeys = [applicationData allKeys];

      v9 = [allKeys countByEnumeratingWithState:&v24 objects:v29 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v25;
        do
        {
          for (i = 0; i != v10; ++i)
          {
            if (*v25 != v11)
            {
              objc_enumerationMutation(allKeys);
            }

            v13 = *(*(&v24 + 1) + 8 * i);
            applicationData2 = [builderCopy applicationData];
            [applicationData2 setObject:0 forKey:v13];
          }

          v10 = [allKeys countByEnumeratingWithState:&v24 objects:v29 count:16];
        }

        while (v10);
      }

      futureWithNoResult = [MEMORY[0x277D2C900] futureWithNoResult];
    }

    else
    {
      [(HFActionSetBuilder *)self _updateValueForContextType:3 onActionSetBuilder:builderCopy];
      v19 = MEMORY[0x277D2C900];
      v20 = [(HFActionSetBuilder *)self _updateIconOnBuilder:builderCopy];
      v28 = v20;
      v21 = [MEMORY[0x277CBEA60] arrayWithObjects:&v28 count:1];
      futureWithNoResult = [v19 combineAllFutures:v21];
    }
  }

  else
  {
    v16 = NSStringFromSelector(a2);
    NSLog(&cfstr_PassedANilActi.isa, self, v16);

    v17 = MEMORY[0x277D2C900];
    v18 = [MEMORY[0x277CCA9B8] hf_errorWithCode:30];
    futureWithNoResult = [v17 futureWithError:v18];
  }

  v22 = *MEMORY[0x277D85DE8];

  return futureWithNoResult;
}

- (void)_updateValueForContextType:(unint64_t)type onActionSetBuilder:(id)builder
{
  builderCopy = builder;
  v12 = builderCopy;
  if (type <= 1)
  {
    if (type)
    {
      if (type != 1)
      {
        goto LABEL_11;
      }

      NSLog(&cfstr_ActionsetSValu_0.isa);
      goto LABEL_10;
    }

LABEL_9:
    NSLog(&cfstr_ActionsetSValu.isa);
LABEL_10:
    builderCopy = v12;
    goto LABEL_11;
  }

  if (type == 2)
  {
    goto LABEL_9;
  }

  if (type == 3)
  {
    showInHomeDashboard = [(HFActionSetBuilder *)self showInHomeDashboard];
    v8 = [v12 hf_isOnForContextType:3];
    v9 = showInHomeDashboard;
    if (showInHomeDashboard == v8)
    {
      goto LABEL_12;
    }

    goto LABEL_13;
  }

LABEL_11:
  v10 = [builderCopy hf_isOnForContextType:type];
  showInHomeDashboard = 0;
  v9 = 0;
  if ((v10 & 1) == 0)
  {
LABEL_12:
    v11 = [v12 hf_hasSetForContextType:type];
    v9 = showInHomeDashboard;
    if (v11)
    {
      goto LABEL_14;
    }
  }

LABEL_13:
  [v12 hf_setValue:v9 forContextType:type];
LABEL_14:
}

- (id)_updateIconOnBuilder:(id)builder
{
  builderCopy = builder;
  hf_iconDescriptor = [builderCopy hf_iconDescriptor];
  identifier = [hf_iconDescriptor identifier];

  hf_iconTintColor = [builderCopy hf_iconTintColor];
  iconDescriptor = [(HFActionSetBuilder *)self iconDescriptor];
  identifier2 = [iconDescriptor identifier];
  v10 = [identifier isEqualToString:identifier2];

  if (v10 && (-[HFActionSetBuilder iconTintColor](self, "iconTintColor"), v11 = objc_claimAutoreleasedReturnValue(), v12 = [hf_iconTintColor isEqual:v11], v11, v12))
  {
    futureWithNoResult = [MEMORY[0x277D2C900] futureWithNoResult];
  }

  else
  {
    iconDescriptor2 = [(HFActionSetBuilder *)self iconDescriptor];
    isSystemImage = [iconDescriptor2 isSystemImage];

    if ((isSystemImage & 1) == 0)
    {
      iconDescriptor3 = [(HFActionSetBuilder *)self iconDescriptor];
      NSLog(&cfstr_ActionSetBuild.isa, iconDescriptor3);
    }

    iconDescriptor4 = [(HFActionSetBuilder *)self iconDescriptor];
    identifier3 = [iconDescriptor4 identifier];
    iconTintColor = [(HFActionSetBuilder *)self iconTintColor];
    futureWithNoResult = [builderCopy hf_setIconIdentifier:identifier3 andTintColor:iconTintColor];
  }

  return futureWithNoResult;
}

- (NSSet)hf_accessoryLikeObjects
{
  v3 = [MEMORY[0x277CBEB58] set];
  actions = [(HFAbstractBaseActionSetBuilder *)self actions];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __75__HFActionSetBuilder_AccessoryLikeObjectContainer__hf_accessoryLikeObjects__block_invoke;
  v8[3] = &unk_277DF6A20;
  v9 = v3;
  v5 = v3;
  [actions na_each:v8];

  v6 = [v5 copy];

  return v6;
}

void __75__HFActionSetBuilder_AccessoryLikeObjectContainer__hf_accessoryLikeObjects__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 containedAccessoryRepresentables];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __75__HFActionSetBuilder_AccessoryLikeObjectContainer__hf_accessoryLikeObjects__block_invoke_2;
  v4[3] = &unk_277DF69F8;
  v5 = *(a1 + 32);
  [v3 na_each:v4];
}

void __75__HFActionSetBuilder_AccessoryLikeObjectContainer__hf_accessoryLikeObjects__block_invoke_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [HFAccessoryLikeObject accessoryLikeObjectsForAccessoryRepresentable:a2];
  [v2 unionSet:v3];
}

- (HFActionSetBuilder)initWithHome:(id)home
{
  v6.receiver = self;
  v6.super_class = HFActionSetBuilder;
  v3 = [(HFItemBuilder *)&v6 initWithHome:home];
  if (v3)
  {
    v4 = [[HFImageIconDescriptor alloc] initWithSystemImageNamed:@"house.fill"];
    [(HFActionSetBuilder *)v3 setIconDescriptor:v4];

    [(HFActionSetBuilder *)v3 setIsActionSetDeleted:0];
    [(HFActionSetBuilder *)v3 setShouldClearApplicationData:0];
  }

  return v3;
}

- (HFActionSetBuilder)initWithExistingObject:(id)object inHome:(id)home
{
  v14.receiver = self;
  v14.super_class = HFActionSetBuilder;
  v4 = [(HFAbstractBaseActionSetBuilder *)&v14 initWithExistingObject:object inHome:home];
  v5 = v4;
  if (v4)
  {
    actionSet = [(HFAbstractBaseActionSetBuilder *)v4 actionSet];
    name = [actionSet name];
    [(HFActionSetBuilder *)v5 setName:name];

    actionSet2 = [(HFAbstractBaseActionSetBuilder *)v5 actionSet];
    hf_iconDescriptor = [actionSet2 hf_iconDescriptor];
    [(HFActionSetBuilder *)v5 setIconDescriptor:hf_iconDescriptor];

    actionSet3 = [(HFAbstractBaseActionSetBuilder *)v5 actionSet];
    hf_iconTintColor = [actionSet3 hf_iconTintColor];
    [(HFActionSetBuilder *)v5 setIconTintColor:hf_iconTintColor];

    actionSet4 = [(HFAbstractBaseActionSetBuilder *)v5 actionSet];
    -[HFActionSetBuilder setShowInHomeDashboard:](v5, "setShowInHomeDashboard:", [actionSet4 hf_effectiveShowInHomeDashboard]);

    [(HFActionSetBuilder *)v5 setIsActionSetDeleted:0];
    [(HFActionSetBuilder *)v5 setShouldClearApplicationData:0];
  }

  return v5;
}

- (id)deleteActionSet
{
  actionSet = [(HFAbstractBaseActionSetBuilder *)self actionSet];
  home = [(HFItemBuilder *)self home];
  v5 = [(HFActionSetBuilder *)self _deleteActionSet:actionSet fromHome:home];

  return v5;
}

- (void)updateFromActionSetBuilder:(id)builder
{
  builderCopy = builder;
  name = [builderCopy name];
  [(HFActionSetBuilder *)self setName:name];

  iconDescriptor = [builderCopy iconDescriptor];
  [(HFActionSetBuilder *)self setIconDescriptor:iconDescriptor];

  -[HFActionSetBuilder setShowInHomeDashboard:](self, "setShowInHomeDashboard:", [builderCopy showInHomeDashboard]);
  actionBuilders = [builderCopy actionBuilders];

  v7 = [actionBuilders mutableCopy];
  [(HFAbstractBaseActionSetBuilder *)self setActionBuilders:v7];
}

- (id)_lazy_performValidation
{
  v17[2] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CBEB18];
  v4 = [(HFItemBuilder *)self lazy_verifyPropertyIsSet:@"name"];
  v17[0] = v4;
  name = [(HFActionSetBuilder *)self name];
  v6 = [(HFItemBuilder *)self lazy_verifyNameIsNotEmpty:name];
  v17[1] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:2];
  v8 = [v3 arrayWithArray:v7];

  actionSet = [(HFAbstractBaseActionSetBuilder *)self actionSet];
  actionSetType = [actionSet actionSetType];
  LODWORD(v6) = [actionSetType isEqualToString:*MEMORY[0x277CCF1A8]];

  if (v6)
  {
    v11 = [(HFItemBuilder *)self lazy_verifyProperty:@"actions" matchesCondition:&__block_literal_global_190 description:@"Action sets must have at least one action"];
    [v8 addObject:v11];
  }

  v12 = [MEMORY[0x277D2C900] chainFutures:v8];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __45__HFActionSetBuilder__lazy_performValidation__block_invoke_2;
  v16[3] = &unk_277DF2D08;
  v16[4] = self;
  v13 = [v12 addFailureBlock:v16];

  v14 = *MEMORY[0x277D85DE8];

  return v12;
}

void __45__HFActionSetBuilder__lazy_performValidation__block_invoke_2(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = HFLogForCategory(0x2BuLL);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v6 = *(a1 + 32);
    v7 = 138412546;
    v8 = v6;
    v9 = 2112;
    v10 = v3;
    _os_log_error_impl(&dword_20D9BF000, v4, OS_LOG_TYPE_ERROR, "Error validating action set builder: %@. Error: %@", &v7, 0x16u);
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (id)createActionSetBuilder
{
  v10.receiver = self;
  v10.super_class = HFActionSetBuilder;
  createActionSetBuilder = [(HFAbstractBaseActionSetBuilder *)&v10 createActionSetBuilder];
  if (createActionSetBuilder)
  {
    v4 = createActionSetBuilder;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __44__HFActionSetBuilder_createActionSetBuilder__block_invoke;
    v9[3] = &unk_277DFFFC0;
    v9[4] = self;
    v5 = [createActionSetBuilder flatMap:v9];

    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __44__HFActionSetBuilder_createActionSetBuilder__block_invoke_3;
    v8[3] = &unk_277DFFFC0;
    v8[4] = self;
    v6 = [v5 flatMap:v8];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

id __44__HFActionSetBuilder_createActionSetBuilder__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) _lazy_performValidation];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __44__HFActionSetBuilder_createActionSetBuilder__block_invoke_2;
  v8[3] = &unk_277DF2CE0;
  v9 = v3;
  v5 = v3;
  v6 = [v4 flatMap:v8];

  return v6;
}

id __44__HFActionSetBuilder_createActionSetBuilder__block_invoke_3(uint64_t a1, void *a2)
{
  v16[2] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [*(a1 + 32) name];
  [v3 setName:v4];

  v5 = MEMORY[0x277D2C900];
  v6 = [*(a1 + 32) _lazilyUpdateIncludedContext];
  v16[0] = v6;
  v7 = [*(a1 + 32) _lazilyUpdateIcon];
  v16[1] = v7;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:2];
  v9 = [v5 combineAllFutures:v8];

  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __44__HFActionSetBuilder_createActionSetBuilder__block_invoke_4;
  v14[3] = &unk_277DF2CE0;
  v15 = v3;
  v10 = v3;
  v11 = [v9 flatMap:v14];

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

- (id)commitItem
{
  v38 = *MEMORY[0x277D85DE8];
  if ([(HFActionSetBuilder *)self isActionSetDeleted])
  {
    v3 = HFLogForCategory(0x2BuLL);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      name = [(HFActionSetBuilder *)self name];
      *buf = 138412290;
      v37 = name;
      _os_log_impl(&dword_20D9BF000, v3, OS_LOG_TYPE_DEFAULT, "Skipping commit of action set with name: %@. Reason: Action set was previously deleted.", buf, 0xCu);
    }

    futureWithNoResult = [MEMORY[0x277D2C900] futureWithNoResult];
  }

  else
  {
    v6 = HFLogForCategory(0x35uLL);
    v7 = os_signpost_id_make_with_pointer(v6, self);

    v8 = MEMORY[0x277CCACA8];
    actionSet = [(HFAbstractBaseActionSetBuilder *)self actionSet];
    if (actionSet)
    {
      v10 = @"Committing";
    }

    else
    {
      v10 = @"Creating";
    }

    name2 = [(HFActionSetBuilder *)self name];
    actionSet2 = [(HFAbstractBaseActionSetBuilder *)self actionSet];
    if (actionSet2)
    {
      v13 = MEMORY[0x277CCACA8];
      actionSet3 = [(HFAbstractBaseActionSetBuilder *)self actionSet];
      uniqueIdentifier = [actionSet3 uniqueIdentifier];
      v16 = [v13 stringWithFormat:@" (%@)", uniqueIdentifier];
      v17 = [v8 stringWithFormat:@"%@ action set: %@%@", v10, name2, v16];
    }

    else
    {
      v17 = [v8 stringWithFormat:@"%@ action set: %@%@", v10, name2, &stru_2824B1A78];
    }

    v18 = HFLogForCategory(0x35uLL);
    v19 = v18;
    if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v18))
    {
      *buf = 138412290;
      v37 = v17;
      _os_signpost_emit_with_name_impl(&dword_20D9BF000, v19, OS_SIGNPOST_INTERVAL_BEGIN, v7, "HFActionSetBuilderCommit", "%@", buf, 0xCu);
    }

    actionSet4 = [(HFAbstractBaseActionSetBuilder *)self actionSet];
    v21 = HFOperationEditActionSet;
    if (!actionSet4)
    {
      v21 = HFOperationAddActionSet;
    }

    v22 = *v21;

    home = [(HFItemBuilder *)self home];
    areAutomationBuildersSupported = [home areAutomationBuildersSupported];

    if (areAutomationBuildersSupported)
    {
      [(HFActionSetBuilder *)self _builderCommitItem];
    }

    else
    {
      [(HFActionSetBuilder *)self _legacyCommitItemWithOperationType:v22];
    }
    v25 = ;
    v33[0] = MEMORY[0x277D85DD0];
    v33[1] = 3221225472;
    v33[2] = __32__HFActionSetBuilder_commitItem__block_invoke;
    v33[3] = &unk_277DFFFE8;
    v34 = v17;
    v35 = v7;
    v26 = v17;
    v27 = [v25 addCompletionBlock:v33];
    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 3221225472;
    v31[2] = __32__HFActionSetBuilder_commitItem__block_invoke_38;
    v31[3] = &unk_277DF2D30;
    v31[4] = self;
    v32 = v22;
    v28 = v22;
    futureWithNoResult = [v25 recover:v31];
  }

  v29 = *MEMORY[0x277D85DE8];

  return futureWithNoResult;
}

void __32__HFActionSetBuilder_commitItem__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = HFLogForCategory(0x35uLL);
  v6 = v5;
  v7 = *(a1 + 40);
  if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
  {
    v8 = *(a1 + 32);
    if (v4)
    {
      v9 = [MEMORY[0x277CCACA8] stringWithFormat:@" error: %@", v4];
    }

    else
    {
      v9 = &stru_2824B1A78;
    }

    *buf = 138412546;
    v12 = v8;
    v13 = 2112;
    v14 = v9;
    _os_signpost_emit_with_name_impl(&dword_20D9BF000, v6, OS_SIGNPOST_INTERVAL_END, v7, "HFActionSetBuilderCommit", "%@%@", buf, 0x16u);
    if (v4)
    {
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

id __32__HFActionSetBuilder_commitItem__block_invoke_38(uint64_t a1, uint64_t a2)
{
  v2 = MEMORY[0x277D2C900];
  v3 = [*(a1 + 32) transformedError:a2 withOperationType:*(a1 + 40)];
  v4 = [v2 futureWithError:v3];

  return v4;
}

- (void)notifyObserversForCreatedActionSet:(id)set
{
  setCopy = set;
  v5 = +[HFHomeKitDispatcher sharedDispatcher];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __57__HFActionSetBuilder_notifyObserversForCreatedActionSet___block_invoke;
  v7[3] = &unk_277DF3810;
  v7[4] = self;
  v8 = setCopy;
  v6 = setCopy;
  [v5 dispatchHomeObserverMessage:v7 sender:0];
}

void __57__HFActionSetBuilder_notifyObserversForCreatedActionSet___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  if (objc_opt_respondsToSelector())
  {
    v3 = [*(a1 + 32) home];
    [v4 home:v3 didAddActionSet:*(a1 + 40)];
  }
}

- (void)notifyObserversForRenamedActionSet:(id)set
{
  setCopy = set;
  v5 = +[HFHomeKitDispatcher sharedDispatcher];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __57__HFActionSetBuilder_notifyObserversForRenamedActionSet___block_invoke;
  v7[3] = &unk_277DF3810;
  v7[4] = self;
  v8 = setCopy;
  v6 = setCopy;
  [v5 dispatchHomeObserverMessage:v7 sender:0];
}

void __57__HFActionSetBuilder_notifyObserversForRenamedActionSet___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  if (objc_opt_respondsToSelector())
  {
    v3 = [*(a1 + 32) home];
    [v4 home:v3 didUpdateNameForActionSet:*(a1 + 40)];
  }
}

- (id)transformedError:(id)error withOperationType:(id)type
{
  typeCopy = type;
  errorCopy = error;
  name = [(HFActionSetBuilder *)self name];
  v9 = [errorCopy hf_errorWithOperationType:typeCopy failedItemName:name];

  return v9;
}

- (id)_builderCommitItem
{
  performValidation = [(HFActionSetBuilder *)self performValidation];
  if (performValidation)
  {
    v4 = [MEMORY[0x277D2C900] futureWithError:performValidation];
  }

  else
  {
    getOrCreateActionSetBuilder = [(HFActionSetBuilder *)self getOrCreateActionSetBuilder];
    builder = [getOrCreateActionSetBuilder builder];
    v7 = [(HFActionSetBuilder *)self updateActionSetBuilder:builder];

    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __40__HFActionSetBuilder__builderCommitItem__block_invoke;
    v14[3] = &unk_277DFA5C0;
    v8 = getOrCreateActionSetBuilder;
    v15 = v8;
    selfCopy = self;
    v4 = [v7 flatMap:v14];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __40__HFActionSetBuilder__builderCommitItem__block_invoke_2;
    v12[3] = &unk_277DFC1F0;
    v12[4] = self;
    v13 = v8;
    v9 = v8;
    v10 = [v4 addSuccessBlock:v12];
  }

  return v4;
}

id __40__HFActionSetBuilder__builderCommitItem__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [*(a1 + 40) home];
  v3 = [v1 commitActionSetInHome:v2];

  return v3;
}

void __40__HFActionSetBuilder__builderCommitItem__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v6 = a2;
  [v3 setActionSet:?];
  v4 = [*(a1 + 40) actionSet];

  v5 = *(a1 + 32);
  if (v4)
  {
    [v5 notifyObserversForRenamedActionSet:v6];
  }

  else
  {
    [v5 notifyObserversForCreatedActionSet:v6];
  }
}

- (id)_legacyCommitItemWithOperationType:(id)type
{
  v46[1] = *MEMORY[0x277D85DE8];
  typeCopy = type;
  objc_initWeak(&location, self);
  actionSet = [(HFAbstractBaseActionSetBuilder *)self actionSet];
  v6 = actionSet == 0;

  if (v6)
  {
    home = [(HFItemBuilder *)self home];
    actionSets = [home actionSets];
    v42[0] = MEMORY[0x277D85DD0];
    v42[1] = 3221225472;
    v42[2] = __57__HFActionSetBuilder__legacyCommitItemWithOperationType___block_invoke;
    v42[3] = &unk_277DF4280;
    v42[4] = self;
    v9 = [actionSets na_firstObjectPassingTest:v42];
    [(HFAbstractBaseActionSetBuilder *)self setActionSet:v9];
  }

  actionSet2 = [(HFAbstractBaseActionSetBuilder *)self actionSet];
  v11 = actionSet2 == 0;

  _lazy_performValidation = [(HFActionSetBuilder *)self _lazy_performValidation];
  if (v11)
  {
    v41[0] = MEMORY[0x277D85DD0];
    v41[1] = 3221225472;
    v41[2] = __57__HFActionSetBuilder__legacyCommitItemWithOperationType___block_invoke_2;
    v41[3] = &unk_277DF2CE0;
    v41[4] = self;
    v13 = [_lazy_performValidation flatMap:v41];

    v39[0] = MEMORY[0x277D85DD0];
    v39[1] = 3221225472;
    v39[2] = __57__HFActionSetBuilder__legacyCommitItemWithOperationType___block_invoke_4;
    v39[3] = &unk_277E00010;
    v14 = &v40;
    objc_copyWeak(&v40, &location);
    v17 = [v13 addSuccessBlock:v39];
    v38[0] = MEMORY[0x277D85DD0];
    v38[1] = 3221225472;
    v38[2] = __57__HFActionSetBuilder__legacyCommitItemWithOperationType___block_invoke_47;
    v38[3] = &unk_277DF2D08;
    v38[4] = self;
    v18 = [v13 addFailureBlock:v38];
  }

  else
  {
    v37[0] = MEMORY[0x277D85DD0];
    v37[1] = 3221225472;
    v37[2] = __57__HFActionSetBuilder__legacyCommitItemWithOperationType___block_invoke_48;
    v37[3] = &unk_277DF2CE0;
    v37[4] = self;
    v13 = [_lazy_performValidation flatMap:v37];

    v35[0] = MEMORY[0x277D85DD0];
    v35[1] = 3221225472;
    v35[2] = __57__HFActionSetBuilder__legacyCommitItemWithOperationType___block_invoke_3_51;
    v35[3] = &unk_277E00038;
    v14 = &v36;
    objc_copyWeak(&v36, &location);
    v35[4] = self;
    v15 = [v13 addSuccessBlock:v35];
    v34[0] = MEMORY[0x277D85DD0];
    v34[1] = 3221225472;
    v34[2] = __57__HFActionSetBuilder__legacyCommitItemWithOperationType___block_invoke_53;
    v34[3] = &unk_277DF2D08;
    v34[4] = self;
    v16 = [v13 addFailureBlock:v34];
  }

  objc_destroyWeak(v14);
  if ([(HFActionSetBuilder *)self shouldClearApplicationData])
  {
    _lazilyClearApplicationData = [(HFActionSetBuilder *)self _lazilyClearApplicationData];
    v46[0] = _lazilyClearApplicationData;
    v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v46 count:1];
  }

  else
  {
    _lazilyClearApplicationData = [(HFActionSetBuilder *)self _lazilyUpdateIncludedContext];
    v45[0] = _lazilyClearApplicationData;
    _lazilyUpdateIcon = [(HFActionSetBuilder *)self _lazilyUpdateIcon];
    v45[1] = _lazilyUpdateIcon;
    v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v45 count:2];
  }

  v22 = MEMORY[0x277D2C900];
  v44[0] = v13;
  lazilyUpdateActions = [(HFAbstractBaseActionSetBuilder *)self lazilyUpdateActions];
  v44[1] = lazilyUpdateActions;
  v24 = [MEMORY[0x277CBEA60] arrayWithObjects:v44 count:2];
  v25 = [v24 arrayByAddingObjectsFromArray:v20];
  v26 = [v22 chainFutures:v25];

  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = __57__HFActionSetBuilder__legacyCommitItemWithOperationType___block_invoke_58;
  v31[3] = &unk_277DF2D30;
  v27 = typeCopy;
  v32 = v27;
  selfCopy = self;
  v28 = [v26 recover:v31];

  objc_destroyWeak(&location);
  v29 = *MEMORY[0x277D85DE8];

  return v28;
}

BOOL __57__HFActionSetBuilder__legacyCommitItemWithOperationType___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 name];
  v5 = [v4 lowercaseString];
  v6 = [*(a1 + 32) name];
  v7 = [v6 lowercaseString];
  if ([v5 isEqualToString:v7])
  {
    v8 = [v3 actions];
    v9 = [v8 count] == 0;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

id __57__HFActionSetBuilder__legacyCommitItemWithOperationType___block_invoke_2(uint64_t a1)
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __57__HFActionSetBuilder__legacyCommitItemWithOperationType___block_invoke_3;
  v3[3] = &unk_277DF2C90;
  v3[4] = *(a1 + 32);
  v1 = [MEMORY[0x277D2C900] futureWithCompletionHandlerAdapterBlock:v3];

  return v1;
}

void __57__HFActionSetBuilder__legacyCommitItemWithOperationType___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v6 = [v3 home];
  v5 = [*(a1 + 32) name];
  [v6 addActionSetWithName:v5 completionHandler:v4];
}

void __57__HFActionSetBuilder__legacyCommitItemWithOperationType___block_invoke_4(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = HFLogForCategory(0x2BuLL);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [WeakRetained name];
    v8 = 138412290;
    v9 = v6;
    _os_log_impl(&dword_20D9BF000, v5, OS_LOG_TYPE_DEFAULT, "Created action set with name:%@.", &v8, 0xCu);
  }

  [WeakRetained setActionSet:v3];
  [WeakRetained notifyObserversForCreatedActionSet:v3];

  v7 = *MEMORY[0x277D85DE8];
}

void __57__HFActionSetBuilder__legacyCommitItemWithOperationType___block_invoke_47(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = HFLogForCategory(0x2BuLL);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v6 = [*(a1 + 32) name];
    v7 = 138412546;
    v8 = v6;
    v9 = 2112;
    v10 = v3;
    _os_log_error_impl(&dword_20D9BF000, v4, OS_LOG_TYPE_ERROR, "Failed to create action set with name:%@. Error: %@", &v7, 0x16u);
  }

  v5 = *MEMORY[0x277D85DE8];
}

id __57__HFActionSetBuilder__legacyCommitItemWithOperationType___block_invoke_48(uint64_t a1)
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __57__HFActionSetBuilder__legacyCommitItemWithOperationType___block_invoke_2_49;
  v3[3] = &unk_277DF2C68;
  v3[4] = *(a1 + 32);
  v1 = [MEMORY[0x277D2C900] futureWithErrorOnlyHandlerAdapterBlock:v3];

  return v1;
}

void __57__HFActionSetBuilder__legacyCommitItemWithOperationType___block_invoke_2_49(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v6 = [v3 actionSet];
  v5 = [*(a1 + 32) name];
  [v6 updateName:v5 completionHandler:v4];
}

void __57__HFActionSetBuilder__legacyCommitItemWithOperationType___block_invoke_3_51(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [*(a1 + 32) actionSet];
  [WeakRetained notifyObserversForRenamedActionSet:v3];

  v4 = HFLogForCategory(0x2BuLL);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [*(a1 + 32) name];
    v7 = 138412290;
    v8 = v5;
    _os_log_impl(&dword_20D9BF000, v4, OS_LOG_TYPE_DEFAULT, "Updated action set name:%@.", &v7, 0xCu);
  }

  v6 = *MEMORY[0x277D85DE8];
}

void __57__HFActionSetBuilder__legacyCommitItemWithOperationType___block_invoke_53(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = +[HFErrorHandler sharedHandler];
  [v4 logError:v3 operationDescription:@"HFActionSetBuilder.updateName"];

  v5 = HFLogForCategory(0x2BuLL);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    v7 = [*(a1 + 32) name];
    v8 = 138412546;
    v9 = v7;
    v10 = 2112;
    v11 = v3;
    _os_log_error_impl(&dword_20D9BF000, v5, OS_LOG_TYPE_ERROR, "2 Failed to update action set name name:%@. Error: %@", &v8, 0x16u);
  }

  v6 = *MEMORY[0x277D85DE8];
}

id __57__HFActionSetBuilder__legacyCommitItemWithOperationType___block_invoke_58(uint64_t a1, void *a2)
{
  if (*(a1 + 32) == @"HFOperationAddActionSet")
  {
    v5 = *(a1 + 40);
    v6 = a2;
    [v5 deleteActionSet];
  }

  else
  {
    v3 = MEMORY[0x277D2C900];
    v4 = a2;
    [v3 futureWithNoResult];
  }
  v7 = ;
  v8 = [MEMORY[0x277D2C900] futureWithError:a2];

  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __57__HFActionSetBuilder__legacyCommitItemWithOperationType___block_invoke_2_59;
  v16[3] = &unk_277DF2CE0;
  v9 = v8;
  v17 = v9;
  v10 = [v7 flatMap:v16];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __57__HFActionSetBuilder__legacyCommitItemWithOperationType___block_invoke_3_60;
  v14[3] = &unk_277DF5038;
  v15 = v9;
  v11 = v9;
  v12 = [v10 recover:v14];

  return v12;
}

- (id)_lazilyClearApplicationData
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __49__HFActionSetBuilder__lazilyClearApplicationData__block_invoke;
  v4[3] = &unk_277DF29A0;
  v4[4] = self;
  v2 = [MEMORY[0x277D2C900] lazyFutureWithBlock:v4];

  return v2;
}

void __49__HFActionSetBuilder__lazilyClearApplicationData__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v5 = [v2 actionSet];
  v4 = [v3 errorOnlyCompletionHandlerAdapter];

  [v5 updateApplicationData:0 completionHandler:v4];
}

- (id)_lazilyUpdateIncludedContext
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __50__HFActionSetBuilder__lazilyUpdateIncludedContext__block_invoke;
  v4[3] = &unk_277DF29A0;
  v4[4] = self;
  v2 = [MEMORY[0x277D2C900] lazyFutureWithBlock:v4];

  return v2;
}

void __50__HFActionSetBuilder__lazilyUpdateIncludedContext__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v6 = [v2 _updateValueForContextType:3];
  v4 = [v3 completionHandlerAdapter];

  v5 = [v6 addCompletionBlock:v4];
}

- (id)_updateValueForContextType:(unint64_t)type
{
  showInHomeDashboard = 0;
  if (type <= 1)
  {
    if (type)
    {
      if (type != 1)
      {
        goto LABEL_10;
      }

      NSLog(&cfstr_ActionsetSValu_0.isa, a2);
      goto LABEL_9;
    }

LABEL_8:
    NSLog(&cfstr_ActionsetSValu.isa, a2);
LABEL_9:
    showInHomeDashboard = 0;
    goto LABEL_10;
  }

  if (type == 2)
  {
    goto LABEL_8;
  }

  if (type == 3)
  {
    showInHomeDashboard = [(HFActionSetBuilder *)self showInHomeDashboard];
  }

LABEL_10:
  actionSet = [(HFAbstractBaseActionSetBuilder *)self actionSet];
  if (showInHomeDashboard == [actionSet hf_isOnForContextType:type])
  {
    actionSet2 = [(HFAbstractBaseActionSetBuilder *)self actionSet];
    v8 = [actionSet2 hf_hasSetForContextType:type];

    if (v8)
    {
      futureWithNoResult = [MEMORY[0x277D2C900] futureWithNoResult];
      goto LABEL_15;
    }
  }

  else
  {
  }

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __49__HFActionSetBuilder__updateValueForContextType___block_invoke;
  v11[3] = &unk_277DF7088;
  v12 = showInHomeDashboard;
  v11[4] = self;
  v11[5] = type;
  futureWithNoResult = [MEMORY[0x277D2C900] futureWithBlock:v11];
LABEL_15:

  return futureWithNoResult;
}

void __49__HFActionSetBuilder__updateValueForContextType___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) actionSet];
  v5 = [v4 hf_updateValue:*(a1 + 48) forContextType:*(a1 + 40)];

  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __49__HFActionSetBuilder__updateValueForContextType___block_invoke_2;
  v10[3] = &unk_277E00060;
  v13 = *(a1 + 48);
  v7 = *(a1 + 32);
  v6 = *(a1 + 40);
  v11 = v3;
  v12 = v6;
  v10[4] = v7;
  v8 = v3;
  v9 = [v5 addCompletionBlock:v10];
}

void __49__HFActionSetBuilder__updateValueForContextType___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v26 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a2;
  v7 = HFLogForCategory(0x2BuLL);
  v8 = v7;
  if (v5)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v9 = *(a1 + 56);
      v10 = *(a1 + 48);
      v11 = [*(a1 + 32) actionSet];
      v12 = [v11 hf_prettyDescription];
      *buf = 67109890;
      v19 = v9;
      v20 = 2048;
      v21 = v10;
      v22 = 2112;
      v23 = v12;
      v24 = 2112;
      v25 = v5;
      _os_log_error_impl(&dword_20D9BF000, v8, OS_LOG_TYPE_ERROR, "Failed to set state:%{BOOL}d for context type:%lu for actionSet:%@. Error: %@", buf, 0x26u);
LABEL_6:
    }
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v13 = *(a1 + 56);
    v14 = *(a1 + 48);
    v11 = [*(a1 + 32) actionSet];
    v12 = [v11 hf_prettyDescription];
    *buf = 67109634;
    v19 = v13;
    v20 = 2048;
    v21 = v14;
    v22 = 2112;
    v23 = v12;
    _os_log_impl(&dword_20D9BF000, v8, OS_LOG_TYPE_DEFAULT, "Set state:%{BOOL}d for context type:%lu for actionSet:%@", buf, 0x1Cu);
    goto LABEL_6;
  }

  v15 = +[HFHomeKitDispatcher sharedDispatcher];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __49__HFActionSetBuilder__updateValueForContextType___block_invoke_68;
  v17[3] = &unk_277DF2CB8;
  v17[4] = *(a1 + 32);
  [v15 dispatchHomeObserverMessage:v17 sender:0];

  [*(a1 + 40) finishWithResult:v6 error:v5];
  v16 = *MEMORY[0x277D85DE8];
}

void __49__HFActionSetBuilder__updateValueForContextType___block_invoke_68(uint64_t a1, void *a2)
{
  v5 = a2;
  if (objc_opt_respondsToSelector())
  {
    v3 = [*(a1 + 32) home];
    v4 = [*(a1 + 32) actionSet];
    [v5 home:v3 didUpdateApplicationDataForActionSet:v4];
  }
}

- (id)_lazilyUpdateIcon
{
  actionSet = [(HFAbstractBaseActionSetBuilder *)self actionSet];
  hf_iconDescriptor = [actionSet hf_iconDescriptor];
  identifier = [hf_iconDescriptor identifier];

  actionSet2 = [(HFAbstractBaseActionSetBuilder *)self actionSet];
  hf_iconTintColor = [actionSet2 hf_iconTintColor];

  iconDescriptor = [(HFActionSetBuilder *)self iconDescriptor];
  identifier2 = [iconDescriptor identifier];
  v10 = [identifier isEqualToString:identifier2];

  if (v10 && (-[HFActionSetBuilder iconTintColor](self, "iconTintColor"), v11 = objc_claimAutoreleasedReturnValue(), v12 = [hf_iconTintColor isEqual:v11], v11, v12))
  {
    futureWithNoResult = [MEMORY[0x277D2C900] futureWithNoResult];
  }

  else
  {
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __39__HFActionSetBuilder__lazilyUpdateIcon__block_invoke;
    v16[3] = &unk_277DF29A0;
    v16[4] = self;
    futureWithNoResult = [MEMORY[0x277D2C900] lazyFutureWithBlock:v16];
  }

  v14 = futureWithNoResult;

  return v14;
}

void __39__HFActionSetBuilder__lazilyUpdateIcon__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) iconDescriptor];
  v5 = [v4 isSystemImage];

  if ((v5 & 1) == 0)
  {
    v6 = [*(a1 + 32) iconDescriptor];
    NSLog(&cfstr_ActionSetBuild.isa, v6);
  }

  v7 = [*(a1 + 32) actionSet];
  v8 = [*(a1 + 32) iconDescriptor];
  v9 = [v8 identifier];
  v10 = [*(a1 + 32) iconTintColor];
  v11 = [v7 hf_setIconIdentifier:v9 andTintColor:v10];

  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __39__HFActionSetBuilder__lazilyUpdateIcon__block_invoke_2;
  v14[3] = &unk_277DF50B0;
  v14[4] = *(a1 + 32);
  v15 = v3;
  v12 = v3;
  v13 = [v11 addCompletionBlock:v14];
}

void __39__HFActionSetBuilder__lazilyUpdateIcon__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a2;
  v7 = HFLogForCategory(0x2BuLL);
  v8 = v7;
  if (v5)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v9 = [*(a1 + 32) iconDescriptor];
      v10 = [v9 identifier];
      v11 = [*(a1 + 32) actionSet];
      v12 = [v11 hf_prettyDescription];
      *buf = 138412802;
      v17 = v10;
      v18 = 2112;
      v19 = v12;
      v20 = 2112;
      v21 = v5;
      _os_log_error_impl(&dword_20D9BF000, v8, OS_LOG_TYPE_ERROR, "Failed to set icon:%@ for actionSet:%@. Error: %@", buf, 0x20u);
LABEL_6:
    }
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [*(a1 + 32) iconDescriptor];
    v10 = [v9 identifier];
    v11 = [*(a1 + 32) actionSet];
    v12 = [v11 hf_prettyDescription];
    *buf = 138412546;
    v17 = v10;
    v18 = 2112;
    v19 = v12;
    _os_log_impl(&dword_20D9BF000, v8, OS_LOG_TYPE_DEFAULT, "Set icon:%@ for actionSet:%@", buf, 0x16u);
    goto LABEL_6;
  }

  v13 = +[HFHomeKitDispatcher sharedDispatcher];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __39__HFActionSetBuilder__lazilyUpdateIcon__block_invoke_74;
  v15[3] = &unk_277DF2CB8;
  v15[4] = *(a1 + 32);
  [v13 dispatchHomeObserverMessage:v15 sender:0];

  [*(a1 + 40) finishWithResult:v6 error:v5];
  v14 = *MEMORY[0x277D85DE8];
}

void __39__HFActionSetBuilder__lazilyUpdateIcon__block_invoke_74(uint64_t a1, void *a2)
{
  v5 = a2;
  if (objc_opt_respondsToSelector())
  {
    v3 = [*(a1 + 32) home];
    v4 = [*(a1 + 32) actionSet];
    [v5 home:v3 didUpdateApplicationDataForActionSet:v4];
  }
}

- (id)_deleteActionSet:(id)set fromHome:(id)home
{
  setCopy = set;
  homeCopy = home;
  uniqueIdentifier = [setCopy uniqueIdentifier];

  if (homeCopy && uniqueIdentifier)
  {
    actionSetType = [setCopy actionSetType];
    v10 = [actionSetType isEqualToString:*MEMORY[0x277CCF1A8]];
    v11 = MEMORY[0x277D2C900];
    if (v10)
    {
      v28[0] = MEMORY[0x277D85DD0];
      v28[1] = 3221225472;
      v28[2] = __48__HFActionSetBuilder__deleteActionSet_fromHome___block_invoke;
      v28[3] = &unk_277DF4150;
      v12 = homeCopy;
      v29 = v12;
      v13 = setCopy;
      v30 = v13;
      v14 = [v11 futureWithErrorOnlyHandlerAdapterBlock:v28];
      v24[0] = MEMORY[0x277D85DD0];
      v24[1] = 3221225472;
      v24[2] = __48__HFActionSetBuilder__deleteActionSet_fromHome___block_invoke_2;
      v24[3] = &unk_277DF3180;
      v25 = v12;
      v26 = v13;
      selfCopy = self;
      v15 = [v14 addCompletionBlock:v24];

      v16 = v29;
    }

    else
    {
      v22[0] = MEMORY[0x277D85DD0];
      v22[1] = 3221225472;
      v22[2] = __48__HFActionSetBuilder__deleteActionSet_fromHome___block_invoke_79;
      v22[3] = &unk_277DF28D8;
      v22[4] = self;
      v23 = setCopy;
      v15 = [v11 futureWithBlock:v22];
      v16 = v23;
    }

    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __48__HFActionSetBuilder__deleteActionSet_fromHome___block_invoke_80;
    v20[3] = &unk_277DF2CE0;
    v21 = actionSetType;
    v18 = actionSetType;
    futureWithNoResult = [v15 flatMap:v20];
  }

  else
  {
    futureWithNoResult = [MEMORY[0x277D2C900] futureWithNoResult];
  }

  return futureWithNoResult;
}

void __48__HFActionSetBuilder__deleteActionSet_fromHome___block_invoke_2(id *a1, uint64_t a2, void *a3)
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = +[HFHomeKitDispatcher sharedDispatcher];
  v11 = MEMORY[0x277D85DD0];
  v12 = 3221225472;
  v13 = __48__HFActionSetBuilder__deleteActionSet_fromHome___block_invoke_3;
  v14 = &unk_277DF3810;
  v15 = a1[4];
  v16 = a1[5];
  [v5 dispatchHomeObserverMessage:&v11 sender:0];

  [a1[6] setActionSet:{0, v11, v12, v13, v14}];
  [a1[6] setIsActionSetDeleted:1];
  v6 = HFLogForCategory(0x2BuLL);
  v7 = v6;
  if (v4)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v8 = [a1[5] hf_prettyDescription];
      v9 = [a1[6] home];
      *buf = 138412802;
      v18 = v4;
      v19 = 2112;
      v20 = v8;
      v21 = 2112;
      v22 = v9;
      _os_log_error_impl(&dword_20D9BF000, v7, OS_LOG_TYPE_ERROR, "Failed to delete actionSet (error = %@) :%@ home:%@", buf, 0x20u);
LABEL_6:
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [a1[5] hf_prettyDescription];
    v9 = [a1[6] home];
    *buf = 138412546;
    v18 = v8;
    v19 = 2112;
    v20 = v9;
    _os_log_impl(&dword_20D9BF000, v7, OS_LOG_TYPE_DEFAULT, "Deleted actionSet:%@ home:%@", buf, 0x16u);
    goto LABEL_6;
  }

  v10 = *MEMORY[0x277D85DE8];
}

void __48__HFActionSetBuilder__deleteActionSet_fromHome___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 home:*(a1 + 32) didRemoveActionSet:*(a1 + 40)];
  }
}

void __48__HFActionSetBuilder__deleteActionSet_fromHome___block_invoke_79(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v4 = a2;
  [v3 removeAllActions];
  [*(a1 + 32) setShouldClearApplicationData:1];
  v5 = HFLogForCategory(0x2BuLL);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [*(a1 + 40) hf_prettyDescription];
    v7 = [*(a1 + 32) home];
    v9 = 138412546;
    v10 = v6;
    v11 = 2112;
    v12 = v7;
    _os_log_impl(&dword_20D9BF000, v5, OS_LOG_TYPE_DEFAULT, "Removed all actions from actionSet:%@ home:%@", &v9, 0x16u);
  }

  [v4 finishWithNoResult];
  v8 = *MEMORY[0x277D85DE8];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v11.receiver = self;
  v11.super_class = HFActionSetBuilder;
  v5 = [(HFAbstractBaseActionSetBuilder *)&v11 copyWithZone:?];
  name = [(HFActionSetBuilder *)self name];
  v7 = [name copyWithZone:zone];
  [v5 setName:v7];

  [v5 setShowInHomeDashboard:{-[HFActionSetBuilder showInHomeDashboard](self, "showInHomeDashboard")}];
  iconDescriptor = [(HFActionSetBuilder *)self iconDescriptor];
  [v5 setIconDescriptor:iconDescriptor];

  iconTintColor = [(HFActionSetBuilder *)self iconTintColor];
  [v5 setIconTintColor:iconTintColor];

  [v5 setIsActionSetDeleted:{-[HFActionSetBuilder isActionSetDeleted](self, "isActionSetDeleted")}];
  return v5;
}

@end