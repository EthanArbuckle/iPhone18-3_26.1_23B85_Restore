@interface DNDAppInfo
- (BOOL)isEqual:(id)equal;
- (DNDAppInfo)initWithCoder:(id)coder;
- (DNDAppInfo)initWithSource:(int64_t)source applicationIdentifier:(id)identifier displayName:(id)name storeIconURL:(id)l cachedIconURL:(id)rL;
- (id)_initWithAppInfo:(id)info;
- (id)description;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation DNDAppInfo

- (DNDAppInfo)initWithSource:(int64_t)source applicationIdentifier:(id)identifier displayName:(id)name storeIconURL:(id)l cachedIconURL:(id)rL
{
  identifierCopy = identifier;
  nameCopy = name;
  lCopy = l;
  rLCopy = rL;
  v27.receiver = self;
  v27.super_class = DNDAppInfo;
  v16 = [(DNDAppInfo *)&v27 init];
  v17 = v16;
  if (v16)
  {
    v16->_source = source;
    v18 = [identifierCopy copy];
    applicationIdentifier = v17->_applicationIdentifier;
    v17->_applicationIdentifier = v18;

    v20 = [nameCopy copy];
    displayName = v17->_displayName;
    v17->_displayName = v20;

    v22 = [lCopy copy];
    storeIconURL = v17->_storeIconURL;
    v17->_storeIconURL = v22;

    v24 = [rLCopy copy];
    cachedIconURL = v17->_cachedIconURL;
    v17->_cachedIconURL = v24;
  }

  return v17;
}

- (id)_initWithAppInfo:(id)info
{
  infoCopy = info;
  source = [infoCopy source];
  applicationIdentifier = [infoCopy applicationIdentifier];
  displayName = [infoCopy displayName];
  storeIconURL = [infoCopy storeIconURL];
  cachedIconURL = [infoCopy cachedIconURL];

  v10 = [(DNDAppInfo *)self initWithSource:source applicationIdentifier:applicationIdentifier displayName:displayName storeIconURL:storeIconURL cachedIconURL:cachedIconURL];
  return v10;
}

- (unint64_t)hash
{
  source = [(DNDAppInfo *)self source];
  applicationIdentifier = [(DNDAppInfo *)self applicationIdentifier];
  v5 = [applicationIdentifier hash] ^ source;
  displayName = [(DNDAppInfo *)self displayName];
  v7 = [displayName hash];
  storeIconURL = [(DNDAppInfo *)self storeIconURL];
  v9 = v5 ^ v7 ^ [storeIconURL hash];
  cachedIconURL = [(DNDAppInfo *)self cachedIconURL];
  v11 = [cachedIconURL hash];

  return v9 ^ v11;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v15 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = equalCopy;
      source = [(DNDAppInfo *)self source];
      if (source != [(DNDAppInfo *)v6 source])
      {
        v15 = 0;
LABEL_53:

        goto LABEL_54;
      }

      applicationIdentifier = [(DNDAppInfo *)self applicationIdentifier];
      applicationIdentifier2 = [(DNDAppInfo *)v6 applicationIdentifier];
      if (applicationIdentifier != applicationIdentifier2)
      {
        applicationIdentifier3 = [(DNDAppInfo *)self applicationIdentifier];
        if (!applicationIdentifier3)
        {
          v15 = 0;
          goto LABEL_52;
        }

        v11 = applicationIdentifier3;
        applicationIdentifier4 = [(DNDAppInfo *)v6 applicationIdentifier];
        if (!applicationIdentifier4)
        {
          v15 = 0;
LABEL_51:

          goto LABEL_52;
        }

        v13 = applicationIdentifier4;
        applicationIdentifier5 = [(DNDAppInfo *)self applicationIdentifier];
        applicationIdentifier6 = [(DNDAppInfo *)v6 applicationIdentifier];
        if (![applicationIdentifier5 isEqual:applicationIdentifier6])
        {
          v15 = 0;
LABEL_50:

          goto LABEL_51;
        }

        v50 = applicationIdentifier6;
        v51 = applicationIdentifier5;
        v52 = v13;
        v53 = v11;
      }

      displayName = [(DNDAppInfo *)self displayName];
      displayName2 = [(DNDAppInfo *)v6 displayName];
      if (displayName != displayName2)
      {
        displayName3 = [(DNDAppInfo *)self displayName];
        if (displayName3)
        {
          v19 = displayName3;
          displayName4 = [(DNDAppInfo *)v6 displayName];
          if (displayName4)
          {
            v21 = displayName4;
            v49 = displayName;
            displayName5 = [(DNDAppInfo *)self displayName];
            applicationIdentifier6 = [(DNDAppInfo *)v6 displayName];
            if (([displayName5 isEqual:applicationIdentifier6] & 1) == 0)
            {

              goto LABEL_40;
            }

            v43 = displayName5;
            v44 = v21;
            v45 = v19;
            goto LABEL_19;
          }
        }

        goto LABEL_40;
      }

      v49 = displayName;
LABEL_19:
      storeIconURL = [(DNDAppInfo *)self storeIconURL];
      storeIconURL2 = [(DNDAppInfo *)v6 storeIconURL];
      if (storeIconURL == storeIconURL2)
      {
        v46 = storeIconURL;
        v47 = applicationIdentifier6;
        goto LABEL_27;
      }

      storeIconURL3 = [(DNDAppInfo *)self storeIconURL];
      if (storeIconURL3)
      {
        v25 = storeIconURL3;
        storeIconURL4 = [(DNDAppInfo *)v6 storeIconURL];
        if (storeIconURL4)
        {
          v47 = applicationIdentifier6;
          v42 = storeIconURL4;
          storeIconURL5 = [(DNDAppInfo *)self storeIconURL];
          storeIconURL6 = [(DNDAppInfo *)v6 storeIconURL];
          if ([storeIconURL5 isEqual:storeIconURL6])
          {
            v39 = storeIconURL6;
            v40 = storeIconURL5;
            v41 = v25;
            v46 = storeIconURL;
LABEL_27:
            cachedIconURL = [(DNDAppInfo *)self cachedIconURL];
            cachedIconURL2 = [(DNDAppInfo *)v6 cachedIconURL];
            v31 = cachedIconURL2;
            if (cachedIconURL == cachedIconURL2)
            {

              v15 = 1;
            }

            else
            {
              cachedIconURL3 = [(DNDAppInfo *)self cachedIconURL];
              if (cachedIconURL3)
              {
                v38 = cachedIconURL3;
                cachedIconURL4 = [(DNDAppInfo *)v6 cachedIconURL];
                if (cachedIconURL4)
                {
                  v37 = cachedIconURL4;
                  cachedIconURL5 = [(DNDAppInfo *)self cachedIconURL];
                  cachedIconURL6 = [(DNDAppInfo *)v6 cachedIconURL];
                  v15 = [cachedIconURL5 isEqual:cachedIconURL6];

                  cachedIconURL4 = v37;
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

            if (v46 != storeIconURL2)
            {
            }

            if (v49 != displayName2)
            {
            }

LABEL_49:
            v13 = v52;
            v11 = v53;
            applicationIdentifier5 = v51;
            applicationIdentifier6 = v50;
            if (applicationIdentifier != applicationIdentifier2)
            {
              goto LABEL_50;
            }

LABEL_52:

            goto LABEL_53;
          }

          storeIconURL4 = v42;
          applicationIdentifier6 = v47;
        }
      }

      if (v49 != displayName2)
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
  applicationIdentifier = [(DNDAppInfo *)self applicationIdentifier];
  displayName = [(DNDAppInfo *)self displayName];
  storeIconURL = [(DNDAppInfo *)self storeIconURL];
  absoluteString = [storeIconURL absoluteString];
  cachedIconURL = [(DNDAppInfo *)self cachedIconURL];
  path = [cachedIconURL path];
  v12 = [v3 stringWithFormat:@"<%@: %p source: %@; applicationIdentifier: %@; displayName: %@; storeIconURL: %@; cachedIconURL: %@>", v4, self, v5, applicationIdentifier, displayName, absoluteString, path];;

  return v12;
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [DNDMutableAppInfo allocWithZone:zone];

  return [(DNDAppInfo *)v4 _initWithAppInfo:self];
}

- (DNDAppInfo)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeIntegerForKey:@"source"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"applicationIdentifier"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"displayName"];
  v8 = MEMORY[0x277CBEBC0];
  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"storeIconURL"];
  v10 = [v8 URLWithString:v9];

  v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"cachedIconURL"];

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

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInteger:-[DNDAppInfo source](self forKey:{"source"), @"source"}];
  applicationIdentifier = [(DNDAppInfo *)self applicationIdentifier];
  [coderCopy encodeObject:applicationIdentifier forKey:@"applicationIdentifier"];

  displayName = [(DNDAppInfo *)self displayName];
  [coderCopy encodeObject:displayName forKey:@"displayName"];

  storeIconURL = [(DNDAppInfo *)self storeIconURL];
  absoluteString = [storeIconURL absoluteString];
  [coderCopy encodeObject:absoluteString forKey:@"storeIconURL"];

  cachedIconURL = [(DNDAppInfo *)self cachedIconURL];
  path = [cachedIconURL path];
  [coderCopy encodeObject:path forKey:@"cachedIconURL"];
}

@end