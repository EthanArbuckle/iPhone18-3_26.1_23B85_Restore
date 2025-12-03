@interface DAAccountChangeInfo
+ (id)_stringForChangeType:(unint64_t)type;
- (DAAccountChangeInfo)initWithChangeType:(unint64_t)type accountIdentifier:(id)identifier accountTypeIdentifier:(id)typeIdentifier oldAccountProperties:(id)properties username:(id)username password:(id)password oldUsername:(id)oldUsername oldPassword:(id)self0 modifiedDataClasses:(id)self1 clientName:(id)self2;
- (DAAccountChangeInfo)initWithCoder:(id)coder;
- (id)description;
- (id)redactedDescription;
- (void)encodeWithCoder:(id)coder;
@end

@implementation DAAccountChangeInfo

- (DAAccountChangeInfo)initWithChangeType:(unint64_t)type accountIdentifier:(id)identifier accountTypeIdentifier:(id)typeIdentifier oldAccountProperties:(id)properties username:(id)username password:(id)password oldUsername:(id)oldUsername oldPassword:(id)self0 modifiedDataClasses:(id)self1 clientName:(id)self2
{
  identifierCopy = identifier;
  typeIdentifierCopy = typeIdentifier;
  propertiesCopy = properties;
  usernameCopy = username;
  passwordCopy = password;
  oldUsernameCopy = oldUsername;
  oldPasswordCopy = oldPassword;
  classesCopy = classes;
  nameCopy = name;
  v48.receiver = self;
  v48.super_class = DAAccountChangeInfo;
  v26 = [(DAAccountChangeInfo *)&v48 init];
  v27 = v26;
  if (v26)
  {
    v26->_changeType = type;
    v28 = [identifierCopy copy];
    accountIdentifier = v27->_accountIdentifier;
    v27->_accountIdentifier = v28;

    v30 = [typeIdentifierCopy copy];
    accountTypeIdentifier = v27->_accountTypeIdentifier;
    v27->_accountTypeIdentifier = v30;

    v32 = [propertiesCopy copy];
    oldAccountProperties = v27->_oldAccountProperties;
    v27->_oldAccountProperties = v32;

    v34 = [usernameCopy copy];
    username = v27->_username;
    v27->_username = v34;

    v36 = [passwordCopy copy];
    password = v27->_password;
    v27->_password = v36;

    v38 = [oldUsernameCopy copy];
    oldUsername = v27->_oldUsername;
    v27->_oldUsername = v38;

    v40 = [oldPasswordCopy copy];
    oldPassword = v27->_oldPassword;
    v27->_oldPassword = v40;

    v42 = [classesCopy copy];
    modifiedDataClasses = v27->_modifiedDataClasses;
    v27->_modifiedDataClasses = v42;

    v44 = [nameCopy copy];
    clientName = v27->_clientName;
    v27->_clientName = v44;
  }

  return v27;
}

- (DAAccountChangeInfo)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeIntForKey:@"ChangeType"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AccountIdentifier"];
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

  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AccountTypeIdentifier"];
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

  v20 = [coderCopy decodeObjectOfClasses:initWithCoder__oldAccountPropertiesWhitelist forKey:@"OldAccountProperties"];
  v21 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Username"];
  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Password"];
  v19 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"OldUsername"];
  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"OldPassword"];
  v10 = [coderCopy decodeObjectOfClasses:initWithCoder__modifiedDataClassesWhitelist forKey:@"ModifiedDataClasses"];
  v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ClientName"];
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

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInt:-[DAAccountChangeInfo changeType](self forKey:{"changeType"), @"ChangeType"}];
  accountIdentifier = [(DAAccountChangeInfo *)self accountIdentifier];
  [coderCopy encodeObject:accountIdentifier forKey:@"AccountIdentifier"];

  accountTypeIdentifier = [(DAAccountChangeInfo *)self accountTypeIdentifier];
  [coderCopy encodeObject:accountTypeIdentifier forKey:@"AccountTypeIdentifier"];

  oldAccountProperties = [(DAAccountChangeInfo *)self oldAccountProperties];

  if (oldAccountProperties)
  {
    oldAccountProperties2 = [(DAAccountChangeInfo *)self oldAccountProperties];
    [coderCopy encodeObject:oldAccountProperties2 forKey:@"OldAccountProperties"];
  }

  username = [(DAAccountChangeInfo *)self username];

  if (username)
  {
    username2 = [(DAAccountChangeInfo *)self username];
    [coderCopy encodeObject:username2 forKey:@"Username"];
  }

  password = [(DAAccountChangeInfo *)self password];

  if (password)
  {
    password2 = [(DAAccountChangeInfo *)self password];
    [coderCopy encodeObject:password2 forKey:@"Password"];
  }

  oldUsername = [(DAAccountChangeInfo *)self oldUsername];

  if (oldUsername)
  {
    oldUsername2 = [(DAAccountChangeInfo *)self oldUsername];
    [coderCopy encodeObject:oldUsername2 forKey:@"OldUsername"];
  }

  oldPassword = [(DAAccountChangeInfo *)self oldPassword];

  if (oldPassword)
  {
    oldPassword2 = [(DAAccountChangeInfo *)self oldPassword];
    [coderCopy encodeObject:oldPassword2 forKey:@"OldPassword"];
  }

  modifiedDataClasses = [(DAAccountChangeInfo *)self modifiedDataClasses];

  if (modifiedDataClasses)
  {
    modifiedDataClasses2 = [(DAAccountChangeInfo *)self modifiedDataClasses];
    [coderCopy encodeObject:modifiedDataClasses2 forKey:@"ModifiedDataClasses"];
  }

  clientName = [(DAAccountChangeInfo *)self clientName];

  v19 = coderCopy;
  if (clientName)
  {
    clientName2 = [(DAAccountChangeInfo *)self clientName];
    [coderCopy encodeObject:clientName2 forKey:@"ClientName"];

    v19 = coderCopy;
  }
}

- (id)description
{
  v19 = MEMORY[0x277CCACA8];
  v3 = [objc_opt_class() _stringForChangeType:{-[DAAccountChangeInfo changeType](self, "changeType")}];
  accountIdentifier = [(DAAccountChangeInfo *)self accountIdentifier];
  accountTypeIdentifier = [(DAAccountChangeInfo *)self accountTypeIdentifier];
  oldAccountProperties = [(DAAccountChangeInfo *)self oldAccountProperties];
  v20 = v3;
  if (oldAccountProperties)
  {
    v5 = MEMORY[0x277CCACA8];
    oldAccountProperties2 = [(DAAccountChangeInfo *)self oldAccountProperties];
    allKeys = [oldAccountProperties2 allKeys];
    v6 = [v5 stringWithFormat:@"<keys = %@>", allKeys];
  }

  else
  {
    v6 = @"nil";
  }

  username = [(DAAccountChangeInfo *)self username];
  password = [(DAAccountChangeInfo *)self password];
  v9 = @"<redacted>";
  if (password)
  {
    v10 = @"<redacted>";
  }

  else
  {
    v10 = @"nil";
  }

  oldUsername = [(DAAccountChangeInfo *)self oldUsername];
  oldPassword = [(DAAccountChangeInfo *)self oldPassword];
  if (!oldPassword)
  {
    v9 = @"nil";
  }

  modifiedDataClasses = [(DAAccountChangeInfo *)self modifiedDataClasses];
  clientName = [(DAAccountChangeInfo *)self clientName];
  v15 = [v19 stringWithFormat:@"<DAAccountChangeInfo: changeType = %@, accountIdentifier = %@, accountTypeIdentifier = %@, oldAccountProperties = %@, username = %@, password = %@, oldUsername = %@, oldPassword = %@, modifiedDataClasses = %@, clientName = %@>", v20, accountIdentifier, accountTypeIdentifier, v6, username, v10, oldUsername, v9, modifiedDataClasses, clientName];

  if (oldAccountProperties)
  {
  }

  return v15;
}

- (id)redactedDescription
{
  v20 = MEMORY[0x277CCACA8];
  v3 = [objc_opt_class() _stringForChangeType:{-[DAAccountChangeInfo changeType](self, "changeType")}];
  accountIdentifier = [(DAAccountChangeInfo *)self accountIdentifier];
  accountTypeIdentifier = [(DAAccountChangeInfo *)self accountTypeIdentifier];
  oldAccountProperties = [(DAAccountChangeInfo *)self oldAccountProperties];
  v23 = accountIdentifier;
  v24 = v3;
  v22 = accountTypeIdentifier;
  if (oldAccountProperties)
  {
    v6 = MEMORY[0x277CCACA8];
    oldAccountProperties2 = [(DAAccountChangeInfo *)self oldAccountProperties];
    v25 = [v6 stringWithFormat:@"<%d values>", objc_msgSend(oldAccountProperties2, "count")];
  }

  else
  {
    v25 = @"nil";
  }

  username = [(DAAccountChangeInfo *)self username];
  v8 = @"<redacted>";
  if (username)
  {
    v9 = @"<redacted>";
  }

  else
  {
    v9 = @"nil";
  }

  password = [(DAAccountChangeInfo *)self password];
  if (password)
  {
    v11 = @"<redacted>";
  }

  else
  {
    v11 = @"nil";
  }

  oldUsername = [(DAAccountChangeInfo *)self oldUsername];
  if (oldUsername)
  {
    v13 = @"<redacted>";
  }

  else
  {
    v13 = @"nil";
  }

  oldPassword = [(DAAccountChangeInfo *)self oldPassword];
  if (!oldPassword)
  {
    v8 = @"nil";
  }

  modifiedDataClasses = [(DAAccountChangeInfo *)self modifiedDataClasses];
  clientName = [(DAAccountChangeInfo *)self clientName];
  v17 = [v20 stringWithFormat:@"<DAAccountChangeInfo: changeType = %@, accountIdentifier = %@, accountTypeIdentifier = %@, oldAccountProperties = %@, username = %@, password = %@, oldUsername = %@, oldPassword = %@, modifiedDataClasses = %@, clientName = %@>", v24, v23, v22, v25, v9, v11, v13, v8, modifiedDataClasses, clientName];

  if (oldAccountProperties)
  {
  }

  return v17;
}

+ (id)_stringForChangeType:(unint64_t)type
{
  if (type - 1 > 2)
  {
    return @"Add";
  }

  else
  {
    return *(&off_278520C50 + type - 1);
  }
}

@end