@interface PARSearchRequest
- (PARSearchRequest)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PARSearchRequest

- (PARSearchRequest)initWithCoder:(id)coder
{
  v28[3] = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v26.receiver = self;
  v26.super_class = PARSearchRequest;
  v5 = [(PARRequest *)&v26 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"query"];
    queryString = v5->_queryString;
    v5->_queryString = v6;

    v8 = MEMORY[0x1E695DFD8];
    v28[0] = objc_opt_class();
    v28[1] = objc_opt_class();
    v28[2] = objc_opt_class();
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v28 count:3];
    v10 = [v8 setWithArray:v9];

    v11 = [coderCopy decodeObjectOfClasses:v10 forKey:@"topics"];
    topics = v5->_topics;
    v5->_topics = v11;

    v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"engagedSuggestion"];
    engagedSuggestion = v5->_engagedSuggestion;
    v5->_engagedSuggestion = v13;

    v15 = MEMORY[0x1E695DFD8];
    v27[0] = objc_opt_class();
    v27[1] = objc_opt_class();
    v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:2];
    v17 = [v15 setWithArray:v16];

    v18 = [coderCopy decodeObjectOfClasses:v17 forKey:@"localContextualSuggestions"];
    localContextualSuggestions = v5->_localContextualSuggestions;
    v5->_localContextualSuggestions = v18;

    v20 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"l2version"];
    l2version = v5->_l2version;
    v5->_l2version = v20;

    v22 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"l3version"];
    l3version = v5->_l3version;
    v5->_l3version = v22;

    v5->_type = [coderCopy decodeIntegerForKey:@"requestType"];
    v5->_exp = [coderCopy decodeIntegerForKey:@"exp"];
  }

  v24 = *MEMORY[0x1E69E9840];
  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = PARSearchRequest;
  coderCopy = coder;
  [(PARRequest *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_queryString forKey:{@"query", v5.receiver, v5.super_class}];
  [coderCopy encodeObject:self->_topics forKey:@"topics"];
  [coderCopy encodeObject:self->_engagedSuggestion forKey:@"engagedSuggestion"];
  [coderCopy encodeObject:self->_localContextualSuggestions forKey:@"localContextualSuggestions"];
  [coderCopy encodeObject:self->_l2version forKey:@"l2version"];
  [coderCopy encodeObject:self->_l3version forKey:@"l3version"];
  [coderCopy encodeInteger:self->_type forKey:@"requestType"];
  [coderCopy encodeInteger:self->_exp forKey:@"exp"];
}

@end