@interface DMFDeleteUserRequest
- (DMFDeleteUserRequest)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation DMFDeleteUserRequest

- (DMFDeleteUserRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = DMFDeleteUserRequest;
  v5 = [(CATTaskRequest *)&v11 initWithCoder:v4];
  if (v5)
  {
    v6 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    v7 = [v4 decodeObjectOfClasses:v6 forKey:@"username"];
    username = v5->_username;
    v5->_username = v7;

    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"forceDeletion"];
    v5->_forceDeletion = [v9 BOOLValue];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = DMFDeleteUserRequest;
  v4 = a3;
  [(CATTaskRequest *)&v7 encodeWithCoder:v4];
  v5 = [(DMFDeleteUserRequest *)self username:v7.receiver];
  [v4 encodeObject:v5 forKey:@"username"];

  v6 = [MEMORY[0x1E696AD98] numberWithBool:{-[DMFDeleteUserRequest forceDeletion](self, "forceDeletion")}];
  [v4 encodeObject:v6 forKey:@"forceDeletion"];
}

@end