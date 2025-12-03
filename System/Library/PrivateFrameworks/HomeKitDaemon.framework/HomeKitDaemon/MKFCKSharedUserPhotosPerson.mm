@interface MKFCKSharedUserPhotosPerson
- (id)createHMPerson;
- (void)updateWithHMPerson:(id)person;
@end

@implementation MKFCKSharedUserPhotosPerson

- (id)createHMPerson
{
  v3 = objc_alloc(MEMORY[0x277CD1C70]);
  modelID = [(MKFCKSharedUserPhotosPerson *)self modelID];
  v5 = [v3 initWithUUID:modelID];

  name = [(MKFCKSharedUserPhotosPerson *)self name];
  [v5 setName:name];

  photoLibraryPersonUUID = [(MKFCKSharedUserPhotosPerson *)self photoLibraryPersonUUID];
  [v5 setExternalPersonUUID:photoLibraryPersonUUID];

  v8 = [v5 copy];

  return v8;
}

- (void)updateWithHMPerson:(id)person
{
  personCopy = person;
  name = [(MKFCKSharedUserPhotosPerson *)self name];
  name2 = [personCopy name];
  v6 = HMFEqualObjects();

  if ((v6 & 1) == 0)
  {
    name3 = [personCopy name];
    [(MKFCKSharedUserPhotosPerson *)self setName:name3];
  }

  photoLibraryPersonUUID = [(MKFCKSharedUserPhotosPerson *)self photoLibraryPersonUUID];
  externalPersonUUID = [personCopy externalPersonUUID];
  v10 = HMFEqualObjects();

  if ((v10 & 1) == 0)
  {
    externalPersonUUID2 = [personCopy externalPersonUUID];
    [(MKFCKSharedUserPhotosPerson *)self setPhotoLibraryPersonUUID:externalPersonUUID2];
  }
}

@end