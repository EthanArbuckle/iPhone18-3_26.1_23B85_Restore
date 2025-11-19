@interface WFURLContentLocation
+ (WFURLContentLocation)locationWithHostname:(id)a3;
+ (WFURLContentLocation)locationWithHostnames:(id)a3;
+ (WFURLContentLocation)locationWithURL:(id)a3 error:(id *)a4;
+ (WFURLContentLocation)locationWithURLs:(id)a3 error:(id *)a4;
+ (id)invalidHostnameErrorForInputURL:(id)a3;
+ (id)locationMatchingAnyHostname;
+ (id)objectWithWFSerializedRepresentation:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)matches:(id)a3;
- (NSString)description;
- (WFURLContentLocation)initWithCoder:(id)a3;
- (WFURLContentLocation)initWithHostnames:(id)a3 allowsAnyHostname:(BOOL)a4;
- (id)hostnamesSortedAlphabetically;
- (id)localizedTitle;
- (id)wfSerializedRepresentation;
- (unint64_t)hash;
- (unint64_t)managedLevel;
- (void)encodeWithCoder:(id)a3;
@end

@implementation WFURLContentLocation

- (BOOL)matches:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    v7 = 0;
    v6 = 0;
    v5 = 0;
LABEL_8:

    goto LABEL_9;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v6 = 0;
    v5 = 0;
    v7 = v4;
    goto LABEL_8;
  }

  if (![(WFURLContentLocation *)self allowsAnyHostname])
  {
    v7 = [(WFURLContentLocation *)self hostnames];
    v8 = [v4 hostnames];
    v5 = [v7 isEqualToSet:v8];

    v6 = v4;
    goto LABEL_8;
  }

  v5 = 1;
  v6 = v4;
LABEL_9:

  return v5;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = MEMORY[0x277CCAAF0];
  v7 = [(WFURLContentLocation *)self hostnamesSortedAlphabetically];
  v8 = [v6 localizedStringByJoiningStrings:v7];
  v9 = [v3 stringWithFormat:@"<%@: %p, hostnames: %@, allowsAnyHostname: %d>", v5, self, v8, -[WFURLContentLocation allowsAnyHostname](self, "allowsAnyHostname")];

  return v9;
}

- (id)wfSerializedRepresentation
{
  v3 = MEMORY[0x277CBEB38];
  v9.receiver = self;
  v9.super_class = WFURLContentLocation;
  v4 = [(WFContentLocation *)&v9 wfSerializedRepresentation];
  v5 = [v3 dictionaryWithDictionary:v4];

  v6 = [(WFURLContentLocation *)self hostnamesSortedAlphabetically];
  [v5 setValue:v6 forKey:@"hostnames"];

  v7 = [MEMORY[0x277CCABB0] numberWithBool:{-[WFURLContentLocation allowsAnyHostname](self, "allowsAnyHostname")}];
  [v5 setValue:v7 forKey:@"allowsAnyHostname"];

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = WFURLContentLocation;
  v4 = a3;
  [(WFContentLocation *)&v6 encodeWithCoder:v4];
  v5 = [(WFURLContentLocation *)self hostnames:v6.receiver];
  [v4 encodeObject:v5 forKey:@"hostnames"];

  [v4 encodeBool:-[WFURLContentLocation allowsAnyHostname](self forKey:{"allowsAnyHostname"), @"allowsAnyHostname"}];
}

- (WFURLContentLocation)initWithCoder:(id)a3
{
  v12[2] = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277CBEB98];
  v5 = a3;
  v12[0] = objc_opt_class();
  v12[1] = objc_opt_class();
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:2];
  v7 = [v4 setWithArray:v6];
  v8 = [v5 decodeObjectOfClasses:v7 forKey:@"hostnames"];

  v9 = [v5 decodeBoolForKey:@"allowsAnyHostname"];
  v10 = [(WFURLContentLocation *)self initWithHostnames:v8 allowsAnyHostname:v9];

  return v10;
}

- (unint64_t)hash
{
  v3 = [(WFURLContentLocation *)self hostnames];
  v4 = [v3 hash];
  if ([(WFURLContentLocation *)self allowsAnyHostname])
  {
    v5 = 3405691582;
  }

  else
  {
    v5 = 3133065982;
  }

  return v5 ^ v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v5 = [(WFURLContentLocation *)self hostnames];
    v6 = [v4 hostnames];
    if ([v5 isEqualToSet:v6])
    {
      v7 = [(WFURLContentLocation *)self allowsAnyHostname];
      v8 = v7 ^ [v4 allowsAnyHostname] ^ 1;
    }

    else
    {
      LOBYTE(v8) = 0;
    }
  }

  else
  {
    LOBYTE(v8) = 0;
  }

  return v8;
}

- (unint64_t)managedLevel
{
  if (self->_allowsAnyHostname)
  {
    return 0;
  }

  v4 = +[WFManagedConfigurationProfile defaultProfile];
  v5 = [(WFURLContentLocation *)self hostnames];
  v6 = [v5 if_compactMap:&__block_literal_global_23];
  v7 = [v6 allObjects];
  v8 = [v4 managedLevelForContentOfURLs:v7];

  return v8;
}

id __36__WFURLContentLocation_managedLevel__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = objc_opt_new();
  [v3 setScheme:@"https"];
  [v3 setHost:v2];

  v4 = [v3 URL];

  return v4;
}

- (id)localizedTitle
{
  localizedTitle = self->_localizedTitle;
  if (!localizedTitle)
  {
    if (self->_allowsAnyHostname)
    {
      v4 = WFLocalizedString(@"Any URL");
      goto LABEL_6;
    }

    v5 = [(WFURLContentLocation *)self hostnamesSortedAlphabetically];
    v6 = [v5 if_map:&__block_literal_global];

    v7 = [MEMORY[0x277CCAAF0] localizedStringByJoiningStrings:v6];
    v8 = self->_localizedTitle;
    self->_localizedTitle = v7;

    localizedTitle = self->_localizedTitle;
  }

  v4 = localizedTitle;
LABEL_6:

  return v4;
}

void *__38__WFURLContentLocation_localizedTitle__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [WFContentLocationLocalizations localizedTitleForContentLocationWithHostname:v2];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = v2;
  }

  v6 = v5;

  return v5;
}

- (id)hostnamesSortedAlphabetically
{
  v2 = [(WFURLContentLocation *)self hostnames];
  v3 = [v2 allObjects];
  v4 = [v3 sortedArrayUsingSelector:sel_localizedStandardCompare_];

  return v4;
}

- (WFURLContentLocation)initWithHostnames:(id)a3 allowsAnyHostname:(BOOL)a4
{
  v4 = a4;
  v19 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v16.receiver = self;
  v16.super_class = WFURLContentLocation;
  v8 = [(WFContentLocation *)&v16 initWithIdentifier:@"com.apple.shortcuts.urldestination" promptingBehaviour:1];
  if (v8)
  {
    v9 = [v7 count];
    if (v4)
    {
      if (!v9)
      {
        [v7 count];
        goto LABEL_12;
      }

      v10 = getWFSecurityLogObject();
      if (!os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_10;
      }

      *buf = 136315138;
      v18 = "[WFURLContentLocation initWithHostnames:allowsAnyHostname:]";
      v11 = "%s Creating a WFURLContentLocation with 1 or more hostname(s), but allowsAnyHostname was also set to YES.";
      v12 = v10;
      v13 = OS_LOG_TYPE_FAULT;
    }

    else
    {
      if (v9)
      {
LABEL_12:
        objc_storeStrong(&v8->_hostnames, a3);
        v8->_allowsAnyHostname = v4;
        v14 = v8;
        goto LABEL_13;
      }

      v10 = getWFSecurityLogObject();
      if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
LABEL_10:

        goto LABEL_12;
      }

      *buf = 136315138;
      v18 = "[WFURLContentLocation initWithHostnames:allowsAnyHostname:]";
      v11 = "%s Creating a WFURLContentLocation with no hostname(s)";
      v12 = v10;
      v13 = OS_LOG_TYPE_ERROR;
    }

    _os_log_impl(&dword_21E1BD000, v12, v13, v11, buf, 0xCu);
    goto LABEL_10;
  }

LABEL_13:

  return v8;
}

+ (id)objectWithWFSerializedRepresentation:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 wfObjectOfClass:objc_opt_class() forKeyPath:@"hostnames"];
  if (v5)
  {
    v6 = [v4 wfObjectOfClass:objc_opt_class() forKeyPath:@"allowsAnyHostname"];
    v7 = [v6 BOOLValue];

    v8 = [a1 alloc];
    v9 = [MEMORY[0x277CBEB98] setWithArray:v5];
    v10 = [v8 initWithHostnames:v9 allowsAnyHostname:v7];
  }

  else
  {
    v11 = getWFWorkflowExecutionLogObject();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v13 = 136315138;
      v14 = "+[WFURLContentLocation objectWithWFSerializedRepresentation:]";
      _os_log_impl(&dword_21E1BD000, v11, OS_LOG_TYPE_ERROR, "%s Failed to decode hostnames from WFURLContentLocation", &v13, 0xCu);
    }

    v10 = 0;
  }

  return v10;
}

+ (id)invalidHostnameErrorForInputURL:(id)a3
{
  v20[2] = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = WFLocalizedString(@"Invalid URL");
  v5 = [v3 absoluteString];

  if (v5 && [v5 length] >= 0x1A)
  {
    v6 = MEMORY[0x277CCACA8];
    v7 = [v5 substringToIndex:25];
    v8 = [v6 stringWithFormat:@"%@…", v7];

    v5 = v8;
  }

  v9 = [MEMORY[0x277CCA900] characterSetWithCharactersInString:@"““"];
  v10 = [v5 stringByTrimmingCharactersInSet:v9];

  v11 = MEMORY[0x277CCACA8];
  v12 = WFLocalizedString(@"The URL “%@” is missing a hostname.");
  v13 = [v11 localizedStringWithFormat:v12, v10];

  v14 = MEMORY[0x277CCA9B8];
  v15 = *MEMORY[0x277CCA450];
  v19[0] = *MEMORY[0x277CCA470];
  v19[1] = v15;
  v20[0] = v4;
  v20[1] = v13;
  v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:v19 count:2];
  v17 = [v14 errorWithDomain:@"WFURLContentLocationErrorDomain" code:0 userInfo:v16];

  return v17;
}

+ (id)locationMatchingAnyHostname
{
  v2 = [a1 alloc];
  v3 = [MEMORY[0x277CBEB98] set];
  v4 = [v2 initWithHostnames:v3 allowsAnyHostname:1];

  return v4;
}

+ (WFURLContentLocation)locationWithURLs:(id)a3 error:(id *)a4
{
  v29 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v23 = [MEMORY[0x277CBEB58] set];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v7)
  {
    v8 = v7;
    v22 = 0;
    v9 = *v25;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v25 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v24 + 1) + 8 * i);
        v12 = [v11 scheme];
        v13 = [v12 lowercaseString];
        v14 = [v13 isEqualToString:@"data"];

        if ((v14 & 1) == 0)
        {
          v15 = [v11 host];

          if (v15)
          {
            v16 = [v11 host];
            v17 = [MEMORY[0x277CCA900] URLPathAllowedCharacterSet];
            v18 = [v16 stringByAddingPercentEncodingWithAllowedCharacters:v17];
            [v23 addObject:v18];
          }

          else
          {
            if (a4)
            {
              *a4 = [a1 invalidHostnameErrorForInputURL:v11];
            }

            v22 = 1;
          }
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v8);
  }

  else
  {
    v22 = 0;
  }

  v19 = 0;
  if ([v23 count] && (v22 & 1) == 0)
  {
    v19 = [[a1 alloc] initWithHostnames:v23];
  }

  return v19;
}

+ (WFURLContentLocation)locationWithURL:(id)a3 error:(id *)a4
{
  v6 = [MEMORY[0x277CBEB98] setWithObject:a3];
  v7 = [a1 locationWithURLs:v6 error:a4];

  return v7;
}

+ (WFURLContentLocation)locationWithHostnames:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithHostnames:v4];

  return v5;
}

+ (WFURLContentLocation)locationWithHostname:(id)a3
{
  v4 = a3;
  v5 = [a1 alloc];
  v6 = [MEMORY[0x277CBEB98] setWithObject:v4];

  v7 = [v5 initWithHostnames:v6];

  return v7;
}

@end