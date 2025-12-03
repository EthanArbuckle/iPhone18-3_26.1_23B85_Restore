@interface ReadingHistoryDataStore
- (void)_handleSignificantDateChange:(id)change;
@end

@implementation ReadingHistoryDataStore

- (void)_handleSignificantDateChange:(id)change
{
  v3 = sub_1E47099BC();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = &v9 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E470999C();

  ReadingHistoryDataStore.handleSignificantDateChange()();

  (*(v4 + 8))(v8, v3);
}

@end