@interface FAProfilePictureStore
+ (double)screenScale;
+ (id)profilePictureForContact:(id)contact serverImageData:(id)data firstName:(id)name lastName:(id)lastName diameter:(double)diameter;
- (CNContactStore)contactStore;
- (FAProfilePictureStore)initWithFamilyCircle:(id)circle;
- (NSDictionary)profileImages;
- (id)contactFor:(id)for;
- (id)profilePictureForFamilyMember:(id)member;
- (id)profilePictureForFamilyMember:(id)member pictureDiameter:(double)diameter;
- (id)profilePictureForFamilyMemberWithAltDSID:(id)d pictureDiameter:(double)diameter;
- (id)profilePictureForRecommendedFamilyMember:(id)member;
- (id)profilePicturesWithDiameter:(double)diameter;
- (id)resizedPictureWithData:(id)data diameter:(double)diameter;
- (void)_fetchProfileImages:(BOOL)images withCompletion:(id)completion;
- (void)dealloc;
- (void)fetchProfilePicturesForRecommendedFamilyMembers:(id)members;
- (void)notifyObservable;
- (void)setFamilyCircle:(id)circle;
@end

@implementation FAProfilePictureStore

- (FAProfilePictureStore)initWithFamilyCircle:(id)circle
{
  v34[19] = *MEMORY[0x277D85DE8];
  circleCopy = circle;
  v33.receiver = self;
  v33.super_class = FAProfilePictureStore;
  v6 = [(FAProfilePictureStore *)&v33 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_familyCircle, circle);
    v8 = dispatch_queue_create("AAUIProfilePictureStorefetchProfileImagesForFamilyCircle", 0);
    serialQueue = v7->_serialQueue;
    v7->_serialQueue = v8;

    dictionary = [MEMORY[0x277CBEB38] dictionary];
    profileImages = v7->_profileImages;
    v7->_profileImages = dictionary;

    dictionary2 = [MEMORY[0x277CBEB38] dictionary];
    recommendedMembersImages = v7->_recommendedMembersImages;
    v7->_recommendedMembersImages = dictionary2;

    v14 = *MEMORY[0x277CBD000];
    v34[0] = *MEMORY[0x277CBD068];
    v34[1] = v14;
    v15 = *MEMORY[0x277CBCFF8];
    v34[2] = *MEMORY[0x277CBD058];
    v34[3] = v15;
    v16 = *MEMORY[0x277CBD070];
    v34[4] = *MEMORY[0x277CBD0E0];
    v34[5] = v16;
    v17 = *MEMORY[0x277CBD090];
    v34[6] = *MEMORY[0x277CBD078];
    v34[7] = v17;
    v18 = *MEMORY[0x277CBD040];
    v34[8] = *MEMORY[0x277CBCFB8];
    v34[9] = v18;
    v19 = *MEMORY[0x277CBD0B8];
    v34[10] = *MEMORY[0x277CBD0B0];
    v34[11] = v19;
    v20 = *MEMORY[0x277CBD0C0];
    v34[12] = *MEMORY[0x277CBD0A8];
    v34[13] = v20;
    v21 = *MEMORY[0x277CBD098];
    v34[14] = *MEMORY[0x277CBD160];
    v34[15] = v21;
    v22 = *MEMORY[0x277CBD158];
    v34[16] = *MEMORY[0x277CBCFC0];
    v34[17] = v22;
    v34[18] = *MEMORY[0x277CBD018];
    v23 = [MEMORY[0x277CBEA60] arrayWithObjects:v34 count:19];
    keysToFetch = v7->_keysToFetch;
    v7->_keysToFetch = v23;

    v25 = v7->_keysToFetch;
    v26 = [MEMORY[0x277CBDA78] descriptorForRequiredKeysForStyle:0];
    v27 = [(NSArray *)v25 arrayByAddingObject:v26];
    v28 = v7->_keysToFetch;
    v7->_keysToFetch = v27;

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v7 selector:sel__traitCollectionDidChange_ name:*MEMORY[0x277D77548] object:0];
  }

  defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter2 addObserver:v7 selector:sel__contactsDidChange name:*MEMORY[0x277CBD140] object:0];

  v31 = *MEMORY[0x277D85DE8];
  return v7;
}

- (CNContactStore)contactStore
{
  contactStore = self->_contactStore;
  if (!contactStore)
  {
    v4 = objc_alloc_init(MEMORY[0x277CBDAB8]);
    v5 = self->_contactStore;
    self->_contactStore = v4;

    contactStore = self->_contactStore;
  }

  return contactStore;
}

- (void)setFamilyCircle:(id)circle
{
  objc_storeStrong(&self->_familyCircle, circle);
  circleCopy = circle;
  serialQueue = self->_serialQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __41__FAProfilePictureStore_setFamilyCircle___block_invoke;
  block[3] = &unk_2782F29E8;
  block[4] = self;
  dispatch_sync(serialQueue, block);
}

uint64_t __41__FAProfilePictureStore_setFamilyCircle___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CBEB38] dictionary];
  v3 = *(a1 + 32);
  v4 = *(v3 + 24);
  *(v3 + 24) = v2;

  return MEMORY[0x2821F96F8]();
}

- (NSDictionary)profileImages
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__4;
  v10 = __Block_byref_object_dispose__4;
  v11 = 0;
  serialQueue = self->_serialQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __38__FAProfilePictureStore_profileImages__block_invoke;
  v5[3] = &unk_2782F4000;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(serialQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

uint64_t __38__FAProfilePictureStore_profileImages__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 24) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

- (id)profilePictureForFamilyMember:(id)member
{
  memberCopy = member;
  contact = [memberCopy contact];
  profileImages = [(FAProfilePictureStore *)self profileImages];
  v7 = [profileImages objectForKeyedSubscript:memberCopy];
  firstName = [memberCopy firstName];
  lastName = [memberCopy lastName];

  v10 = [FAProfilePictureStore profilePictureForContact:contact serverImageData:v7 firstName:firstName lastName:lastName diameter:80.0];

  return v10;
}

+ (id)profilePictureForContact:(id)contact serverImageData:(id)data firstName:(id)name lastName:(id)lastName diameter:(double)diameter
{
  contactCopy = contact;
  dataCopy = data;
  nameCopy = name;
  lastNameCopy = lastName;
  v16 = objc_autoreleasePoolPush();
  thumbnailImageData = [contactCopy thumbnailImageData];

  if (thumbnailImageData)
  {
    thumbnailImageData2 = [contactCopy thumbnailImageData];
    [self screenScale];
    diameter = [thumbnailImageData2 _faCircularImageDataWithDiameter:v19 * diameter];
  }

  else
  {
    [self screenScale];
    thumbnailImageData2 = [dataCopy _faCircularImageDataWithDiameter:v21 * diameter cropRect:{*MEMORY[0x277CBF398], *(MEMORY[0x277CBF398] + 8), *(MEMORY[0x277CBF398] + 16), *(MEMORY[0x277CBF398] + 24)}];
    if ([thumbnailImageData2 length])
    {
      diameter = thumbnailImageData2;
      thumbnailImageData2 = diameter;
    }

    else
    {
      givenName = [contactCopy givenName];
      if ([givenName length])
      {
      }

      else
      {
        familyName = [contactCopy familyName];
        v24 = [familyName length];

        if (!v24)
        {
          if ([nameCopy length] || objc_msgSend(lastNameCopy, "length"))
          {
            v29 = MEMORY[0x277D082C8];
            [self screenScale];
            diameter = [v29 monogramWithFirstName:nameCopy lastName:lastNameCopy diameter:diameter scale:v30];
          }

          else
          {
            v31 = MEMORY[0x277D082C8];
            [self screenScale];
            diameter = [v31 silhouetteMonogramWithDiameter:diameter scale:v32];
          }

          goto LABEL_9;
        }
      }

      v25 = MEMORY[0x277D082C8];
      [self screenScale];
      diameter = [v25 monogramForContact:contactCopy diameter:diameter scale:v26];
    }
  }

LABEL_9:
  v27 = diameter;

  objc_autoreleasePoolPop(v16);

  return v27;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = FAProfilePictureStore;
  [(FAProfilePictureStore *)&v4 dealloc];
}

+ (double)screenScale
{
  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen scale];
  v4 = v3;

  return v4;
}

- (void)_fetchProfileImages:(BOOL)images withCompletion:(id)completion
{
  v32 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  profileImages = [(FAProfilePictureStore *)self profileImages];
  if (images || ![profileImages count])
  {
    v6 = dispatch_group_create();
    v29[0] = 0;
    v29[1] = v29;
    v29[2] = 0x3032000000;
    v29[3] = __Block_byref_object_copy__4;
    v29[4] = __Block_byref_object_dispose__4;
    v30 = 0;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    members = [(FAFamilyCircle *)self->_familyCircle members];
    v8 = [members countByEnumeratingWithState:&v25 objects:v31 count:16];
    if (v8)
    {
      v9 = *v26;
      do
      {
        v10 = 0;
        do
        {
          if (*v26 != v9)
          {
            objc_enumerationMutation(members);
          }

          v11 = *(*(&v25 + 1) + 8 * v10);
          dispatch_group_enter(v6);
          v12 = objc_alloc(MEMORY[0x277D08290]);
          dsid = [v11 dsid];
          v14 = [v12 initWithFamilyMemberDSID:dsid size:1 localFallback:1];

          [v14 setUseMonogramAsLastResort:0];
          +[FAProfilePictureStore screenScale];
          [v14 setMonogramDiameter:v15 * 80.0];
          v22[0] = MEMORY[0x277D85DD0];
          v22[1] = 3221225472;
          v22[2] = __60__FAProfilePictureStore__fetchProfileImages_withCompletion___block_invoke;
          v22[3] = &unk_2782F4050;
          v22[4] = self;
          v22[5] = v11;
          v24 = v29;
          v23 = v6;
          [v14 startRequestWithCompletionHandler:v22];

          ++v10;
        }

        while (v8 != v10);
        v8 = [members countByEnumeratingWithState:&v25 objects:v31 count:16];
      }

      while (v8);
    }

    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __60__FAProfilePictureStore__fetchProfileImages_withCompletion___block_invoke_48;
    block[3] = &unk_2782F4078;
    block[4] = self;
    v20 = completionCopy;
    v21 = v29;
    dispatch_group_notify(v6, MEMORY[0x277D85CD0], block);

    _Block_object_dispose(v29, 8);
  }

  else
  {
    (*(completionCopy + 2))(completionCopy, profileImages, 0);
  }

  v16 = *MEMORY[0x277D85DE8];
}

void __60__FAProfilePictureStore__fetchProfileImages_withCompletion___block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a2;
  v7 = a4;
  v8 = *(*(a1 + 32) + 16);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __60__FAProfilePictureStore__fetchProfileImages_withCompletion___block_invoke_2;
  block[3] = &unk_2782F4028;
  v13 = v6;
  v14 = *(a1 + 32);
  v9 = *(a1 + 56);
  v15 = v7;
  v16 = v9;
  v10 = v7;
  v11 = v6;
  dispatch_sync(v8, block);
  dispatch_group_leave(*(a1 + 48));
}

void __60__FAProfilePictureStore__fetchProfileImages_withCompletion___block_invoke_2(void *a1)
{
  if (a1[4])
  {
    v2 = a1[6];
    v3 = *(a1[5] + 24);

    [v3 setObject:? forKeyedSubscript:?];
  }

  else
  {
    v4 = *(a1[8] + 8);
    v7 = *(v4 + 40);
    v5 = (v4 + 40);
    v6 = v7;
    if (!v7)
    {
      v6 = a1[7];
    }

    objc_storeStrong(v5, v6);
    v8 = _FALogSystem();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __60__FAProfilePictureStore__fetchProfileImages_withCompletion___block_invoke_2_cold_1(a1, v8);
    }
  }
}

void __60__FAProfilePictureStore__fetchProfileImages_withCompletion___block_invoke_48(uint64_t a1)
{
  v2 = [MEMORY[0x277CCAB98] defaultCenter];
  [v2 postNotificationName:FAProfilePictureStoreDidReloadImagesNotification object:*(a1 + 32)];

  v3 = *(a1 + 40);
  v4 = [*(a1 + 32) profileImages];
  (*(v3 + 16))(v3, v4, *(*(*(a1 + 48) + 8) + 40));
}

- (id)profilePicturesWithDiameter:(double)diameter
{
  v43 = *MEMORY[0x277D85DE8];
  v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v6 = dispatch_group_create();
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  members = [(FAFamilyCircle *)self->_familyCircle members];
  v8 = [members countByEnumeratingWithState:&v37 objects:v42 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v38;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v38 != v10)
        {
          objc_enumerationMutation(members);
        }

        v12 = *(*(&v37 + 1) + 8 * i);
        data = [MEMORY[0x277CBEA90] data];
        [v5 setObject:data forKeyedSubscript:v12];

        dispatch_group_enter(v6);
      }

      v9 = [members countByEnumeratingWithState:&v37 objects:v42 count:16];
    }

    while (v9);
  }

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  obj = [(FAFamilyCircle *)self->_familyCircle members];
  v14 = [obj countByEnumeratingWithState:&v33 objects:v41 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v34;
    do
    {
      for (j = 0; j != v15; ++j)
      {
        if (*v34 != v16)
        {
          objc_enumerationMutation(obj);
        }

        v18 = *(*(&v33 + 1) + 8 * j);
        v19 = [(FAProfilePictureStore *)self profilePictureForFamilyMember:v18];
        v20 = dispatch_get_global_queue(33, 0);
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __53__FAProfilePictureStore_profilePicturesWithDiameter___block_invoke;
        block[3] = &unk_2782F40A0;
        v27 = v5;
        v28 = v18;
        selfCopy = self;
        v30 = v19;
        diameterCopy = diameter;
        v31 = v6;
        v21 = v19;
        dispatch_async(v20, block);
      }

      v15 = [obj countByEnumeratingWithState:&v33 objects:v41 count:16];
    }

    while (v15);
  }

  dispatch_group_wait(v6, 0xFFFFFFFFFFFFFFFFLL);
  v22 = [v5 copy];

  v23 = *MEMORY[0x277D85DE8];

  return v22;
}

void __53__FAProfilePictureStore_profilePicturesWithDiameter___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 48) resizedPictureWithData:*(a1 + 56) diameter:*(a1 + 72)];
  [*(a1 + 32) setObject:v2 forKeyedSubscript:*(a1 + 40)];

  v3 = *(a1 + 64);

  dispatch_group_leave(v3);
}

- (id)profilePictureForFamilyMemberWithAltDSID:(id)d pictureDiameter:(double)diameter
{
  v23 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  members = [(FAFamilyCircle *)self->_familyCircle members];
  v8 = [members countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v19;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v19 != v10)
        {
          objc_enumerationMutation(members);
        }

        v12 = *(*(&v18 + 1) + 8 * i);
        altDSID = [v12 altDSID];
        v14 = [altDSID isEqualToString:dCopy];

        if (v14)
        {
          v15 = [(FAProfilePictureStore *)self profilePictureForFamilyMember:v12 pictureDiameter:diameter];
          goto LABEL_11;
        }
      }

      v9 = [members countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  v15 = 0;
LABEL_11:

  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

- (id)profilePictureForFamilyMember:(id)member pictureDiameter:(double)diameter
{
  v6 = [(FAProfilePictureStore *)self profilePictureForFamilyMember:member];
  v7 = [(FAProfilePictureStore *)self resizedPictureWithData:v6 diameter:diameter];

  return v7;
}

- (void)fetchProfilePicturesForRecommendedFamilyMembers:(id)members
{
  v27 = *MEMORY[0x277D85DE8];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  obj = members;
  v4 = [obj countByEnumeratingWithState:&v20 objects:v26 count:16];
  if (v4)
  {
    v6 = v4;
    v7 = *v21;
    *&v5 = 138412290;
    v18 = v5;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v21 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v20 + 1) + 8 * i);
        v10 = [(FAProfilePictureStore *)self contactFor:v9, v18];
        identifier = [v10 identifier];

        if (identifier)
        {
          givenName = [v10 givenName];
          familyName = [v10 familyName];
          v14 = [FAProfilePictureStore profilePictureForContact:v10 serverImageData:0 firstName:givenName lastName:familyName diameter:40.0];
          recommendedMembersImages = self->_recommendedMembersImages;
          identifier2 = [v10 identifier];
          [(NSMutableDictionary *)recommendedMembersImages setObject:v14 forKeyedSubscript:identifier2];
        }

        else
        {
          givenName = _FALogSystem();
          if (os_log_type_enabled(givenName, OS_LOG_TYPE_ERROR))
          {
            *buf = v18;
            v25 = v9;
            _os_log_error_impl(&dword_21BB35000, givenName, OS_LOG_TYPE_ERROR, "contact.identifier was nil. Skipping fetching profile image for recommended family member: %@", buf, 0xCu);
          }
        }
      }

      v6 = [obj countByEnumeratingWithState:&v20 objects:v26 count:16];
    }

    while (v6);
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (id)profilePictureForRecommendedFamilyMember:(id)member
{
  v16[1] = *MEMORY[0x277D85DE8];
  memberCopy = member;
  recommendedMembersImages = self->_recommendedMembersImages;
  contact = [memberCopy contact];
  identifier = [contact identifier];
  v8 = [(NSMutableDictionary *)recommendedMembersImages objectForKeyedSubscript:identifier];

  if (!v8)
  {
    v16[0] = memberCopy;
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:1];
    [(FAProfilePictureStore *)self fetchProfilePicturesForRecommendedFamilyMembers:v9];
  }

  v10 = self->_recommendedMembersImages;
  contact2 = [memberCopy contact];
  identifier2 = [contact2 identifier];
  v13 = [(NSMutableDictionary *)v10 objectForKeyedSubscript:identifier2];

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

- (id)contactFor:(id)for
{
  forCopy = for;
  contactStore = [(FAProfilePictureStore *)self contactStore];
  contact = [forCopy contact];

  identifier = [contact identifier];
  v8 = [contactStore unifiedContactWithIdentifier:identifier keysToFetch:self->_keysToFetch error:0];

  return v8;
}

- (id)resizedPictureWithData:(id)data diameter:(double)diameter
{
  dataCopy = data;
  +[FAProfilePictureStore screenScale];
  diameter = [dataCopy _faCircularImageDataWithDiameter:v6 * diameter];

  return diameter;
}

- (void)notifyObservable
{
  selfCopy = self;
  FAProfilePictureStore.notifyObservable()();
}

void __60__FAProfilePictureStore__fetchProfileImages_withCompletion___block_invoke_2_cold_1(uint64_t a1, NSObject *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 48);
  v3 = *(a1 + 56);
  v5 = 138412546;
  v6 = v2;
  v7 = 2112;
  v8 = v3;
  _os_log_error_impl(&dword_21BB35000, a2, OS_LOG_TYPE_ERROR, "Unable to get image data for member: %@ error: %@", &v5, 0x16u);
  v4 = *MEMORY[0x277D85DE8];
}

@end