@interface CRKPerformIDSFirewallActionRequest
- (CRKPerformIDSFirewallActionRequest)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CRKPerformIDSFirewallActionRequest

- (void)encodeWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = CRKPerformIDSFirewallActionRequest;
  v4 = a3;
  [(CATTaskRequest *)&v7 encodeWithCoder:v4];
  v5 = [MEMORY[0x277CCABB0] numberWithInteger:{-[CRKPerformIDSFirewallActionRequest action](self, "action", v7.receiver, v7.super_class)}];
  [v4 encodeObject:v5 forKey:@"action"];

  v6 = [(CRKPerformIDSFirewallActionRequest *)self allowedAppleIDs];
  [v4 encodeObject:v6 forKey:@"allowedAppleIDs"];
}

- (CRKPerformIDSFirewallActionRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = CRKPerformIDSFirewallActionRequest;
  v5 = [(CATTaskRequest *)&v13 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"action"];
    v5->_action = [v6 integerValue];

    v7 = MEMORY[0x277CBEB98];
    v8 = objc_opt_class();
    v9 = [v7 setWithObjects:{v8, objc_opt_class(), 0}];
    v10 = [v4 decodeObjectOfClasses:v9 forKey:@"allowedAppleIDs"];
    allowedAppleIDs = v5->_allowedAppleIDs;
    v5->_allowedAppleIDs = v10;
  }

  return v5;
}

@end