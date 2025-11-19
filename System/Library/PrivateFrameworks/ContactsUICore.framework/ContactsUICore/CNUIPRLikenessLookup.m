@interface CNUIPRLikenessLookup
+ (BOOL)useGivenAvatarForContact:(id)a3;
+ (id)basicMonogramForContactFuture:(id)a3 monogramColor:(id)a4;
+ (id)basicMonogramFromString:(id)a3 color:(id)a4;
+ (id)basicMonogramObservableForContactFuture:(id)a3 monogramColor:(id)a4;
+ (id)basicMonogramObservableFromString:(id)a3 color:(id)a4;
+ (id)contactFuture:(id)a3 contactStore:(id)a4 personaId:(id)a5 scheduler:(id)a6 refetchContact:(BOOL)a7;
+ (id)contactFuture:(id)a3 contactStore:(id)a4 refetchContact:(BOOL)a5;
+ (id)descriptorForRequiredKeys;
+ (id)observableFromLikenessProviderBlock:(id)a3 withScheduler:(id)a4;
+ (id)photoObservableWithPhotoFuture:(id)a3 likenessFingerprint:(id)a4 scheduler:(id)a5;
+ (id)photoWithPhotoFuture:(id)a3 likenessFingerprint:(id)a4;
- (BOOL)isMeContact:(id)a3;
- (BOOL)shouldFetchSharedPhotoForContact:(id)a3;
- (CNUIPRLikenessLookup)initWithContactStore:(id)a3 scheduler:(id)a4 meMonitor:(id)a5;
- (CNUIPRLikenessLookup)initWithContactStore:(id)a3 schedulerProvider:(id)a4 meMonitor:(id)a5 personaId:(id)a6;
- (CNUIPRLikenessProvider)loadingPlaceholderLikeness;
- (id)badgeObservableWithLikenessBadge:(id)a3 workScheduler:(id)a4;
- (id)badgeWithLikenessBadge:(id)a3;
- (id)basicMonogramFromString:(id)a3 color:(id)a4;
- (id)basicMonogramObservableFromString:(id)a3 color:(id)a4;
- (id)basicMonogramObservableWithContactFuture:(id)a3 monogramColor:(id)a4;
- (id)basicMonogramWithContactFuture:(id)a3 monogramColor:(id)a4;
- (id)blessedPhotoObservableWithFuture:(id)a3 contact:(id)a4 workScheduler:(id)a5;
- (id)blessedPhotoWithFuture:(id)a3 contact:(id)a4;
- (id)contentObservableForContact:(id)a3 placeholderProviderFactory:(id)a4 options:(id)a5 workScheduler:(id)a6;
- (id)futureResultForPhotoImageDataForContact:(id)a3 error:(id *)a4;
- (id)futureResultForPhotoImageDataForMeContact:(id)a3 error:(id *)a4;
- (id)likenessForContact:(id)a3 options:(id)a4 error:(id *)a5;
- (id)likenessForContact:(id)a3 placeholderProviderFactory:(id)a4 options:(id)a5;
- (id)likenessObservableForContact:(id)a3 placeholderProviderFactory:(id)a4 options:(id)a5 workScheduler:(id)a6;
- (id)likenessesForContact:(id)a3 options:(id)a4 workScheduler:(id)a5;
- (id)likenessesForContacts:(id)a3 options:(id)a4 error:(id)a5;
- (id)loadingPlaceholderObservableWithPlaceholderProviderFactory:(id)a3;
- (id)photoFutureForContactFuture:(id)a3 scheduler:(id)a4;
- (id)photoImageDataForContact:(id)a3 error:(id *)a4;
- (id)remoteImageWithContactFuture:(id)a3;
- (id)remoteImagesObservableWithContactFuture:(id)a3 workScheduler:(id)a4;
- (id)resolveLikenessesForContacts:(id)a3 workScheduler:(id)a4 withContentHandler:(id)a5;
- (id)silhouetteObservableWithPlaceholderProviderFactory:(id)a3 contact:(id)a4 workScheduler:(id)a5;
- (id)silhouetteWithPlaceholderProviderFactory:(id)a3 contact:(id)a4;
@end

@implementation CNUIPRLikenessLookup

+ (id)descriptorForRequiredKeys
{
  v12[8] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E695CD58];
  v3 = *MEMORY[0x1E695C388];
  v12[0] = *MEMORY[0x1E695C400];
  v12[1] = v3;
  v4 = *MEMORY[0x1E695C208];
  v12[2] = *MEMORY[0x1E695C368];
  v12[3] = v4;
  v5 = *MEMORY[0x1E695C410];
  v12[4] = *MEMORY[0x1E695C330];
  v12[5] = v5;
  v6 = [MEMORY[0x1E695CD80] descriptorForRequiredKeysForStyle:1002];
  v7 = *MEMORY[0x1E695C1D0];
  v12[6] = v6;
  v12[7] = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:8];
  v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"+[CNUIPRLikenessLookup descriptorForRequiredKeys]"];
  v10 = [v2 descriptorWithKeyDescriptors:v8 description:v9];

  return v10;
}

- (CNUIPRLikenessLookup)initWithContactStore:(id)a3 schedulerProvider:(id)a4 meMonitor:(id)a5 personaId:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v21.receiver = self;
  v21.super_class = CNUIPRLikenessLookup;
  v15 = [(CNUIPRLikenessLookup *)&v21 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_contactStore, a3);
    v17 = objc_alloc_init(CNUIPlaceholderProviderFactory);
    placeholderProviderFactory = v16->_placeholderProviderFactory;
    v16->_placeholderProviderFactory = v17;

    objc_storeStrong(&v16->_schedulerProvider, a4);
    objc_storeStrong(&v16->_meMonitor, a5);
    objc_storeStrong(&v16->_personaId, a6);
    v19 = v16;
  }

  return v16;
}

- (CNUIPRLikenessLookup)initWithContactStore:(id)a3 scheduler:(id)a4 meMonitor:(id)a5
{
  v7 = MEMORY[0x1E6996820];
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [v7 defaultProvider];
  v12 = objc_alloc(MEMORY[0x1E6996820]);
  v13 = [v11 mainThreadScheduler];
  v14 = [v11 immediateScheduler];
  v15 = [v11 valueForKey:@"serialSchedulerProvider"];
  v16 = [v11 valueForKey:@"synchronousSerialSchedulerProvider"];
  v17 = [v11 valueForKey:@"readerWriterSchedulerProvider"];
  v18 = [v12 initWithBackgroundScheduler:v9 mainThreadScheduler:v13 immediateScheduler:v14 serialSchedulerProvider:v15 synchronousSerialSchedulerProvider:v16 readerWriterSchedulerProvider:v17];

  v19 = [(CNUIPRLikenessLookup *)self initWithContactStore:v10 schedulerProvider:v18 meMonitor:v8 personaId:&stru_1F162C170];
  return v19;
}

- (id)likenessesForContacts:(id)a3 options:(id)a4 error:(id)a5
{
  v7 = a4;
  v8 = a3;
  v9 = [(CNUIPRLikenessLookup *)self placeholderProviderFactory];
  v10 = [v8 _cn_take:{+[CNUIPRLikenessResolver maxContacts](CNUIPRLikenessResolver, "maxContacts")}];

  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __60__CNUIPRLikenessLookup_likenessesForContacts_options_error___block_invoke;
  v15[3] = &unk_1E76E7BD8;
  v15[4] = self;
  v16 = v9;
  v17 = v7;
  v11 = v7;
  v12 = v9;
  v13 = [v10 _cn_map:v15];

  return v13;
}

- (id)resolveLikenessesForContacts:(id)a3 workScheduler:(id)a4 withContentHandler:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = a3;
  v11 = [v10 _cn_take:{+[CNUIPRLikenessResolver maxContacts](CNUIPRLikenessResolver, "maxContacts")}];

  v20 = MEMORY[0x1E69E9820];
  v21 = 3221225472;
  v22 = __86__CNUIPRLikenessLookup_resolveLikenessesForContacts_workScheduler_withContentHandler___block_invoke;
  v23 = &unk_1E76E89F8;
  v24 = self;
  v25 = v8;
  v12 = v8;
  v13 = [v11 _cn_map:&v20];

  v14 = MEMORY[0x1E6996798];
  v15 = [(CNUIPRLikenessLookup *)self schedulerProvider:v20];
  v16 = [v14 combineLatest:v13 resultScheduler:v12 schedulerProvider:v15];
  v17 = [MEMORY[0x1E69967A0] observerWithResultBlock:v9];

  v18 = [v16 subscribe:v17];

  return v18;
}

- (id)likenessForContact:(id)a3 options:(id)a4 error:(id *)a5
{
  v7 = a4;
  v8 = a3;
  v9 = [(CNUIPRLikenessLookup *)self placeholderProviderFactory];
  v10 = [(CNUIPRLikenessLookup *)self likenessForContact:v8 placeholderProviderFactory:v9 options:v7];

  return v10;
}

- (id)likenessesForContact:(id)a3 options:(id)a4 workScheduler:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = a4;
  v11 = [(CNUIPRLikenessLookup *)self placeholderProviderFactory];
  v12 = [(CNUIPRLikenessLookup *)self likenessObservableForContact:v8 placeholderProviderFactory:v11 options:v10 workScheduler:v9];

  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __67__CNUIPRLikenessLookup_likenessesForContact_options_workScheduler___block_invoke;
  v16[3] = &unk_1E76E9768;
  v17 = v8;
  v13 = v8;
  v14 = [v12 doOnNext:v16];

  return v14;
}

void __67__CNUIPRLikenessLookup_likenessesForContact_options_workScheduler___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = +[CNUICoreLogProvider likenesses_os_log];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    __67__CNUIPRLikenessLookup_likenessesForContact_options_workScheduler___block_invoke_cold_1();
  }
}

- (id)likenessForContact:(id)a3 placeholderProviderFactory:(id)a4 options:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = objc_opt_class();
  v12 = [(CNUIPRLikenessLookup *)self contactStore];
  v13 = [v11 contactFuture:v8 contactStore:v12 refetchContact:{-[CNUIPRLikenessLookup skipContactLookup](self, "skipContactLookup") ^ 1}];

  v14 = [MEMORY[0x1E69966E8] currentEnvironment];
  v15 = [v14 featureFlags];
  v16 = [v15 isFeatureEnabled:6];

  if (v16)
  {
    v29 = 0;
    v17 = [v13 result:&v29];
    v18 = v29;
    v19 = v17;
    if (!v17)
    {
      v20 = +[CNUICoreLogProvider likenesses_os_log];
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        [CNUIPRLikenessLookup likenessForContact:placeholderProviderFactory:options:];
      }

      v19 = v8;
    }

    v21 = [[CNUIPRLikenessSwiftUIAvatarProvider alloc] initWithCNContact:v19];
  }

  else
  {
    v22 = [MEMORY[0x1E6996818] immediateScheduler];
    v18 = [(CNUIPRLikenessLookup *)self photoFutureForContactFuture:v13 scheduler:v22];

    v17 = [(CNUIPRLikenessLookup *)self photoFutureForContactFuture:v13 photoFuture:v18 allowingFallbackForMeCard:0];
    v23 = [(CNUIPRLikenessLookup *)self blessedPhotoWithFuture:v17 contact:v8];
    if (v23)
    {
      v24 = v23;
      v25 = +[CNUICoreLogProvider likenesses_os_log];
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
      {
        [CNUIPRLikenessLookup likenessForContact:placeholderProviderFactory:options:];
      }
    }

    else
    {
      v26 = [(CNUIPRLikenessLookup *)self remoteImageWithContactFuture:v13];
      if (v26)
      {
        v24 = v26;
        v25 = +[CNUICoreLogProvider likenesses_os_log];
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
        {
          [CNUIPRLikenessLookup likenessForContact:placeholderProviderFactory:options:];
        }
      }

      else
      {
        v27 = [v10 monogramColor];
        v24 = [(CNUIPRLikenessLookup *)self basicMonogramWithContactFuture:v13 monogramColor:v27];

        if (v24)
        {
          v25 = +[CNUICoreLogProvider likenesses_os_log];
          if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
          {
            [CNUIPRLikenessLookup likenessForContact:placeholderProviderFactory:options:];
          }
        }

        else
        {
          v24 = [(CNUIPRLikenessLookup *)self silhouetteWithPlaceholderProviderFactory:v9 contact:v8];
          v25 = +[CNUICoreLogProvider likenesses_os_log];
          if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
          {
            [CNUIPRLikenessLookup likenessForContact:placeholderProviderFactory:options:];
          }
        }
      }
    }

    v21 = v24;
  }

  return v21;
}

- (id)likenessObservableForContact:(id)a3 placeholderProviderFactory:(id)a4 options:(id)a5 workScheduler:(id)a6
{
  v10 = a4;
  v11 = MEMORY[0x1E695DF70];
  v12 = a6;
  v13 = a5;
  v14 = a3;
  v15 = [v11 array];
  v16 = [(CNUIPRLikenessLookup *)self contentObservableForContact:v14 placeholderProviderFactory:v10 options:v13 workScheduler:v12];

  if ([(CNUIPRLikenessLookup *)self mayIncludeSource:8])
  {
    v17 = [(CNUIPRLikenessLookup *)self loadingPlaceholderObservableWithPlaceholderProviderFactory:v10];
    [v15 _cn_addNonNilObject:v17];

    v18 = [(CNUIPRLikenessLookup *)self schedulerProvider];
    v19 = [v18 mainThreadScheduler];
    v20 = [v16 observeOn:v19];

    v16 = v20;
  }

  [v15 addObject:v16];
  v21 = [MEMORY[0x1E6996798] concatenate:v15];

  return v21;
}

- (id)contentObservableForContact:(id)a3 placeholderProviderFactory:(id)a4 options:(id)a5 workScheduler:(id)a6
{
  v47 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [MEMORY[0x1E69966E8] currentEnvironment];
  v15 = [v14 featureFlags];
  v16 = [v15 isFeatureEnabled:6];

  if (v16)
  {
    v17 = MEMORY[0x1E6996798];
    v18 = [[CNUIPRLikenessSwiftUIAvatarProvider alloc] initWithCNContact:v10];
    v19 = [v17 observableWithResult:v18];
  }

  else
  {
    v20 = objc_opt_class();
    v21 = [(CNUIPRLikenessLookup *)self contactStore];
    v22 = [(CNUIPRLikenessLookup *)self personaId];
    v23 = [v20 contactFuture:v10 contactStore:v21 personaId:v22 scheduler:v13 refetchContact:{-[CNUIPRLikenessLookup skipContactLookup](self, "skipContactLookup") ^ 1}];

    v39 = [(CNUIPRLikenessLookup *)self photoFutureForContactFuture:v23 scheduler:v13];
    v24 = [CNUIPRLikenessLookup photoFutureForContactFuture:"photoFutureForContactFuture:photoFuture:allowingFallbackForMeCard:" photoFuture:v23 allowingFallbackForMeCard:?];
    v25 = [MEMORY[0x1E695DF70] array];
    v38 = v24;
    v26 = [(CNUIPRLikenessLookup *)self blessedPhotoObservableWithFuture:v24 contact:v10 workScheduler:v13];
    [v25 _cn_addNonNilObject:v26];

    v27 = [(CNUIPRLikenessLookup *)self remoteImagesObservableWithContactFuture:v23 workScheduler:v13];
    [v25 _cn_addNonNilObject:v27];

    v40 = v12;
    v28 = [v12 monogramColor];
    v29 = [(CNUIPRLikenessLookup *)self basicMonogramObservableWithContactFuture:v23 monogramColor:v28];
    [v25 _cn_addNonNilObject:v29];

    v41 = v11;
    v30 = [(CNUIPRLikenessLookup *)self silhouetteObservableWithPlaceholderProviderFactory:v11 contact:v10 workScheduler:v13];
    [v25 _cn_addNonNilObject:v30];

    v19 = [v25 firstObject];
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    v31 = [v25 _cn_tail];
    v32 = [v31 countByEnumeratingWithState:&v42 objects:v46 count:16];
    if (v32)
    {
      v33 = v32;
      v34 = *v43;
      do
      {
        v35 = 0;
        v36 = v19;
        do
        {
          if (*v43 != v34)
          {
            objc_enumerationMutation(v31);
          }

          v19 = [v36 onEmpty:*(*(&v42 + 1) + 8 * v35)];

          ++v35;
          v36 = v19;
        }

        while (v33 != v35);
        v33 = [v31 countByEnumeratingWithState:&v42 objects:v46 count:16];
      }

      while (v33);
    }

    v12 = v40;
    v11 = v41;
  }

  return v19;
}

- (CNUIPRLikenessProvider)loadingPlaceholderLikeness
{
  v3 = [(CNUIPRLikenessLookup *)self placeholderProviderFactory];
  v4 = [(CNUIPRLikenessLookup *)self loadingPlaceholderWithPlaceholderProviderFactory:v3];

  return v4;
}

- (id)loadingPlaceholderObservableWithPlaceholderProviderFactory:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __83__CNUIPRLikenessLookup_loadingPlaceholderObservableWithPlaceholderProviderFactory___block_invoke;
  v11[3] = &unk_1E76E9790;
  v12 = v4;
  v6 = v4;
  v7 = [(CNUIPRLikenessLookup *)self schedulerProvider];
  v8 = [v7 mainThreadScheduler];
  v9 = [v5 observableFromLikenessProviderBlock:v11 withScheduler:v8];

  return v9;
}

- (id)blessedPhotoWithFuture:(id)a3 contact:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(CNUIPRLikenessLookup *)self mayIncludeSource:1])
  {
    v8 = [CNUILikenessFingerprint fingerprintForContact:v7];
    v9 = [objc_opt_class() photoWithPhotoFuture:v6 likenessFingerprint:v8];
    v10 = +[CNUICoreLogProvider likenesses_os_log];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      [CNUIPRLikenessLookup blessedPhotoWithFuture:contact:];
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)blessedPhotoObservableWithFuture:(id)a3 contact:(id)a4 workScheduler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([(CNUIPRLikenessLookup *)self mayIncludeSource:1])
  {
    v11 = [CNUILikenessFingerprint fingerprintForContact:v9];
    v12 = [objc_opt_class() photoObservableWithPhotoFuture:v8 likenessFingerprint:v11 scheduler:v10];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __79__CNUIPRLikenessLookup_blessedPhotoObservableWithFuture_contact_workScheduler___block_invoke;
    v15[3] = &unk_1E76E9768;
    v16 = v9;
    v13 = [v12 doOnNext:v15];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

void __79__CNUIPRLikenessLookup_blessedPhotoObservableWithFuture_contact_workScheduler___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = +[CNUICoreLogProvider likenesses_os_log];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    __79__CNUIPRLikenessLookup_blessedPhotoObservableWithFuture_contact_workScheduler___block_invoke_cold_1();
  }
}

- (id)remoteImageWithContactFuture:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([(CNUIPRLikenessLookup *)self mayIncludeSource:1])
  {
    v11 = 0;
    v12 = &v11;
    v13 = 0x3032000000;
    v14 = __Block_byref_object_copy__5;
    v15 = __Block_byref_object_dispose__5;
    v16 = 0;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __53__CNUIPRLikenessLookup_remoteImageWithContactFuture___block_invoke;
    v10[3] = &unk_1E76E97B8;
    v10[4] = &v11;
    v5 = [v4 flatMap:v10];
    v6 = [objc_opt_class() photoWithPhotoFuture:v5 likenessFingerprint:v12[5]];
    v7 = +[CNUICoreLogProvider likenesses_os_log];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v8 = [v4 result:0];
      [(CNUIPRLikenessLookup *)v6 remoteImageWithContactFuture:v8, buf, v7];
    }

    _Block_object_dispose(&v11, 8);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

id __53__CNUIPRLikenessLookup_remoteImageWithContactFuture___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [CNUILikenessFingerprint fingerprintForContact:v3];
  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  v7 = [CNUIRemotePhotoFutures photoForContact:v3];

  return v7;
}

- (id)remoteImagesObservableWithContactFuture:(id)a3 workScheduler:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(CNUIPRLikenessLookup *)self mayIncludeSource:1])
  {
    v15 = 0;
    v16 = &v15;
    v17 = 0x3032000000;
    v18 = __Block_byref_object_copy__5;
    v19 = __Block_byref_object_dispose__5;
    v20 = 0;
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __78__CNUIPRLikenessLookup_remoteImagesObservableWithContactFuture_workScheduler___block_invoke;
    v14[3] = &unk_1E76E97B8;
    v14[4] = &v15;
    v8 = [v6 flatMap:v14];
    v9 = [objc_opt_class() photoObservableWithPhotoFuture:v8 likenessFingerprint:v16[5] scheduler:v7];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __78__CNUIPRLikenessLookup_remoteImagesObservableWithContactFuture_workScheduler___block_invoke_2;
    v12[3] = &unk_1E76E9768;
    v13 = v6;
    v10 = [v9 doOnNext:v12];

    _Block_object_dispose(&v15, 8);
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

id __78__CNUIPRLikenessLookup_remoteImagesObservableWithContactFuture_workScheduler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [CNUILikenessFingerprint fingerprintForContact:v3];
  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  v7 = [CNUIRemotePhotoFutures photoForContact:v3];

  return v7;
}

void __78__CNUIPRLikenessLookup_remoteImagesObservableWithContactFuture_workScheduler___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = +[CNUICoreLogProvider likenesses_os_log];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    __78__CNUIPRLikenessLookup_remoteImagesObservableWithContactFuture_workScheduler___block_invoke_2_cold_1();
  }
}

- (id)basicMonogramWithContactFuture:(id)a3 monogramColor:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(CNUIPRLikenessLookup *)self mayIncludeSource:2])
  {
    v8 = [objc_opt_class() basicMonogramForContactFuture:v6 monogramColor:v7];
    v9 = +[CNUICoreLogProvider likenesses_os_log];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      [CNUIPRLikenessLookup basicMonogramWithContactFuture:monogramColor:];
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)basicMonogramObservableWithContactFuture:(id)a3 monogramColor:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(CNUIPRLikenessLookup *)self mayIncludeSource:2])
  {
    v8 = [objc_opt_class() basicMonogramObservableForContactFuture:v6 monogramColor:v7];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __79__CNUIPRLikenessLookup_basicMonogramObservableWithContactFuture_monogramColor___block_invoke;
    v11[3] = &unk_1E76E9768;
    v12 = v6;
    v9 = [v8 doOnNext:v11];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

void __79__CNUIPRLikenessLookup_basicMonogramObservableWithContactFuture_monogramColor___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = +[CNUICoreLogProvider likenesses_os_log];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    __79__CNUIPRLikenessLookup_basicMonogramObservableWithContactFuture_monogramColor___block_invoke_cold_1();
  }
}

+ (id)basicMonogramForContactFuture:(id)a3 monogramColor:(id)a4
{
  v15[1] = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = [a3 result:0];
  if ([v7 isKeyAvailable:*MEMORY[0x1E695C410]] && !objc_msgSend(v7, "contactType") && (objc_msgSend(MEMORY[0x1E695CD80], "descriptorForRequiredKeysForStyle:", 0), v8 = objc_claimAutoreleasedReturnValue(), v15[0] = v8, objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v15, 1), v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v7, "areKeysAvailable:", v9), v9, v8, v10))
  {
    v11 = [MEMORY[0x1E695CD80] abbreviatedStringFromContact:v7 trimmingWhitespace:1];
    v12 = v11;
    if (v11 && [v11 length])
    {
      v13 = [a1 basicMonogramFromString:v12 color:v6];
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

+ (id)basicMonogramObservableForContactFuture:(id)a3 monogramColor:(id)a4
{
  v6 = MEMORY[0x1E6996798];
  v7 = a4;
  v8 = [v6 observableWithFuture:a3];
  v9 = [v8 map:&__block_literal_global_53];
  v10 = [v9 filter:*MEMORY[0x1E6996550]];

  v11 = [a1 basicMonogramObservableFromString:v10 color:v7];

  return v11;
}

id __78__CNUIPRLikenessLookup_basicMonogramObservableForContactFuture_monogramColor___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 isKeyAvailable:*MEMORY[0x1E695C410]] && !objc_msgSend(v2, "contactType"))
  {
    v5 = [MEMORY[0x1E695CD80] abbreviatedStringFromContact:v2 trimmingWhitespace:1];
    if ((*(*MEMORY[0x1E6996568] + 16))())
    {
      v6 = [MEMORY[0x1E695DFB0] null];
    }

    else
    {
      v6 = v5;
    }

    v3 = v6;
  }

  else
  {
    v3 = [MEMORY[0x1E695DFB0] null];
  }

  return v3;
}

+ (id)basicMonogramFromString:(id)a3 color:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (v5 && [v5 length])
  {
    v7 = [(objc_class *)getPRMonogramClass_0() monogram];
    [v7 setText:v5];
    v8 = [v7 text];
    if (v8)
    {
      v9 = [v7 text];
      v10 = [v9 length];

      if (v10)
      {
        if (v6)
        {
          [v7 setMonogramColor:v6];
        }

        v11 = MEMORY[0x1E69BDC38];
        v12 = [v7 dataRepresentation];
        v13 = [v11 monogramWithRecipe:v12 staticRepresentation:0];

        if (v13)
        {
          v8 = [[CNUIPRLikenessProvider alloc] initWithPRLikeness:v13];
        }

        else
        {
          v8 = 0;
        }
      }

      else
      {
        v8 = 0;
      }
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (id)basicMonogramObservableFromString:(id)a3 color:(id)a4
{
  v5 = a4;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __64__CNUIPRLikenessLookup_basicMonogramObservableFromString_color___block_invoke;
  v10[3] = &unk_1E76E9800;
  v11 = v5;
  v6 = v5;
  v7 = [a3 map:v10];
  v8 = [v7 filter:*MEMORY[0x1E6996550]];

  return v8;
}

id __64__CNUIPRLikenessLookup_basicMonogramObservableFromString_color___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *MEMORY[0x1E6996568];
  if ((*(*MEMORY[0x1E6996568] + 16))(*MEMORY[0x1E6996568], v3))
  {
    v5 = [MEMORY[0x1E695DFB0] null];
  }

  else
  {
    v6 = [(objc_class *)getPRMonogramClass_0() monogram];
    [v6 setText:v3];
    v7 = [v6 text];
    v8 = (*(v4 + 16))(v4, v7);

    if (v8)
    {
      v5 = [MEMORY[0x1E695DFB0] null];
    }

    else
    {
      if (*(a1 + 32))
      {
        [v6 setMonogramColor:?];
      }

      v9 = MEMORY[0x1E69BDC38];
      v10 = [v6 dataRepresentation];
      v11 = [v9 monogramWithRecipe:v10 staticRepresentation:0];

      if (v11)
      {
        v12 = [[CNUIPRLikenessProvider alloc] initWithPRLikeness:v11];
      }

      else
      {
        v12 = [MEMORY[0x1E695DFB0] null];
      }

      v5 = v12;
    }
  }

  return v5;
}

- (id)basicMonogramFromString:(id)a3 color:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [objc_opt_class() basicMonogramFromString:v6 color:v5];

  return v7;
}

- (id)basicMonogramObservableFromString:(id)a3 color:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [objc_opt_class() basicMonogramObservableFromString:v6 color:v5];

  return v7;
}

- (id)silhouetteWithPlaceholderProviderFactory:(id)a3 contact:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(CNUIPRLikenessLookup *)self mayIncludeSource:4])
  {
    v8 = [v6 placeholderProviderForContact:v7];
    v9 = +[CNUICoreLogProvider likenesses_os_log];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      [CNUIPRLikenessLookup silhouetteWithPlaceholderProviderFactory:contact:];
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)silhouetteObservableWithPlaceholderProviderFactory:(id)a3 contact:(id)a4 workScheduler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([(CNUIPRLikenessLookup *)self mayIncludeSource:4])
  {
    v11 = objc_opt_class();
    v15 = MEMORY[0x1E69E9820];
    v16 = 3221225472;
    v17 = __97__CNUIPRLikenessLookup_silhouetteObservableWithPlaceholderProviderFactory_contact_workScheduler___block_invoke;
    v18 = &unk_1E76E9828;
    v19 = v8;
    v20 = v9;
    v12 = [v11 observableFromLikenessProviderBlock:&v15 withScheduler:v10];
    v13 = [v12 doOnNext:{&__block_literal_global_49_0, v15, v16, v17, v18}];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

void __97__CNUIPRLikenessLookup_silhouetteObservableWithPlaceholderProviderFactory_contact_workScheduler___block_invoke_2()
{
  v0 = +[CNUICoreLogProvider likenesses_os_log];
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEBUG))
  {
    [CNUIPRLikenessLookup silhouetteWithPlaceholderProviderFactory:contact:];
  }
}

- (id)badgeWithLikenessBadge:(id)a3
{
  v3 = a3;
  v4 = [[CNUIPRLikenessBadgeImageProvider alloc] initWithBadge:v3];

  return v4;
}

- (id)badgeObservableWithLikenessBadge:(id)a3 workScheduler:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = objc_opt_class();
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __71__CNUIPRLikenessLookup_badgeObservableWithLikenessBadge_workScheduler___block_invoke;
  v12[3] = &unk_1E76E9790;
  v13 = v5;
  v8 = v5;
  v9 = [v7 observableFromLikenessProviderBlock:v12 withScheduler:v6];

  v10 = [v9 doOnNext:&__block_literal_global_52];

  return v10;
}

CNUIPRLikenessBadgeImageProvider *__71__CNUIPRLikenessLookup_badgeObservableWithLikenessBadge_workScheduler___block_invoke(uint64_t a1)
{
  v1 = [[CNUIPRLikenessBadgeImageProvider alloc] initWithBadge:*(a1 + 32)];

  return v1;
}

void __71__CNUIPRLikenessLookup_badgeObservableWithLikenessBadge_workScheduler___block_invoke_2()
{
  v0 = +[CNUICoreLogProvider likenesses_os_log];
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEBUG))
  {
    __71__CNUIPRLikenessLookup_badgeObservableWithLikenessBadge_workScheduler___block_invoke_2_cold_1();
  }
}

+ (id)observableFromLikenessProviderBlock:(id)a3 withScheduler:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = MEMORY[0x1E6996798];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __74__CNUIPRLikenessLookup_observableFromLikenessProviderBlock_withScheduler___block_invoke;
  v12[3] = &unk_1E76E9898;
  v13 = v6;
  v14 = v5;
  v8 = v5;
  v9 = v6;
  v10 = [v7 observableWithBlock:v12];

  return v10;
}

id __74__CNUIPRLikenessLookup_observableFromLikenessProviderBlock_withScheduler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __74__CNUIPRLikenessLookup_observableFromLikenessProviderBlock_withScheduler___block_invoke_2;
  v9[3] = &unk_1E76E9870;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v10 = v3;
  v11 = v5;
  v6 = v3;
  v7 = [v4 performCancelableBlock:v9];

  return v7;
}

void __74__CNUIPRLikenessLookup_observableFromLikenessProviderBlock_withScheduler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 40);
  v4 = *(v3 + 16);
  v5 = a2;
  v6 = v4(v3);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __74__CNUIPRLikenessLookup_observableFromLikenessProviderBlock_withScheduler___block_invoke_3;
  v8[3] = &unk_1E76E7F60;
  v9 = *(a1 + 32);
  v10 = v6;
  v7 = v6;
  [v5 performBlock:v8];
}

uint64_t __74__CNUIPRLikenessLookup_observableFromLikenessProviderBlock_withScheduler___block_invoke_3(uint64_t a1)
{
  [*(a1 + 32) observerDidReceiveResult:*(a1 + 40)];
  v2 = *(a1 + 32);

  return [v2 observerDidComplete];
}

+ (id)photoWithPhotoFuture:(id)a3 likenessFingerprint:(id)a4
{
  v5 = a4;
  v11 = 0;
  v6 = [a3 result:&v11];
  v7 = v11;
  if (v6)
  {
    v8 = [[CNUIPRLikenessPhotoProvider alloc] initWithPhotoData:v6 fingerprint:v5];
  }

  else
  {
    v9 = +[CNUICoreLogProvider likenesses_os_log];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      +[CNUIPRLikenessLookup photoWithPhotoFuture:likenessFingerprint:];
    }

    v8 = 0;
  }

  return v8;
}

+ (id)photoObservableWithPhotoFuture:(id)a3 likenessFingerprint:(id)a4 scheduler:(id)a5
{
  v7 = a4;
  v8 = MEMORY[0x1E6996798];
  v9 = a5;
  v10 = [v8 observableWithFuture:a3];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __85__CNUIPRLikenessLookup_photoObservableWithPhotoFuture_likenessFingerprint_scheduler___block_invoke;
  v17[3] = &unk_1E76E98C0;
  v18 = v7;
  v11 = v7;
  v12 = [v10 map:v17];
  v13 = [v12 subscribeOn:v9];

  v14 = [MEMORY[0x1E6996798] emptyObservable];
  v15 = [v13 onError:v14];

  return v15;
}

CNUIPRLikenessPhotoProvider *__85__CNUIPRLikenessLookup_photoObservableWithPhotoFuture_likenessFingerprint_scheduler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [[CNUIPRLikenessPhotoProvider alloc] initWithPhotoData:v3 fingerprint:*(a1 + 32)];

  return v4;
}

+ (BOOL)useGivenAvatarForContact:(id)a3
{
  v3 = a3;
  if ([v3 hasBeenPersisted])
  {
    v4 = 0;
  }

  else
  {
    v5 = [v3 imageData];
    v4 = v5 != 0;
  }

  return v4;
}

+ (id)contactFuture:(id)a3 contactStore:(id)a4 refetchContact:(BOOL)a5
{
  v26[1] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  if (!a5)
  {
    v10 = +[CNUICoreLogProvider likenesses_os_log];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      +[CNUIPRLikenessLookup contactFuture:contactStore:refetchContact:];
    }

    goto LABEL_7;
  }

  if ([objc_opt_class() useGivenAvatarForContact:v8])
  {
    v10 = +[CNUICoreLogProvider likenesses_os_log];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      +[CNUIPRLikenessLookup contactFuture:contactStore:refetchContact:];
    }

LABEL_7:

    v11 = [MEMORY[0x1E6996720] futureWithResult:v8];
    goto LABEL_8;
  }

  if (!v9)
  {
    v10 = +[CNUICoreLogProvider likenesses_os_log];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      +[CNUIPRLikenessLookup contactFuture:contactStore:refetchContact:];
    }

    goto LABEL_7;
  }

  if ([MEMORY[0x1E695CE18] authorizationStatusForEntityType:0] != 3)
  {
    v10 = +[CNUICoreLogProvider likenesses_os_log];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      +[CNUIPRLikenessLookup contactFuture:contactStore:refetchContact:];
    }

    goto LABEL_7;
  }

  v13 = [a1 descriptorForRequiredKeys];
  v26[0] = v13;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:1];
  v25 = 0;
  v15 = [v9 contactsMatchingPropertiesOfContact:v8 unifyResults:1 keysToFetch:v14 error:&v25];
  v16 = v25;

  if (v15)
  {
    if ([v15 count])
    {
      if ([v15 count] >= 2)
      {
        v17 = +[CNUICoreLogProvider likenesses_os_log];
        if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
        {
          *v24 = 0;
          _os_log_impl(&dword_1A31E6000, v17, OS_LOG_TYPE_INFO, "[LikenessResolver] Matched more than one contact when resolving likeness", v24, 2u);
        }
      }

      v18 = [v15 firstObject];
      v19 = +[CNUICoreLogProvider likenesses_os_log];
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
      {
        +[CNUIPRLikenessLookup contactFuture:contactStore:refetchContact:];
      }

      v20 = [MEMORY[0x1E6996720] futureWithResult:v18];
    }

    else
    {
      v22 = +[CNUICoreLogProvider likenesses_os_log];
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        +[CNUIPRLikenessLookup contactFuture:contactStore:refetchContact:];
      }

      v23 = MEMORY[0x1E6996720];
      v18 = [CNContactsUIError errorWithCode:402];
      v20 = [v23 futureWithError:v18];
    }

    v11 = v20;
  }

  else
  {
    v21 = +[CNUICoreLogProvider likenesses_os_log];
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      +[CNUIPRLikenessLookup contactFuture:contactStore:refetchContact:];
    }

    v11 = [MEMORY[0x1E6996720] futureWithError:v16];
  }

LABEL_8:

  return v11;
}

+ (id)contactFuture:(id)a3 contactStore:(id)a4 personaId:(id)a5 scheduler:(id)a6 refetchContact:(BOOL)a7
{
  v11 = a3;
  v12 = a4;
  v13 = a6;
  if (!a7)
  {
    v17 = +[CNUICoreLogProvider likenesses_os_log];
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      +[CNUIPRLikenessLookup contactFuture:contactStore:refetchContact:];
    }

    v16 = MEMORY[0x1E6996720];
    goto LABEL_7;
  }

  v14 = [objc_opt_class() useGivenAvatarForContact:v11];
  v15 = MEMORY[0x1E6996720];
  if (v14)
  {
    v16 = MEMORY[0x1E6996720];
LABEL_7:
    v18 = [v16 futureWithResult:v11];
    goto LABEL_9;
  }

  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __86__CNUIPRLikenessLookup_contactFuture_contactStore_personaId_scheduler_refetchContact___block_invoke;
  v23[3] = &unk_1E76E8730;
  v19 = v11;
  v24 = v19;
  v26 = a1;
  v25 = v12;
  v18 = [v15 futureWithBlock:v23 scheduler:v13];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __86__CNUIPRLikenessLookup_contactFuture_contactStore_personaId_scheduler_refetchContact___block_invoke_62;
  v21[3] = &unk_1E76E8560;
  v22 = v19;
  [v18 addSuccessBlock:v21];

LABEL_9:

  return v18;
}

id __86__CNUIPRLikenessLookup_contactFuture_contactStore_personaId_scheduler_refetchContact___block_invoke(uint64_t a1, uint64_t a2)
{
  v15[1] = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 32);
  v5 = [*(a1 + 48) descriptorForRequiredKeys];
  if (*(a1 + 40) && [MEMORY[0x1E695CE18] authorizationStatusForEntityType:0] == 3)
  {
    v8 = a1 + 32;
    v6 = *(a1 + 32);
    v7 = *(v8 + 8);
    v15[0] = v5;
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:1];
    v10 = [v7 contactsMatchingPropertiesOfContact:v6 unifyResults:1 keysToFetch:v9 error:a2];

    if ([v10 count] >= 2)
    {
      v11 = +[CNUICoreLogProvider likenesses_os_log];
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        *v14 = 0;
        _os_log_impl(&dword_1A31E6000, v11, OS_LOG_TYPE_INFO, "[LikenessResolver] Matched more than one contact when resolving likeness", v14, 2u);
      }
    }

    v12 = [v10 firstObject];

    v4 = v12;
  }

  return v4;
}

void __86__CNUIPRLikenessLookup_contactFuture_contactStore_personaId_scheduler_refetchContact___block_invoke_62(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = +[CNUICoreLogProvider likenesses_os_log];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    __86__CNUIPRLikenessLookup_contactFuture_contactStore_personaId_scheduler_refetchContact___block_invoke_62_cold_1();
  }
}

- (BOOL)shouldFetchSharedPhotoForContact:(id)a3
{
  v4 = a3;
  if (([(CNUIPRLikenessLookup *)self lookupOptions]& 2) != 0)
  {
    if ([(CNUIPRLikenessLookup *)self isMeContact:v4])
    {
      v6 = [MEMORY[0x1E69966E8] currentEnvironment];
      v7 = [v6 nicknameProvider];
      v8 = [v7 isNicknameSharingEnabled];
    }

    else
    {
      v8 = 0;
    }

    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v10 = [v4 thumbnailImageData];
    if (v10)
    {
      v11 = 1;
    }

    else if ([v4 isKeyAvailable:*MEMORY[0x1E695C278]])
    {
      v12 = [v4 imageData];
      v11 = v12 != 0;
    }

    else
    {
      v11 = 0;
    }

    v5 = v8 & (isKindOfClass & v11 ^ 1);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)isMeContact:(id)a3
{
  v4 = a3;
  if ([(CNUIPRLikenessLookup *)self skipContactLookup])
  {
    v5 = 0;
  }

  else
  {
    v6 = [(CNUIPRLikenessLookup *)self meMonitor];

    if (v6)
    {
      v7 = [(CNUIPRLikenessLookup *)self meMonitor];
      v5 = [v7 isMeContact:v4];
    }

    else
    {
      v8 = [(CNUIPRLikenessLookup *)self contactStore];
      v7 = [v8 _crossPlatformUnifiedMeContactWithKeysToFetch:MEMORY[0x1E695E0F0] error:0];

      v9 = [v4 identifier];
      v10 = [v7 identifier];
      v5 = [v9 isEqualToString:v10];
    }
  }

  return v5;
}

- (id)photoFutureForContactFuture:(id)a3 scheduler:(id)a4
{
  v6 = a4;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __62__CNUIPRLikenessLookup_photoFutureForContactFuture_scheduler___block_invoke;
  v10[3] = &unk_1E76E9910;
  v10[4] = self;
  v11 = v6;
  v7 = v6;
  v8 = [a3 flatMap:v10];

  return v8;
}

id __62__CNUIPRLikenessLookup_photoFutureForContactFuture_scheduler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) shouldFetchSharedPhotoForContact:v3];
  v5 = MEMORY[0x1E6996720];
  if (v4)
  {
    v6 = v14;
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v7 = __62__CNUIPRLikenessLookup_photoFutureForContactFuture_scheduler___block_invoke_2;
  }

  else
  {
    v6 = v13;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v7 = __62__CNUIPRLikenessLookup_photoFutureForContactFuture_scheduler___block_invoke_3;
  }

  v6[2] = v7;
  v6[3] = &unk_1E76E98E8;
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  v6[4] = v8;
  v6[5] = v3;
  v10 = v3;
  v11 = [v5 futureWithBlock:v6 scheduler:v9];

  return v11;
}

- (id)futureResultForPhotoImageDataForMeContact:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = objc_alloc_init(MEMORY[0x1E69967D0]);
  v8 = [MEMORY[0x1E69966E8] currentEnvironment];
  v9 = [v8 nicknameProvider];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __72__CNUIPRLikenessLookup_futureResultForPhotoImageDataForMeContact_error___block_invoke;
  v18[3] = &unk_1E76E9938;
  v10 = v6;
  v19 = v10;
  v20 = self;
  v11 = v7;
  v21 = v11;
  [v9 fetchPersonalNicknameAsContactWithCompletion:v18];

  v12 = *MEMORY[0x1E6996590];
  v13 = [v11 future];
  v14 = [v13 resultWithTimeout:0 error:0.2];
  v15 = (*(v12 + 16))(v12, v14);

  if ((*(*MEMORY[0x1E6996540] + 16))())
  {
    v16 = [(CNUIPRLikenessLookup *)self futureResultForPhotoImageDataForContact:v10 error:a4];

    v15 = v16;
  }

  return v15;
}

void __72__CNUIPRLikenessLookup_futureResultForPhotoImageDataForMeContact_error___block_invoke(void *a1, void *a2)
{
  v4 = a2;
  if (!a2)
  {
    v4 = a1[4];
  }

  v5 = v4;
  v6 = a1[5];
  v11 = a2;
  v7 = [v6 photoImageDataForContact:v5 error:0];
  v8 = (*(*MEMORY[0x1E6996540] + 16))();
  v9 = a1[6];
  if (v8)
  {
    v10 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E695C448] code:302 userInfo:0];
    [v9 finishWithError:v10];
  }

  else
  {
    [v9 finishWithResult:v7];
  }
}

- (id)futureResultForPhotoImageDataForContact:(id)a3 error:(id *)a4
{
  v5 = [(CNUIPRLikenessLookup *)self photoImageDataForContact:a3 error:?];
  if ([v5 length])
  {
    v6 = v5;
  }

  else
  {
    v7 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E695C448] code:302 userInfo:0];
    if (a4)
    {
      v7 = v7;
      *a4 = v7;
    }

    v6 = 0;
  }

  return v6;
}

- (id)photoImageDataForContact:(id)a3 error:(id *)a4
{
  v4 = a3;
  if ([v4 isKeyAvailable:*MEMORY[0x1E695C400]])
  {
    v5 = [v4 thumbnailImageData];
    if (![v5 length] && objc_msgSend(v4, "isKeyAvailable:", *MEMORY[0x1E695C278]))
    {
      v6 = [v4 imageData];

      if ([v4 isKeyAvailable:*MEMORY[0x1E695C1E8]])
      {
        [v4 cropRect];
      }

      v5 = CNImageUtilsCroppedImageDataFromFullSizeImageData();
    }

    v7 = +[CNUICoreLogProvider likenesses_os_log];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      [CNUIPRLikenessLookup photoImageDataForContact:error:];
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)likenessForContact:placeholderProviderFactory:options:.cold.5()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)remoteImageWithContactFuture:(uint8_t *)buf .cold.1(uint64_t a1, void *a2, uint8_t *buf, os_log_t log)
{
  *buf = 138412546;
  *(buf + 4) = a1;
  *(buf + 6) = 2112;
  *(buf + 14) = a2;
  _os_log_debug_impl(&dword_1A31E6000, log, OS_LOG_TYPE_DEBUG, "[LikenessResolver] Received photo provider %@ for contact %@", buf, 0x16u);
}

void __78__CNUIPRLikenessLookup_remoteImagesObservableWithContactFuture_workScheduler___block_invoke_2_cold_1()
{
  OUTLINED_FUNCTION_8();
  v1 = [*(v0 + 32) result:0];
  OUTLINED_FUNCTION_0_6();
  OUTLINED_FUNCTION_2_0(&dword_1A31E6000, v2, v3, "[LikenessResolver] Received remote image %@ for contact %@", v4, v5, v6, v7, v8);
}

- (void)basicMonogramWithContactFuture:monogramColor:.cold.1()
{
  OUTLINED_FUNCTION_8();
  v1 = [v0 result:0];
  OUTLINED_FUNCTION_0_6();
  OUTLINED_FUNCTION_2_0(&dword_1A31E6000, v2, v3, "[LikenessResolver] Creating basic monogram %@ for contact %@", v4, v5, v6, v7, v8);
}

void __79__CNUIPRLikenessLookup_basicMonogramObservableWithContactFuture_monogramColor___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_8();
  v1 = [*(v0 + 32) result:0];
  OUTLINED_FUNCTION_0_6();
  OUTLINED_FUNCTION_2_0(&dword_1A31E6000, v2, v3, "[LikenessResolver] Creating basic monogram %@ for contact %@", v4, v5, v6, v7, v8);
}

+ (void)photoWithPhotoFuture:likenessFingerprint:.cold.1()
{
  v2 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(&dword_1A31E6000, v0, OS_LOG_TYPE_DEBUG, "[LikenessResolver] Could not load photo: %{public}@", v1, 0xCu);
}

+ (void)contactFuture:contactStore:refetchContact:.cold.4()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

+ (void)contactFuture:contactStore:refetchContact:.cold.5()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)photoImageDataForContact:error:.cold.1()
{
  OUTLINED_FUNCTION_8();
  v1 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v0, "length")}];
  OUTLINED_FUNCTION_0_6();
  OUTLINED_FUNCTION_2_0(&dword_1A31E6000, v2, v3, "[LikenessResolver] Returning thumbnail/image of %@, length: %@", v4, v5, v6, v7, v8);
}

@end