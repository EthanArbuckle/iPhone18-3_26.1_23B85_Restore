@interface PKPassDetailSection
- (PKPassDetailSection)initWithCoder:(id)coder;
- (PKPassDetailSection)initWithDictionary:(id)dictionary allowedRows:(id)rows bundle:(id)bundle privateBundle:(id)privateBundle;
- (PKPassDetailSection)initWithRows:(id)rows;
- (id)asDictionary;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKPassDetailSection

- (PKPassDetailSection)initWithRows:(id)rows
{
  rowsCopy = rows;
  v11.receiver = self;
  v11.super_class = PKPassDetailSection;
  v6 = [(PKPassDetailSection *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_rows, rows);
    v8 = [(NSArray *)v7->_rows componentsJoinedByString:@"|"];
    identifier = v7->_identifier;
    v7->_identifier = v8;
  }

  return v7;
}

- (PKPassDetailSection)initWithDictionary:(id)dictionary allowedRows:(id)rows bundle:(id)bundle privateBundle:(id)privateBundle
{
  dictionaryCopy = dictionary;
  rowsCopy = rows;
  bundleCopy = bundle;
  privateBundleCopy = privateBundle;
  v15 = [dictionaryCopy PKStringForKey:@"identifier"];
  v16 = [dictionaryCopy PKArrayContaining:objc_opt_class() forKey:@"rows"];
  if (rowsCopy)
  {
    v17 = MEMORY[0x1E696AE18];
    v34[0] = MEMORY[0x1E69E9820];
    v34[1] = 3221225472;
    v34[2] = __75__PKPassDetailSection_initWithDictionary_allowedRows_bundle_privateBundle___block_invoke;
    v34[3] = &unk_1E79D7960;
    v6 = v35;
    v35[0] = rowsCopy;
    v35[1] = v15;
    v18 = [v17 predicateWithBlock:v34];
    v19 = [v16 filteredArrayUsingPredicate:v18];

    v16 = v19;
  }

  if (!(dictionaryCopy | v16))
  {
    v16 = 0;
    selfCopy = 0;
    if (!rowsCopy)
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
    v21 = [dictionaryCopy PKStringForKey:@"header"];
    v22 = PKLocalizedPassStringForPassBundle(v21, bundleCopy, privateBundleCopy);
    header = v20->_header;
    v20->_header = v22;

    v24 = [dictionaryCopy PKStringForKey:@"footer"];
    v25 = PKLocalizedPassStringForPassBundle(v24, bundleCopy, privateBundleCopy);
    footer = v20->_footer;
    v20->_footer = v25;

    v27 = [dictionaryCopy PKStringForKey:@"insertAfterSection"];
    insertAfterSection = v20->_insertAfterSection;
    v20->_insertAfterSection = v27;

    objc_storeStrong(&v20->_rows, v16);
    v20->_hidden = [dictionaryCopy PKBoolForKey:@"hidden"];
    objc_storeStrong(&v20->_identifier, v15);
    if (!v20->_identifier)
    {
      v29 = [(NSArray *)v20->_rows componentsJoinedByString:@"|"];
      identifier = v20->_identifier;
      v20->_identifier = v29;
    }
  }

  self = v20;
  selfCopy = self;
  if (rowsCopy)
  {
    goto LABEL_10;
  }

LABEL_11:

  return selfCopy;
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

- (PKPassDetailSection)initWithCoder:(id)coder
{
  coderCopy = coder;
  v20.receiver = self;
  v20.super_class = PKPassDetailSection;
  v5 = [(PKPassDetailSection *)&v20 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"header"];
    header = v5->_header;
    v5->_header = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"footer"];
    footer = v5->_footer;
    v5->_footer = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"insertAfterSection"];
    insertAfterSection = v5->_insertAfterSection;
    v5->_insertAfterSection = v10;

    v12 = MEMORY[0x1E695DFD8];
    v13 = objc_opt_class();
    v14 = [v12 setWithObjects:{v13, objc_opt_class(), 0}];
    v15 = [coderCopy decodeObjectOfClasses:v14 forKey:@"rows"];
    rows = v5->_rows;
    v5->_rows = v15;

    v5->_hidden = [coderCopy decodeBoolForKey:@"hidden"];
    v17 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v17;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  header = self->_header;
  coderCopy = coder;
  [coderCopy encodeObject:header forKey:@"header"];
  [coderCopy encodeObject:self->_footer forKey:@"footer"];
  [coderCopy encodeObject:self->_insertAfterSection forKey:@"insertAfterSection"];
  [coderCopy encodeObject:self->_rows forKey:@"rows"];
  [coderCopy encodeBool:self->_hidden forKey:@"hidden"];
  [coderCopy encodeObject:self->_identifier forKey:@"identifier"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [+[PKPassDetailSection allocWithZone:](PKPassDetailSection init];
  v6 = [(NSString *)self->_header copyWithZone:zone];
  header = v5->_header;
  v5->_header = v6;

  v8 = [(NSString *)self->_footer copyWithZone:zone];
  footer = v5->_footer;
  v5->_footer = v8;

  v10 = [(NSString *)self->_insertAfterSection copyWithZone:zone];
  insertAfterSection = v5->_insertAfterSection;
  v5->_insertAfterSection = v10;

  v12 = [(NSArray *)self->_rows copyWithZone:zone];
  rows = v5->_rows;
  v5->_rows = v12;

  v5->_hidden = self->_hidden;
  v14 = [(NSString *)self->_identifier copyWithZone:zone];
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