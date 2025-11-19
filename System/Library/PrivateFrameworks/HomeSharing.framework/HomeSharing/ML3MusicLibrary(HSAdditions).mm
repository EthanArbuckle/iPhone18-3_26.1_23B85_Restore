@interface ML3MusicLibrary(HSAdditions)
+ (void)buildDatabaseFromHomeSharingLibrary:()HSAdditions atPath:completionHandler:progressHandler:;
- (uint64_t)executeUpdateSQL:()HSAdditions;
- (void)_performImport:()HSAdditions progressHandler:completion:;
- (void)checkForChangesInHomeSharingLibrary:()HSAdditions completionHandler:;
- (void)fillContainerForHomeSharingLibrary:()HSAdditions containerID:completionHandler:;
@end

@implementation ML3MusicLibrary(HSAdditions)

- (void)checkForChangesInHomeSharingLibrary:()HSAdditions completionHandler:
{
  v6 = a3;
  v7 = a4;
  v8 = dispatch_group_create();
  v9 = dispatch_queue_create("com.apple.mobileipod.SharingChangeUpdate", 0);
  v44[0] = 0;
  v44[1] = v44;
  v44[2] = 0x3032000000;
  v44[3] = __Block_byref_object_copy_;
  v44[4] = __Block_byref_object_dispose_;
  v45 = 0;
  v42[0] = 0;
  v42[1] = v42;
  v42[2] = 0x2020000000;
  v43 = 0;
  v38[0] = MEMORY[0x277D85DD0];
  v38[1] = 3221225472;
  v38[2] = __86__ML3MusicLibrary_HSAdditions__checkForChangesInHomeSharingLibrary_completionHandler___block_invoke;
  v38[3] = &unk_279779750;
  v10 = v9;
  v39 = v10;
  v41 = v44;
  v11 = v8;
  v40 = v11;
  v12 = MEMORY[0x259C0BF70](v38);
  dispatch_group_enter(v11);
  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = __86__ML3MusicLibrary_HSAdditions__checkForChangesInHomeSharingLibrary_completionHandler___block_invoke_4;
  v31[3] = &unk_279779798;
  v13 = v11;
  v32 = v13;
  v14 = v6;
  v33 = v14;
  v34 = a1;
  v35 = v12;
  v36 = &__block_literal_global;
  v37 = v42;
  v15 = a1;
  v16 = v35;
  v17 = v31;
  v18 = v14;
  v19 = +[HSContainersRequest requestWithDatabaseID:](HSContainersRequest, "requestWithDatabaseID:", [v18 databaseID]);
  v20 = [MEMORY[0x277CBEA60] arrayWithObjects:{@"dmap.itemid", 0}];
  v21 = [v20 componentsJoinedByString:{@", "}];
  [v19 setValue:v21 forArgument:@"meta"];

  [v19 setShouldParseResponse:0];
  v46[0] = MEMORY[0x277D85DD0];
  v46[1] = 3221225472;
  v46[2] = __UpdateContainers_block_invoke;
  v46[3] = &unk_279779970;
  v47 = v15;
  v48 = v16;
  v49 = v17;
  v22 = v17;
  v23 = v15;
  v24 = v16;
  [v18 sendRequest:v19 withResponseHandler:v46];

  dispatch_group_enter(v13);
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __86__ML3MusicLibrary_HSAdditions__checkForChangesInHomeSharingLibrary_completionHandler___block_invoke_5;
  v30[3] = &unk_2797797C0;
  v30[4] = v42;
  UpdateItems(v18, v23, v13, v24, &__block_literal_global, v30, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __86__ML3MusicLibrary_HSAdditions__checkForChangesInHomeSharingLibrary_completionHandler___block_invoke_6;
  block[3] = &unk_2797797E8;
  v27 = v7;
  v28 = v42;
  v29 = v44;
  v25 = v7;
  dispatch_group_notify(v13, v10, block);

  _Block_object_dispose(v42, 8);
  _Block_object_dispose(v44, 8);
}

- (uint64_t)executeUpdateSQL:()HSAdditions
{
  v4 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __49__ML3MusicLibrary_HSAdditions__executeUpdateSQL___block_invoke;
  v8[3] = &unk_279779700;
  v10 = &v11;
  v5 = v4;
  v9 = v5;
  [a1 databaseConnectionAllowingWrites:1 withBlock:v8];
  v6 = *(v12 + 24);

  _Block_object_dispose(&v11, 8);
  return v6;
}

- (void)_performImport:()HSAdditions progressHandler:completion:
{
  v8 = _ML3MusicLibraryHomeSharingImportManagerKey;
  v9 = a5;
  v10 = a4;
  v11 = a3;
  v16 = objc_getAssociatedObject(a1, v8);
  if (!v16)
  {
    v16 = objc_alloc_init(MEMORY[0x277D2B5E8]);
    objc_setAssociatedObject(a1, _ML3MusicLibraryHomeSharingImportManagerKey, v16, 1);
  }

  v12 = objc_alloc_init(MEMORY[0x277D2B5F0]);
  v13 = objc_alloc(MEMORY[0x277D2B618]);
  v14 = [MEMORY[0x277D2B5B8] processClient];
  v15 = [v13 initWithDatabaseImport:v11 library:a1 writer:v12 client:v14];

  [v16 performImport:v15 fromSource:3 progressBlock:v10 withCompletionHandler:v9];
}

- (void)fillContainerForHomeSharingLibrary:()HSAdditions containerID:completionHandler:
{
  v8 = a5;
  v9 = a3;
  v10 = +[HSItemsRequest requestWithDatabaseID:containerID:](HSItemsRequest, "requestWithDatabaseID:containerID:", [v9 databaseID], a4);
  [v10 setShouldParseResponse:0];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __97__ML3MusicLibrary_HSAdditions__fillContainerForHomeSharingLibrary_containerID_completionHandler___block_invoke;
  v12[3] = &unk_2797796D8;
  v12[4] = a1;
  v13 = v8;
  v14 = a4;
  v11 = v8;
  [v9 sendRequest:v10 withResponseHandler:v12];
}

+ (void)buildDatabaseFromHomeSharingLibrary:()HSAdditions atPath:completionHandler:progressHandler:
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v25 = v10;
  v13 = [objc_alloc(MEMORY[0x277D2B5F8]) initWithPath:v10];
  [v13 setIsHomeSharingLibrary:1];
  v47 = 0;
  v48 = &v47;
  v49 = 0x3032000000;
  v50 = __Block_byref_object_copy_;
  v51 = __Block_byref_object_dispose_;
  v52 = 0;
  v45[0] = 0;
  v45[1] = v45;
  v45[2] = 0x2020000000;
  v46 = 0;
  v14 = dispatch_group_create();
  v15 = dispatch_queue_create("com.apple.MusicLibrary.SharingBuild", 0);
  v42[0] = MEMORY[0x277D85DD0];
  v42[1] = 3221225472;
  v42[2] = __109__ML3MusicLibrary_HSAdditions__buildDatabaseFromHomeSharingLibrary_atPath_completionHandler_progressHandler___block_invoke;
  v42[3] = &unk_279779810;
  v16 = v12;
  v43 = v16;
  v44 = v45;
  v17 = MEMORY[0x259C0BF70](v42);
  v38[0] = MEMORY[0x277D85DD0];
  v38[1] = 3221225472;
  v38[2] = __109__ML3MusicLibrary_HSAdditions__buildDatabaseFromHomeSharingLibrary_atPath_completionHandler_progressHandler___block_invoke_2;
  v38[3] = &unk_279779750;
  v18 = v15;
  v39 = v18;
  v41 = &v47;
  v19 = v14;
  v40 = v19;
  v20 = MEMORY[0x259C0BF70](v38);
  v34 = 0;
  v35 = &v34;
  v36 = 0x2020000000;
  v37 = 0;
  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 3221225472;
  v33[2] = __109__ML3MusicLibrary_HSAdditions__buildDatabaseFromHomeSharingLibrary_atPath_completionHandler_progressHandler___block_invoke_4;
  v33[3] = &unk_279779838;
  v33[4] = &v34;
  [v13 databaseConnectionAllowingWrites:0 withBlock:v33];
  v21 = dispatch_semaphore_create(0);
  dispatch_group_enter(v19);
  if (*(v35 + 24) == 1)
  {
    v22 = v32;
    v32[0] = MEMORY[0x277D85DD0];
    v32[1] = 3221225472;
    v32[2] = __109__ML3MusicLibrary_HSAdditions__buildDatabaseFromHomeSharingLibrary_atPath_completionHandler_progressHandler___block_invoke_6;
    v32[3] = &unk_279779880;
    v32[5] = &v47;
    v32[4] = v21;
    UpdateItems(v9, v13, v19, v20, v17, &__block_literal_global_23, v32);
  }

  else
  {
    v22 = v31;
    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 3221225472;
    v31[2] = __109__ML3MusicLibrary_HSAdditions__buildDatabaseFromHomeSharingLibrary_atPath_completionHandler_progressHandler___block_invoke_7;
    v31[3] = &unk_279779880;
    v31[5] = &v47;
    v31[4] = v21;
    BuildItems(v9, v13, 0, v20, v17, v31);
  }

  dispatch_semaphore_wait(v21, 0xFFFFFFFFFFFFFFFFLL);
  if (!v48[5])
  {
    dispatch_group_enter(v19);
    BuildContainers(v9, v13, v20, v17);
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __109__ML3MusicLibrary_HSAdditions__buildDatabaseFromHomeSharingLibrary_atPath_completionHandler_progressHandler___block_invoke_8;
  block[3] = &unk_2797798A8;
  v27 = v13;
  v28 = v11;
  v29 = &v47;
  v30 = v45;
  v23 = v11;
  v24 = v13;
  dispatch_group_notify(v19, v18, block);

  _Block_object_dispose(&v34, 8);
  _Block_object_dispose(v45, 8);
  _Block_object_dispose(&v47, 8);
}

@end