@interface HDFHIRResourceLastSeenObject
- (HDFHIRResourceLastSeenObject)initWithCoder:(id)coder;
- (HDFHIRResourceLastSeenObject)initWithResourceIdentifier:(id)identifier sourceURL:(id)l lastSeenDate:(id)date;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HDFHIRResourceLastSeenObject

- (HDFHIRResourceLastSeenObject)initWithResourceIdentifier:(id)identifier sourceURL:(id)l lastSeenDate:(id)date
{
  identifierCopy = identifier;
  lCopy = l;
  dateCopy = date;
  v19.receiver = self;
  v19.super_class = HDFHIRResourceLastSeenObject;
  v11 = [(HDFHIRResourceLastSeenObject *)&v19 init];
  if (v11)
  {
    v12 = [identifierCopy copy];
    resourceIdentifier = v11->_resourceIdentifier;
    v11->_resourceIdentifier = v12;

    v14 = [lCopy copy];
    sourceURL = v11->_sourceURL;
    v11->_sourceURL = v14;

    v16 = [dateCopy copy];
    lastSeenDate = v11->_lastSeenDate;
    v11->_lastSeenDate = v16;
  }

  return v11;
}

- (HDFHIRResourceLastSeenObject)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Identifier"];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SourceURL"];
    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"LastSeenDate"];
    self = [(HDFHIRResourceLastSeenObject *)self initWithResourceIdentifier:v5 sourceURL:v6 lastSeenDate:v7];

    selfCopy = self;
  }

  else
  {
    [coderCopy hrs_failWithCocoaValueNotFoundError];
    selfCopy = 0;
  }

  return selfCopy;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  resourceIdentifier = [(HDFHIRResourceLastSeenObject *)self resourceIdentifier];
  [coderCopy encodeObject:resourceIdentifier forKey:@"Identifier"];

  sourceURL = [(HDFHIRResourceLastSeenObject *)self sourceURL];
  [coderCopy encodeObject:sourceURL forKey:@"SourceURL"];

  lastSeenDate = [(HDFHIRResourceLastSeenObject *)self lastSeenDate];
  [coderCopy encodeObject:lastSeenDate forKey:@"LastSeenDate"];
}

@end