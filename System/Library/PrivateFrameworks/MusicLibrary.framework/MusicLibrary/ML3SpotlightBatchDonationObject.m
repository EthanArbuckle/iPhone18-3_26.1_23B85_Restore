@interface ML3SpotlightBatchDonationObject
- (ML3SpotlightBatchDonationObject)initWithCurrentRevision:(int64_t)a3 targetRevision:(int64_t)a4 trackPersistentIDsToUpdate:(id)a5 playlistPersistentIDsToUpdate:(id)a6 albumPersistentIDsToUpdate:(id)a7 artistPersistentIDsToUpdate:(id)a8 entityStringsToDelete:(id)a9;
@end

@implementation ML3SpotlightBatchDonationObject

- (ML3SpotlightBatchDonationObject)initWithCurrentRevision:(int64_t)a3 targetRevision:(int64_t)a4 trackPersistentIDsToUpdate:(id)a5 playlistPersistentIDsToUpdate:(id)a6 albumPersistentIDsToUpdate:(id)a7 artistPersistentIDsToUpdate:(id)a8 entityStringsToDelete:(id)a9
{
  v23 = a5;
  v22 = a6;
  v15 = a7;
  v16 = a8;
  v17 = a9;
  v24.receiver = self;
  v24.super_class = ML3SpotlightBatchDonationObject;
  v18 = [(ML3SpotlightBatchDonationObject *)&v24 init];
  v19 = v18;
  if (v18)
  {
    v18->_currentRevision = a3;
    v18->_targetRevision = a4;
    objc_storeStrong(&v18->_trackPersistentIDsToUpdate, a5);
    objc_storeStrong(&v19->_playlistPersistentIDsToUpdate, a6);
    objc_storeStrong(&v19->_albumPersistentIDsToUpdate, a7);
    objc_storeStrong(&v19->_artistPersistentIDsToUpdate, a8);
    objc_storeStrong(&v19->_entityStringsToDelete, a9);
  }

  return v19;
}

@end