@interface PKPassDetailSection
- (PKPassDetailSection)initWithCoder:(id)a3;
- (PKPassDetailSection)initWithDictionary:(id)a3 allowedRows:(id)a4 bundle:(id)a5 privateBundle:(id)a6;
- (PKPassDetailSection)initWithRows:(id)a3;
- (id)asDictionary;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PKPassDetailSection

- (PKPassDetailSection)initWithRows:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = PKPassDetailSection;
  v6 = [(PKPassDetailSection *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_rows, a3);
    v8 = [(NSArray *)v7->_rows componentsJoinedByString:@"|"];
    identifier = v7->_identifier;
    v7->_identifier = v8;
  }

  return v7;
}

- (PKPassDetailSection)initWithDictionary:(id)a3 allowedRows:(id)a4 bundle:(id)a5 privateBundle:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = [v11 PKStringForKey:@"identifier"];
  v16 = [v11 PKArrayContaining:objc_opt_class() forKey:@"rows"];
  if (v12)
  {
    v17 = MEMORY[0x1E696AE18];
    v34[0] = MEMORY[0x1E69E9820];
    v34[1] = 3221225472;
    v34[2] = __75__PKPassDetailSection_initWithDictionary_allowedRows_bundle_privateBundle___block_invoke;
    v34[3] = &unk_1E79D7960;
    v6 = v35;
    v35[0] = v12;
    v35[1] = v15;
    v18 = [v17 predicateWithBlock:v34];
    v19 = [v16 filteredArrayUsingPredicate:v18];

    v16 = v19;
  }

  if (!(v11 | v16))
  {
    v16 = 0;
    v31 = 0;
    if (!v12)
    {
      goto LABEL_11;
    }

LABEL_10:

    goto LABEL_11;
  }

  v33.receiver = self;
  v33.super_class = PKPassDetailSection;
  v20 = [(PKPassDetailSection *)&v33 init];
  if (v20)
  {
    v21 = [v11 PKStringForKey:@"header"];
    v22 = PKLocalizedPassStringForPassBundle(v21, v13, v14);
    header = v20->_header;
    v20->_header = v22;

    v24 = [v11 PKStringForKey:@"footer"];
    v25 = PKLocalizedPassStringForPassBundle(v24, v13, v14);
    footer = v20->_footer;
    v20->_footer = v25;

    v27 = [v11 PKStringForKey:@"insertAfterSection"];
    insertAfterSection = v20->_insertAfterSection;
    v20->_insertAfterSection = v27;

    objc_storeStrong(&v20->_rows, v16);
    v20->_hidden = [v11 PKBoolForKey:@"hidden"];
    objc_storeStrong(&v20->_identifier, v15);
    if (!v20->_identifier)
    {
      v29 = [(NSArray *)v20->_rows componentsJoinedByString:@"|"];
      identifier = v20->_identifier;
      v20->_identifier = v29;
    }
  }

  self = v20;
  v31 = self;
  if (v12)
  {
    goto LABEL_10;
  }

LABEL_11:

  return v31;
}

uint64_t __75__PKPassDetailSection_initWithDictionary_allowedRows_bundle_privateBundle___block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [*(a1 + 32) containsObject:v3];
  if ((v4 & 1) == 0)
  {
    v5 = PKLogFacilityTypeGetObject(6uLL);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 40);
      v8 = 138412546;
      v9 = v6;
      v10 = 2112;
      v11 = v3;
      _os_log_impl(&dword_1AD337000, v5, OS_LOG_TYPE_DEFAULT, "Dropping row in section %@: %@ is not expected/allowed.", &v8, 0x16u);
    }
  }

  return v4;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_header hash];
  v4 = [(NSString *)self->_footer hash]- v3 + 32 * v3;
  v5 = [(NSString *)self->_insertAfterSection hash]- v4 + 32 * v4;
  v6 = [(NSArray *)self->_rows hash]- v5 + 32 * v5;
  v7 = [(NSString *)self->_identifier hash];
  return self->_hidden - (v7 - v6 + 32 * v6) + 32 * (v7 - v6 + 32 * v6) + 0x38349EF51;
}

- (PKPassDetailSection)initWithCoder:(id)a3
{
  v4 = a3;
  v20.receiver = self;
  v20.super_class = PKPassDetailSection;
  v5 = [(PKPassDetailSection *)&v20 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"header"];
    header = v5->_header;
    v5->_header = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"footer"];
    footer = v5->_footer;
    v5->_footer = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"insertAfterSection"];
    insertAfterSection = v5->_insertAfterSection;
    v5->_insertAfterSection = v10;

    v12 = MEMORY[0x1E695DFD8];
    v13 = objc_opt_class();
    v14 = [v12 setWithObjects:{v13, objc_opt_class(), 0}];
    v15 = [v4 decodeObjectOfClasses:v14 forKey:@"rows"];
    rows = v5->_rows;
    v5->_rows = v15;

    v5->_hidden = [v4 decodeBoolForKey:@"hidden"];
    v17 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v17;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  header = self->_header;
  v5 = a3;
  [v5 encodeObject:header forKey:@"header"];
  [v5 encodeObject:self->_footer forKey:@"footer"];
  [v5 encodeObject:self->_insertAfterSection forKey:@"insertAfterSection"];
  [v5 encodeObject:self->_rows forKey:@"rows"];
  [v5 encodeBool:self->_hidden forKey:@"hidden"];
  [v5 encodeObject:self->_identifier forKey:@"identifier"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [+[PKPassDetailSection allocWithZone:](PKPassDetailSection init];
  v6 = [(NSString *)self->_header copyWithZone:a3];
  header = v5->_header;
  v5->_header = v6;

  v8 = [(NSString *)self->_footer copyWithZone:a3];
  footer = v5->_footer;
  v5->_footer = v8;

  v10 = [(NSString *)self->_insertAfterSection copyWithZone:a3];
  insertAfterSection = v5->_insertAfterSection;
  v5->_insertAfterSection = v10;

  v12 = [(NSArray *)self->_rows copyWithZone:a3];
  rows = v5->_rows;
  v5->_rows = v12;

  v5->_hidden = self->_hidden;
  v14 = [(NSString *)self->_identifier copyWithZone:a3];
  identifier = v5->_identifier;
  v5->_identifier = v14;

  return v5;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@: %p ", objc_opt_class(), self];;
  [v3 appendFormat:@"header: '%@'; ", self->_header];
  [v3 appendFormat:@"footer: '%@'; ", self->_footer];
  [v3 appendFormat:@"insertAfterSection: '%@'; ", self->_insertAfterSection];
  [v3 appendFormat:@"rows: '%@'; ", self->_rows];
  if (self->_hidden)
  {
    v4 = @"Y";
  }

  else
  {
    v4 = @"N";
  }

  [v3 appendFormat:@"hidden: '%@'; ", v4];
  [v3 appendFormat:@"identifier: '%@';", self->_identifier];
  [v3 appendFormat:@">"];
  v5 = [v3 copy];

  return v5;
}

- (id)asDictionary
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  [v3 setObject:self->_header forKeyedSubscript:@"header"];
  [v3 setObject:self->_footer forKeyedSubscript:@"footer"];
  [v3 setObject:self->_insertAfterSection forKeyedSubscript:@"insertAfterSection"];
  [v3 setObject:self->_rows forKeyedSubscript:@"rows"];
  v4 = [MEMORY[0x1E696AD98] numberWithBool:self->_hidden];
  [v3 setObject:v4 forKeyedSubscript:@"hidden"];

  [v3 setObject:self->_identifier forKeyedSubscript:@"identifier"];
  v5 = [v3 copy];

  return v5;
}

@end