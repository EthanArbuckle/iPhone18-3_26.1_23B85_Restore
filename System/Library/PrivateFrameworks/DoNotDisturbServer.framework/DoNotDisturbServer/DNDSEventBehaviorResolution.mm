@interface DNDSEventBehaviorResolution
+ (id)resolutionForDate:(id)a3 eventBehavior:(id)a4 clientIdentifier:(id)a5 outcome:(unint64_t)a6 reason:(unint64_t)a7;
- (BOOL)isEqual:(id)a3;
- (id)_descriptionForRedacted:(BOOL)a3;
- (id)_initWithUUID:(id)a3 date:(id)a4 eventBehavior:(id)a5 clientIdentifier:(id)a6 outcome:(unint64_t)a7 reason:(unint64_t)a8;
- (unint64_t)hash;
@end

@implementation DNDSEventBehaviorResolution

+ (id)resolutionForDate:(id)a3 eventBehavior:(id)a4 clientIdentifier:(id)a5 outcome:(unint64_t)a6 reason:(unint64_t)a7
{
  v12 = a5;
  v13 = a4;
  v14 = a3;
  v15 = [a1 alloc];
  v16 = [MEMORY[0x277CCAD78] UUID];
  v17 = [v15 _initWithUUID:v16 date:v14 eventBehavior:v13 clientIdentifier:v12 outcome:a6 reason:a7];

  return v17;
}

- (id)_initWithUUID:(id)a3 date:(id)a4 eventBehavior:(id)a5 clientIdentifier:(id)a6 outcome:(unint64_t)a7 reason:(unint64_t)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v28.receiver = self;
  v28.super_class = DNDSEventBehaviorResolution;
  v18 = [(DNDSEventBehaviorResolution *)&v28 init];
  if (v18)
  {
    v19 = [v14 copy];
    UUID = v18->_UUID;
    v18->_UUID = v19;

    v21 = [v15 copy];
    date = v18->_date;
    v18->_date = v21;

    v23 = [v16 copy];
    eventBehavior = v18->_eventBehavior;
    v18->_eventBehavior = v23;

    v25 = [v17 copy];
    clientIdentifier = v18->_clientIdentifier;
    v18->_clientIdentifier = v25;

    v18->_outcome = a7;
    v18->_reason = a8;
  }

  return v18;
}

- (unint64_t)hash
{
  v3 = [(DNDSEventBehaviorResolution *)self UUID];
  v4 = [v3 hash];
  v5 = [(DNDSEventBehaviorResolution *)self date];
  v6 = [v5 hash] ^ v4;
  v7 = [(DNDSEventBehaviorResolution *)self eventBehavior];
  v8 = [v7 hash];
  v9 = [(DNDSEventBehaviorResolution *)self clientIdentifier];
  v10 = v6 ^ v8 ^ [v9 hash];
  v11 = [(DNDSEventBehaviorResolution *)self outcome];
  v12 = v11 ^ [(DNDSEventBehaviorResolution *)self reason];

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
      v8 = [(DNDSEventBehaviorResolution *)self UUID];
      v9 = [(DNDSEventBehaviorResolution *)v7 UUID];
      if (v8 != v9)
      {
        v10 = [(DNDSEventBehaviorResolution *)self UUID];
        if (!v10)
        {
          v13 = 0;
          goto LABEL_64;
        }

        v3 = v10;
        v11 = [(DNDSEventBehaviorResolution *)v7 UUID];
        if (!v11)
        {
          v13 = 0;
LABEL_63:

          goto LABEL_64;
        }

        v12 = [(DNDSEventBehaviorResolution *)self UUID];
        v4 = [(DNDSEventBehaviorResolution *)v7 UUID];
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

      v14 = [(DNDSEventBehaviorResolution *)self date];
      v15 = [(DNDSEventBehaviorResolution *)v7 date];
      if (v14 != v15)
      {
        v16 = [(DNDSEventBehaviorResolution *)self date];
        if (v16)
        {
          v17 = v16;
          v57 = v14;
          v18 = [(DNDSEventBehaviorResolution *)v7 date];
          if (v18)
          {
            v19 = v18;
            v3 = [(DNDSEventBehaviorResolution *)self date];
            v4 = [(DNDSEventBehaviorResolution *)v7 date];
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
      v20 = [(DNDSEventBehaviorResolution *)self eventBehavior];
      v21 = [(DNDSEventBehaviorResolution *)v7 eventBehavior];
      if (v20 == v21)
      {
        v49 = v20;
        v50 = v4;
        v52 = v3;
LABEL_26:
        v26 = [(DNDSEventBehaviorResolution *)self clientIdentifier];
        v27 = [(DNDSEventBehaviorResolution *)v7 clientIdentifier];
        v51 = v26;
        if (v26 == v27)
        {
          v32 = [(DNDSEventBehaviorResolution *)self outcome];
        }

        else
        {
          v28 = [(DNDSEventBehaviorResolution *)self clientIdentifier];
          v29 = v20;
          if (!v28)
          {

            v13 = 0;
            goto LABEL_52;
          }

          v43 = v28;
          v30 = [(DNDSEventBehaviorResolution *)v7 clientIdentifier];
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
          v31 = [(DNDSEventBehaviorResolution *)self clientIdentifier];
          v42 = [(DNDSEventBehaviorResolution *)v7 clientIdentifier];
          if (![v31 isEqual:?])
          {
            v13 = 0;
LABEL_50:

            goto LABEL_51;
          }

          v39 = v31;
          v20 = v29;
          v32 = [(DNDSEventBehaviorResolution *)self outcome];
        }

        if (v32 != [(DNDSEventBehaviorResolution *)v7 outcome])
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

        v33 = [(DNDSEventBehaviorResolution *)self reason];
        v13 = v33 == [(DNDSEventBehaviorResolution *)v7 reason];
        v29 = v20;
        v31 = v40;
        if (v51 == v27)
        {
          goto LABEL_55;
        }

        goto LABEL_50;
      }

      v22 = [(DNDSEventBehaviorResolution *)self eventBehavior];
      if (v22)
      {
        v48 = v22;
        v23 = [(DNDSEventBehaviorResolution *)v7 eventBehavior];
        if (v23)
        {
          v50 = v4;
          v52 = v3;
          v45 = v23;
          v24 = [(DNDSEventBehaviorResolution *)self eventBehavior];
          v25 = [(DNDSEventBehaviorResolution *)v7 eventBehavior];
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

- (id)_descriptionForRedacted:(BOOL)a3
{
  v3 = a3;
  v16 = MEMORY[0x277CCACA8];
  v5 = objc_opt_class();
  v6 = [(DNDSEventBehaviorResolution *)self UUID];
  v7 = [(DNDSEventBehaviorResolution *)self date];
  v8 = [(DNDSEventBehaviorResolution *)self eventBehavior];
  v9 = v8;
  v10 = v8;
  if (v3)
  {
    v10 = [v8 redactedDescription];
  }

  v11 = [(DNDSEventBehaviorResolution *)self clientIdentifier];
  v12 = DNDSResolutionOutcomeToString([(DNDSEventBehaviorResolution *)self outcome]);
  [(DNDSEventBehaviorResolution *)self reason];
  v13 = DNDResolutionReasonToString();
  v14 = [v16 stringWithFormat:@"<%@: %p UUID: %@; date: %@; eventBehavior: %@; clientIdentifier: '%@'; outcome: %@; reason: %@>", v5, self, v6, v7, v10, v11, v12, v13];;

  if (v3)
  {
  }

  return v14;
}

@end