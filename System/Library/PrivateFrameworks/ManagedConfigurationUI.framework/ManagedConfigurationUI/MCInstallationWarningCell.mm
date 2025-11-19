@interface MCInstallationWarningCell
+ (id)reuseIdentifier;
- (MCInstallationWarningCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (void)setWarningLabelText:(id)a3;
@end

@implementation MCInstallationWarningCell

+ (id)reuseIdentifier
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

- (MCInstallationWarningCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v8.receiver = self;
  v8.super_class = MCInstallationWarningCell;
  v4 = [(MCInstallationWarningCell *)&v8 initWithStyle:a3 reuseIdentifier:a4];
  v5 = v4;
  if (v4)
  {
    [(MCInstallationWarningCell *)v4 setSelectionStyle:0];
    v6 = [MEMORY[0x277D756E0] cellConfiguration];
    [(MCInstallationWarningCell *)v5 setContentConfiguration:v6];
  }

  return v5;
}

- (void)setWarningLabelText:(id)a3
{
  v4 = a3;
  v5 = [(MCInstallationWarningCell *)self contentConfiguration];
  [v5 setText:v4];

  [(MCInstallationWarningCell *)self setContentConfiguration:v5];
}

@end