@interface ICSettingsSortTypeController
- (void)viewDidAppear:(BOOL)a3;
@end

@implementation ICSettingsSortTypeController

- (void)viewDidAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = ICSettingsSortTypeController;
  [(ICSettingsSortTypeController *)&v4 viewDidAppear:a3];
  [(ICSettingsSortTypeController *)self ic_submitNavigationEventForIdentifier:*MEMORY[0x1E69B7A20] titleStringKey:@"NOTE_DEFAULT_SORT" navigationComponents:&unk_1F4FC3B88];
}

@end