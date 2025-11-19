@interface ProfileSharingWithYouTileCell
- (void)_bridgedUpdateConfigurationUsingState:(id)a3;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation ProfileSharingWithYouTileCell

- (void)traitCollectionDidChange:(id)a3
{
  v9.receiver = self;
  v9.super_class = type metadata accessor for ProfileSharingWithYouTileCell();
  v4 = a3;
  v5 = v9.receiver;
  [(ProfileSharingWithYouTileCell *)&v9 traitCollectionDidChange:v4];
  v6 = [v5 traitCollection];
  v7 = [v6 preferredContentSizeCategory];

  v8 = sub_1BA192798();
  sub_1BA191E60(v8);
}

- (void)_bridgedUpdateConfigurationUsingState:(id)a3
{
  v4 = sub_1BA4A40C8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA4A40B8();
  v8 = self;
  sub_1BA194B98();

  (*(v5 + 8))(v7, v4);
}

@end