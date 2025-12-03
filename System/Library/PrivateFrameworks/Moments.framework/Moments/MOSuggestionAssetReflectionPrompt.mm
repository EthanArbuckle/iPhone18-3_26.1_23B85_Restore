@interface MOSuggestionAssetReflectionPrompt
- (MOSuggestionAssetReflectionPrompt)initWithCoder:(id)coder;
- (MOSuggestionAssetReflectionPrompt)initWithReflectionPrompts:(id)prompts icon:(id)icon type:(unint64_t)type;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MOSuggestionAssetReflectionPrompt

- (MOSuggestionAssetReflectionPrompt)initWithReflectionPrompts:(id)prompts icon:(id)icon type:(unint64_t)type
{
  promptsCopy = prompts;
  iconCopy = icon;
  v16.receiver = self;
  v16.super_class = MOSuggestionAssetReflectionPrompt;
  v11 = [(MOSuggestionAssetReflectionPrompt *)&v16 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_reflectionPrompts, prompts);
    objc_storeStrong(&v12->_reflectionVisual, icon);
    v12->_reflectionType = type;
    firstObject = [promptsCopy firstObject];
    reflectionPrompt = v12->_reflectionPrompt;
    v12->_reflectionPrompt = firstObject;
  }

  return v12;
}

- (void)encodeWithCoder:(id)coder
{
  reflectionPrompts = self->_reflectionPrompts;
  coderCopy = coder;
  [coderCopy encodeObject:reflectionPrompts forKey:@"kCoderKeyReflectionAssetPrompts"];
  [coderCopy encodeObject:self->_reflectionPrompt forKey:@"kCoderKeyReflectionAssetPrompt"];
  [coderCopy encodeObject:self->_reflectionVisual forKey:@"kCoderKeyReflectionAssetImage"];
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_reflectionType];
  [coderCopy encodeObject:v6 forKey:@"kCoderKeyReflectionAssetType"];
}

- (MOSuggestionAssetReflectionPrompt)initWithCoder:(id)coder
{
  coderCopy = coder;
  v17.receiver = self;
  v17.super_class = MOSuggestionAssetReflectionPrompt;
  v5 = [(MOSuggestionAssetReflectionPrompt *)&v17 init];
  if (v5)
  {
    v6 = MEMORY[0x277CBEB98];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"kCoderKeyReflectionAssetPrompts"];
    reflectionPrompts = v5->_reflectionPrompts;
    v5->_reflectionPrompts = v9;

    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kCoderKeyReflectionAssetPrompt"];
    reflectionPrompt = v5->_reflectionPrompt;
    v5->_reflectionPrompt = v11;

    v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kCoderKeyReflectionAssetImage"];
    reflectionVisual = v5->_reflectionVisual;
    v5->_reflectionVisual = v13;

    v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kCoderKeyReflectionAssetType"];
    v5->_reflectionType = [v15 intValue];
  }

  return v5;
}

@end