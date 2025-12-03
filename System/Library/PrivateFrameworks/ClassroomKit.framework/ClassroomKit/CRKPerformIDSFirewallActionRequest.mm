@interface CRKPerformIDSFirewallActionRequest
- (CRKPerformIDSFirewallActionRequest)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CRKPerformIDSFirewallActionRequest

- (void)encodeWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = CRKPerformIDSFirewallActionRequest;
  coderCopy = coder;
  [(CATTaskRequest *)&v7 encodeWithCoder:coderCopy];
  v5 = [MEMORY[0x277CCABB0] numberWithInteger:{-[CRKPerformIDSFirewallActionRequest action](self, "action", v7.receiver, v7.super_class)}];
  [coderCopy encodeObject:v5 forKey:@"action"];

  allowedAppleIDs = [(CRKPerformIDSFirewallActionRequest *)self allowedAppleIDs];
  [coderCopy encodeObject:allowedAppleIDs forKey:@"allowedAppleIDs"];
}

- (CRKPerformIDSFirewallActionRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = CRKPerformIDSFirewallActionRequest;
  v5 = [(CATTaskRequest *)&v13 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"action"];
    v5->_action = [v6 integerValue];

    v7 = MEMORY[0x277CBEB98];
    v8 = objc_opt_class();
    v9 = [v7 setWithObjects:{v8, objc_opt_class(), 0}];
    v10 = [coderCopy decodeObjectOfClasses:v9 forKey:@"allowedAppleIDs"];
    allowedAppleIDs = v5->_allowedAppleIDs;
    v5->_allowedAppleIDs = v10;
  }

  return v5;
}

@end