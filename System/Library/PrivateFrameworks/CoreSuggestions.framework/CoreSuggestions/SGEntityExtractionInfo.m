@interface SGEntityExtractionInfo
- (SGEntityExtractionInfo)initWithCoder:(id)a3;
- (SGEntityExtractionInfo)initWithSpotlightIdentifier:(id)a3 source:(id)a4 entityType:(int64_t)a5 creationTimestamp:(SGUnixTimestamp_)a6 extractionType:(int64_t)a7 contactIdentifier:(id)a8;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SGEntityExtractionInfo

- (SGEntityExtractionInfo)initWithCoder:(id)a3
{
  v4 = a3;
  v17.receiver = self;
  v17.super_class = SGEntityExtractionInfo;
  v5 = [(SGEntityExtractionInfo *)&v17 init];
  if (v5)
  {
    v6 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{objc_opt_class(), 0}];
    v7 = [v4 decodeObjectOfClasses:v6 forKey:@"spotlightIdentifier"];
    spotlightIdentifier = v5->_spotlightIdentifier;
    v5->_spotlightIdentifier = v7;

    v9 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{objc_opt_class(), 0}];
    v10 = [v4 decodeObjectOfClasses:v9 forKey:@"source"];
    source = v5->_source;
    v5->_source = v10;

    v5->_entityType = [v4 decodeInt64ForKey:@"entityType"];
    [v4 decodeDoubleForKey:@"creationTimestamp"];
    v5->_creationTimestamp.secondsFromUnixEpoch = v12;
    v5->_extractionType = [v4 decodeInt64ForKey:@"extractionType"];
    v13 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{objc_opt_class(), 0}];
    v14 = [v4 decodeObjectOfClasses:v13 forKey:@"contactIdentifier"];
    contactIdentifier = v5->_contactIdentifier;
    v5->_contactIdentifier = v14;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  spotlightIdentifier = self->_spotlightIdentifier;
  v5 = a3;
  [v5 encodeObject:spotlightIdentifier forKey:@"spotlightIdentifier"];
  [v5 encodeObject:self->_source forKey:@"source"];
  [v5 encodeInt64:self->_entityType forKey:@"entityType"];
  [v5 encodeDouble:@"creationTimestamp" forKey:self->_creationTimestamp.secondsFromUnixEpoch];
  [v5 encodeInt64:self->_extractionType forKey:@"extractionType"];
  [v5 encodeObject:self->_contactIdentifier forKey:@"contactIdentifier"];
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = [(SGEntityExtractionInfo *)self spotlightIdentifier];
  v5 = [(SGEntityExtractionInfo *)self source];
  v6 = [(SGEntityExtractionInfo *)self entityType];
  if (v6 > 0x1B)
  {
    v7 = @"SGEntityTypePseudoEvent";
  }

  else
  {
    v7 = off_1E7EFC868[v6];
  }

  v8 = v7;
  [(SGEntityExtractionInfo *)self creationTimestamp];
  v10 = [objc_alloc(MEMORY[0x1E695DF00]) initWithTimeIntervalSince1970:v9];
  v11 = [(SGEntityExtractionInfo *)self extractionType];
  v12 = @"ExtractionTypeUnknown";
  if (v11 == 2)
  {
    v12 = @"ExtractionTypeCongratulations";
  }

  if (v11 == 1)
  {
    v12 = @"ExtractionTypeBirthday";
  }

  v13 = v12;
  v14 = [(SGEntityExtractionInfo *)self contactIdentifier];
  v15 = [v3 initWithFormat:@"<SGEntityExtractionInfo: spotlightIdentifier:%@ source:%@ entityType:%@ creationTimestamp:%@ extractionType:%@ contactIdentifier:%@>", v4, v5, v8, v10, v13, v14];

  return v15;
}

- (SGEntityExtractionInfo)initWithSpotlightIdentifier:(id)a3 source:(id)a4 entityType:(int64_t)a5 creationTimestamp:(SGUnixTimestamp_)a6 extractionType:(int64_t)a7 contactIdentifier:(id)a8
{
  v15 = a3;
  v16 = a4;
  v17 = a8;
  v21.receiver = self;
  v21.super_class = SGEntityExtractionInfo;
  v18 = [(SGEntityExtractionInfo *)&v21 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_spotlightIdentifier, a3);
    objc_storeStrong(&v19->_source, a4);
    v19->_entityType = a5;
    v19->_creationTimestamp = a6;
    v19->_extractionType = a7;
    objc_storeStrong(&v19->_contactIdentifier, a8);
  }

  return v19;
}

@end