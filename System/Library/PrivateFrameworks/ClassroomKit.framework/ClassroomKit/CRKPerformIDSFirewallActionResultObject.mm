@interface CRKPerformIDSFirewallActionResultObject
- (CRKPerformIDSFirewallActionResultObject)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CRKPerformIDSFirewallActionResultObject

- (void)encodeWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = CRKPerformIDSFirewallActionResultObject;
  coderCopy = coder;
  [(CATTaskResultObject *)&v6 encodeWithCoder:coderCopy];
  v5 = [(CRKPerformIDSFirewallActionResultObject *)self allowedAppleIDs:v6.receiver];
  [coderCopy encodeObject:v5 forKey:@"allowedAppleIDs"];
}

- (CRKPerformIDSFirewallActionResultObject)initWithCoder:(id)coder
{
  coderCopy = coder;
  v12.receiver = self;
  v12.super_class = CRKPerformIDSFirewallActionResultObject;
  v5 = [(CATTaskResultObject *)&v12 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = MEMORY[0x277CBEB98];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"allowedAppleIDs"];
    allowedAppleIDs = v5->_allowedAppleIDs;
    v5->_allowedAppleIDs = v9;
  }

  return v5;
}

@end