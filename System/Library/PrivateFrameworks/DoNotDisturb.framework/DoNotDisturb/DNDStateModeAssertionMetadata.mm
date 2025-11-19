@interface DNDStateModeAssertionMetadata
- (BOOL)isEqual:(id)a3;
- (DNDStateModeAssertionMetadata)initWithClientIdentifier:(id)a3 modeIdentifier:(id)a4 lifetimeType:(unint64_t)a5 activeDateInterval:(id)a6 userVisibleEndDate:(id)a7;
- (DNDStateModeAssertionMetadata)initWithCoder:(id)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation DNDStateModeAssertionMetadata

- (DNDStateModeAssertionMetadata)initWithClientIdentifier:(id)a3 modeIdentifier:(id)a4 lifetimeType:(unint64_t)a5 activeDateInterval:(id)a6 userVisibleEndDate:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a6;
  v15 = a7;
  v26.receiver = self;
  v26.super_class = DNDStateModeAssertionMetadata;
  v16 = [(DNDStateModeAssertionMetadata *)&v26 init];
  if (v16)
  {
    v17 = [v12 copy];
    clientIdentifier = v16->_clientIdentifier;
    v16->_clientIdentifier = v17;

    v19 = [v13 copy];
    modeIdentifier = v16->_modeIdentifier;
    v16->_modeIdentifier = v19;

    v16->_lifetimeType = a5;
    v21 = [v14 copy];
    activeDateInterval = v16->_activeDateInterval;
    v16->_activeDateInterval = v21;

    v23 = [v15 copy];
    userVisibleEndDate = v16->_userVisibleEndDate;
    v16->_userVisibleEndDate = v23;
  }

  return v16;
}

- (unint64_t)hash
{
  v3 = [(DNDStateModeAssertionMetadata *)self clientIdentifier];
  v4 = [v3 hash];
  v5 = [(DNDStateModeAssertionMetadata *)self modeIdentifier];
  v6 = [v5 hash] ^ v4;
  v7 = [(DNDStateModeAssertionMetadata *)self lifetimeType];
  v8 = [(DNDStateModeAssertionMetadata *)self activeDateInterval];
  v9 = v6 ^ v7 ^ [v8 hash];
  v10 = [(DNDStateModeAssertionMetadata *)self userVisibleEndDate];
  v11 = [v10 hash];

  return v9 ^ v11;
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
      v7 = [(DNDStateModeAssertionMetadata *)self clientIdentifier];
      v8 = [(DNDStateModeAssertionMetadata *)v6 clientIdentifier];
      if (v7 != v8)
      {
        v9 = [(DNDStateModeAssertionMetadata *)self clientIdentifier];
        if (!v9)
        {
          v13 = 0;
          goto LABEL_50;
        }

        v3 = v9;
        v10 = [(DNDStateModeAssertionMetadata *)v6 clientIdentifier];
        if (!v10)
        {
          v13 = 0;
LABEL_49:

          goto LABEL_50;
        }

        v11 = [(DNDStateModeAssertionMetadata *)self clientIdentifier];
        v12 = [(DNDStateModeAssertionMetadata *)v6 clientIdentifier];
        if (![v11 isEqual:v12])
        {
          v13 = 0;
LABEL_48:

          goto LABEL_49;
        }

        v48 = v12;
        v49 = v11;
        v50 = v10;
      }

      v14 = [(DNDStateModeAssertionMetadata *)self modeIdentifier];
      v15 = [(DNDStateModeAssertionMetadata *)v6 modeIdentifier];
      if (v14 != v15)
      {
        v16 = [(DNDStateModeAssertionMetadata *)self modeIdentifier];
        if (!v16)
        {
          goto LABEL_37;
        }

        v17 = v16;
        v18 = [(DNDStateModeAssertionMetadata *)v6 modeIdentifier];
        if (!v18)
        {

          goto LABEL_37;
        }

        v46 = v17;
        v47 = v18;
        v19 = [(DNDStateModeAssertionMetadata *)self modeIdentifier];
        v20 = [(DNDStateModeAssertionMetadata *)v6 modeIdentifier];
        if (([v19 isEqual:v20] & 1) == 0)
        {

LABEL_36:
          goto LABEL_37;
        }

        v42 = v20;
        v43 = v19;
      }

      v21 = [(DNDStateModeAssertionMetadata *)self lifetimeType];
      if (v21 != [(DNDStateModeAssertionMetadata *)v6 lifetimeType])
      {
        v13 = 0;
LABEL_44:
        if (v14 != v15)
        {
        }

LABEL_47:
        v11 = v49;
        v10 = v50;
        v12 = v48;
        if (v7 != v8)
        {
          goto LABEL_48;
        }

LABEL_50:

        goto LABEL_51;
      }

      v22 = [(DNDStateModeAssertionMetadata *)self activeDateInterval];
      [(DNDStateModeAssertionMetadata *)v6 activeDateInterval];
      v45 = v44 = v22;
      if (v22 == v45)
      {
LABEL_27:
        v27 = [(DNDStateModeAssertionMetadata *)self userVisibleEndDate];
        v28 = [(DNDStateModeAssertionMetadata *)v6 userVisibleEndDate];
        v29 = v28;
        if (v27 == v28)
        {

          v13 = 1;
        }

        else
        {
          v30 = [(DNDStateModeAssertionMetadata *)self userVisibleEndDate];
          if (v30)
          {
            v37 = v30;
            v31 = [(DNDStateModeAssertionMetadata *)v6 userVisibleEndDate];
            if (v31)
            {
              v35 = v31;
              v34 = [(DNDStateModeAssertionMetadata *)self userVisibleEndDate];
              [(DNDStateModeAssertionMetadata *)v6 userVisibleEndDate];
              v32 = v36 = v29;
              v13 = [v34 isEqual:v32];

              v29 = v36;
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

        if (v44 != v45)
        {
        }

        goto LABEL_44;
      }

      v23 = [(DNDStateModeAssertionMetadata *)self activeDateInterval];
      if (v23)
      {
        v41 = v23;
        v24 = [(DNDStateModeAssertionMetadata *)v6 activeDateInterval];
        if (v24)
        {
          v40 = v24;
          v25 = [(DNDStateModeAssertionMetadata *)self activeDateInterval];
          v26 = [(DNDStateModeAssertionMetadata *)v6 activeDateInterval];
          if ([v25 isEqual:v26])
          {
            v38 = v26;
            v39 = v25;
            goto LABEL_27;
          }

          v24 = v40;
        }
      }

      if (v14 != v15)
      {

        goto LABEL_36;
      }

LABEL_37:

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
  v5 = [(DNDStateModeAssertionMetadata *)self clientIdentifier];
  v6 = [(DNDStateModeAssertionMetadata *)self modeIdentifier];
  v7 = DNDStringFromModeAssertionLifetimeType([(DNDStateModeAssertionMetadata *)self lifetimeType]);
  v8 = [(DNDStateModeAssertionMetadata *)self activeDateInterval];
  v9 = [(DNDStateModeAssertionMetadata *)self userVisibleEndDate];
  v10 = [v3 stringWithFormat:@"<%@: %p clientIdentifier: '%@'; modeIdentifier: '%@'; lifetimeType: %@; activeDateInterval: %@; userVisibleEndDate: %@>", v4, self, v5, v6, v7, v8, v9];;

  return v10;
}

- (DNDStateModeAssertionMetadata)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"clientIdentifier"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"modeIdentifier"];
  v7 = [v4 decodeIntegerForKey:@"lifetimeType"];
  v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"activeDateInterval"];
  v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"userVisibleEndDate"];

  v10 = [(DNDStateModeAssertionMetadata *)self initWithClientIdentifier:v5 modeIdentifier:v6 lifetimeType:v7 activeDateInterval:v8 userVisibleEndDate:v9];
  return v10;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(DNDStateModeAssertionMetadata *)self clientIdentifier];
  [v4 encodeObject:v5 forKey:@"clientIdentifier"];

  v6 = [(DNDStateModeAssertionMetadata *)self modeIdentifier];
  [v4 encodeObject:v6 forKey:@"modeIdentifier"];

  [v4 encodeInteger:-[DNDStateModeAssertionMetadata lifetimeType](self forKey:{"lifetimeType"), @"lifetimeType"}];
  v7 = [(DNDStateModeAssertionMetadata *)self activeDateInterval];
  [v4 encodeObject:v7 forKey:@"activeDateInterval"];

  v8 = [(DNDStateModeAssertionMetadata *)self userVisibleEndDate];
  [v4 encodeObject:v8 forKey:@"userVisibleEndDate"];
}

@end