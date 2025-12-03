@interface DMFFetchUsersResultObject
- (DMFFetchUsersResultObject)initWithCoder:(id)coder;
- (DMFFetchUsersResultObject)initWithUsers:(id)users;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation DMFFetchUsersResultObject

- (DMFFetchUsersResultObject)initWithUsers:(id)users
{
  usersCopy = users;
  v9.receiver = self;
  v9.super_class = DMFFetchUsersResultObject;
  v5 = [(CATTaskResultObject *)&v9 init];
  if (v5)
  {
    v6 = [usersCopy copy];
    users = v5->_users;
    v5->_users = v6;
  }

  return v5;
}

- (DMFFetchUsersResultObject)initWithCoder:(id)coder
{
  coderCopy = coder;
  v12.receiver = self;
  v12.super_class = DMFFetchUsersResultObject;
  v5 = [(CATTaskResultObject *)&v12 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"users"];
    users = v5->_users;
    v5->_users = v9;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = DMFFetchUsersResultObject;
  coderCopy = coder;
  [(CATTaskResultObject *)&v6 encodeWithCoder:coderCopy];
  v5 = [(DMFFetchUsersResultObject *)self users:v6.receiver];
  [coderCopy encodeObject:v5 forKey:@"users"];
}

- (id)description
{
  v18 = *MEMORY[0x1E69E9840];
  users = [(DMFFetchUsersResultObject *)self users];
  v3 = [users sortedArrayUsingComparator:&__block_literal_global_15];

  v4 = [MEMORY[0x1E696AD60] stringWithString:@"["];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    v9 = &stru_1F57A0020;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [v4 appendFormat:@"%@\n%@", v9, *(*(&v13 + 1) + 8 * i), v13];
        v9 = @",";
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      v9 = @",";
    }

    while (v7);
  }

  [v4 appendString:@"\n]"];
  v11 = *MEMORY[0x1E69E9840];

  return v4;
}

uint64_t __40__DMFFetchUsersResultObject_description__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 username];
  v4 = [v2 username];

  v5 = [v3 compare:v4];
  return v5;
}

@end