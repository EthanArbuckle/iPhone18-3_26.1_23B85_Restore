@interface PKPassUpgradePrecursorPassRequest
- (PKPassUpgradePrecursorPassRequest)initWithCoder:(id)a3;
- (PKPassUpgradePrecursorPassRequest)initWithDictionary:(id)a3;
- (void)_dictionaryRepresentationInto:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PKPassUpgradePrecursorPassRequest

- (PKPassUpgradePrecursorPassRequest)initWithDictionary:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = PKPassUpgradePrecursorPassRequest;
  v5 = [(PKPassUpgradeRequest *)&v16 initWithDictionary:v4];
  p_isa = &v5->super.super.isa;
  if (!v5)
  {
    goto LABEL_6;
  }

  v7 = [(PKPassUpgradeRequest *)v5 secureElementIdentifier];

  if (!v7)
  {
    v8 = PKLogFacilityTypeGetObject(0x27uLL);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *v15 = 0;
      _os_log_impl(&dword_1AD337000, v8, OS_LOG_TYPE_DEFAULT, "Missing seid key for precursor pass upgrade request", v15, 2u);
    }

    goto LABEL_15;
  }

  v8 = [v4 PKArrayContaining:objc_opt_class() forKey:@"actions"];
  if (![v8 count])
  {
    v12 = PKLogFacilityTypeGetObject(0x27uLL);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *v15 = 0;
      _os_log_impl(&dword_1AD337000, v12, OS_LOG_TYPE_DEFAULT, "Missing actions for precursor pass upgrade request", v15, 2u);
    }

    goto LABEL_14;
  }

  v9 = [v8 pk_arrayBySafelyApplyingBlock:&__block_literal_global_142];
  v10 = p_isa[6];
  p_isa[6] = v9;

  if (![p_isa[6] count])
  {
    v13 = PKLogFacilityTypeGetObject(0x27uLL);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *v15 = 0;
      _os_log_impl(&dword_1AD337000, v13, OS_LOG_TYPE_DEFAULT, "WARNING: Precursor pass request has no actions", v15, 2u);
    }

    v12 = p_isa;
    p_isa = 0;
LABEL_14:

LABEL_15:
    v11 = 0;
    goto LABEL_16;
  }

LABEL_6:
  p_isa = p_isa;
  v11 = p_isa;
LABEL_16:

  return v11;
}

- (void)_dictionaryRepresentationInto:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v17.receiver = self;
  v17.super_class = PKPassUpgradePrecursorPassRequest;
  [(PKPassUpgradeRequest *)&v17 _dictionaryRepresentationInto:v4];
  if ([(NSArray *)self->_actions count])
  {
    v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v6 = self->_actions;
    v7 = [(NSArray *)v6 countByEnumeratingWithState:&v13 objects:v18 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v14;
      do
      {
        v10 = 0;
        do
        {
          if (*v14 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = [*(*(&v13 + 1) + 8 * v10) asDictionary];
          [v5 addObject:v11];

          ++v10;
        }

        while (v8 != v10);
        v8 = [(NSArray *)v6 countByEnumeratingWithState:&v13 objects:v18 count:16];
      }

      while (v8);
    }

    v12 = [v5 copy];
    [v4 setObject:v12 forKeyedSubscript:@"actions"];
  }
}

- (PKPassUpgradePrecursorPassRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = PKPassUpgradePrecursorPassRequest;
  v5 = [(PKPassUpgradeRequest *)&v16 initWithCoder:v4];
  if (v5)
  {
    v6 = objc_alloc(MEMORY[0x1E695DFD8]);
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = objc_opt_class();
    v10 = objc_opt_class();
    v11 = objc_opt_class();
    v12 = [v6 initWithObjects:{v7, v8, v9, v10, v11, objc_opt_class(), 0}];
    v13 = [v4 decodeObjectOfClasses:v12 forKey:@"actions"];
    actions = v5->_actions;
    v5->_actions = v13;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = PKPassUpgradePrecursorPassRequest;
  v4 = a3;
  [(PKPassUpgradeRequest *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_actions forKey:{@"actions", v5.receiver, v5.super_class}];
}

@end