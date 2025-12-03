@interface ICSettingsSortTypeController
- (void)viewDidAppear:(BOOL)appear;
@end

@implementation ICSettingsSortTypeController

- (void)viewDidAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = ICSettingsSortTypeController;
  [(ICSettingsSortTypeController *)&v4 viewDidAppear:appear];
  [(ICSettingsSortTypeController *)self ic_submitNavigationEventForIdentifier:*MEMORY[0x1E69B7A20] titleStringKey:@"NOTE_DEFAULT_SORT" navigationComponents:&unk_1F4FC3B88];
}

@end