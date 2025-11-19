@interface CHSWidgetConfigurationHostsBox
- (CHSWidgetConfigurationHostsBox)initWithCoder:(id)a3;
- (CHSWidgetConfigurationHostsBox)initWithConfigurationsByHost:(id)a3;
@end

@implementation CHSWidgetConfigurationHostsBox

- (CHSWidgetConfigurationHostsBox)initWithConfigurationsByHost:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = CHSWidgetConfigurationHostsBox;
  v6 = [(CHSWidgetConfigurationHostsBox *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_configurationsByHost, a3);
  }

  return v7;
}

- (CHSWidgetConfigurationHostsBox)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = MEMORY[0x1E695DFD8];
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = [v5 setWithObjects:{v6, v7, objc_opt_class(), 0}];
  v9 = [v4 decodeObjectOfClasses:v8 forKey:@"c"];
  if (v9)
  {
    self = [(CHSWidgetConfigurationHostsBox *)self initWithConfigurationsByHost:v9];
    v10 = self;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

@end