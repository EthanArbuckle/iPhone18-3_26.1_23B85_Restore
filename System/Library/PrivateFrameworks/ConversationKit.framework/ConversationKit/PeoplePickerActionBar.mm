@interface PeoplePickerActionBar
- (void)addPersonButtonTapped:(id)tapped;
- (void)audioButtonTapped:(id)tapped;
- (void)cancelButtonTapped:(id)tapped;
- (void)createLinkButtonTapped:(id)tapped;
- (void)inviteWithMessagesButtonTapped:(id)tapped;
- (void)layoutSubviews;
- (void)messagesButtonTapped:(id)tapped;
- (void)rttEnablementDidChange;
- (void)traitCollectionDidChange:(id)change;
- (void)videoButtonTapped;
@end

@implementation PeoplePickerActionBar

- (void)layoutSubviews
{
  selfCopy = self;
  PeoplePickerActionBar.layoutSubviews()();
}

- (void)rttEnablementDidChange
{
  selfCopy = self;
  PeoplePickerActionBar.rttEnablementDidChange()();
}

- (void)cancelButtonTapped:(id)tapped
{
  tappedCopy = tapped;
  selfCopy = self;
  PeoplePickerActionBar.cancelButtonTapped(_:)(tappedCopy, 5);
}

- (void)audioButtonTapped:(id)tapped
{
  tappedCopy = tapped;
  selfCopy = self;
  PeoplePickerActionBar.audioButtonTapped(_:)();
}

- (void)createLinkButtonTapped:(id)tapped
{
  tappedCopy = tapped;
  selfCopy = self;
  PeoplePickerActionBar.createLinkButtonTapped(_:)(tappedCopy);
}

- (void)videoButtonTapped
{
  selfCopy = self;
  PeoplePickerActionBar.videoButtonTapped()();
}

- (void)addPersonButtonTapped:(id)tapped
{
  tappedCopy = tapped;
  selfCopy = self;
  PeoplePickerActionBar.cancelButtonTapped(_:)(tappedCopy, 2);
}

- (void)inviteWithMessagesButtonTapped:(id)tapped
{
  tappedCopy = tapped;
  selfCopy = self;
  PeoplePickerActionBar.cancelButtonTapped(_:)(tappedCopy, 3);
}

- (void)messagesButtonTapped:(id)tapped
{
  tappedCopy = tapped;
  selfCopy = self;
  PeoplePickerActionBar.cancelButtonTapped(_:)(tappedCopy, 4);
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  v9.is_nil = selfCopy;
  v7 = selfCopy;
  v9.value.super.isa = change;
  PeoplePickerActionBar.traitCollectionDidChange(_:)(v9);
}

@end