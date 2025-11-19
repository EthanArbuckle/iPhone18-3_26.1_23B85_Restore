@interface HFActionNaturalLanguageOptions
- (HFActionNaturalLanguageOptions)initWithHome:(id)a3 formattingContext:(int64_t)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (void)setObjectsInContext:(id)a3;
@end

@implementation HFActionNaturalLanguageOptions

- (HFActionNaturalLanguageOptions)initWithHome:(id)a3 formattingContext:(int64_t)a4
{
  v7 = a3;
  v13.receiver = self;
  v13.super_class = HFActionNaturalLanguageOptions;
  v8 = [(HFSubstringNaturalLanguageOptions *)&v13 initWithFormattingContext:a4 formattingStyle:3];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_home, a3);
    v10 = [MEMORY[0x277CBEB98] set];
    objectsInContext = v9->_objectsInContext;
    v9->_objectsInContext = v10;

    v9->_useMediaContainersNotInContext = 0;
    v9->_ignoreOptionalCharacteristics = 0;
    v9->_accessoryCountType = 0;
  }

  return v9;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v9.receiver = self;
  v9.super_class = HFActionNaturalLanguageOptions;
  v4 = [(HFSubstringNaturalLanguageOptions *)&v9 copyWithZone:a3];
  v5 = [(HFActionNaturalLanguageOptions *)self home];
  [v4 setHome:v5];

  [v4 setFormattingStyle:{-[HFSubstringNaturalLanguageOptions formattingStyle](self, "formattingStyle")}];
  v6 = [(HFActionNaturalLanguageOptions *)self objectsInContext];
  v7 = [v6 copy];
  [v4 setObjectsInContext:v7];

  [v4 setUseMediaContainersNotInContext:{-[HFActionNaturalLanguageOptions useMediaContainersNotInContext](self, "useMediaContainersNotInContext")}];
  [v4 setIgnoreOptionalCharacteristics:{-[HFActionNaturalLanguageOptions ignoreOptionalCharacteristics](self, "ignoreOptionalCharacteristics")}];
  return v4;
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

@end