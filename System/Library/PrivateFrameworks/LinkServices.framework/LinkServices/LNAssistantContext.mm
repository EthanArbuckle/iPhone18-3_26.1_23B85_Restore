@interface LNAssistantContext
- (LNAssistantContext)initWithCoder:(id)coder;
- (LNAssistantContext)initWithSessionIdentifier:(id)identifier requestIdentifier:(id)requestIdentifier locale:(id)locale;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation LNAssistantContext

- (LNAssistantContext)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"sessionIdentifier"];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"requestIdentifier"];
    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"locale"];
    self = [(LNAssistantContext *)self initWithSessionIdentifier:v5 requestIdentifier:v6 locale:v7];

    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  sessionIdentifier = [(LNAssistantContext *)self sessionIdentifier];
  [coderCopy encodeObject:sessionIdentifier forKey:@"sessionIdentifier"];

  requestIdentifier = [(LNAssistantContext *)self requestIdentifier];
  [coderCopy encodeObject:requestIdentifier forKey:@"requestIdentifier"];

  locale = [(LNAssistantContext *)self locale];
  [coderCopy encodeObject:locale forKey:@"locale"];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  sessionIdentifier = [(LNAssistantContext *)self sessionIdentifier];
  requestIdentifier = [(LNAssistantContext *)self requestIdentifier];
  locale = [(LNAssistantContext *)self locale];
  v9 = [v3 stringWithFormat:@"<%@: %p, sessionIdentifier: %@, requestIdentifier: %@, locale: %@>", v5, self, sessionIdentifier, requestIdentifier, locale];

  return v9;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_opt_new();
  sessionIdentifier = [(LNAssistantContext *)self sessionIdentifier];
  v6 = [sessionIdentifier copy];
  [v4 setSessionIdentifier:v6];

  requestIdentifier = [(LNAssistantContext *)self requestIdentifier];
  v8 = [requestIdentifier copy];
  [v4 setRequestIdentifier:v8];

  locale = [(LNAssistantContext *)self locale];
  v10 = [locale copy];
  [v4 setLocale:v10];

  return v4;
}

- (LNAssistantContext)initWithSessionIdentifier:(id)identifier requestIdentifier:(id)requestIdentifier locale:(id)locale
{
  identifierCopy = identifier;
  requestIdentifierCopy = requestIdentifier;
  localeCopy = locale;
  if (!identifierCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"LNAssistantContext.m" lineNumber:16 description:{@"Invalid parameter not satisfying: %@", @"sessionIdentifier"}];
  }

  v22.receiver = self;
  v22.super_class = LNAssistantContext;
  v12 = [(LNAssistantContext *)&v22 init];
  if (v12)
  {
    v13 = [identifierCopy copy];
    sessionIdentifier = v12->_sessionIdentifier;
    v12->_sessionIdentifier = v13;

    v15 = [requestIdentifierCopy copy];
    requestIdentifier = v12->_requestIdentifier;
    v12->_requestIdentifier = v15;

    v17 = [localeCopy copy];
    locale = v12->_locale;
    v12->_locale = v17;

    v19 = v12;
  }

  return v12;
}

@end