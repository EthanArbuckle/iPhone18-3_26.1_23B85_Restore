@interface FLFollowUpAction
+ (id)actionWithLabel:(id)a3 url:(id)a4;
- (BOOL)_loadActionURL;
- (BOOL)destructive;
- (FLFollowUpAction)initWithCoder:(id)a3;
- (FLFollowUpAction)initWithLabel:(id)a3 url:(id)a4;
- (NSData)_userInfoData;
- (id)description;
- (void)_userInfoData;
- (void)encodeWithCoder:(id)a3;
- (void)setDestructive:(BOOL)a3;
- (void)set_userInfoData:(id)a3;
@end

@implementation FLFollowUpAction

+ (id)actionWithLabel:(id)a3 url:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[a1 alloc] initWithLabel:v7 url:v6];

  return v8;
}

- (FLFollowUpAction)initWithLabel:(id)a3 url:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = [(FLFollowUpAction *)self init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_label, a3);
    objc_storeStrong(&v10->_url, a4);
    v11 = [MEMORY[0x277CCAD78] UUID];
    v12 = [v11 UUIDString];
    identifier = v10->_identifier;
    v10->_identifier = v12;
  }

  return v10;
}

- (void)encodeWithCoder:(id)a3
{
  label = self->_label;
  v5 = a3;
  [v5 encodeObject:label forKey:@"_label"];
  [v5 encodeObject:self->_url forKey:@"_url"];
  [v5 encodeObject:self->_launchActionURL forKey:@"_launchActionURL"];
  [v5 encodeObject:self->_identifier forKey:@"_identifier"];
  [v5 encodeObject:self->_userInfo forKey:@"_userInfo"];
  [v5 encodeInteger:self->_eventSource forKey:@"_eventSource"];
}

- (FLFollowUpAction)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(FLFollowUpAction *)self init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_label"];
    label = v5->_label;
    v5->_label = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_url"];
    url = v5->_url;
    v5->_url = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_launchActionURL"];
    launchActionURL = v5->_launchActionURL;
    v5->_launchActionURL = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v12;

    v14 = MEMORY[0x277CBEB98];
    v15 = objc_opt_class();
    v16 = objc_opt_class();
    v17 = objc_opt_class();
    v18 = objc_opt_class();
    v19 = [v14 setWithObjects:{v15, v16, v17, v18, objc_opt_class(), 0}];
    v20 = [v4 decodeObjectOfClasses:v19 forKey:@"_userInfo"];
    userInfo = v5->_userInfo;
    v5->_userInfo = v20;

    v5->_eventSource = [v4 decodeIntegerForKey:@"_eventSource"];
  }

  return v5;
}

- (void)setDestructive:(BOOL)a3
{
  v3 = a3;
  v5 = [(FLFollowUpAction *)self userInfo];
  v9 = [v5 mutableCopy];

  v6 = v9;
  if (!v9)
  {
    v6 = [MEMORY[0x277CBEC10] mutableCopy];
  }

  if (v3)
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
  v2 = [(FLFollowUpAction *)self userInfo];
  v3 = [v2 objectForKeyedSubscript:@"FLFollowUpActionIsDestructiveKey"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v3 BOOLValue];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (NSData)_userInfoData
{
  v3 = [(FLFollowUpAction *)self userInfo];

  if (v3)
  {
    v4 = MEMORY[0x277CCAC58];
    v5 = [(FLFollowUpAction *)self userInfo];
    v9 = 0;
    v3 = [v4 dataWithPropertyList:v5 format:200 options:0 error:&v9];
    v6 = v9;

    if (!v3)
    {
      v7 = _FLLogSystem();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        [FLFollowUpAction _userInfoData];
      }
    }
  }

  return v3;
}

- (void)set_userInfoData:(id)a3
{
  if (a3)
  {
    v8 = 0;
    v4 = [MEMORY[0x277CCAC58] propertyListWithData:a3 options:0 format:0 error:&v8];
    v5 = v8;
    [(FLFollowUpAction *)self setUserInfo:v4];

    v6 = [(FLFollowUpAction *)self userInfo];

    if (!v6)
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

    v6 = [MEMORY[0x277CC1E80] defaultWorkspace];
    v7 = [(FLFollowUpAction *)self url];
    [v6 openSensitiveURL:v7 withOptions:0];
    goto LABEL_5;
  }

  v10 = [(FLFollowUpAction *)self launchActionURL];

  if (!v10)
  {
    result = 0;
    goto LABEL_7;
  }

  v6 = _FLLogSystem();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [(FLFollowUpAction *)self launchActionURL];
    v11 = 138412290;
    v12 = v7;
    _os_log_impl(&dword_22E696000, v6, OS_LOG_TYPE_DEFAULT, "Attempting to handle launch URL: %@", &v11, 0xCu);
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