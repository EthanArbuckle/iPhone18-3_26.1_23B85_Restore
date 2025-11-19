@interface PKPassUpgradeExpressAutomaticSelectionCriteriaRequest
- (PKPassUpgradeExpressAutomaticSelectionCriteriaRequest)initWithCoder:(id)a3;
- (PKPassUpgradeExpressAutomaticSelectionCriteriaRequest)initWithDictionary:(id)a3;
- (void)_dictionaryRepresentationInto:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PKPassUpgradeExpressAutomaticSelectionCriteriaRequest

- (PKPassUpgradeExpressAutomaticSelectionCriteriaRequest)initWithDictionary:(id)a3
{
  v4 = a3;
  v17.receiver = self;
  v17.super_class = PKPassUpgradeExpressAutomaticSelectionCriteriaRequest;
  v5 = [(PKPassUpgradeRequest *)&v17 initWithDictionary:v4];
  p_isa = &v5->super.super.isa;
  if (!v5)
  {
    goto LABEL_5;
  }

  v7 = [(PKPassUpgradeRequest *)v5 secureElementIdentifier];

  if (!v7)
  {
    v13 = PKLogFacilityTypeGetObject(0x27uLL);
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_13;
    }

    *v16 = 0;
    v14 = "Missing seid key for upgrade request";
LABEL_12:
    _os_log_impl(&dword_1AD337000, v13, OS_LOG_TYPE_DEFAULT, v14, v16, 2u);
    goto LABEL_13;
  }

  v8 = [p_isa paymentApplicationIdentifiers];
  v9 = [v8 count];

  if (!v9)
  {
    v13 = PKLogFacilityTypeGetObject(0x27uLL);
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_13;
    }

    *v16 = 0;
    v14 = "Missing applet id key for upgrade request";
    goto LABEL_12;
  }

  v10 = [v4 PKArrayContaining:objc_opt_class() forKey:@"criteriaType"];
  v11 = p_isa[6];
  p_isa[6] = v10;

  if (![p_isa[6] count])
  {
    v13 = PKLogFacilityTypeGetObject(0x27uLL);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *v16 = 0;
      v14 = "Missing criterion type key for upgrade request";
      goto LABEL_12;
    }

LABEL_13:

    v12 = 0;
    goto LABEL_14;
  }

LABEL_5:
  v12 = p_isa;
LABEL_14:

  return v12;
}

- (void)_dictionaryRepresentationInto:(id)a3
{
  v4 = a3;
  v5.receiver = self;
  v5.super_class = PKPassUpgradeExpressAutomaticSelectionCriteriaRequest;
  [(PKPassUpgradeRequest *)&v5 _dictionaryRepresentationInto:v4];
  if ([(NSArray *)self->_technologyTypes count])
  {
    [v4 setObject:self->_technologyTypes forKeyedSubscript:@"criteriaType"];
  }
}

- (PKPassUpgradeExpressAutomaticSelectionCriteriaRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = PKPassUpgradeExpressAutomaticSelectionCriteriaRequest;
  v5 = [(PKPassUpgradeRequest *)&v12 initWithCoder:v4];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [v4 decodeObjectOfClasses:v8 forKey:@"criteriaType"];
    technologyTypes = v5->_technologyTypes;
    v5->_technologyTypes = v9;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = PKPassUpgradeExpressAutomaticSelectionCriteriaRequest;
  v4 = a3;
  [(PKPassUpgradeRequest *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_technologyTypes forKey:{@"criteriaType", v5.receiver, v5.super_class}];
}

@end