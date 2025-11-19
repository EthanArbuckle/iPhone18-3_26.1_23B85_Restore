@interface DataTypeDetailFavoritesCell
- (void)_bridgedUpdateConfigurationUsingState:(id)a3;
@end

@implementation DataTypeDetailFavoritesCell

- (void)_bridgedUpdateConfigurationUsingState:(id)a3
{
  v4 = sub_1BA4A40C8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA4A40B8();
  v8 = self;
  sub_1BA177938();

  (*(v5 + 8))(v7, v4);
}

@end