@interface PeoplePickerActionBar
- (void)addPersonButtonTapped:(id)a3;
- (void)audioButtonTapped:(id)a3;
- (void)cancelButtonTapped:(id)a3;
- (void)createLinkButtonTapped:(id)a3;
- (void)inviteWithMessagesButtonTapped:(id)a3;
- (void)layoutSubviews;
- (void)messagesButtonTapped:(id)a3;
- (void)rttEnablementDidChange;
- (void)traitCollectionDidChange:(id)a3;
- (void)videoButtonTapped;
@end

@implementation PeoplePickerActionBar

- (void)layoutSubviews
{
  v2 = self;
  PeoplePickerActionBar.layoutSubviews()();
}

- (void)rttEnablementDidChange
{
  v2 = self;
  PeoplePickerActionBar.rttEnablementDidChange()();
}

- (void)cancelButtonTapped:(id)a3
{
  v4 = a3;
  v5 = self;
  PeoplePickerActionBar.cancelButtonTapped(_:)(v4, 5);
}

- (void)audioButtonTapped:(id)a3
{
  v4 = a3;
  v5 = self;
  PeoplePickerActionBar.audioButtonTapped(_:)();
}

- (void)createLinkButtonTapped:(id)a3
{
  v4 = a3;
  v5 = self;
  PeoplePickerActionBar.createLinkButtonTapped(_:)(v4);
}

- (void)videoButtonTapped
{
  v2 = self;
  PeoplePickerActionBar.videoButtonTapped()();
}

- (void)addPersonButtonTapped:(id)a3
{
  v4 = a3;
  v5 = self;
  PeoplePickerActionBar.cancelButtonTapped(_:)(v4, 2);
}

- (void)inviteWithMessagesButtonTapped:(id)a3
{
  v4 = a3;
  v5 = self;
  PeoplePickerActionBar.cancelButtonTapped(_:)(v4, 3);
}

- (void)messagesButtonTapped:(id)a3
{
  v4 = a3;
  v5 = self;
  PeoplePickerActionBar.cancelButtonTapped(_:)(v4, 4);
}

- (void)traitCollectionDidChange:(id)a3
{
  v5 = a3;
  v6 = self;
  v9.is_nil = v6;
  v7 = v6;
  v9.value.super.isa = a3;
  PeoplePickerActionBar.traitCollectionDidChange(_:)(v9);
}

@end