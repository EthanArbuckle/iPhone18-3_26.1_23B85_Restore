@interface DNDModeAssertionInvalidation
- (BOOL)isEqual:(id)a3;
- (DNDModeAssertionInvalidation)initWithAssertion:(id)a3 invalidationDate:(id)a4 details:(id)a5 source:(id)a6 reason:(unint64_t)a7 reasonOverride:(unint64_t)a8;
- (DNDModeAssertionInvalidation)initWithCoder:(id)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation DNDModeAssertionInvalidation

- (DNDModeAssertionInvalidation)initWithAssertion:(id)a3 invalidationDate:(id)a4 details:(id)a5 source:(id)a6 reason:(unint64_t)a7 reasonOverride:(unint64_t)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v28.receiver = self;
  v28.super_class = DNDModeAssertionInvalidation;
  v18 = [(DNDModeAssertionInvalidation *)&v28 init];
  if (v18)
  {
    v19 = [v14 copy];
    assertion = v18->_assertion;
    v18->_assertion = v19;

    v21 = [v15 copy];
    invalidationDate = v18->_invalidationDate;
    v18->_invalidationDate = v21;

    v23 = [v16 copy];
    details = v18->_details;
    v18->_details = v23;

    v25 = [v17 copy];
    source = v18->_source;
    v18->_source = v25;

    v18->_reason = a7;
    v18->_reasonOverride = a8;
  }

  return v18;
}

- (unint64_t)hash
{
  v3 = [(DNDModeAssertionInvalidation *)self assertion];
  v4 = [v3 hash];
  v5 = [(DNDModeAssertionInvalidation *)self invalidationDate];
  v6 = [v5 hash] ^ v4;
  v7 = [(DNDModeAssertionInvalidation *)self details];
  v8 = [v7 hash];
  v9 = [(DNDModeAssertionInvalidation *)self source];
  v10 = v6 ^ v8 ^ [v9 hash];
  v11 = [(DNDModeAssertionInvalidation *)self reason];
  v12 = v11 ^ [(DNDModeAssertionInvalidation *)self reasonOverride];

  return v10 ^ v12;
}

- (BOOL)isEqual:(id)a3
{
  v6 = a3;
  if (self == v6)
  {
    v13 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = v6;
      v8 = [(DNDModeAssertionInvalidation *)self assertion];
      v9 = [(DNDModeAssertionInvalidation *)v7 assertion];
      if (v8 != v9)
      {
        v10 = [(DNDModeAssertionInvalidation *)self assertion];
        if (!v10)
        {
          v13 = 0;
          goto LABEL_64;
        }

        v3 = v10;
        v11 = [(DNDModeAssertionInvalidation *)v7 assertion];
        if (!v11)
        {
          v13 = 0;
LABEL_63:

          goto LABEL_64;
        }

        v12 = [(DNDModeAssertionInvalidation *)self assertion];
        v4 = [(DNDModeAssertionInvalidation *)v7 assertion];
        if (![v12 isEqual:v4])
        {
          v13 = 0;
LABEL_62:

          goto LABEL_63;
        }

        v56 = v3;
        v53 = v4;
        v54 = v12;
        v55 = v11;
      }

      v14 = [(DNDModeAssertionInvalidation *)self invalidationDate];
      v15 = [(DNDModeAssertionInvalidation *)v7 invalidationDate];
      if (v14 != v15)
      {
        v16 = [(DNDModeAssertionInvalidation *)self invalidationDate];
        if (v16)
        {
          v17 = v16;
          v57 = v14;
          v18 = [(DNDModeAssertionInvalidation *)v7 invalidationDate];
          if (v18)
          {
            v19 = v18;
            v3 = [(DNDModeAssertionInvalidation *)self invalidationDate];
            v4 = [(DNDModeAssertionInvalidation *)v7 invalidationDate];
            if ([v3 isEqual:v4])
            {
              v46 = v19;
              v47 = v17;
              goto LABEL_17;
            }
          }
        }

        else
        {
        }

LABEL_46:
        v13 = 0;
        goto LABEL_61;
      }

      v57 = v14;
LABEL_17:
      v20 = [(DNDModeAssertionInvalidation *)self details];
      v21 = [(DNDModeAssertionInvalidation *)v7 details];
      if (v20 == v21)
      {
        v49 = v20;
        v50 = v4;
        v52 = v3;
LABEL_26:
        v26 = [(DNDModeAssertionInvalidation *)self source];
        v27 = [(DNDModeAssertionInvalidation *)v7 source];
        v51 = v26;
        if (v26 == v27)
        {
          v32 = [(DNDModeAssertionInvalidation *)self reason];
        }

        else
        {
          v28 = [(DNDModeAssertionInvalidation *)self source];
          v29 = v20;
          if (!v28)
          {

            v13 = 0;
            goto LABEL_52;
          }

          v43 = v28;
          v30 = [(DNDModeAssertionInvalidation *)v7 source];
          if (!v30)
          {
            v13 = 0;
LABEL_51:

LABEL_52:
            v35 = v49;
            if (v49 != v21)
            {
              v36 = v44;
LABEL_57:
            }

LABEL_58:

            if (v57 != v15)
            {
            }

LABEL_61:
            v11 = v55;
            v3 = v56;
            v4 = v53;
            v12 = v54;
            if (v8 != v9)
            {
              goto LABEL_62;
            }

LABEL_64:

            goto LABEL_65;
          }

          v41 = v30;
          v31 = [(DNDModeAssertionInvalidation *)self source];
          v42 = [(DNDModeAssertionInvalidation *)v7 source];
          if (![v31 isEqual:?])
          {
            v13 = 0;
LABEL_50:

            goto LABEL_51;
          }

          v39 = v31;
          v20 = v29;
          v32 = [(DNDModeAssertionInvalidation *)self reason];
        }

        if (v32 != [(DNDModeAssertionInvalidation *)v7 reason])
        {
          v29 = v20;
          if (v51 != v27)
          {

            v13 = 0;
            goto LABEL_56;
          }

          v13 = 0;
LABEL_55:

LABEL_56:
          v35 = v49;
          v36 = v44;
          if (v49 != v21)
          {
            goto LABEL_57;
          }

          goto LABEL_58;
        }

        v33 = [(DNDModeAssertionInvalidation *)self reasonOverride];
        v13 = v33 == [(DNDModeAssertionInvalidation *)v7 reasonOverride];
        v29 = v20;
        v31 = v40;
        if (v51 == v27)
        {
          goto LABEL_55;
        }

        goto LABEL_50;
      }

      v22 = [(DNDModeAssertionInvalidation *)self details];
      if (v22)
      {
        v48 = v22;
        v23 = [(DNDModeAssertionInvalidation *)v7 details];
        if (v23)
        {
          v50 = v4;
          v52 = v3;
          v45 = v23;
          v24 = [(DNDModeAssertionInvalidation *)self details];
          v25 = [(DNDModeAssertionInvalidation *)v7 details];
          if ([v24 isEqual:v25])
          {
            v49 = v20;
            v20 = v24;
            v44 = v25;
            goto LABEL_26;
          }

          v34 = v57;
          if (v57 == v15)
          {
            goto LABEL_45;
          }

          goto LABEL_44;
        }
      }

      v34 = v57;
      if (v57 == v15)
      {
LABEL_45:

        goto LABEL_46;
      }

LABEL_44:
      goto LABEL_45;
    }

    v13 = 0;
  }

LABEL_65:

  return v13;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = [(DNDModeAssertionInvalidation *)self assertion];
  v6 = [(DNDModeAssertionInvalidation *)self invalidationDate];
  v7 = [(DNDModeAssertionInvalidation *)self details];
  v8 = [(DNDModeAssertionInvalidation *)self source];
  v9 = DNDModeAssertionInvalidationReasonToString([(DNDModeAssertionInvalidation *)self reason]);
  v10 = DNDModeAssertionInvalidationReasonOverrideToString([(DNDModeAssertionInvalidation *)self reasonOverride]);
  v11 = [v3 stringWithFormat:@"<%@: %p assertion: %@; invalidationDate: %@; details: %@; source: %@; reason: %@; reasonOverride: %@>", v4, self, v5, v6, v7, v8, v9, v10];;

  return v11;
}

- (DNDModeAssertionInvalidation)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"assertion"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"invalidationDate"];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"details"];
  v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"source"];
  v9 = [v4 decodeIntegerForKey:@"reason"];
  v10 = [v4 decodeIntegerForKey:@"reasonOverride"];

  v11 = [(DNDModeAssertionInvalidation *)self initWithAssertion:v5 invalidationDate:v6 details:v7 source:v8 reason:v9 reasonOverride:v10];
  return v11;
}

- (void)encodeWithCoder:(id)a3
{
  v8 = a3;
  v4 = [(DNDModeAssertionInvalidation *)self assertion];
  [v8 encodeObject:v4 forKey:@"assertion"];

  v5 = [(DNDModeAssertionInvalidation *)self invalidationDate];
  [v8 encodeObject:v5 forKey:@"invalidationDate"];

  v6 = [(DNDModeAssertionInvalidation *)self details];
  [v8 encodeObject:v6 forKey:@"details"];

  v7 = [(DNDModeAssertionInvalidation *)self source];
  [v8 encodeObject:v7 forKey:@"source"];

  [v8 encodeInteger:-[DNDModeAssertionInvalidation reason](self forKey:{"reason"), @"reason"}];
  [v8 encodeInteger:-[DNDModeAssertionInvalidation reasonOverride](self forKey:{"reasonOverride"), @"reasonOverride"}];
}

@end