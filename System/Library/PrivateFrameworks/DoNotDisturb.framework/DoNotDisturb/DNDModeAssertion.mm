@interface DNDModeAssertion
- (BOOL)isEqual:(id)a3;
- (DNDModeAssertion)initWithCoder:(id)a3;
- (DNDModeAssertion)initWithUUID:(id)a3 startDate:(id)a4 details:(id)a5 source:(id)a6;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation DNDModeAssertion

- (DNDModeAssertion)initWithUUID:(id)a3 startDate:(id)a4 details:(id)a5 source:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v27.receiver = self;
  v27.super_class = DNDModeAssertion;
  v14 = [(DNDModeAssertion *)&v27 init];
  if (v14)
  {
    v15 = [v10 copy];
    UUID = v14->_UUID;
    v14->_UUID = v15;

    v17 = [v11 copy];
    v18 = v17;
    if (v17)
    {
      v19 = v17;
    }

    else
    {
      v19 = [MEMORY[0x277CBEAA8] distantPast];
    }

    startDate = v14->_startDate;
    v14->_startDate = v19;

    v21 = [v12 copy];
    details = v14->_details;
    v14->_details = v21;

    v23 = [v13 copy];
    source = v14->_source;
    v14->_source = v23;

    if (!v11)
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
  v3 = [(DNDModeAssertion *)self UUID];
  v4 = [v3 hash];
  v5 = [(DNDModeAssertion *)self startDate];
  v6 = [v5 hash] ^ v4;
  v7 = [(DNDModeAssertion *)self details];
  v8 = [v7 hash];
  v9 = [(DNDModeAssertion *)self source];
  v10 = v8 ^ [v9 hash];

  return v6 ^ v10;
}

- (BOOL)isEqual:(id)a3
{
  v5 = a3;
  if (self == v5)
  {
    v13 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
      v7 = [(DNDModeAssertion *)self UUID];
      v8 = [(DNDModeAssertion *)v6 UUID];
      if (v7 != v8)
      {
        v9 = [(DNDModeAssertion *)self UUID];
        if (!v9)
        {
          v13 = 0;
          goto LABEL_50;
        }

        v10 = v9;
        v11 = [(DNDModeAssertion *)v6 UUID];
        if (!v11)
        {
          v13 = 0;
LABEL_49:

          goto LABEL_50;
        }

        v12 = [(DNDModeAssertion *)self UUID];
        v3 = [(DNDModeAssertion *)v6 UUID];
        if (![v12 isEqual:v3])
        {
          v13 = 0;
LABEL_48:

          goto LABEL_49;
        }

        v48 = v3;
        v49 = v12;
        v50 = v11;
        v51 = v10;
      }

      v14 = [(DNDModeAssertion *)self startDate];
      v15 = [(DNDModeAssertion *)v6 startDate];
      if (v14 != v15)
      {
        v16 = [(DNDModeAssertion *)self startDate];
        if (v16)
        {
          v17 = v16;
          v18 = [(DNDModeAssertion *)v6 startDate];
          if (v18)
          {
            v19 = v18;
            v47 = v14;
            v20 = [(DNDModeAssertion *)self startDate];
            v3 = [(DNDModeAssertion *)v6 startDate];
            if (([v20 isEqual:v3] & 1) == 0)
            {

              goto LABEL_38;
            }

            v41 = v20;
            v42 = v19;
            v43 = v17;
            goto LABEL_17;
          }
        }

        goto LABEL_38;
      }

      v47 = v14;
LABEL_17:
      v21 = [(DNDModeAssertion *)self details];
      v46 = [(DNDModeAssertion *)v6 details];
      if (v21 == v46)
      {
        v44 = v21;
        v45 = v3;
        goto LABEL_25;
      }

      v22 = [(DNDModeAssertion *)self details];
      if (v22)
      {
        v23 = v22;
        v24 = [(DNDModeAssertion *)v6 details];
        if (v24)
        {
          v45 = v3;
          v40 = v24;
          v25 = [(DNDModeAssertion *)self details];
          v26 = [(DNDModeAssertion *)v6 details];
          if ([v25 isEqual:v26])
          {
            v37 = v26;
            v38 = v25;
            v39 = v23;
            v44 = v21;
LABEL_25:
            v27 = [(DNDModeAssertion *)self source];
            v28 = [(DNDModeAssertion *)v6 source];
            v29 = v28;
            if (v27 == v28)
            {

              v13 = 1;
            }

            else
            {
              v30 = [(DNDModeAssertion *)self source];
              if (v30)
              {
                v36 = v30;
                v31 = [(DNDModeAssertion *)v6 source];
                if (v31)
                {
                  v35 = v31;
                  v32 = [(DNDModeAssertion *)self source];
                  v33 = [(DNDModeAssertion *)v6 source];
                  v13 = [v32 isEqual:v33];

                  v31 = v35;
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

            if (v44 != v46)
            {
            }

            if (v47 != v15)
            {
            }

LABEL_47:
            v11 = v50;
            v10 = v51;
            v12 = v49;
            v3 = v48;
            if (v7 != v8)
            {
              goto LABEL_48;
            }

LABEL_50:

            goto LABEL_51;
          }

          v24 = v40;
          v3 = v45;
        }
      }

      if (v47 != v15)
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
  v5 = [(DNDModeAssertion *)self UUID];
  v6 = [(DNDModeAssertion *)self startDate];
  v7 = [(DNDModeAssertion *)self details];
  v8 = [(DNDModeAssertion *)self source];
  v9 = [v3 stringWithFormat:@"<%@: %p UUID: %@; startDate: %@; details: %@; source: %@>", v4, self, v5, v6, v7, v8];;

  return v9;
}

- (DNDModeAssertion)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"UUID"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"startDate"];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"details"];
  v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"source"];

  v9 = [(DNDModeAssertion *)self initWithUUID:v5 startDate:v6 details:v7 source:v8];
  return v9;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(DNDModeAssertion *)self UUID];
  [v4 encodeObject:v5 forKey:@"UUID"];

  v6 = [(DNDModeAssertion *)self startDate];
  [v4 encodeObject:v6 forKey:@"startDate"];

  v7 = [(DNDModeAssertion *)self details];
  [v4 encodeObject:v7 forKey:@"details"];

  v8 = [(DNDModeAssertion *)self source];
  [v4 encodeObject:v8 forKey:@"source"];
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