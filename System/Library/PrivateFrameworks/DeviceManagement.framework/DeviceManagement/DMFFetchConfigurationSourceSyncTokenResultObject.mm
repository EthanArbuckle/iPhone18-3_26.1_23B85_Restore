@interface DMFFetchConfigurationSourceSyncTokenResultObject
- (DMFFetchConfigurationSourceSyncTokenResultObject)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation DMFFetchConfigurationSourceSyncTokenResultObject

- (DMFFetchConfigurationSourceSyncTokenResultObject)initWithCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = DMFFetchConfigurationSourceSyncTokenResultObject;
  v5 = [(CATTaskResultObject *)&v10 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    v7 = [coderCopy decodeObjectOfClasses:v6 forKey:@"syncToken"];
    syncToken = v5->_syncToken;
    v5->_syncToken = v7;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = DMFFetchConfigurationSourceSyncTokenResultObject;
  coderCopy = coder;
  [(CATTaskResultObject *)&v6 encodeWithCoder:coderCopy];
  v5 = [(DMFFetchConfigurationSourceSyncTokenResultObject *)self syncToken:v6.receiver];
  [coderCopy encodeObject:v5 forKey:@"syncToken"];
}

@end