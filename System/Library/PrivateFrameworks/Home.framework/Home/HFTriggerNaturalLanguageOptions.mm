@interface HFTriggerNaturalLanguageOptions
+ (HFTriggerNaturalLanguageOptions)optionsWithHome:(id)home nameType:(unint64_t)type;
- (HFTriggerNaturalLanguageOptions)initWithHome:(id)home nameType:(unint64_t)type actions:(id)actions;
- (HMUser)locationEventUser;
- (id)copyWithZone:(_NSZone *)zone;
- (void)_copyFromOptions:(id)options;
- (void)setObjectsInContext:(id)context;
@end

@implementation HFTriggerNaturalLanguageOptions

- (HFTriggerNaturalLanguageOptions)initWithHome:(id)home nameType:(unint64_t)type actions:(id)actions
{
  homeCopy = home;
  actionsCopy = actions;
  v18.receiver = self;
  v18.super_class = HFTriggerNaturalLanguageOptions;
  v11 = [(HFNaturalLanguageOptions *)&v18 init];
  v12 = v11;
  if (v11)
  {
    v11->_nameType = type;
    objc_storeStrong(&v11->_home, home);
    v12->_formattingStyle = 2;
    v13 = [MEMORY[0x277CBEB98] set];
    objectsInContext = v12->_objectsInContext;
    v12->_objectsInContext = v13;

    v12->_shouldUseFullDayNames = 0;
    v12->_shouldUseFirstPersonPronounIfPossible = 0;
    if ([actionsCopy count])
    {
      objc_storeStrong(&v12->_actions, actions);
      v15 = [[HFActionNaturalLanguageOptions alloc] initWithHome:homeCopy formattingContext:5];
      actionNaturalLanguageOptions = v12->_actionNaturalLanguageOptions;
      v12->_actionNaturalLanguageOptions = v15;
    }
  }

  return v12;
}

+ (HFTriggerNaturalLanguageOptions)optionsWithHome:(id)home nameType:(unint64_t)type
{
  homeCopy = home;
  v6 = [[HFTriggerNaturalLanguageOptions alloc] initWithHome:homeCopy nameType:type];

  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v6.receiver = self;
  v6.super_class = HFTriggerNaturalLanguageOptions;
  v4 = [(HFNaturalLanguageOptions *)&v6 copyWithZone:zone];
  [v4 _copyFromOptions:self];
  return v4;
}

- (void)_copyFromOptions:(id)options
{
  optionsCopy = options;
  -[HFTriggerNaturalLanguageOptions setNameType:](self, "setNameType:", [optionsCopy nameType]);
  home = [optionsCopy home];
  [(HFTriggerNaturalLanguageOptions *)self setHome:home];

  actions = [optionsCopy actions];
  v7 = [actions copy];
  [(HFTriggerNaturalLanguageOptions *)self setActions:v7];

  -[HFTriggerNaturalLanguageOptions setFormattingStyle:](self, "setFormattingStyle:", [optionsCopy formattingStyle]);
  objectsInContext = [optionsCopy objectsInContext];
  v9 = [objectsInContext copy];
  [(HFTriggerNaturalLanguageOptions *)self setObjectsInContext:v9];

  actionNaturalLanguageOptions = [optionsCopy actionNaturalLanguageOptions];
  v11 = [actionNaturalLanguageOptions copy];
  [(HFTriggerNaturalLanguageOptions *)self setActionNaturalLanguageOptions:v11];

  -[HFTriggerNaturalLanguageOptions setShouldUseFullDayNames:](self, "setShouldUseFullDayNames:", [optionsCopy shouldUseFullDayNames]);
  -[HFTriggerNaturalLanguageOptions setShouldUseFirstPersonPronounIfPossible:](self, "setShouldUseFirstPersonPronounIfPossible:", [optionsCopy shouldUseFirstPersonPronounIfPossible]);
  locationEventUser = [optionsCopy locationEventUser];

  [(HFTriggerNaturalLanguageOptions *)self setLocationEventUser:locationEventUser];
}

- (void)setObjectsInContext:(id)context
{
  contextCopy = context;
  v4 = [(NSSet *)self->_objectsInContext isEqual:contextCopy];
  v5 = contextCopy;
  if ((v4 & 1) == 0)
  {
    if (contextCopy)
    {
      v6 = contextCopy;
    }

    else
    {
      v6 = [MEMORY[0x277CBEB98] set];
    }

    objectsInContext = self->_objectsInContext;
    self->_objectsInContext = v6;

    v5 = contextCopy;
  }
}

- (HMUser)locationEventUser
{
  WeakRetained = objc_loadWeakRetained(&self->_locationEventUser);

  return WeakRetained;
}

@end