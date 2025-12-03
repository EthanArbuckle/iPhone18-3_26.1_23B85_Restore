@interface ML3SpotlightBatchDonationObject
- (ML3SpotlightBatchDonationObject)initWithCurrentRevision:(int64_t)revision targetRevision:(int64_t)targetRevision trackPersistentIDsToUpdate:(id)update playlistPersistentIDsToUpdate:(id)toUpdate albumPersistentIDsToUpdate:(id)dsToUpdate artistPersistentIDsToUpdate:(id)iDsToUpdate entityStringsToDelete:(id)delete;
@end

@implementation ML3SpotlightBatchDonationObject

- (ML3SpotlightBatchDonationObject)initWithCurrentRevision:(int64_t)revision targetRevision:(int64_t)targetRevision trackPersistentIDsToUpdate:(id)update playlistPersistentIDsToUpdate:(id)toUpdate albumPersistentIDsToUpdate:(id)dsToUpdate artistPersistentIDsToUpdate:(id)iDsToUpdate entityStringsToDelete:(id)delete
{
  updateCopy = update;
  toUpdateCopy = toUpdate;
  dsToUpdateCopy = dsToUpdate;
  iDsToUpdateCopy = iDsToUpdate;
  deleteCopy = delete;
  v24.receiver = self;
  v24.super_class = ML3SpotlightBatchDonationObject;
  v18 = [(ML3SpotlightBatchDonationObject *)&v24 init];
  v19 = v18;
  if (v18)
  {
    v18->_currentRevision = revision;
    v18->_targetRevision = targetRevision;
    objc_storeStrong(&v18->_trackPersistentIDsToUpdate, update);
    objc_storeStrong(&v19->_playlistPersistentIDsToUpdate, toUpdate);
    objc_storeStrong(&v19->_albumPersistentIDsToUpdate, dsToUpdate);
    objc_storeStrong(&v19->_artistPersistentIDsToUpdate, iDsToUpdate);
    objc_storeStrong(&v19->_entityStringsToDelete, delete);
  }

  return v19;
}

@end