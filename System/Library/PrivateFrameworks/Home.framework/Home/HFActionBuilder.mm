@interface HFActionBuilder
+ (id)actionBuilderForAction:(id)action inHome:(id)home;
- (BOOL)hasSameTargetAsAction:(id)action;
- (BOOL)hasSameTargetAsActionBuilder:(id)builder;
- (BOOL)isAffectedByEndEvents;
- (BOOL)isEquivalentToAction:(id)action;
- (NSArray)containedAccessoryRepresentables;
- (NSString)debugDescription;
- (id)compareToObject:(id)object;
- (id)copyForCreatingNewAction;
- (id)createNewAction;
- (id)getOrCreateAction;
- (id)performValidation;
- (id)validationError;
- (unint64_t)hash;
@end

@implementation HFActionBuilder

+ (id)actionBuilderForAction:(id)action inHome:(id)home
{
  actionCopy = action;
  homeCopy = home;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = HFCharacteristicWriteActionBuilder;
LABEL_11:
    v8 = [[v7 alloc] initWithExistingObject:actionCopy inHome:homeCopy];
    goto LABEL_12;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = HFMediaPlaybackActionBuilder;
    goto LABEL_11;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = HFShortcutActionBuilder;
    goto LABEL_11;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = HFNaturalLightingActionBuilder;
    goto LABEL_11;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = HFMatterCommandActionBuilder;
    goto LABEL_11;
  }

  v10 = objc_opt_class();
  NSLog(&cfstr_UnknownActionT.isa, v10);
  v8 = 0;
LABEL_12:

  return v8;
}

- (id)copyForCreatingNewAction
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"HFActionBuilder.m" lineNumber:92 description:{@"%s is an abstract method that must be overriden by subclass %@", "-[HFActionBuilder copyForCreatingNewAction]", objc_opt_class()}];

  return 0;
}

- (id)getOrCreateAction
{
  action = [(HFActionBuilder *)self action];
  if (!action)
  {
    action = [(HFActionBuilder *)self createNewAction];
  }

  return action;
}

- (id)createNewAction
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"HFActionBuilder.m" lineNumber:109 description:{@"%s is an abstract method that must be overriden by subclass %@", "-[HFActionBuilder createNewAction]", objc_opt_class()}];

  return 0;
}

- (BOOL)isAffectedByEndEvents
{
  v2 = MEMORY[0x277CD19F8];
  createNewAction = [(HFActionBuilder *)self createNewAction];
  LOBYTE(v2) = [v2 isActionAffectedByEndEvents:createNewAction];

  return v2;
}

- (BOOL)isEquivalentToAction:(id)action
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"HFActionBuilder.m" lineNumber:120 description:{@"%s is an abstract method that must be overriden by subclass %@", "-[HFActionBuilder isEquivalentToAction:]", objc_opt_class()}];

  return 0;
}

- (BOOL)hasSameTargetAsAction:(id)action
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"HFActionBuilder.m" lineNumber:126 description:{@"%s is an abstract method that must be overriden by subclass %@", "-[HFActionBuilder hasSameTargetAsAction:]", objc_opt_class()}];

  return 0;
}

- (BOOL)hasSameTargetAsActionBuilder:(id)builder
{
  builderCopy = builder;
  v5 = __48__HFActionBuilder_hasSameTargetAsActionBuilder___block_invoke(self);
  v6 = __48__HFActionBuilder_hasSameTargetAsActionBuilder___block_invoke(builderCopy);

  LOBYTE(builderCopy) = [v5 isEqualToArray:v6];
  return builderCopy;
}

id __48__HFActionBuilder_hasSameTargetAsActionBuilder___block_invoke(void *a1)
{
  v1 = a1;
  objc_opt_class();
  v2 = v1;
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  objc_opt_class();
  v5 = v2;
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  if (v4)
  {
    v8 = [v4 lightProfile];
    v9 = [v8 services];
LABEL_11:
    v11 = v9;

    goto LABEL_12;
  }

  if (v7)
  {
    v10 = [v7 characteristic];
    v8 = [v10 service];

    v9 = [MEMORY[0x277CBEA60] na_arrayWithSafeObject:v8];
    goto LABEL_11;
  }

  v11 = 0;
LABEL_12:

  return v11;
}

- (id)performValidation
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"HFActionBuilder.m" lineNumber:160 description:{@"%s is an abstract method that must be overriden by subclass %@", "-[HFActionBuilder performValidation]", objc_opt_class()}];

  v5 = MEMORY[0x277D2C900];

  return [v5 futureWithNoResult];
}

- (id)validationError
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"HFActionBuilder.m" lineNumber:166 description:{@"%s is an abstract method that must be overriden by subclass %@", "-[HFActionBuilder validationError]", objc_opt_class()}];

  return 0;
}

- (NSArray)containedAccessoryRepresentables
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"HFActionBuilder.m" lineNumber:172 description:{@"%s is an abstract method that must be overriden by subclass %@", "-[HFActionBuilder containedAccessoryRepresentables]", objc_opt_class()}];

  if (_MergedGlobals_6_1 != -1)
  {
    dispatch_once(&_MergedGlobals_6_1, &__block_literal_global_30_2);
  }

  v5 = qword_27C84C468;

  return v5;
}

void __51__HFActionBuilder_containedAccessoryRepresentables__block_invoke_2()
{
  v0 = [MEMORY[0x277CBEA60] array];
  v1 = qword_27C84C468;
  qword_27C84C468 = v0;
}

- (NSString)debugDescription
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = [(HFActionBuilder *)self description];
  v6 = [v3 stringWithFormat:@"<%@: %p> %@", v4, self, v5];

  return v6;
}

- (id)compareToObject:(id)object
{
  objectCopy = object;
  v5 = [[HFComparisonResult alloc] initWithObjectA:self objectB:objectCopy];

  if (!objectCopy)
  {
    v6 = [HFDifference difference:@"comparedToNil" priority:4];
    [(HFComparisonResult *)v5 add:v6];
  }

  return v5;
}

- (unint64_t)hash
{
  v2 = objc_opt_class();

  return [v2 hash];
}

@end