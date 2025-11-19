@interface MUISearchSuggestion
- (BOOL)isEqual:(id)a3;
- (BOOL)isLegacy;
- (MUISearchSuggestion)initWithCoder:(id)a3;
- (MUISearchSuggestionDelegate)delegate;
- (NSString)ef_publicDescription;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MUISearchSuggestion

- (MUISearchSuggestion)initWithCoder:(id)a3
{
  v5 = a3;
  [(MUISearchSuggestion *)self doesNotRecognizeSelector:a2];
  __assert_rtn("[MUISearchSuggestion initWithCoder:]", "MUISearchSuggestion.m", 25, "0");
}

- (void)encodeWithCoder:(id)a3
{
  v5 = a3;
  [(MUISearchSuggestion *)self doesNotRecognizeSelector:a2];
  __assert_rtn("[MUISearchSuggestion encodeWithCoder:]", "MUISearchSuggestion.m", 29, "0");
}

- (BOOL)isLegacy
{
  v2 = [(MUISearchSuggestion *)self category];
  v3 = [v2 isLegacy];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v5 = v4;
    v6 = [(MUISearchSuggestion *)self spotlightSuggestion];
    v7 = [v5 spotlightSuggestion];

    v8 = [v6 isEqual:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (unint64_t)hash
{
  v2 = [(MUISearchSuggestion *)self spotlightSuggestion];
  v3 = [v2 hash];

  return v3;
}

- (NSString)ef_publicDescription
{
  v3 = [(MUISearchSuggestion *)self category];
  v4 = [v3 displayName];

  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"<%@: %p> %@", objc_opt_class(), self, v4];

  return v5;
}

- (MUISearchSuggestionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end