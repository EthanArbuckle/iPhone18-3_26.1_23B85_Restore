@interface HDFHIRResourceLastSeenObject
- (HDFHIRResourceLastSeenObject)initWithCoder:(id)a3;
- (HDFHIRResourceLastSeenObject)initWithResourceIdentifier:(id)a3 sourceURL:(id)a4 lastSeenDate:(id)a5;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HDFHIRResourceLastSeenObject

- (HDFHIRResourceLastSeenObject)initWithResourceIdentifier:(id)a3 sourceURL:(id)a4 lastSeenDate:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v19.receiver = self;
  v19.super_class = HDFHIRResourceLastSeenObject;
  v11 = [(HDFHIRResourceLastSeenObject *)&v19 init];
  if (v11)
  {
    v12 = [v8 copy];
    resourceIdentifier = v11->_resourceIdentifier;
    v11->_resourceIdentifier = v12;

    v14 = [v9 copy];
    sourceURL = v11->_sourceURL;
    v11->_sourceURL = v14;

    v16 = [v10 copy];
    lastSeenDate = v11->_lastSeenDate;
    v11->_lastSeenDate = v16;
  }

  return v11;
}

- (HDFHIRResourceLastSeenObject)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"Identifier"];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"SourceURL"];
    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"LastSeenDate"];
    self = [(HDFHIRResourceLastSeenObject *)self initWithResourceIdentifier:v5 sourceURL:v6 lastSeenDate:v7];

    v8 = self;
  }

  else
  {
    [v4 hrs_failWithCocoaValueNotFoundError];
    v8 = 0;
  }

  return v8;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(HDFHIRResourceLastSeenObject *)self resourceIdentifier];
  [v4 encodeObject:v5 forKey:@"Identifier"];

  v6 = [(HDFHIRResourceLastSeenObject *)self sourceURL];
  [v4 encodeObject:v6 forKey:@"SourceURL"];

  v7 = [(HDFHIRResourceLastSeenObject *)self lastSeenDate];
  [v4 encodeObject:v7 forKey:@"LastSeenDate"];
}

@end