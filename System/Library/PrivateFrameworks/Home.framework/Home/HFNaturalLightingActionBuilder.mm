@interface HFNaturalLightingActionBuilder
- (BOOL)canUpdateWithActionBuilder:(id)builder;
- (BOOL)hasSameTargetAsAction:(id)action;
- (BOOL)updateWithActionBuilder:(id)builder;
- (HFNaturalLightingActionBuilder)initWithExistingObject:(id)object inHome:(id)home;
- (id)commitItem;
- (id)compareToObject:(id)object;
- (id)containedAccessoryRepresentables;
- (id)copyForCreatingNewAction;
- (id)createNewAction;
- (id)description;
- (unint64_t)hash;
- (void)setLightProfile:(id)profile;
@end

@implementation HFNaturalLightingActionBuilder

- (HFNaturalLightingActionBuilder)initWithExistingObject:(id)object inHome:(id)home
{
  v13.receiver = self;
  v13.super_class = HFNaturalLightingActionBuilder;
  v4 = [(HFItemBuilder *)&v13 initWithExistingObject:object inHome:home];
  if (v4)
  {
    objc_opt_class();
    action = [(HFActionBuilder *)v4 action];
    if (objc_opt_isKindOfClass())
    {
      v6 = action;
    }

    else
    {
      v6 = 0;
    }

    v7 = v6;

    lightProfile = [v7 lightProfile];
    lightProfile = v4->_lightProfile;
    v4->_lightProfile = lightProfile;

    isNaturalLightingEnabled = [v7 isNaturalLightingEnabled];
    v4->_naturalLightEnabled = isNaturalLightingEnabled;
    if (!v4->_lightProfile)
    {
      action2 = [(HFActionBuilder *)v4 action];

      if (action2)
      {
        NSLog(&cfstr_FailedToGetLig.isa);
      }
    }
  }

  return v4;
}

- (id)copyForCreatingNewAction
{
  v3 = objc_alloc(objc_opt_class());
  home = [(HFItemBuilder *)self home];
  v5 = [v3 initWithHome:home];

  lightProfile = [(HFNaturalLightingActionBuilder *)self lightProfile];
  [v5 setLightProfile:lightProfile];

  [v5 setNaturalLightEnabled:{-[HFNaturalLightingActionBuilder naturalLightEnabled](self, "naturalLightEnabled")}];
  return v5;
}

- (id)description
{
  v3 = [MEMORY[0x277D2C8F8] builderWithObject:self];
  v4 = [v3 appendBool:-[HFNaturalLightingActionBuilder naturalLightEnabled](self withName:{"naturalLightEnabled"), @"naturalLightEnabled"}];
  lightProfile = [(HFNaturalLightingActionBuilder *)self lightProfile];
  v6 = [v3 appendObject:lightProfile withName:@"lightProfile"];

  build = [v3 build];

  return build;
}

- (BOOL)canUpdateWithActionBuilder:(id)builder
{
  builderCopy = builder;
  objc_opt_class();
  v5 = builderCopy;
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  lightProfile = [v7 lightProfile];
  lightProfile2 = [(HFNaturalLightingActionBuilder *)self lightProfile];
  v10 = [lightProfile isEqual:lightProfile2];

  return v10;
}

- (BOOL)updateWithActionBuilder:(id)builder
{
  builderCopy = builder;
  if ([(HFNaturalLightingActionBuilder *)self canUpdateWithActionBuilder:builderCopy])
  {
    objc_opt_class();
    v5 = builderCopy;
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }

    v7 = v6;

    if (!v7 || (v8 = -[HFNaturalLightingActionBuilder naturalLightEnabled](self, "naturalLightEnabled"), v8 == [v7 naturalLightEnabled]))
    {
      v9 = 0;
    }

    else
    {
      -[HFNaturalLightingActionBuilder setNaturalLightEnabled:](self, "setNaturalLightEnabled:", [v7 naturalLightEnabled]);
      v9 = 1;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)createNewAction
{
  lightProfile = [(HFNaturalLightingActionBuilder *)self lightProfile];

  if (lightProfile)
  {
    v4 = objc_alloc(MEMORY[0x277CD1B20]);
    lightProfile2 = [(HFNaturalLightingActionBuilder *)self lightProfile];
    v6 = [v4 initWithLightProfile:lightProfile2 naturalLightingEnabled:{-[HFNaturalLightingActionBuilder naturalLightEnabled](self, "naturalLightEnabled")}];
  }

  else
  {
    v7 = HFLogForCategory(0x2BuLL);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&dword_20D9BF000, v7, OS_LOG_TYPE_DEFAULT, "HFNaturalLightingActionBuilder doesn't have a light profile, so returning nil for -createNewAction", v9, 2u);
    }

    v6 = 0;
  }

  return v6;
}

- (BOOL)hasSameTargetAsAction:(id)action
{
  actionCopy = action;
  objc_opt_class();
  v5 = actionCopy;
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  if (v7)
  {
    lightProfile = [(HFNaturalLightingActionBuilder *)self lightProfile];
    lightProfile2 = [v7 lightProfile];
    v10 = [lightProfile isEqual:lightProfile2];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)containedAccessoryRepresentables
{
  lightProfile = [(HFNaturalLightingActionBuilder *)self lightProfile];
  services = [lightProfile services];
  v4 = [services copy];

  return v4;
}

- (id)commitItem
{
  performValidation = [(HFNaturalLightingActionBuilder *)self performValidation];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __44__HFNaturalLightingActionBuilder_commitItem__block_invoke;
  v7[3] = &unk_277DF2CE0;
  v7[4] = self;
  v4 = [performValidation flatMap:v7];
  v5 = [v4 recover:&__block_literal_global_356];

  return v5;
}

id __44__HFNaturalLightingActionBuilder_commitItem__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) action];

  if (v2)
  {
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __44__HFNaturalLightingActionBuilder_commitItem__block_invoke_2;
    v11[3] = &unk_277DF2C68;
    v11[4] = *(a1 + 32);
    v3 = [MEMORY[0x277D2C900] futureWithErrorOnlyHandlerAdapterBlock:v11];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __44__HFNaturalLightingActionBuilder_commitItem__block_invoke_3;
    v10[3] = &unk_277DF2CE0;
    v10[4] = *(a1 + 32);
    v4 = [v3 flatMap:v10];
  }

  else
  {
    v5 = [*(a1 + 32) createNewAction];
    [*(a1 + 32) setAction:v5];

    v6 = [*(a1 + 32) action];

    v7 = MEMORY[0x277D2C900];
    if (v6)
    {
      v8 = [*(a1 + 32) action];
      [v7 futureWithResult:v8];
    }

    else
    {
      v8 = [MEMORY[0x277CCA9B8] hf_errorWithCode:-1];
      [v7 futureWithError:v8];
    }
    v4 = ;
  }

  return v4;
}

void __44__HFNaturalLightingActionBuilder_commitItem__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 action];
  [v5 updateNaturalLightingEnabled:objc_msgSend(*(a1 + 32) completionHandler:{"naturalLightEnabled"), v4}];
}

id __44__HFNaturalLightingActionBuilder_commitItem__block_invoke_3(uint64_t a1)
{
  v1 = MEMORY[0x277D2C900];
  v2 = [*(a1 + 32) action];
  v3 = [v1 futureWithResult:v2];

  return v3;
}

id __44__HFNaturalLightingActionBuilder_commitItem__block_invoke_4(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277D2C900];
  v3 = [a2 hf_errorWithOperationType:@"HFOperationEditActionSet" failedItemName:0];
  v4 = [v2 futureWithError:v3];

  return v4;
}

- (void)setLightProfile:(id)profile
{
  profileCopy = profile;
  action = [(HFActionBuilder *)self action];

  if (action)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HFActionBuilder.m" lineNumber:1038 description:@"Cannot change the lightProfile for an existing action!"];
  }

  lightProfile = self->_lightProfile;
  self->_lightProfile = profileCopy;
}

- (id)compareToObject:(id)object
{
  objectCopy = object;
  v13.receiver = self;
  v13.super_class = HFNaturalLightingActionBuilder;
  v5 = [(HFActionBuilder *)&v13 compareToObject:objectCopy];
  if (([v5 containsCriticalDifference] & 1) == 0)
  {
    lightProfile = [(HFNaturalLightingActionBuilder *)self lightProfile];
    lightProfile2 = [objectCopy lightProfile];
    v8 = [HFPropertyDifference compareObjectA:lightProfile toObjectB:lightProfile2 key:@"lightProfile" priority:3];
    [v5 add:v8];

    v9 = [MEMORY[0x277CCABB0] numberWithBool:{-[HFNaturalLightingActionBuilder naturalLightEnabled](self, "naturalLightEnabled")}];
    v10 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(objectCopy, "naturalLightEnabled")}];
    v11 = [HFPropertyDifference compareObjectA:v9 toObjectB:v10 key:@"naturalLightEnabled" priority:2];
    [v5 add:v11];
  }

  return v5;
}

- (unint64_t)hash
{
  v3 = [objc_opt_class() hash];
  lightProfile = [(HFNaturalLightingActionBuilder *)self lightProfile];
  uniqueIdentifier = [lightProfile uniqueIdentifier];
  v6 = [uniqueIdentifier hash];

  return v6 ^ v3;
}

@end