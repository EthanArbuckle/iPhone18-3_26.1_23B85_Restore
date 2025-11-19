@interface ML3MigrationMisgroupedTrack
- (ML3MigrationMisgroupedTrack)initWithPersistentID:(int64_t)a3 albumArtistPID:(int64_t)a4;
@end

@implementation ML3MigrationMisgroupedTrack

- (ML3MigrationMisgroupedTrack)initWithPersistentID:(int64_t)a3 albumArtistPID:(int64_t)a4
{
  v7.receiver = self;
  v7.super_class = ML3MigrationMisgroupedTrack;
  result = [(ML3MigrationMisgroupedTrack *)&v7 init];
  if (result)
  {
    result->_persistentID = a3;
    result->_albumArtistPID = a4;
  }

  return result;
}

@end