@interface HFActionNaturalLanguageOptions
- (HFActionNaturalLanguageOptions)initWithHome:(id)home formattingContext:(int64_t)context;
- (id)copyWithZone:(_NSZone *)zone;
- (void)setObjectsInContext:(id)context;
@end

@implementation HFActionNaturalLanguageOptions

- (HFActionNaturalLanguageOptions)initWithHome:(id)home formattingContext:(int64_t)context
{
  homeCopy = home;
  v13.receiver = self;
  v13.super_class = HFActionNaturalLanguageOptions;
  v8 = [(HFSubstringNaturalLanguageOptions *)&v13 initWithFormattingContext:context formattingStyle:3];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_home, home);
    v10 = [MEMORY[0x277CBEB98] set];
    objectsInContext = v9->_objectsInContext;
    v9->_objectsInContext = v10;

    v9->_useMediaContainersNotInContext = 0;
    v9->_ignoreOptionalCharacteristics = 0;
    v9->_accessoryCountType = 0;
  }

  return v9;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v9.receiver = self;
  v9.super_class = HFActionNaturalLanguageOptions;
  v4 = [(HFSubstringNaturalLanguageOptions *)&v9 copyWithZone:zone];
  home = [(HFActionNaturalLanguageOptions *)self home];
  [v4 setHome:home];

  [v4 setFormattingStyle:{-[HFSubstringNaturalLanguageOptions formattingStyle](self, "formattingStyle")}];
  objectsInContext = [(HFActionNaturalLanguageOptions *)self objectsInContext];
  v7 = [objectsInContext copy];
  [v4 setObjectsInContext:v7];

  [v4 setUseMediaContainersNotInContext:{-[HFActionNaturalLanguageOptions useMediaContainersNotInContext](self, "useMediaContainersNotInContext")}];
  [v4 setIgnoreOptionalCharacteristics:{-[HFActionNaturalLanguageOptions ignoreOptionalCharacteristics](self, "ignoreOptionalCharacteristics")}];
  return v4;
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

@end