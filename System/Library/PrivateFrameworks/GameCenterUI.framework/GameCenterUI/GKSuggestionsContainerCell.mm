@interface GKSuggestionsContainerCell
+ (NSString)reuseIdentifier;
- (BOOL)collectionView:(id)view shouldSelectItemAtIndexPath:(id)path;
- (BOOL)playerIsSelectable:(id)selectable;
- (BOOL)playerIsSelected:(id)selected;
- (CGSize)collectionView:(id)view layout:(id)layout sizeForItemAtIndexPath:(id)path;
- (GKDashboardMultiplayerPickerDataSource)multiplayerPickerDataSource;
- (NSLayoutConstraint)containerViewLeadingConstraint;
- (NSLayoutConstraint)containerViewTrailingConstraint;
- (UICollectionView)suggestionsCollectionView;
- (UIView)containerView;
- (UIViewController)presentationViewController;
- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path;
- (id)getSuggestedPlayerGroups;
- (id)nearbyIconTapHandler;
- (int64_t)getMaxPlayerCount;
- (int64_t)getSelectedPlayerCount;
- (void)awakeFromNib;
- (void)configureWithDelegate:(id)delegate nearbyPlayers:(id)players;
- (void)didAttemptSelectingAlreadySelectedPlayers:(id)players inGroup:(id)group;
- (void)didDeselectPlayerGroup:(id)group indexPath:(id)path dataSourceIdentifier:(id)identifier completion:(id)completion;
- (void)didDeselectPlayers:(id)players indexPath:(id)path dataSourceIdentifier:(id)identifier completion:(id)completion;
- (void)didExceedAvailablePlayers;
- (void)didSelectPlayerGroup:(id)group indexPath:(id)path dataSourceIdentifier:(id)identifier completion:(id)completion;
- (void)didSelectPlayers:(id)players indexPath:(id)path dataSourceIdentifier:(id)identifier completion:(id)completion;
- (void)donateGroupToPeopleSuggester:(id)suggester;
- (void)handleLongPressGesture:(id)gesture;
- (void)layoutSubviews;
- (void)setContainerView:(id)view;
- (void)setContainerViewLeadingConstraint:(id)constraint;
- (void)setContainerViewTrailingConstraint:(id)constraint;
- (void)setMultiplayerPickerDataSource:(id)source;
- (void)setNearbyIconTapHandler:(id)handler;
- (void)setPresentationViewController:(id)controller;
- (void)setSuggestionsCollectionView:(id)view;
- (void)updateNearbyPlayers:(id)players;
- (void)updateVisibleItemsWithPlayers:(id)players excludedIndexPath:(id)path;
@end

@implementation GKSuggestionsContainerCell

+ (NSString)reuseIdentifier
{
  static GKSuggestionsContainerCell.reuseIdentifier.getter();
  v2 = sub_24E347CB8();

  return v2;
}

- (UICollectionView)suggestionsCollectionView
{
  v2 = sub_24E1BB4D4();

  return v2;
}

- (void)setSuggestionsCollectionView:(id)view
{
  viewCopy = view;
  selfCopy = self;
  sub_24E1BB53C();
}

- (UIView)containerView
{
  v2 = sub_24E1BB5B4();

  return v2;
}

- (void)setContainerView:(id)view
{
  viewCopy = view;
  selfCopy = self;
  sub_24E1BB61C();
}

- (UIViewController)presentationViewController
{
  v2 = GKSuggestionsContainerCell.presentationViewController.getter();

  return v2;
}

- (void)setPresentationViewController:(id)controller
{
  controllerCopy = controller;
  selfCopy = self;
  GKSuggestionsContainerCell.presentationViewController.setter(controller);
}

- (GKDashboardMultiplayerPickerDataSource)multiplayerPickerDataSource
{
  v2 = GKSuggestionsContainerCell.multiplayerPickerDataSource.getter();

  return v2;
}

- (void)setMultiplayerPickerDataSource:(id)source
{
  sourceCopy = source;
  selfCopy = self;
  GKSuggestionsContainerCell.multiplayerPickerDataSource.setter(source);
}

- (NSLayoutConstraint)containerViewLeadingConstraint
{
  v2 = sub_24E1BBA68();

  return v2;
}

- (void)setContainerViewLeadingConstraint:(id)constraint
{
  constraintCopy = constraint;
  selfCopy = self;
  sub_24E1BBAD0();
}

- (NSLayoutConstraint)containerViewTrailingConstraint
{
  v2 = sub_24E1BBB48();

  return v2;
}

- (void)setContainerViewTrailingConstraint:(id)constraint
{
  constraintCopy = constraint;
  selfCopy = self;
  sub_24E1BBBB0();
}

- (void)awakeFromNib
{
  selfCopy = self;
  GKSuggestionsContainerCell.awakeFromNib()();
}

- (void)configureWithDelegate:(id)delegate nearbyPlayers:(id)players
{
  sub_24DF88A8C(0, &qword_27F1DF028);
  v6 = sub_24E347F08();
  swift_unknownObjectRetain();
  selfCopy = self;
  GKSuggestionsContainerCell.configure(delegate:nearbyPlayers:)(delegate, v6);
  swift_unknownObjectRelease();
}

- (void)updateNearbyPlayers:(id)players
{
  sub_24DF88A8C(0, &qword_27F1DF028);
  v4 = sub_24E347F08();
  selfCopy = self;
  GKSuggestionsContainerCell.updateNearbyPlayers(_:)(v4);
}

- (id)nearbyIconTapHandler
{
  v2 = GKSuggestionsContainerCell.nearbyIconTapHandler.getter();
  if (v2)
  {
    v6[4] = v2;
    v6[5] = v3;
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 1107296256;
    v6[2] = sub_24E00B24C;
    v6[3] = &block_descriptor_48;
    v4 = _Block_copy(v6);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setNearbyIconTapHandler:(id)handler
{
  v4 = _Block_copy(handler);
  if (v4)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v4;
    v4 = sub_24E00CEE0;
  }

  else
  {
    v5 = 0;
  }

  selfCopy = self;
  GKSuggestionsContainerCell.nearbyIconTapHandler.setter(v4, v5);
}

- (void)layoutSubviews
{
  selfCopy = self;
  GKSuggestionsContainerCell.layoutSubviews()();
}

- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path
{
  v6 = sub_24E343518();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24E343498();
  viewCopy = view;
  selfCopy = self;
  v12 = GKSuggestionsContainerCell.collectionView(_:cellForItemAt:)(viewCopy, v9);

  (*(v7 + 8))(v9, v6);

  return v12;
}

- (BOOL)collectionView:(id)view shouldSelectItemAtIndexPath:(id)path
{
  v6 = sub_24E343518();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24E343498();
  viewCopy = view;
  selfCopy = self;
  LOBYTE(self) = GKSuggestionsContainerCell.collectionView(_:shouldSelectItemAt:)();

  (*(v7 + 8))(v9, v6);
  return self & 1;
}

- (CGSize)collectionView:(id)view layout:(id)layout sizeForItemAtIndexPath:(id)path
{
  v8 = sub_24E343518();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24E343498();
  viewCopy = view;
  layoutCopy = layout;
  selfCopy = self;
  GKSuggestionsContainerCell.collectionView(_:layout:sizeForItemAt:)(viewCopy);
  v16 = v15;
  v18 = v17;

  (*(v9 + 8))(v11, v8);
  v19 = v16;
  v20 = v18;
  result.height = v20;
  result.width = v19;
  return result;
}

- (void)updateVisibleItemsWithPlayers:(id)players excludedIndexPath:(id)path
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E6C80);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v12 - v7;
  sub_24DF88A8C(0, &qword_27F1DF028);
  sub_24E347F08();
  if (path)
  {
    sub_24E343498();
    v9 = sub_24E343518();
    v10 = 0;
  }

  else
  {
    v9 = sub_24E343518();
    v10 = 1;
  }

  __swift_storeEnumTagSinglePayload(v8, v10, 1, v9);
  selfCopy = self;
  GKSuggestionsContainerCell.updateVisibleItems(players:excludedIndexPath:)();

  sub_24DF8C95C(v8, &unk_27F1E6C80);
}

- (void)handleLongPressGesture:(id)gesture
{
  gestureCopy = gesture;
  selfCopy = self;
  GKSuggestionsContainerCell.handleLongPressGesture(_:)(gestureCopy);
}

- (int64_t)getSelectedPlayerCount
{
  selfCopy = self;
  v3 = GKSuggestionsContainerCell.getSelectedPlayerCount()();

  return v3;
}

- (int64_t)getMaxPlayerCount
{
  selfCopy = self;
  v3 = GKSuggestionsContainerCell.getMaxPlayerCount()();

  return v3;
}

- (void)didSelectPlayerGroup:(id)group indexPath:(id)path dataSourceIdentifier:(id)identifier completion:(id)completion
{
  v9 = sub_24E343518();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = _Block_copy(completion);
  sub_24E343498();
  v14 = sub_24E347CF8();
  v16 = v15;
  if (v13)
  {
    v17 = swift_allocObject();
    *(v17 + 16) = v13;
    v13 = sub_24E00CEE0;
  }

  else
  {
    v17 = 0;
  }

  groupCopy = group;
  selfCopy = self;
  GKSuggestionsContainerCell.didSelectPlayerGroup(_:indexPath:dataSourceIdentifier:completion:)(groupCopy, v12, v14, v16, v13, v17);
  sub_24DE73FA0(v13);

  (*(v10 + 8))(v12, v9);
}

- (void)didSelectPlayers:(id)players indexPath:(id)path dataSourceIdentifier:(id)identifier completion:(id)completion
{
  v8 = sub_24E343518();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = _Block_copy(completion);
  sub_24DF88A8C(0, &qword_27F1DF028);
  v13 = sub_24E347F08();
  sub_24E343498();
  v14 = sub_24E347CF8();
  v16 = v15;
  if (v12)
  {
    v17 = swift_allocObject();
    *(v17 + 16) = v12;
    v12 = sub_24E00CEE0;
  }

  else
  {
    v17 = 0;
  }

  selfCopy = self;
  GKSuggestionsContainerCell.didSelectPlayers(_:indexPath:dataSourceIdentifier:completion:)(v13, v11, v14, v16, v12, v17);
  sub_24DE73FA0(v12);

  (*(v9 + 8))(v11, v8);
}

- (void)didDeselectPlayerGroup:(id)group indexPath:(id)path dataSourceIdentifier:(id)identifier completion:(id)completion
{
  v9 = sub_24E343518();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = _Block_copy(completion);
  sub_24E343498();
  v14 = sub_24E347CF8();
  v16 = v15;
  if (v13)
  {
    v17 = swift_allocObject();
    *(v17 + 16) = v13;
    v13 = sub_24E00CEE0;
  }

  else
  {
    v17 = 0;
  }

  groupCopy = group;
  selfCopy = self;
  GKSuggestionsContainerCell.didDeselectPlayerGroup(_:indexPath:dataSourceIdentifier:completion:)(groupCopy, v12, v14, v16, v13, v17);
  sub_24DE73FA0(v13);

  (*(v10 + 8))(v12, v9);
}

- (void)didDeselectPlayers:(id)players indexPath:(id)path dataSourceIdentifier:(id)identifier completion:(id)completion
{
  v8 = sub_24E343518();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = _Block_copy(completion);
  sub_24DF88A8C(0, &qword_27F1DF028);
  v13 = sub_24E347F08();
  sub_24E343498();
  v14 = sub_24E347CF8();
  v16 = v15;
  if (v12)
  {
    v17 = swift_allocObject();
    *(v17 + 16) = v12;
    v12 = sub_24DFA0D08;
  }

  else
  {
    v17 = 0;
  }

  selfCopy = self;
  GKSuggestionsContainerCell.didDeselectPlayers(_:indexPath:dataSourceIdentifier:completion:)(v13, v11, v14, v16, v12, v17);
  sub_24DE73FA0(v12);

  (*(v9 + 8))(v11, v8);
}

- (void)didExceedAvailablePlayers
{
  selfCopy = self;
  GKSuggestionsContainerCell.didExceedAvailablePlayers()();
}

- (id)getSuggestedPlayerGroups
{
  selfCopy = self;
  GKSuggestionsContainerCell.getSuggestedPlayerGroups()();

  type metadata accessor for GKSuggestedPlayerGroup();
  v3 = sub_24E347EE8();

  return v3;
}

- (BOOL)playerIsSelectable:(id)selectable
{
  selectableCopy = selectable;
  selfCopy = self;
  LOBYTE(self) = GKSuggestionsContainerCell.playerIsSelectable(_:)(selectableCopy);

  return self & 1;
}

- (BOOL)playerIsSelected:(id)selected
{
  selectedCopy = selected;
  selfCopy = self;
  LOBYTE(self) = GKSuggestionsContainerCell.playerIsSelected(_:)(selectedCopy);

  return self & 1;
}

- (void)donateGroupToPeopleSuggester:(id)suggester
{
  suggesterCopy = suggester;
  selfCopy = self;
  GKSuggestionsContainerCell.donateGroupToPeopleSuggester(_:)(suggesterCopy);
}

- (void)didAttemptSelectingAlreadySelectedPlayers:(id)players inGroup:(id)group
{
  sub_24DF88A8C(0, &qword_27F1DF028);
  v6 = sub_24E347F08();
  groupCopy = group;
  selfCopy = self;
  GKSuggestionsContainerCell.didAttemptSelectingAlreadySelectedPlayers(_:inGroup:)(v6, group);
}

@end