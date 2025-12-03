@interface FLFollowUpAction
+ (id)actionWithLabel:(id)label url:(id)url;
- (BOOL)_loadActionURL;
- (BOOL)destructive;
- (FLFollowUpAction)initWithCoder:(id)coder;
- (FLFollowUpAction)initWithLabel:(id)label url:(id)url;
- (NSData)_userInfoData;
- (id)description;
- (void)_userInfoData;
- (void)encodeWithCoder:(id)coder;
- (void)setDestructive:(BOOL)destructive;
- (void)set_userInfoData:(id)data;
@end

@implementation FLFollowUpAction

+ (id)actionWithLabel:(id)label url:(id)url
{
  urlCopy = url;
  labelCopy = label;
  v8 = [[self alloc] initWithLabel:labelCopy url:urlCopy];

  return v8;
}

- (FLFollowUpAction)initWithLabel:(id)label url:(id)url
{
  labelCopy = label;
  urlCopy = url;
  v9 = [(FLFollowUpAction *)self init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_label, label);
    objc_storeStrong(&v10->_url, url);
    uUID = [MEMORY[0x277CCAD78] UUID];
    uUIDString = [uUID UUIDString];
    identifier = v10->_identifier;
    v10->_identifier = uUIDString;
  }

  return v10;
}

- (void)encodeWithCoder:(id)coder
{
  label = self->_label;
  coderCopy = coder;
  [coderCopy encodeObject:label forKey:@"_label"];
  [coderCopy encodeObject:self->_url forKey:@"_url"];
  [coderCopy encodeObject:self->_launchActionURL forKey:@"_launchActionURL"];
  [coderCopy encodeObject:self->_identifier forKey:@"_identifier"];
  [coderCopy encodeObject:self->_userInfo forKey:@"_userInfo"];
  [coderCopy encodeInteger:self->_eventSource forKey:@"_eventSource"];
}

- (FLFollowUpAction)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(FLFollowUpAction *)self init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_label"];
    label = v5->_label;
    v5->_label = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_url"];
    url = v5->_url;
    v5->_url = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_launchActionURL"];
    launchActionURL = v5->_launchActionURL;
    v5->_launchActionURL = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v12;

    v14 = MEMORY[0x277CBEB98];
    v15 = objc_opt_class();
    v16 = objc_opt_class();
    v17 = objc_opt_class();
    v18 = objc_opt_class();
    v19 = [v14 setWithObjects:{v15, v16, v17, v18, objc_opt_class(), 0}];
    v20 = [coderCopy decodeObjectOfClasses:v19 forKey:@"_userInfo"];
    userInfo = v5->_userInfo;
    v5->_userInfo = v20;

    v5->_eventSource = [coderCopy decodeIntegerForKey:@"_eventSource"];
  }

  return v5;
}

- (void)setDestructive:(BOOL)destructive
{
  destructiveCopy = destructive;
  userInfo = [(FLFollowUpAction *)self userInfo];
  v9 = [userInfo mutableCopy];

  v6 = v9;
  if (!v9)
  {
    v6 = [MEMORY[0x277CBEC10] mutableCopy];
  }

  if (destructiveCopy)
  {
    v7 = MEMORY[0x277CBEC38];
  }

  else
  {
    v7 = MEMORY[0x277CBEC28];
  }

  v10 = v6;
  [v6 setObject:v7 forKeyedSubscript:@"FLFollowUpActionIsDestructiveKey"];
  v8 = [v10 copy];
  [(FLFollowUpAction *)self setUserInfo:v8];
}

- (BOOL)destructive
{
  userInfo = [(FLFollowUpAction *)self userInfo];
  v3 = [userInfo objectForKeyedSubscript:@"FLFollowUpActionIsDestructiveKey"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    bOOLValue = [v3 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

- (NSData)_userInfoData
{
  userInfo = [(FLFollowUpAction *)self userInfo];

  if (userInfo)
  {
    v4 = MEMORY[0x277CCAC58];
    userInfo2 = [(FLFollowUpAction *)self userInfo];
    v9 = 0;
    userInfo = [v4 dataWithPropertyList:userInfo2 format:200 options:0 error:&v9];
    v6 = v9;

    if (!userInfo)
    {
      v7 = _FLLogSystem();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        [FLFollowUpAction _userInfoData];
      }
    }
  }

  return userInfo;
}

- (void)set_userInfoData:(id)data
{
  if (data)
  {
    v8 = 0;
    v4 = [MEMORY[0x277CCAC58] propertyListWithData:data options:0 format:0 error:&v8];
    v5 = v8;
    [(FLFollowUpAction *)self setUserInfo:v4];

    userInfo = [(FLFollowUpAction *)self userInfo];

    if (!userInfo)
    {
      v7 = _FLLogSystem();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        [FLFollowUpAction set_userInfoData:];
      }
    }
  }
}

- (BOOL)_loadActionURL
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = [(FLFollowUpAction *)self url];

  if (v3)
  {
    v4 = _FLLogSystem();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = [(FLFollowUpAction *)self url];
      v11 = 138412290;
      v12 = v5;
      _os_log_impl(&dword_22E696000, v4, OS_LOG_TYPE_DEFAULT, "Attempting to handle URL: %@", &v11, 0xCu);
    }

    defaultWorkspace = [MEMORY[0x277CC1E80] defaultWorkspace];
    launchActionURL2 = [(FLFollowUpAction *)self url];
    [defaultWorkspace openSensitiveURL:launchActionURL2 withOptions:0];
    goto LABEL_5;
  }

  launchActionURL = [(FLFollowUpAction *)self launchActionURL];

  if (!launchActionURL)
  {
    result = 0;
    goto LABEL_7;
  }

  defaultWorkspace = _FLLogSystem();
  if (os_log_type_enabled(defaultWorkspace, OS_LOG_TYPE_DEFAULT))
  {
    launchActionURL2 = [(FLFollowUpAction *)self launchActionURL];
    v11 = 138412290;
    v12 = launchActionURL2;
    _os_log_impl(&dword_22E696000, defaultWorkspace, OS_LOG_TYPE_DEFAULT, "Attempting to handle launch URL: %@", &v11, 0xCu);
LABEL_5:
  }

  result = 1;
LABEL_7:
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [objc_opt_class() description];
  v5 = [v3 stringWithFormat:@"<%@: %p - label: %@, url: %@, macURL: %@, userInfo: %@>", v4, self, self->_label, self->_url, self->_launchActionURL, self->_userInfo];

  return v5;
}

- (void)_userInfoData
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_1_0(&dword_22E696000, v0, v1, "%@: Failed to serialize userInfo for item %@ with error %@");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)set_userInfoData:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_1_0(&dword_22E696000, v0, v1, "%@: Failed to deserialize userInfo for item %@ with error %@");
  v2 = *MEMORY[0x277D85DE8];
}

@end