@interface UITableViewCell(HealthUICHR)
- (void)hkui_configuredForCHR3rdPartyAPIFlowWhilePrompting:()HealthUICHR;
@end

@implementation UITableViewCell(HealthUICHR)

- (void)hkui_configuredForCHR3rdPartyAPIFlowWhilePrompting:()HealthUICHR
{
  if (a3)
  {
    traitCollection = [self traitCollection];
    userInterfaceIdiom = [traitCollection userInterfaceIdiom];

    if (userInterfaceIdiom != 6)
    {
      secondarySystemBackgroundColor = [MEMORY[0x1E69DC888] secondarySystemBackgroundColor];
      [self setBackgroundColor:secondarySystemBackgroundColor];
    }
  }

  return self;
}

@end