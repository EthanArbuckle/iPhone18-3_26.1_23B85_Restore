@interface CHSynthesisReplacementRecipe
- (CHSynthesisReplacementRecipe)initWithOriginalString:(id)a3 replacementString:(id)a4 synthesisSuggestion:(int64_t)a5;
@end

@implementation CHSynthesisReplacementRecipe

- (CHSynthesisReplacementRecipe)initWithOriginalString:(id)a3 replacementString:(id)a4 synthesisSuggestion:(int64_t)a5
{
  v9 = a3;
  v10 = a4;
  v14.receiver = self;
  v14.super_class = CHSynthesisReplacementRecipe;
  v11 = [(CHSynthesisReplacementRecipe *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_originalString, a3);
    objc_storeStrong(&v12->_replacementString, a4);
    v12->_synthesisSuggestion = a5;
  }

  return v12;
}

@end