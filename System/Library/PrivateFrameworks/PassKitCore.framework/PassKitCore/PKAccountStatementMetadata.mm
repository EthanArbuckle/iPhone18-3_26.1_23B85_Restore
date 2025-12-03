@interface PKAccountStatementMetadata
- (BOOL)isEqual:(id)equal;
- (PKAccountStatementMetadata)initWithArray:(id)array accountIdentifier:(id)identifier statementIdentifier:(id)statementIdentifier;
- (PKAccountStatementMetadata)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (id)reportForMissingItems;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKAccountStatementMetadata

- (PKAccountStatementMetadata)initWithArray:(id)array accountIdentifier:(id)identifier statementIdentifier:(id)statementIdentifier
{
  v30 = *MEMORY[0x1E69E9840];
  arrayCopy = array;
  identifierCopy = identifier;
  statementIdentifierCopy = statementIdentifier;
  v28.receiver = self;
  v28.super_class = PKAccountStatementMetadata;
  v11 = [(PKAccountStatementMetadata *)&v28 init];
  v12 = v11;
  if (v11)
  {
    v23 = identifierCopy;
    objc_storeStrong(&v11->_accountIdentifier, identifier);
    objc_storeStrong(&v12->_statementIdentifier, statementIdentifier);
    v13 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v14 = arrayCopy;
    v15 = [v14 countByEnumeratingWithState:&v24 objects:v29 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v25;
      do
      {
        v18 = 0;
        do
        {
          if (*v25 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = [[PKAccountStatementMetadataItem alloc] initWithDictionary:*(*(&v24 + 1) + 8 * v18)];
          [v13 safelyAddObject:v19];

          ++v18;
        }

        while (v16 != v18);
        v16 = [v14 countByEnumeratingWithState:&v24 objects:v29 count:16];
      }

      while (v16);
    }

    v20 = [v13 count];
    if (v20)
    {
      v20 = [v13 copy];
    }

    identifierCopy = v23;
    items = v12->_items;
    v12->_items = v20;
  }

  return v12;
}

- (id)dictionaryRepresentation
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  [v3 safelySetObject:self->_accountIdentifier forKey:@"accountIdentifier"];
  v4 = PKAccountTypeToString(self->_accountType);
  [v3 safelySetObject:v4 forKey:@"accountType"];

  [v3 safelySetObject:self->_statementIdentifier forKey:@"statementIdentifier"];
  v5 = PKMediumDateString(self->_openingDate, 0);
  [v3 safelySetObject:v5 forKey:@"openingDate"];

  v6 = PKMediumDateString(self->_closingDate, 0);
  [v3 safelySetObject:v6 forKey:@"closingDate"];

  v7 = PKISO8601DateStringFromDate(self->_lastReportDate);
  [v3 safelySetObject:v7 forKey:@"lastReportDate"];

  v8 = [MEMORY[0x1E696AD98] numberWithBool:self->_hasBeenProcessed];
  [v3 safelySetObject:v8 forKey:@"hasBeenProcessed"];

  v9 = [MEMORY[0x1E696AD98] numberWithInteger:self->_reportCount];
  [v3 safelySetObject:v9 forKey:@"reportCount"];

  v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v11 = self->_items;
  v12 = [(NSArray *)v11 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v20;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v20 != v14)
        {
          objc_enumerationMutation(v11);
        }

        dictionaryRepresentation = [*(*(&v19 + 1) + 8 * i) dictionaryRepresentation];
        [v10 safelyAddObject:dictionaryRepresentation];
      }

      v13 = [(NSArray *)v11 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v13);
  }

  [v3 safelySetObject:v10 forKey:@"items"];
  v17 = [v3 copy];

  return v17;
}

- (id)reportForMissingItems
{
  itemsMissingFromDevice = [(PKAccountStatementMetadata *)self itemsMissingFromDevice];
  if ([itemsMissingFromDevice count])
  {
    v4 = [[PKAccountStatementMetadataReport alloc] initWithItems:itemsMissingFromDevice accountIdentifier:self->_accountIdentifier statementIdentifier:self->_statementIdentifier openingDate:self->_openingDate closingDate:self->_closingDate];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (PKAccountStatementMetadata)initWithCoder:(id)coder
{
  coderCopy = coder;
  v22.receiver = self;
  v22.super_class = PKAccountStatementMetadata;
  v5 = [(PKAccountStatementMetadata *)&v22 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"accountIdentifier"];
    accountIdentifier = v5->_accountIdentifier;
    v5->_accountIdentifier = v6;

    v5->_accountType = [coderCopy decodeIntegerForKey:@"accountType"];
    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"statementIdentifier"];
    statementIdentifier = v5->_statementIdentifier;
    v5->_statementIdentifier = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"openingDate"];
    openingDate = v5->_openingDate;
    v5->_openingDate = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"closingDate"];
    closingDate = v5->_closingDate;
    v5->_closingDate = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"lastReportDate"];
    lastReportDate = v5->_lastReportDate;
    v5->_lastReportDate = v14;

    v5->_hasBeenProcessed = [coderCopy decodeBoolForKey:@"hasBeenProcessed"];
    v5->_reportCount = [coderCopy decodeIntegerForKey:@"reportCount"];
    v16 = MEMORY[0x1E695DFD8];
    v17 = objc_opt_class();
    v18 = [v16 setWithObjects:{v17, objc_opt_class(), 0}];
    v19 = [coderCopy decodeObjectOfClasses:v18 forKey:@"items"];
    items = v5->_items;
    v5->_items = v19;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  accountIdentifier = self->_accountIdentifier;
  coderCopy = coder;
  [coderCopy encodeObject:accountIdentifier forKey:@"accountIdentifier"];
  [coderCopy encodeInteger:self->_accountType forKey:@"accountType"];
  [coderCopy encodeObject:self->_statementIdentifier forKey:@"statementIdentifier"];
  [coderCopy encodeObject:self->_openingDate forKey:@"openingDate"];
  [coderCopy encodeObject:self->_closingDate forKey:@"closingDate"];
  [coderCopy encodeObject:self->_lastReportDate forKey:@"lastReportDate"];
  [coderCopy encodeBool:self->_hasBeenProcessed forKey:@"hasBeenProcessed"];
  [coderCopy encodeInteger:self->_reportCount forKey:@"reportCount"];
  [coderCopy encodeObject:self->_items forKey:@"items"];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_14;
  }

  v5 = equalCopy[2];
  v6 = self->_accountIdentifier;
  v7 = v5;
  v8 = v7;
  if (v6 == v7)
  {
  }

  else
  {
    if (!v6 || !v7)
    {
      goto LABEL_13;
    }

    v9 = [(NSString *)v6 isEqualToString:v7];

    if (!v9)
    {
      goto LABEL_14;
    }
  }

  v10 = equalCopy[4];
  v6 = self->_statementIdentifier;
  v11 = v10;
  v8 = v11;
  if (v6 != v11)
  {
    if (v6 && v11)
    {
      v12 = [(NSString *)v6 isEqualToString:v11];

      if (!v12)
      {
        goto LABEL_14;
      }

      goto LABEL_17;
    }

LABEL_13:

    goto LABEL_14;
  }

LABEL_17:
  items = self->_items;
  v16 = equalCopy[9];
  if (items && v16)
  {
    if (([(NSArray *)items isEqual:?]& 1) == 0)
    {
      goto LABEL_14;
    }
  }

  else if (items != v16)
  {
    goto LABEL_14;
  }

  openingDate = self->_openingDate;
  v18 = equalCopy[5];
  if (openingDate && v18)
  {
    if (([(NSDate *)openingDate isEqual:?]& 1) == 0)
    {
      goto LABEL_14;
    }
  }

  else if (openingDate != v18)
  {
    goto LABEL_14;
  }

  closingDate = self->_closingDate;
  v20 = equalCopy[6];
  if (closingDate && v20)
  {
    if (([(NSDate *)closingDate isEqual:?]& 1) == 0)
    {
      goto LABEL_14;
    }
  }

  else if (closingDate != v20)
  {
    goto LABEL_14;
  }

  lastReportDate = self->_lastReportDate;
  v22 = equalCopy[7];
  if (lastReportDate && v22)
  {
    if (([(NSDate *)lastReportDate isEqual:?]& 1) == 0)
    {
      goto LABEL_14;
    }
  }

  else if (lastReportDate != v22)
  {
    goto LABEL_14;
  }

  if (self->_accountType == equalCopy[3] && self->_reportCount == equalCopy[8])
  {
    v13 = self->_hasBeenProcessed == *(equalCopy + 8);
    goto LABEL_15;
  }

LABEL_14:
  v13 = 0;
LABEL_15:

  return v13;
}

- (unint64_t)hash
{
  array = [MEMORY[0x1E695DF70] array];
  [array safelyAddObject:self->_statementIdentifier];
  [array safelyAddObject:self->_items];
  [array safelyAddObject:self->_accountIdentifier];
  [array safelyAddObject:self->_openingDate];
  [array safelyAddObject:self->_closingDate];
  [array safelyAddObject:self->_lastReportDate];
  v4 = PKCombinedHash(17, array);
  v5 = self->_accountType - v4 + 32 * v4;
  v6 = self->_reportCount - v5 + 32 * v5;
  v7 = self->_hasBeenProcessed - v6 + 32 * v6;

  return v7;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@: %p ", objc_opt_class(), self];;
  [v3 appendFormat:@"accountIdentifier: '%@'; ", self->_accountIdentifier];
  v4 = PKAccountTypeToString(self->_accountType);
  [v3 appendFormat:@"accountType: '%@'; ", v4];

  [v3 appendFormat:@"statementIdentifier: '%@'; ", self->_statementIdentifier];
  [v3 appendFormat:@"openingDate: '%@'; ", self->_openingDate];
  [v3 appendFormat:@"closingDate: '%@'; ", self->_closingDate];
  [v3 appendFormat:@"lastReportDate: '%@'; ", self->_lastReportDate];
  [v3 appendFormat:@"reportCount: %ld; ", self->_reportCount];
  if (self->_hasBeenProcessed)
  {
    v5 = @"YES";
  }

  else
  {
    v5 = @"NO";
  }

  [v3 appendFormat:@"hasBeenProcessed: '%@'; ", v5];
  [v3 appendFormat:@"items: '%@'; ", self->_items];
  [v3 appendFormat:@">"];

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_accountIdentifier copyWithZone:zone];
  v7 = *(v5 + 16);
  *(v5 + 16) = v6;

  v8 = [(NSString *)self->_statementIdentifier copyWithZone:zone];
  v9 = *(v5 + 32);
  *(v5 + 32) = v8;

  v10 = [(NSArray *)self->_items copyWithZone:zone];
  v11 = *(v5 + 72);
  *(v5 + 72) = v10;

  v12 = [(NSDate *)self->_openingDate copyWithZone:zone];
  v13 = *(v5 + 40);
  *(v5 + 40) = v12;

  v14 = [(NSDate *)self->_closingDate copyWithZone:zone];
  v15 = *(v5 + 48);
  *(v5 + 48) = v14;

  v16 = [(NSDate *)self->_lastReportDate copyWithZone:zone];
  v17 = *(v5 + 56);
  *(v5 + 56) = v16;

  *(v5 + 64) = self->_reportCount;
  *(v5 + 24) = self->_accountType;
  *(v5 + 8) = self->_hasBeenProcessed;
  return v5;
}

@end