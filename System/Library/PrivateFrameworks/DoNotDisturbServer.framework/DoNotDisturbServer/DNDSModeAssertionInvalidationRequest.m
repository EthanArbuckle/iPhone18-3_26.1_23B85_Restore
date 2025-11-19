@interface DNDSModeAssertionInvalidationRequest
+ (id)requestWithPredicate:(id)a3 requestDate:(id)a4 details:(id)a5 source:(id)a6 reason:(unint64_t)a7 reasonOverride:(unint64_t)a8;
+ (id)requestWithPredicate:(id)a3 requestDate:(id)a4 source:(id)a5 reason:(unint64_t)a6;
- (BOOL)isEqual:(id)a3;
- (DNDSModeAssertionInvalidationRequest)initWithUUID:(id)a3 predicate:(id)a4 requestDate:(id)a5 details:(id)a6 source:(id)a7 reason:(unint64_t)a8 reasonOverride:(unint64_t)a9;
- (NSString)description;
- (id)resolveWithExpectedRemoteDeviceIdentifier:(id)a3 localDeviceIdentifier:(id)a4 remoteDeviceIdentifier:(id)a5;
- (unint64_t)hash;
@end

@implementation DNDSModeAssertionInvalidationRequest

- (id)resolveWithExpectedRemoteDeviceIdentifier:(id)a3 localDeviceIdentifier:(id)a4 remoteDeviceIdentifier:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(DNDSModeAssertionInvalidationRequest *)self source];
  v12 = [v11 resolveWithExpectedRemoteDeviceIdentifier:v10 localDeviceIdentifier:v9 remoteDeviceIdentifier:v8];

  if (v11 == v12 || v11 && v12 && [v11 isEqual:v12])
  {
    v13 = self;
  }

  else
  {
    v14 = [DNDSModeAssertionInvalidationRequest alloc];
    v15 = [(DNDSModeAssertionInvalidationRequest *)self UUID];
    v16 = [(DNDSModeAssertionInvalidationRequest *)self predicate];
    v17 = [(DNDSModeAssertionInvalidationRequest *)self requestDate];
    v18 = [(DNDSModeAssertionInvalidationRequest *)self details];
    v13 = [(DNDSModeAssertionInvalidationRequest *)v14 initWithUUID:v15 predicate:v16 requestDate:v17 details:v18 source:v12 reason:[(DNDSModeAssertionInvalidationRequest *)self reason] reasonOverride:[(DNDSModeAssertionInvalidationRequest *)self reasonOverride]];
  }

  return v13;
}

+ (id)requestWithPredicate:(id)a3 requestDate:(id)a4 source:(id)a5 reason:(unint64_t)a6
{
  v10 = a5;
  v11 = a4;
  v12 = a3;
  v13 = [a1 alloc];
  v14 = [MEMORY[0x277CCAD78] UUID];
  v15 = [v13 initWithUUID:v14 predicate:v12 requestDate:v11 details:0 source:v10 reason:a6 reasonOverride:0];

  return v15;
}

+ (id)requestWithPredicate:(id)a3 requestDate:(id)a4 details:(id)a5 source:(id)a6 reason:(unint64_t)a7 reasonOverride:(unint64_t)a8
{
  v14 = a6;
  v15 = a5;
  v16 = a4;
  v17 = a3;
  v18 = [a1 alloc];
  v19 = [MEMORY[0x277CCAD78] UUID];
  v20 = [v18 initWithUUID:v19 predicate:v17 requestDate:v16 details:v15 source:v14 reason:a7 reasonOverride:a8];

  return v20;
}

- (DNDSModeAssertionInvalidationRequest)initWithUUID:(id)a3 predicate:(id)a4 requestDate:(id)a5 details:(id)a6 source:(id)a7 reason:(unint64_t)a8 reasonOverride:(unint64_t)a9
{
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a7;
  v32.receiver = self;
  v32.super_class = DNDSModeAssertionInvalidationRequest;
  v20 = [(DNDSModeAssertionInvalidationRequest *)&v32 init];
  if (v20)
  {
    v21 = [v15 copy];
    UUID = v20->_UUID;
    v20->_UUID = v21;

    v23 = [v16 copy];
    predicate = v20->_predicate;
    v20->_predicate = v23;

    v25 = [v17 copy];
    requestDate = v20->_requestDate;
    v20->_requestDate = v25;

    v27 = [v18 copy];
    details = v20->_details;
    v20->_details = v27;

    v29 = [v19 copy];
    source = v20->_source;
    v20->_source = v29;

    v20->_reason = a8;
    v20->_reasonOverride = a9;
  }

  return v20;
}

- (unint64_t)hash
{
  v3 = [(DNDSModeAssertionInvalidationRequest *)self UUID];
  v4 = [v3 hash];
  v5 = [(DNDSModeAssertionInvalidationRequest *)self predicate];
  v6 = [v5 hash] ^ v4;
  v7 = [(DNDSModeAssertionInvalidationRequest *)self requestDate];
  v8 = [v7 hash];
  v9 = [(DNDSModeAssertionInvalidationRequest *)self details];
  v10 = v6 ^ v8 ^ [v9 hash];
  v11 = [(DNDSModeAssertionInvalidationRequest *)self source];
  v12 = [v11 hash];
  v13 = v12 ^ [(DNDSModeAssertionInvalidationRequest *)self reason];
  v14 = v13 ^ [(DNDSModeAssertionInvalidationRequest *)self reasonOverride];

  return v10 ^ v14;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v10 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(DNDSModeAssertionInvalidationRequest *)self UUID];
      v7 = [(DNDSModeAssertionInvalidationRequest *)v5 UUID];
      if (v6 != v7)
      {
        v66 = [(DNDSModeAssertionInvalidationRequest *)self UUID];
        if (!v66)
        {
          v10 = 0;
          goto LABEL_59;
        }

        v64 = [(DNDSModeAssertionInvalidationRequest *)v5 UUID];
        if (!v64)
        {
          v10 = 0;
LABEL_58:

          goto LABEL_59;
        }

        v8 = [(DNDSModeAssertionInvalidationRequest *)self UUID];
        v9 = [(DNDSModeAssertionInvalidationRequest *)v5 UUID];
        if (![v8 isEqual:v9])
        {
          v10 = 0;
LABEL_57:

          goto LABEL_58;
        }

        v62 = v9;
        v63 = v8;
      }

      v11 = [(DNDSModeAssertionInvalidationRequest *)self predicate];
      v65 = [(DNDSModeAssertionInvalidationRequest *)v5 predicate];
      if (v11 != v65)
      {
        v12 = [(DNDSModeAssertionInvalidationRequest *)self predicate];
        if (v12)
        {
          v13 = v12;
          v14 = [(DNDSModeAssertionInvalidationRequest *)v5 predicate];
          if (v14)
          {
            v60 = v14;
            v15 = [(DNDSModeAssertionInvalidationRequest *)self predicate];
            v16 = [(DNDSModeAssertionInvalidationRequest *)v5 predicate];
            if ([v15 isEqual:v16])
            {
              v56 = v16;
              v57 = v13;
              v58 = v15;
              goto LABEL_16;
            }
          }
        }

LABEL_55:

        v10 = 0;
        goto LABEL_56;
      }

LABEL_16:
      v17 = [(DNDSModeAssertionInvalidationRequest *)self requestDate];
      v18 = [(DNDSModeAssertionInvalidationRequest *)v5 requestDate];
      v61 = v17;
      if (v17 == v18)
      {
        goto LABEL_23;
      }

      v19 = [(DNDSModeAssertionInvalidationRequest *)self requestDate];
      if (v19)
      {
        v20 = v19;
        v21 = [(DNDSModeAssertionInvalidationRequest *)v5 requestDate];
        if (v21)
        {
          v22 = v18;
          v23 = v20;
          v53 = v21;
          v24 = [(DNDSModeAssertionInvalidationRequest *)self requestDate];
          v25 = [(DNDSModeAssertionInvalidationRequest *)v5 requestDate];
          if ([v24 isEqual:v25])
          {
            v49 = v24;
            v52 = v25;
            v17 = v23;
            v18 = v22;
LABEL_23:
            v26 = [(DNDSModeAssertionInvalidationRequest *)self details];
            v59 = [(DNDSModeAssertionInvalidationRequest *)v5 details];
            if (v26 == v59)
            {
LABEL_31:
              v31 = [(DNDSModeAssertionInvalidationRequest *)self source];
              v51 = [(DNDSModeAssertionInvalidationRequest *)v5 source];
              v55 = v17;
              if (v31 != v51)
              {
                v32 = [(DNDSModeAssertionInvalidationRequest *)self source];
                if (!v32)
                {
                  v41 = v52;

                  v10 = 0;
LABEL_64:
                  if (v26 != v59)
                  {
                  }

                  if (v61 != v18)
                  {
                  }

LABEL_75:

                  if (v11 != v65)
                  {
                  }

LABEL_56:
                  v9 = v62;
                  v8 = v63;
                  if (v6 != v7)
                  {
                    goto LABEL_57;
                  }

LABEL_59:

                  goto LABEL_60;
                }

                v47 = v32;
                v33 = [(DNDSModeAssertionInvalidationRequest *)v5 source];
                if (!v33)
                {
                  v10 = 0;
                  goto LABEL_63;
                }

                v43 = v33;
                v34 = [(DNDSModeAssertionInvalidationRequest *)self source];
                [(DNDSModeAssertionInvalidationRequest *)v5 source];
                v44 = v42 = v34;
                if (![v34 isEqual:?])
                {
                  v10 = 0;
LABEL_45:

LABEL_63:
                  v41 = v52;

                  goto LABEL_64;
                }
              }

              v36 = [(DNDSModeAssertionInvalidationRequest *)self reason];
              if (v36 == [(DNDSModeAssertionInvalidationRequest *)v5 reason])
              {
                v37 = [(DNDSModeAssertionInvalidationRequest *)self reasonOverride];
                v10 = v37 == [(DNDSModeAssertionInvalidationRequest *)v5 reasonOverride];
                v38 = v55;
                if (v31 != v51)
                {
                  goto LABEL_45;
                }
              }

              else
              {
                v38 = v55;
                if (v31 != v51)
                {

                  v10 = 0;
LABEL_71:
                  if (v26 != v59)
                  {
                  }

                  if (v61 != v18)
                  {
                  }

                  goto LABEL_75;
                }

                v10 = 0;
              }

              goto LABEL_71;
            }

            v27 = [(DNDSModeAssertionInvalidationRequest *)self details];
            if (v27)
            {
              v50 = v27;
              v28 = [(DNDSModeAssertionInvalidationRequest *)v5 details];
              if (v28)
              {
                v54 = v17;
                v48 = v28;
                v29 = [(DNDSModeAssertionInvalidationRequest *)self details];
                v30 = [(DNDSModeAssertionInvalidationRequest *)v5 details];
                if ([v29 isEqual:v30])
                {
                  v45 = v30;
                  v46 = v29;
                  v17 = v54;
                  goto LABEL_31;
                }

                v39 = v61;
                if (v61 != v18)
                {
                }

                goto LABEL_53;
              }

              v35 = v52;
            }

            else
            {
              v35 = v52;
            }

            v39 = v61;
            if (v61 != v18)
            {
            }

LABEL_53:

            if (v11 != v65)
            {
            }

            goto LABEL_55;
          }

LABEL_39:
          if (v11 != v65)
          {
          }

          goto LABEL_55;
        }
      }

      goto LABEL_39;
    }

    v10 = 0;
  }

LABEL_60:

  return v10;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = [(DNDSModeAssertionInvalidationRequest *)self UUID];
  v6 = [(DNDSModeAssertionInvalidationRequest *)self predicate];
  v7 = [(DNDSModeAssertionInvalidationRequest *)self requestDate];
  v8 = [(DNDSModeAssertionInvalidationRequest *)self details];
  v9 = [(DNDSModeAssertionInvalidationRequest *)self source];
  [(DNDSModeAssertionInvalidationRequest *)self reason];
  v10 = DNDModeAssertionInvalidationReasonToString();
  [(DNDSModeAssertionInvalidationRequest *)self reasonOverride];
  v11 = DNDModeAssertionInvalidationReasonOverrideToString();
  v12 = [v3 stringWithFormat:@"<%@: %p UUID: %@; predicate: %@; requestDate: %@; details: %@; source: %@; reason: %@; reasonOverride: %@>", v4, self, v5, v6, v7, v8, v9, v10, v11];;

  return v12;
}

@end