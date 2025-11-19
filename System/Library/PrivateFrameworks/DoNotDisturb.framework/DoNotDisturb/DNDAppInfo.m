@interface DNDAppInfo
- (BOOL)isEqual:(id)a3;
- (DNDAppInfo)initWithCoder:(id)a3;
- (DNDAppInfo)initWithSource:(int64_t)a3 applicationIdentifier:(id)a4 displayName:(id)a5 storeIconURL:(id)a6 cachedIconURL:(id)a7;
- (id)_initWithAppInfo:(id)a3;
- (id)description;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation DNDAppInfo

- (DNDAppInfo)initWithSource:(int64_t)a3 applicationIdentifier:(id)a4 displayName:(id)a5 storeIconURL:(id)a6 cachedIconURL:(id)a7
{
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  v27.receiver = self;
  v27.super_class = DNDAppInfo;
  v16 = [(DNDAppInfo *)&v27 init];
  v17 = v16;
  if (v16)
  {
    v16->_source = a3;
    v18 = [v12 copy];
    applicationIdentifier = v17->_applicationIdentifier;
    v17->_applicationIdentifier = v18;

    v20 = [v13 copy];
    displayName = v17->_displayName;
    v17->_displayName = v20;

    v22 = [v14 copy];
    storeIconURL = v17->_storeIconURL;
    v17->_storeIconURL = v22;

    v24 = [v15 copy];
    cachedIconURL = v17->_cachedIconURL;
    v17->_cachedIconURL = v24;
  }

  return v17;
}

- (id)_initWithAppInfo:(id)a3
{
  v4 = a3;
  v5 = [v4 source];
  v6 = [v4 applicationIdentifier];
  v7 = [v4 displayName];
  v8 = [v4 storeIconURL];
  v9 = [v4 cachedIconURL];

  v10 = [(DNDAppInfo *)self initWithSource:v5 applicationIdentifier:v6 displayName:v7 storeIconURL:v8 cachedIconURL:v9];
  return v10;
}

- (unint64_t)hash
{
  v3 = [(DNDAppInfo *)self source];
  v4 = [(DNDAppInfo *)self applicationIdentifier];
  v5 = [v4 hash] ^ v3;
  v6 = [(DNDAppInfo *)self displayName];
  v7 = [v6 hash];
  v8 = [(DNDAppInfo *)self storeIconURL];
  v9 = v5 ^ v7 ^ [v8 hash];
  v10 = [(DNDAppInfo *)self cachedIconURL];
  v11 = [v10 hash];

  return v9 ^ v11;
}

- (BOOL)isEqual:(id)a3
{
  v5 = a3;
  if (self == v5)
  {
    v15 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
      v7 = [(DNDAppInfo *)self source];
      if (v7 != [(DNDAppInfo *)v6 source])
      {
        v15 = 0;
LABEL_53:

        goto LABEL_54;
      }

      v8 = [(DNDAppInfo *)self applicationIdentifier];
      v9 = [(DNDAppInfo *)v6 applicationIdentifier];
      if (v8 != v9)
      {
        v10 = [(DNDAppInfo *)self applicationIdentifier];
        if (!v10)
        {
          v15 = 0;
          goto LABEL_52;
        }

        v11 = v10;
        v12 = [(DNDAppInfo *)v6 applicationIdentifier];
        if (!v12)
        {
          v15 = 0;
LABEL_51:

          goto LABEL_52;
        }

        v13 = v12;
        v14 = [(DNDAppInfo *)self applicationIdentifier];
        v3 = [(DNDAppInfo *)v6 applicationIdentifier];
        if (![v14 isEqual:v3])
        {
          v15 = 0;
LABEL_50:

          goto LABEL_51;
        }

        v50 = v3;
        v51 = v14;
        v52 = v13;
        v53 = v11;
      }

      v16 = [(DNDAppInfo *)self displayName];
      v17 = [(DNDAppInfo *)v6 displayName];
      if (v16 != v17)
      {
        v18 = [(DNDAppInfo *)self displayName];
        if (v18)
        {
          v19 = v18;
          v20 = [(DNDAppInfo *)v6 displayName];
          if (v20)
          {
            v21 = v20;
            v49 = v16;
            v22 = [(DNDAppInfo *)self displayName];
            v3 = [(DNDAppInfo *)v6 displayName];
            if (([v22 isEqual:v3] & 1) == 0)
            {

              goto LABEL_40;
            }

            v43 = v22;
            v44 = v21;
            v45 = v19;
            goto LABEL_19;
          }
        }

        goto LABEL_40;
      }

      v49 = v16;
LABEL_19:
      v23 = [(DNDAppInfo *)self storeIconURL];
      v48 = [(DNDAppInfo *)v6 storeIconURL];
      if (v23 == v48)
      {
        v46 = v23;
        v47 = v3;
        goto LABEL_27;
      }

      v24 = [(DNDAppInfo *)self storeIconURL];
      if (v24)
      {
        v25 = v24;
        v26 = [(DNDAppInfo *)v6 storeIconURL];
        if (v26)
        {
          v47 = v3;
          v42 = v26;
          v27 = [(DNDAppInfo *)self storeIconURL];
          v28 = [(DNDAppInfo *)v6 storeIconURL];
          if ([v27 isEqual:v28])
          {
            v39 = v28;
            v40 = v27;
            v41 = v25;
            v46 = v23;
LABEL_27:
            v29 = [(DNDAppInfo *)self cachedIconURL];
            v30 = [(DNDAppInfo *)v6 cachedIconURL];
            v31 = v30;
            if (v29 == v30)
            {

              v15 = 1;
            }

            else
            {
              v32 = [(DNDAppInfo *)self cachedIconURL];
              if (v32)
              {
                v38 = v32;
                v33 = [(DNDAppInfo *)v6 cachedIconURL];
                if (v33)
                {
                  v37 = v33;
                  v34 = [(DNDAppInfo *)self cachedIconURL];
                  v35 = [(DNDAppInfo *)v6 cachedIconURL];
                  v15 = [v34 isEqual:v35];

                  v33 = v37;
                }

                else
                {
                  v15 = 0;
                }
              }

              else
              {

                v15 = 0;
              }
            }

            if (v46 != v48)
            {
            }

            if (v49 != v17)
            {
            }

LABEL_49:
            v13 = v52;
            v11 = v53;
            v14 = v51;
            v3 = v50;
            if (v8 != v9)
            {
              goto LABEL_50;
            }

LABEL_52:

            goto LABEL_53;
          }

          v26 = v42;
          v3 = v47;
        }
      }

      if (v49 != v17)
      {
      }

LABEL_40:
      v15 = 0;
      goto LABEL_49;
    }

    v15 = 0;
  }

LABEL_54:

  return v15;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = [MEMORY[0x277CCABB0] numberWithInteger:{-[DNDAppInfo source](self, "source")}];
  v6 = [(DNDAppInfo *)self applicationIdentifier];
  v7 = [(DNDAppInfo *)self displayName];
  v8 = [(DNDAppInfo *)self storeIconURL];
  v9 = [v8 absoluteString];
  v10 = [(DNDAppInfo *)self cachedIconURL];
  v11 = [v10 path];
  v12 = [v3 stringWithFormat:@"<%@: %p source: %@; applicationIdentifier: %@; displayName: %@; storeIconURL: %@; cachedIconURL: %@>", v4, self, v5, v6, v7, v9, v11];;

  return v12;
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [DNDMutableAppInfo allocWithZone:a3];

  return [(DNDAppInfo *)v4 _initWithAppInfo:self];
}

- (DNDAppInfo)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeIntegerForKey:@"source"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"applicationIdentifier"];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"displayName"];
  v8 = MEMORY[0x277CBEBC0];
  v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"storeIconURL"];
  v10 = [v8 URLWithString:v9];

  v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"cachedIconURL"];

  if (v11)
  {
    v12 = [MEMORY[0x277CBEBC0] fileURLWithPath:v11];
  }

  else
  {
    v12 = 0;
  }

  v13 = [(DNDAppInfo *)self initWithSource:v5 applicationIdentifier:v6 displayName:v7 storeIconURL:v10 cachedIconURL:v12];

  return v13;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeInteger:-[DNDAppInfo source](self forKey:{"source"), @"source"}];
  v5 = [(DNDAppInfo *)self applicationIdentifier];
  [v4 encodeObject:v5 forKey:@"applicationIdentifier"];

  v6 = [(DNDAppInfo *)self displayName];
  [v4 encodeObject:v6 forKey:@"displayName"];

  v7 = [(DNDAppInfo *)self storeIconURL];
  v8 = [v7 absoluteString];
  [v4 encodeObject:v8 forKey:@"storeIconURL"];

  v10 = [(DNDAppInfo *)self cachedIconURL];
  v9 = [v10 path];
  [v4 encodeObject:v9 forKey:@"cachedIconURL"];
}

@end