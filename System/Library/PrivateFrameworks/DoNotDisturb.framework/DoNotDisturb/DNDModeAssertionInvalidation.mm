@interface DNDModeAssertionInvalidation
- (BOOL)isEqual:(id)equal;
- (DNDModeAssertionInvalidation)initWithAssertion:(id)assertion invalidationDate:(id)date details:(id)details source:(id)source reason:(unint64_t)reason reasonOverride:(unint64_t)override;
- (DNDModeAssertionInvalidation)initWithCoder:(id)coder;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation DNDModeAssertionInvalidation

- (DNDModeAssertionInvalidation)initWithAssertion:(id)assertion invalidationDate:(id)date details:(id)details source:(id)source reason:(unint64_t)reason reasonOverride:(unint64_t)override
{
  assertionCopy = assertion;
  dateCopy = date;
  detailsCopy = details;
  sourceCopy = source;
  v28.receiver = self;
  v28.super_class = DNDModeAssertionInvalidation;
  v18 = [(DNDModeAssertionInvalidation *)&v28 init];
  if (v18)
  {
    v19 = [assertionCopy copy];
    assertion = v18->_assertion;
    v18->_assertion = v19;

    v21 = [dateCopy copy];
    invalidationDate = v18->_invalidationDate;
    v18->_invalidationDate = v21;

    v23 = [detailsCopy copy];
    details = v18->_details;
    v18->_details = v23;

    v25 = [sourceCopy copy];
    source = v18->_source;
    v18->_source = v25;

    v18->_reason = reason;
    v18->_reasonOverride = override;
  }

  return v18;
}

- (unint64_t)hash
{
  assertion = [(DNDModeAssertionInvalidation *)self assertion];
  v4 = [assertion hash];
  invalidationDate = [(DNDModeAssertionInvalidation *)self invalidationDate];
  v6 = [invalidationDate hash] ^ v4;
  details = [(DNDModeAssertionInvalidation *)self details];
  v8 = [details hash];
  source = [(DNDModeAssertionInvalidation *)self source];
  v10 = v6 ^ v8 ^ [source hash];
  reason = [(DNDModeAssertionInvalidation *)self reason];
  v12 = reason ^ [(DNDModeAssertionInvalidation *)self reasonOverride];

  return v10 ^ v12;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v13 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = equalCopy;
      assertion = [(DNDModeAssertionInvalidation *)self assertion];
      assertion2 = [(DNDModeAssertionInvalidation *)v7 assertion];
      if (assertion != assertion2)
      {
        assertion3 = [(DNDModeAssertionInvalidation *)self assertion];
        if (!assertion3)
        {
          v13 = 0;
          goto LABEL_64;
        }

        invalidationDate5 = assertion3;
        assertion4 = [(DNDModeAssertionInvalidation *)v7 assertion];
        if (!assertion4)
        {
          v13 = 0;
LABEL_63:

          goto LABEL_64;
        }

        assertion5 = [(DNDModeAssertionInvalidation *)self assertion];
        assertion6 = [(DNDModeAssertionInvalidation *)v7 assertion];
        if (![assertion5 isEqual:assertion6])
        {
          v13 = 0;
LABEL_62:

          goto LABEL_63;
        }

        v56 = invalidationDate5;
        v53 = assertion6;
        v54 = assertion5;
        v55 = assertion4;
      }

      invalidationDate = [(DNDModeAssertionInvalidation *)self invalidationDate];
      invalidationDate2 = [(DNDModeAssertionInvalidation *)v7 invalidationDate];
      if (invalidationDate != invalidationDate2)
      {
        invalidationDate3 = [(DNDModeAssertionInvalidation *)self invalidationDate];
        if (invalidationDate3)
        {
          v17 = invalidationDate3;
          v57 = invalidationDate;
          invalidationDate4 = [(DNDModeAssertionInvalidation *)v7 invalidationDate];
          if (invalidationDate4)
          {
            v19 = invalidationDate4;
            invalidationDate5 = [(DNDModeAssertionInvalidation *)self invalidationDate];
            assertion6 = [(DNDModeAssertionInvalidation *)v7 invalidationDate];
            if ([invalidationDate5 isEqual:assertion6])
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

      v57 = invalidationDate;
LABEL_17:
      details = [(DNDModeAssertionInvalidation *)self details];
      details2 = [(DNDModeAssertionInvalidation *)v7 details];
      if (details == details2)
      {
        v49 = details;
        v50 = assertion6;
        v52 = invalidationDate5;
LABEL_26:
        source = [(DNDModeAssertionInvalidation *)self source];
        source2 = [(DNDModeAssertionInvalidation *)v7 source];
        v51 = source;
        if (source == source2)
        {
          reason = [(DNDModeAssertionInvalidation *)self reason];
        }

        else
        {
          source3 = [(DNDModeAssertionInvalidation *)self source];
          v29 = details;
          if (!source3)
          {

            v13 = 0;
            goto LABEL_52;
          }

          v43 = source3;
          source4 = [(DNDModeAssertionInvalidation *)v7 source];
          if (!source4)
          {
            v13 = 0;
LABEL_51:

LABEL_52:
            v35 = v49;
            if (v49 != details2)
            {
              v36 = v44;
LABEL_57:
            }

LABEL_58:

            if (v57 != invalidationDate2)
            {
            }

LABEL_61:
            assertion4 = v55;
            invalidationDate5 = v56;
            assertion6 = v53;
            assertion5 = v54;
            if (assertion != assertion2)
            {
              goto LABEL_62;
            }

LABEL_64:

            goto LABEL_65;
          }

          v41 = source4;
          source5 = [(DNDModeAssertionInvalidation *)self source];
          source6 = [(DNDModeAssertionInvalidation *)v7 source];
          if (![source5 isEqual:?])
          {
            v13 = 0;
LABEL_50:

            goto LABEL_51;
          }

          v39 = source5;
          details = v29;
          reason = [(DNDModeAssertionInvalidation *)self reason];
        }

        if (reason != [(DNDModeAssertionInvalidation *)v7 reason])
        {
          v29 = details;
          if (v51 != source2)
          {

            v13 = 0;
            goto LABEL_56;
          }

          v13 = 0;
LABEL_55:

LABEL_56:
          v35 = v49;
          v36 = v44;
          if (v49 != details2)
          {
            goto LABEL_57;
          }

          goto LABEL_58;
        }

        reasonOverride = [(DNDModeAssertionInvalidation *)self reasonOverride];
        v13 = reasonOverride == [(DNDModeAssertionInvalidation *)v7 reasonOverride];
        v29 = details;
        source5 = v40;
        if (v51 == source2)
        {
          goto LABEL_55;
        }

        goto LABEL_50;
      }

      details3 = [(DNDModeAssertionInvalidation *)self details];
      if (details3)
      {
        v48 = details3;
        details4 = [(DNDModeAssertionInvalidation *)v7 details];
        if (details4)
        {
          v50 = assertion6;
          v52 = invalidationDate5;
          v45 = details4;
          details5 = [(DNDModeAssertionInvalidation *)self details];
          details6 = [(DNDModeAssertionInvalidation *)v7 details];
          if ([details5 isEqual:details6])
          {
            v49 = details;
            details = details5;
            v44 = details6;
            goto LABEL_26;
          }

          v34 = v57;
          if (v57 == invalidationDate2)
          {
            goto LABEL_45;
          }

          goto LABEL_44;
        }
      }

      v34 = v57;
      if (v57 == invalidationDate2)
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
  assertion = [(DNDModeAssertionInvalidation *)self assertion];
  invalidationDate = [(DNDModeAssertionInvalidation *)self invalidationDate];
  details = [(DNDModeAssertionInvalidation *)self details];
  source = [(DNDModeAssertionInvalidation *)self source];
  v9 = DNDModeAssertionInvalidationReasonToString([(DNDModeAssertionInvalidation *)self reason]);
  v10 = DNDModeAssertionInvalidationReasonOverrideToString([(DNDModeAssertionInvalidation *)self reasonOverride]);
  v11 = [v3 stringWithFormat:@"<%@: %p assertion: %@; invalidationDate: %@; details: %@; source: %@; reason: %@; reasonOverride: %@>", v4, self, assertion, invalidationDate, details, source, v9, v10];;

  return v11;
}

- (DNDModeAssertionInvalidation)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"assertion"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"invalidationDate"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"details"];
  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"source"];
  v9 = [coderCopy decodeIntegerForKey:@"reason"];
  v10 = [coderCopy decodeIntegerForKey:@"reasonOverride"];

  v11 = [(DNDModeAssertionInvalidation *)self initWithAssertion:v5 invalidationDate:v6 details:v7 source:v8 reason:v9 reasonOverride:v10];
  return v11;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  assertion = [(DNDModeAssertionInvalidation *)self assertion];
  [coderCopy encodeObject:assertion forKey:@"assertion"];

  invalidationDate = [(DNDModeAssertionInvalidation *)self invalidationDate];
  [coderCopy encodeObject:invalidationDate forKey:@"invalidationDate"];

  details = [(DNDModeAssertionInvalidation *)self details];
  [coderCopy encodeObject:details forKey:@"details"];

  source = [(DNDModeAssertionInvalidation *)self source];
  [coderCopy encodeObject:source forKey:@"source"];

  [coderCopy encodeInteger:-[DNDModeAssertionInvalidation reason](self forKey:{"reason"), @"reason"}];
  [coderCopy encodeInteger:-[DNDModeAssertionInvalidation reasonOverride](self forKey:{"reasonOverride"), @"reasonOverride"}];
}

@end