@interface MOSuggestionSheetEntriesSettingsController
- (id)specifiers;
@end

@implementation MOSuggestionSheetEntriesSettingsController

- (id)specifiers
{
  v3 = *MEMORY[0x277D3FC48];
  v4 = *(&self->super.super.super.super.super.isa + v3);
  if (!v4)
  {
    v5 = [(MOSuggestionSheetEntriesSettingsController *)self loadSpecifiersFromPlistName:@"MOSuggestionSheetEntriesSettings" target:self];
    [(MOSuggestionSheetEntriesSettingsController *)self setSpecifiers:v5];

    v4 = *(&self->super.super.super.super.super.isa + v3);
  }

  return v4;
}

@end