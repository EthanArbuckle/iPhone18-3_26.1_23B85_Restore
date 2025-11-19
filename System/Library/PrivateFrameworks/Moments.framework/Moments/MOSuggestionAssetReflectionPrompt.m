@interface MOSuggestionAssetReflectionPrompt
- (MOSuggestionAssetReflectionPrompt)initWithCoder:(id)a3;
- (MOSuggestionAssetReflectionPrompt)initWithReflectionPrompts:(id)a3 icon:(id)a4 type:(unint64_t)a5;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MOSuggestionAssetReflectionPrompt

- (MOSuggestionAssetReflectionPrompt)initWithReflectionPrompts:(id)a3 icon:(id)a4 type:(unint64_t)a5
{
  v9 = a3;
  v10 = a4;
  v16.receiver = self;
  v16.super_class = MOSuggestionAssetReflectionPrompt;
  v11 = [(MOSuggestionAssetReflectionPrompt *)&v16 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_reflectionPrompts, a3);
    objc_storeStrong(&v12->_reflectionVisual, a4);
    v12->_reflectionType = a5;
    v13 = [v9 firstObject];
    reflectionPrompt = v12->_reflectionPrompt;
    v12->_reflectionPrompt = v13;
  }

  return v12;
}

- (void)encodeWithCoder:(id)a3
{
  reflectionPrompts = self->_reflectionPrompts;
  v5 = a3;
  [v5 encodeObject:reflectionPrompts forKey:@"kCoderKeyReflectionAssetPrompts"];
  [v5 encodeObject:self->_reflectionPrompt forKey:@"kCoderKeyReflectionAssetPrompt"];
  [v5 encodeObject:self->_reflectionVisual forKey:@"kCoderKeyReflectionAssetImage"];
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_reflectionType];
  [v5 encodeObject:v6 forKey:@"kCoderKeyReflectionAssetType"];
}

- (MOSuggestionAssetReflectionPrompt)initWithCoder:(id)a3
{
  v4 = a3;
  v17.receiver = self;
  v17.super_class = MOSuggestionAssetReflectionPrompt;
  v5 = [(MOSuggestionAssetReflectionPrompt *)&v17 init];
  if (v5)
  {
    v6 = MEMORY[0x277CBEB98];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [v4 decodeObjectOfClasses:v8 forKey:@"kCoderKeyReflectionAssetPrompts"];
    reflectionPrompts = v5->_reflectionPrompts;
    v5->_reflectionPrompts = v9;

    v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kCoderKeyReflectionAssetPrompt"];
    reflectionPrompt = v5->_reflectionPrompt;
    v5->_reflectionPrompt = v11;

    v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kCoderKeyReflectionAssetImage"];
    reflectionVisual = v5->_reflectionVisual;
    v5->_reflectionVisual = v13;

    v15 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kCoderKeyReflectionAssetType"];
    v5->_reflectionType = [v15 intValue];
  }

  return v5;
}

@end