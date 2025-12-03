@interface SGEntityExtractionInfo
- (SGEntityExtractionInfo)initWithCoder:(id)coder;
- (SGEntityExtractionInfo)initWithSpotlightIdentifier:(id)identifier source:(id)source entityType:(int64_t)type creationTimestamp:(SGUnixTimestamp_)timestamp extractionType:(int64_t)extractionType contactIdentifier:(id)contactIdentifier;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SGEntityExtractionInfo

- (SGEntityExtractionInfo)initWithCoder:(id)coder
{
  coderCopy = coder;
  v17.receiver = self;
  v17.super_class = SGEntityExtractionInfo;
  v5 = [(SGEntityExtractionInfo *)&v17 init];
  if (v5)
  {
    v6 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{objc_opt_class(), 0}];
    v7 = [coderCopy decodeObjectOfClasses:v6 forKey:@"spotlightIdentifier"];
    spotlightIdentifier = v5->_spotlightIdentifier;
    v5->_spotlightIdentifier = v7;

    v9 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{objc_opt_class(), 0}];
    v10 = [coderCopy decodeObjectOfClasses:v9 forKey:@"source"];
    source = v5->_source;
    v5->_source = v10;

    v5->_entityType = [coderCopy decodeInt64ForKey:@"entityType"];
    [coderCopy decodeDoubleForKey:@"creationTimestamp"];
    v5->_creationTimestamp.secondsFromUnixEpoch = v12;
    v5->_extractionType = [coderCopy decodeInt64ForKey:@"extractionType"];
    v13 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{objc_opt_class(), 0}];
    v14 = [coderCopy decodeObjectOfClasses:v13 forKey:@"contactIdentifier"];
    contactIdentifier = v5->_contactIdentifier;
    v5->_contactIdentifier = v14;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  spotlightIdentifier = self->_spotlightIdentifier;
  coderCopy = coder;
  [coderCopy encodeObject:spotlightIdentifier forKey:@"spotlightIdentifier"];
  [coderCopy encodeObject:self->_source forKey:@"source"];
  [coderCopy encodeInt64:self->_entityType forKey:@"entityType"];
  [coderCopy encodeDouble:@"creationTimestamp" forKey:self->_creationTimestamp.secondsFromUnixEpoch];
  [coderCopy encodeInt64:self->_extractionType forKey:@"extractionType"];
  [coderCopy encodeObject:self->_contactIdentifier forKey:@"contactIdentifier"];
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  spotlightIdentifier = [(SGEntityExtractionInfo *)self spotlightIdentifier];
  source = [(SGEntityExtractionInfo *)self source];
  entityType = [(SGEntityExtractionInfo *)self entityType];
  if (entityType > 0x1B)
  {
    v7 = @"SGEntityTypePseudoEvent";
  }

  else
  {
    v7 = off_1E7EFC868[entityType];
  }

  v8 = v7;
  [(SGEntityExtractionInfo *)self creationTimestamp];
  v10 = [objc_alloc(MEMORY[0x1E695DF00]) initWithTimeIntervalSince1970:v9];
  extractionType = [(SGEntityExtractionInfo *)self extractionType];
  v12 = @"ExtractionTypeUnknown";
  if (extractionType == 2)
  {
    v12 = @"ExtractionTypeCongratulations";
  }

  if (extractionType == 1)
  {
    v12 = @"ExtractionTypeBirthday";
  }

  v13 = v12;
  contactIdentifier = [(SGEntityExtractionInfo *)self contactIdentifier];
  v15 = [v3 initWithFormat:@"<SGEntityExtractionInfo: spotlightIdentifier:%@ source:%@ entityType:%@ creationTimestamp:%@ extractionType:%@ contactIdentifier:%@>", spotlightIdentifier, source, v8, v10, v13, contactIdentifier];

  return v15;
}

- (SGEntityExtractionInfo)initWithSpotlightIdentifier:(id)identifier source:(id)source entityType:(int64_t)type creationTimestamp:(SGUnixTimestamp_)timestamp extractionType:(int64_t)extractionType contactIdentifier:(id)contactIdentifier
{
  identifierCopy = identifier;
  sourceCopy = source;
  contactIdentifierCopy = contactIdentifier;
  v21.receiver = self;
  v21.super_class = SGEntityExtractionInfo;
  v18 = [(SGEntityExtractionInfo *)&v21 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_spotlightIdentifier, identifier);
    objc_storeStrong(&v19->_source, source);
    v19->_entityType = type;
    v19->_creationTimestamp = timestamp;
    v19->_extractionType = extractionType;
    objc_storeStrong(&v19->_contactIdentifier, contactIdentifier);
  }

  return v19;
}

@end