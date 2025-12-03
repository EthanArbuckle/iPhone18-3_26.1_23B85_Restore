@interface CNFInternalProcessListController
- (id)specifiers;
- (void)conferenceKillProcessesAndNukeKeychain:(id)keychain;
@end

@implementation CNFInternalProcessListController

- (id)specifiers
{
  v3 = *MEMORY[0x277D3FC48];
  v4 = *(&self->super.super.super.super.super.isa + v3);
  if (!v4)
  {
    v5 = [(CNFInternalProcessListController *)self loadSpecifiersFromPlistName:@"ConferenceInternalProcessSettings" target:self];
    v6 = *(&self->super.super.super.super.super.isa + v3);
    *(&self->super.super.super.super.super.isa + v3) = v5;

    v4 = *(&self->super.super.super.super.super.isa + v3);
  }

  return v4;
}

- (void)conferenceKillProcessesAndNukeKeychain:(id)keychain
{
  +[CNFInternalSettingsUtilities nukeKeychain];

  +[CNFInternalSettingsUtilities killEverything];
}

@end