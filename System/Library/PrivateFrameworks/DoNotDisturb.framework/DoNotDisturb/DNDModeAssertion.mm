@interface DNDModeAssertion
- (BOOL)isEqual:(id)equal;
- (DNDModeAssertion)initWithCoder:(id)coder;
- (DNDModeAssertion)initWithUUID:(id)d startDate:(id)date details:(id)details source:(id)source;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation DNDModeAssertion

- (DNDModeAssertion)initWithUUID:(id)d startDate:(id)date details:(id)details source:(id)source
{
  dCopy = d;
  dateCopy = date;
  detailsCopy = details;
  sourceCopy = source;
  v27.receiver = self;
  v27.super_class = DNDModeAssertion;
  v14 = [(DNDModeAssertion *)&v27 init];
  if (v14)
  {
    v15 = [dCopy copy];
    UUID = v14->_UUID;
    v14->_UUID = v15;

    v17 = [dateCopy copy];
    v18 = v17;
    if (v17)
    {
      distantPast = v17;
    }

    else
    {
      distantPast = [MEMORY[0x277CBEAA8] distantPast];
    }

    startDate = v14->_startDate;
    v14->_startDate = distantPast;

    v21 = [detailsCopy copy];
    details = v14->_details;
    v14->_details = v21;

    v23 = [sourceCopy copy];
    source = v14->_source;
    v14->_source = v23;

    if (!dateCopy)
    {
      v25 = DNDLogModeAssertion;
      if (os_log_type_enabled(DNDLogModeAssertion, OS_LOG_TYPE_FAULT))
      {
        [DNDModeAssertion initWithUUID:v14 startDate:v25 details:? source:?];
      }
    }
  }

  return v14;
}

- (unint64_t)hash
{
  uUID = [(DNDModeAssertion *)self UUID];
  v4 = [uUID hash];
  startDate = [(DNDModeAssertion *)self startDate];
  v6 = [startDate hash] ^ v4;
  details = [(DNDModeAssertion *)self details];
  v8 = [details hash];
  source = [(DNDModeAssertion *)self source];
  v10 = v8 ^ [source hash];

  return v6 ^ v10;
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
      v6 = equalCopy;
      uUID = [(DNDModeAssertion *)self UUID];
      uUID2 = [(DNDModeAssertion *)v6 UUID];
      if (uUID != uUID2)
      {
        uUID3 = [(DNDModeAssertion *)self UUID];
        if (!uUID3)
        {
          v13 = 0;
          goto LABEL_50;
        }

        v10 = uUID3;
        uUID4 = [(DNDModeAssertion *)v6 UUID];
        if (!uUID4)
        {
          v13 = 0;
LABEL_49:

          goto LABEL_50;
        }

        uUID5 = [(DNDModeAssertion *)self UUID];
        uUID6 = [(DNDModeAssertion *)v6 UUID];
        if (![uUID5 isEqual:uUID6])
        {
          v13 = 0;
LABEL_48:

          goto LABEL_49;
        }

        v48 = uUID6;
        v49 = uUID5;
        v50 = uUID4;
        v51 = v10;
      }

      startDate = [(DNDModeAssertion *)self startDate];
      startDate2 = [(DNDModeAssertion *)v6 startDate];
      if (startDate != startDate2)
      {
        startDate3 = [(DNDModeAssertion *)self startDate];
        if (startDate3)
        {
          v17 = startDate3;
          startDate4 = [(DNDModeAssertion *)v6 startDate];
          if (startDate4)
          {
            v19 = startDate4;
            v47 = startDate;
            startDate5 = [(DNDModeAssertion *)self startDate];
            uUID6 = [(DNDModeAssertion *)v6 startDate];
            if (([startDate5 isEqual:uUID6] & 1) == 0)
            {

              goto LABEL_38;
            }

            v41 = startDate5;
            v42 = v19;
            v43 = v17;
            goto LABEL_17;
          }
        }

        goto LABEL_38;
      }

      v47 = startDate;
LABEL_17:
      details = [(DNDModeAssertion *)self details];
      details2 = [(DNDModeAssertion *)v6 details];
      if (details == details2)
      {
        v44 = details;
        v45 = uUID6;
        goto LABEL_25;
      }

      details3 = [(DNDModeAssertion *)self details];
      if (details3)
      {
        v23 = details3;
        details4 = [(DNDModeAssertion *)v6 details];
        if (details4)
        {
          v45 = uUID6;
          v40 = details4;
          details5 = [(DNDModeAssertion *)self details];
          details6 = [(DNDModeAssertion *)v6 details];
          if ([details5 isEqual:details6])
          {
            v37 = details6;
            v38 = details5;
            v39 = v23;
            v44 = details;
LABEL_25:
            source = [(DNDModeAssertion *)self source];
            source2 = [(DNDModeAssertion *)v6 source];
            v29 = source2;
            if (source == source2)
            {

              v13 = 1;
            }

            else
            {
              source3 = [(DNDModeAssertion *)self source];
              if (source3)
              {
                v36 = source3;
                source4 = [(DNDModeAssertion *)v6 source];
                if (source4)
                {
                  v35 = source4;
                  source5 = [(DNDModeAssertion *)self source];
                  source6 = [(DNDModeAssertion *)v6 source];
                  v13 = [source5 isEqual:source6];

                  source4 = v35;
                }

                else
                {
                  v13 = 0;
                }
              }

              else
              {

                v13 = 0;
              }
            }

            if (v44 != details2)
            {
            }

            if (v47 != startDate2)
            {
            }

LABEL_47:
            uUID4 = v50;
            v10 = v51;
            uUID5 = v49;
            uUID6 = v48;
            if (uUID != uUID2)
            {
              goto LABEL_48;
            }

LABEL_50:

            goto LABEL_51;
          }

          details4 = v40;
          uUID6 = v45;
        }
      }

      if (v47 != startDate2)
      {
      }

LABEL_38:
      v13 = 0;
      goto LABEL_47;
    }

    v13 = 0;
  }

LABEL_51:

  return v13;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  uUID = [(DNDModeAssertion *)self UUID];
  startDate = [(DNDModeAssertion *)self startDate];
  details = [(DNDModeAssertion *)self details];
  source = [(DNDModeAssertion *)self source];
  v9 = [v3 stringWithFormat:@"<%@: %p UUID: %@; startDate: %@; details: %@; source: %@>", v4, self, uUID, startDate, details, source];;

  return v9;
}

- (DNDModeAssertion)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"UUID"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"startDate"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"details"];
  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"source"];

  v9 = [(DNDModeAssertion *)self initWithUUID:v5 startDate:v6 details:v7 source:v8];
  return v9;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  uUID = [(DNDModeAssertion *)self UUID];
  [coderCopy encodeObject:uUID forKey:@"UUID"];

  startDate = [(DNDModeAssertion *)self startDate];
  [coderCopy encodeObject:startDate forKey:@"startDate"];

  details = [(DNDModeAssertion *)self details];
  [coderCopy encodeObject:details forKey:@"details"];

  source = [(DNDModeAssertion *)self source];
  [coderCopy encodeObject:source forKey:@"source"];
}

- (void)initWithUUID:(uint64_t)a1 startDate:(NSObject *)a2 details:source:.cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_fault_impl(&dword_22002F000, a2, OS_LOG_TYPE_FAULT, "nil startDate provided to DNDModeAssertion initializer. %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end