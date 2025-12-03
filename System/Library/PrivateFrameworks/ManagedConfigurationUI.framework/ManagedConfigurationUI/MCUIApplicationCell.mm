@interface MCUIApplicationCell
- (void)setApplication:(id)application;
@end

@implementation MCUIApplicationCell

- (void)setApplication:(id)application
{
  applicationCopy = application;
  [(MCUIApplicationCell *)self setAccessoryType:0];
  [(MCUIApplicationCell *)self setSelectionStyle:0];
  valueCellConfiguration = [MEMORY[0x277D756E0] valueCellConfiguration];
  name = [applicationCopy name];
  [valueCellConfiguration setText:name];

  v6 = [applicationCopy iconForVariant:0];
  [valueCellConfiguration setImage:v6];

  misStateString = [applicationCopy misStateString];

  [valueCellConfiguration setSecondaryText:misStateString];
  [(MCUIApplicationCell *)self setContentConfiguration:valueCellConfiguration];
}

@end