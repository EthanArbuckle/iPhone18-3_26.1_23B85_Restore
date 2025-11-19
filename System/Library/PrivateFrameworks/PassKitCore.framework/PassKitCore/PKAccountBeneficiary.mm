@interface PKAccountBeneficiary
- (PKAccountBeneficiary)initWithCoder:(id)a3;
- (PKAccountBeneficiary)initWithDictionary:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)displayableRelationshipString;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PKAccountBeneficiary

- (PKAccountBeneficiary)initWithDictionary:(id)a3
{
  v59 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v50.receiver = self;
  v50.super_class = PKAccountBeneficiary;
  v5 = [(PKAccountBeneficiary *)&v50 init];
  if (!v5)
  {
    goto LABEL_27;
  }

  v6 = objc_alloc_init(MEMORY[0x1E695CF18]);
  v49 = [v4 PKStringForKey:@"firstName"];
  v7 = [v4 PKStringForKey:@"lastName"];
  v8 = [v4 PKStringForKey:@"relationshipType"];
  v9 = v8;
  if (v8 == @"child")
  {
    goto LABEL_5;
  }

  if (!v8)
  {
LABEL_21:
    v11 = 0;
    goto LABEL_22;
  }

  v10 = [(__CFString *)v8 isEqualToString:@"child"];

  if ((v10 & 1) == 0)
  {
    v12 = v9;
    if (v12 == @"spouse" || (v13 = v12, v14 = [(__CFString *)v12 isEqualToString:@"spouse"], v13, (v14 & 1) != 0))
    {
      v11 = 2;
      goto LABEL_22;
    }

    v15 = v13;
    if (v15 == @"domestic-partner" || (v16 = v15, v17 = [(__CFString *)v15 isEqualToString:@"domestic-partner"], v16, (v17 & 1) != 0))
    {
      v11 = 3;
      goto LABEL_22;
    }

    v18 = v16;
    if (v18 == @"parent" || (v19 = v18, v20 = [(__CFString *)v18 isEqualToString:@"parent"], v19, (v20 & 1) != 0))
    {
      v11 = 4;
      goto LABEL_22;
    }

    v21 = v19;
    if (v21 == @"sibling" || (v22 = v21, v23 = [(__CFString *)v21 isEqualToString:@"sibling"], v22, (v23 & 1) != 0))
    {
      v11 = 5;
      goto LABEL_22;
    }

    v24 = v22;
    if (v24 == @"other" || (v25 = v24, v26 = [(__CFString *)v24 isEqualToString:@"other"], v25, v26))
    {
      v11 = 6;
      goto LABEL_22;
    }

    goto LABEL_21;
  }

LABEL_5:
  v11 = 1;
LABEL_22:

  v27 = [v4 PKDecimalNumberFromStringForKey:@"allocation"];
  v28 = [v4 PKStringForKey:@"identifier"];
  v29 = [v49 length];
  v30 = v7;
  v31 = [v7 length];
  v32 = [v28 length];
  v33 = v32;
  if (v29 && v31 && v27 && v32)
  {
    [v6 setGivenName:v49];
    v34 = v30;
    [v6 setFamilyName:v30];
    v35 = [v6 copy];
    contact = v5->_contact;
    v5->_contact = v35;

    allocation = v5->_allocation;
    v5->_relationshipType = v11;
    v5->_allocation = v27;
    v38 = v27;

    identifier = v5->_identifier;
    v5->_identifier = v28;

LABEL_27:
    v40 = v5;
    goto LABEL_39;
  }

  v41 = PKLogFacilityTypeGetObject(0xFuLL);
  if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
  {
    if (v29)
    {
      v42 = @"YES";
    }

    else
    {
      v42 = @"NO";
    }

    if (v31)
    {
      v43 = @"YES";
    }

    else
    {
      v43 = @"NO";
    }

    v48 = v43;
    v44 = [(NSDecimalNumber *)v27 stringValue];
    v45 = v44;
    *buf = 138413058;
    v46 = @"YES";
    if (!v33)
    {
      v46 = @"NO";
    }

    v52 = v42;
    v53 = 2112;
    v54 = v48;
    v55 = 2112;
    v56 = v44;
    v57 = 2112;
    v58 = v46;
    _os_log_impl(&dword_1AD337000, v41, OS_LOG_TYPE_DEFAULT, "Account beneficiary field is missing; firstName present: %@ lastName present: %@ allocation: %@ identifier present: %@", buf, 0x2Au);
  }

  v40 = 0;
LABEL_39:

  return v40;
}

- (id)displayableRelationshipString
{
  v9 = self->_relationshipType - 1;
  if (v9 > 5)
  {
    v10 = 0;
  }

  else
  {
    v10 = PKLocalizedFeatureString(off_1E79E0B98[v9], 5, 0, v2, v3, v4, v5, v6, v7);
  }

  return v10;
}

- (void)encodeWithCoder:(id)a3
{
  contact = self->_contact;
  v5 = a3;
  [v5 encodeObject:contact forKey:@"contact"];
  [v5 encodeInteger:self->_relationshipType forKey:@"relationshipType"];
  [v5 encodeObject:self->_allocation forKey:@"allocation"];
  [v5 encodeObject:self->_identifier forKey:@"identifier"];
}

- (PKAccountBeneficiary)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = PKAccountBeneficiary;
  v5 = [(PKAccountBeneficiary *)&v13 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"contact"];
    contact = v5->_contact;
    v5->_contact = v6;

    v5->_relationshipType = [v4 decodeIntegerForKey:@"relationshipType"];
    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"allocation"];
    allocation = v5->_allocation;
    v5->_allocation = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v10;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(CNContact *)self->_contact copyWithZone:a3];
  v7 = v5[1];
  v5[1] = v6;

  v5[2] = self->_relationshipType;
  v8 = [(NSDecimalNumber *)self->_allocation copyWithZone:a3];
  v9 = v5[3];
  v5[3] = v8;

  v10 = [(NSString *)self->_identifier copyWithZone:a3];
  v11 = v5[4];
  v5[4] = v10;

  return v5;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@: %p ", objc_opt_class(), self];;
  [v3 appendFormat:@"%@: '%@'; ", @"contact", self->_contact];
  v4 = self->_relationshipType - 1;
  if (v4 > 5)
  {
    v5 = @"unknown";
  }

  else
  {
    v5 = off_1E79E0BC8[v4];
  }

  [v3 appendFormat:@"%@: '%@'; ", @"relationshipType", v5];
  [v3 appendFormat:@"%@: '%@'; ", @"allocation", self->_allocation];
  [v3 appendFormat:@"%@: '%@'; ", @"identifier", self->_identifier];
  [v3 appendFormat:@">"];
  v6 = [v3 copy];

  return v6;
}

@end