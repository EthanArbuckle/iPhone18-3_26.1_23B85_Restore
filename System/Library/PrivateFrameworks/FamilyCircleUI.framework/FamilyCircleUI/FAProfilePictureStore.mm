@interface FAProfilePictureStore
+ (double)screenScale;
+ (id)profilePictureForContact:(id)a3 serverImageData:(id)a4 firstName:(id)a5 lastName:(id)a6 diameter:(double)a7;
- (CNContactStore)contactStore;
- (FAProfilePictureStore)initWithFamilyCircle:(id)a3;
- (NSDictionary)profileImages;
- (id)contactFor:(id)a3;
- (id)profilePictureForFamilyMember:(id)a3;
- (id)profilePictureForFamilyMember:(id)a3 pictureDiameter:(double)a4;
- (id)profilePictureForFamilyMemberWithAltDSID:(id)a3 pictureDiameter:(double)a4;
- (id)profilePictureForRecommendedFamilyMember:(id)a3;
- (id)profilePicturesWithDiameter:(double)a3;
- (id)resizedPictureWithData:(id)a3 diameter:(double)a4;
- (void)_fetchProfileImages:(BOOL)a3 withCompletion:(id)a4;
- (void)dealloc;
- (void)fetchProfilePicturesForRecommendedFamilyMembers:(id)a3;
- (void)notifyObservable;
- (void)setFamilyCircle:(id)a3;
@end

@implementation FAProfilePictureStore

- (FAProfilePictureStore)initWithFamilyCircle:(id)a3
{
  v34[19] = *MEMORY[0x277D85DE8];
  v5 = a3;
  v33.receiver = self;
  v33.super_class = FAProfilePictureStore;
  v6 = [(FAProfilePictureStore *)&v33 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_familyCircle, a3);
    v8 = dispatch_queue_create("AAUIProfilePictureStorefetchProfileImagesForFamilyCircle", 0);
    serialQueue = v7->_serialQueue;
    v7->_serialQueue = v8;

    v10 = [MEMORY[0x277CBEB38] dictionary];
    profileImages = v7->_profileImages;
    v7->_profileImages = v10;

    v12 = [MEMORY[0x277CBEB38] dictionary];
    recommendedMembersImages = v7->_recommendedMembersImages;
    v7->_recommendedMembersImages = v12;

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

    v29 = [MEMORY[0x277CCAB98] defaultCenter];
    [v29 addObserver:v7 selector:sel__traitCollectionDidChange_ name:*MEMORY[0x277D77548] object:0];
  }

  v30 = [MEMORY[0x277CCAB98] defaultCenter];
  [v30 addObserver:v7 selector:sel__contactsDidChange name:*MEMORY[0x277CBD140] object:0];

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

- (void)setFamilyCircle:(id)a3
{
  objc_storeStrong(&self->_familyCircle, a3);
  v5 = a3;
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

- (id)profilePictureForFamilyMember:(id)a3
{
  v4 = a3;
  v5 = [v4 contact];
  v6 = [(FAProfilePictureStore *)self profileImages];
  v7 = [v6 objectForKeyedSubscript:v4];
  v8 = [v4 firstName];
  v9 = [v4 lastName];

  v10 = [FAProfilePictureStore profilePictureForContact:v5 serverImageData:v7 firstName:v8 lastName:v9 diameter:80.0];

  return v10;
}

+ (id)profilePictureForContact:(id)a3 serverImageData:(id)a4 firstName:(id)a5 lastName:(id)a6 diameter:(double)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = objc_autoreleasePoolPush();
  v17 = [v12 thumbnailImageData];

  if (v17)
  {
    v18 = [v12 thumbnailImageData];
    [a1 screenScale];
    v20 = [v18 _faCircularImageDataWithDiameter:v19 * a7];
  }

  else
  {
    [a1 screenScale];
    v18 = [v13 _faCircularImageDataWithDiameter:v21 * a7 cropRect:{*MEMORY[0x277CBF398], *(MEMORY[0x277CBF398] + 8), *(MEMORY[0x277CBF398] + 16), *(MEMORY[0x277CBF398] + 24)}];
    if ([v18 length])
    {
      v20 = v18;
      v18 = v20;
    }

    else
    {
      v22 = [v12 givenName];
      if ([v22 length])
      {
      }

      else
      {
        v23 = [v12 familyName];
        v24 = [v23 length];

        if (!v24)
        {
          if ([v14 length] || objc_msgSend(v15, "length"))
          {
            v29 = MEMORY[0x277D082C8];
            [a1 screenScale];
            v20 = [v29 monogramWithFirstName:v14 lastName:v15 diameter:a7 scale:v30];
          }

          else
          {
            v31 = MEMORY[0x277D082C8];
            [a1 screenScale];
            v20 = [v31 silhouetteMonogramWithDiameter:a7 scale:v32];
          }

          goto LABEL_9;
        }
      }

      v25 = MEMORY[0x277D082C8];
      [a1 screenScale];
      v20 = [v25 monogramForContact:v12 diameter:a7 scale:v26];
    }
  }

LABEL_9:
  v27 = v20;

  objc_autoreleasePoolPop(v16);

  return v27;
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = FAProfilePictureStore;
  [(FAProfilePictureStore *)&v4 dealloc];
}

+ (double)screenScale
{
  v2 = [MEMORY[0x277D759A0] mainScreen];
  [v2 scale];
  v4 = v3;

  return v4;
}

- (void)_fetchProfileImages:(BOOL)a3 withCompletion:(id)a4
{
  v32 = *MEMORY[0x277D85DE8];
  v18 = a4;
  v17 = [(FAProfilePictureStore *)self profileImages];
  if (a3 || ![v17 count])
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
    v7 = [(FAFamilyCircle *)self->_familyCircle members];
    v8 = [v7 countByEnumeratingWithState:&v25 objects:v31 count:16];
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
            objc_enumerationMutation(v7);
          }

          v11 = *(*(&v25 + 1) + 8 * v10);
          dispatch_group_enter(v6);
          v12 = objc_alloc(MEMORY[0x277D08290]);
          v13 = [v11 dsid];
          v14 = [v12 initWithFamilyMemberDSID:v13 size:1 localFallback:1];

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
        v8 = [v7 countByEnumeratingWithState:&v25 objects:v31 count:16];
      }

      while (v8);
    }

    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __60__FAProfilePictureStore__fetchProfileImages_withCompletion___block_invoke_48;
    block[3] = &unk_2782F4078;
    block[4] = self;
    v20 = v18;
    v21 = v29;
    dispatch_group_notify(v6, MEMORY[0x277D85CD0], block);

    _Block_object_dispose(v29, 8);
  }

  else
  {
    (*(v18 + 2))(v18, v17, 0);
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

- (id)profilePicturesWithDiameter:(double)a3
{
  v43 = *MEMORY[0x277D85DE8];
  v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v6 = dispatch_group_create();
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v7 = [(FAFamilyCircle *)self->_familyCircle members];
  v8 = [v7 countByEnumeratingWithState:&v37 objects:v42 count:16];
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
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v37 + 1) + 8 * i);
        v13 = [MEMORY[0x277CBEA90] data];
        [v5 setObject:v13 forKeyedSubscript:v12];

        dispatch_group_enter(v6);
      }

      v9 = [v7 countByEnumeratingWithState:&v37 objects:v42 count:16];
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
        v29 = self;
        v30 = v19;
        v32 = a3;
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

- (id)profilePictureForFamilyMemberWithAltDSID:(id)a3 pictureDiameter:(double)a4
{
  v23 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v7 = [(FAFamilyCircle *)self->_familyCircle members];
  v8 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
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
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v18 + 1) + 8 * i);
        v13 = [v12 altDSID];
        v14 = [v13 isEqualToString:v6];

        if (v14)
        {
          v15 = [(FAProfilePictureStore *)self profilePictureForFamilyMember:v12 pictureDiameter:a4];
          goto LABEL_11;
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
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

- (id)profilePictureForFamilyMember:(id)a3 pictureDiameter:(double)a4
{
  v6 = [(FAProfilePictureStore *)self profilePictureForFamilyMember:a3];
  v7 = [(FAProfilePictureStore *)self resizedPictureWithData:v6 diameter:a4];

  return v7;
}

- (void)fetchProfilePicturesForRecommendedFamilyMembers:(id)a3
{
  v27 = *MEMORY[0x277D85DE8];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  obj = a3;
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
        v11 = [v10 identifier];

        if (v11)
        {
          v12 = [v10 givenName];
          v13 = [v10 familyName];
          v14 = [FAProfilePictureStore profilePictureForContact:v10 serverImageData:0 firstName:v12 lastName:v13 diameter:40.0];
          recommendedMembersImages = self->_recommendedMembersImages;
          v16 = [v10 identifier];
          [(NSMutableDictionary *)recommendedMembersImages setObject:v14 forKeyedSubscript:v16];
        }

        else
        {
          v12 = _FALogSystem();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
          {
            *buf = v18;
            v25 = v9;
            _os_log_error_impl(&dword_21BB35000, v12, OS_LOG_TYPE_ERROR, "contact.identifier was nil. Skipping fetching profile image for recommended family member: %@", buf, 0xCu);
          }
        }
      }

      v6 = [obj countByEnumeratingWithState:&v20 objects:v26 count:16];
    }

    while (v6);
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (id)profilePictureForRecommendedFamilyMember:(id)a3
{
  v16[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  recommendedMembersImages = self->_recommendedMembersImages;
  v6 = [v4 contact];
  v7 = [v6 identifier];
  v8 = [(NSMutableDictionary *)recommendedMembersImages objectForKeyedSubscript:v7];

  if (!v8)
  {
    v16[0] = v4;
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:1];
    [(FAProfilePictureStore *)self fetchProfilePicturesForRecommendedFamilyMembers:v9];
  }

  v10 = self->_recommendedMembersImages;
  v11 = [v4 contact];
  v12 = [v11 identifier];
  v13 = [(NSMutableDictionary *)v10 objectForKeyedSubscript:v12];

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

- (id)contactFor:(id)a3
{
  v4 = a3;
  v5 = [(FAProfilePictureStore *)self contactStore];
  v6 = [v4 contact];

  v7 = [v6 identifier];
  v8 = [v5 unifiedContactWithIdentifier:v7 keysToFetch:self->_keysToFetch error:0];

  return v8;
}

- (id)resizedPictureWithData:(id)a3 diameter:(double)a4
{
  v5 = a3;
  +[FAProfilePictureStore screenScale];
  v7 = [v5 _faCircularImageDataWithDiameter:v6 * a4];

  return v7;
}

- (void)notifyObservable
{
  v2 = self;
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