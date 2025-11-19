uint64_t ML3MigrationFunction2100070to2100080(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if ([v3 executeUpdate:@"ALTER TABLE container ADD COLUMN collaboration_invitation_link TEXT NOT NULL DEFAULT ''"])
  {
    [v4 setCurrentUserVersion:2100080];
    v5 = [v3 executeUpdate:@"PRAGMA user_version = 2100080;"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t ML3MigrationFunction2100080to2100090(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if ([v3 executeUpdate:@"ALTER TABLE container DROP COLUMN cover_artwork_recipe"] && objc_msgSend(v3, "executeUpdate:", @"ALTER TABLE container ADD COLUMN cover_artwork_recipe TEXT NOT NULL DEFAULT ''"))
  {
    [v4 setCurrentUserVersion:2100090];
    v5 = [v3 executeUpdate:@"PRAGMA user_version = 2100090;"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t ML3MigrationFunction2100090to2100100(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if (!MSVDeviceIsWatch())
  {
    goto LABEL_11;
  }

  v25 = 0;
  v26 = &v25;
  v27 = 0x2020000000;
  v28 = 1;
  v5 = [MEMORY[0x277CCAA00] defaultManager];
  v6 = [MEMORY[0x277CBEB18] array];
  v7 = [ML3MusicLibrary mediaFolderPathByAppendingPathComponent:@"Music/Downloads"];
  v8 = [v3 executeQuery:{@"SELECT item_pid, location FROM item JOIN item_extra USING(item_pid) WHERE base_location_id=300 AND (media_type & 8) != 0"}];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __ML3MigrationFunction2100090to2100100_block_invoke;
  v19[3] = &unk_27875D288;
  v24 = &v25;
  v9 = v7;
  v20 = v9;
  v10 = v5;
  v21 = v10;
  v11 = v3;
  v22 = v11;
  v12 = v6;
  v23 = v12;
  [v8 enumerateRowsWithBlock:v19];
  if (*(v26 + 24) == 1 && (v13 = ML3MigrationClearLocationFromLibraryAsOf2100100(v12, 0, v11, 0), *(v26 + 24) = v13, (v13 & 1) != 0))
  {
    v14 = os_log_create("com.apple.amp.medialibrary", "Migration");
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *v18 = 0;
      _os_log_impl(&dword_22D2FA000, v14, OS_LOG_TYPE_DEFAULT, "Cleared all orphaned mismatched pids", v18, 2u);
    }

    v15 = 1;
  }

  else
  {
    v14 = os_log_create("com.apple.amp.medialibrary", "Migration");
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *v18 = 0;
      _os_log_impl(&dword_22D2FA000, v14, OS_LOG_TYPE_ERROR, "Could not update mismatched track downloads. Failing migration.", v18, 2u);
    }

    v15 = 0;
  }

  _Block_object_dispose(&v25, 8);
  if ((v15 & 1) == 0)
  {
    v16 = 0;
  }

  else
  {
LABEL_11:
    [v4 setCurrentUserVersion:2100100];
    v16 = [v3 executeUpdate:@"PRAGMA user_version = 2100100;"];
  }

  return v16;
}

void sub_22D3FB8D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __ML3MigrationFunction2100090to2100100_block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v23 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  if (v8)
  {
    v9 = os_log_create("com.apple.amp.medialibrary", "Migration");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v22 = v8;
      _os_log_impl(&dword_22D2FA000, v9, OS_LOG_TYPE_ERROR, "Encountered error enumerating mismatched tracks. error=%{public}@", buf, 0xCu);
    }

    *(*(*(a1 + 64) + 8) + 24) = 0;
    *a4 = 1;
  }

  v10 = [v7 objectAtIndexedSubscript:0];
  v11 = [v7 objectAtIndexedSubscript:1];
  v12 = [*(a1 + 32) stringByAppendingPathComponent:v11];
  if ([*(a1 + 40) fileExistsAtPath:v12])
  {
    v13 = *(a1 + 48);
    v20 = v10;
    v14 = [MEMORY[0x277CBEA60] arrayWithObjects:&v20 count:1];
    v19 = 0;
    v15 = [v13 executeUpdate:@"UPDATE item SET base_location_id = 250 WHERE item_pid = ?" withParameters:v14 error:&v19];
    v16 = v19;

    v17 = os_log_create("com.apple.amp.medialibrary", "Migration");
    v18 = v17;
    if (v15)
    {
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v22 = v10;
        _os_log_impl(&dword_22D2FA000, v18, OS_LOG_TYPE_DEFAULT, "Updated base_location_id for mismatched pid %{public}@", buf, 0xCu);
      }
    }

    else
    {
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v22 = v16;
        _os_log_impl(&dword_22D2FA000, v18, OS_LOG_TYPE_ERROR, "Encountered error updating mismatched tracks. error=%{public}@", buf, 0xCu);
      }

      *(*(*(a1 + 64) + 8) + 24) = 0;
      *a4 = 1;
    }
  }

  else
  {
    [*(a1 + 56) addObject:v10];
  }
}

uint64_t ML3MigrationFunction2100100to2100110(void *a1, void *a2)
{
  v35[2] = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  v5 = [ML3MusicLibrary mediaFolderPathByAppendingPathComponent:@"ManagedPurchases/TVApp"];
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = __Block_byref_object_copy__2414;
  v29 = __Block_byref_object_dispose__2415;
  v30 = 0;
  v35[0] = &unk_2840C8990;
  v35[1] = @"ManagedPurchases/TVApp";
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v35 count:2];
  v7 = (v26 + 5);
  obj = v26[5];
  v8 = [v3 executeUpdate:@"INSERT INTO base_location (base_location_id withParameters:path) VALUES (? error:{?)", v6, &obj}];
  objc_storeStrong(v7, obj);

  if (v8)
  {
    v9 = [MEMORY[0x277CCAA00] defaultManager];
    v10 = [v9 fileExistsAtPath:v5];

    if (v10 & 1) != 0 || ([MEMORY[0x277CCAA00] defaultManager], v11 = objc_claimAutoreleasedReturnValue(), v12 = (v26 + 5), v23 = v26[5], v13 = objc_msgSend(v11, "createDirectoryAtPath:withIntermediateDirectories:attributes:error:", v5, 1, 0, &v23), objc_storeStrong(v12, v23), v11, (v13))
    {
      v14 = [v3 executeQuery:@"SELECT item_pid withParameters:{path, location FROM item JOIN item_extra USING(item_pid) JOIN base_location USING(base_location_id) WHERE ((item.media_type & (? | ?)) != 0) AND base_location_id = ? AND location != ''", &unk_2840C6710}];
      v20[0] = MEMORY[0x277D85DD0];
      v20[1] = 3221225472;
      v20[2] = __ML3MigrationFunction2100100to2100110_block_invoke;
      v20[3] = &unk_27875D2D8;
      v20[4] = v5;
      v22 = &v25;
      v21 = v3;
      [v14 enumerateRowsWithBlock:v20];
    }

    else
    {
      v14 = os_log_create("com.apple.amp.medialibrary", "Migration");
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v19 = v26[5];
        *buf = 138412546;
        v32 = v5;
        v33 = 2112;
        v34 = v19;
        _os_log_impl(&dword_22D2FA000, v14, OS_LOG_TYPE_ERROR, "Encountered error creating directory at path %@. error=%@", buf, 0x16u);
      }
    }

    [v4 setCurrentUserVersion:2100110];
    v15 = [v3 executeUpdate:@"PRAGMA user_version = 2100110;"];
  }

  else
  {
    v16 = os_log_create("com.apple.amp.medialibrary", "Migration");
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = v26[5];
      *buf = 138412290;
      v32 = v17;
      _os_log_impl(&dword_22D2FA000, v16, OS_LOG_TYPE_ERROR, "Error adding base_location_id=500 to base_location table: %@", buf, 0xCu);
    }

    v15 = 0;
  }

  _Block_object_dispose(&v25, 8);

  return v15;
}

void sub_22D3FBED0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __ML3MigrationFunction2100100to2100110_block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v46[3] = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  if (!v8)
  {
    v10 = [v7 objectAtIndexedSubscript:0];
    v11 = [v10 longLongValue];

    v12 = [v7 objectAtIndexedSubscript:1];
    v13 = [v7 objectAtIndexedSubscript:2];
    if (![v12 length] || !objc_msgSend(v13, "length"))
    {
      goto LABEL_23;
    }

    v35 = v11;
    v14 = MEMORY[0x277CCACA8];
    v15 = +[ML3MusicLibrary mediaFolderPath];
    v46[0] = v15;
    v46[1] = v12;
    v46[2] = v13;
    v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v46 count:3];
    v17 = [v14 pathWithComponents:v16];

    v36 = [*(a1 + 32) stringByAppendingPathComponent:v13];
    v18 = [MEMORY[0x277CCAA00] defaultManager];
    v19 = [v18 fileExistsAtPath:v17];

    v20 = os_log_create("com.apple.amp.medialibrary", "Migration");
    v21 = v20;
    if (v19)
    {
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v40 = v17;
        v41 = 2112;
        v42 = v36;
        _os_log_impl(&dword_22D2FA000, v21, OS_LOG_TYPE_DEFAULT, "Moving TV App download %@ to %@", buf, 0x16u);
      }

      v22 = [MEMORY[0x277CCAA00] defaultManager];
      v23 = *(*(a1 + 48) + 8);
      obj = *(v23 + 40);
      v24 = [v22 moveItemAtPath:v17 toPath:v36 error:&obj];
      objc_storeStrong((v23 + 40), obj);

      v25 = os_log_create("com.apple.amp.medialibrary", "Migration");
      v21 = v25;
      if (v24)
      {
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          v40 = v17;
          v41 = 2112;
          v42 = v36;
          _os_log_impl(&dword_22D2FA000, v21, OS_LOG_TYPE_DEFAULT, "Successfully moved TV App download from %@ to %@", buf, 0x16u);
        }

        v26 = *(a1 + 40);
        v45[0] = &unk_2840C8990;
        v27 = [MEMORY[0x277CCABB0] numberWithLongLong:v35];
        v45[1] = v27;
        v28 = [MEMORY[0x277CBEA60] arrayWithObjects:v45 count:2];
        v29 = *(*(a1 + 48) + 8);
        v37 = *(v29 + 40);
        [v26 executeUpdate:@"UPDATE item SET base_location_id = ? WHERE item_pid = ?" withParameters:v28 error:&v37];
        objc_storeStrong((v29 + 40), v37);

        if (!*(*(*(a1 + 48) + 8) + 40))
        {
          goto LABEL_22;
        }

        v21 = os_log_create("com.apple.amp.medialibrary", "Migration");
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          v30 = *(*(*(a1 + 48) + 8) + 40);
          *buf = 134218242;
          v40 = v35;
          v41 = 2112;
          v42 = v30;
          v31 = "Encountered error updating item.base_location_id to 500 for item_pid=%lld. error=%@";
          v32 = v21;
          v33 = 22;
LABEL_20:
          _os_log_impl(&dword_22D2FA000, v32, OS_LOG_TYPE_ERROR, v31, buf, v33);
        }
      }

      else if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        v34 = *(*(*(a1 + 48) + 8) + 40);
        *buf = 138412802;
        v40 = v17;
        v41 = 2112;
        v42 = v36;
        v43 = 2112;
        v44 = v34;
        v31 = "Encountered error moving file from %@ to %@. error=%@";
        v32 = v21;
        v33 = 32;
        goto LABEL_20;
      }
    }

    else if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v40 = v17;
      v31 = "Unable to move TV App download at %@ because it does not exist";
      v32 = v21;
      v33 = 12;
      goto LABEL_20;
    }

LABEL_22:
LABEL_23:

    goto LABEL_24;
  }

  v9 = os_log_create("com.apple.amp.medialibrary", "Migration");
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v40 = v8;
    _os_log_impl(&dword_22D2FA000, v9, OS_LOG_TYPE_ERROR, "Encountered error with local purchase tracks query. error=%@", buf, 0xCu);
  }

  *a4 = 1;
LABEL_24:
}

uint64_t ML3MigrationFunction2100110to2100120(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if ([v3 executeUpdate:@"ALTER TABLE container_author ADD COLUMN is_pending INTEGER NOT NULL DEFAULT 0"] && objc_msgSend(v3, "executeUpdate:", @"CREATE INDEX IF NOT EXISTS ContainerAuthorRole ON container_author (role ASC)") && objc_msgSend(v3, "executeUpdate:", @"CREATE INDEX IF NOT EXISTS ContainerAuthorIsPending ON container_author (is_pending ASC)"))
  {
    [v4 setCurrentUserVersion:2100120];
    v5 = [v3 executeUpdate:@"PRAGMA user_version = 2100120;"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t ML3MigrationFunction2100120to2100130(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if ([v3 executeUpdate:@"ALTER TABLE container ADD COLUMN collaboration_invitation_url_expiration_date INTEGER NOT NULL DEFAULT 0"] && objc_msgSend(v3, "executeUpdate:", @"ALTER TABLE container ADD COLUMN collaboration_join_request_pending INTEGER NOT NULL DEFAULT 0"))
  {
    [v4 setCurrentUserVersion:2100130];
    v5 = [v3 executeUpdate:@"PRAGMA user_version = 2100130;"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t ML3MigrationFunction2100130to2100140(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if ([v3 executeUpdate:@"ALTER TABLE person ADD COLUMN lightweight_profile INTEGER NOT NULL DEFAULT 0"])
  {
    [v4 setCurrentUserVersion:2100140];
    v5 = [v3 executeUpdate:@"PRAGMA user_version = 2100140;"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t ML3MigrationFunction2100140to2100150(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  [v3 setNeedsToRecreateIndexes:1];
  [v3 setNeedsToRecreateTriggers:1];
  [v3 setCurrentUserVersion:2100150];

  v5 = [v4 executeUpdate:@"PRAGMA user_version = 2100150;"];
  return v5;
}

uint64_t ML3MigrationFunction2100150to2110000(void *a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  if ([v3 executeUpdate:@"ALTER TABLE album_artist ADD COLUMN sort_order INTEGER NOT NULL DEFAULT 0"] && objc_msgSend(v3, "executeUpdate:", @"ALTER TABLE album_artist ADD COLUMN sort_order_section INTEGER NOT NULL DEFAULT 0") && objc_msgSend(v3, "executeUpdate:", @"UPDATE album_artist SET sort_order = (SELECT album_artist_order FROM item WHERE item.item_pid=album_artist.representative_item_pid) WHERE album_artist.representative_item_pid != 0") && objc_msgSend(v3, "executeUpdate:", @"UPDATE album_artist SET sort_order_section = (SELECT album_artist_order_section FROM item WHERE item.item_pid=album_artist.representative_item_pid) WHERE album_artist.representative_item_pid != 0"))
  {
    v10 = 0;
    v5 = [v3 executeUpdate:@"UPDATE album SET liked_state=? WHERE (liked_state=? AND NOT EXISTS (SELECT 1 FROM item WHERE in_my_library AND item.album_pid = album.album_pid))" withParameters:&unk_2840C6728 error:&v10];
    v6 = v10;
    if ((v5 & 1) == 0)
    {
      v7 = os_log_create("com.apple.amp.medialibrary", "Default");
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v12 = v6;
        _os_log_impl(&dword_22D2FA000, v7, OS_LOG_TYPE_ERROR, "Failed to patch up orphaned albums with incorrect liked_state. error=%{public}@", buf, 0xCu);
      }
    }

    [v4 setCurrentUserVersion:2110000];
    v8 = [v3 executeUpdate:@"PRAGMA user_version = 2110000;"];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

uint64_t ML3MigrationFunction2110000to2120000(void *a1, void *a2)
{
  v46[2] = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  v5 = [ML3MusicLibrary mediaFolderPathByAppendingPathComponent:@"ManagedPurchases/Books"];
  v36 = 0;
  v37 = &v36;
  v38 = 0x3032000000;
  v39 = __Block_byref_object_copy__2414;
  v40 = __Block_byref_object_dispose__2415;
  v41 = 0;
  v32 = 0;
  v33 = &v32;
  v34 = 0x2020000000;
  v35 = 1;
  v46[0] = &unk_2840C89F0;
  v46[1] = @"ManagedPurchases/Books";
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v46 count:2];
  v7 = (v37 + 5);
  obj = v37[5];
  v8 = [v3 executeUpdate:@"INSERT INTO base_location (base_location_id withParameters:path) VALUES (? error:{?)", v6, &obj}];
  objc_storeStrong(v7, obj);

  if (v8)
  {
    v9 = [MEMORY[0x277CCAA00] defaultManager];
    v10 = [v9 fileExistsAtPath:v5];

    if ((v10 & 1) == 0)
    {
      v11 = [MEMORY[0x277CCAA00] defaultManager];
      v12 = (v37 + 5);
      v30 = v37[5];
      v13 = [v11 createDirectoryAtPath:v5 withIntermediateDirectories:1 attributes:0 error:&v30];
      objc_storeStrong(v12, v30);

      if ((v13 & 1) == 0)
      {
        v19 = os_log_create("com.apple.amp.medialibrary", "Migration");
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          v20 = v37[5];
          *buf = 138412546;
          v43 = v5;
          v44 = 2112;
          v45 = v20;
          _os_log_impl(&dword_22D2FA000, v19, OS_LOG_TYPE_ERROR, "Encountered error creating directory at path %@. error=%@", buf, 0x16u);
        }

        goto LABEL_13;
      }
    }

    v14 = [v3 executeQuery:@"SELECT item_pid withParameters:{path, location FROM item JOIN item_extra USING(item_pid) JOIN base_location USING(base_location_id) WHERE (item.media_type & ? != 0) AND base_location_id = ? AND location != ''", &unk_2840C6740}];
    v22 = MEMORY[0x277D85DD0];
    v23 = 3221225472;
    v24 = __ML3MigrationFunction2110000to2120000_block_invoke;
    v25 = &unk_27875D2B0;
    v26 = v5;
    v28 = &v36;
    v27 = v3;
    v29 = &v32;
    [v14 enumerateRowsWithBlock:&v22];
    v15 = *(v33 + 24);

    if (v15)
    {
LABEL_13:
      [v4 setCurrentUserVersion:{2120000, v22, v23, v24, v25, v26}];
      v18 = [v3 executeUpdate:@"PRAGMA user_version = 2120000;"];
      goto LABEL_14;
    }
  }

  else
  {
    v16 = os_log_create("com.apple.amp.medialibrary", "Migration");
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = v37[5];
      *buf = 138412290;
      v43 = v17;
      _os_log_impl(&dword_22D2FA000, v16, OS_LOG_TYPE_ERROR, "Error adding base_location_id=600 to base_location table: %@", buf, 0xCu);
    }
  }

  v18 = 0;
LABEL_14:
  _Block_object_dispose(&v32, 8);
  _Block_object_dispose(&v36, 8);

  return v18;
}

void sub_22D3FCB40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v12 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void __ML3MigrationFunction2110000to2120000_block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v61[3] = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  if (!v8)
  {
    v10 = [v7 objectAtIndexedSubscript:0];
    v11 = [v10 longLongValue];

    v12 = [v7 objectAtIndexedSubscript:1];
    v13 = [v7 objectAtIndexedSubscript:2];
    if (![v12 length] || !objc_msgSend(v13, "length"))
    {
      goto LABEL_28;
    }

    v49 = v11;
    v14 = MEMORY[0x277CCACA8];
    v15 = +[ML3MusicLibrary mediaFolderPath];
    v61[0] = v15;
    v61[1] = v12;
    v61[2] = v13;
    v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v61 count:3];
    v17 = [v14 pathWithComponents:v16];

    v50 = [*(a1 + 32) stringByAppendingPathComponent:v13];
    v18 = [MEMORY[0x277CCAA00] defaultManager];
    LODWORD(v15) = [v18 fileExistsAtPath:v17];

    v19 = os_log_create("com.apple.amp.medialibrary", "Migration");
    v20 = v19;
    if (v15)
    {
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v55 = v17;
        v56 = 2112;
        v57 = v50;
        _os_log_impl(&dword_22D2FA000, v20, OS_LOG_TYPE_DEFAULT, "Moving audiobook download %@ to %@", buf, 0x16u);
      }

      v21 = [MEMORY[0x277CCAA00] defaultManager];
      v22 = *(*(a1 + 48) + 8);
      obj = *(v22 + 40);
      v48 = v17;
      v23 = [v21 moveItemAtPath:v17 toPath:v50 error:&obj];
      objc_storeStrong((v22 + 40), obj);

      v24 = os_log_create("com.apple.amp.medialibrary", "Migration");
      v20 = v24;
      if (v23)
      {
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          v55 = v48;
          v56 = 2112;
          v57 = v50;
          _os_log_impl(&dword_22D2FA000, v20, OS_LOG_TYPE_DEFAULT, "Successfully moved audiobook download from %@ to %@", buf, 0x16u);
        }

        v25 = *(a1 + 40);
        v60[0] = &unk_2840C89F0;
        v26 = [MEMORY[0x277CCABB0] numberWithLongLong:v49];
        v60[1] = v26;
        v27 = [MEMORY[0x277CBEA60] arrayWithObjects:v60 count:2];
        v28 = *(*(a1 + 48) + 8);
        v52 = *(v28 + 40);
        [v25 executeUpdate:@"UPDATE item SET base_location_id = ? WHERE item_pid = ?" withParameters:v27 error:&v52];
        objc_storeStrong((v28 + 40), v52);

        v17 = v48;
        if (!*(*(*(a1 + 48) + 8) + 40))
        {
          goto LABEL_27;
        }

        v29 = os_log_create("com.apple.amp.medialibrary", "Migration");
        if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
        {
          v30 = *(*(*(a1 + 48) + 8) + 40);
          *buf = 134218242;
          v55 = v49;
          v56 = 2112;
          v57 = v30;
          _os_log_impl(&dword_22D2FA000, v29, OS_LOG_TYPE_ERROR, "Encountered error updating item.base_location_id to 600 for item_pid=%lld. error=%@", buf, 0x16u);
        }

        v31 = os_log_create("com.apple.amp.medialibrary", "Migration");
        if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          v55 = v50;
          v56 = 2112;
          v57 = v48;
          _os_log_impl(&dword_22D2FA000, v31, OS_LOG_TYPE_DEFAULT, "Moving audiobook download back from %@ to %@", buf, 0x16u);
        }

        v32 = [MEMORY[0x277CCAA00] defaultManager];
        v33 = *(*(a1 + 48) + 8);
        v51 = *(v33 + 40);
        v34 = [v32 moveItemAtPath:v50 toPath:v48 error:&v51];
        objc_storeStrong((v33 + 40), v51);

        v35 = os_log_create("com.apple.amp.medialibrary", "Migration");
        v36 = v35;
        if (v34)
        {
          v17 = v48;
          if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412546;
            v55 = v50;
            v56 = 2112;
            v57 = v48;
            v37 = "Successfully moved audiobook download back from %@ to %@";
            v38 = v36;
            v39 = OS_LOG_TYPE_DEFAULT;
            v40 = 22;
LABEL_32:
            _os_log_impl(&dword_22D2FA000, v38, v39, v37, buf, v40);
          }
        }

        else
        {
          v17 = v48;
          if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
          {
            v47 = *(*(*(a1 + 48) + 8) + 40);
            *buf = 138412802;
            v55 = v50;
            v56 = 2112;
            v57 = v48;
            v58 = 2112;
            v59 = v47;
            v37 = "Encountered error moving file back from %@ to %@. error=%@";
            v38 = v36;
            v39 = OS_LOG_TYPE_ERROR;
            v40 = 32;
            goto LABEL_32;
          }
        }

        *a4 = 1;
        *(*(*(a1 + 56) + 8) + 24) = 0;
        goto LABEL_27;
      }

      v17 = v48;
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        v44 = *(*(*(a1 + 48) + 8) + 40);
        *buf = 138412802;
        v55 = v48;
        v56 = 2112;
        v57 = v50;
        v58 = 2112;
        v59 = v44;
        v41 = "Encountered error moving file from %@ to %@. error=%@";
        v42 = v20;
        v43 = 32;
        goto LABEL_25;
      }
    }

    else if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v55 = v17;
      v41 = "Unable to move audiobook download at %@ because it does not exist";
      v42 = v20;
      v43 = 12;
LABEL_25:
      _os_log_impl(&dword_22D2FA000, v42, OS_LOG_TYPE_ERROR, v41, buf, v43);
    }

LABEL_27:
LABEL_28:
    v45 = *(*(a1 + 48) + 8);
    v46 = *(v45 + 40);
    *(v45 + 40) = 0;

    goto LABEL_29;
  }

  v9 = os_log_create("com.apple.amp.medialibrary", "Migration");
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v55 = v8;
    _os_log_impl(&dword_22D2FA000, v9, OS_LOG_TYPE_ERROR, "Encountered error with local purchase tracks query. error=%@", buf, 0xCu);
  }

  *a4 = 1;
LABEL_29:
}

uint64_t ML3MigrationFunction2120000to2120010(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if ([v3 executeUpdate:@"ALTER TABLE container ADD COLUMN collaborator_status INTEGER NOT NULL DEFAULT 0"])
  {
    [v4 setCurrentUserVersion:2120010];
    v5 = [v3 executeUpdate:@"PRAGMA user_version = 2120010;"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t ML3MigrationFunction2120010to2120020(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  [v3 setNeedsToUpdateSortMap:1];
  [v3 setForceUpdateOriginals:1];
  [v3 setCurrentUserVersion:2120020];

  v5 = [v4 executeUpdate:@"PRAGMA user_version = 2120020;"];
  return v5;
}

uint64_t ML3MigrationFunction2120020to2120030(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if ((ML3MigrationColumnExistsInTable(v3, @"collaborator_status", @"container") & 1) != 0 || [v3 executeUpdate:@"ALTER TABLE container ADD COLUMN collaborator_status INTEGER NOT NULL DEFAULT 0"])
  {
    [v4 setCurrentUserVersion:2120030];
    v5 = [v3 executeUpdate:@"PRAGMA user_version = 2120030;"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t ML3MigrationFunction2120030to2120040(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if ([v3 executeUpdate:@"ALTER TABLE container_author ADD COLUMN position INTEGER NOT NULL DEFAULT 0"] && objc_msgSend(v3, "executeUpdate:", @"CREATE INDEX IF NOT EXISTS ContainerAuthorPosition ON container_author (position ASC)"))
  {
    [v4 setCurrentUserVersion:2120040];
    v5 = [v3 executeUpdate:@"PRAGMA user_version = 2120040;"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t ML3MigrationFunction2120040to2120050(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if (([v3 executeUpdate:{@"CREATE TABLE container_new (container_pid INTEGER PRIMARY KEY, distinguished_kind INTEGER NOT NULL DEFAULT 0, date_created INTEGER NOT NULL DEFAULT 0, date_modified INTEGER NOT NULL DEFAULT 0, date_played INTEGER NOT NULL DEFAULT 0, name TEXT NOT NULL DEFAULT '', name_order INTEGER NOT NULL DEFAULT 0, is_owner INTEGER NOT NULL DEFAULT 1, is_editable INTEGER NOT NULL DEFAULT 0, parent_pid INTEGER NOT NULL DEFAULT 0, contained_media_type INTEGER NOT NULL DEFAULT 0, workout_template_id INTEGER NOT NULL DEFAULT 0, is_hidden INTEGER NOT NULL DEFAULT 0, is_ignorable_itunes_playlist INTEGER NOT NULL DEFAULT 0, description TEXT, play_count_user INTEGER NOT NULL DEFAULT 0, play_count_recent INTEGER NOT NULL DEFAULT 0, liked_state INTEGER NOT NULL DEFAULT 0, smart_evaluation_order INTEGER NOT NULL DEFAULT 0, smart_is_folder INTEGER NOT NULL DEFAULT 0, smart_is_dynamic INTEGER NOT NULL DEFAULT 0, smart_is_filtered INTEGER NOT NULL DEFAULT 0, smart_is_genius INTEGER NOT NULL DEFAULT 0, smart_enabled_only INTEGER NOT NULL DEFAULT 0, smart_is_limited INTEGER NOT NULL DEFAULT 0, smart_limit_kind INTEGER NOT NULL DEFAULT 0, smart_limit_order INTEGER NOT NULL DEFAULT 0, smart_limit_value INTEGER NOT NULL DEFAULT 0, smart_reverse_limit_order INTEGER NOT NULL DEFAULT 0, smart_criteria BLOB, play_order INTEGER NOT NULL DEFAULT 0, is_reversed INTEGER NOT NULL DEFAULT 0, album_field_order INTEGER NOT NULL DEFAULT 0, repeat_mode INTEGER NOT NULL DEFAULT 0, shuffle_items INTEGER NOT NULL DEFAULT 0, has_been_shuffled INTEGER NOT NULL DEFAULT 0, filepath TEXT NOT NULL DEFAULT '', is_saveable INTEGER NOT NULL DEFAULT 0, is_src_remote INTEGER NOT NULL DEFAULT 0, is_ignored_syncing INTEGER NOT NULL DEFAULT 0, container_type INTEGER NOT NULL DEFAULT 0, is_container_type_active_target INTEGER NOT NULL DEFAULT 0, orig_date_modified INTEGER NOT NULL DEFAULT 0, store_cloud_id INTEGER NOT NULL DEFAULT 0, has_cloud_play_order INTEGER NOT NULL DEFAULT 0, cloud_global_id TEXT NOT NULL DEFAULT '', cloud_share_url TEXT NOT NULL DEFAULT '', cloud_is_public INTEGER NOT NULL DEFAULT 0, cloud_is_visible INTEGER NOT NULL DEFAULT 0, cloud_is_subscribed INTEGER NOT NULL DEFAULT 0, cloud_is_curator_playlist INTEGER NOT NULL DEFAULT 0, cloud_author_store_id INTEGER NOT NULL DEFAULT 0, cloud_author_display_name TEXT NOT NULL DEFAULT '', cloud_author_store_url TEXT NOT NULL DEFAULT '', cloud_min_refresh_interval INTEGER NOT NULL DEFAULT 0, cloud_last_update_time INTEGER NOT NULL DEFAULT 0, cloud_user_count INTEGER NOT NULL DEFAULT 0, cloud_global_play_count INTEGER NOT NULL DEFAULT 0, cloud_global_like_count INTEGER NOT NULL DEFAULT 0, keep_local INTEGER NOT NULL DEFAULT 0, keep_local_status INTEGER NOT NULL DEFAULT 0, keep_local_status_reason INTEGER NOT NULL DEFAULT 0, keep_local_constraints INTEGER NOT NULL DEFAULT 0, external_vendor_identifier TEXT NOT NULL DEFAULT '', external_vendor_display_name TEXT NOT NULL DEFAULT '', external_vendor_container_tag TEXT NOT NULL DEFAULT '', is_external_vendor_playlist INTEGER NOT NULL DEFAULT 0, sync_id INTEGER NOT NULL DEFAULT 0, cloud_is_sharing_disabled INTEGER NOT NULL DEFAULT 0, cloud_version_hash TEXT NOT NULL DEFAULT '', date_played_local INTEGER NOT NULL DEFAULT 0, cloud_author_handle TEXT NOT NULL DEFAULT '', cloud_universal_library_id TEXT NOT NULL DEFAULT '', should_display_index INTEGER NOT NULL DEFAULT 0, date_downloaded INTEGER NOT NULL DEFAULT 0, category_type_mask INTEGER NOT NULL DEFAULT 0, grouping_sort_key TEXT NOT NULL DEFAULT '', traits INTEGER NOT NULL DEFAULT 0, liked_state_changed_date INTEGER NOT NULL DEFAULT 0, is_collaborative INTEGER NOT NULL DEFAULT 0, collaborator_invite_options INTEGER NOT NULL DEFAULT 0, collaborator_permissions INTEGER NOT NULL DEFAULT 0, collaboration_invitation_link TEXT NOT NULL DEFAULT '', cover_artwork_recipe TEXT NOT NULL DEFAULT '', collaboration_invitation_url_expiration_date INTEGER NOT NULL DEFAULT 0, collaboration_join_request_pending INTEGER NOT NULL DEFAULT 0, collaborator_status INTEGER NOT NULL DEFAULT 0)"}] & 1) == 0)
  {
    v6 = os_log_create("com.apple.amp.medialibrary", "Default");
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_15;
    }

    v13 = 0;
    v7 = "Failed to create continer_new table";
    v8 = &v13;
LABEL_14:
    _os_log_impl(&dword_22D2FA000, v6, OS_LOG_TYPE_ERROR, v7, v8, 2u);
    goto LABEL_15;
  }

  if (([v3 executeUpdate:{@"INSERT INTO container_new (container_pid, distinguished_kind, date_created, date_modified, date_played, name, name_order, is_owner, is_editable, parent_pid, contained_media_type, workout_template_id, is_hidden, is_ignorable_itunes_playlist, description, play_count_user, play_count_recent, liked_state, smart_evaluation_order, smart_is_folder, smart_is_dynamic, smart_is_filtered, smart_is_genius, smart_enabled_only, smart_is_limited, smart_limit_kind, smart_limit_order, smart_limit_value, smart_reverse_limit_order, smart_criteria, play_order, is_reversed, album_field_order, repeat_mode, shuffle_items, has_been_shuffled, filepath, is_saveable, is_src_remote, is_ignored_syncing, container_type, is_container_type_active_target, orig_date_modified, store_cloud_id, has_cloud_play_order, cloud_global_id, cloud_share_url, cloud_is_public, cloud_is_visible, cloud_is_subscribed, cloud_is_curator_playlist, cloud_author_store_id, cloud_author_display_name, cloud_author_store_url, cloud_min_refresh_interval, cloud_last_update_time, cloud_user_count, cloud_global_play_count, cloud_global_like_count, keep_local, keep_local_status, keep_local_constraints, keep_local_status_reason, external_vendor_identifier, external_vendor_display_name, external_vendor_container_tag, is_external_vendor_playlist, sync_id, cloud_is_sharing_disabled, cloud_version_hash, date_played_local, cloud_author_handle, cloud_universal_library_id, should_display_index, date_downloaded, category_type_mask, grouping_sort_key, traits, liked_state_changed_date, is_collaborative, collaborator_invite_options, collaborator_permissions, collaboration_invitation_link, cover_artwork_recipe, collaboration_invitation_url_expiration_date, collaboration_join_request_pending, collaborator_status) SELECT container_pid, distinguished_kind, date_created, date_modified, date_played, name, name_order, is_owner, is_editable, parent_pid, contained_media_type, workout_template_id, is_hidden, is_ignorable_itunes_playlist, description, play_count_user, play_count_recent, liked_state, smart_evaluation_order, smart_is_folder, smart_is_dynamic, smart_is_filtered, smart_is_genius, smart_enabled_only, smart_is_limited, smart_limit_kind, smart_limit_order, smart_limit_value, smart_reverse_limit_order, smart_criteria, play_order, is_reversed, album_field_order, repeat_mode, shuffle_items, has_been_shuffled, filepath, is_saveable, is_src_remote, is_ignored_syncing, container_type, is_container_type_active_target, orig_date_modified, store_cloud_id, has_cloud_play_order, cloud_global_id, cloud_share_url, cloud_is_public, cloud_is_visible, cloud_is_subscribed, cloud_is_curator_playlist, cloud_author_store_id, cloud_author_display_name, cloud_author_store_url, cloud_min_refresh_interval, cloud_last_update_time, cloud_user_count, cloud_global_play_count, cloud_global_like_count, keep_local, keep_local_status, keep_local_constraints, keep_local_status_reason, external_vendor_identifier, external_vendor_display_name, external_vendor_container_tag, is_external_vendor_playlist, sync_id, cloud_is_sharing_disabled, cloud_version_hash, date_played_local, cloud_author_handle, cloud_universal_library_id, should_display_index, date_downloaded, category_type_mask, grouping_sort_key, traits, liked_state_changed_date, is_collaborative, collaborator_invite_options, collaborator_permissions, collaboration_invitation_link, cover_artwork_recipe, collaboration_invitation_url_expiration_date, collaboration_join_request_pending, collaborator_status FROM container"}] & 1) == 0)
  {
    v6 = os_log_create("com.apple.amp.medialibrary", "Default");
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_15;
    }

    v12 = 0;
    v7 = "Failed to populate container table";
    v8 = &v12;
    goto LABEL_14;
  }

  if (([v3 executeUpdate:@"DROP TABLE container"] & 1) == 0)
  {
    v6 = os_log_create("com.apple.amp.medialibrary", "Default");
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_15;
    }

    v11 = 0;
    v7 = "Failed to drop container table";
    v8 = &v11;
    goto LABEL_14;
  }

  if (([v3 executeUpdate:@"ALTER TABLE container_new RENAME TO container"] & 1) == 0)
  {
    v6 = os_log_create("com.apple.amp.medialibrary", "Default");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v10 = 0;
      v7 = "Failed to rename container table";
      v8 = &v10;
      goto LABEL_14;
    }

LABEL_15:

    v5 = 0;
    goto LABEL_16;
  }

  [v4 setCurrentUserVersion:2120050];
  v5 = [v3 executeUpdate:@"PRAGMA user_version = 2120050;"];
LABEL_16:

  return v5;
}

uint64_t ML3MigrationFunction2120050to2120060(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  [v3 setNeedsToMarkArtworkPurgeable:1];
  [v3 setCurrentUserVersion:2120060];

  v5 = [v4 executeUpdate:@"PRAGMA user_version = 2120060;"];
  return v5;
}

uint64_t ML3MigrationFunction2120060to2150000(void *a1, void *a2)
{
  v18[1] = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  v5 = [MEMORY[0x277CBEAA8] date];
  v6 = [MEMORY[0x277CBEA80] currentCalendar];
  v7 = [v6 dateByAddingUnit:4 value:2 toDate:v5 options:1];

  [v7 timeIntervalSinceReferenceDate];
  v8 = [MEMORY[0x277CCABB0] numberWithDouble:?];
  v18[0] = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:1];
  v15 = 0;
  v10 = [v3 executeUpdate:@"UPDATE container SET date_modified=(date_modified-978307200.0) WHERE is_owner=1 AND date_modified > ?" withParameters:v9 error:&v15];
  v11 = v15;

  if (v10)
  {
    [v4 setCurrentUserVersion:2150000];
    v12 = [v3 executeUpdate:@"PRAGMA user_version = 2150000;"];
  }

  else
  {
    v13 = os_log_create("com.apple.amp.medialibrary", "Default");
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v17 = v11;
      _os_log_impl(&dword_22D2FA000, v13, OS_LOG_TYPE_ERROR, "Failed to update date_modified for container table. error=%{public}@", buf, 0xCu);
    }

    v12 = 0;
  }

  return v12;
}

uint64_t ML3MigrationFunction2150000to2160000(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  [v3 setNeedsToMarkArtworkPurgeable:1];
  [v3 setCurrentUserVersion:2160000];

  v5 = [v4 executeUpdate:@"PRAGMA user_version = 2160000;"];
  return v5;
}

uint64_t ML3MigrationFunction2160000to2200000(void *a1, void *a2)
{
  v3 = a1;
  [a2 setCurrentUserVersion:2200000];
  v4 = [v3 executeUpdate:@"PRAGMA user_version = 2200000;"];

  return v4;
}

uint64_t ML3MigrationFunction2200000to2200010(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if ((ML3MigrationColumnExistsInTable(v3, @"position", @"container_author") & 1) != 0 || [v3 executeUpdate:@"ALTER TABLE container_author ADD COLUMN position INTEGER NOT NULL DEFAULT 0"] && objc_msgSend(v3, "executeUpdate:", @"CREATE INDEX IF NOT EXISTS ContainerAuthorPosition ON container_author (position ASC)"))
  {
    [v4 setCurrentUserVersion:2200010];
    v5 = [v3 executeUpdate:@"PRAGMA user_version = 2200010;"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t ML3MigrationFunction2200010to2200020(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if (([v3 executeUpdate:{@"CREATE TABLE container_new (container_pid INTEGER PRIMARY KEY, distinguished_kind INTEGER NOT NULL DEFAULT 0, date_created INTEGER NOT NULL DEFAULT 0, date_modified INTEGER NOT NULL DEFAULT 0, date_played INTEGER NOT NULL DEFAULT 0, name TEXT NOT NULL DEFAULT '', name_order INTEGER NOT NULL DEFAULT 0, is_owner INTEGER NOT NULL DEFAULT 1, is_editable INTEGER NOT NULL DEFAULT 0, parent_pid INTEGER NOT NULL DEFAULT 0, contained_media_type INTEGER NOT NULL DEFAULT 0, workout_template_id INTEGER NOT NULL DEFAULT 0, is_hidden INTEGER NOT NULL DEFAULT 0, is_ignorable_itunes_playlist INTEGER NOT NULL DEFAULT 0, description TEXT, play_count_user INTEGER NOT NULL DEFAULT 0, play_count_recent INTEGER NOT NULL DEFAULT 0, liked_state INTEGER NOT NULL DEFAULT 0, smart_evaluation_order INTEGER NOT NULL DEFAULT 0, smart_is_folder INTEGER NOT NULL DEFAULT 0, smart_is_dynamic INTEGER NOT NULL DEFAULT 0, smart_is_filtered INTEGER NOT NULL DEFAULT 0, smart_is_genius INTEGER NOT NULL DEFAULT 0, smart_enabled_only INTEGER NOT NULL DEFAULT 0, smart_is_limited INTEGER NOT NULL DEFAULT 0, smart_limit_kind INTEGER NOT NULL DEFAULT 0, smart_limit_order INTEGER NOT NULL DEFAULT 0, smart_limit_value INTEGER NOT NULL DEFAULT 0, smart_reverse_limit_order INTEGER NOT NULL DEFAULT 0, smart_criteria BLOB, play_order INTEGER NOT NULL DEFAULT 0, is_reversed INTEGER NOT NULL DEFAULT 0, album_field_order INTEGER NOT NULL DEFAULT 0, repeat_mode INTEGER NOT NULL DEFAULT 0, shuffle_items INTEGER NOT NULL DEFAULT 0, has_been_shuffled INTEGER NOT NULL DEFAULT 0, filepath TEXT NOT NULL DEFAULT '', is_saveable INTEGER NOT NULL DEFAULT 0, is_src_remote INTEGER NOT NULL DEFAULT 0, is_ignored_syncing INTEGER NOT NULL DEFAULT 0, container_type INTEGER NOT NULL DEFAULT 0, is_container_type_active_target INTEGER NOT NULL DEFAULT 0, orig_date_modified INTEGER NOT NULL DEFAULT 0, store_cloud_id INTEGER NOT NULL DEFAULT 0, has_cloud_play_order INTEGER NOT NULL DEFAULT 0, cloud_global_id TEXT NOT NULL DEFAULT '', cloud_share_url TEXT NOT NULL DEFAULT '', cloud_is_public INTEGER NOT NULL DEFAULT 0, cloud_is_visible INTEGER NOT NULL DEFAULT 0, cloud_is_subscribed INTEGER NOT NULL DEFAULT 0, cloud_is_curator_playlist INTEGER NOT NULL DEFAULT 0, cloud_author_store_id INTEGER NOT NULL DEFAULT 0, cloud_author_display_name TEXT NOT NULL DEFAULT '', cloud_author_store_url TEXT NOT NULL DEFAULT '', cloud_min_refresh_interval INTEGER NOT NULL DEFAULT 0, cloud_last_update_time INTEGER NOT NULL DEFAULT 0, cloud_user_count INTEGER NOT NULL DEFAULT 0, cloud_global_play_count INTEGER NOT NULL DEFAULT 0, cloud_global_like_count INTEGER NOT NULL DEFAULT 0, keep_local INTEGER NOT NULL DEFAULT 0, keep_local_status INTEGER NOT NULL DEFAULT 0, keep_local_status_reason INTEGER NOT NULL DEFAULT 0, keep_local_constraints INTEGER NOT NULL DEFAULT 0, external_vendor_identifier TEXT NOT NULL DEFAULT '', external_vendor_display_name TEXT NOT NULL DEFAULT '', external_vendor_container_tag TEXT NOT NULL DEFAULT '', is_external_vendor_playlist INTEGER NOT NULL DEFAULT 0, sync_id INTEGER NOT NULL DEFAULT 0, cloud_is_sharing_disabled INTEGER NOT NULL DEFAULT 0, cloud_version_hash TEXT NOT NULL DEFAULT '', date_played_local INTEGER NOT NULL DEFAULT 0, cloud_author_handle TEXT NOT NULL DEFAULT '', cloud_universal_library_id TEXT NOT NULL DEFAULT '', should_display_index INTEGER NOT NULL DEFAULT 0, date_downloaded INTEGER NOT NULL DEFAULT 0, category_type_mask INTEGER NOT NULL DEFAULT 0, grouping_sort_key TEXT NOT NULL DEFAULT '', traits INTEGER NOT NULL DEFAULT 0, liked_state_changed_date INTEGER NOT NULL DEFAULT 0, is_collaborative INTEGER NOT NULL DEFAULT 0, collaborator_invite_options INTEGER NOT NULL DEFAULT 0, collaborator_permissions INTEGER NOT NULL DEFAULT 0, collaboration_invitation_link TEXT NOT NULL DEFAULT '', cover_artwork_recipe TEXT NOT NULL DEFAULT '', collaboration_invitation_url_expiration_date INTEGER NOT NULL DEFAULT 0, collaboration_join_request_pending INTEGER NOT NULL DEFAULT 0, collaborator_status INTEGER NOT NULL DEFAULT 0)"}] & 1) == 0)
  {
    v6 = os_log_create("com.apple.amp.medialibrary", "Default");
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_15;
    }

    v13 = 0;
    v7 = "Failed to create continer_new table";
    v8 = &v13;
LABEL_14:
    _os_log_impl(&dword_22D2FA000, v6, OS_LOG_TYPE_ERROR, v7, v8, 2u);
    goto LABEL_15;
  }

  if (([v3 executeUpdate:{@"INSERT INTO container_new (container_pid, distinguished_kind, date_created, date_modified, date_played, name, name_order, is_owner, is_editable, parent_pid, contained_media_type, workout_template_id, is_hidden, is_ignorable_itunes_playlist, description, play_count_user, play_count_recent, liked_state, smart_evaluation_order, smart_is_folder, smart_is_dynamic, smart_is_filtered, smart_is_genius, smart_enabled_only, smart_is_limited, smart_limit_kind, smart_limit_order, smart_limit_value, smart_reverse_limit_order, smart_criteria, play_order, is_reversed, album_field_order, repeat_mode, shuffle_items, has_been_shuffled, filepath, is_saveable, is_src_remote, is_ignored_syncing, container_type, is_container_type_active_target, orig_date_modified, store_cloud_id, has_cloud_play_order, cloud_global_id, cloud_share_url, cloud_is_public, cloud_is_visible, cloud_is_subscribed, cloud_is_curator_playlist, cloud_author_store_id, cloud_author_display_name, cloud_author_store_url, cloud_min_refresh_interval, cloud_last_update_time, cloud_user_count, cloud_global_play_count, cloud_global_like_count, keep_local, keep_local_status, keep_local_constraints, keep_local_status_reason, external_vendor_identifier, external_vendor_display_name, external_vendor_container_tag, is_external_vendor_playlist, sync_id, cloud_is_sharing_disabled, cloud_version_hash, date_played_local, cloud_author_handle, cloud_universal_library_id, should_display_index, date_downloaded, category_type_mask, grouping_sort_key, traits, liked_state_changed_date, is_collaborative, collaborator_invite_options, collaborator_permissions, collaboration_invitation_link, cover_artwork_recipe, collaboration_invitation_url_expiration_date, collaboration_join_request_pending, collaborator_status) SELECT container_pid, distinguished_kind, date_created, date_modified, date_played, name, name_order, is_owner, is_editable, parent_pid, contained_media_type, workout_template_id, is_hidden, is_ignorable_itunes_playlist, description, play_count_user, play_count_recent, liked_state, smart_evaluation_order, smart_is_folder, smart_is_dynamic, smart_is_filtered, smart_is_genius, smart_enabled_only, smart_is_limited, smart_limit_kind, smart_limit_order, smart_limit_value, smart_reverse_limit_order, smart_criteria, play_order, is_reversed, album_field_order, repeat_mode, shuffle_items, has_been_shuffled, filepath, is_saveable, is_src_remote, is_ignored_syncing, container_type, is_container_type_active_target, orig_date_modified, store_cloud_id, has_cloud_play_order, cloud_global_id, cloud_share_url, cloud_is_public, cloud_is_visible, cloud_is_subscribed, cloud_is_curator_playlist, cloud_author_store_id, cloud_author_display_name, cloud_author_store_url, cloud_min_refresh_interval, cloud_last_update_time, cloud_user_count, cloud_global_play_count, cloud_global_like_count, keep_local, keep_local_status, keep_local_constraints, keep_local_status_reason, external_vendor_identifier, external_vendor_display_name, external_vendor_container_tag, is_external_vendor_playlist, sync_id, cloud_is_sharing_disabled, cloud_version_hash, date_played_local, cloud_author_handle, cloud_universal_library_id, should_display_index, date_downloaded, category_type_mask, grouping_sort_key, traits, liked_state_changed_date, is_collaborative, collaborator_invite_options, collaborator_permissions, collaboration_invitation_link, cover_artwork_recipe, collaboration_invitation_url_expiration_date, collaboration_join_request_pending, collaborator_status FROM container"}] & 1) == 0)
  {
    v6 = os_log_create("com.apple.amp.medialibrary", "Default");
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_15;
    }

    v12 = 0;
    v7 = "Failed to populate container table";
    v8 = &v12;
    goto LABEL_14;
  }

  if (([v3 executeUpdate:@"DROP TABLE container"] & 1) == 0)
  {
    v6 = os_log_create("com.apple.amp.medialibrary", "Default");
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_15;
    }

    v11 = 0;
    v7 = "Failed to drop container table";
    v8 = &v11;
    goto LABEL_14;
  }

  if (([v3 executeUpdate:@"ALTER TABLE container_new RENAME TO container"] & 1) == 0)
  {
    v6 = os_log_create("com.apple.amp.medialibrary", "Default");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v10 = 0;
      v7 = "Failed to rename container table";
      v8 = &v10;
      goto LABEL_14;
    }

LABEL_15:

    v5 = 0;
    goto LABEL_16;
  }

  [v4 setCurrentUserVersion:2200020];
  v5 = [v3 executeUpdate:@"PRAGMA user_version = 2200020;"];
LABEL_16:

  return v5;
}

uint64_t ML3MigrationFunction2200020to2200030(void *a1, void *a2)
{
  v33 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v24 = a2;
  if ([v3 executeUpdate:@"ALTER TABLE container_item ADD COLUMN occurrence_id TEXT NOT NULL DEFAULT ''"])
  {
    v23 = [v3 executeQuery:{@"SELECT container_pid, container_item_pid, item_pid, subscription_store_item_id, cloud_universal_library_id, store_item_id, cloud_status, in_my_library, playback_endpoint_type FROM container_item LEFT OUTER JOIN item USING (item_pid) LEFT OUTER JOIN item_store USING (item_pid) ORDER BY container_pid, position"}];
    v4 = [MEMORY[0x277CCA940] set];
    v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v30[0] = 0;
    v30[1] = v30;
    v30[2] = 0x2020000000;
    v30[3] = 0;
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __ML3MigrationFunction2200020to2200030_block_invoke;
    v26[3] = &unk_27875D2D8;
    v29 = v30;
    v22 = v4;
    v27 = v22;
    v6 = v5;
    v28 = v6;
    [v23 enumerateRowsWithBlock:v26];
    if (![v6 count])
    {
      goto LABEL_19;
    }

    if (([v3 executeUpdate:{@"CREATE TEMPORARY TABLE container_item_temp (container_item_pid INTEGER NOT NULL, occurrence_id TEXT NOT NULL)"}] & 1) == 0)
    {
      goto LABEL_20;
    }

    v7 = [v6 count];
    v8 = 0;
    *&v9 = 138412290;
    v21 = v9;
    while (v7 > v8)
    {
      v10 = objc_autoreleasePoolPush();
      if (v7 - v8 >= 5)
      {
        v11 = 5;
      }

      else
      {
        v11 = v7 - v8;
      }

      v12 = +[ML3DatabaseStatementRenderer defaultRenderer];
      v13 = [v12 statementWithPrefix:@"INSERT INTO container_item_temp (container_item_pid inParameterCount:occurrence_id) VALUES" valueCount:{2, v11}];

      v14 = [v6 subarrayWithRange:{v8, v11}];
      v15 = [v14 msv_flatMap:&__block_literal_global_2434];

      v25 = 0;
      v16 = [v3 executeUpdate:v13 withParameters:v15 error:&v25];
      v17 = v25;
      if (v16)
      {
        v8 += v11;
      }

      else
      {
        v18 = os_log_create("com.apple.amp.medialibrary", "Migration");
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          *buf = v21;
          v32 = v17;
          _os_log_impl(&dword_22D2FA000, v18, OS_LOG_TYPE_ERROR, "Encountered error backfilling container_item.occurrence_id. error=%@", buf, 0xCu);
        }
      }

      objc_autoreleasePoolPop(v10);
      if ((v16 & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if ([v3 executeUpdate:@"UPDATE container_item SET occurrence_id = (SELECT occurrence_id FROM container_item_temp WHERE container_item_temp.container_item_pid = container_item.container_item_pid)"] && objc_msgSend(v3, "executeUpdate:", @"DROP TABLE container_item_temp"))
    {
LABEL_19:
      [v24 setCurrentUserVersion:{2200030, v21}];
      v19 = [v3 executeUpdate:@"PRAGMA user_version = 2200030;"];
    }

    else
    {
LABEL_20:
      v19 = 0;
    }

    _Block_object_dispose(v30, 8);
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

void sub_22D3FDF18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __ML3MigrationFunction2200020to2200030_block_invoke(uint64_t a1, void *a2)
{
  v19[2] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 int64ForColumnIndex:0];
  v18 = [v3 int64ForColumnIndex:1];
  v5 = [v3 int64ForColumnIndex:2];
  v6 = [v3 int64ForColumnIndex:3];
  v7 = [v3 stringForColumnIndex:4];
  v8 = [v3 int64ForColumnIndex:5];
  v9 = [v3 int64ForColumnIndex:6];
  v10 = [v3 int64ForColumnIndex:7];
  v11 = [v3 int64ForColumnIndex:8];

  if (*(*(*(a1 + 48) + 8) + 24) != v4)
  {
    [*(a1 + 32) removeAllObjects];
    *(*(*(a1 + 48) + 8) + 24) = v4;
  }

  v12 = ML3ContainerItemOccurrencePrefix(v6, v7, v8, v5, v9, v10 != 0, v11);
  v13 = [*(a1 + 32) countForObject:v12];
  [*(a1 + 32) addObject:v12];
  v14 = [v12 stringByAppendingFormat:@"_%lld", v13];
  v15 = *(a1 + 40);
  v16 = [MEMORY[0x277CCABB0] numberWithLongLong:v18];
  v19[0] = v16;
  v19[1] = v14;
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:2];
  [v15 addObject:v17];
}

uint64_t ML3MigrationFunction2200030to2200040(void *a1, void *a2)
{
  v18[1] = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  v5 = [MEMORY[0x277CBEAA8] date];
  v6 = [MEMORY[0x277CBEA80] currentCalendar];
  v7 = [v6 dateByAddingUnit:4 value:2 toDate:v5 options:1];

  [v7 timeIntervalSinceReferenceDate];
  v8 = [MEMORY[0x277CCABB0] numberWithDouble:?];
  v18[0] = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:1];
  v15 = 0;
  v10 = [v3 executeUpdate:@"UPDATE container SET date_modified=(date_modified-978307200.0) WHERE is_owner=1 AND date_modified > ?" withParameters:v9 error:&v15];
  v11 = v15;

  if (v10)
  {
    [v4 setCurrentUserVersion:2200040];
    v12 = [v3 executeUpdate:@"PRAGMA user_version = 2200040;"];
  }

  else
  {
    v13 = os_log_create("com.apple.amp.medialibrary", "Default");
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v17 = v11;
      _os_log_impl(&dword_22D2FA000, v13, OS_LOG_TYPE_ERROR, "Failed to update date_modified for container table. error=%{public}@", buf, 0xCu);
    }

    v12 = 0;
  }

  return v12;
}

uint64_t ML3MigrationFunction2200040to2200050(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  [v3 setNeedsToRecreateIndexes:1];
  [v3 setCurrentUserVersion:2200050];

  v5 = [v4 executeUpdate:@"PRAGMA user_version = 2200050;"];
  return v5;
}

uint64_t ML3MigrationFunction2200050to2200060(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if ([v3 executeUpdate:@"ALTER TABLE item_store ADD COLUMN store_canonical_id TEXT NOT NULL DEFAULT ''"])
  {
    [v4 setCurrentUserVersion:2200060];
    v5 = [v3 executeUpdate:@"PRAGMA user_version = 2200060;"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t ML3MigrationFunction2200060to2200070(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  [v3 setNeedsToMarkArtworkPurgeable:1];
  [v3 setCurrentUserVersion:2200070];

  v5 = [v4 executeUpdate:@"PRAGMA user_version = 2200070;"];
  return v5;
}

uint64_t ML3MigrationFunction2200070to2220000(void *a1, void *a2)
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__2414;
  v22 = __Block_byref_object_dispose__2415;
  v23 = [MEMORY[0x277CBEB18] array];
  v5 = [v3 executeQuery:@"SELECT item_pid FROM item_store WHERE (store_saga_id = 0 AND cloud_universal_library_id != '')"];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __ML3MigrationFunction2200070to2220000_block_invoke;
  v17[3] = &unk_2787653C8;
  v17[4] = &v18;
  [v5 enumerateRowsWithBlock:v17];
  v6 = os_log_create("com.apple.amp.medialibrary", "Default_Oversize");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = v19[5];
    *buf = 138543362;
    v25 = v7;
    _os_log_impl(&dword_22D2FA000, v6, OS_LOG_TYPE_DEFAULT, "Clearing match properties for trackPIDS=%{public}@", buf, 0xCu);
  }

  v8 = v19[5];
  v12 = MEMORY[0x277D85DD0];
  v13 = 3221225472;
  v14 = __ML3MigrationFunction2200070to2220000_block_invoke_3529;
  v15 = &unk_278765D38;
  v9 = v3;
  v16 = v9;
  [v8 enumerateObjectsUsingBlock:&v12];
  [v4 setCurrentUserVersion:{2220000, v12, v13, v14, v15}];
  v10 = [v9 executeUpdate:@"PRAGMA user_version = 2220000;"];

  _Block_object_dispose(&v18, 8);
  return v10;
}

void sub_22D3FE6C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __ML3MigrationFunction2200070to2220000_block_invoke(uint64_t a1, void *a2)
{
  v2 = *(*(*(a1 + 32) + 8) + 40);
  v3 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(a2, "int64ForColumnIndex:", 0)}];
  [v2 addObject:v3];
}

void __ML3MigrationFunction2200070to2220000_block_invoke_3529(uint64_t a1, void *a2)
{
  v15[8] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *(a1 + 32);
  v15[0] = &stru_28408B690;
  v15[1] = &unk_2840C88B8;
  v15[2] = &unk_2840C8A08;
  v15[3] = &unk_2840C88B8;
  v15[4] = &unk_2840C88B8;
  v15[5] = &stru_28408B690;
  v15[6] = &stru_28408B690;
  v15[7] = v3;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:8];
  v10 = 0;
  v6 = [v4 executeUpdate:@"UPDATE item_store SET match_redownload_params=? withParameters:needs_reporting=? error:{playback_endpoint_type=?, cloud_playback_endpoint_type=?, cloud_in_my_library=?, cloud_album_id=?, cloud_universal_library_id=? WHERE item_pid=?", v5, &v10}];
  v7 = v10;

  if ((v6 & 1) == 0)
  {
    v8 = os_log_create("com.apple.amp.medialibrary", "Default");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = [v3 longLongValue];
      *buf = 134218242;
      v12 = v9;
      v13 = 2114;
      v14 = v7;
      _os_log_impl(&dword_22D2FA000, v8, OS_LOG_TYPE_ERROR, "Failed to clear match source properties for track_pid=%lld, error=%{public}@", buf, 0x16u);
    }
  }
}

uint64_t ML3MigrationFunction2220000to2220010(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if ([v3 executeUpdate:@"ALTER TABLE item_store ADD COLUMN tv_show_canonical_id TEXT NOT NULL DEFAULT ''"] && objc_msgSend(v3, "executeUpdate:", @"ALTER TABLE item_store ADD COLUMN tv_season_canonical_id TEXT NOT NULL DEFAULT ''"))
  {
    [v4 setCurrentUserVersion:2220010];
    v5 = [v3 executeUpdate:@"PRAGMA user_version = 2220010;"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t ML3MigrationFunction2220010to2220020(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if ([v3 executeUpdate:@"ALTER TABLE album_artist ADD COLUMN name_order INTEGER NOT NULL DEFAULT 0"] && objc_msgSend(v3, "executeUpdate:", @"UPDATE album_artist SET name_order = (SELECT IFNULL(name_order, 0) FROM sort_map WHERE sort_map.name=album_artist.album_artist) WHERE album_artist.representative_item_pid != 0"))
  {
    [v4 setCurrentUserVersion:2220020];
    v5 = [v3 executeUpdate:@"PRAGMA user_version = 2220020;"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t ML3MigrationFunction2220020to2240000(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if ([v3 executeUpdate:{@"CREATE TABLE library_pins (pin_pid INTEGER PRIMARY KEY, entity_pid INTEGER NOT NULL DEFAULT 0, entity_type INTEGER NOT NULL DEFAULT 0, default_action INTEGER NOT NULL DEFAULT 0, position INTEGER NOT NULL DEFAULT 0, saga_id INTEGER NOT NULL DEFAULT 0, cloud_library_id TEXT NOT NULL DEFAULT '', position_uuid TEXT NOT NULL DEFAULT '', UNIQUE (entity_pid, entity_type))"}])
  {
    [v4 setCurrentUserVersion:2240000];
    v5 = [v3 executeUpdate:@"PRAGMA user_version = 2240000;"];
  }

  else
  {
    v6 = os_log_create("com.apple.amp.medialibrary", "Default");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *v8 = 0;
      _os_log_impl(&dword_22D2FA000, v6, OS_LOG_TYPE_ERROR, "Failed to create library pins table", v8, 2u);
    }

    v5 = 0;
  }

  return v5;
}

uint64_t ML3MigrationFunction2240000to2240010(void *a1, void *a2)
{
  v43 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  v35 = 0;
  v36 = &v35;
  v37 = 0x3032000000;
  v38 = __Block_byref_object_copy__2414;
  v39 = __Block_byref_object_dispose__2415;
  v40 = [MEMORY[0x277CBEB18] array];
  v29 = 0;
  v30 = &v29;
  v31 = 0x3032000000;
  v32 = __Block_byref_object_copy__2414;
  v33 = __Block_byref_object_dispose__2415;
  v34 = [MEMORY[0x277CBEB58] set];
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = __Block_byref_object_copy__2414;
  v27 = __Block_byref_object_dispose__2415;
  v28 = [v3 executeQuery:@"SELECT item_pid FROM item JOIN item_store using(item_pid) WHERE sync_id=0 AND store_saga_id=0 AND purchase_history_id=0 AND (is_ota_purchased OR base_location_id >= 250)"];;
  v5 = v24[5];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __ML3MigrationFunction2240000to2240010_block_invoke;
  v22[3] = &unk_2787653C8;
  v22[4] = &v29;
  [v5 enumerateRowsWithBlock:v22];
  v6 = os_log_create("com.apple.amp.medialibrary", "Default");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [v30[5] count];
    *buf = 67109120;
    v42 = v7;
    _os_log_impl(&dword_22D2FA000, v6, OS_LOG_TYPE_DEFAULT, "Found %d possible downloaded tracks to remove", buf, 8u);
  }

  v8 = v30[5];
  v15 = MEMORY[0x277D85DD0];
  v16 = 3221225472;
  v17 = __ML3MigrationFunction2240000to2240010_block_invoke_3566;
  v18 = &unk_27875D348;
  v20 = &v23;
  v9 = v3;
  v19 = v9;
  v21 = &v35;
  [v8 enumerateObjectsUsingBlock:&v15];
  if ([v36[5] count])
  {
    v10 = [ML3MusicLibrary alloc];
    v11 = [v9 databasePath];
    v12 = [(ML3MusicLibrary *)v10 initWithPath:v11];

    [ML3Track clearLocationFromLibrary:v12 persistentIDs:v36[5] disableKeepLocal:1 usingConnection:v9];
  }

  [v4 setCurrentUserVersion:2240010];
  v13 = [v9 executeUpdate:@"PRAGMA user_version = 2240010;"];

  _Block_object_dispose(&v23, 8);
  _Block_object_dispose(&v29, 8);

  _Block_object_dispose(&v35, 8);
  return v13;
}

void sub_22D3FEE2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose((v27 - 128), 8);
  _Unwind_Resume(a1);
}

void __ML3MigrationFunction2240000to2240010_block_invoke(uint64_t a1, void *a2)
{
  v2 = *(*(*(a1 + 32) + 8) + 40);
  v3 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(a2, "int64ForColumnIndex:", 0)}];
  [v2 addObject:v3];
}

void __ML3MigrationFunction2240000to2240010_block_invoke_3566(void *a1, void *a2)
{
  v77[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v65 = 0;
  v66 = &v65;
  v67 = 0x3032000000;
  v68 = __Block_byref_object_copy__2414;
  v69 = __Block_byref_object_dispose__2415;
  v70 = 0;
  v61 = 0;
  v62 = &v61;
  v63 = 0x2020000000;
  v64 = 0;
  v57 = 0;
  v58 = &v57;
  v59 = 0x2020000000;
  v60 = 0;
  v53 = 0;
  v54 = &v53;
  v55 = 0x2020000000;
  v56 = 0;
  v49 = 0;
  v50 = &v49;
  v51 = 0x2020000000;
  v52 = 0;
  v45 = 0;
  v46 = &v45;
  v47 = 0x2020000000;
  v48 = 0;
  v41 = 0;
  v42 = &v41;
  v43 = 0x2020000000;
  v44 = 0;
  v39[0] = 0;
  v39[1] = v39;
  v39[2] = 0x2020000000;
  v40 = 0;
  v35 = 0;
  v36 = &v35;
  v37 = 0x2020000000;
  v38 = 0;
  v4 = a1[4];
  v77[0] = v3;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v77 count:1];
  v6 = [v4 executeQuery:@"SELECT title withParameters:{album_pid, album_artist_pid, item_artist_pid, media_type, store_item_id, subscription_store_item_id, is_ota_purchased, base_location_id FROM item JOIN item_extra USING(item_pid) JOIN item_store USING(item_pid) WHERE item_pid=?", v5}];
  v7 = *(a1[5] + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  v9 = *(*(a1[5] + 8) + 40);
  v34[0] = MEMORY[0x277D85DD0];
  v34[1] = 3221225472;
  v34[2] = __ML3MigrationFunction2240000to2240010_block_invoke_2;
  v34[3] = &unk_27875D320;
  v34[4] = &v65;
  v34[5] = &v61;
  v34[6] = &v57;
  v34[7] = &v53;
  v34[8] = &v49;
  v34[9] = &v45;
  v34[10] = &v41;
  v34[11] = v39;
  v34[12] = &v35;
  [v9 enumerateRowsWithBlock:v34];
  if (v42[3])
  {
    v10 = a1[4];
    v11 = v66[5];
    if (v36[3])
    {
      v76[0] = v3;
      v76[1] = v11;
      v12 = [MEMORY[0x277CCABB0] numberWithLongLong:v62[3]];
      v76[2] = v12;
      v13 = [MEMORY[0x277CCABB0] numberWithLongLong:v58[3]];
      v76[3] = v13;
      v14 = [MEMORY[0x277CCABB0] numberWithLongLong:v54[3]];
      v76[4] = v14;
      v15 = [MEMORY[0x277CCABB0] numberWithLongLong:v50[3]];
      v76[5] = v15;
      v16 = [MEMORY[0x277CCABB0] numberWithLongLong:v42[3]];
      v76[6] = v16;
      v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v76 count:7];
      [v10 executeQuery:@"SELECT item_pid FROM item JOIN item_store using(item_pid) JOIN item_extra USING(item_pid) WHERE (item_pid != ? AND title=? AND album_pid=? AND album_artist_pid=? AND item_artist_pid=? AND media_type=? AND subscription_store_item_id=? AND base_location_id > 0) LIMIT 1;" withParameters:v17];
    }

    else
    {
      v75[0] = v3;
      v75[1] = v11;
      v12 = [MEMORY[0x277CCABB0] numberWithLongLong:v62[3]];
      v75[2] = v12;
      v13 = [MEMORY[0x277CCABB0] numberWithLongLong:v58[3]];
      v75[3] = v13;
      v14 = [MEMORY[0x277CCABB0] numberWithLongLong:v54[3]];
      v75[4] = v14;
      v15 = [MEMORY[0x277CCABB0] numberWithLongLong:v50[3]];
      v75[5] = v15;
      v16 = [MEMORY[0x277CCABB0] numberWithLongLong:v42[3]];
      v75[6] = v16;
      v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v75 count:7];
      [v10 executeQuery:@"SELECT item_pid FROM item JOIN item_store using(item_pid) JOIN item_extra USING(item_pid) WHERE (item_pid != ? AND title=? AND album_pid=? AND album_artist_pid=? AND item_artist_pid=? AND media_type=? AND subscription_store_item_id=?) LIMIT 1;" withParameters:v17];
    }

    v18 = LABEL_4:;
    v19 = *(a1[5] + 8);
    v20 = *(v19 + 40);
    *(v19 + 40) = v18;

    goto LABEL_14;
  }

  v21 = v36[3];
  v22 = a1[4];
  if (v46[3])
  {
    if (v21)
    {
      v23 = v66[5];
      v74[0] = v3;
      v74[1] = v23;
      v12 = [MEMORY[0x277CCABB0] numberWithLongLong:v62[3]];
      v74[2] = v12;
      v13 = [MEMORY[0x277CCABB0] numberWithLongLong:v58[3]];
      v74[3] = v13;
      v14 = [MEMORY[0x277CCABB0] numberWithLongLong:v54[3]];
      v74[4] = v14;
      v15 = [MEMORY[0x277CCABB0] numberWithLongLong:v50[3]];
      v74[5] = v15;
      v16 = [MEMORY[0x277CCABB0] numberWithLongLong:v46[3]];
      v74[6] = v16;
      v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v74 count:7];
      [v22 executeQuery:@"SELECT item_pid FROM item JOIN item_store using(item_pid) JOIN item_extra USING(item_pid) WHERE (item_pid != ? AND title=? AND album_pid=? AND album_artist_pid=? AND item_artist_pid=? AND media_type=? AND store_item_id=? AND base_location_id > 0) LIMIT 1;" withParameters:v17];
    }

    else
    {
      v26 = v66[5];
      v73[0] = v3;
      v73[1] = v26;
      v12 = [MEMORY[0x277CCABB0] numberWithLongLong:v62[3]];
      v73[2] = v12;
      v13 = [MEMORY[0x277CCABB0] numberWithLongLong:v58[3]];
      v73[3] = v13;
      v14 = [MEMORY[0x277CCABB0] numberWithLongLong:v54[3]];
      v73[4] = v14;
      v15 = [MEMORY[0x277CCABB0] numberWithLongLong:v50[3]];
      v73[5] = v15;
      v16 = [MEMORY[0x277CCABB0] numberWithLongLong:v46[3]];
      v73[6] = v16;
      v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v73 count:7];
      [v22 executeQuery:@"SELECT item_pid FROM item JOIN item_store using(item_pid) JOIN item_extra USING(item_pid) WHERE (item_pid != ? AND title=? AND album_pid=? AND album_artist_pid=? AND item_artist_pid=? AND media_type=? AND store_item_id=?) LIMIT 1;" withParameters:v17];
    }

    goto LABEL_4;
  }

  if (v21)
  {
    v24 = v66[5];
    v72[0] = v3;
    v72[1] = v24;
    v12 = [MEMORY[0x277CCABB0] numberWithLongLong:v62[3]];
    v72[2] = v12;
    v13 = [MEMORY[0x277CCABB0] numberWithLongLong:v58[3]];
    v72[3] = v13;
    v14 = [MEMORY[0x277CCABB0] numberWithLongLong:v54[3]];
    v72[4] = v14;
    v15 = [MEMORY[0x277CCABB0] numberWithLongLong:v50[3]];
    v72[5] = v15;
    v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v72 count:6];
    [v22 executeQuery:@"SELECT item_pid FROM item JOIN item_store using(item_pid) JOIN item_extra USING(item_pid) WHERE (item_pid != ? AND title=? AND album_pid=? AND album_artist_pid=? AND item_artist_pid=? AND media_type=? AND base_location_id > 0) LIMIT 1;" withParameters:v16];
  }

  else
  {
    v27 = v66[5];
    v71[0] = v3;
    v71[1] = v27;
    v12 = [MEMORY[0x277CCABB0] numberWithLongLong:v62[3]];
    v71[2] = v12;
    v13 = [MEMORY[0x277CCABB0] numberWithLongLong:v58[3]];
    v71[3] = v13;
    v14 = [MEMORY[0x277CCABB0] numberWithLongLong:v54[3]];
    v71[4] = v14;
    v15 = [MEMORY[0x277CCABB0] numberWithLongLong:v50[3]];
    v71[5] = v15;
    v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v71 count:6];
    [v22 executeQuery:@"SELECT item_pid FROM item JOIN item_store using(item_pid) JOIN item_extra USING(item_pid) WHERE (item_pid != ? AND title=? AND album_pid=? AND album_artist_pid=? AND item_artist_pid=? AND media_type=?) LIMIT 1;" withParameters:v16];
  }
  v25 = ;
  v28 = *(a1[5] + 8);
  v17 = *(v28 + 40);
  *(v28 + 40) = v25;
LABEL_14:

  v29 = *(*(a1[5] + 8) + 40);
  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = __ML3MigrationFunction2240000to2240010_block_invoke_3;
  v31[3] = &unk_278765180;
  v33 = a1[6];
  v30 = v3;
  v32 = v30;
  [v29 enumerateRowsWithBlock:v31];

  _Block_object_dispose(&v35, 8);
  _Block_object_dispose(v39, 8);
  _Block_object_dispose(&v41, 8);
  _Block_object_dispose(&v45, 8);
  _Block_object_dispose(&v49, 8);
  _Block_object_dispose(&v53, 8);
  _Block_object_dispose(&v57, 8);
  _Block_object_dispose(&v61, 8);
  _Block_object_dispose(&v65, 8);
}

void sub_22D3FF770(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41, uint64_t a42, uint64_t a43, uint64_t a44, char a45, uint64_t a46, uint64_t a47, uint64_t a48, char a49, uint64_t a50, uint64_t a51, uint64_t a52, char a53, uint64_t a54, uint64_t a55, uint64_t a56, char a57, uint64_t a58, uint64_t a59, uint64_t a60, char a61)
{
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose(&a33, 8);
  _Block_object_dispose(&a37, 8);
  _Block_object_dispose(&a41, 8);
  _Block_object_dispose(&a45, 8);
  _Block_object_dispose(&a49, 8);
  _Block_object_dispose(&a53, 8);
  _Block_object_dispose(&a57, 8);
  _Block_object_dispose(&a61, 8);
  _Unwind_Resume(a1);
}

void __ML3MigrationFunction2240000to2240010_block_invoke_2(void *a1, void *a2)
{
  v3 = a2;
  v4 = [v3 stringForColumnIndex:0];
  v5 = *(a1[4] + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  *(*(a1[5] + 8) + 24) = [v3 int64ForColumnIndex:1];
  *(*(a1[6] + 8) + 24) = [v3 int64ForColumnIndex:2];
  *(*(a1[7] + 8) + 24) = [v3 int64ForColumnIndex:3];
  *(*(a1[8] + 8) + 24) = [v3 int64ForColumnIndex:4];
  *(*(a1[9] + 8) + 24) = [v3 int64ForColumnIndex:5];
  *(*(a1[10] + 8) + 24) = [v3 int64ForColumnIndex:6];
  *(*(a1[11] + 8) + 24) = [v3 intForColumnIndex:7] != 0;
  v7 = [v3 int64ForColumnIndex:8];

  *(*(a1[12] + 8) + 24) = v7;
}

void __ML3MigrationFunction2240000to2240010_block_invoke_3(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a2;
  [*(*(*(a1 + 40) + 8) + 40) addObject:*(a1 + 32)];
  v4 = os_log_create("com.apple.amp.medialibrary", "Default");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [*(a1 + 32) longLongValue];
    v6 = 134218240;
    v7 = v5;
    v8 = 2048;
    v9 = [v3 int64ForColumnIndex:0];
    _os_log_impl(&dword_22D2FA000, v4, OS_LOG_TYPE_DEFAULT, "Will remove track with pid=%lld as it matched to downloaded track with pid=%lld", &v6, 0x16u);
  }
}

uint64_t ML3MigrationFunction2240010to2240020(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if ([v3 executeUpdate:{@"CREATE TABLE artwork_token_new (artwork_token TEXT NOT NULL DEFAULT '', artwork_source_type INTEGER NOT NULL DEFAULT 0, artwork_type INTEGER NOT NULL DEFAULT 0, entity_pid INTEGER NOT NULL DEFAULT 0, entity_type INTEGER NOT NULL DEFAULT 0, artwork_variant_type INTEGER NOT NULL DEFAULT 0, UNIQUE (artwork_source_type, artwork_type, entity_pid, entity_type, artwork_variant_type))"}] && objc_msgSend(v3, "executeUpdate:", @"INSERT INTO artwork_token_new (artwork_token, artwork_source_type, artwork_type, entity_pid, entity_type) SELECT artwork_token, artwork_source_type, artwork_type, entity_pid, entity_type FROM artwork_token") && objc_msgSend(v3, "executeUpdate:", @"DROP TABLE artwork_token") && objc_msgSend(v3, "executeUpdate:", @"ALTER TABLE artwork_token_new RENAME TO artwork_token") && objc_msgSend(v3, "executeUpdate:", @"CREATE TABLE best_artwork_token_new (entity_pid INTEGER NOT NULL DEFAULT 0, entity_type INTEGER NOT NULL DEFAULT 0, artwork_type INTEGER NOT NULL DEFAULT 0, available_artwork_token TEXT NOT NULL DEFAULT '', fetchable_artwork_token TEXT NOT NULL DEFAULT '', fetchable_artwork_source_type INTEGER NOT NULL DEFAULT 0, artwork_variant_type INTEGER NOT NULL DEFAULT 0, UNIQUE (entity_pid, entity_type, artwork_type, artwork_variant_type))") && objc_msgSend(v3, "executeUpdate:", @"INSERT INTO best_artwork_token_new (entity_pid, entity_type, artwork_type, available_artwork_token, fetchable_artwork_token, fetchable_artwork_source_type) SELECT entity_pid, entity_type, artwork_type, available_artwork_token, fetchable_artwork_token, fetchable_artwork_source_type FROM best_artwork_token") && objc_msgSend(v3, "executeUpdate:", @"DROP TABLE best_artwork_token") && objc_msgSend(v3, "executeUpdate:", @"ALTER TABLE best_artwork_token_new RENAME TO best_artwork_token") && objc_msgSend(v3, "executeUpdate:", @"CREATE TABLE artwork_new (artwork_token TEXT NOT NULL DEFAULT '', artwork_source_type INTEGER NOT NULL DEFAULT 0, relative_path TEXT NOT NULL DEFAULT '', artwork_type INTEGER NOT NULL DEFAULT 0, interest_data BLOB, artwork_variant_type INTEGER NOT NULL DEFAULT 0, UNIQUE (artwork_token, artwork_source_type, artwork_variant_type))") && objc_msgSend(v3, "executeUpdate:", @"INSERT INTO artwork_new (artwork_token, artwork_source_type, relative_path, artwork_type, interest_data) SELECT artwork_token, artwork_source_type, relative_path, artwork_type, interest_data FROM artwork") && objc_msgSend(v3, "executeUpdate:", @"DROP TABLE artwork") && objc_msgSend(v3, "executeUpdate:", @"ALTER TABLE artwork_new RENAME TO artwork"))
  {
    [v4 setNeedsToRecreateIndexes:1];
    [v4 setNeedsToRecreateTriggers:1];
    [v4 setCurrentUserVersion:2240020];
    v5 = [v3 executeUpdate:@"PRAGMA user_version = 2240020;"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t ML3MigrationFunction2240020to2240030(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if ([v3 executeUpdate:@"ALTER TABLE container ADD COLUMN edit_session_id TEXT NOT NULL DEFAULT ''"])
  {
    [v4 setCurrentUserVersion:2240030];
    v5 = [v3 executeUpdate:@"PRAGMA user_version = 2240030;"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t ML3MigrationFunction2240030to2240031(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  [v3 setNeedsToRecreateIndexes:1];
  [v3 setCurrentUserVersion:2240031];

  v5 = [v4 executeUpdate:@"PRAGMA user_version = 2240031;"];
  return v5;
}

uint64_t ML3MigrationFunction2240031to2240032(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  [v3 setNeedsToRecreateIndexes:1];
  [v3 setCurrentUserVersion:2240032];

  v5 = [v4 executeUpdate:@"PRAGMA user_version = 2240032;"];
  return v5;
}

uint64_t ML3MigrationFunction2240032to2240040(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if (([v3 executeUpdate:{@"CREATE TABLE library_pins_new (pin_pid INTEGER PRIMARY KEY, entity_pid INTEGER NOT NULL DEFAULT 0, entity_type INTEGER NOT NULL DEFAULT 0, position INTEGER NOT NULL DEFAULT 0, default_action INTEGER NOT NULL DEFAULT 1, position_uuid TEXT, UNIQUE (entity_pid, entity_type))"}] & 1) == 0)
  {
    v6 = os_log_create("com.apple.amp.medialibrary", "Default");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *v8 = 0;
      _os_log_impl(&dword_22D2FA000, v6, OS_LOG_TYPE_ERROR, "Failed to create library pins table", v8, 2u);
    }

    goto LABEL_9;
  }

  if (![v3 executeUpdate:{@"INSERT INTO library_pins_new (pin_pid, entity_pid, entity_type, position, default_action, position_uuid) SELECT pin_pid, entity_pid, entity_type, position, default_action, position_uuid FROM library_pins"}] || !objc_msgSend(v3, "executeUpdate:", @"DROP TABLE library_pins") || !objc_msgSend(v3, "executeUpdate:", @"ALTER TABLE library_pins_new RENAME TO library_pins"))
  {
LABEL_9:
    v5 = 0;
    goto LABEL_10;
  }

  [v4 setCurrentUserVersion:2240040];
  v5 = [v3 executeUpdate:@"PRAGMA user_version = 2240040;"];
LABEL_10:

  return v5;
}

uint64_t ML3MigrationFunction2240040to2300000(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  [v3 setNeedsToAutogenerateArtworkVariants:1];
  [v3 setCurrentUserVersion:2300000];

  v5 = [v4 executeUpdate:@"PRAGMA user_version = 2300000;"];
  return v5;
}

uint64_t ML3MigrationFunction2300000to2300010(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if ([v3 executeUpdate:@"ALTER TABLE item_store ADD COLUMN immersive_deep_link_url TEXT NOT NULL DEFAULT ''"])
  {
    [v4 setCurrentUserVersion:2300010];
    v5 = [v3 executeUpdate:@"PRAGMA user_version = 2300010;"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t ML3MigrationFunction2300010to2300020(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  [v3 setNeedsToRecreateIndexes:1];
  [v3 setCurrentUserVersion:2300020];

  v5 = [v4 executeUpdate:@"PRAGMA user_version = 2300020;"];
  return v5;
}

uint64_t ML3MigrationFunction2300020to2300030(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  [v3 setNeedsToRecreateIndexes:1];
  [v3 setCurrentUserVersion:2300030];

  v5 = [v4 executeUpdate:@"PRAGMA user_version = 2300030;"];
  return v5;
}

uint64_t ML3MigrationFunction2300030to2300040(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if ([v3 executeUpdate:{@"CREATE TABLE entity_revision_new (revision INTEGER PRIMARY KEY, entity_pid INTEGER NOT NULL, deleted INTEGER NOT NULL DEFAULT 0, class INTEGER NOT NULL DEFAULT 0, revision_type INTEGER NOT NULL DEFAULT 0, UNIQUE(entity_pid, class, revision_type))"}] && objc_msgSend(v3, "executeUpdate:", @"INSERT INTO entity_revision_new (revision, entity_pid, deleted, class, revision_type) SELECT revision, entity_pid, deleted, class, revision_type FROM entity_revision") && objc_msgSend(v3, "executeUpdate:", @"DROP TABLE entity_revision") && objc_msgSend(v3, "executeUpdate:", @"ALTER TABLE entity_revision_new RENAME TO entity_revision"))
  {
    [v4 setCurrentUserVersion:2300040];
    v5 = [v3 executeUpdate:@"PRAGMA user_version = 2300040;"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t ML3MigrationFunction2300040to2310000(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v28[0] = 0;
  v28[1] = v28;
  v28[2] = 0x3032000000;
  v28[3] = __Block_byref_object_copy__2414;
  v28[4] = __Block_byref_object_dispose__2415;
  v29 = 0;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy__2414;
  v26 = __Block_byref_object_dispose__2415;
  v27 = [MEMORY[0x277CBEB18] array];
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 1;
  v5 = [v3 executeQuery:@"SELECT item_pid FROM item JOIN item_store USING(item_pid) WHERE in_my_library AND is_ota_purchased AND download_source_container_pid != ? AND playback_endpoint_type = ? AND store_saga_id = ? AND sync_id = ? AND purchase_history_id = ? AND store_item_id = ? AND media_type IN (? withParameters:{?)", &unk_2840C6758}];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __ML3MigrationFunction2300040to2310000_block_invoke;
  v17[3] = &unk_2787653C8;
  v17[4] = &v22;
  [v5 enumerateRowsWithBlock:v17];
  v6 = v23[5];
  v10 = MEMORY[0x277D85DD0];
  v11 = 3221225472;
  v12 = __ML3MigrationFunction2300040to2310000_block_invoke_2;
  v13 = &unk_27875D370;
  v7 = v3;
  v14 = v7;
  v15 = v28;
  v16 = &v18;
  [v6 enumerateObjectsUsingBlock:&v10];
  if (v19[3])
  {
    [v4 setCurrentUserVersion:{2310000, v10, v11, v12, v13}];
    v8 = [v7 executeUpdate:@"PRAGMA user_version = 2310000;"];
  }

  else
  {
    v8 = 0;
  }

  _Block_object_dispose(&v18, 8);
  _Block_object_dispose(&v22, 8);

  _Block_object_dispose(v28, 8);
  return v8;
}

void __ML3MigrationFunction2300040to2310000_block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 int64ForColumnIndex:0];
  if (v3)
  {
    v4 = *(*(*(a1 + 32) + 8) + 40);
    v5 = [MEMORY[0x277CCABB0] numberWithLongLong:v3];
    [v4 addObject:v5];
  }
}

void __ML3MigrationFunction2300040to2310000_block_invoke_2(void *a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v18[1] = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = a1[4];
  v18[0] = v6;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:1];
  v9 = *(a1[5] + 8);
  obj = *(v9 + 40);
  LOBYTE(v7) = [v7 executeUpdate:@"UPDATE item_store SET is_ota_purchased = 0 WHERE item_pid = ?" withParameters:v8 error:&obj];
  objc_storeStrong((v9 + 40), obj);

  if ((v7 & 1) == 0)
  {
    v10 = os_log_create("com.apple.amp.medialibrary", "Default");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = [v6 longLongValue];
      v12 = *(*(a1[5] + 8) + 40);
      *buf = 134218242;
      v15 = v11;
      v16 = 2114;
      v17 = v12;
      _os_log_impl(&dword_22D2FA000, v10, OS_LOG_TYPE_ERROR, "Failed to reset OTA purchased track for trackPID=%lld, error = %{public}@", buf, 0x16u);
    }

    *(*(a1[6] + 8) + 24) = 0;
    *a4 = 1;
  }
}

void sub_22D400834(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__2504(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_22D4013CC(_Unwind_Exception *a1)
{
  if (v1)
  {
    objc_end_catch();
  }

  _Unwind_Resume(a1);
}

void sub_22D401D58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_22D4047A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22D405764(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39, uint64_t a40, uint64_t a41, uint64_t a42, char a43)
{
  _Block_object_dispose((v43 - 208), 8);
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose(&a33, 8);
  _Block_object_dispose(&a39, 8);
  _Block_object_dispose(&a43, 8);
  _Unwind_Resume(a1);
}

uint64_t __UpdateBestArtworkToken_block_invoke(uint64_t a1, void *a2)
{
  *(*(*(a1 + 32) + 8) + 40) = [a2 stringForColumnIndex:0];

  return MEMORY[0x2821F96F8]();
}

void sub_22D406180(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id GetP7BPath()
{
  v0 = MLMobileUserHomeDirectory();
  v1 = [v0 stringByAppendingPathComponent:@"/Media/iTunes_Control/iTunes/MediaLibrary.p7b"];

  return v1;
}

void sub_22D408498(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22D408688(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22D40887C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22D409D80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22D409E94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22D409FB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22D40A0E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22D40A25C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22D40A7B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose((v27 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_22D40AB50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t InsertOrReplaceIntoArtworkToken(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v38[6] = *MEMORY[0x277D85DE8];
  v13 = a2;
  v14 = a1;
  if ([v13 length])
  {
    v38[0] = v13;
    v15 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
    v38[1] = v15;
    v16 = [MEMORY[0x277CCABB0] numberWithInteger:a4];
    v38[2] = v16;
    v17 = [MEMORY[0x277CCABB0] numberWithLongLong:a5];
    v38[3] = v17;
    v18 = [MEMORY[0x277CCABB0] numberWithInteger:a6];
    v38[4] = v18;
    v19 = [MEMORY[0x277CCABB0] numberWithInteger:a7];
    v38[5] = v19;
    v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v38 count:6];
    v34 = 0;
    v21 = [v14 executeUpdate:@"INSERT OR REPLACE INTO artwork_token (artwork_token withParameters:artwork_source_type error:{artwork_type, entity_pid, entity_type, artwork_variant_type) VALUES (?, ?, ?, ?, ?, ?)", v20, &v34}];

    v22 = v34;
    if ((v21 & 1) == 0)
    {
      v23 = os_log_create("com.apple.amp.medialibrary", "Default");
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v37 = v22;
        v24 = "Failed to update artwork_token with error: %{public}@";
LABEL_9:
        _os_log_impl(&dword_22D2FA000, v23, OS_LOG_TYPE_ERROR, v24, buf, 0xCu);
        goto LABEL_10;
      }

      goto LABEL_10;
    }
  }

  else
  {
    v25 = [MEMORY[0x277CCABB0] numberWithLongLong:a5];
    v35[0] = v25;
    v26 = [MEMORY[0x277CCABB0] numberWithInteger:a6];
    v35[1] = v26;
    v27 = [MEMORY[0x277CCABB0] numberWithInteger:a4];
    v35[2] = v27;
    v28 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
    v35[3] = v28;
    v29 = [MEMORY[0x277CBEA60] arrayWithObjects:v35 count:4];
    v33 = 0;
    v30 = [v14 executeUpdate:@"DELETE FROM artwork_token WHERE entity_pid = ? AND entity_type = ? AND artwork_type = ? AND artwork_source_type = ?" withParameters:v29 error:&v33];

    v22 = v33;
    if ((v30 & 1) == 0)
    {
      v23 = os_log_create("com.apple.amp.medialibrary", "Default");
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v37 = v22;
        v24 = "Failed to delete artwork_token with error: %{public}@";
        goto LABEL_9;
      }

LABEL_10:

      v31 = 0;
      goto LABEL_11;
    }
  }

  v31 = 1;
LABEL_11:

  return v31;
}

void sub_22D40B824(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, char a47, uint64_t a48, uint64_t a49, uint64_t a50, char a51)
{
  _Block_object_dispose((v51 - 160), 8);
  _Block_object_dispose(&a47, 8);
  _Block_object_dispose(&a51, 8);
  _Unwind_Resume(a1);
}

void sub_22D40C02C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22D40C72C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose(&a31, 8);
  _Block_object_dispose((v31 - 144), 8);
  _Block_object_dispose((v31 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_22D40F910(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22D4102D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22D411CD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22D412814(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22D412C54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t WriteDictionaryToPathWithGrappaID(void *a1, void *a2, uint64_t a3)
{
  v31 = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = a2;
  v7 = objc_autoreleasePoolPush();
  v26 = 0;
  v8 = [MEMORY[0x277CCAC58] dataWithPropertyList:v5 format:200 options:0 error:&v26];
  v9 = v26;
  v10 = v9;
  if (v8)
  {
    v25 = v9;
    v11 = [v8 writeToFile:v6 options:1 error:&v25];
    v12 = v25;

    if (v11)
    {
      if (a3)
      {
        v24 = 0;
        v23 = 0;
        jumT7rcoieclCtxS2rgJ(a3, [v8 bytes], objc_msgSend(v8, "length"), &v24);
        if (v13)
        {
          v10 = v12;
        }

        else
        {
          v17 = [MEMORY[0x277CBEA90] dataWithBytes:v24 length:v23];
          v18 = [v6 stringByAppendingPathExtension:@"cig"];
          v22 = v12;
          v19 = [v17 writeToFile:v18 options:1 error:&v22];
          v10 = v22;

          if ((v19 & 1) == 0)
          {
            v20 = os_log_create("com.apple.amp.medialibrary", "Library");
            if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
            {
              *buf = 138543618;
              v28 = v6;
              v29 = 2114;
              v30 = v10;
              _os_log_impl(&dword_22D2FA000, v20, OS_LOG_TYPE_ERROR, "Could not write to %{public}@: %{public}@", buf, 0x16u);
            }
          }

          X5EvIJWqdcALcjaxX6Pl(v24);
        }

        v15 = 1;
        goto LABEL_20;
      }

      v15 = 1;
    }

    else
    {
      v16 = os_log_create("com.apple.amp.medialibrary", "Library");
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543618;
        v28 = v6;
        v29 = 2114;
        v30 = v12;
        _os_log_impl(&dword_22D2FA000, v16, OS_LOG_TYPE_ERROR, "Could not write to %{public}@: %{public}@", buf, 0x16u);
      }

      v15 = 0;
    }

    v10 = v12;
    goto LABEL_20;
  }

  v14 = os_log_create("com.apple.amp.medialibrary", "Library");
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543618;
    v28 = v5;
    v29 = 2114;
    v30 = v10;
    _os_log_impl(&dword_22D2FA000, v14, OS_LOG_TYPE_ERROR, "Could not encode %{public}@: %{public}@", buf, 0x16u);
  }

  v15 = 0;
LABEL_20:

  objc_autoreleasePoolPop(v7);
  return v15;
}

void sub_22D415240(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22D415448(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22D41564C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22D4157FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22D415A8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22D415D68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22D415F68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22D41605C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22D416444(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22D416A4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a16, 8);
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose((v27 - 160), 8);
  _Unwind_Resume(a1);
}

void sub_22D416E1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22D4181A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22D418CC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22D41A220(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22D41A424(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22D41B010(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__3958(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_22D41B258(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22D41BA08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22D41C090(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

sqlite3_value *MLDBArgumentAsString(uint64_t a1, unsigned int a2)
{
  v3 = *(a1 + 8 * a2);
  if (v3)
  {
    v3 = sqlite3_value_text(v3);
    if (v3)
    {
      v3 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:v3];
    }

    v2 = vars8;
  }

  return v3;
}

id SBKIdentifierStringByMD5HashingString(void *a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v1 = [a1 dataUsingEncoding:4];
  if ([v1 length] && (memset(&c, 0, sizeof(c)), CC_MD5_Init(&c)) && CC_MD5_Update(&c, objc_msgSend(v1, "bytes"), objc_msgSend(v1, "length")) && CC_MD5_Final(md, &c))
  {
    v2 = [MEMORY[0x277CBEA90] dataWithBytes:md length:16];
    v3 = [v2 length];
    v4 = [v2 bytes];
    v5 = [MEMORY[0x277CCAB68] stringWithCapacity:2 * v3];
    if (v3 >= 1)
    {
      v6 = 0;
      v7 = 1;
      do
      {
        [v5 appendFormat:@"%02x", *(v4 + v6)];
        v6 = v7;
      }

      while (v3 > v7++);
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

void sub_22D41D354(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, char a47, uint64_t a48, uint64_t a49, uint64_t a50, char a51)
{
  _Block_object_dispose(&a47, 8);
  _Block_object_dispose(&a51, 8);
  _Unwind_Resume(a1);
}

void sub_22D41DE98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22D41E520(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id _containmentPredicateForIsMediaTypePredicate(void *a1, unsigned int a2)
{
  v3 = a1;
  v4 = [v3 comparison];
  v5 = [v3 value];

  LODWORD(v3) = [v5 BOOLValue];
  v6 = _containmentMediaTypeMasksPredicateForMediaTypeMask(((((v4 != 2) ^ v3) << 31) >> 31) ^ a2);

  return v6;
}

id _containmentMediaTypeMasksPredicateForMediaTypeMask(uint64_t a1)
{
  if (_containmentMediaTypeMasksPredicateForMediaTypeMask_onceToken != -1)
  {
    dispatch_once(&_containmentMediaTypeMasksPredicateForMediaTypeMask_onceToken, &__block_literal_global_4481);
  }

  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__3958;
  v15 = __Block_byref_object_dispose__3959;
  v16 = 0;
  v2 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:a1];
  v3 = _containmentMediaTypeMasksPredicateForMediaTypeMask_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = ___containmentMediaTypeMasksPredicateForMediaTypeMask_block_invoke_2;
  block[3] = &unk_278760240;
  v8 = v2;
  v9 = &v11;
  v10 = a1;
  v4 = v2;
  dispatch_sync(v3, block);
  v5 = v12[5];

  _Block_object_dispose(&v11, 8);

  return v5;
}

void sub_22D41F510(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void ___containmentMediaTypeMasksPredicateForMediaTypeMask_block_invoke_2(uint64_t a1)
{
  v24[2] = *MEMORY[0x277D85DE8];
  v2 = [_containmentMediaTypeMasksPredicateForMediaTypeMask_cache objectForKey:*(a1 + 32)];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  if (!*(*(*(a1 + 40) + 8) + 40))
  {
    v5 = [MEMORY[0x277CBEB18] array];
    for (i = 0; i != 25; ++i)
    {
      if ((*(a1 + 48) & _containmentMediaTypeMasksPredicateForMediaTypeMask_validMediaTypesMasks[i]) != 0)
      {
        v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:?];
        [v5 addObject:v7];
      }
    }

    if ([v5 count])
    {
      [v5 sortUsingSelector:sel_compare_];
      v8 = [MEMORY[0x277CBEB98] setWithArray:v5];
      v9 = [ML3ContainmentPredicate predicateWithProperty:@"media_type" values:v8];
      v10 = *(*(a1 + 40) + 8);
      v11 = *(v10 + 40);
      *(v10 + 40) = v9;

      v12 = [v5 objectAtIndexedSubscript:0];
      v13 = [v12 unsignedIntegerValue];

      if (v13 >= 0x200)
      {
        v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v13];
        v15 = [ML3ComparisonPredicate predicateWithProperty:@"media_type" value:v14 comparison:4];

        v16 = *(*(*(a1 + 40) + 8) + 40);
        v24[0] = v15;
        v24[1] = v16;
        v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:2];
        v18 = [(ML3CompoundPredicate *)ML3AllCompoundPredicate predicateMatchingPredicates:v17];
        v19 = *(*(a1 + 40) + 8);
        v20 = *(v19 + 40);
        *(v19 + 40) = v18;
      }
    }

    else
    {
      v21 = +[ML3TruthPredicate truePredicate];
      v22 = *(*(a1 + 40) + 8);
      v23 = *(v22 + 40);
      *(v22 + 40) = v21;
    }

    [_containmentMediaTypeMasksPredicateForMediaTypeMask_cache setObject:*(*(*(a1 + 40) + 8) + 40) forKey:*(a1 + 32)];
  }
}

uint64_t ___containmentMediaTypeMasksPredicateForMediaTypeMask_block_invoke()
{
  v0 = [objc_alloc(MEMORY[0x277D27F10]) initWithMaximumCapacity:16];
  v1 = _containmentMediaTypeMasksPredicateForMediaTypeMask_cache;
  _containmentMediaTypeMasksPredicateForMediaTypeMask_cache = v0;

  _containmentMediaTypeMasksPredicateForMediaTypeMask_queue = dispatch_queue_create(0, 0);

  return MEMORY[0x2821F96F8]();
}

uint64_t MIPPodcastReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v19) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v19 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v19 & 0x7F) << v5;
        if ((v19 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) > 2)
      {
        if (v13 == 3)
        {
          v15 = PBReaderReadString();
          v16 = 16;
LABEL_32:
          v14 = *(a1 + v16);
          *(a1 + v16) = v15;
LABEL_33:

          goto LABEL_34;
        }

        if (v13 == 4)
        {
          v15 = PBReaderReadString();
          v16 = 24;
          goto LABEL_32;
        }
      }

      else
      {
        if (v13 == 1)
        {
          v14 = objc_alloc_init(MIPArtist);
          objc_storeStrong((a1 + 8), v14);
          v19 = 0;
          v20 = 0;
          if (!PBReaderPlaceMark() || !MIPArtistReadFrom(v14, a2))
          {
LABEL_36:

            return 0;
          }

          goto LABEL_30;
        }

        if (v13 == 2)
        {
          v14 = objc_alloc_init(MIPSeries);
          objc_storeStrong((a1 + 32), v14);
          v19 = 0;
          v20 = 0;
          if (!PBReaderPlaceMark() || !MIPSeriesReadFrom(v14, a2))
          {
            goto LABEL_36;
          }

LABEL_30:
          PBReaderRecallMark();
          goto LABEL_33;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_34:
      v17 = [a2 position];
    }

    while (v17 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void sub_22D420854(_Unwind_Exception *a1)
{
  (*(*v1 + 8))(v1);

  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  _Unwind_Resume(a1);
}

uint64_t std::__shared_ptr_pointer<ML3PurchaseHistoryImportItem *,std::shared_ptr<ML3DAAPImportItem>::__shared_ptr_default_delete<ML3DAAPImportItem,ML3PurchaseHistoryImportItem>,std::allocator<ML3PurchaseHistoryImportItem>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "NSt3__110shared_ptrI17ML3DAAPImportItemE27__shared_ptr_default_deleteIS1_28ML3PurchaseHistoryImportItemEE"))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__shared_ptr_pointer<ML3PurchaseHistoryImportItem *,std::shared_ptr<ML3DAAPImportItem>::__shared_ptr_default_delete<ML3DAAPImportItem,ML3PurchaseHistoryImportItem>,std::allocator<ML3PurchaseHistoryImportItem>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void std::__shared_ptr_pointer<ML3PurchaseHistoryImportItem *,std::shared_ptr<ML3DAAPImportItem>::__shared_ptr_default_delete<ML3DAAPImportItem,ML3PurchaseHistoryImportItem>,std::allocator<ML3PurchaseHistoryImportItem>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2318CD250);
}

void sub_22D420C38(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v17 + 32));
  objc_destroyWeak(&location);

  _Unwind_Resume(a1);
}

uint64_t ML3ProtoSyncImportItem::getDescription@<X0>(id *this@<X0>, uint64_t a2@<X8>)
{
  v14 = a2;
  v26 = *MEMORY[0x277D85DE8];
  std::ostringstream::basic_ostringstream[abi:ne200100](&v20);
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  obj = [this[10] libraryIdentifiers];
  v3 = [obj countByEnumeratingWithState:&v16 objects:v25 count:16];
  if (v3)
  {
    v4 = *v17;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v17 != v4)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v16 + 1) + 8 * i);
        v7 = [v6 libraryName];
        v8 = [v6 libraryId];
        if (v7)
        {
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v20, " [", 2);
          v9 = v7;
          v10 = [v7 UTF8String];
          v11 = strlen(v10);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v20, v10, v11);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v20, " : ", 3);
        }

        else
        {
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v20, " [<null> : ", 11);
        }

        *(&v22[-1].__locale_ + *(v20 - 24)) = *(&v22[-1].__locale_ + *(v20 - 24)) & 0xFFFFFFB5 | 2;
        v12 = MEMORY[0x2318CD140](&v20, v8);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, "] ", 2);
      }

      v3 = [obj countByEnumeratingWithState:&v16 objects:v25 count:16];
    }

    while (v3);
  }

  std::stringbuf::str();
  v20 = *MEMORY[0x277D82828];
  *(&v20 + *(v20 - 24)) = *(MEMORY[0x277D82828] + 24);
  v21 = MEMORY[0x277D82878] + 16;
  if (v23 < 0)
  {
    operator delete(v22[7].__locale_);
  }

  v21 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v22);
  std::ostream::~ostream();
  return MEMORY[0x2318CD1F0](&v24);
}

void sub_22D422A0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  std::ostringstream::~ostringstream(va);
  _Unwind_Resume(a1);
}

void ML3ProtoSyncImportItem::~ML3ProtoSyncImportItem(id *this)
{
  ML3ProtoSyncImportItem::~ML3ProtoSyncImportItem(this);

  JUMPOUT(0x2318CD250);
}

{

  *this = off_2840859C8;
  std::__hash_table<std::__hash_value_type<unsigned int,ML3ImportValue<std::string>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,ML3ImportValue<std::string>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,ML3ImportValue<std::string>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,ML3ImportValue<std::string>>>>::~__hash_table((this + 3));
}

id ML3ProtoSyncTrackImportItem::getDeduplicationPredicates(id *this)
{
  v45 = *MEMORY[0x277D85DE8];
  v37 = [MEMORY[0x277CBEB18] arrayWithCapacity:1];
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  obj = [this[10] libraryIdentifiers];
  v2 = [obj countByEnumeratingWithState:&v38 objects:v44 count:16];
  if (v2)
  {
    v3 = *v39;
    do
    {
      for (i = 0; i != v2; ++i)
      {
        if (*v39 != v3)
        {
          objc_enumerationMutation(obj);
        }

        v5 = *(*(&v38 + 1) + 8 * i);
        v6 = [v5 libraryName];
        v7 = [v5 libraryId];
        if (v6)
        {
          v8 = [this[9] libraryUID];
          v9 = [v6 isEqualToString:v8];

          if (v9)
          {
            v10 = [ML3ComparisonPredicate predicateWithProperty:@"ROWID" equalToInt64:v7];
            [v37 addObject:v10];
          }

          else
          {
            v15 = [this[9] syncLibraryID];
            v16 = [v6 isEqualToString:v15];

            if (!v16)
            {
              goto LABEL_13;
            }

            v10 = [ML3ComparisonPredicate predicateWithProperty:@"item_store.sync_id" equalToInt64:v7];
            [v37 addObject:v10];
          }
        }

        else
        {
          v11 = MEMORY[0x277CBEA60];
          v10 = [ML3ComparisonPredicate predicateWithProperty:@"item_store.sync_id" equalToInt64:v7];
          v12 = [ML3ComparisonPredicate predicateWithProperty:@"ROWID" equalToInt64:v7];
          v13 = [v11 arrayWithObjects:{v10, v12, 0}];
          v14 = [(ML3CompoundPredicate *)ML3AllCompoundPredicate predicateMatchingPredicates:v13];
          [v37 addObject:v14];
        }

LABEL_13:
      }

      v2 = [obj countByEnumeratingWithState:&v38 objects:v44 count:16];
    }

    while (v2);
  }

  if ((this[8] & 1) == 0)
  {
    v17 = [this[9] syncIdFromMultiverseId:this[10]];
    v18 = (*(*this + 4))(this, 100663305);
    v19 = (*(*this + 4))(this, 100663302);
    v20 = (*(*this + 4))(this, 100663337);
    v21 = (*(*this + 4))(this, 100663297);
    v22 = ML3ProtoSyncTrackImportItem::_getProtoStringValue(this, 100663350);
    if (v18)
    {
      v23 = [ML3ComparisonPredicate predicateWithProperty:@"item_store.store_saga_id" equalToInt64:v18];
      [v37 addObject:v23];
    }

    if (v19)
    {
      v24 = [ML3ComparisonPredicate predicateWithProperty:@"item_store.purchase_history_id" equalToInt64:v19];
      [v37 addObject:v24];
    }

    if (v20)
    {
      if (!v17)
      {
        v33 = [ML3ComparisonPredicate predicateWithProperty:@"item_store.subscription_store_item_id" equalToInt64:v20];
        [v37 addObject:v33];

        if (v21)
        {
          goto LABEL_27;
        }

        goto LABEL_29;
      }

      v25 = [ML3ComparisonPredicate predicateWithProperty:@"item_store.subscription_store_item_id" equalToInt64:v20];
      v43[0] = v25;
      v26 = [ML3ComparisonPredicate predicateWithProperty:@"item_store.sync_id" equalToInt64:0];
      v43[1] = v26;
      v27 = [MEMORY[0x277CBEA60] arrayWithObjects:v43 count:2];
      v28 = [(ML3CompoundPredicate *)ML3AllCompoundPredicate predicateMatchingPredicates:v27];
      [v37 addObject:v28];
    }

    if (v21)
    {
      if (v17)
      {
        v29 = [ML3ComparisonPredicate predicateWithProperty:@"item_store.store_item_id" equalToInt64:v21];
        v42[0] = v29;
        v30 = [ML3ComparisonPredicate predicateWithProperty:@"item_store.sync_id" equalToInt64:0];
        v42[1] = v30;
        v31 = [MEMORY[0x277CBEA60] arrayWithObjects:v42 count:2];
        v32 = [(ML3CompoundPredicate *)ML3AllCompoundPredicate predicateMatchingPredicates:v31];
        [v37 addObject:v32];

LABEL_28:
        goto LABEL_29;
      }

LABEL_27:
      v29 = [ML3ComparisonPredicate predicateWithProperty:@"item_store.store_item_id" equalToInt64:v21];
      [v37 addObject:v29];
      goto LABEL_28;
    }

LABEL_29:
    if ([v22 length])
    {
      v34 = [ML3ComparisonPredicate predicateWithProperty:@"item_store.cloud_universal_library_id" equalToValue:v22];
      [v37 addObject:v34];
    }
  }

  return v37;
}

id ML3ProtoSyncTrackImportItem::_getProtoStringValue(id *this, int a2)
{
  v4 = 0;
  if (a2 <= 100663339)
  {
    if (a2 > 50331653)
    {
      if (a2 <= 100663322)
      {
        if (a2 <= 83886082)
        {
          switch(a2)
          {
            case 50331654:
              v7 = [this[21] dataUrl];
              goto LABEL_114;
            case 50331656:
              v7 = [this[21] eqPreset];
              goto LABEL_114;
            case 50331657:
              v7 = [this[21] playbackFormat];
              goto LABEL_114;
          }
        }

        else if (a2 > 100663305)
        {
          if (a2 == 100663306)
          {
            v7 = [this[11] sagaRedownloadParams];
            goto LABEL_114;
          }

          if (a2 == 100663322)
          {
            v7 = [this[15] externalGuid];
            goto LABEL_114;
          }
        }

        else
        {
          if (a2 == 83886083)
          {
            goto LABEL_115;
          }

          if (a2 == 100663304)
          {
            v7 = [this[11] purchaseHistoryRedownloadParams];
            goto LABEL_114;
          }
        }

        goto LABEL_73;
      }

      if (a2 > 100663325)
      {
        if (a2 > 100663332)
        {
          if (a2 == 100663333)
          {
            goto LABEL_115;
          }

          if (a2 == 100663334)
          {
            v7 = ML3ProtoSyncTrackImportItem::_getSyncRedownloadParams(this);
            goto LABEL_114;
          }
        }

        else
        {
          if (a2 == 100663326)
          {
            v7 = [this[11] storeAssetFlavor];
            goto LABEL_114;
          }

          if (a2 == 100663330)
          {
            v7 = [this[11] extrasUrl];
            goto LABEL_114;
          }
        }

        goto LABEL_73;
      }

      if (a2 == 100663323)
      {
        v7 = [this[15] feedUrl];
        goto LABEL_114;
      }

      if (a2 == 100663324)
      {
        [this[11] chapterMetadataUrl];
      }

      else
      {
        [this[11] storeXID];
      }
    }

    else
    {
      if (a2 > 33554452)
      {
        if (a2 <= 33554459)
        {
          switch(a2)
          {
            case 33554453:
              v7 = [this[11] longDescription];
              goto LABEL_114;
            case 33554454:
              goto LABEL_115;
            case 33554455:
              v7 = [this[11] copyright];
              goto LABEL_114;
          }
        }

        else if ((a2 - 33554460) < 4)
        {
          goto LABEL_115;
        }

        goto LABEL_73;
      }

      if (a2 <= 33554438)
      {
        switch(a2)
        {
          case 16777239:
            v7 = [this[14] episodeSortId];
            goto LABEL_114;
          case 33554433:
            v7 = [this[11] title];
            goto LABEL_114;
          case 33554434:
            v7 = [this[11] sortTitle];
            goto LABEL_114;
        }

        goto LABEL_73;
      }

      if (a2 <= 33554450)
      {
        if (a2 == 33554439)
        {
          goto LABEL_115;
        }

        if (a2 == 33554450)
        {
          v7 = [this[11] comment];
          goto LABEL_114;
        }

LABEL_73:
        v10 = [MEMORY[0x277CCA890] currentHandler];
        v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *ML3ProtoSyncTrackImportItem::_getProtoStringValue(MLImportPropertyKey) const"];
        [v10 handleFailureInFunction:v11 file:@"ML3ProtoSyncImportItem.mm" lineNumber:783 description:{@"getStringValue called with unknown property key %lx", a2}];

LABEL_74:
        v4 = 0;
        goto LABEL_115;
      }

      if (a2 == 33554451)
      {
        [this[11] grouping];
      }

      else
      {
        [this[11] shortDescription];
      }
    }
    v7 = ;
    goto LABEL_114;
  }

  if (a2 > 150994946)
  {
    switch(a2)
    {
      case 167772161:
        v8 = this[18];
        goto LABEL_109;
      case 167772162:
        v15 = this[15];
        if (v15)
        {
          [v15 series];
        }

        else
        {
          [this[14] series];
        }

        goto LABEL_85;
      case 167772163:
        v16 = this[15];
        if (v16)
        {
          [v16 artist];
        }

        else
        {
          [this[17] artist];
        }

        v5 = LABEL_85:;
        v6 = [v5 name];
        goto LABEL_119;
      case 167772164:
        v14 = this[15];
        if (v14)
        {
          v5 = [v14 series];
          v6 = [v5 name];
          goto LABEL_119;
        }

        v8 = this[17];
LABEL_109:
        v7 = [v8 name];
        goto LABEL_114;
      case 167772165:
        v8 = this[19];
        goto LABEL_109;
      case 167772166:
        v8 = this[20];
        goto LABEL_109;
      case 167772167:
        v12 = this[18];
        goto LABEL_113;
      case 167772168:
        v13 = this[15];
        if (v13)
        {
          [v13 series];
        }

        else
        {
          [this[14] series];
        }
        v5 = ;
        v6 = [v5 sortName];
        goto LABEL_119;
      case 167772169:
        v5 = [this[17] artist];
        v6 = [v5 sortName];
        goto LABEL_119;
      case 167772170:
        v17 = this[15];
        if (v17)
        {
          v5 = [v17 series];
          v6 = [v5 sortName];
          goto LABEL_119;
        }

        v12 = this[17];
LABEL_113:
        v7 = [v12 sortName];
        break;
      case 167772171:
        v12 = this[19];
        goto LABEL_113;
      case 167772172:
      case 167772173:
      case 167772174:
      case 167772175:
      case 167772176:
      case 167772177:
      case 167772178:
      case 167772179:
      case 167772180:
      case 167772181:
      case 167772182:
      case 167772185:
      case 167772186:
        goto LABEL_73;
      case 167772183:
        v7 = [this[11] artworkId];
        goto LABEL_114;
      case 167772184:
        goto LABEL_115;
      case 167772187:
        v7 = [this[11] secondaryArtworkId];
        goto LABEL_114;
      default:
        if (a2 == 150994947)
        {
          goto LABEL_115;
        }

        if (a2 != 301989899)
        {
          goto LABEL_73;
        }

        v5 = [this[17] artist];
        v6 = [v5 cloudUniversalLibraryId];
        goto LABEL_119;
    }

    goto LABEL_114;
  }

  if (a2 > 117440517)
  {
    if ((a2 - 117440520) <= 0x1E)
    {
      if (((1 << (a2 - 8)) & 0x70024000) != 0)
      {
        goto LABEL_115;
      }

      if (a2 == 117440520)
      {
        v7 = [this[13] movieInfo];
        goto LABEL_114;
      }

      if (a2 == 117440544)
      {
        v9 = this[12];
        if (!v9)
        {
          v9 = this[16];
          if (!v9)
          {
            goto LABEL_74;
          }
        }

        v7 = [v9 hlsPlaylistURL];
LABEL_114:
        v4 = v7;
        goto LABEL_115;
      }
    }

    if (a2 == 117440518)
    {
      v7 = [this[14] networkName];
      goto LABEL_114;
    }

    if (a2 == 117440519)
    {
      v7 = [this[13] extendedContentName];
      goto LABEL_114;
    }

    goto LABEL_73;
  }

  if ((a2 - 100663340) > 0x12)
  {
    goto LABEL_71;
  }

  if (((1 << (a2 - 44)) & 0x78003) != 0)
  {
    goto LABEL_115;
  }

  if (a2 == 100663348)
  {
    v7 = [this[17] cloudId];
    goto LABEL_114;
  }

  if (a2 != 100663350)
  {
LABEL_71:
    if (a2 == 117440517)
    {
      v7 = [this[14] episodeId];
      goto LABEL_114;
    }

    goto LABEL_73;
  }

  v5 = [this[10] cloudUniversalLibraryId];
  if (v5)
  {
    [this[10] cloudUniversalLibraryId];
  }

  else
  {
    [this[11] cloudUniversalLibraryId];
  }
  v6 = ;
LABEL_119:
  v4 = v6;

LABEL_115:

  return v4;
}

__CFString *ML3ProtoSyncTrackImportItem::_getSyncRedownloadParams(id *this)
{
  if ([this[11] hasLocalAsset])
  {
    v2 = ML3SyncRedownloadParamLocal;
LABEL_8:
    v5 = v2;
    goto LABEL_9;
  }

  v3 = [this[11] purchaseHistoryRedownloadParams];
  if ([v3 length])
  {
    goto LABEL_6;
  }

  v4 = [this[11] sagaRedownloadParams];
  if ([v4 length])
  {

LABEL_6:
LABEL_7:
    v2 = ML3SyncRedownloadParamRedownload;
    goto LABEL_8;
  }

  if ([this[11] subscriptionStoreItemId])
  {
    v7 = [this[11] cloudAssetAvailable];

    if (v7)
    {
      goto LABEL_7;
    }
  }

  else
  {
  }

  v5 = &stru_28408B690;
LABEL_9:

  return v5;
}

void sub_22D423D2C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ML3ProtoSyncTrackImportItem::getDescription(id *this)
{
  std::ostringstream::basic_ostringstream[abi:ne200100](&v7);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v7, "<ML3ProtoSyncTrackImportItem ", 29);
  *(&v7 + *(v7 - 24) + 8) = *(&v7 + *(v7 - 24) + 8) & 0xFFFFFFB5 | 8;
  MEMORY[0x2318CD100](&v7, this);
  ML3ProtoSyncImportItem::getDescription(this, __p);
  if ((v6 & 0x80u) == 0)
  {
    v2 = __p;
  }

  else
  {
    v2 = __p[0];
  }

  if ((v6 & 0x80u) == 0)
  {
    v3 = v6;
  }

  else
  {
    v3 = __p[1];
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v7, v2, v3);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  std::stringbuf::str();
  v7 = *MEMORY[0x277D82828];
  *(&v7 + *(v7 - 24)) = *(MEMORY[0x277D82828] + 24);
  v8 = MEMORY[0x277D82878] + 16;
  if (v10 < 0)
  {
    operator delete(v9[7].__locale_);
  }

  v8 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v9);
  std::ostream::~ostream();
  return MEMORY[0x2318CD1F0](&v11);
}

void sub_22D423F68(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  std::ostringstream::~ostringstream(&a15);
  _Unwind_Resume(a1);
}

uint64_t ML3ProtoSyncTrackImportItem::hasValue(ML3ProtoSyncTrackImportItem *this, int a2)
{
  if ((a2 - 0x1000000) >> 25 > 4)
  {
    goto LABEL_486;
  }

  v5 = 0;
  if (a2 <= 100663296)
  {
    if (a2 > 50331648)
    {
      switch(a2)
      {
        case 83886081:
          v87 = *(this + 12);
          if (v87 && ([v87 hasUserRating] & 1) != 0)
          {
            goto LABEL_324;
          }

          v40 = *(this + 16);
          if (!v40)
          {
            goto LABEL_486;
          }

LABEL_291:

          return [v40 hasUserRating];
        case 83886082:
        case 83886083:
        case 83886090:
        case 83886096:
        case 83886099:
          return v5 & 1;
        case 83886084:
          if (*(this + 64))
          {
            goto LABEL_486;
          }

          goto LABEL_298;
        case 83886085:
          v82 = *(this + 11);

          return [v82 hasPlayCountDelta];
        case 83886086:
LABEL_298:
          v89 = *(this + 11);

          return [v89 hasPlayCount];
        case 83886087:
        case 83886089:
          v11 = *(this + 11);

          return [v11 hasLastPlayedDateTime];
        case 83886088:
          v90 = *(this + 11);

          return [v90 hasLastSkippedDateTime];
        case 83886091:
          if (*(this + 64))
          {
            goto LABEL_486;
          }

          v80 = *(this + 11);

          return [v80 hasSkipCount];
        case 83886092:
          v83 = *(this + 11);

          return [v83 hasSkipCountDelta];
        case 83886093:
          v91 = *(this + 11);

          return [v91 hasRememberBookmark];
        case 83886094:
          v81 = *(this + 11);

          return [v81 hasBookmarkTimeMilliseconds];
        case 83886095:
          v93 = *(this + 11);

          return [v93 hasHidden];
        case 83886097:
          v84 = *(this + 64);
          v85 = [*(this + 11) hasLikedState];
          v5 = (v84 ^ 1) & v85;
          if (((v84 ^ 1) & 1) != 0 || (v85 & 1) == 0)
          {
            return v5 & 1;
          }

          if (![*(this + 11) hasLikedStateChanged])
          {
            goto LABEL_486;
          }

          v86 = *(this + 11);

          result = [v86 likedStateChanged];
          break;
        case 83886098:
          v88 = *(this + 11);

          return [v88 hasLikedStateChanged];
        case 83886100:
          if (*(this + 16))
          {
            goto LABEL_486;
          }

          v92 = *(this + 11);

          return [v92 hasLikedStateChangedDate];
        default:
          if ((a2 - 67108865) >= 5)
          {
            goto LABEL_76;
          }

          return v5 & 1;
      }

      return result;
    }

    if (a2 > 16777246)
    {
      switch(a2)
      {
        case 33554433:
          v118 = *(this + 11);

          return [v118 hasTitle];
        case 33554434:
          v129 = *(this + 11);

          return [v129 hasSortTitle];
        case 33554435:
          v121 = *(this + 17);
          if (!v121)
          {
            goto LABEL_486;
          }

          return [v121 hasNumDiscs];
        case 33554436:
          v119 = *(this + 17);
          if (!v119)
          {
            goto LABEL_486;
          }

          return [v119 hasNumTracks];
        case 33554437:
          v122 = *(this + 11);

          return [v122 hasDuration];
        case 33554438:
          v130 = *(this + 11);

          return [v130 hasYear];
        case 33554439:
        case 33554441:
        case 33554454:
        case 33554456:
        case 33554457:
        case 33554460:
        case 33554461:
        case 33554462:
        case 33554463:
        case 33554464:
        case 33554465:
          return v5 & 1;
        case 33554440:
          v124 = *(this + 11);

          return [v124 hasFileSize];
        case 33554442:
        case 33554444:
          goto LABEL_34;
        case 33554443:
          v128 = *(this + 11);

          return [v128 hasModificationDateTime];
        case 33554445:
          v123 = *(this + 11);

          return [v123 hasContentRating];
        case 33554446:
          v131 = *(this + 11);

          return [v131 hasContentRatingLevel];
        case 33554447:
          v120 = *(this + 11);

          return [v120 hasUserDisabled];
        case 33554448:
          v117 = *(this + 21);
          if (!v117)
          {
            goto LABEL_486;
          }

          return [v117 hasBeatsPerMinute];
        case 33554449:
          v116 = *(this + 12);
          if (!v116)
          {
            goto LABEL_486;
          }

          return [v116 hasGeniusId];
        case 33554450:
          v127 = *(this + 11);

          return [v127 hasComment];
        case 33554451:
          v133 = *(this + 11);

          return [v133 hasGrouping];
        case 33554452:
          v115 = *(this + 11);

          return [v115 hasShortDescription];
        case 33554453:
          v125 = *(this + 11);

          return [v125 hasLongDescription];
        case 33554455:
          v132 = *(this + 11);

          return [v132 hasCopyright];
        case 33554458:
          v114 = *(this + 11);

          return [v114 hasFileKind];
        case 33554459:
          goto LABEL_76;
        case 33554466:
          v126 = *(this + 11);

          return [v126 hasIsPreorder];
        default:
          if ((a2 - 16777248) < 6)
          {
            return v5 & 1;
          }

          if (a2 != 16777247)
          {
            goto LABEL_76;
          }

          v16 = *(this + 11);

          result = [v16 hasCreationDateTime];
          break;
      }

      return result;
    }

    if (a2 <= 16777237)
    {
      if ((a2 - 16777218) >= 0x13)
      {
        if (a2 == 16777217)
        {
LABEL_34:
          v13 = *(this + 11);

          return [v13 hasMediaType];
        }

        if (a2 == 16777237)
        {
          v8 = *(this + 12);
          if (!v8 || ([v8 hasDiscNumber] & 1) == 0)
          {
            v9 = *(this + 16);
            if (v9)
            {

              return [v9 hasDiscNumber];
            }

            goto LABEL_486;
          }

          goto LABEL_324;
        }

LABEL_76:
        v21 = [MEMORY[0x277CCA890] currentHandler];
        v22 = [MEMORY[0x277CCACA8] stringWithUTF8String:"virtual BOOL ML3ProtoSyncTrackImportItem::hasValue(MLImportPropertyKey) const"];
        [v21 handleFailureInFunction:v22 file:@"ML3ProtoSyncImportItem.mm" lineNumber:702 description:{@"hasValue called with unknown property key %lx", a2}];

        goto LABEL_486;
      }

      return v5 & 1;
    }

    if (a2 <= 16777241)
    {
      if ((a2 - 16777240) < 2)
      {
        return v5 & 1;
      }

      if (a2 == 16777238)
      {
        v24 = *(this + 12);
        if (!v24 || ([v24 hasTrackNumber] & 1) == 0)
        {
          v25 = *(this + 14);
          if (!v25 || ([v25 hasEpisodeId] & 1) == 0)
          {
            v26 = *(this + 16);
            if (!v26)
            {
              goto LABEL_486;
            }

            return [v26 hasTrackNumber];
          }
        }

        goto LABEL_324;
      }

      if (a2 != 16777239)
      {
        goto LABEL_76;
      }

      v17 = *(this + 14);
      if (v17)
      {

        return [v17 hasEpisodeSortId];
      }
    }

    else
    {
      if (a2 <= 16777244)
      {
        if ((a2 - 16777243) < 2)
        {
          return v5 & 1;
        }

        if (a2 != 16777242)
        {
          goto LABEL_76;
        }

        v14 = *(this + 12);
        if (!v14 || ([v14 hasExcludeFromShuffle] & 1) == 0)
        {
          v15 = *(this + 16);
          if (v15)
          {

            return [v15 hasExcludeFromShuffle];
          }

          goto LABEL_486;
        }

LABEL_324:
        v5 = 1;
        return v5 & 1;
      }

      if (a2 == 16777245)
      {
LABEL_71:
        v20 = *(this + 11);

        return [v20 hasIsInUsersLibrary];
      }

      v19 = *(this + 17);
      if (v19)
      {

        return [v19 hasCompilation];
      }
    }

LABEL_486:
    v5 = 0;
    return v5 & 1;
  }

  if (a2 > 117440512)
  {
    if (a2 <= 150994945)
    {
      switch(a2)
      {
        case 117440513:
          v6 = *(this + 13);
          if (!v6)
          {
            goto LABEL_486;
          }

          return [v6 hasVideoQuality];
        case 117440514:
          v107 = *(this + 13);
          if (!v107)
          {
            goto LABEL_486;
          }

          return [v107 hasRental];
        case 117440515:
          v101 = *(this + 11);

          return [v101 hasHasChapterData];
        case 117440516:
          v99 = *(this + 14);
          if (!v99)
          {
            goto LABEL_486;
          }

          return [v99 hasSeasonNumber];
        case 117440517:
          v102 = *(this + 14);
          if (!v102)
          {
            goto LABEL_486;
          }

          return [v102 hasEpisodeId];
        case 117440518:
          v103 = *(this + 14);
          if (!v103)
          {
            goto LABEL_486;
          }

          return [v103 hasNetworkName];
        case 117440519:
          v110 = *(this + 13);
          if (!v110)
          {
            goto LABEL_486;
          }

          return [v110 hasExtendedContentName];
        case 117440520:
          v109 = *(this + 13);
          if (!v109)
          {
            goto LABEL_486;
          }

          return [v109 hasMovieInfo];
        case 117440521:
          v100 = *(this + 13);
          if (!v100)
          {
            goto LABEL_486;
          }

          return [v100 hasHasAlternateAudio];
        case 117440522:
          v105 = *(this + 13);
          if (!v105)
          {
            goto LABEL_486;
          }

          return [v105 hasHasSubtitles];
        case 117440523:
          v95 = *(this + 13);
          if (!v95)
          {
            goto LABEL_486;
          }

          return [v95 hasAudioLanguage];
        case 117440524:
          v94 = *(this + 13);
          if (!v94)
          {
            goto LABEL_486;
          }

          return [v94 hasAudioTrackIndex];
        case 117440525:
          v112 = *(this + 13);
          if (!v112)
          {
            goto LABEL_486;
          }

          return [v112 hasAudioTrackId];
        case 117440526:
          v108 = *(this + 13);
          if (!v108)
          {
            goto LABEL_486;
          }

          return [v108 hasSubtitleLanguage];
        case 117440527:
          v113 = *(this + 13);
          if (!v113)
          {
            goto LABEL_486;
          }

          return [v113 hasSubtitleTrackIndex];
        case 117440528:
          v106 = *(this + 13);
          if (!v106)
          {
            goto LABEL_486;
          }

          return [v106 hasRentalDuration];
        case 117440529:
          v104 = *(this + 13);
          if (!v104)
          {
            goto LABEL_486;
          }

          return [v104 hasRentalPlaybackDuration];
        case 117440530:
          v97 = *(this + 13);
          if (!v97)
          {
            goto LABEL_486;
          }

          return [v97 hasRentalPlaybackStartedDateTime];
        case 117440531:
          v98 = *(this + 13);
          if (!v98)
          {
            goto LABEL_486;
          }

          return [v98 hasRentalStartedDateTime];
        case 117440532:
        case 117440533:
        case 117440534:
        case 117440535:
        case 117440536:
        case 117440537:
        case 117440538:
        case 117440539:
        case 117440540:
        case 117440541:
        case 117440542:
        case 117440543:
        case 117440545:
        case 117440546:
        case 117440547:
        case 117440548:
        case 117440549:
        case 117440550:
          return v5 & 1;
        case 117440544:
          v96 = *(this + 12);
          if (v96 && ([v96 hasHlsPlaylistURL] & 1) != 0)
          {
            goto LABEL_324;
          }

          v144 = *(this + 16);
          if (!v144)
          {
            goto LABEL_486;
          }

          return [v144 hasHlsPlaylistURL];
        default:
          if (a2 == 134217729)
          {
            v111 = *(this + 11);

            return [v111 hasFlattenedChapterData];
          }

          if (a2 == 150994945)
          {
            return v5 & 1;
          }

          break;
      }

      goto LABEL_76;
    }

    switch(a2)
    {
      case 167772161:
        v12 = *(this + 18);
        if (!v12)
        {
          goto LABEL_486;
        }

        goto LABEL_127;
      case 167772162:
        v41 = *(this + 15);
        if (v41 && [v41 hasSeries])
        {
          v2 = [*(this + 15) series];
          v32 = 1;
          v33 = 1;
          if ([v2 hasName])
          {
            goto LABEL_478;
          }
        }

        else
        {
          v32 = 0;
        }

        v143 = *(this + 14);
        if (!v143 || ![v143 hasSeries])
        {
          goto LABEL_477;
        }

        v137 = [*(this + 14) series];
        v138 = [v137 hasName];
        goto LABEL_475;
      case 167772163:
        v31 = *(this + 15);
        if (v31 && [v31 hasArtist])
        {
          v2 = [*(this + 15) artist];
          v32 = 1;
          v33 = 1;
          if ([v2 hasName])
          {
            goto LABEL_478;
          }
        }

        else
        {
          v32 = 0;
        }

        v136 = *(this + 17);
        if (v136 && [v136 hasArtist])
        {
          v137 = [*(this + 17) artist];
          v138 = [v137 hasName];
LABEL_475:
          v33 = v138;

          v5 = v33;
          if (!v32)
          {
            return v5 & 1;
          }
        }

        else
        {
LABEL_477:
          v33 = 0;
          v5 = 0;
          if ((v32 & 1) == 0)
          {
            return v5 & 1;
          }
        }

LABEL_478:

        v5 = v33;
        return v5 & 1;
      case 167772164:
        v34 = *(this + 15);
        if (v34 && [v34 hasSeries])
        {
          v2 = [*(this + 15) series];
          v29 = 1;
          v5 = 1;
          if ([v2 hasName])
          {
            goto LABEL_481;
          }
        }

        else
        {
          v29 = 0;
        }

        v139 = *(this + 17);
        if (!v139)
        {
          goto LABEL_479;
        }

        v135 = [v139 hasName];
        goto LABEL_465;
      case 167772165:
        v12 = *(this + 19);
        if (!v12)
        {
          goto LABEL_486;
        }

        goto LABEL_127;
      case 167772166:
        v12 = *(this + 20);
        if (!v12)
        {
          goto LABEL_486;
        }

LABEL_127:

        return [v12 hasName];
      case 167772167:
        v39 = *(this + 18);
        if (!v39)
        {
          goto LABEL_486;
        }

        goto LABEL_131;
      case 167772168:
        v35 = *(this + 15);
        if (v35 && [v35 hasSeries])
        {
          v2 = [*(this + 15) series];
          v36 = 1;
          v37 = 1;
          if ([v2 hasSortName])
          {
            goto LABEL_489;
          }
        }

        else
        {
          v36 = 0;
        }

        v140 = *(this + 14);
        if (v140 && [v140 hasSeries])
        {
          v141 = [*(this + 14) series];
          v142 = [v141 sortName];
          v37 = v142 != 0;

          v5 = v37;
          if (!v36)
          {
            return v5 & 1;
          }
        }

        else
        {
          v37 = 0;
          v5 = 0;
          if ((v36 & 1) == 0)
          {
            return v5 & 1;
          }
        }

LABEL_489:

        v5 = v37;
        return v5 & 1;
      case 167772169:
        v42 = *(this + 17);
        if (!v42 || ![v42 hasArtist])
        {
          goto LABEL_486;
        }

        v2 = [*(this + 17) artist];
        v43 = [v2 hasSortName];
        goto LABEL_152;
      case 167772170:
        v28 = *(this + 15);
        if (v28 && [v28 hasSeries])
        {
          v2 = [*(this + 15) series];
          v29 = 1;
          v5 = 1;
          if ([v2 hasSortName])
          {
            goto LABEL_481;
          }
        }

        else
        {
          v29 = 0;
        }

        v134 = *(this + 17);
        if (v134)
        {
          v135 = [v134 hasSortName];
LABEL_465:
          v5 = v135;
        }

        else
        {
LABEL_479:
          v5 = 0;
        }

        if (!v29)
        {
          return v5 & 1;
        }

LABEL_481:

        return v5 & 1;
      case 167772171:
        v39 = *(this + 19);
        if (!v39)
        {
          goto LABEL_486;
        }

LABEL_131:

        return [v39 hasSortName];
      case 167772172:
        goto LABEL_76;
      case 167772173:
      case 167772174:
      case 167772182:
      case 167772184:
      case 167772186:
        return v5 & 1;
      case 167772175:
        v27 = *(this + 17);
        if (!v27)
        {
          goto LABEL_486;
        }

        goto LABEL_121;
      case 167772176:
        v27 = *(this + 18);
        if (!v27)
        {
          goto LABEL_486;
        }

        goto LABEL_121;
      case 167772177:
        v44 = *(this + 17);
        if (!v44 || ![v44 hasArtist])
        {
          goto LABEL_486;
        }

        v2 = [*(this + 17) artist];
        v43 = [v2 hasPersistentId];
        goto LABEL_152;
      case 167772178:
        v27 = *(this + 19);
        if (!v27)
        {
          goto LABEL_486;
        }

        goto LABEL_121;
      case 167772179:
        v27 = *(this + 20);
        if (!v27)
        {
          goto LABEL_486;
        }

LABEL_121:

        return [v27 hasPersistentId];
      case 167772180:
        v46 = *(this + 18);
        if (!v46)
        {
          goto LABEL_486;
        }

        goto LABEL_229;
      case 167772181:
        v47 = *(this + 17);
        if (!v47 || ![v47 hasArtist])
        {
          goto LABEL_486;
        }

        v2 = [*(this + 17) artist];
        v43 = [v2 hasStoreId];
LABEL_152:
        v5 = v43;
        goto LABEL_481;
      case 167772183:
        v45 = *(this + 11);

        return [v45 hasArtworkId];
      case 167772185:
        v40 = *(this + 17);
        if (!v40)
        {
          goto LABEL_486;
        }

        goto LABEL_291;
      case 167772187:
        v30 = *(this + 11);

        return [v30 hasSecondaryArtworkId];
      case 167772188:
        v38 = *(this + 11);

        return [v38 hasSecondaryArtworkSourceType];
      default:
        if ((a2 - 150994947) < 3)
        {
          return v5 & 1;
        }

        if (a2 != 150994946)
        {
          goto LABEL_76;
        }

        v18 = *(this + 12);

        return [v18 hasLyricsChecksum];
    }
  }

  switch(a2)
  {
    case 100663297:
      if ([*(this + 10) hasStoreId])
      {
        goto LABEL_324;
      }

      v46 = *(this + 11);
      goto LABEL_229;
    case 100663298:
      v46 = *(this + 19);
      if (!v46)
      {
        goto LABEL_486;
      }

      goto LABEL_229;
    case 100663299:
      v46 = *(this + 20);
      if (!v46)
      {
        goto LABEL_486;
      }

LABEL_229:

      return [v46 hasStoreId];
    case 100663300:
      v63 = *(this + 11);

      return [v63 hasStorePlaylistId];
    case 100663301:
      v54 = *(this + 11);

      return [v54 hasStorefrontId];
    case 100663302:
      if ([*(this + 10) hasPurchaseHistoryId])
      {
        goto LABEL_324;
      }

      v69 = *(this + 11);

      return [v69 hasPurchaseHistoryId];
    case 100663303:
      v65 = *(this + 11);

      return [v65 hasPurchaseHistoryToken];
    case 100663304:
      v61 = *(this + 11);

      return [v61 hasPurchaseHistoryRedownloadParams];
    case 100663305:
      if ([*(this + 10) hasSagaId])
      {
        goto LABEL_324;
      }

      v60 = *(this + 11);

      return [v60 hasSagaId];
    case 100663306:
      v68 = *(this + 11);

      return [v68 hasSagaRedownloadParams];
    case 100663307:
      v56 = *(this + 11);

      return [v56 hasCloudStatus];
    case 100663308:
      v5 = [*(this + 9) syncIdFromMultiverseId:*(this + 10)] != 0;
      return v5 & 1;
    case 100663309:
    case 100663310:
    case 100663313:
    case 100663328:
    case 100663331:
    case 100663332:
    case 100663333:
    case 100663339:
    case 100663340:
    case 100663341:
    case 100663342:
    case 100663343:
    case 100663353:
    case 100663354:
    case 100663355:
    case 100663356:
    case 100663357:
    case 100663358:
      return v5 & 1;
    case 100663311:
    case 100663316:
      v10 = *(this + 11);

      return [v10 hasDrmVersionsCode];
    case 100663312:
      if ([*(this + 10) hasAccountId])
      {
        goto LABEL_324;
      }

      v52 = *(this + 11);

      return [v52 hasAccountId];
    case 100663314:
      v70 = *(this + 11);

      return [v70 hasFamilyAccountId];
    case 100663315:
      v66 = *(this + 11);

      return [v66 hasStoreProtectionType];
    case 100663317:
      v71 = *(this + 11);

      return [v71 hasDrmPlatformIdCode];
    case 100663318:
      v73 = *(this + 11);

      return [v73 hasDrmKey1IdCode];
    case 100663319:
      v76 = *(this + 11);

      return [v76 hasDrmKey2IdCode];
    case 100663320:
      v57 = *(this + 11);

      return [v57 hasPurchaseDateTime];
    case 100663321:
      v55 = *(this + 11);

      return [v55 hasReleaseDateTime];
    case 100663322:
      v77 = *(this + 15);
      if (!v77)
      {
        goto LABEL_486;
      }

      return [v77 hasExternalGuid];
    case 100663323:
      v74 = *(this + 15);
      if (!v74)
      {
        goto LABEL_486;
      }

      return [v74 hasFeedUrl];
    case 100663324:
      v67 = [*(this + 11) chapterMetadataUrl];
      v5 = v67 != 0;

      return v5 & 1;
    case 100663325:
      v58 = *(this + 11);

      return [v58 hasStoreXID];
    case 100663326:
      v51 = *(this + 11);

      return [v51 hasStoreAssetFlavor];
    case 100663327:
      v50 = *(this + 11);

      return [v50 hasCloudMatchedStatus];
    case 100663330:
      v64 = *(this + 11);

      return [v64 hasExtrasUrl];
    case 100663334:
      if (*(this + 64))
      {
        goto LABEL_486;
      }

      if ([*(this + 11) hasHasLocalAsset] & 1) != 0 || (objc_msgSend(*(this + 11), "hasPurchaseHistoryRedownloadParams") & 1) != 0 || (objc_msgSend(*(this + 11), "hasSagaRedownloadParams"))
      {
        goto LABEL_324;
      }

      if (![*(this + 11) hasSubscriptionStoreItemId])
      {
        goto LABEL_486;
      }

LABEL_205:
      v62 = *(this + 11);

      result = [v62 hasCloudAssetAvailable];
      break;
    case 100663336:
      v75 = *(this + 11);

      return [v75 hasNeedsReporting];
    case 100663337:
      v72 = *(this + 11);

      return [v72 hasSubscriptionStoreItemId];
    case 100663338:
    case 100663345:
      v23 = *(this + 11);

      return [v23 hasPlaybackEndpointType];
    case 100663344:
      goto LABEL_205;
    case 100663346:
      goto LABEL_71;
    case 100663347:
      v78 = *(this + 11);

      return [v78 hasInUsersCloudLibrary];
    case 100663348:
      v79 = *(this + 17);
      if (!v79)
      {
        goto LABEL_486;
      }

      return [v79 hasCloudId];
    case 100663349:
      v49 = *(this + 11);

      return [v49 hasCloudPlaybackEndpointType];
    case 100663350:
      if ([*(this + 10) hasCloudUniversalLibraryId])
      {
        goto LABEL_324;
      }

      v59 = *(this + 11);

      return [v59 hasCloudUniversalLibraryId];
    case 100663351:
      v48 = *(this + 11);

      return [v48 hasReportingStoreItemId];
    case 100663352:
      v53 = *(this + 11);

      return [v53 hasAssetStoreItemId];
    default:
      goto LABEL_76;
  }

  return result;
}

void sub_22D425D94(_Unwind_Exception *a1)
{
  if (v3)
  {
  }

  _Unwind_Resume(a1);
}

void ML3ProtoSyncTrackImportItem::getDataValue(id *this@<X0>, unsigned int a2@<W1>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  if (a2 != 33554441 && a2 != 117440539)
  {
    if (a2 == 134217729)
    {
      v6 = [this[11] flattenedChapterData];
      if (v6)
      {
        v12 = 0;
        v7 = [MEMORY[0x277CCAC58] propertyListWithData:v6 options:0 format:0 error:&v12];
        v8 = v12;
        if (v7)
        {
          v9 = [ML3Track flattenedChapterDataFromDAAPInfoDictionary:v7 trackPersistentID:this[1]];
          [v9 bytes];
          [v9 length];
          operator new();
        }

        operator new();
      }
    }

    else
    {
      v11 = [MEMORY[0x277CCA890] currentHandler];
      v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"virtual ML3CPPDataRef ML3ProtoSyncTrackImportItem::getDataValue(MLImportPropertyKey) const"];
      [v11 handleFailureInFunction:v10 file:@"ML3ProtoSyncImportItem.mm" lineNumber:426 description:{@"getDataValue called with unknown property key %lx", a2}];
    }
  }
}

void sub_22D42604C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  MEMORY[0x2318CD250](v14, 0x1091C40934DB768);

  _Unwind_Resume(a1);
}

double ML3ProtoSyncTrackImportItem::getFloatValue(id *this, int a2)
{
  if (a2 <= 50331664)
  {
    if (a2 == 33554437)
    {
      v3 = [this[11] duration];
      goto LABEL_12;
    }

    if (a2 == 50331664)
    {
      *&result = [this[21] sampleRate];
      return result;
    }
  }

  else
  {
    switch(a2)
    {
      case 50331665:
        v3 = [this[21] startTime];
        goto LABEL_12;
      case 50331666:
        v3 = [this[21] stopTime];
        goto LABEL_12;
      case 83886094:
        v3 = [this[11] bookmarkTimeMilliseconds];
LABEL_12:
        *&result = v3;
        return result;
    }
  }

  v5 = [MEMORY[0x277CCA890] currentHandler];
  v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"virtual float ML3ProtoSyncTrackImportItem::getFloatValue(MLImportPropertyKey) const"];
  [v5 handleFailureInFunction:v6 file:@"ML3ProtoSyncImportItem.mm" lineNumber:388 description:{@"getFloatValue called with unknown property key %lx", a2}];

  return 0.0;
}

uint64_t ML3ProtoSyncTrackImportItem::getIntegerValue(ML3ProtoSyncTrackImportItem *this, int a2)
{
  v4 = 0;
  if (a2 > 100663296)
  {
    if (a2 <= 117440512)
    {
      switch(a2)
      {
        case 100663297:
          if ([*(this + 10) storeId])
          {
            v20 = *(this + 10);
          }

          else
          {
            v20 = *(this + 11);
          }

          goto LABEL_226;
        case 100663298:
          v20 = *(this + 19);
          goto LABEL_226;
        case 100663299:
          v20 = *(this + 20);
          goto LABEL_226;
        case 100663300:
          v27 = *(this + 11);

          return [v27 storePlaylistId];
        case 100663301:
          v30 = *(this + 11);

          return [v30 storefrontId];
        case 100663302:
          if ([*(this + 10) purchaseHistoryId])
          {
            v28 = *(this + 10);
          }

          else
          {
            v28 = *(this + 11);
          }

          return [v28 purchaseHistoryId];
        case 100663303:
          return [*(this + 11) purchaseHistoryToken];
        case 100663305:
          if ([*(this + 10) sagaId])
          {
            v37 = *(this + 10);
          }

          else
          {
            v37 = *(this + 11);
          }

          return [v37 sagaId];
        case 100663307:
          return [*(this + 11) cloudStatus];
        case 100663308:
          v33 = *(this + 9);
          v34 = *(this + 10);

          return [v33 syncIdFromMultiverseId:v34];
        case 100663309:
        case 100663310:
        case 100663313:
        case 100663327:
        case 100663331:
        case 100663332:
        case 100663339:
        case 100663342:
        case 100663343:
        case 100663353:
        case 100663354:
          return v4;
        case 100663311:
        case 100663316:
          return [*(this + 11) drmVersionsCode];
        case 100663312:
          if ([*(this + 10) hasAccountId])
          {
            v32 = *(this + 10);
          }

          else
          {
            v32 = *(this + 11);
          }

          return [v32 accountId];
        case 100663314:
          v35 = *(this + 11);

          return [v35 familyAccountId];
        case 100663315:
          return [*(this + 11) storeProtectionType];
        case 100663317:
          v25 = *(this + 11);

          return [v25 drmPlatformIdCode];
        case 100663318:
          v23 = *(this + 11);

          return [v23 drmKey1IdCode];
        case 100663319:
          v24 = *(this + 11);

          return [v24 drmKey2IdCode];
        case 100663320:
          return [*(this + 11) hasPurchaseDateTime];
        case 100663321:
          v29 = *(this + 11);

          return [v29 releaseDateTime];
        case 100663328:
          return [*(this + 11) cloudMatchedStatus];
        case 100663336:
          return [*(this + 11) needsReporting];
        case 100663337:
          v36 = *(this + 11);

          return [v36 subscriptionStoreItemId];
        case 100663338:
          return [*(this + 11) playbackEndpointType];
        case 100663344:
          if ([*(this + 11) hasCloudAssetAvailable])
          {
            return [*(this + 11) cloudAssetAvailable];
          }

          v4 = 1;
          break;
        case 100663345:
          return [*(this + 11) playbackEndpointType] == 3;
        case 100663346:
          return [*(this + 11) isInUsersLibrary];
        case 100663347:
          return [*(this + 11) inUsersCloudLibrary];
        case 100663349:
          return [*(this + 11) cloudPlaybackEndpointType];
        case 100663351:
          v26 = *(this + 11);

          return [v26 reportingStoreItemId];
        case 100663352:
          v31 = *(this + 11);

          return [v31 assetStoreItemId];
        default:
          goto LABEL_84;
      }

      return v4;
    }

    if (a2 > 150994945)
    {
      if (a2 > 167772179)
      {
        if (a2 > 167772185)
        {
          if (a2 > 285212692)
          {
            if (a2 == 285212693 || a2 == 301989901)
            {
              return v4;
            }

            v12 = 318767118;
LABEL_83:
            if (a2 == v12)
            {
              return v4;
            }

            goto LABEL_84;
          }

          if (a2 != 167772186)
          {
            if (a2 == 167772188)
            {
              return [*(this + 11) secondaryArtworkSourceType];
            }

            goto LABEL_84;
          }

          return v4;
        }

        if (a2 > 167772181)
        {
          if (a2 != 167772182)
          {
            if (a2 == 167772185)
            {
              v16 = *(this + 17);
              return [v16 userRating];
            }

            goto LABEL_84;
          }

          return v4;
        }

        if (a2 != 167772180)
        {
          v9 = [*(this + 17) artist];
          v10 = [v9 storeId];
          goto LABEL_208;
        }

        v20 = *(this + 18);
LABEL_226:

        return [v20 storeId];
      }

      else
      {
        if (a2 > 167772175)
        {
          if (a2 > 167772177)
          {
            if (a2 == 167772178)
            {
              v15 = *(this + 19);
            }

            else
            {
              v15 = *(this + 20);
            }
          }

          else
          {
            if (a2 != 167772176)
            {
              v9 = [*(this + 17) artist];
              v10 = [v9 persistentId];
              goto LABEL_208;
            }

            v15 = *(this + 18);
          }
        }

        else
        {
          if (a2 <= 167772173)
          {
            if ((a2 - 150994948) >= 2)
            {
              if (a2 == 150994946)
              {
                return [*(this + 12) lyricsChecksum];
              }

              goto LABEL_84;
            }

            return v4;
          }

          if (a2 == 167772174)
          {
            return v4;
          }

          v15 = *(this + 17);
        }

        return [v15 persistentId];
      }
    }

    else
    {
      switch(a2)
      {
        case 117440513:
          return [*(this + 13) videoQuality];
        case 117440514:
          return [*(this + 13) rental];
        case 117440515:
          return [*(this + 11) hasChapterData];
        case 117440516:
          return [*(this + 14) seasonNumber];
        case 117440517:
          v9 = [*(this + 14) episodeId];
          v10 = [v9 integerValue];
          goto LABEL_208;
        case 117440518:
        case 117440519:
        case 117440520:
        case 117440534:
        case 117440537:
        case 117440539:
        case 117440544:
          goto LABEL_84;
        case 117440521:
          return [*(this + 13) hasAlternateAudio];
        case 117440522:
          return [*(this + 13) hasSubtitles];
        case 117440523:
          return [*(this + 13) audioLanguage];
        case 117440524:
          return [*(this + 13) audioTrackIndex];
        case 117440525:
          return [*(this + 13) audioTrackId];
        case 117440526:
          return [*(this + 13) subtitleLanguage];
        case 117440527:
          return [*(this + 13) subtitleTrackIndex];
        case 117440528:
          v51 = *(this + 13);

          result = [v51 rentalDuration];
          break;
        case 117440529:
          v50 = *(this + 13);

          result = [v50 rentalPlaybackDuration];
          break;
        case 117440530:
          v49 = *(this + 13);

          result = [v49 rentalPlaybackStartedDateTime];
          break;
        case 117440531:
          v48 = *(this + 13);

          result = [v48 rentalStartedDateTime];
          break;
        case 117440532:
        case 117440533:
        case 117440535:
        case 117440536:
        case 117440538:
        case 117440540:
        case 117440541:
        case 117440542:
        case 117440543:
        case 117440545:
        case 117440546:
        case 117440547:
          return v4;
        default:
          v12 = 150994945;
          goto LABEL_83;
      }
    }
  }

  else
  {
    if (a2 > 33554434)
    {
      switch(a2)
      {
        case 83886081:
          v16 = *(this + 12);
          if (v16)
          {
            return [v16 userRating];
          }

          v16 = *(this + 16);
          if (v16)
          {
            return [v16 userRating];
          }

          return 0;
        case 83886082:
        case 83886090:
        case 83886096:
        case 83886099:
          return v4;
        case 83886083:
          goto LABEL_84;
        case 83886084:
          return [*(this + 11) playCount];
        case 83886085:
          return [*(this + 11) playCountDelta];
        case 83886086:
          return [*(this + 11) playCount] > 0;
        case 83886087:
        case 83886089:
          v5 = *(this + 11);

          return [v5 lastPlayedDateTime];
        case 83886088:
          v39 = *(this + 11);

          return [v39 lastSkippedDateTime];
        case 83886091:
          return [*(this + 11) skipCount];
        case 83886092:
          return [*(this + 11) skipCountDelta];
        case 83886093:
          return [*(this + 11) rememberBookmark];
        case 83886094:
          v38 = *(this + 11);

          return [v38 bookmarkTimeMilliseconds];
        case 83886095:
          return [*(this + 11) hidden];
        case 83886097:
          return [*(this + 11) likedState];
        case 83886098:
          return [*(this + 11) likedStateChanged];
        case 83886100:
          v40 = *(this + 11);

          return [v40 likedStateChangedDate];
        default:
          switch(a2)
          {
            case 50331649:
              v11 = *(this + 12);
              if (!v11)
              {
                v11 = *(this + 16);
                if (!v11)
                {
                  return 0;
                }
              }

              return [v11 audioFormat];
            case 50331650:
              return [*(this + 21) bitRate];
            case 50331651:
              return [*(this + 21) codecType];
            case 50331652:
              return [*(this + 21) codecSubType];
            case 50331653:
              return [*(this + 21) dataKind];
            case 50331655:
              v41 = *(this + 21);

              return [v41 durationInSamples];
            case 50331658:
              v44 = *(this + 21);

              return [v44 gaplessHeuristicCode];
            case 50331659:
              v42 = *(this + 21);

              return [v42 gaplessHeuristicDelayCode];
            case 50331660:
              v43 = *(this + 21);

              return [v43 gaplessEncodingDrainCode];
            case 50331661:
              v45 = *(this + 21);

              return [v45 gaplessFrameResyncCode];
            case 50331662:
              v47 = *(this + 12);
              if (!v47)
              {
                v47 = *(this + 16);
                if (!v47)
                {
                  return 0;
                }
              }

              return [v47 hasVideo];
            case 50331663:
              return [*(this + 21) relativeVolume];
            case 50331664:
              return [*(this + 21) sampleRate];
            case 50331667:
              v46 = *(this + 21);

              return [v46 volumeNormalizationEnergy];
            case 50331668:
              return [*(this + 21) progressionDirection];
            default:
              goto LABEL_84;
          }
      }
    }

    if (a2 <= 16777237)
    {
      if ((a2 - 16777218) >= 0x13)
      {
        if (a2 != 16777217)
        {
          if (a2 == 16777237)
          {
            v8 = *(this + 12);
            if (v8)
            {
              return [v8 discNumber];
            }

            v8 = *(this + 16);
            if (v8)
            {
              return [v8 discNumber];
            }

            return 0;
          }

LABEL_84:
          v21 = [MEMORY[0x277CCA890] currentHandler];
          v22 = [MEMORY[0x277CCACA8] stringWithUTF8String:"virtual int64_t ML3ProtoSyncTrackImportItem::getIntegerValue(MLImportPropertyKey) const"];
          [v21 handleFailureInFunction:v22 file:@"ML3ProtoSyncImportItem.mm" lineNumber:370 description:{@"getIntegerValue called with unknown property key %lx", a2}];

          return 0;
        }

        v17 = [*(this + 11) mediaType] - 1;
        if (v17 > 0xC)
        {
          return 0;
        }

        return dword_22D5C9BB4[v17];
      }

      return v4;
    }

    if (a2 <= 16777245)
    {
      if (a2 <= 16777241)
      {
        if ((a2 - 16777240) < 2)
        {
          return v4;
        }

        if (a2 == 16777238)
        {
          v18 = *(this + 12);
          if (v18)
          {
            return [v18 trackNumber];
          }

          v18 = *(this + 16);
          if (v18)
          {
            return [v18 trackNumber];
          }

          v52 = *(this + 14);
          if (!v52)
          {
            return 0;
          }

          v9 = [v52 episodeId];
          v10 = [v9 integerValue];
        }

        else
        {
          if (a2 != 16777239)
          {
            goto LABEL_84;
          }

          v9 = ML3ProtoSyncTrackImportItem::_getProtoStringValue(this, 16777239);
          v10 = [v9 integerValue];
        }

LABEL_208:
        v4 = v10;

        return v4;
      }

      if ((a2 - 16777243) < 2)
      {
        return v4;
      }

      if (a2 == 16777242)
      {
        v19 = *(this + 12);
        if (!v19)
        {
          v19 = *(this + 16);
          if (!v19)
          {
            return 0;
          }
        }

        return [v19 excludeFromShuffle];
      }

      else
      {
        if (a2 != 16777245)
        {
          goto LABEL_84;
        }

        return [*(this + 11) isInUsersLibrary];
      }
    }

    if ((a2 - 16777248) < 6)
    {
      return v4;
    }

    if (a2 == 16777246)
    {
      return [*(this + 17) compilation];
    }

    if (a2 != 16777247)
    {
      goto LABEL_84;
    }

    v13 = *(this + 11);

    return [v13 creationDateTime];
  }

  return result;
}

void ML3ProtoSyncTrackImportItem::getStringValue(id *this@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v4 = ML3ProtoSyncTrackImportItem::_getProtoStringValue(this, a2);
  v5 = v4;
  if (v4)
  {
    std::string::basic_string[abi:ne200100]<0>(__p, [v4 UTF8String]);
    *a3 = &unk_28408AC60;
    *(a3 + 8) = 1;
    if (SHIBYTE(v7) < 0)
    {
      std::string::__init_copy_ctor_external((a3 + 16), __p[0], __p[1]);
      if (SHIBYTE(v7) < 0)
      {
        operator delete(__p[0]);
      }
    }

    else
    {
      *(a3 + 16) = *__p;
      *(a3 + 32) = v7;
    }
  }

  else
  {
    *a3 = &unk_28408AC60;
    *(a3 + 8) = 0;
    *(a3 + 24) = 0;
    *(a3 + 32) = 0;
    *(a3 + 16) = 0;
  }
}

void sub_22D42719C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void ML3ProtoSyncTrackImportItem::~ML3ProtoSyncTrackImportItem(id *this)
{
  ML3ProtoSyncTrackImportItem::~ML3ProtoSyncTrackImportItem(this);

  JUMPOUT(0x2318CD250);
}

{

  ML3ProtoSyncImportItem::~ML3ProtoSyncImportItem(this);
}

void ML3ProtoSyncDeleteImportItem::~ML3ProtoSyncDeleteImportItem(id *this)
{
  ML3ProtoSyncTrackImportItem::~ML3ProtoSyncTrackImportItem(this);

  JUMPOUT(0x2318CD250);
}

id ML3ProtoSyncContainerImportItem::getDeduplicationPredicates(id *this)
{
  v2 = [MEMORY[0x277CBEB18] array];
  v3 = [this[9] syncIdFromMultiverseId:this[10]];
  if (!v3)
  {
    v3 = this[1];
  }

  v4 = [ML3ComparisonPredicate predicateWithProperty:@"sync_id" equalToInt64:v3];
  [v2 addObject:v4];

  v5 = [ML3ComparisonPredicate predicateWithProperty:@"container_pid" equalToInt64:this[1]];
  [v2 addObject:v5];

  v6 = (*(*this + 4))(this, 184549408);
  if (v6)
  {
    v7 = [ML3ComparisonPredicate predicateWithProperty:@"store_cloud_id" equalToInt64:v6];
    [v2 addObject:v7];
  }

  (*(*this + 3))(&v13, this, 184549417);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v15, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
    v13 = &unk_28408AC60;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v15 = __p;
  }

  size = HIBYTE(v15.__r_.__value_.__r.__words[2]);
  v9 = HIBYTE(v15.__r_.__value_.__r.__words[2]);
  if ((v15.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = v15.__r_.__value_.__l.__size_;
  }

  if (size)
  {
    v10 = ML3CPPBridgeString(&v15, 1);
    v11 = [ML3ComparisonPredicate predicateWithProperty:@"cloud_global_id" equalToValue:v10];
    [v2 addObject:v11];

    v9 = HIBYTE(v15.__r_.__value_.__r.__words[2]);
  }

  if (v9 < 0)
  {
    operator delete(v15.__r_.__value_.__l.__data_);
  }

  return v2;
}

void sub_22D4274FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void ML3ProtoSyncContainerImportItem::getDescription(id *this)
{
  (*(*this + 3))(&v8);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v14, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
    v8 = &unk_28408AC60;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v14 = __p;
  }

  std::ostringstream::basic_ostringstream[abi:ne200100](&v8);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v8, "<ML3ProtoSyncContainerImportItem ", 33);
  *(&v8 + *(v8 - 3) + 8) = *(&v8 + *(v8 - 3) + 8) & 0xFFFFFFB5 | 8;
  MEMORY[0x2318CD100](&v8, this);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v8, " name='", 7);
  if ((v14.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v2 = &v14;
  }

  else
  {
    v2 = v14.__r_.__value_.__r.__words[0];
  }

  if ((v14.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v14.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v14.__r_.__value_.__l.__size_;
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v8, v2, size);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v8, "'", 1);
  ML3ProtoSyncImportItem::getDescription(this, v6);
  if ((v7 & 0x80u) == 0)
  {
    v4 = v6;
  }

  else
  {
    v4 = v6[0];
  }

  if ((v7 & 0x80u) == 0)
  {
    v5 = v7;
  }

  else
  {
    v5 = v6[1];
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v8, v4, v5);
  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  std::stringbuf::str();
  v8 = *MEMORY[0x277D82828];
  *(&v8 + *(v8 - 3)) = *(MEMORY[0x277D82828] + 24);
  v9 = MEMORY[0x277D82878] + 16;
  if (v12 < 0)
  {
    operator delete(v11);
  }

  v9 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(&__p);
  std::ostream::~ostream();
  MEMORY[0x2318CD1F0](&v13);
  if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v14.__r_.__value_.__l.__data_);
  }
}

void sub_22D42784C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void ML3ProtoSyncContainerImportItem::getImportItemArrayValue(id *this@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  if ((a2 - 218103813) >= 2)
  {
    if (a2 == 218103812)
    {
      v5 = [this[11] itemsCount];
      if (v5)
      {
        for (i = 0; i != v5; ++i)
        {
          v7 = [this[11] itemsAtIndex:i];
          if ([this[9] syncIdFromMultiverseId:v7])
          {
            operator new();
          }
        }
      }
    }

    else
    {
      v9 = [MEMORY[0x277CCA890] currentHandler];
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"virtual std::vector<std::shared_ptr<ML3ImportItem>> ML3ProtoSyncContainerImportItem::getImportItemArrayValue(MLImportPropertyKey) const"];
      [v9 handleFailureInFunction:v8 file:@"ML3ProtoSyncImportItem.mm" lineNumber:1031 description:{@"getImportItemArrayValue called with unknown property key %x", a2}];
    }
  }
}

uint64_t std::__shared_ptr_pointer<ML3ProtoSyncContainerTrackItemImportItem *,std::shared_ptr<ML3ImportItem>::__shared_ptr_default_delete<ML3ImportItem,ML3ProtoSyncContainerTrackItemImportItem>,std::allocator<ML3ProtoSyncContainerTrackItemImportItem>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "NSt3__110shared_ptrI13ML3ImportItemE27__shared_ptr_default_deleteIS1_40ML3ProtoSyncContainerTrackItemImportItemEE"))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__shared_ptr_pointer<ML3ProtoSyncContainerTrackItemImportItem *,std::shared_ptr<ML3ImportItem>::__shared_ptr_default_delete<ML3ImportItem,ML3ProtoSyncContainerTrackItemImportItem>,std::allocator<ML3ProtoSyncContainerTrackItemImportItem>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void std::__shared_ptr_pointer<ML3ProtoSyncContainerTrackItemImportItem *,std::shared_ptr<ML3ImportItem>::__shared_ptr_default_delete<ML3ImportItem,ML3ProtoSyncContainerTrackItemImportItem>,std::allocator<ML3ProtoSyncContainerTrackItemImportItem>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2318CD250);
}

uint64_t ML3ProtoSyncContainerTrackItemImportItem::getDescription(ML3ProtoSyncContainerTrackItemImportItem *this)
{
  std::ostringstream::basic_ostringstream[abi:ne200100](&v6);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v6, "<ML3ProtoSyncContainerTrackItemImportItem ", 42);
  *(&v6 + *(v6 - 24) + 8) = *(&v6 + *(v6 - 24) + 8) & 0xFFFFFFB5 | 8;
  v2 = MEMORY[0x2318CD100](&v6, this);
  v3 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v2, " sync_id=", 9);
  *(v3 + *(*v3 - 24) + 8) = *(v3 + *(*v3 - 24) + 8) & 0xFFFFFFB5 | 2;
  v4 = MEMORY[0x2318CD140]();
  v11 = 62;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, &v11, 1);
  std::stringbuf::str();
  v6 = *MEMORY[0x277D82828];
  *(&v6 + *(v6 - 24)) = *(MEMORY[0x277D82828] + 24);
  v7 = MEMORY[0x277D82878] + 16;
  if (v9 < 0)
  {
    operator delete(v8[7].__locale_);
  }

  v7 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v8);
  std::ostream::~ostream();
  return MEMORY[0x2318CD1F0](&v10);
}

uint64_t ML3ProtoSyncContainerTrackItemImportItem::getIntegerValue(ML3ProtoSyncContainerTrackItemImportItem *this, uint64_t a2)
{
  if (a2 == 234881030)
  {
    return *(this + 8);
  }

  v4 = [MEMORY[0x277CCA890] currentHandler];
  v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"virtual int64_t ML3ProtoSyncContainerTrackItemImportItem::getIntegerValue(MLImportPropertyKey) const"];
  [v4 handleFailureInFunction:v5 file:@"ML3ProtoSyncImportItem.mm" lineNumber:1235 description:{@"ML3ProtoSyncContainerTrackItemImportItem::getIntegerValue called with unknown property key %x", a2}];

  return 0;
}

void ML3ProtoSyncContainerTrackItemImportItem::getStringValue(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  *a2 = &unk_28408AC60;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  if ((a1 - 234881028) > 6 || ((1 << (a1 - 4)) & 0x43) == 0)
  {
    v6 = [MEMORY[0x277CCA890] currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"virtual ML3ImportStringValue ML3ProtoSyncContainerTrackItemImportItem::getStringValue(MLImportPropertyKey) const"];
    [v6 handleFailureInFunction:v5 file:@"ML3ProtoSyncImportItem.mm" lineNumber:1220 description:{@"ML3ProtoSyncContainerTrackItemImportItem::getStringValue called with unknown property key %x", a1}];
  }
}

void sub_22D4280C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  *v10 = v11;
  if (*(v10 + 39) < 0)
  {
    operator delete(*v13);
  }

  _Unwind_Resume(a1);
}

void ML3ProtoSyncContainerTrackItemImportItem::~ML3ProtoSyncContainerTrackItemImportItem(ML3ProtoSyncContainerTrackItemImportItem *this)
{
  *this = off_2840859C8;
  std::__hash_table<std::__hash_value_type<unsigned int,ML3ImportValue<std::string>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,ML3ImportValue<std::string>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,ML3ImportValue<std::string>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,ML3ImportValue<std::string>>>>::~__hash_table(this + 24);

  JUMPOUT(0x2318CD250);
}

{
  *this = off_2840859C8;
  std::__hash_table<std::__hash_value_type<unsigned int,ML3ImportValue<std::string>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,ML3ImportValue<std::string>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,ML3ImportValue<std::string>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,ML3ImportValue<std::string>>>>::~__hash_table(this + 24);
}

uint64_t ML3ProtoSyncContainerImportItem::hasValue(ML3ProtoSyncContainerImportItem *this, uint64_t a2)
{
  if ((a2 - 184549376) >> 24 > 2)
  {
    return 0;
  }

  if (a2 <= 201326592)
  {
    v3 = 1;
    switch(a2)
    {
      case 184549377:
      case 184549378:
      case 184549413:
        return v3;
      case 184549379:
        v31 = *(this + 11);

        result = [v31 hasDistinguishedKind];
        break;
      case 184549380:
        v42 = *(this + 11);

        result = [v42 hasCreationDateTime];
        break;
      case 184549381:
        v26 = *(this + 11);

        result = [v26 hasModificationDateTime];
        break;
      case 184549382:
        v24 = *(this + 11);

        result = [v24 hasLastPlayedDateTime];
        break;
      case 184549383:
      case 184549385:
      case 184549390:
      case 184549393:
      case 184549394:
      case 184549412:
      case 184549415:
      case 184549416:
      case 184549432:
      case 184549434:
      case 184549435:
      case 184549436:
      case 184549437:
      case 184549438:
      case 184549439:
      case 184549440:
      case 184549441:
      case 184549442:
      case 184549449:
      case 184549453:
      case 184549454:
      case 184549457:
      case 184549458:
      case 184549464:
      case 184549469:
        return 0;
      case 184549384:
        v50 = *(this + 11);

        result = [v50 hasName];
        break;
      case 184549386:
        v38 = *(this + 11);

        result = [v38 hasPlaylistDescription];
        break;
      case 184549387:
        v25 = *(this + 11);

        result = [v25 hasOwner];
        break;
      case 184549388:
        v48 = *(this + 11);

        result = [v48 hasEditable];
        break;
      case 184549389:
        v36 = *(this + 11);

        result = [v36 hasPlayCount];
        break;
      case 184549391:
        return [*(this + 11) likedState] != 0;
      case 184549392:
        v29 = *(this + 11);

        result = [v29 hasParentIdentifier];
        break;
      case 184549395:
        v43 = *(this + 11);

        result = [v43 hasHidden];
        break;
      case 184549396:
        v51 = *(this + 12);
        if (!v51)
        {
          return 0;
        }

        result = [v51 hasEvaluationOrder];
        break;
      case 184549397:
      case 184549414:
        v9 = *(this + 11);

        result = [v9 hasType];
        break;
      case 184549398:
        v63 = *(this + 12);
        if (!v63)
        {
          return 0;
        }

        result = [v63 hasDynamic];
        break;
      case 184549399:
        v44 = *(this + 12);
        if (!v44)
        {
          return 0;
        }

        result = [v44 hasFiltered];
        break;
      case 184549400:
        v49 = *(this + 12);
        if (!v49)
        {
          return 0;
        }

        result = [v49 hasGenius];
        break;
      case 184549401:
        v17 = *(this + 12);
        if (!v17)
        {
          return 0;
        }

        result = [v17 hasEnabledItemsOnly];
        break;
      case 184549402:
        v52 = *(this + 12);
        if (!v52)
        {
          return 0;
        }

        result = [v52 hasLimited];
        break;
      case 184549403:
        v18 = *(this + 12);
        if (!v18)
        {
          return 0;
        }

        result = [v18 hasLimitKind];
        break;
      case 184549404:
        v60 = *(this + 12);
        if (!v60)
        {
          return 0;
        }

        result = [v60 hasLimitOrder];
        break;
      case 184549405:
        v41 = *(this + 12);
        if (!v41)
        {
          return 0;
        }

        result = [v41 hasLimitValue];
        break;
      case 184549406:
        v34 = *(this + 12);
        if (!v34)
        {
          return 0;
        }

        result = [v34 hasReverseLimitOrder];
        break;
      case 184549407:
        v35 = *(this + 12);
        if (!v35)
        {
          return 0;
        }

        result = [v35 hasSmartCriteria];
        break;
      case 184549408:
        v57 = *(this + 11);

        result = [v57 hasStoreId];
        break;
      case 184549409:
        v37 = *(this + 11);

        result = [v37 hasSortType];
        break;
      case 184549410:
        v28 = *(this + 11);

        result = [v28 hasReversedSorting];
        break;
      case 184549417:
        v46 = *(this + 11);

        result = [v46 hasCloudGlobalId];
        break;
      case 184549418:
        v66 = *(this + 11);

        result = [v66 hasSubscriberURL];
        break;
      case 184549419:
        v21 = *(this + 11);

        result = [v21 hasShared];
        break;
      case 184549420:
        v58 = *(this + 11);

        result = [v58 hasVisible];
        break;
      case 184549422:
        v64 = *(this + 11);

        result = [v64 hasAuthorStoreId];
        break;
      case 184549423:
        v54 = *(this + 11);

        result = [v54 hasAuthorDisplayName];
        break;
      case 184549424:
        v39 = *(this + 11);

        result = [v39 hasAuthorStoreURL];
        break;
      case 184549425:
        v47 = *(this + 11);

        result = [v47 hasMinRefreshInterval];
        break;
      case 184549426:
        v61 = *(this + 11);

        result = [v61 hasCloudLastUpdateTime];
        break;
      case 184549427:
        v40 = *(this + 11);

        result = [v40 hasSubscriberCount];
        break;
      case 184549428:
        v32 = *(this + 11);

        result = [v32 hasSubscriberPlayCount];
        break;
      case 184549429:
        v15 = *(this + 11);

        result = [v15 hasSubscriberLikedCount];
        break;
      case 184549430:
        v30 = *(this + 11);

        result = [v30 hasCloudIsSubscribed];
        break;
      case 184549431:
        v23 = *(this + 11);

        result = [v23 hasCloudIsCuratorPlaylist];
        break;
      case 184549443:
        v55 = *(this + 11);

        result = [v55 hasExternalVendorIdentifier];
        break;
      case 184549444:
        v45 = *(this + 11);

        result = [v45 hasExternalVendorDisplayName];
        break;
      case 184549445:
        v20 = *(this + 11);

        result = [v20 hasExternalVendorTag];
        break;
      case 184549446:
        v59 = *(this + 11);

        result = [v59 hasExternalVendorPlaylist];
        break;
      case 184549447:
        v67 = *(this + 11);

        result = [v67 hasCloudIsSharingDisabled];
        break;
      case 184549448:
        v62 = *(this + 11);

        result = [v62 hasCloudVersionHash];
        break;
      case 184549450:
        v12 = *(this + 11);

        result = [v12 hasArtworkId];
        break;
      case 184549451:
        v27 = *(this + 11);

        result = [v27 hasAuthorHandle];
        break;
      case 184549452:
        v13 = *(this + 11);

        result = [v13 hasCloudUniversalLibraryId];
        break;
      case 184549455:
        v22 = *(this + 11);

        result = [v22 hasPlaylistCategoryTypeMask];
        break;
      case 184549456:
        v56 = *(this + 11);

        result = [v56 hasPlaylistGroupingSortKey];
        break;
      case 184549459:
        v68 = *(this + 11);

        result = [v68 hasTraits];
        break;
      case 184549460:
        v19 = *(this + 11);

        result = [v19 hasLikedStateChangedDate];
        break;
      case 184549461:
        v33 = *(this + 11);

        result = [v33 hasCoverArtworkRecipe];
        break;
      case 184549462:
        v16 = *(this + 11);

        result = [v16 hasIsCollaborative];
        break;
      case 184549463:
        v53 = *(this + 11);

        result = [v53 hasCollaborationMode];
        break;
      case 184549465:
        v10 = *(this + 11);

        result = [v10 hasCollaborationInvitationURL];
        break;
      case 184549466:
        v65 = *(this + 11);

        result = [v65 hasCollaborationInvitationURLExpirationDate];
        break;
      case 184549467:
        v11 = *(this + 11);

        result = [v11 hasCollaborationJoinRequestPending];
        break;
      case 184549468:
        v14 = *(this + 11);

        result = [v14 hasCollaboratorStatus];
        break;
      default:
        goto LABEL_18;
    }

    return result;
  }

  if (a2 <= 218103810)
  {
    switch(a2)
    {
      case 0xC000001:
        v69 = *(this + 11);

        return [v69 hasGeniusSeedTrackIdentifier];
      case 0xC000002:
        return 0;
      case 0xD000002:
        v6 = *(this + 11);

        return [v6 hasSecondaryArtworkId];
    }

LABEL_18:
    v7 = [MEMORY[0x277CCA890] currentHandler];
    v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"virtual BOOL ML3ProtoSyncContainerImportItem::hasValue(MLImportPropertyKey) const"];
    [v7 handleFailureInFunction:v8 file:@"ML3ProtoSyncImportItem.mm" lineNumber:1147 description:{@"hasValue called with unknown property key %x", a2}];

    return 0;
  }

  if (a2 > 218103812)
  {
    if (a2 == 218103813 || a2 == 218103814)
    {
      return 0;
    }

    goto LABEL_18;
  }

  if (a2 != 218103811)
  {
    v5 = [*(this + 11) items];
    v3 = v5 != 0;

    return v3;
  }

  v70 = *(this + 11);

  return [v70 hasSecondaryArtworkSourceType];
}

void ML3ProtoSyncContainerImportItem::getDataValue(id *this@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  if (a2 == 184549407)
  {
    [this[12] smartCriteria];
    if (objc_claimAutoreleasedReturnValue())
    {
      operator new();
    }
  }

  else
  {
    v5 = [MEMORY[0x277CCA890] currentHandler];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"virtual ML3CPPDataRef ML3ProtoSyncContainerImportItem::getDataValue(MLImportPropertyKey) const"];
    [v5 handleFailureInFunction:v4 file:@"ML3ProtoSyncImportItem.mm" lineNumber:1004 description:{@"getDataValue called with unknown property key %x", a2}];
  }
}

double ML3ProtoSyncContainerImportItem::getFloatValue(ML3ProtoSyncContainerImportItem *this, uint64_t a2)
{
  v3 = [MEMORY[0x277CCA890] currentHandler];
  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"virtual float ML3ProtoSyncContainerImportItem::getFloatValue(MLImportPropertyKey) const"];
  [v3 handleFailureInFunction:v4 file:@"ML3ProtoSyncImportItem.mm" lineNumber:983 description:{@"getFloatValue called with unknown property key %x", a2}];

  return 0.0;
}

id ML3ProtoSyncContainerImportItem::getIntegerValue(id *this, uint64_t a2)
{
  v4 = 0;
  if (a2 > 201326592)
  {
    switch(a2)
    {
      case 0xC000001:
        v11 = [this[11] geniusSeedTrackIdentifier];
        if (v11)
        {
          v19 = this[9];
          v20 = [this[11] geniusSeedTrackIdentifier];
          v4 = [v19 syncIdFromMultiverseId:v20];
        }

        else
        {
          v4 = 0;
        }

LABEL_79:

        break;
      case 0xC000002:
        break;
      case 0xD000003:
        return [this[11] secondaryArtworkSourceType];
      default:
LABEL_77:
        v21 = [MEMORY[0x277CCA890] currentHandler];
        v22 = [MEMORY[0x277CCACA8] stringWithUTF8String:"virtual int64_t ML3ProtoSyncContainerImportItem::getIntegerValue(MLImportPropertyKey) const"];
        [v21 handleFailureInFunction:v22 file:@"ML3ProtoSyncImportItem.mm" lineNumber:971 description:{@"getIntegerValue called with unknown property key %x", a2}];

        return 0;
    }
  }

  else
  {
    switch(a2)
    {
      case 184549377:
        return this[1];
      case 184549378:
        v4 = [this[9] syncIdFromMultiverseId:this[10]];
        if (v4)
        {
          return v4;
        }

        return this[1];
      case 184549379:
        return [this[11] distinguishedKind];
      case 184549380:
        v14 = this[11];

        return [v14 creationDateTime];
      case 184549381:
        v13 = this[11];

        return [v13 modificationDateTime];
      case 184549382:
        v15 = this[11];

        return [v15 lastPlayedDateTime];
      case 184549383:
      case 184549390:
      case 184549393:
      case 184549394:
      case 184549412:
      case 184549415:
      case 184549432:
      case 184549434:
      case 184549435:
      case 184549436:
      case 184549437:
      case 184549438:
      case 184549440:
      case 184549441:
      case 184549442:
      case 184549449:
      case 184549453:
      case 184549454:
      case 184549457:
      case 184549458:
      case 184549464:
        return v4;
      case 184549387:
        v6 = [this[11] owner];
        goto LABEL_73;
      case 184549388:
        v6 = [this[11] editable];
        goto LABEL_73;
      case 184549389:
        return [this[11] playCount];
      case 184549391:
        return [this[11] likedState];
      case 184549392:
        v10 = this[9];
        v11 = [this[11] parentIdentifier];
        v4 = [v10 syncIdFromMultiverseId:v11];
        goto LABEL_79;
      case 184549395:
        v6 = [this[11] hidden];
        goto LABEL_73;
      case 184549396:
        v6 = [this[12] evaluationOrder];
        goto LABEL_73;
      case 184549397:
        return ([this[11] type] == 4);
      case 184549398:
        v6 = [this[12] dynamic];
        goto LABEL_73;
      case 184549399:
        v6 = [this[12] filtered];
        goto LABEL_73;
      case 184549400:
        v6 = [this[12] genius];
        goto LABEL_73;
      case 184549401:
        v6 = [this[12] enabledItemsOnly];
        goto LABEL_73;
      case 184549402:
        v6 = [this[12] limited];
        goto LABEL_73;
      case 184549403:
        return [this[12] limitKind];
      case 184549404:
        v6 = [this[12] limitOrder];
        goto LABEL_73;
      case 184549405:
        v6 = [this[12] limitValue];
        goto LABEL_73;
      case 184549406:
        v6 = [this[12] reverseLimitOrder];
        goto LABEL_73;
      case 184549408:
        v17 = this[11];

        return [v17 storeId];
      case 184549409:
        v6 = +[ML3Container trackOrderFromProtocolSortType:](ML3Container, "trackOrderFromProtocolSortType:", [this[11] sortType]);
        goto LABEL_73;
      case 184549410:
        v6 = [this[11] reversedSorting];
        goto LABEL_73;
      case 184549413:
        return [this[11] remoteSourceType];
      case 184549414:
        return [this[11] type];
      case 184549416:
        [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
        return v18;
      case 184549419:
        v6 = [this[11] shared];
        goto LABEL_73;
      case 184549420:
        v6 = [this[11] visible];
        goto LABEL_73;
      case 184549422:
        v9 = this[11];

        return [v9 authorStoreId];
      case 184549425:
        v12 = this[11];

        return [v12 minRefreshInterval];
      case 184549426:
        v6 = [this[11] hasCloudLastUpdateTime];
        goto LABEL_73;
      case 184549427:
        return [this[11] subscriberCount];
      case 184549428:
        return [this[11] subscriberPlayCount];
      case 184549429:
        return [this[11] subscriberLikedCount];
      case 184549430:
        v6 = [this[11] cloudIsSubscribed];
        goto LABEL_73;
      case 184549431:
        v6 = [this[11] cloudIsCuratorPlaylist];
        goto LABEL_73;
      case 184549446:
        v6 = [this[11] externalVendorPlaylist];
        goto LABEL_73;
      case 184549447:
        v6 = [this[11] cloudIsSharingDisabled];
        goto LABEL_73;
      case 184549455:
        return [this[11] playlistCategoryTypeMask];
      case 184549459:
        return [this[11] traits];
      case 184549460:
        v7 = this[11];

        return [v7 likedStateChangedDate];
      case 184549462:
        v6 = [this[11] isCollaborative];
        goto LABEL_73;
      case 184549463:
        return [this[11] collaborationMode];
      case 184549466:
        v16 = this[11];

        return [v16 collaborationInvitationURLExpirationDate];
      case 184549467:
        v6 = [this[11] collaborationJoinRequestPending];
LABEL_73:
        v4 = v6;
        break;
      case 184549468:
        return [this[11] collaboratorStatus];
      default:
        goto LABEL_77;
    }
  }

  return v4;
}

void ML3ProtoSyncContainerImportItem::getStringValue(id *this@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (a2 <= 184549444)
  {
    if (a2 <= 184549422)
    {
      if (a2 > 184549416)
      {
        if (a2 == 184549417)
        {
          v5 = [this[11] cloudGlobalId];
        }

        else
        {
          if (a2 != 184549418)
          {
            goto LABEL_49;
          }

          v5 = [this[11] subscriberURL];
        }
      }

      else if (a2 == 184549384)
      {
        v5 = [this[11] name];
      }

      else
      {
        if (a2 != 184549386)
        {
          goto LABEL_49;
        }

        v5 = [this[11] playlistDescription];
      }

      goto LABEL_44;
    }

    if (a2 <= 184549438)
    {
      if (a2 == 184549423)
      {
        v5 = [this[11] authorDisplayName];
      }

      else
      {
        if (a2 != 184549424)
        {
          goto LABEL_49;
        }

        v5 = [this[11] authorStoreURL];
      }

      goto LABEL_44;
    }

    if (a2 != 184549439)
    {
      if (a2 == 184549443)
      {
        v5 = [this[11] externalVendorIdentifier];
      }

      else
      {
        if (a2 != 184549444)
        {
          goto LABEL_49;
        }

        v5 = [this[11] externalVendorDisplayName];
      }

      goto LABEL_44;
    }

LABEL_50:
    v6 = 0;
    *a3 = &unk_28408AC60;
    *(a3 + 8) = 0;
    *(a3 + 24) = 0;
    *(a3 + 32) = 0;
    *(a3 + 16) = 0;
    goto LABEL_51;
  }

  if (a2 > 184549455)
  {
    if (a2 <= 184549464)
    {
      if (a2 == 184549456)
      {
        v5 = [this[11] playlistGroupingSortKey];
      }

      else
      {
        if (a2 != 184549461)
        {
          goto LABEL_49;
        }

        v5 = [this[11] coverArtworkRecipe];
      }

      goto LABEL_44;
    }

    if (a2 == 184549465)
    {
      v5 = [this[11] collaborationInvitationURL];
      goto LABEL_44;
    }

    if (a2 != 184549469)
    {
      if (a2 != 218103810)
      {
        goto LABEL_49;
      }

      v5 = [this[11] secondaryArtworkId];
      goto LABEL_44;
    }

    goto LABEL_50;
  }

  if (a2 <= 184549449)
  {
    if (a2 == 184549445)
    {
      v5 = [this[11] externalVendorTag];
    }

    else
    {
      if (a2 != 184549448)
      {
        goto LABEL_49;
      }

      v5 = [this[11] cloudVersionHash];
    }
  }

  else
  {
    switch(a2)
    {
      case 0xB00004A:
        v5 = [this[11] artworkId];
        break;
      case 0xB00004B:
        v5 = [this[11] authorHandle];
        break;
      case 0xB00004C:
        v5 = [this[11] cloudUniversalLibraryId];
        break;
      default:
LABEL_49:
        v7 = [MEMORY[0x277CCA890] currentHandler];
        v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *ML3ProtoSyncContainerImportItem::_getProtoStringValue(MLImportPropertyKey) const"];
        [v7 handleFailureInFunction:v8 file:@"ML3ProtoSyncImportItem.mm" lineNumber:1178 description:{@"_getProtoStringValue called with unknown property key %x", a2}];

        goto LABEL_50;
    }
  }

LABEL_44:
  v6 = v5;
  if (!v5)
  {
    goto LABEL_50;
  }

  std::string::basic_string[abi:ne200100]<0>(__p, [v5 UTF8String]);
  *a3 = &unk_28408AC60;
  *(a3 + 8) = 1;
  if (SHIBYTE(v10) < 0)
  {
    std::string::__init_copy_ctor_external((a3 + 16), __p[0], __p[1]);
    if (SHIBYTE(v10) < 0)
    {
      operator delete(__p[0]);
    }
  }

  else
  {
    *(a3 + 16) = *__p;
    *(a3 + 32) = v10;
  }

LABEL_51:
}

void ML3ProtoSyncContainerImportItem::~ML3ProtoSyncContainerImportItem(id *this)
{
  ML3ProtoSyncContainerImportItem::~ML3ProtoSyncContainerImportItem(this);

  JUMPOUT(0x2318CD250);
}

{

  ML3ProtoSyncImportItem::~ML3ProtoSyncImportItem(this);
}

uint64_t ML3ProtoSyncAlbumImportItem::propertyKeyForSortPropertyKey(ML3ProtoSyncAlbumImportItem *this, int a2)
{
  if (a2 == 285212674)
  {
    return 285212673;
  }

  else
  {
    return 0;
  }
}

uint64_t ML3ProtoSyncAlbumImportItem::sortPropertyKeyForPropertyKey(ML3ProtoSyncAlbumImportItem *this, int a2)
{
  if (a2 == 285212673)
  {
    return 285212674;
  }

  else
  {
    return 0;
  }
}

id ML3ProtoSyncAlbumImportItem::getDeduplicationPredicates(ML3ProtoSyncAlbumImportItem *this)
{
  v96 = *MEMORY[0x277D85DE8];
  v74 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v2 = *(this + 10);
  if (v2)
  {
    [v2 libraryIdentifiers];
  }

  else
  {
    [*(this + 15) libraryIdentifiers];
  }
  v70 = ;
  if (*(this + 64) != 1)
  {
    v83 = 0uLL;
    v84 = 0uLL;
    v81 = 0uLL;
    v82 = 0uLL;
    obj = v70;
    v8 = [obj countByEnumeratingWithState:&v81 objects:v94 count:16];
    if (!v8)
    {
      goto LABEL_27;
    }

    v9 = *v82;
    while (1)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v82 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v81 + 1) + 8 * i);
        v12 = [v11 libraryName];
        v13 = [v11 libraryId];
        if (v12)
        {
          v14 = [*(this + 9) libraryUID];
          v15 = [v12 isEqualToString:v14];

          if (v15)
          {
            v16 = [ML3ComparisonPredicate predicateWithProperty:@"ROWID" equalToInt64:v13];
            [v74 addObject:v16];
          }

          else
          {
            v21 = [*(this + 9) syncLibraryID];
            v22 = [v12 isEqualToString:v21];

            if (!v22)
            {
              goto LABEL_25;
            }

            v16 = [ML3ComparisonPredicate predicateWithProperty:@"sync_id" equalToInt64:v13];
            [v74 addObject:v16];
          }
        }

        else
        {
          v17 = MEMORY[0x277CBEA60];
          v16 = [ML3ComparisonPredicate predicateWithProperty:@"sync_id" equalToInt64:v13];
          v18 = [ML3ComparisonPredicate predicateWithProperty:@"ROWID" equalToInt64:v13];
          v19 = [v17 arrayWithObjects:{v16, v18, 0}];
          v20 = [(ML3CompoundPredicate *)ML3AllCompoundPredicate predicateMatchingPredicates:v19];
          [v74 addObject:v20];
        }

LABEL_25:
      }

      v8 = [obj countByEnumeratingWithState:&v81 objects:v94 count:16];
      if (!v8)
      {
        goto LABEL_27;
      }
    }
  }

  v87 = 0uLL;
  v88 = 0uLL;
  v85 = 0uLL;
  v86 = 0uLL;
  v3 = v70;
  v4 = [v3 countByEnumeratingWithState:&v85 objects:v95 count:16];
  if (v4)
  {
    v5 = *v86;
    do
    {
      for (j = 0; j != v4; ++j)
      {
        if (*v86 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = +[ML3ComparisonPredicate predicateWithProperty:equalToInt64:](ML3ComparisonPredicate, "predicateWithProperty:equalToInt64:", @"ROWID", [*(*(&v85 + 1) + 8 * j) libraryId]);
        [v74 addObject:v7];
      }

      v4 = [v3 countByEnumeratingWithState:&v85 objects:v95 count:16];
    }

    while (v4);
  }

LABEL_27:

  if ((*(this + 64) & 1) == 0)
  {
    v23 = (*(*this + 32))(this, 285212696);
    obja = (*(*this + 32))(this, 285212683);
    (*(*this + 24))(v78, this, 285212673);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v80, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
      v78[0] = &unk_28408AC60;
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }

    else
    {
      v80 = __p;
    }

    (*(*this + 24))(v78);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v77, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
      v78[0] = &unk_28408AC60;
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }

    else
    {
      v77 = __p;
    }

    (*(*this + 24))(v78);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v76, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
      v78[0] = &unk_28408AC60;
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }

    else
    {
      v76 = __p;
    }

    (*(*this + 24))(v78);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v75, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
      v78[0] = &unk_28408AC60;
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }

    else
    {
      v75 = __p;
    }

    size = HIBYTE(v75.__r_.__value_.__r.__words[2]);
    if ((v75.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      size = v75.__r_.__value_.__l.__size_;
    }

    if (size)
    {
      v25 = ML3CPPBridgeString(&v75, 1);
      v26 = [ML3ComparisonPredicate predicateWithProperty:@"cloud_library_id" equalToValue:v25];
      [v74 addObject:v26];
    }

    v27 = HIBYTE(v80.__r_.__value_.__r.__words[2]);
    if ((v80.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v27 = v80.__r_.__value_.__l.__size_;
    }

    if (v27)
    {
      v28 = *(this + 9);
      v29 = ML3CPPBridgeString(&v80, 1);
      v30 = [v28 groupingKeyForString:v29];
    }

    else
    {
      v30 = 0;
    }

    v31 = HIBYTE(v77.__r_.__value_.__r.__words[2]);
    if ((v77.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v31 = v77.__r_.__value_.__l.__size_;
    }

    if (v31)
    {
      v32 = *(this + 9);
      v33 = ML3CPPBridgeString(&v77, 1);
      v34 = [v32 groupingKeyForString:v33];

      if (!v23)
      {
        goto LABEL_64;
      }
    }

    else
    {
      v34 = 0;
      if (!v23)
      {
        goto LABEL_64;
      }
    }

    if ([v30 length] && objc_msgSend(v34, "length"))
    {
      v35 = [ML3ComparisonPredicate predicateWithProperty:@"store_id" equalToInt64:v23];
      v93[0] = v35;
      v36 = [ML3ComparisonPredicate predicateWithProperty:@"cloud_library_id" value:&stru_28408B690 comparison:1 caseInsensitive:1 treatNullAsString:&stru_28408B690];
      v93[1] = v36;
      v37 = [ML3ComparisonPredicate predicateWithProperty:@"album_artist.grouping_key" equalToValue:v34];
      v93[2] = v37;
      v38 = [ML3ComparisonPredicate predicateWithProperty:@"grouping_key" equalToValue:v30];
      v93[3] = v38;
      v39 = [ML3ComparisonPredicate predicateWithProperty:@"season_number" equalToInt64:obja];
      v93[4] = v39;
      v40 = [ML3ComparisonPredicate predicateWithProperty:@"sync_id" equalToInt64:0];
      v93[5] = v40;
      v41 = [MEMORY[0x277CBEA60] arrayWithObjects:v93 count:6];
      v42 = [(ML3CompoundPredicate *)ML3AllCompoundPredicate predicateMatchingPredicates:v41];

      [v74 addObject:v42];
    }

    else
    {
      v43 = [ML3ComparisonPredicate predicateWithProperty:@"store_id" equalToInt64:v23];
      v92[0] = v43;
      v44 = [ML3ComparisonPredicate predicateWithProperty:@"cloud_library_id" value:&stru_28408B690 comparison:1 caseInsensitive:1 treatNullAsString:&stru_28408B690];
      v92[1] = v44;
      v45 = [ML3ComparisonPredicate predicateWithProperty:@"album_artist.grouping_key" value:&stru_28408B690 comparison:1 caseInsensitive:1 treatNullAsString:&stru_28408B690];
      v92[2] = v45;
      v46 = [ML3ComparisonPredicate predicateWithProperty:@"grouping_key" value:&stru_28408B690 comparison:1 caseInsensitive:1 treatNullAsString:&stru_28408B690];
      v92[3] = v46;
      v47 = [ML3ComparisonPredicate predicateWithProperty:@"season_number" equalToInt64:obja];
      v92[4] = v47;
      v48 = [ML3ComparisonPredicate predicateWithProperty:@"sync_id" equalToInt64:0];
      v92[5] = v48;
      v49 = [MEMORY[0x277CBEA60] arrayWithObjects:v92 count:6];
      v42 = [(ML3CompoundPredicate *)ML3AllCompoundPredicate predicateMatchingPredicates:v49];

      [v74 addObject:v42];
    }

LABEL_64:
    if ([v30 length] && objc_msgSend(v34, "length"))
    {
      v50 = [ML3ComparisonPredicate predicateWithProperty:@"album_artist.grouping_key" equalToValue:v34];
      v91[0] = v50;
      v51 = [ML3ComparisonPredicate predicateWithProperty:@"grouping_key" equalToValue:v30];
      v91[1] = v51;
      v52 = [ML3ComparisonPredicate predicateWithProperty:@"season_number" equalToInt64:obja];
      v91[2] = v52;
      v53 = [ML3ComparisonPredicate predicateWithProperty:@"sync_id" equalToInt64:0];
      v91[3] = v53;
      v54 = [ML3ComparisonPredicate predicateWithProperty:@"cloud_library_id" value:&stru_28408B690 comparison:1 caseInsensitive:1 treatNullAsString:&stru_28408B690];
      v91[4] = v54;
      v55 = [MEMORY[0x277CBEA60] arrayWithObjects:v91 count:5];
      v56 = [(ML3CompoundPredicate *)ML3AllCompoundPredicate predicateMatchingPredicates:v55];

      [v74 addObject:v56];
    }

    if (![v30 length])
    {
      goto LABEL_74;
    }

    if (SHIBYTE(v76.__r_.__value_.__r.__words[2]) < 0)
    {
      if (!v76.__r_.__value_.__l.__size_)
      {
        goto LABEL_74;
      }

      v57 = v76.__r_.__value_.__r.__words[0];
    }

    else
    {
      if (!*(&v76.__r_.__value_.__s + 23))
      {
        goto LABEL_74;
      }

      v57 = &v76;
    }

    v58 = [MEMORY[0x277CCACA8] stringWithUTF8String:v57];
    v59 = [ML3ComparisonPredicate predicateWithProperty:@"feed_url" equalToValue:v58];
    v90[0] = v59;
    v60 = [ML3ComparisonPredicate predicateWithProperty:@"grouping_key" equalToValue:v30];
    v90[1] = v60;
    v61 = [ML3ComparisonPredicate predicateWithProperty:@"sync_id" equalToInt64:0];
    v90[2] = v61;
    v62 = [MEMORY[0x277CBEA60] arrayWithObjects:v90 count:3];
    v63 = [(ML3CompoundPredicate *)ML3AllCompoundPredicate predicateMatchingPredicates:v62];

    [v74 addObject:v63];
LABEL_74:
    v64 = (*(*this + 32))(this, 16777217);
    if ((MLMediaTypeByStandardizingMediaType(v64) & 0x10042) != 0 && !v30 && v34)
    {
      v65 = [ML3ComparisonPredicate predicateWithProperty:@"grouping_key" value:&stru_28408B690 comparison:1 caseInsensitive:1 treatNullAsString:&stru_28408B690];
      v89[0] = v65;
      v66 = [ML3ComparisonPredicate predicateWithProperty:@"album_artist.grouping_key" equalToValue:v34];
      v89[1] = v66;
      v67 = [MEMORY[0x277CBEA60] arrayWithObjects:v89 count:2];
      v68 = [(ML3CompoundPredicate *)ML3AllCompoundPredicate predicateMatchingPredicates:v67];

      [v74 addObject:v68];
    }

    if (SHIBYTE(v75.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v75.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v76.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v76.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v77.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v77.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v80.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v80.__r_.__value_.__l.__data_);
    }
  }

  return v74;
}

void sub_22D42A708(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, _Unwind_Exception *exception_object, void *a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, int a39, __int16 a40, char a41, char a42, void *a43, uint64_t a44, int a45, __int16 a46, char a47, char a48)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  if (a34 < 0)
  {
    operator delete(a29);
  }

  if (a48 < 0)
  {
    operator delete(a43);
  }

  _Unwind_Resume(a1);
}

void ML3ProtoSyncAlbumImportItem::getDescription(id *this)
{
  (*(*this + 3))(&v15);
  v2 = (*(*this + 4))(this, 285212696);
  if (this[11])
  {
    (*(*this + 4))(this, 167772175);
  }

  else
  {
    [this[9] syncIdFromMultiverseId:this[10]];
  }

  std::ostringstream::basic_ostringstream[abi:ne200100](&v10);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v10, "<ML3ProtoSyncAlbumImportItem ", 29);
  *(&v10 + *(v10 - 24) + 8) = *(&v10 + *(v10 - 24) + 8) & 0xFFFFFFB5 | 8;
  v3 = MEMORY[0x2318CD100](&v10, this);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v3, " name=", 6);
  if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, v16.__r_.__value_.__l.__data_, v16.__r_.__value_.__l.__size_);
  }

  else
  {
    __p = v16;
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = __p.__r_.__value_.__l.__size_;
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v3, p_p, size);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v3, " storeID=", 9);
  *(v3 + *(*v3 - 24) + 8) = *(v3 + *(*v3 - 24) + 8) & 0xFFFFFFB5 | 2;
  v6 = MEMORY[0x2318CD140](v3, v2);
  v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, " syncID=", 8);
  *(v7 + *(*v7 - 24) + 8) = *(v7 + *(*v7 - 24) + 8) & 0xFFFFFFB5 | 2;
  v8 = MEMORY[0x2318CD140]();
  v17 = 62;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, &v17, 1);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  std::stringbuf::str();
  v10 = *MEMORY[0x277D82828];
  *(&v10 + *(v10 - 24)) = *(MEMORY[0x277D82828] + 24);
  v11 = MEMORY[0x277D82878] + 16;
  if (v13 < 0)
  {
    operator delete(v12[7].__locale_);
  }

  v11 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v12);
  std::ostream::~ostream();
  MEMORY[0x2318CD1F0](&v14);
  v15 = &unk_28408AC60;
  if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v16.__r_.__value_.__l.__data_);
  }
}

void sub_22D42AED8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  std::ostringstream::~ostringstream(&a15);
  *(v15 - 96) = &unk_28408AC60;
  if (*(v15 - 57) < 0)
  {
    operator delete(*(v15 - 80));
  }

  _Unwind_Resume(a1);
}

uint64_t ML3ProtoSyncAlbumImportItem::hasValue(ML3ProtoSyncAlbumImportItem *this, int a2)
{
  v4 = 0;
  if (a2 > 285212681)
  {
    if (a2 <= 285212694)
    {
      switch(a2)
      {
        case 285212682:
          v19 = *(this + 14);

          return [v19 hasFeedUrl];
        case 285212683:
          v21 = *(this + 13);

          return [v21 hasSeasonNumber];
        case 285212684:
          v10 = *(this + 11);

          return [v10 hasYear];
        default:
          return v4;
      }
    }

    else if (a2 > 285212696)
    {
      if (a2 != 285212697)
      {
        if (a2 != 285212699)
        {
          return v4;
        }

        v12 = *(this + 15);
        if (v12)
        {
          v2 = [v12 artist];
          if (v2)
          {
            v13 = [*(this + 15) artist];
            v4 = [v13 hasName];
          }

          else
          {
            v4 = 0;
          }

          goto LABEL_85;
        }

        return 0;
      }

      v17 = *(this + 15);
      if (v17 && ([v17 hasCloudId] & 1) != 0)
      {
        return 1;
      }

      v24 = *(this + 10);
      if (!v24)
      {
        return 0;
      }

      return [v24 hasCloudLibraryId];
    }

    else if (a2 == 285212695)
    {
      v15 = *(this + 15);
      if (!v15)
      {
        return 0;
      }

      return [v15 hasLikedStateChangedDate];
    }

    else
    {
      v7 = *(this + 15);
      if (!v7)
      {
        return 0;
      }

      return [v7 hasStoreId];
    }
  }

  else if (a2 <= 285212673)
  {
    switch(a2)
    {
      case 16777217:
        v18 = *(this + 11);
        if (!v18)
        {
          return 0;
        }

        return [v18 hasMediaType];
      case 167772175:
        v20 = *(this + 15);
        if (!v20)
        {
          return 0;
        }

        return [v20 hasPersistentId];
      case 285212673:
        v8 = *(this + 14);
        if (v8 && [v8 hasSeries])
        {
          v2 = [*(this + 14) series];
          v9 = 1;
          v4 = 1;
          if ([v2 hasName])
          {
LABEL_85:

            return v4;
          }
        }

        else
        {
          v9 = 0;
        }

        v25 = *(this + 15);
        if (v25)
        {
          v23 = [v25 hasName];
LABEL_80:
          v4 = v23;
          if (!v9)
          {
            return v4;
          }

          goto LABEL_85;
        }

LABEL_82:
        v4 = 0;
        if (!v9)
        {
          return v4;
        }

        goto LABEL_85;
      default:
        return v4;
    }
  }

  else
  {
    if (a2 <= 285212679)
    {
      if (a2 != 285212674)
      {
        if (a2 == 285212679)
        {
          v5 = *(this + 15);
          if (v5)
          {

            return [v5 hasUserRating];
          }

          return 0;
        }

        return v4;
      }

      v14 = *(this + 14);
      if (v14 && [v14 hasSeries])
      {
        v2 = [*(this + 14) series];
        v9 = 1;
        v4 = 1;
        if ([v2 hasSortName])
        {
          goto LABEL_85;
        }
      }

      else
      {
        v9 = 0;
      }

      v22 = *(this + 15);
      if (v22)
      {
        v23 = [v22 hasSortName];
        goto LABEL_80;
      }

      goto LABEL_82;
    }

    if (a2 != 285212680)
    {
      v11 = *(this + 15);
      if (v11)
      {

        return [v11 hasCompilation];
      }

      return 0;
    }

    v16 = *(this + 15);
    if (!v16)
    {
      return 0;
    }

    return [v16 hasLikedState];
  }
}

void *ML3ProtoSyncAlbumImportItem::getIntegerValue(ML3ProtoSyncAlbumImportItem *this, int a2)
{
  result = 0;
  if (a2 <= 285212680)
  {
    if (a2 > 285212678)
    {
      if (a2 == 285212679)
      {
        result = *(this + 15);
        if (!result)
        {
          return result;
        }

        LODWORD(result) = [result userRating];
      }

      else
      {
        result = *(this + 15);
        if (!result)
        {
          return result;
        }

        LODWORD(result) = [result likedState];
      }

      return result;
    }

    if (a2 == 16777217)
    {
      result = *(this + 11);
      if (result)
      {
        [result mediaType];
        return 0;
      }
    }

    else if (a2 == 167772175)
    {
      result = *(this + 15);
      if (result)
      {

        return [result persistentId];
      }
    }
  }

  else
  {
    if (a2 > 285212683)
    {
      if (a2 != 285212684)
      {
        if (a2 == 285212695)
        {
          result = *(this + 15);
          if (result)
          {

            return [result likedStateChangedDate];
          }
        }

        else if (a2 == 285212696)
        {
          result = *(this + 15);
          if (result)
          {

            return [result storeId];
          }
        }

        return result;
      }

      result = *(this + 11);
      if (!result)
      {
        return result;
      }

      LODWORD(result) = [result year];
      return result;
    }

    if (a2 != 285212681)
    {
      if (a2 != 285212683)
      {
        return result;
      }

      result = *(this + 13);
      if (!result)
      {
        return result;
      }

      LODWORD(result) = [result seasonNumber];
      return result;
    }

    result = *(this + 15);
    if (result)
    {
      return [result compilation];
    }
  }

  return result;
}

void ML3ProtoSyncAlbumImportItem::getStringValue(ML3ProtoSyncAlbumImportItem *this@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  if (a2 <= 285212696)
  {
    switch(a2)
    {
      case 285212673:
        v10 = *(this + 14);
        if (!v10)
        {
          v16 = *(this + 15);
          if (!v16)
          {
            goto LABEL_31;
          }

          v6 = [v16 name];
          goto LABEL_28;
        }

        v8 = [v10 series];
        v9 = [v8 name];
        break;
      case 285212674:
        v14 = *(this + 14);
        if (!v14)
        {
          v17 = *(this + 15);
          if (!v17)
          {
            goto LABEL_31;
          }

          v6 = [v17 sortName];
          goto LABEL_28;
        }

        v8 = [v14 series];
        v9 = [v8 sortName];
        break;
      case 285212682:
        v5 = *(this + 14);
        if (!v5)
        {
          goto LABEL_31;
        }

        v6 = [v5 feedUrl];
        goto LABEL_28;
      default:
        goto LABEL_31;
    }

    goto LABEL_22;
  }

  if (a2 != 285212697)
  {
    if (a2 == 285212699)
    {
      v15 = *(this + 15);
      if (!v15)
      {
        goto LABEL_31;
      }

      v8 = [v15 artist];
      v9 = [v8 name];
    }

    else
    {
      if (a2 != 301989890)
      {
        goto LABEL_31;
      }

      v7 = *(this + 15);
      if (!v7)
      {
        goto LABEL_31;
      }

      v8 = [v7 artist];
      v9 = [v8 sortName];
    }

LABEL_22:
    v12 = v9;

    if (!v12)
    {
      goto LABEL_31;
    }

    goto LABEL_29;
  }

  v11 = *(this + 10);
  if (!v11 || ([v11 cloudLibraryId], (v12 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v13 = *(this + 15);
    if (!v13)
    {
      goto LABEL_31;
    }

    v6 = [v13 cloudId];
LABEL_28:
    v12 = v6;
    if (v6)
    {
      goto LABEL_29;
    }

LABEL_31:
    *a3 = &unk_28408AC60;
    *(a3 + 8) = 0;
    *(a3 + 24) = 0;
    *(a3 + 32) = 0;
    *(a3 + 16) = 0;
    return;
  }

LABEL_29:
  std::string::basic_string[abi:ne200100]<0>(__p, [v12 UTF8String]);
  *a3 = &unk_28408AC60;
  *(a3 + 8) = 1;
  if (SHIBYTE(v19) < 0)
  {
    std::string::__init_copy_ctor_external((a3 + 16), __p[0], __p[1]);
    if (SHIBYTE(v19) < 0)
    {
      operator delete(__p[0]);
    }
  }

  else
  {
    *(a3 + 16) = *__p;
    *(a3 + 32) = v19;
  }
}

void ML3ProtoSyncAlbumImportItem::~ML3ProtoSyncAlbumImportItem(id *this)
{
  ML3ProtoSyncAlbumImportItem::~ML3ProtoSyncAlbumImportItem(this);

  JUMPOUT(0x2318CD250);
}

{

  ML3ProtoSyncImportItem::~ML3ProtoSyncImportItem(this);
}

uint64_t ML3ProtoSyncArtistImportItem::propertyKeyForSortPropertyKey(ML3ProtoSyncArtistImportItem *this, int a2)
{
  if (a2 == 318767106)
  {
    v2 = 318767105;
  }

  else
  {
    v2 = 0;
  }

  if (a2 == 318767108)
  {
    v3 = 318767107;
  }

  else
  {
    v3 = v2;
  }

  if (a2 == 301989890)
  {
    return 301989889;
  }

  else
  {
    return v3;
  }
}

uint64_t ML3ProtoSyncArtistImportItem::sortPropertyKeyForPropertyKey(ML3ProtoSyncArtistImportItem *this, int a2)
{
  if (a2 == 318767105)
  {
    v2 = 318767106;
  }

  else
  {
    v2 = 0;
  }

  if (a2 == 318767107)
  {
    v3 = 318767108;
  }

  else
  {
    v3 = v2;
  }

  if (a2 == 301989889)
  {
    return 301989890;
  }

  else
  {
    return v3;
  }
}

void ML3ProtoSyncArtistImportItem::getEffectiveSortSeriesName(ML3ProtoSyncArtistImportItem *this@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  (*(*this + 24))(&v13);
  if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v15, v14.__r_.__value_.__l.__data_, v14.__r_.__value_.__l.__size_);
    *&v13 = &unk_28408AC60;
    if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v14.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v15 = v14;
  }

  (*(*this + 24))(&v13, this, 318767108);
  if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v12, v14.__r_.__value_.__l.__data_, v14.__r_.__value_.__l.__size_);
    *&v13 = &unk_28408AC60;
    if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v14.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v12 = v14;
  }

  v6 = SHIBYTE(v12.__r_.__value_.__r.__words[2]);
  if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v13, v12.__r_.__value_.__l.__data_, v12.__r_.__value_.__l.__size_);
  }

  else
  {
    v13 = *&v12.__r_.__value_.__l.__data_;
    v14.__r_.__value_.__r.__words[0] = v12.__r_.__value_.__r.__words[2];
  }

  v7 = v14.__r_.__value_.__s.__data_[7];
  v8 = v14.__r_.__value_.__s.__data_[7];
  size = *(&v13 + 1);
  if (v14.__r_.__value_.__s.__data_[7] >= 0)
  {
    v10 = v14.__r_.__value_.__s.__data_[7];
  }

  else
  {
    v10 = *(&v13 + 1);
  }

  if (!v10)
  {
    ML3CPPSortableString(&v11, &v15);
    if (v8 < 0)
    {
      operator delete(v13);
    }

    v14.__r_.__value_.__r.__words[0] = v11.__r_.__value_.__r.__words[2];
    v13 = *&v11.__r_.__value_.__l.__data_;
    v7 = HIBYTE(v11.__r_.__value_.__r.__words[2]);
    size = v11.__r_.__value_.__l.__size_;
    LOBYTE(v8) = *(&v11.__r_.__value_.__s + 23);
  }

  if ((v8 & 0x80u) != 0)
  {
    v7 = size;
  }

  if (v7 && a2)
  {
    ML3CPPSanitizeString(&v11, &v13);
    if (v14.__r_.__value_.__s.__data_[7] < 0)
    {
      operator delete(v13);
    }

    v14.__r_.__value_.__r.__words[0] = v11.__r_.__value_.__r.__words[2];
    v13 = *&v11.__r_.__value_.__l.__data_;
    LOBYTE(v8) = *(&v11.__r_.__value_.__s + 23);
  }

  *a3 = &unk_28408AC60;
  *(a3 + 8) = 1;
  if ((v8 & 0x80) == 0)
  {
    *(a3 + 16) = v13;
    *(a3 + 32) = v14.__r_.__value_.__r.__words[0];
    if ((v6 & 0x80000000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_31;
  }

  std::string::__init_copy_ctor_external((a3 + 16), v13, *(&v13 + 1));
  if ((v14.__r_.__value_.__s.__data_[7] & 0x80000000) == 0)
  {
    if ((v6 & 0x80000000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_31;
  }

  operator delete(v13);
  if (v6 < 0)
  {
LABEL_31:
    operator delete(v12.__r_.__value_.__l.__data_);
  }

LABEL_32:
  if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v15.__r_.__value_.__l.__data_);
  }
}

void sub_22D42BB80(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  if (v27 < 0)
  {
    operator delete(a13);
  }

  if (*(v28 - 41) < 0)
  {
    operator delete(*(v28 - 64));
  }

  _Unwind_Resume(exception_object);
}

void ML3ProtoSyncArtistImportItem::getEffectiveSortArtist(ML3ProtoSyncArtistImportItem *this@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  memset(&v14, 0, sizeof(v14));
  (*(*this + 24))(&v11);
  if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v13, v12.__r_.__value_.__l.__data_, v12.__r_.__value_.__l.__size_);
    *&v11 = &unk_28408AC60;
    if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v12.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v13 = v12;
  }

  (*(*this + 24))(&v11, this, 318767106);
  if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v10, v12.__r_.__value_.__l.__data_, v12.__r_.__value_.__l.__size_);
    *&v11 = &unk_28408AC60;
    if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v12.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v10 = v12;
  }

  std::string::operator=(&v14, &v10);
  v6 = HIBYTE(v14.__r_.__value_.__r.__words[2]);
  v7 = HIBYTE(v14.__r_.__value_.__r.__words[2]);
  size = v14.__r_.__value_.__l.__size_;
  if ((v14.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v9 = HIBYTE(v14.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v9 = v14.__r_.__value_.__l.__size_;
  }

  if (!v9)
  {
    ML3CPPSortableString(&v11, &v13);
    if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v14.__r_.__value_.__l.__data_);
    }

    v14.__r_.__value_.__r.__words[2] = v12.__r_.__value_.__r.__words[0];
    *&v14.__r_.__value_.__l.__data_ = v11;
    v6 = v12.__r_.__value_.__s.__data_[7];
    size = *(&v11 + 1);
    v7 = v12.__r_.__value_.__s.__data_[7];
  }

  if (v7 < 0)
  {
    v6 = size;
  }

  if (v6 && a2)
  {
    ML3CPPSanitizeString(&v11, &v14);
    if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v14.__r_.__value_.__l.__data_);
    }

    v14.__r_.__value_.__r.__words[2] = v12.__r_.__value_.__r.__words[0];
    *&v14.__r_.__value_.__l.__data_ = v11;
    v7 = v12.__r_.__value_.__s.__data_[7];
  }

  *a3 = &unk_28408AC60;
  *(a3 + 8) = 1;
  if (v7 < 0)
  {
    std::string::__init_copy_ctor_external((a3 + 16), v14.__r_.__value_.__l.__data_, v14.__r_.__value_.__l.__size_);
  }

  else
  {
    *(a3 + 16) = v14;
  }

  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v13.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v14.__r_.__value_.__l.__data_);
  }
}

void sub_22D42BEAC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  if (*(v28 - 41) < 0)
  {
    operator delete(*(v28 - 64));
  }

  _Unwind_Resume(exception_object);
}

void ML3ProtoSyncArtistImportItem::getEffectiveSortAlbumArtist(ML3ProtoSyncArtistImportItem *this@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = (*(*this + 32))(this, 16777246);
  ML3ImportItem::getSanitizedStringValue(&v20, this, 301989889);
  if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v22, v21.__r_.__value_.__l.__data_, v21.__r_.__value_.__l.__size_);
    *&v20 = &unk_28408AC60;
    if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v21.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v22 = v21;
  }

  ML3ImportItem::getSanitizedStringValue(&v20, this, 301989890);
  if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v19, v21.__r_.__value_.__l.__data_, v21.__r_.__value_.__l.__size_);
    *&v20 = &unk_28408AC60;
    if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v21.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v19 = v21;
  }

  ML3ImportItem::getSanitizedStringValue(&v20, this, 318767105);
  if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v18, v21.__r_.__value_.__l.__data_, v21.__r_.__value_.__l.__size_);
    *&v20 = &unk_28408AC60;
    if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v21.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v18 = v21;
  }

  ML3ImportItem::getSanitizedStringValue(&v20, this, 318767106);
  if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v17, v21.__r_.__value_.__l.__data_, v21.__r_.__value_.__l.__size_);
    *&v20 = &unk_28408AC60;
    if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v21.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v17 = v21;
  }

  v7 = SHIBYTE(v19.__r_.__value_.__r.__words[2]);
  if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v16, v19.__r_.__value_.__l.__data_, v19.__r_.__value_.__l.__size_);
  }

  else
  {
    v16 = v19;
  }

  v8 = HIBYTE(v16.__r_.__value_.__r.__words[2]);
  v9 = SHIBYTE(v16.__r_.__value_.__r.__words[2]);
  size = v16.__r_.__value_.__l.__size_;
  if ((v16.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v8 = v16.__r_.__value_.__l.__size_;
  }

  if (v8)
  {
    if (v6)
    {
      goto LABEL_56;
    }

    goto LABEL_28;
  }

  ML3CPPSortableString(&v20, &v22);
  if (v9 < 0)
  {
    operator delete(v16.__r_.__value_.__l.__data_);
  }

  v16.__r_.__value_.__r.__words[2] = v21.__r_.__value_.__r.__words[0];
  *&v16.__r_.__value_.__l.__data_ = v20;
  LOBYTE(v9) = v21.__r_.__value_.__s.__data_[7];
  size = *(&v20 + 1);
  if (!v6)
  {
LABEL_28:
    if ((v9 & 0x80u) == 0)
    {
      v11 = v9;
    }

    else
    {
      v11 = size;
    }

    if (!v11)
    {
      v12 = HIBYTE(v22.__r_.__value_.__r.__words[2]);
      if ((v22.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v12 = v22.__r_.__value_.__l.__size_;
      }

      if (!v12)
      {
        (*(*this + 168))(&v20, this, a2);
        if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
        {
          std::string::__init_copy_ctor_external(&v15, v21.__r_.__value_.__l.__data_, v21.__r_.__value_.__l.__size_);
        }

        else
        {
          v15 = v21;
        }

        if ((v9 & 0x80) != 0)
        {
          operator delete(v16.__r_.__value_.__l.__data_);
        }

        v16 = v15;
        *&v20 = &unk_28408AC60;
        if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v21.__r_.__value_.__l.__data_);
        }

        v13 = HIBYTE(v16.__r_.__value_.__r.__words[2]);
        v9 = SHIBYTE(v16.__r_.__value_.__r.__words[2]);
        size = v16.__r_.__value_.__l.__size_;
        if ((v16.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v13 = v16.__r_.__value_.__l.__size_;
        }

        if (!v13)
        {
          v14 = HIBYTE(v18.__r_.__value_.__r.__words[2]);
          if ((v18.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v14 = v18.__r_.__value_.__l.__size_;
          }

          if (!v14)
          {
            (*(*this + 176))(&v20, this, a2);
            if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
            {
              std::string::__init_copy_ctor_external(&v15, v21.__r_.__value_.__l.__data_, v21.__r_.__value_.__l.__size_);
            }

            else
            {
              v15 = v21;
            }

            if (v9 < 0)
            {
              operator delete(v16.__r_.__value_.__l.__data_);
            }

            v16 = v15;
            *&v20 = &unk_28408AC60;
            if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v21.__r_.__value_.__l.__data_);
            }

            LOBYTE(v9) = *(&v16.__r_.__value_.__s + 23);
            size = v16.__r_.__value_.__l.__size_;
          }
        }
      }
    }
  }

LABEL_56:
  if ((v9 & 0x80u) == 0)
  {
    size = v9;
  }

  if (size && a2)
  {
    ML3CPPSanitizeString(&v20, &v16);
    if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v16.__r_.__value_.__l.__data_);
    }

    v16.__r_.__value_.__r.__words[2] = v21.__r_.__value_.__r.__words[0];
    *&v16.__r_.__value_.__l.__data_ = v20;
    LOBYTE(v9) = v21.__r_.__value_.__s.__data_[7];
  }

  *a3 = &unk_28408AC60;
  *(a3 + 8) = 1;
  if ((v9 & 0x80) != 0)
  {
    std::string::__init_copy_ctor_external((a3 + 16), v16.__r_.__value_.__l.__data_, v16.__r_.__value_.__l.__size_);
    if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v16.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    *(a3 + 16) = v16;
  }

  if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v17.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v18.__r_.__value_.__l.__data_);
    if ((v7 & 0x80000000) == 0)
    {
      goto LABEL_71;
    }
  }

  else if ((v7 & 0x80000000) == 0)
  {
    goto LABEL_71;
  }

  operator delete(v19.__r_.__value_.__l.__data_);
LABEL_71:
  if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v22.__r_.__value_.__l.__data_);
  }
}

void sub_22D42C4AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, uint64_t a33, void *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39)
{
  *(v39 - 136) = &unk_28408AC60;
  if (*(v39 - 97) < 0)
  {
    operator delete(*(v39 - 120));
  }

  if (a18 < 0)
  {
    operator delete(__p);
  }

  if (a25 < 0)
  {
    operator delete(a20);
  }

  if (a32 < 0)
  {
    operator delete(a27);
  }

  if (a39 < 0)
  {
    operator delete(a34);
  }

  if (*(v39 - 73) < 0)
  {
    operator delete(*(v39 - 96));
  }

  _Unwind_Resume(exception_object);
}

void ML3ProtoSyncArtistImportItem::getEffectiveAlbumArtist(ML3ProtoSyncArtistImportItem *this@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v6 = (*(*this + 32))(this, 16777246);
  ML3ImportItem::getSanitizedStringValue(&v17, this, 318767105);
  if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&__str, v18.__r_.__value_.__l.__data_, v18.__r_.__value_.__l.__size_);
    *&v17 = &unk_28408AC60;
    if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v18.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    __str = v18;
  }

  ML3ImportItem::getSanitizedStringValue(&v17, this, 318767107);
  if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v16, v18.__r_.__value_.__l.__data_, v18.__r_.__value_.__l.__size_);
    *&v17 = &unk_28408AC60;
    if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v18.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v16 = v18;
  }

  ML3ImportItem::getSanitizedStringValue(&v17, this, 301989889);
  if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v15, v18.__r_.__value_.__l.__data_, v18.__r_.__value_.__l.__size_);
    *&v17 = &unk_28408AC60;
    if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v18.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v15 = v18;
  }

  v7 = SHIBYTE(v15.__r_.__value_.__r.__words[2]);
  if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v17, v15.__r_.__value_.__l.__data_, v15.__r_.__value_.__l.__size_);
  }

  else
  {
    v17 = *&v15.__r_.__value_.__l.__data_;
    v18.__r_.__value_.__r.__words[0] = v15.__r_.__value_.__r.__words[2];
  }

  if (!v6)
  {
    v8 = v18.__r_.__value_.__s.__data_[7];
    v9 = v18.__r_.__value_.__s.__data_[7];
    v10 = *(&v17 + 1);
    if (v18.__r_.__value_.__s.__data_[7] >= 0)
    {
      v11 = v18.__r_.__value_.__s.__data_[7];
    }

    else
    {
      v11 = *(&v17 + 1);
    }

    if (!v11)
    {
      std::string::operator=(&v17, &__str);
      v8 = v18.__r_.__value_.__s.__data_[7];
      v10 = *(&v17 + 1);
      v9 = v18.__r_.__value_.__s.__data_[7];
    }

    if (v9 < 0)
    {
      v8 = v10;
    }

    if (!v8)
    {
      std::string::operator=(&v17, &v16);
    }
  }

  v12 = v18.__r_.__value_.__s.__data_[7];
  v13 = v18.__r_.__value_.__s.__data_[7];
  if (v18.__r_.__value_.__s.__data_[7] < 0)
  {
    v12 = *(&v17 + 1);
  }

  if (v12 && a2)
  {
    ML3CPPSanitizeString(&v14, &v17);
    if (v18.__r_.__value_.__s.__data_[7] < 0)
    {
      operator delete(v17);
    }

    v18.__r_.__value_.__r.__words[0] = v14.__r_.__value_.__r.__words[2];
    v17 = *&v14.__r_.__value_.__l.__data_;
    v13 = HIBYTE(v14.__r_.__value_.__r.__words[2]);
  }

  *a3 = &unk_28408AC60;
  *(a3 + 8) = 1;
  if ((v13 & 0x80) == 0)
  {
    *(a3 + 16) = v17;
    *(a3 + 32) = v18.__r_.__value_.__r.__words[0];
    if ((v7 & 0x80000000) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_38;
  }

  std::string::__init_copy_ctor_external((a3 + 16), v17, *(&v17 + 1));
  if ((v18.__r_.__value_.__s.__data_[7] & 0x80000000) == 0)
  {
    if ((v7 & 0x80000000) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_38;
  }

  operator delete(v17);
  if (v7 < 0)
  {
LABEL_38:
    operator delete(v15.__r_.__value_.__l.__data_);
  }

LABEL_39:
  if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v16.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }
}

void sub_22D42C958(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, void *a24, uint64_t a25, uint64_t a26, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  operator delete(__p);
  if (a22 < 0)
  {
    operator delete(a17);
  }

  if (*(v31 - 57) < 0)
  {
    operator delete(*(v31 - 80));
  }

  _Unwind_Resume(a1);
}

id ML3ProtoSyncArtistImportItem::getDeduplicationPredicates(ML3ProtoSyncArtistImportItem *this)
{
  v72 = *MEMORY[0x277D85DE8];
  v54 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v52 = @"sync_id";
  v53 = this;
  v2 = *(this + 10);
  if (v2 || (v2 = *(this + 17)) != 0 || (v2 = *(this + 16)) != 0)
  {
    v50 = [v2 libraryIdentifiers];
  }

  else
  {
    v50 = 0;
  }

  if (*(this + 64) != 1)
  {
    v61 = 0uLL;
    v62 = 0uLL;
    v59 = 0uLL;
    v60 = 0uLL;
    obj = v50;
    v8 = [obj countByEnumeratingWithState:&v59 objects:v70 count:16];
    if (!v8)
    {
      goto LABEL_28;
    }

    v9 = *v60;
    while (1)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v60 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v59 + 1) + 8 * i);
        v12 = [v11 libraryName];
        v13 = [v11 libraryId];
        if (v12)
        {
          v14 = [*(v53 + 9) libraryUID];
          v15 = [v12 isEqualToString:v14];

          if (v15)
          {
            v16 = [ML3ComparisonPredicate predicateWithProperty:@"ROWID" equalToInt64:v13];
            [v54 addObject:v16];
          }

          else
          {
            v21 = [*(v53 + 9) syncLibraryID];
            v22 = [v12 isEqualToString:v21];

            if (!v22)
            {
              goto LABEL_26;
            }

            v16 = [ML3ComparisonPredicate predicateWithProperty:v52 equalToInt64:v13];
            [v54 addObject:v16];
          }
        }

        else
        {
          v17 = MEMORY[0x277CBEA60];
          v16 = [ML3ComparisonPredicate predicateWithProperty:v52 equalToInt64:v13];
          v18 = [ML3ComparisonPredicate predicateWithProperty:@"ROWID" equalToInt64:v13];
          v19 = [v17 arrayWithObjects:{v16, v18, 0}];
          v20 = [(ML3CompoundPredicate *)ML3AllCompoundPredicate predicateMatchingPredicates:v19];
          [v54 addObject:v20];
        }

LABEL_26:
      }

      v8 = [obj countByEnumeratingWithState:&v59 objects:v70 count:16];
      if (!v8)
      {
        goto LABEL_28;
      }
    }
  }

  v65 = 0uLL;
  v66 = 0uLL;
  v63 = 0uLL;
  v64 = 0uLL;
  v3 = v50;
  v4 = [v3 countByEnumeratingWithState:&v63 objects:v71 count:16];
  if (v4)
  {
    v5 = *v64;
    do
    {
      for (j = 0; j != v4; ++j)
      {
        if (*v64 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = +[ML3ComparisonPredicate predicateWithProperty:equalToInt64:](ML3ComparisonPredicate, "predicateWithProperty:equalToInt64:", @"ROWID", [*(*(&v63 + 1) + 8 * j) libraryId]);
        [v54 addObject:v7];
      }

      v4 = [v3 countByEnumeratingWithState:&v63 objects:v71 count:16];
    }

    while (v4);
  }

LABEL_28:

  if ((*(v53 + 64) & 1) == 0)
  {
    v23 = @"store_id";
    v24 = @"grouping_key";
    if (*(v53 + 18) == 2)
    {
      v25 = 318767111;
    }

    else
    {
      v25 = 301989893;
    }

    v26 = (*(*v53 + 32))(v53, v25);
    memset(&v58, 0, sizeof(v58));
    v27 = *(v53 + 18);
    if (v27 == 7)
    {
      (*(*v53 + 24))(v55);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(&__str, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
        v55[0] = &unk_28408AC60;
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }
      }

      else
      {
        __str = __p;
      }

      size = HIBYTE(__str.__r_.__value_.__r.__words[2]);
      v29 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
      if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        size = __str.__r_.__value_.__l.__size_;
      }

      if (size)
      {
        v30 = ML3CPPBridgeString(&__str, 1);
        v31 = [ML3ComparisonPredicate predicateWithProperty:@"cloud_universal_library_id" equalToValue:v30];
        [v54 addObject:v31];

        v29 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
      }

      if (v29 < 0)
      {
        operator delete(__str.__r_.__value_.__l.__data_);
      }

      v27 = *(v53 + 18);
    }

    if (v27 == 2)
    {
      (*(*v53 + 24))(v55);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(&__str, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
      }

      else
      {
        __str = __p;
      }

      if (SHIBYTE(v58.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v58.__r_.__value_.__l.__data_);
      }

      v58 = __str;
      v55[0] = &unk_28408AC60;
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      v32 = (*(*v53 + 32))(v53, 16777217);
      if ((MLMediaTypeByStandardizingMediaType(v32) & 8) == 0)
      {
        (*(*v53 + 24))(v55);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          std::string::__init_copy_ctor_external(&__str, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
          v55[0] = &unk_28408AC60;
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }
        }

        else
        {
          __str = __p;
        }

        v34 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
        v35 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
        if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v34 = __str.__r_.__value_.__l.__size_;
        }

        if (v34)
        {
          std::string::operator=(&v58, &__str);
          v35 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
        }

        if (v35 < 0)
        {
          v33 = __str.__r_.__value_.__r.__words[0];
          goto LABEL_71;
        }
      }
    }

    else
    {
      (*(*v53 + 152))(v55);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(&__str, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
      }

      else
      {
        __str = __p;
      }

      if (SHIBYTE(v58.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v58.__r_.__value_.__l.__data_);
      }

      v58 = __str;
      v55[0] = &unk_28408AC60;
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        v33 = __p.__r_.__value_.__r.__words[0];
LABEL_71:
        operator delete(v33);
      }
    }

    v36 = HIBYTE(v58.__r_.__value_.__r.__words[2]);
    if ((v58.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v36 = v58.__r_.__value_.__l.__size_;
    }

    if (v36)
    {
      v37 = *(v53 + 9);
      v38 = ML3CPPBridgeString(&v58, 1);
      v39 = [v37 groupingKeyForString:v38];

      if (!v26)
      {
        goto LABEL_82;
      }
    }

    else
    {
      v39 = 0;
      if (!v26)
      {
LABEL_82:
        if ([v39 length])
        {
          v45 = [ML3ComparisonPredicate predicateWithProperty:v24 equalToValue:v39];
          v67[0] = v45;
          v46 = [ML3ComparisonPredicate predicateWithProperty:v52 equalToInt64:0];
          v67[1] = v46;
          v47 = [MEMORY[0x277CBEA60] arrayWithObjects:v67 count:2];
          v48 = [(ML3CompoundPredicate *)ML3AllCompoundPredicate predicateMatchingPredicates:v47];

          [v54 addObject:v48];
        }

        if (SHIBYTE(v58.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v58.__r_.__value_.__l.__data_);
        }

        goto LABEL_87;
      }
    }

    if ([v39 length])
    {
      v40 = [ML3ComparisonPredicate predicateWithProperty:v23 equalToInt64:v26];
      v69[0] = v40;
      v41 = [ML3ComparisonPredicate predicateWithProperty:v24 equalToValue:v39];
      v69[1] = v41;
      v42 = [ML3ComparisonPredicate predicateWithProperty:v52 equalToInt64:0];
      v69[2] = v42;
      [MEMORY[0x277CBEA60] arrayWithObjects:v69 count:3];
    }

    else
    {
      v40 = [ML3ComparisonPredicate predicateWithProperty:v23 equalToInt64:v26];
      v68[0] = v40;
      v41 = [ML3ComparisonPredicate predicateWithProperty:v24 value:&stru_28408B690 comparison:1 caseInsensitive:1 treatNullAsString:&stru_28408B690];
      v68[1] = v41;
      v42 = [ML3ComparisonPredicate predicateWithProperty:v52 equalToInt64:0];
      v68[2] = v42;
      [MEMORY[0x277CBEA60] arrayWithObjects:v68 count:3];
    }
    v43 = ;
    v44 = [(ML3CompoundPredicate *)ML3AllCompoundPredicate predicateMatchingPredicates:v43];

    [v54 addObject:v44];
    goto LABEL_82;
  }

LABEL_87:

  return v54;
}

void sub_22D42D4CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, void *a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, void *a31, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a36 < 0)
  {
    operator delete(a31);
  }

  _Unwind_Resume(a1);
}

uint64_t ML3ProtoSyncArtistImportItem::getDescription(ML3ProtoSyncArtistImportItem *this)
{
  std::ostringstream::basic_ostringstream[abi:ne200100](&v31);
  if (*(this + 18) == 2)
  {
    v2 = 318767105;
  }

  else
  {
    v2 = 301989889;
  }

  (*(*this + 24))(v28, this, v2);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v30, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
    v28[0] = &unk_28408AC60;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v30 = __p;
  }

  if (*(this + 18) == 2)
  {
    v3 = 318767106;
  }

  else
  {
    v3 = 301989890;
  }

  (*(*this + 24))(v28, this, v3);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v27, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
    v28[0] = &unk_28408AC60;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v27 = __p;
  }

  (*(*this + 24))(v28, this, 301989899);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v26, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
    v28[0] = &unk_28408AC60;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v26 = __p;
  }

  if (*(this + 18) == 2)
  {
    v4 = 318767111;
  }

  else
  {
    v4 = 301989893;
  }

  (*(*this + 32))(this, v4);
  if (*(this + 11))
  {
    if (*(this + 18) == 2)
    {
      v5 = 167772176;
    }

    else
    {
      v5 = 167772177;
    }

    (*(*this + 32))(this, v5);
  }

  else
  {
    [*(this + 9) syncIdFromMultiverseId:*(this + 10)];
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v31, "<ML3ProtoSyncArtistImportItem ", 30);
  *(&v31 + *(v31 - 24) + 8) = *(&v31 + *(v31 - 24) + 8) & 0xFFFFFFB5 | 8;
  v6 = MEMORY[0x2318CD100](&v31, this);
  v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, " name=", 6);
  if ((v30.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v8 = &v30;
  }

  else
  {
    v8 = v30.__r_.__value_.__r.__words[0];
  }

  if ((v30.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v30.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v30.__r_.__value_.__l.__size_;
  }

  v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, v8, size);
  v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, " artistType=", 12);
  v12 = MEMORY[0x2318CD120](v11, *(this + 18));
  v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, " sortName=", 10);
  if ((v27.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v14 = &v27;
  }

  else
  {
    v14 = v27.__r_.__value_.__r.__words[0];
  }

  if ((v27.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v15 = HIBYTE(v27.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v15 = v27.__r_.__value_.__l.__size_;
  }

  v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, v14, v15);
  v17 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, " cloudLibraryID=", 16);
  if ((v26.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v18 = &v26;
  }

  else
  {
    v18 = v26.__r_.__value_.__r.__words[0];
  }

  if ((v26.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v19 = HIBYTE(v26.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v19 = v26.__r_.__value_.__l.__size_;
  }

  v20 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, v18, v19);
  v21 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v20, " storeID=", 9);
  *(v21 + *(*v21 - 24) + 8) = *(v21 + *(*v21 - 24) + 8) & 0xFFFFFFB5 | 2;
  v22 = MEMORY[0x2318CD140]();
  v23 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v22, " syncID=", 8);
  *(v23 + *(*v23 - 24) + 8) = *(v23 + *(*v23 - 24) + 8) & 0xFFFFFFB5 | 2;
  v24 = MEMORY[0x2318CD140]();
  LOBYTE(v28[0]) = 62;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v24, v28, 1);
  std::stringbuf::str();
  if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v26.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v27.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v30.__r_.__value_.__l.__data_);
  }

  v31 = *MEMORY[0x277D82828];
  *(&v31 + *(v31 - 24)) = *(MEMORY[0x277D82828] + 24);
  v32 = MEMORY[0x277D82878] + 16;
  if (v34 < 0)
  {
    operator delete(v33[7].__locale_);
  }

  v32 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v33);
  std::ostream::~ostream();
  return MEMORY[0x2318CD1F0](&v35);
}

void sub_22D42DCA4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, char a36)
{
  if (a29 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a35 < 0)
  {
    operator delete(a30);
  }

  std::ostringstream::~ostringstream(&a36);
  _Unwind_Resume(a1);
}