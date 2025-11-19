@interface PKAccountStatementMetadataReport
- (BOOL)isEqual:(id)a3;
- (PKAccountStatementMetadataReport)initWithCoder:(id)a3;
- (PKAccountStatementMetadataReport)initWithItems:(id)a3 accountIdentifier:(id)a4 statementIdentifier:(id)a5 openingDate:(id)a6 closingDate:(id)a7;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PKAccountStatementMetadataReport

- (PKAccountStatementMetadataReport)initWithItems:(id)a3 accountIdentifier:(id)a4 statementIdentifier:(id)a5 openingDate:(id)a6 closingDate:(id)a7
{
  v13 = a3;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v20.receiver = self;
  v20.super_class = PKAccountStatementMetadataReport;
  v17 = [(PKAccountReport *)&v20 initWithAccountIdentifier:a4 reportType:2];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_statementIdentifier, a5);
    objc_storeStrong(&v18->_openingDate, a6);
    objc_storeStrong(&v18->_closingDate, a7);
    objc_storeStrong(&v18->_items, a3);
  }

  return v18;
}

- (id)dictionaryRepresentation
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  [v3 safelySetObject:self->_statementIdentifier forKey:@"statementIdentifier"];
  v4 = PKISO8601DateStringFromDate(self->_openingDate);
  [v3 safelySetObject:v4 forKey:@"openingDate"];

  v5 = PKISO8601DateStringFromDate(self->_closingDate);
  [v3 safelySetObject:v5 forKey:@"closingDate"];

  v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v7 = self->_items;
  v8 = [(NSArray *)v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v19;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v19 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = [*(*(&v18 + 1) + 8 * i) dictionaryRepresentation];
        [v6 safelyAddObject:v12];
      }

      v9 = [(NSArray *)v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v9);
  }

  [v3 safelySetObject:v6 forKey:@"items"];
  v17.receiver = self;
  v17.super_class = PKAccountStatementMetadataReport;
  v13 = [(PKAccountReport *)&v17 dictionaryRepresentation];
  v14 = [v13 mutableCopy];

  [v14 safelySetObject:v3 forKey:@"statementMetadataReport"];
  v15 = [v14 copy];

  return v15;
}

- (PKAccountStatementMetadataReport)initWithCoder:(id)a3
{
  v4 = a3;
  v18.receiver = self;
  v18.super_class = PKAccountStatementMetadataReport;
  v5 = [(PKAccountReport *)&v18 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"statementIdentifier"];
    statementIdentifier = v5->_statementIdentifier;
    v5->_statementIdentifier = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"openingDate"];
    openingDate = v5->_openingDate;
    v5->_openingDate = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"closingDate"];
    closingDate = v5->_closingDate;
    v5->_closingDate = v10;

    v12 = MEMORY[0x1E695DFD8];
    v13 = objc_opt_class();
    v14 = [v12 setWithObjects:{v13, objc_opt_class(), 0}];
    v15 = [v4 decodeObjectOfClasses:v14 forKey:@"items"];
    items = v5->_items;
    v5->_items = v15;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = PKAccountStatementMetadataReport;
  v4 = a3;
  [(PKAccountReport *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_statementIdentifier forKey:{@"statementIdentifier", v5.receiver, v5.super_class}];
  [v4 encodeObject:self->_openingDate forKey:@"openingDate"];
  [v4 encodeObject:self->_closingDate forKey:@"closingDate"];
  [v4 encodeObject:self->_items forKey:@"items"];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_27;
  }

  v21.receiver = self;
  v21.super_class = PKAccountStatementMetadataReport;
  if (![(PKAccountReport *)&v21 isEqual:v4])
  {
    goto LABEL_27;
  }

  v5 = v4[3];
  v6 = self->_statementIdentifier;
  v7 = v5;
  v8 = v7;
  if (v6 == v7)
  {
  }

  else
  {
    if (v6)
    {
      v9 = v7 == 0;
    }

    else
    {
      v9 = 1;
    }

    if (v9)
    {

      goto LABEL_27;
    }

    v10 = [(NSString *)v6 isEqualToString:v7];

    if (!v10)
    {
      goto LABEL_27;
    }
  }

  items = self->_items;
  v12 = v4[6];
  if (items)
  {
    v13 = v12 == 0;
  }

  else
  {
    v13 = 1;
  }

  if (v13)
  {
    if (items != v12)
    {
      goto LABEL_27;
    }
  }

  else
  {
    v14 = [(NSArray *)items isEqual:?];
    if ((v14 & 1) == 0)
    {
      goto LABEL_27;
    }
  }

  openingDate = self->_openingDate;
  v16 = v4[4];
  if (!openingDate || !v16)
  {
    if (openingDate == v16)
    {
      goto LABEL_23;
    }

LABEL_27:
    v19 = 0;
    goto LABEL_28;
  }

  if (([(NSDate *)openingDate isEqual:?]& 1) == 0)
  {
    goto LABEL_27;
  }

LABEL_23:
  closingDate = self->_closingDate;
  v18 = v4[5];
  if (closingDate && v18)
  {
    v19 = [(NSDate *)closingDate isEqual:?];
  }

  else
  {
    v19 = closingDate == v18;
  }

LABEL_28:

  return v19;
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x1E695DF70] array];
  [v3 safelyAddObject:self->_statementIdentifier];
  [v3 safelyAddObject:self->_items];
  [v3 safelyAddObject:self->_openingDate];
  [v3 safelyAddObject:self->_closingDate];
  v7.receiver = self;
  v7.super_class = PKAccountStatementMetadataReport;
  v4 = [(PKAccountReport *)&v7 hash];
  v5 = PKCombinedHash(v4, v3);

  return v5;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@: %p ", objc_opt_class(), self];;
  v4 = [(PKAccountReport *)self accountIdentifier];
  [v3 appendFormat:@"accountIdentifier: '%@'; ", v4];

  v5 = PKAccountReportTypeToString([(PKAccountReport *)self reportType]);
  [v3 appendFormat:@"reportType: '%@'; ", v5];

  [v3 appendFormat:@"statementIdentifier: '%@'; ", self->_statementIdentifier];
  [v3 appendFormat:@"openingDate: '%@'; ", self->_openingDate];
  [v3 appendFormat:@"closingDate: '%@'; ", self->_closingDate];
  [v3 appendFormat:@"items: '%@'; ", self->_items];
  [v3 appendFormat:@">"];

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v15.receiver = self;
  v15.super_class = PKAccountStatementMetadataReport;
  v5 = [(PKAccountReport *)&v15 copyWithZone:?];
  v6 = [(NSString *)self->_statementIdentifier copyWithZone:a3];
  v7 = v5[3];
  v5[3] = v6;

  v8 = [(NSArray *)self->_items copyWithZone:a3];
  v9 = v5[6];
  v5[6] = v8;

  v10 = [(NSDate *)self->_openingDate copyWithZone:a3];
  v11 = v5[4];
  v5[4] = v10;

  v12 = [(NSDate *)self->_closingDate copyWithZone:a3];
  v13 = v5[5];
  v5[5] = v12;

  return v5;
}

@end