@interface MUISearchSuggestion
- (BOOL)isEqual:(id)equal;
- (BOOL)isLegacy;
- (MUISearchSuggestion)initWithCoder:(id)coder;
- (MUISearchSuggestionDelegate)delegate;
- (NSString)ef_publicDescription;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MUISearchSuggestion

- (MUISearchSuggestion)initWithCoder:(id)coder
{
  coderCopy = coder;
  [(MUISearchSuggestion *)self doesNotRecognizeSelector:a2];
  __assert_rtn("[MUISearchSuggestion initWithCoder:]", "MUISearchSuggestion.m", 25, "0");
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [(MUISearchSuggestion *)self doesNotRecognizeSelector:a2];
  __assert_rtn("[MUISearchSuggestion encodeWithCoder:]", "MUISearchSuggestion.m", 29, "0");
}

- (BOOL)isLegacy
{
  category = [(MUISearchSuggestion *)self category];
  isLegacy = [category isLegacy];

  return isLegacy;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v5 = equalCopy;
    spotlightSuggestion = [(MUISearchSuggestion *)self spotlightSuggestion];
    spotlightSuggestion2 = [v5 spotlightSuggestion];

    v8 = [spotlightSuggestion isEqual:spotlightSuggestion2];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (unint64_t)hash
{
  spotlightSuggestion = [(MUISearchSuggestion *)self spotlightSuggestion];
  v3 = [spotlightSuggestion hash];

  return v3;
}

- (NSString)ef_publicDescription
{
  category = [(MUISearchSuggestion *)self category];
  displayName = [category displayName];

  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"<%@: %p> %@", objc_opt_class(), self, displayName];

  return v5;
}

- (MUISearchSuggestionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end