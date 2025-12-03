@interface DMFFetchConfigurationSourceSyncTokenRequest
- (DMFFetchConfigurationSourceSyncTokenRequest)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation DMFFetchConfigurationSourceSyncTokenRequest

- (DMFFetchConfigurationSourceSyncTokenRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = DMFFetchConfigurationSourceSyncTokenRequest;
  v5 = [(CATTaskRequest *)&v10 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    v7 = [coderCopy decodeObjectOfClasses:v6 forKey:@"configurationSource"];
    configurationSource = v5->_configurationSource;
    v5->_configurationSource = v7;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = DMFFetchConfigurationSourceSyncTokenRequest;
  coderCopy = coder;
  [(CATTaskRequest *)&v6 encodeWithCoder:coderCopy];
  v5 = [(DMFFetchConfigurationSourceSyncTokenRequest *)self configurationSource:v6.receiver];
  [coderCopy encodeObject:v5 forKey:@"configurationSource"];
}

@end