@interface DAAccountChangeInfo
+ (id)_stringForChangeType:(unint64_t)a3;
- (DAAccountChangeInfo)initWithChangeType:(unint64_t)a3 accountIdentifier:(id)a4 accountTypeIdentifier:(id)a5 oldAccountProperties:(id)a6 username:(id)a7 password:(id)a8 oldUsername:(id)a9 oldPassword:(id)a10 modifiedDataClasses:(id)a11 clientName:(id)a12;
- (DAAccountChangeInfo)initWithCoder:(id)a3;
- (id)description;
- (id)redactedDescription;
- (void)encodeWithCoder:(id)a3;
@end

@implementation DAAccountChangeInfo

- (DAAccountChangeInfo)initWithChangeType:(unint64_t)a3 accountIdentifier:(id)a4 accountTypeIdentifier:(id)a5 oldAccountProperties:(id)a6 username:(id)a7 password:(id)a8 oldUsername:(id)a9 oldPassword:(id)a10 modifiedDataClasses:(id)a11 clientName:(id)a12
{
  v47 = a4;
  v18 = a5;
  v19 = a6;
  v20 = a7;
  v21 = a8;
  v22 = a9;
  v23 = a10;
  v24 = a11;
  v25 = a12;
  v48.receiver = self;
  v48.super_class = DAAccountChangeInfo;
  v26 = [(DAAccountChangeInfo *)&v48 init];
  v27 = v26;
  if (v26)
  {
    v26->_changeType = a3;
    v28 = [v47 copy];
    accountIdentifier = v27->_accountIdentifier;
    v27->_accountIdentifier = v28;

    v30 = [v18 copy];
    accountTypeIdentifier = v27->_accountTypeIdentifier;
    v27->_accountTypeIdentifier = v30;

    v32 = [v19 copy];
    oldAccountProperties = v27->_oldAccountProperties;
    v27->_oldAccountProperties = v32;

    v34 = [v20 copy];
    username = v27->_username;
    v27->_username = v34;

    v36 = [v21 copy];
    password = v27->_password;
    v27->_password = v36;

    v38 = [v22 copy];
    oldUsername = v27->_oldUsername;
    v27->_oldUsername = v38;

    v40 = [v23 copy];
    oldPassword = v27->_oldPassword;
    v27->_oldPassword = v40;

    v42 = [v24 copy];
    modifiedDataClasses = v27->_modifiedDataClasses;
    v27->_modifiedDataClasses = v42;

    v44 = [v25 copy];
    clientName = v27->_clientName;
    v27->_clientName = v44;
  }

  return v27;
}

- (DAAccountChangeInfo)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeIntForKey:@"ChangeType"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"AccountIdentifier"];
  if (!v6)
  {
    v7 = DALoggingwithCategory(0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_2243BD000, v7, OS_LOG_TYPE_ERROR, "Missing account identifier when attempting to decode DAAccountChangeInfo", buf, 2u);
    }

    goto LABEL_11;
  }

  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"AccountTypeIdentifier"];
  if (!v7)
  {
    v17 = DALoggingwithCategory(0);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *v23 = 0;
      _os_log_impl(&dword_2243BD000, v17, OS_LOG_TYPE_ERROR, "Missing account type identifier when attempting to decode DAAccountChangeInfo", v23, 2u);
    }

LABEL_11:
    v16 = 0;
    goto LABEL_12;
  }

  v22 = v5;
  if (initWithCoder__onceToken != -1)
  {
    [DAAccountChangeInfo initWithCoder:];
  }

  v20 = [v4 decodeObjectOfClasses:initWithCoder__oldAccountPropertiesWhitelist forKey:@"OldAccountProperties"];
  v21 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"Username"];
  v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"Password"];
  v19 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"OldUsername"];
  v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"OldPassword"];
  v10 = [v4 decodeObjectOfClasses:initWithCoder__modifiedDataClassesWhitelist forKey:@"ModifiedDataClasses"];
  v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ClientName"];
  v12 = v6;
  v13 = v6;
  v14 = v8;
  v15 = [(DAAccountChangeInfo *)self initWithChangeType:v22 accountIdentifier:v12 accountTypeIdentifier:v7 oldAccountProperties:v20 username:v21 password:v8 oldUsername:v19 oldPassword:v9 modifiedDataClasses:v10 clientName:v11];

  v6 = v13;
  self = v15;

  v16 = v15;
LABEL_12:

  return v16;
}

void __37__DAAccountChangeInfo_initWithCoder___block_invoke()
{
  v10[5] = *MEMORY[0x277D85DE8];
  v0 = MEMORY[0x277CBEB98];
  v10[0] = objc_opt_class();
  v10[1] = objc_opt_class();
  v10[2] = objc_opt_class();
  v10[3] = objc_opt_class();
  v10[4] = objc_opt_class();
  v1 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:5];
  v2 = [v0 setWithArray:v1];
  v3 = initWithCoder__oldAccountPropertiesWhitelist;
  initWithCoder__oldAccountPropertiesWhitelist = v2;

  v4 = MEMORY[0x277CBEB98];
  v9[0] = objc_opt_class();
  v9[1] = objc_opt_class();
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:2];
  v6 = [v4 setWithArray:{v5, v9[0]}];
  v7 = initWithCoder__modifiedDataClassesWhitelist;
  initWithCoder__modifiedDataClassesWhitelist = v6;

  v8 = *MEMORY[0x277D85DE8];
}

- (void)encodeWithCoder:(id)a3
{
  v21 = a3;
  [v21 encodeInt:-[DAAccountChangeInfo changeType](self forKey:{"changeType"), @"ChangeType"}];
  v4 = [(DAAccountChangeInfo *)self accountIdentifier];
  [v21 encodeObject:v4 forKey:@"AccountIdentifier"];

  v5 = [(DAAccountChangeInfo *)self accountTypeIdentifier];
  [v21 encodeObject:v5 forKey:@"AccountTypeIdentifier"];

  v6 = [(DAAccountChangeInfo *)self oldAccountProperties];

  if (v6)
  {
    v7 = [(DAAccountChangeInfo *)self oldAccountProperties];
    [v21 encodeObject:v7 forKey:@"OldAccountProperties"];
  }

  v8 = [(DAAccountChangeInfo *)self username];

  if (v8)
  {
    v9 = [(DAAccountChangeInfo *)self username];
    [v21 encodeObject:v9 forKey:@"Username"];
  }

  v10 = [(DAAccountChangeInfo *)self password];

  if (v10)
  {
    v11 = [(DAAccountChangeInfo *)self password];
    [v21 encodeObject:v11 forKey:@"Password"];
  }

  v12 = [(DAAccountChangeInfo *)self oldUsername];

  if (v12)
  {
    v13 = [(DAAccountChangeInfo *)self oldUsername];
    [v21 encodeObject:v13 forKey:@"OldUsername"];
  }

  v14 = [(DAAccountChangeInfo *)self oldPassword];

  if (v14)
  {
    v15 = [(DAAccountChangeInfo *)self oldPassword];
    [v21 encodeObject:v15 forKey:@"OldPassword"];
  }

  v16 = [(DAAccountChangeInfo *)self modifiedDataClasses];

  if (v16)
  {
    v17 = [(DAAccountChangeInfo *)self modifiedDataClasses];
    [v21 encodeObject:v17 forKey:@"ModifiedDataClasses"];
  }

  v18 = [(DAAccountChangeInfo *)self clientName];

  v19 = v21;
  if (v18)
  {
    v20 = [(DAAccountChangeInfo *)self clientName];
    [v21 encodeObject:v20 forKey:@"ClientName"];

    v19 = v21;
  }
}

- (id)description
{
  v19 = MEMORY[0x277CCACA8];
  v3 = [objc_opt_class() _stringForChangeType:{-[DAAccountChangeInfo changeType](self, "changeType")}];
  v22 = [(DAAccountChangeInfo *)self accountIdentifier];
  v21 = [(DAAccountChangeInfo *)self accountTypeIdentifier];
  v4 = [(DAAccountChangeInfo *)self oldAccountProperties];
  v20 = v3;
  if (v4)
  {
    v5 = MEMORY[0x277CCACA8];
    v18 = [(DAAccountChangeInfo *)self oldAccountProperties];
    v17 = [v18 allKeys];
    v6 = [v5 stringWithFormat:@"<keys = %@>", v17];
  }

  else
  {
    v6 = @"nil";
  }

  v7 = [(DAAccountChangeInfo *)self username];
  v8 = [(DAAccountChangeInfo *)self password];
  v9 = @"<redacted>";
  if (v8)
  {
    v10 = @"<redacted>";
  }

  else
  {
    v10 = @"nil";
  }

  v11 = [(DAAccountChangeInfo *)self oldUsername];
  v12 = [(DAAccountChangeInfo *)self oldPassword];
  if (!v12)
  {
    v9 = @"nil";
  }

  v13 = [(DAAccountChangeInfo *)self modifiedDataClasses];
  v14 = [(DAAccountChangeInfo *)self clientName];
  v15 = [v19 stringWithFormat:@"<DAAccountChangeInfo: changeType = %@, accountIdentifier = %@, accountTypeIdentifier = %@, oldAccountProperties = %@, username = %@, password = %@, oldUsername = %@, oldPassword = %@, modifiedDataClasses = %@, clientName = %@>", v20, v22, v21, v6, v7, v10, v11, v9, v13, v14];

  if (v4)
  {
  }

  return v15;
}

- (id)redactedDescription
{
  v20 = MEMORY[0x277CCACA8];
  v3 = [objc_opt_class() _stringForChangeType:{-[DAAccountChangeInfo changeType](self, "changeType")}];
  v4 = [(DAAccountChangeInfo *)self accountIdentifier];
  v5 = [(DAAccountChangeInfo *)self accountTypeIdentifier];
  v21 = [(DAAccountChangeInfo *)self oldAccountProperties];
  v23 = v4;
  v24 = v3;
  v22 = v5;
  if (v21)
  {
    v6 = MEMORY[0x277CCACA8];
    v19 = [(DAAccountChangeInfo *)self oldAccountProperties];
    v25 = [v6 stringWithFormat:@"<%d values>", objc_msgSend(v19, "count")];
  }

  else
  {
    v25 = @"nil";
  }

  v7 = [(DAAccountChangeInfo *)self username];
  v8 = @"<redacted>";
  if (v7)
  {
    v9 = @"<redacted>";
  }

  else
  {
    v9 = @"nil";
  }

  v10 = [(DAAccountChangeInfo *)self password];
  if (v10)
  {
    v11 = @"<redacted>";
  }

  else
  {
    v11 = @"nil";
  }

  v12 = [(DAAccountChangeInfo *)self oldUsername];
  if (v12)
  {
    v13 = @"<redacted>";
  }

  else
  {
    v13 = @"nil";
  }

  v14 = [(DAAccountChangeInfo *)self oldPassword];
  if (!v14)
  {
    v8 = @"nil";
  }

  v15 = [(DAAccountChangeInfo *)self modifiedDataClasses];
  v16 = [(DAAccountChangeInfo *)self clientName];
  v17 = [v20 stringWithFormat:@"<DAAccountChangeInfo: changeType = %@, accountIdentifier = %@, accountTypeIdentifier = %@, oldAccountProperties = %@, username = %@, password = %@, oldUsername = %@, oldPassword = %@, modifiedDataClasses = %@, clientName = %@>", v24, v23, v22, v25, v9, v11, v13, v8, v15, v16];

  if (v21)
  {
  }

  return v17;
}

+ (id)_stringForChangeType:(unint64_t)a3
{
  if (a3 - 1 > 2)
  {
    return @"Add";
  }

  else
  {
    return *(&off_278520C50 + a3 - 1);
  }
}

@end