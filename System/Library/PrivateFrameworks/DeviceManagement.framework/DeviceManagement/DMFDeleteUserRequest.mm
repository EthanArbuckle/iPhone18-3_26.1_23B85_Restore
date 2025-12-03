@interface DMFDeleteUserRequest
- (DMFDeleteUserRequest)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation DMFDeleteUserRequest

- (DMFDeleteUserRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = DMFDeleteUserRequest;
  v5 = [(CATTaskRequest *)&v11 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    v7 = [coderCopy decodeObjectOfClasses:v6 forKey:@"username"];
    username = v5->_username;
    v5->_username = v7;

    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"forceDeletion"];
    v5->_forceDeletion = [v9 BOOLValue];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = DMFDeleteUserRequest;
  coderCopy = coder;
  [(CATTaskRequest *)&v7 encodeWithCoder:coderCopy];
  v5 = [(DMFDeleteUserRequest *)self username:v7.receiver];
  [coderCopy encodeObject:v5 forKey:@"username"];

  v6 = [MEMORY[0x1E696AD98] numberWithBool:{-[DMFDeleteUserRequest forceDeletion](self, "forceDeletion")}];
  [coderCopy encodeObject:v6 forKey:@"forceDeletion"];
}

@end