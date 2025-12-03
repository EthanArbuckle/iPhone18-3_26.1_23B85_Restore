@interface GDAppleMusicEventGraphSongEventEntry
- (GDAppleMusicEventGraphSongEventEntry)initWithEntityIdentifier:(id)identifier startDate:(id)date endDate:(id)endDate;
@end

@implementation GDAppleMusicEventGraphSongEventEntry

- (GDAppleMusicEventGraphSongEventEntry)initWithEntityIdentifier:(id)identifier startDate:(id)date endDate:(id)endDate
{
  identifierCopy = identifier;
  dateCopy = date;
  endDateCopy = endDate;
  v15.receiver = self;
  v15.super_class = GDAppleMusicEventGraphSongEventEntry;
  v12 = [(GDAppleMusicEventGraphSongEventEntry *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_entityIdentifier, identifier);
    objc_storeStrong(&v13->_startDate, date);
    objc_storeStrong(&v13->_endDate, endDate);
  }

  return v13;
}

@end