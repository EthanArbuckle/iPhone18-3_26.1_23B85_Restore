@interface DMFInviteUserToVPPRequest
- (DMFInviteUserToVPPRequest)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation DMFInviteUserToVPPRequest

- (DMFInviteUserToVPPRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = DMFInviteUserToVPPRequest;
  v5 = [(CATTaskRequest *)&v13 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    v7 = [coderCopy decodeObjectOfClasses:v6 forKey:@"URL"];
    URL = v5->_URL;
    v5->_URL = v7;

    v9 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    v10 = [coderCopy decodeObjectOfClasses:v9 forKey:@"originator"];
    originator = v5->_originator;
    v5->_originator = v10;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = DMFInviteUserToVPPRequest;
  coderCopy = coder;
  [(CATTaskRequest *)&v7 encodeWithCoder:coderCopy];
  v5 = [(DMFInviteUserToVPPRequest *)self URL:v7.receiver];
  [coderCopy encodeObject:v5 forKey:@"URL"];

  originator = [(DMFInviteUserToVPPRequest *)self originator];
  [coderCopy encodeObject:originator forKey:@"originator"];
}

@end