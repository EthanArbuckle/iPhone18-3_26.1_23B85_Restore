@interface ML3MigrationMisgroupedTrack
- (ML3MigrationMisgroupedTrack)initWithPersistentID:(int64_t)d albumArtistPID:(int64_t)iD;
@end

@implementation ML3MigrationMisgroupedTrack

- (ML3MigrationMisgroupedTrack)initWithPersistentID:(int64_t)d albumArtistPID:(int64_t)iD
{
  v7.receiver = self;
  v7.super_class = ML3MigrationMisgroupedTrack;
  result = [(ML3MigrationMisgroupedTrack *)&v7 init];
  if (result)
  {
    result->_persistentID = d;
    result->_albumArtistPID = iD;
  }

  return result;
}

@end