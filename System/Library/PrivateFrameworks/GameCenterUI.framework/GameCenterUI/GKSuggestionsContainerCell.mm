@interface GKSuggestionsContainerCell
+ (NSString)reuseIdentifier;
- (BOOL)collectionView:(id)a3 shouldSelectItemAtIndexPath:(id)a4;
- (BOOL)playerIsSelectable:(id)a3;
- (BOOL)playerIsSelected:(id)a3;
- (CGSize)collectionView:(id)a3 layout:(id)a4 sizeForItemAtIndexPath:(id)a5;
- (GKDashboardMultiplayerPickerDataSource)multiplayerPickerDataSource;
- (NSLayoutConstraint)containerViewLeadingConstraint;
- (NSLayoutConstraint)containerViewTrailingConstraint;
- (UICollectionView)suggestionsCollectionView;
- (UIView)containerView;
- (UIViewController)presentationViewController;
- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4;
- (id)getSuggestedPlayerGroups;
- (id)nearbyIconTapHandler;
- (int64_t)getMaxPlayerCount;
- (int64_t)getSelectedPlayerCount;
- (void)awakeFromNib;
- (void)configureWithDelegate:(id)a3 nearbyPlayers:(id)a4;
- (void)didAttemptSelectingAlreadySelectedPlayers:(id)a3 inGroup:(id)a4;
- (void)didDeselectPlayerGroup:(id)a3 indexPath:(id)a4 dataSourceIdentifier:(id)a5 completion:(id)a6;
- (void)didDeselectPlayers:(id)a3 indexPath:(id)a4 dataSourceIdentifier:(id)a5 completion:(id)a6;
- (void)didExceedAvailablePlayers;
- (void)didSelectPlayerGroup:(id)a3 indexPath:(id)a4 dataSourceIdentifier:(id)a5 completion:(id)a6;
- (void)didSelectPlayers:(id)a3 indexPath:(id)a4 dataSourceIdentifier:(id)a5 completion:(id)a6;
- (void)donateGroupToPeopleSuggester:(id)a3;
- (void)handleLongPressGesture:(id)a3;
- (void)layoutSubviews;
- (void)setContainerView:(id)a3;
- (void)setContainerViewLeadingConstraint:(id)a3;
- (void)setContainerViewTrailingConstraint:(id)a3;
- (void)setMultiplayerPickerDataSource:(id)a3;
- (void)setNearbyIconTapHandler:(id)a3;
- (void)setPresentationViewController:(id)a3;
- (void)setSuggestionsCollectionView:(id)a3;
- (void)updateNearbyPlayers:(id)a3;
- (void)updateVisibleItemsWithPlayers:(id)a3 excludedIndexPath:(id)a4;
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

- (void)setSuggestionsCollectionView:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_24E1BB53C();
}

- (UIView)containerView
{
  v2 = sub_24E1BB5B4();

  return v2;
}

- (void)setContainerView:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_24E1BB61C();
}

- (UIViewController)presentationViewController
{
  v2 = GKSuggestionsContainerCell.presentationViewController.getter();

  return v2;
}

- (void)setPresentationViewController:(id)a3
{
  v5 = a3;
  v6 = self;
  GKSuggestionsContainerCell.presentationViewController.setter(a3);
}

- (GKDashboardMultiplayerPickerDataSource)multiplayerPickerDataSource
{
  v2 = GKSuggestionsContainerCell.multiplayerPickerDataSource.getter();

  return v2;
}

- (void)setMultiplayerPickerDataSource:(id)a3
{
  v5 = a3;
  v6 = self;
  GKSuggestionsContainerCell.multiplayerPickerDataSource.setter(a3);
}

- (NSLayoutConstraint)containerViewLeadingConstraint
{
  v2 = sub_24E1BBA68();

  return v2;
}

- (void)setContainerViewLeadingConstraint:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_24E1BBAD0();
}

- (NSLayoutConstraint)containerViewTrailingConstraint
{
  v2 = sub_24E1BBB48();

  return v2;
}

- (void)setContainerViewTrailingConstraint:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_24E1BBBB0();
}

- (void)awakeFromNib
{
  v2 = self;
  GKSuggestionsContainerCell.awakeFromNib()();
}

- (void)configureWithDelegate:(id)a3 nearbyPlayers:(id)a4
{
  sub_24DF88A8C(0, &qword_27F1DF028);
  v6 = sub_24E347F08();
  swift_unknownObjectRetain();
  v7 = self;
  GKSuggestionsContainerCell.configure(delegate:nearbyPlayers:)(a3, v6);
  swift_unknownObjectRelease();
}

- (void)updateNearbyPlayers:(id)a3
{
  sub_24DF88A8C(0, &qword_27F1DF028);
  v4 = sub_24E347F08();
  v5 = self;
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

- (void)setNearbyIconTapHandler:(id)a3
{
  v4 = _Block_copy(a3);
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

  v6 = self;
  GKSuggestionsContainerCell.nearbyIconTapHandler.setter(v4, v5);
}

- (void)layoutSubviews
{
  v2 = self;
  GKSuggestionsContainerCell.layoutSubviews()();
}

- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4
{
  v6 = sub_24E343518();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24E343498();
  v10 = a3;
  v11 = self;
  v12 = GKSuggestionsContainerCell.collectionView(_:cellForItemAt:)(v10, v9);

  (*(v7 + 8))(v9, v6);

  return v12;
}

- (BOOL)collectionView:(id)a3 shouldSelectItemAtIndexPath:(id)a4
{
  v6 = sub_24E343518();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24E343498();
  v10 = a3;
  v11 = self;
  LOBYTE(self) = GKSuggestionsContainerCell.collectionView(_:shouldSelectItemAt:)();

  (*(v7 + 8))(v9, v6);
  return self & 1;
}

- (CGSize)collectionView:(id)a3 layout:(id)a4 sizeForItemAtIndexPath:(id)a5
{
  v8 = sub_24E343518();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24E343498();
  v12 = a3;
  v13 = a4;
  v14 = self;
  GKSuggestionsContainerCell.collectionView(_:layout:sizeForItemAt:)(v12);
  v16 = v15;
  v18 = v17;

  (*(v9 + 8))(v11, v8);
  v19 = v16;
  v20 = v18;
  result.height = v20;
  result.width = v19;
  return result;
}

- (void)updateVisibleItemsWithPlayers:(id)a3 excludedIndexPath:(id)a4
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E6C80);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v12 - v7;
  sub_24DF88A8C(0, &qword_27F1DF028);
  sub_24E347F08();
  if (a4)
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
  v11 = self;
  GKSuggestionsContainerCell.updateVisibleItems(players:excludedIndexPath:)();

  sub_24DF8C95C(v8, &unk_27F1E6C80);
}

- (void)handleLongPressGesture:(id)a3
{
  v4 = a3;
  v5 = self;
  GKSuggestionsContainerCell.handleLongPressGesture(_:)(v4);
}

- (int64_t)getSelectedPlayerCount
{
  v2 = self;
  v3 = GKSuggestionsContainerCell.getSelectedPlayerCount()();

  return v3;
}

- (int64_t)getMaxPlayerCount
{
  v2 = self;
  v3 = GKSuggestionsContainerCell.getMaxPlayerCount()();

  return v3;
}

- (void)didSelectPlayerGroup:(id)a3 indexPath:(id)a4 dataSourceIdentifier:(id)a5 completion:(id)a6
{
  v9 = sub_24E343518();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = _Block_copy(a6);
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

  v18 = a3;
  v19 = self;
  GKSuggestionsContainerCell.didSelectPlayerGroup(_:indexPath:dataSourceIdentifier:completion:)(v18, v12, v14, v16, v13, v17);
  sub_24DE73FA0(v13);

  (*(v10 + 8))(v12, v9);
}

- (void)didSelectPlayers:(id)a3 indexPath:(id)a4 dataSourceIdentifier:(id)a5 completion:(id)a6
{
  v8 = sub_24E343518();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = _Block_copy(a6);
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

  v18 = self;
  GKSuggestionsContainerCell.didSelectPlayers(_:indexPath:dataSourceIdentifier:completion:)(v13, v11, v14, v16, v12, v17);
  sub_24DE73FA0(v12);

  (*(v9 + 8))(v11, v8);
}

- (void)didDeselectPlayerGroup:(id)a3 indexPath:(id)a4 dataSourceIdentifier:(id)a5 completion:(id)a6
{
  v9 = sub_24E343518();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = _Block_copy(a6);
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

  v18 = a3;
  v19 = self;
  GKSuggestionsContainerCell.didDeselectPlayerGroup(_:indexPath:dataSourceIdentifier:completion:)(v18, v12, v14, v16, v13, v17);
  sub_24DE73FA0(v13);

  (*(v10 + 8))(v12, v9);
}

- (void)didDeselectPlayers:(id)a3 indexPath:(id)a4 dataSourceIdentifier:(id)a5 completion:(id)a6
{
  v8 = sub_24E343518();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = _Block_copy(a6);
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

  v18 = self;
  GKSuggestionsContainerCell.didDeselectPlayers(_:indexPath:dataSourceIdentifier:completion:)(v13, v11, v14, v16, v12, v17);
  sub_24DE73FA0(v12);

  (*(v9 + 8))(v11, v8);
}

- (void)didExceedAvailablePlayers
{
  v2 = self;
  GKSuggestionsContainerCell.didExceedAvailablePlayers()();
}

- (id)getSuggestedPlayerGroups
{
  v2 = self;
  GKSuggestionsContainerCell.getSuggestedPlayerGroups()();

  type metadata accessor for GKSuggestedPlayerGroup();
  v3 = sub_24E347EE8();

  return v3;
}

- (BOOL)playerIsSelectable:(id)a3
{
  v4 = a3;
  v5 = self;
  LOBYTE(self) = GKSuggestionsContainerCell.playerIsSelectable(_:)(v4);

  return self & 1;
}

- (BOOL)playerIsSelected:(id)a3
{
  v4 = a3;
  v5 = self;
  LOBYTE(self) = GKSuggestionsContainerCell.playerIsSelected(_:)(v4);

  return self & 1;
}

- (void)donateGroupToPeopleSuggester:(id)a3
{
  v4 = a3;
  v5 = self;
  GKSuggestionsContainerCell.donateGroupToPeopleSuggester(_:)(v4);
}

- (void)didAttemptSelectingAlreadySelectedPlayers:(id)a3 inGroup:(id)a4
{
  sub_24DF88A8C(0, &qword_27F1DF028);
  v6 = sub_24E347F08();
  v7 = a4;
  v8 = self;
  GKSuggestionsContainerCell.didAttemptSelectingAlreadySelectedPlayers(_:inGroup:)(v6, a4);
}

@end