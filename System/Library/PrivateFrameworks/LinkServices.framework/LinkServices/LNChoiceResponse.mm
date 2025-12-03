@interface LNChoiceResponse
- (LNChoiceResponse)initWithCoder:(id)coder;
- (LNChoiceResponse)initWithIdentifier:(id)identifier selectedOption:(id)option context:(id)context;
- (void)encodeWithCoder:(id)coder;
@end

@implementation LNChoiceResponse

- (LNChoiceResponse)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"selectedOption"];
  v7 = v6;
  if (v5)
  {
    v8 = v6 == 0;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    selfCopy = 0;
  }

  else
  {
    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"context"];
    self = [(LNChoiceResponse *)self initWithIdentifier:v5 selectedOption:v7 context:v9];

    selfCopy = self;
  }

  return selfCopy;
}

- (void)encodeWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = LNChoiceResponse;
  coderCopy = coder;
  [(LNResponse *)&v6 encodeWithCoder:coderCopy];
  v5 = [(LNChoiceResponse *)self selectedOption:v6.receiver];
  [coderCopy encodeObject:v5 forKey:@"selectedOption"];
}

- (LNChoiceResponse)initWithIdentifier:(id)identifier selectedOption:(id)option context:(id)context
{
  identifierCopy = identifier;
  optionCopy = option;
  contextCopy = context;
  if (identifierCopy)
  {
    if (optionCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"LNChoiceResponse.m" lineNumber:19 description:{@"Invalid parameter not satisfying: %@", @"identifier"}];

    if (optionCopy)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"LNChoiceResponse.m" lineNumber:20 description:{@"Invalid parameter not satisfying: %@", @"selectedOption"}];

LABEL_3:
  v18.receiver = self;
  v18.super_class = LNChoiceResponse;
  v12 = [(LNResponse *)&v18 initWithIdentifier:identifierCopy context:contextCopy];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_selectedOption, option);
    v14 = v13;
  }

  return v13;
}

@end