@interface DMFInviteUserToVPPRequest
- (DMFInviteUserToVPPRequest)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation DMFInviteUserToVPPRequest

- (DMFInviteUserToVPPRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = DMFInviteUserToVPPRequest;
  v5 = [(CATTaskRequest *)&v13 initWithCoder:v4];
  if (v5)
  {
    v6 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    v7 = [v4 decodeObjectOfClasses:v6 forKey:@"URL"];
    URL = v5->_URL;
    v5->_URL = v7;

    v9 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    v10 = [v4 decodeObjectOfClasses:v9 forKey:@"originator"];
    originator = v5->_originator;
    v5->_originator = v10;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = DMFInviteUserToVPPRequest;
  v4 = a3;
  [(CATTaskRequest *)&v7 encodeWithCoder:v4];
  v5 = [(DMFInviteUserToVPPRequest *)self URL:v7.receiver];
  [v4 encodeObject:v5 forKey:@"URL"];

  v6 = [(DMFInviteUserToVPPRequest *)self originator];
  [v4 encodeObject:v6 forKey:@"originator"];
}

@end