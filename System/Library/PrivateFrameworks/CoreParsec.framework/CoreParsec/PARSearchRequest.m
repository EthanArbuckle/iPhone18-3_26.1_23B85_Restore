@interface PARSearchRequest
- (PARSearchRequest)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PARSearchRequest

- (PARSearchRequest)initWithCoder:(id)a3
{
  v28[3] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v26.receiver = self;
  v26.super_class = PARSearchRequest;
  v5 = [(PARRequest *)&v26 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"query"];
    queryString = v5->_queryString;
    v5->_queryString = v6;

    v8 = MEMORY[0x1E695DFD8];
    v28[0] = objc_opt_class();
    v28[1] = objc_opt_class();
    v28[2] = objc_opt_class();
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v28 count:3];
    v10 = [v8 setWithArray:v9];

    v11 = [v4 decodeObjectOfClasses:v10 forKey:@"topics"];
    topics = v5->_topics;
    v5->_topics = v11;

    v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"engagedSuggestion"];
    engagedSuggestion = v5->_engagedSuggestion;
    v5->_engagedSuggestion = v13;

    v15 = MEMORY[0x1E695DFD8];
    v27[0] = objc_opt_class();
    v27[1] = objc_opt_class();
    v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:2];
    v17 = [v15 setWithArray:v16];

    v18 = [v4 decodeObjectOfClasses:v17 forKey:@"localContextualSuggestions"];
    localContextualSuggestions = v5->_localContextualSuggestions;
    v5->_localContextualSuggestions = v18;

    v20 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"l2version"];
    l2version = v5->_l2version;
    v5->_l2version = v20;

    v22 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"l3version"];
    l3version = v5->_l3version;
    v5->_l3version = v22;

    v5->_type = [v4 decodeIntegerForKey:@"requestType"];
    v5->_exp = [v4 decodeIntegerForKey:@"exp"];
  }

  v24 = *MEMORY[0x1E69E9840];
  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = PARSearchRequest;
  v4 = a3;
  [(PARRequest *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_queryString forKey:{@"query", v5.receiver, v5.super_class}];
  [v4 encodeObject:self->_topics forKey:@"topics"];
  [v4 encodeObject:self->_engagedSuggestion forKey:@"engagedSuggestion"];
  [v4 encodeObject:self->_localContextualSuggestions forKey:@"localContextualSuggestions"];
  [v4 encodeObject:self->_l2version forKey:@"l2version"];
  [v4 encodeObject:self->_l3version forKey:@"l3version"];
  [v4 encodeInteger:self->_type forKey:@"requestType"];
  [v4 encodeInteger:self->_exp forKey:@"exp"];
}

@end