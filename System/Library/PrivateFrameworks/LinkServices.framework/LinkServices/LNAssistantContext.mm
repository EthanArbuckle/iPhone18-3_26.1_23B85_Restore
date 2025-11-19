@interface LNAssistantContext
- (LNAssistantContext)initWithCoder:(id)a3;
- (LNAssistantContext)initWithSessionIdentifier:(id)a3 requestIdentifier:(id)a4 locale:(id)a5;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation LNAssistantContext

- (LNAssistantContext)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"sessionIdentifier"];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"requestIdentifier"];
    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"locale"];
    self = [(LNAssistantContext *)self initWithSessionIdentifier:v5 requestIdentifier:v6 locale:v7];

    v8 = self;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(LNAssistantContext *)self sessionIdentifier];
  [v4 encodeObject:v5 forKey:@"sessionIdentifier"];

  v6 = [(LNAssistantContext *)self requestIdentifier];
  [v4 encodeObject:v6 forKey:@"requestIdentifier"];

  v7 = [(LNAssistantContext *)self locale];
  [v4 encodeObject:v7 forKey:@"locale"];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(LNAssistantContext *)self sessionIdentifier];
  v7 = [(LNAssistantContext *)self requestIdentifier];
  v8 = [(LNAssistantContext *)self locale];
  v9 = [v3 stringWithFormat:@"<%@: %p, sessionIdentifier: %@, requestIdentifier: %@, locale: %@>", v5, self, v6, v7, v8];

  return v9;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_opt_new();
  v5 = [(LNAssistantContext *)self sessionIdentifier];
  v6 = [v5 copy];
  [v4 setSessionIdentifier:v6];

  v7 = [(LNAssistantContext *)self requestIdentifier];
  v8 = [v7 copy];
  [v4 setRequestIdentifier:v8];

  v9 = [(LNAssistantContext *)self locale];
  v10 = [v9 copy];
  [v4 setLocale:v10];

  return v4;
}

- (LNAssistantContext)initWithSessionIdentifier:(id)a3 requestIdentifier:(id)a4 locale:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (!v9)
  {
    v21 = [MEMORY[0x1E696AAA8] currentHandler];
    [v21 handleFailureInMethod:a2 object:self file:@"LNAssistantContext.m" lineNumber:16 description:{@"Invalid parameter not satisfying: %@", @"sessionIdentifier"}];
  }

  v22.receiver = self;
  v22.super_class = LNAssistantContext;
  v12 = [(LNAssistantContext *)&v22 init];
  if (v12)
  {
    v13 = [v9 copy];
    sessionIdentifier = v12->_sessionIdentifier;
    v12->_sessionIdentifier = v13;

    v15 = [v10 copy];
    requestIdentifier = v12->_requestIdentifier;
    v12->_requestIdentifier = v15;

    v17 = [v11 copy];
    locale = v12->_locale;
    v12->_locale = v17;

    v19 = v12;
  }

  return v12;
}

@end