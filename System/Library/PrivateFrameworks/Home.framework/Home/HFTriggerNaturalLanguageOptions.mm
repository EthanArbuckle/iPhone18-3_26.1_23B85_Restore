@interface HFTriggerNaturalLanguageOptions
+ (HFTriggerNaturalLanguageOptions)optionsWithHome:(id)a3 nameType:(unint64_t)a4;
- (HFTriggerNaturalLanguageOptions)initWithHome:(id)a3 nameType:(unint64_t)a4 actions:(id)a5;
- (HMUser)locationEventUser;
- (id)copyWithZone:(_NSZone *)a3;
- (void)_copyFromOptions:(id)a3;
- (void)setObjectsInContext:(id)a3;
@end

@implementation HFTriggerNaturalLanguageOptions

- (HFTriggerNaturalLanguageOptions)initWithHome:(id)a3 nameType:(unint64_t)a4 actions:(id)a5
{
  v9 = a3;
  v10 = a5;
  v18.receiver = self;
  v18.super_class = HFTriggerNaturalLanguageOptions;
  v11 = [(HFNaturalLanguageOptions *)&v18 init];
  v12 = v11;
  if (v11)
  {
    v11->_nameType = a4;
    objc_storeStrong(&v11->_home, a3);
    v12->_formattingStyle = 2;
    v13 = [MEMORY[0x277CBEB98] set];
    objectsInContext = v12->_objectsInContext;
    v12->_objectsInContext = v13;

    v12->_shouldUseFullDayNames = 0;
    v12->_shouldUseFirstPersonPronounIfPossible = 0;
    if ([v10 count])
    {
      objc_storeStrong(&v12->_actions, a5);
      v15 = [[HFActionNaturalLanguageOptions alloc] initWithHome:v9 formattingContext:5];
      actionNaturalLanguageOptions = v12->_actionNaturalLanguageOptions;
      v12->_actionNaturalLanguageOptions = v15;
    }
  }

  return v12;
}

+ (HFTriggerNaturalLanguageOptions)optionsWithHome:(id)a3 nameType:(unint64_t)a4
{
  v5 = a3;
  v6 = [[HFTriggerNaturalLanguageOptions alloc] initWithHome:v5 nameType:a4];

  return v6;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v6.receiver = self;
  v6.super_class = HFTriggerNaturalLanguageOptions;
  v4 = [(HFNaturalLanguageOptions *)&v6 copyWithZone:a3];
  [v4 _copyFromOptions:self];
  return v4;
}

- (void)_copyFromOptions:(id)a3
{
  v4 = a3;
  -[HFTriggerNaturalLanguageOptions setNameType:](self, "setNameType:", [v4 nameType]);
  v5 = [v4 home];
  [(HFTriggerNaturalLanguageOptions *)self setHome:v5];

  v6 = [v4 actions];
  v7 = [v6 copy];
  [(HFTriggerNaturalLanguageOptions *)self setActions:v7];

  -[HFTriggerNaturalLanguageOptions setFormattingStyle:](self, "setFormattingStyle:", [v4 formattingStyle]);
  v8 = [v4 objectsInContext];
  v9 = [v8 copy];
  [(HFTriggerNaturalLanguageOptions *)self setObjectsInContext:v9];

  v10 = [v4 actionNaturalLanguageOptions];
  v11 = [v10 copy];
  [(HFTriggerNaturalLanguageOptions *)self setActionNaturalLanguageOptions:v11];

  -[HFTriggerNaturalLanguageOptions setShouldUseFullDayNames:](self, "setShouldUseFullDayNames:", [v4 shouldUseFullDayNames]);
  -[HFTriggerNaturalLanguageOptions setShouldUseFirstPersonPronounIfPossible:](self, "setShouldUseFirstPersonPronounIfPossible:", [v4 shouldUseFirstPersonPronounIfPossible]);
  v12 = [v4 locationEventUser];

  [(HFTriggerNaturalLanguageOptions *)self setLocationEventUser:v12];
}

- (void)setObjectsInContext:(id)a3
{
  v8 = a3;
  v4 = [(NSSet *)self->_objectsInContext isEqual:v8];
  v5 = v8;
  if ((v4 & 1) == 0)
  {
    if (v8)
    {
      v6 = v8;
    }

    else
    {
      v6 = [MEMORY[0x277CBEB98] set];
    }

    objectsInContext = self->_objectsInContext;
    self->_objectsInContext = v6;

    v5 = v8;
  }
}

- (HMUser)locationEventUser
{
  WeakRetained = objc_loadWeakRetained(&self->_locationEventUser);

  return WeakRetained;
}

@end