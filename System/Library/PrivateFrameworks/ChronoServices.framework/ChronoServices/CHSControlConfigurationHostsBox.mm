@interface CHSControlConfigurationHostsBox
- (CHSControlConfigurationHostsBox)initWithCoder:(id)coder;
- (CHSControlConfigurationHostsBox)initWithConfigurationsByHost:(id)host;
@end

@implementation CHSControlConfigurationHostsBox

- (CHSControlConfigurationHostsBox)initWithConfigurationsByHost:(id)host
{
  hostCopy = host;
  v9.receiver = self;
  v9.super_class = CHSControlConfigurationHostsBox;
  v6 = [(CHSControlConfigurationHostsBox *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_configurationsByHost, host);
  }

  return v7;
}

- (CHSControlConfigurationHostsBox)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = MEMORY[0x1E695DFD8];
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = [v5 setWithObjects:{v6, v7, objc_opt_class(), 0}];
  v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"c"];
  if (v9)
  {
    self = [(CHSControlConfigurationHostsBox *)self initWithConfigurationsByHost:v9];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

@end