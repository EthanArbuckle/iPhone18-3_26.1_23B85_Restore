@interface DMFEchoResultObject
- (DMFEchoResultObject)initWithCoder:(id)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation DMFEchoResultObject

- (DMFEchoResultObject)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = DMFEchoResultObject;
  v5 = [(CATTaskResultObject *)&v13 initWithCoder:v4];
  if (v5)
  {
    v6 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    v7 = [v4 decodeObjectOfClasses:v6 forKey:@"echo"];
    echo = v5->_echo;
    v5->_echo = v7;

    v9 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    v10 = [v4 decodeObjectOfClasses:v9 forKey:@"resultStatus"];
    resultStatus = v5->_resultStatus;
    v5->_resultStatus = v10;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = DMFEchoResultObject;
  v4 = a3;
  [(CATTaskResultObject *)&v7 encodeWithCoder:v4];
  v5 = [(DMFEchoResultObject *)self echo:v7.receiver];
  [v4 encodeObject:v5 forKey:@"echo"];

  v6 = [(DMFEchoResultObject *)self resultStatus];
  [v4 encodeObject:v6 forKey:@"resultStatus"];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(DMFEchoResultObject *)self echo];
  v5 = [(DMFEchoResultObject *)self resultStatus];
  v6 = [v3 stringWithFormat:@"Echo: '%@' result: %@", v4, v5];

  return v6;
}

@end