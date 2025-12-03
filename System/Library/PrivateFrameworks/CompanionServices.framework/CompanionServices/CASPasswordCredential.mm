@interface CASPasswordCredential
- (BOOL)isEqual:(id)equal;
- (CASPasswordCredential)initWithCoder:(id)coder;
- (CASPasswordCredential)initWithUser:(id)user password:(id)password;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CASPasswordCredential

- (CASPasswordCredential)initWithUser:(id)user password:(id)password
{
  userCopy = user;
  passwordCopy = password;
  if (!userCopy)
  {
    [CASPasswordCredential initWithUser:a2 password:?];
  }

  v9 = passwordCopy;
  if (!passwordCopy)
  {
    [CASPasswordCredential initWithUser:a2 password:?];
  }

  v16.receiver = self;
  v16.super_class = CASPasswordCredential;
  v10 = [(CASPasswordCredential *)&v16 init];
  if (v10)
  {
    v11 = [userCopy copy];
    user = v10->_user;
    v10->_user = v11;

    v13 = [v9 copy];
    password = v10->_password;
    v10->_password = v13;
  }

  return v10;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = MEMORY[0x277CF0C20];
  v6 = objc_opt_self();
  v7 = [v5 builderWithObject:equalCopy ofExpectedClass:v6];

  user = self->_user;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __33__CASPasswordCredential_isEqual___block_invoke;
  v20[3] = &unk_278DF1420;
  v9 = equalCopy;
  v21 = v9;
  v10 = [v7 appendString:user counterpart:v20];
  password = self->_password;
  v15 = MEMORY[0x277D85DD0];
  v16 = 3221225472;
  v17 = __33__CASPasswordCredential_isEqual___block_invoke_2;
  v18 = &unk_278DF1420;
  v19 = v9;
  v12 = v9;
  v13 = [v7 appendString:password counterpart:&v15];
  LOBYTE(password) = [v7 isEqual];

  return password;
}

- (unint64_t)hash
{
  builder = [MEMORY[0x277CF0C40] builder];
  v4 = [builder appendString:self->_user];
  v5 = [builder appendString:self->_password];
  v6 = [builder hash];

  return v6;
}

- (CASPasswordCredential)initWithCoder:(id)coder
{
  v22[1] = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v5 = objc_opt_self();
  v6 = [coderCopy decodeObjectOfClass:v5 forKey:@"user"];

  if (!v6)
  {
    v10 = MEMORY[0x277CCA9B8];
    v11 = *MEMORY[0x277CCA050];
    v21 = *MEMORY[0x277CCA470];
    v22[0] = @"Failed to decode CASPasswordCredential: missing user value";
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:&v21 count:1];
    v12 = [v10 errorWithDomain:v11 code:4865 userInfo:v8];
    [coderCopy failWithError:v12];

LABEL_6:
    selfCopy = 0;
    goto LABEL_7;
  }

  v7 = objc_opt_self();
  v8 = [coderCopy decodeObjectOfClass:v7 forKey:@"password"];

  if (!v8)
  {
    v13 = MEMORY[0x277CCA9B8];
    v14 = *MEMORY[0x277CCA050];
    v19 = *MEMORY[0x277CCA470];
    v20 = @"Failed to decode CASPasswordCredential: missing password value";
    v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v20 forKeys:&v19 count:1];
    v16 = [v13 errorWithDomain:v14 code:4865 userInfo:v15];
    [coderCopy failWithError:v16];

    goto LABEL_6;
  }

  self = [(CASPasswordCredential *)self initWithUser:v6 password:v8];
  selfCopy = self;
LABEL_7:

  v17 = *MEMORY[0x277D85DE8];
  return selfCopy;
}

- (void)encodeWithCoder:(id)coder
{
  user = self->_user;
  coderCopy = coder;
  [coderCopy encodeObject:user forKey:@"user"];
  [coderCopy encodeObject:self->_password forKey:@"password"];
}

- (void)initWithUser:(const char *)a1 password:.cold.1(const char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@", @"password != ((void*)0)"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v3 = NSStringFromSelector(a1);
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    OUTLINED_FUNCTION_0();
    v8 = @"CASPasswordCredential.m";
    v9 = 1024;
    v10 = 20;
    v11 = v6;
    v12 = v2;
    _os_log_error_impl(&dword_243D1C000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)initWithUser:(const char *)a1 password:.cold.2(const char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@", @"user != ((void*)0)"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v3 = NSStringFromSelector(a1);
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    OUTLINED_FUNCTION_0();
    v8 = @"CASPasswordCredential.m";
    v9 = 1024;
    v10 = 19;
    v11 = v6;
    v12 = v2;
    _os_log_error_impl(&dword_243D1C000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

@end