@interface GDAppleMusicEventGraphSongEventEntry
- (GDAppleMusicEventGraphSongEventEntry)initWithEntityIdentifier:(id)a3 startDate:(id)a4 endDate:(id)a5;
@end

@implementation GDAppleMusicEventGraphSongEventEntry

- (GDAppleMusicEventGraphSongEventEntry)initWithEntityIdentifier:(id)a3 startDate:(id)a4 endDate:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = GDAppleMusicEventGraphSongEventEntry;
  v12 = [(GDAppleMusicEventGraphSongEventEntry *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_entityIdentifier, a3);
    objc_storeStrong(&v13->_startDate, a4);
    objc_storeStrong(&v13->_endDate, a5);
  }

  return v13;
}

@end