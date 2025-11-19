@interface PKCarUnlockSupportedTerminal
- (PKCarUnlockSupportedTerminal)initWithCoder:(id)a3;
- (PKCarUnlockSupportedTerminal)initWithDictionary:(id)a3;
- (id)description;
- (id)vehicleInitiatedPairingLaunchURLWithReferralSource:(unint64_t)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PKCarUnlockSupportedTerminal

- (PKCarUnlockSupportedTerminal)initWithDictionary:(id)a3
{
  v40[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (!v4)
  {
    v29 = PKLogFacilityTypeGetObject(0x17uLL);
    if (!os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_33;
    }

    *buf = 0;
    v30 = "Invalid parameters to create supported terminal with";
    goto LABEL_32;
  }

  self = [(PKCarUnlockSupportedTerminal *)self init];
  if (self)
  {
    v5 = [v4 PKArrayContaining:objc_opt_class() forKey:@"associatedApplicationIdentifiers"];
    associatedApplicationIdentifiers = self->_associatedApplicationIdentifiers;
    self->_associatedApplicationIdentifiers = v5;

    if (![(NSArray *)self->_associatedApplicationIdentifiers count])
    {
      v7 = [v4 PKStringForKey:@"associatedApplicationIdentifier"];
      v8 = v7;
      if (v7)
      {
        v40[0] = v7;
        v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v40 count:1];
        v10 = self->_associatedApplicationIdentifiers;
        self->_associatedApplicationIdentifiers = v9;
      }
    }

    v11 = [v4 PKStringForKey:@"partnerIdentifier"];
    partnerIdentifier = self->_partnerIdentifier;
    self->_partnerIdentifier = v11;

    if (self->_partnerIdentifier)
    {
      v13 = [v4 PKStringForKey:@"partnerName"];
      partnerName = self->_partnerName;
      self->_partnerName = v13;

      if (self->_partnerName)
      {
        v15 = [v4 PKStringForKey:@"manufacturerIdentifier"];
        manufacturerIdentifier = self->_manufacturerIdentifier;
        self->_manufacturerIdentifier = v15;

        if (self->_manufacturerIdentifier)
        {
          v32 = self;
          v17 = [v4 PKArrayContaining:objc_opt_class() forKey:@"terminalCriteria"];
          v18 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithCapacity:{objc_msgSend(v17, "count")}];
          v33 = 0u;
          v34 = 0u;
          v35 = 0u;
          v36 = 0u;
          v19 = v17;
          v20 = [v19 countByEnumeratingWithState:&v33 objects:v39 count:16];
          if (v20)
          {
            v21 = v20;
            v22 = *v34;
            do
            {
              for (i = 0; i != v21; ++i)
              {
                if (*v34 != v22)
                {
                  objc_enumerationMutation(v19);
                }

                v24 = [[PKPassAutomaticSelectionCriterion alloc] initWithDictionary:*(*(&v33 + 1) + 8 * i)];
                if (v24)
                {
                  [v18 addObject:v24];
                }

                else
                {
                  v25 = PKLogFacilityTypeGetObject(0x17uLL);
                  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 138412290;
                    v38 = 0;
                    _os_log_impl(&dword_1AD337000, v25, OS_LOG_TYPE_DEFAULT, "Invalid terminal criterion: %@", buf, 0xCu);
                  }
                }
              }

              v21 = [v19 countByEnumeratingWithState:&v33 objects:v39 count:16];
            }

            while (v21);
          }

          v26 = [v18 copy];
          self = v32;
          terminalCriteria = v32->_terminalCriteria;
          v32->_terminalCriteria = v26;

          goto LABEL_23;
        }

        v29 = PKLogFacilityTypeGetObject(0x17uLL);
        if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          v30 = "Missing manufacturer identifier for supported terminal";
          goto LABEL_32;
        }

LABEL_33:

        v28 = 0;
        goto LABEL_34;
      }

      v29 = PKLogFacilityTypeGetObject(0x17uLL);
      if (!os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_33;
      }

      *buf = 0;
      v30 = "Missing partner name for supported terminal";
    }

    else
    {
      v29 = PKLogFacilityTypeGetObject(0x17uLL);
      if (!os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_33;
      }

      *buf = 0;
      v30 = "Missing partner ID for supported terminal";
    }

LABEL_32:
    _os_log_impl(&dword_1AD337000, v29, OS_LOG_TYPE_DEFAULT, v30, buf, 2u);
    goto LABEL_33;
  }

LABEL_23:
  self = self;
  v28 = self;
LABEL_34:

  return v28;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@: %p ", objc_opt_class(), self];;
  [v3 appendFormat:@"associatedAppIdentifiers: '%@'; ", self->_associatedApplicationIdentifiers];
  [v3 appendFormat:@"partnerIdentifier: '%@'; ", self->_partnerIdentifier];
  [v3 appendFormat:@"manufacturerIdentifier: '%@'; ", self->_manufacturerIdentifier];
  [v3 appendFormat:@"partnerName: '%@'; ", self->_partnerName];
  [v3 appendFormat:@">"];

  return v3;
}

- (id)vehicleInitiatedPairingLaunchURLWithReferralSource:(unint64_t)a3
{
  v4 = [(PKCarUnlockSupportedTerminal *)self partnerIdentifier];
  v5 = PKVehicleInitiatedPairingLaunchURL(v4, 1, 0, a3);

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  associatedApplicationIdentifiers = self->_associatedApplicationIdentifiers;
  v5 = a3;
  [v5 encodeObject:associatedApplicationIdentifiers forKey:@"associatedApplicationIdentifiers"];
  [v5 encodeObject:self->_partnerIdentifier forKey:@"partnerIdentifier"];
  [v5 encodeObject:self->_partnerName forKey:@"partnerName"];
  [v5 encodeObject:self->_manufacturerIdentifier forKey:@"manufacturerIdentifier"];
  [v5 encodeObject:self->_terminalCriteria forKey:@"terminalCriteria"];
}

- (PKCarUnlockSupportedTerminal)initWithCoder:(id)a3
{
  v4 = a3;
  v20.receiver = self;
  v20.super_class = PKCarUnlockSupportedTerminal;
  v5 = [(PKCarUnlockSupportedTerminal *)&v20 init];
  if (v5)
  {
    v6 = [v4 decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"associatedApplicationIdentifiers"];
    associatedApplicationIdentifiers = v5->_associatedApplicationIdentifiers;
    v5->_associatedApplicationIdentifiers = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"partnerIdentifier"];
    partnerIdentifier = v5->_partnerIdentifier;
    v5->_partnerIdentifier = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"partnerName"];
    partnerName = v5->_partnerName;
    v5->_partnerName = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"manufacturerIdentifier"];
    manufacturerIdentifier = v5->_manufacturerIdentifier;
    v5->_manufacturerIdentifier = v12;

    v14 = objc_alloc(MEMORY[0x1E695DFD8]);
    v15 = objc_opt_class();
    v16 = [v14 initWithObjects:{v15, objc_opt_class(), 0}];
    v17 = [v4 decodeObjectOfClasses:v16 forKey:@"terminalCriteria"];
    terminalCriteria = v5->_terminalCriteria;
    v5->_terminalCriteria = v17;
  }

  return v5;
}

@end