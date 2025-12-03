@interface MCInstallationWarningCell
+ (id)reuseIdentifier;
- (MCInstallationWarningCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)setWarningLabelText:(id)text;
@end

@implementation MCInstallationWarningCell

+ (id)reuseIdentifier
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

- (MCInstallationWarningCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v8.receiver = self;
  v8.super_class = MCInstallationWarningCell;
  v4 = [(MCInstallationWarningCell *)&v8 initWithStyle:style reuseIdentifier:identifier];
  v5 = v4;
  if (v4)
  {
    [(MCInstallationWarningCell *)v4 setSelectionStyle:0];
    cellConfiguration = [MEMORY[0x277D756E0] cellConfiguration];
    [(MCInstallationWarningCell *)v5 setContentConfiguration:cellConfiguration];
  }

  return v5;
}

- (void)setWarningLabelText:(id)text
{
  textCopy = text;
  contentConfiguration = [(MCInstallationWarningCell *)self contentConfiguration];
  [contentConfiguration setText:textCopy];

  [(MCInstallationWarningCell *)self setContentConfiguration:contentConfiguration];
}

@end