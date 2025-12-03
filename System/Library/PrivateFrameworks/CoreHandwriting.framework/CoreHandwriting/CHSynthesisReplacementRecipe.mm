@interface CHSynthesisReplacementRecipe
- (CHSynthesisReplacementRecipe)initWithOriginalString:(id)string replacementString:(id)replacementString synthesisSuggestion:(int64_t)suggestion;
@end

@implementation CHSynthesisReplacementRecipe

- (CHSynthesisReplacementRecipe)initWithOriginalString:(id)string replacementString:(id)replacementString synthesisSuggestion:(int64_t)suggestion
{
  stringCopy = string;
  replacementStringCopy = replacementString;
  v14.receiver = self;
  v14.super_class = CHSynthesisReplacementRecipe;
  v11 = [(CHSynthesisReplacementRecipe *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_originalString, string);
    objc_storeStrong(&v12->_replacementString, replacementString);
    v12->_synthesisSuggestion = suggestion;
  }

  return v12;
}

@end