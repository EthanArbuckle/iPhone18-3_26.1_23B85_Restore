@interface ML3UpdateSiriIndexOperation
+ (BOOL)_addDonationLinkedItemWithSourceIdentifier:(id)identifier andType:(unsigned int)type toLinkedItemIdentifiers:(id)identifiers;
+ (id)_createDonationItemOfType:(unsigned int)type withName:(id)name itemIdentifier:(id)identifier linkedItemIdentifiers:(id)identifiers;
- (BOOL)_execute:(id *)_execute;
- (BOOL)_performFullIndexToRevision:(int64_t)revision withDonation:(id)donation;
- (BOOL)_performIncrementalIndexToRevision:(int64_t)revision withDonation:(id)donation;
- (BOOL)_platformSupportsSiriIndexing;
- (void)_runAsPersonasForLibraryAccountWithBlock:(id)block;
@end

@implementation ML3UpdateSiriIndexOperation

+ (BOOL)_addDonationLinkedItemWithSourceIdentifier:(id)identifier andType:(unsigned int)type toLinkedItemIdentifiers:(id)identifiers
{
  v6 = *&type;
  v26 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  identifiersCopy = identifiers;
  if (identifierCopy)
  {
    v19 = 0;
    v20 = &v19;
    v21 = 0x2050000000;
    v9 = getCCMediaLinkedIdentifierClass_softClass;
    v22 = getCCMediaLinkedIdentifierClass_softClass;
    if (!getCCMediaLinkedIdentifierClass_softClass)
    {
      *buf = MEMORY[0x277D85DD0];
      *v24 = 3221225472;
      *&v24[8] = __getCCMediaLinkedIdentifierClass_block_invoke;
      *&v24[16] = &unk_278764EF0;
      v25 = &v19;
      __getCCMediaLinkedIdentifierClass_block_invoke(buf);
      v9 = v20[3];
    }

    v10 = v9;
    _Block_object_dispose(&v19, 8);
    v18 = 0;
    v11 = [[v9 alloc] initWithSourceItemIdentifier:identifierCopy type:v6 error:&v18];
    v12 = v18;
    v13 = v11 != 0;
    if (v11)
    {
      [identifiersCopy addObject:v11];
    }

    else
    {
      v14 = os_log_create("com.apple.amp.medialibrary", "Indexing");
      v15 = v14;
      if (v12)
      {
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          msv_description = [v12 msv_description];
          *buf = 67109634;
          *&buf[4] = v6;
          *v24 = 2112;
          *&v24[2] = identifierCopy;
          *&v24[10] = 2114;
          *&v24[12] = msv_description;
          _os_log_impl(&dword_22D2FA000, v15, OS_LOG_TYPE_ERROR, "ML3UpdateSiriIndexOperation 2.0 - failed to create CCMediaLinkedIdentifier of type=%u with id=%@ error=%{public}@", buf, 0x1Cu);
        }
      }

      else if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109378;
        *&buf[4] = v6;
        *v24 = 2112;
        *&v24[2] = identifierCopy;
        _os_log_impl(&dword_22D2FA000, v15, OS_LOG_TYPE_DEFAULT, "ML3UpdateSiriIndexOperation 2.0 - failed to create CCMediaLinkedIdentifier of type=%u with id=%@", buf, 0x12u);
      }
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

+ (id)_createDonationItemOfType:(unsigned int)type withName:(id)name itemIdentifier:(id)identifier linkedItemIdentifiers:(id)identifiers
{
  v8 = *&type;
  v85 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  identifierCopy = identifier;
  identifiersCopy = identifiers;
  if (v8 <= 5)
  {
    if (v8 <= 2)
    {
      if (v8 == 1)
      {
        v78 = 0;
        v79 = &v78;
        v80 = 0x2050000000;
        v22 = getCCMediaAlbumArtistClass_softClass;
        v81 = getCCMediaAlbumArtistClass_softClass;
        if (!getCCMediaAlbumArtistClass_softClass)
        {
          *buf = MEMORY[0x277D85DD0];
          *&buf[8] = 3221225472;
          *&buf[16] = __getCCMediaAlbumArtistClass_block_invoke;
          v83 = &unk_278764EF0;
          v84 = &v78;
          __getCCMediaAlbumArtistClass_block_invoke(buf);
          v22 = v79[3];
        }

        v23 = v22;
        _Block_object_dispose(&v78, 8);
        v76 = 0;
        v14 = [[v22 alloc] initWithName:nameCopy error:&v76];
        v15 = &v76;
      }

      else
      {
        if (v8 != 2)
        {
          goto LABEL_74;
        }

        v78 = 0;
        v79 = &v78;
        v80 = 0x2050000000;
        v20 = getCCMediaSongArtistClass_softClass;
        v81 = getCCMediaSongArtistClass_softClass;
        if (!getCCMediaSongArtistClass_softClass)
        {
          *buf = MEMORY[0x277D85DD0];
          *&buf[8] = 3221225472;
          *&buf[16] = __getCCMediaSongArtistClass_block_invoke;
          v83 = &unk_278764EF0;
          v84 = &v78;
          __getCCMediaSongArtistClass_block_invoke(buf);
          v20 = v79[3];
        }

        v21 = v20;
        _Block_object_dispose(&v78, 8);
        v68 = 0;
        v14 = [[v20 alloc] initWithName:nameCopy error:&v68];
        v15 = &v68;
      }
    }

    else if (v8 == 3)
    {
      v78 = 0;
      v79 = &v78;
      v80 = 0x2050000000;
      v30 = getCCMediaAlbumClass_softClass;
      v81 = getCCMediaAlbumClass_softClass;
      if (!getCCMediaAlbumClass_softClass)
      {
        *buf = MEMORY[0x277D85DD0];
        *&buf[8] = 3221225472;
        *&buf[16] = __getCCMediaAlbumClass_block_invoke;
        v83 = &unk_278764EF0;
        v84 = &v78;
        __getCCMediaAlbumClass_block_invoke(buf);
        v30 = v79[3];
      }

      v31 = v30;
      _Block_object_dispose(&v78, 8);
      v77 = 0;
      v14 = [[v30 alloc] initWithName:nameCopy error:&v77];
      v15 = &v77;
    }

    else if (v8 == 4)
    {
      v78 = 0;
      v79 = &v78;
      v80 = 0x2050000000;
      v24 = getCCMediaGenreClass_softClass;
      v81 = getCCMediaGenreClass_softClass;
      if (!getCCMediaGenreClass_softClass)
      {
        *buf = MEMORY[0x277D85DD0];
        *&buf[8] = 3221225472;
        *&buf[16] = __getCCMediaGenreClass_block_invoke;
        v83 = &unk_278764EF0;
        v84 = &v78;
        __getCCMediaGenreClass_block_invoke(buf);
        v24 = v79[3];
      }

      v25 = v24;
      _Block_object_dispose(&v78, 8);
      v73 = 0;
      v14 = [[v24 alloc] initWithName:nameCopy error:&v73];
      v15 = &v73;
    }

    else
    {
      v78 = 0;
      v79 = &v78;
      v80 = 0x2050000000;
      v16 = getCCMediaSongClass_softClass;
      v81 = getCCMediaSongClass_softClass;
      if (!getCCMediaSongClass_softClass)
      {
        *buf = MEMORY[0x277D85DD0];
        *&buf[8] = 3221225472;
        *&buf[16] = __getCCMediaSongClass_block_invoke;
        v83 = &unk_278764EF0;
        v84 = &v78;
        __getCCMediaSongClass_block_invoke(buf);
        v16 = v79[3];
      }

      v17 = v16;
      _Block_object_dispose(&v78, 8);
      v69 = 0;
      v14 = [[v16 alloc] initWithName:nameCopy error:&v69];
      v15 = &v69;
    }
  }

  else if (v8 > 9)
  {
    switch(v8)
    {
      case 0xA:
        v78 = 0;
        v79 = &v78;
        v80 = 0x2050000000;
        v34 = getCCMediaMovieClass_softClass;
        v81 = getCCMediaMovieClass_softClass;
        if (!getCCMediaMovieClass_softClass)
        {
          *buf = MEMORY[0x277D85DD0];
          *&buf[8] = 3221225472;
          *&buf[16] = __getCCMediaMovieClass_block_invoke;
          v83 = &unk_278764EF0;
          v84 = &v78;
          __getCCMediaMovieClass_block_invoke(buf);
          v34 = v79[3];
        }

        v35 = v34;
        _Block_object_dispose(&v78, 8);
        v72 = 0;
        v14 = [[v34 alloc] initWithName:nameCopy error:&v72];
        v15 = &v72;
        break;
      case 0xB:
        v78 = 0;
        v79 = &v78;
        v80 = 0x2050000000;
        v28 = getCCMediaAudiobookArtistClass_softClass;
        v81 = getCCMediaAudiobookArtistClass_softClass;
        if (!getCCMediaAudiobookArtistClass_softClass)
        {
          *buf = MEMORY[0x277D85DD0];
          *&buf[8] = 3221225472;
          *&buf[16] = __getCCMediaAudiobookArtistClass_block_invoke;
          v83 = &unk_278764EF0;
          v84 = &v78;
          __getCCMediaAudiobookArtistClass_block_invoke(buf);
          v28 = v79[3];
        }

        v29 = v28;
        _Block_object_dispose(&v78, 8);
        v74 = 0;
        v14 = [[v28 alloc] initWithName:nameCopy error:&v74];
        v15 = &v74;
        break;
      case 0xC:
        v78 = 0;
        v79 = &v78;
        v80 = 0x2050000000;
        v18 = getCCMediaAudiobookClass_softClass;
        v81 = getCCMediaAudiobookClass_softClass;
        if (!getCCMediaAudiobookClass_softClass)
        {
          *buf = MEMORY[0x277D85DD0];
          *&buf[8] = 3221225472;
          *&buf[16] = __getCCMediaAudiobookClass_block_invoke;
          v83 = &unk_278764EF0;
          v84 = &v78;
          __getCCMediaAudiobookClass_block_invoke(buf);
          v18 = v79[3];
        }

        v19 = v18;
        _Block_object_dispose(&v78, 8);
        v75 = 0;
        v14 = [[v18 alloc] initWithName:nameCopy error:&v75];
        v15 = &v75;
        break;
      default:
        goto LABEL_74;
    }
  }

  else
  {
    switch(v8)
    {
      case 6:
        v78 = 0;
        v79 = &v78;
        v80 = 0x2050000000;
        v32 = getCCMediaPlaylistClass_softClass;
        v81 = getCCMediaPlaylistClass_softClass;
        if (!getCCMediaPlaylistClass_softClass)
        {
          *buf = MEMORY[0x277D85DD0];
          *&buf[8] = 3221225472;
          *&buf[16] = __getCCMediaPlaylistClass_block_invoke;
          v83 = &unk_278764EF0;
          v84 = &v78;
          __getCCMediaPlaylistClass_block_invoke(buf);
          v32 = v79[3];
        }

        v33 = v32;
        _Block_object_dispose(&v78, 8);
        v70 = 0;
        v14 = [[v32 alloc] initWithName:nameCopy error:&v70];
        v15 = &v70;
        break;
      case 7:
        v78 = 0;
        v79 = &v78;
        v80 = 0x2050000000;
        v26 = getCCMediaMusicVideoClass_softClass;
        v81 = getCCMediaMusicVideoClass_softClass;
        if (!getCCMediaMusicVideoClass_softClass)
        {
          *buf = MEMORY[0x277D85DD0];
          *&buf[8] = 3221225472;
          *&buf[16] = __getCCMediaMusicVideoClass_block_invoke;
          v83 = &unk_278764EF0;
          v84 = &v78;
          __getCCMediaMusicVideoClass_block_invoke(buf);
          v26 = v79[3];
        }

        v27 = v26;
        _Block_object_dispose(&v78, 8);
        v71 = 0;
        v14 = [[v26 alloc] initWithName:nameCopy error:&v71];
        v15 = &v71;
        break;
      case 9:
        v78 = 0;
        v79 = &v78;
        v80 = 0x2050000000;
        v12 = getCCMediaTVEpisodeClass_softClass;
        v81 = getCCMediaTVEpisodeClass_softClass;
        if (!getCCMediaTVEpisodeClass_softClass)
        {
          *buf = MEMORY[0x277D85DD0];
          *&buf[8] = 3221225472;
          *&buf[16] = __getCCMediaTVEpisodeClass_block_invoke;
          v83 = &unk_278764EF0;
          v84 = &v78;
          __getCCMediaTVEpisodeClass_block_invoke(buf);
          v12 = v79[3];
        }

        v13 = v12;
        _Block_object_dispose(&v78, 8);
        v67 = 0;
        v14 = [[v12 alloc] initWithName:nameCopy error:&v67];
        v15 = &v67;
        break;
      default:
LABEL_74:
        v62 = os_log_create("com.apple.amp.medialibrary", "Indexing");
        if (os_log_type_enabled(v62, OS_LOG_TYPE_FAULT))
        {
          *buf = 67109120;
          *&buf[4] = v8;
          _os_log_impl(&dword_22D2FA000, v62, OS_LOG_TYPE_FAULT, "ML3UpdateSiriIndexOperation 2.0 - unknown type=%u sent to create a media entity.", buf, 8u);
        }

        goto LABEL_77;
    }
  }

  v36 = *v15;
  v37 = v36;
  if (!v14)
  {
    if (v36)
    {
      v53 = os_log_create("com.apple.amp.medialibrary", "Indexing");
      if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
      {
        msv_description = [v37 msv_description];
        *buf = 138412546;
        *&buf[4] = nameCopy;
        *&buf[12] = 2114;
        *&buf[14] = msv_description;
        _os_log_impl(&dword_22D2FA000, v53, OS_LOG_TYPE_ERROR, "ML3UpdateSiriIndexOperation 2.0 - failed to create a media entity with name=%@ error=%{public}@", buf, 0x16u);
      }

LABEL_79:
      v52 = 0;
      goto LABEL_93;
    }

LABEL_77:
    v37 = os_log_create("com.apple.amp.medialibrary", "Indexing");
    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      *&buf[4] = nameCopy;
      _os_log_impl(&dword_22D2FA000, v37, OS_LOG_TYPE_DEFAULT, "ML3UpdateSiriIndexOperation 2.0 - failed to create a media entity with name=%@", buf, 0xCu);
    }

    goto LABEL_79;
  }

  v78 = 0;
  v79 = &v78;
  v80 = 0x2050000000;
  v38 = getCCMediaContentClass_softClass;
  v81 = getCCMediaContentClass_softClass;
  if (!getCCMediaContentClass_softClass)
  {
    *buf = MEMORY[0x277D85DD0];
    *&buf[8] = 3221225472;
    *&buf[16] = __getCCMediaContentClass_block_invoke;
    v83 = &unk_278764EF0;
    v84 = &v78;
    __getCCMediaContentClass_block_invoke(buf);
    v38 = v79[3];
  }

  v39 = v38;
  _Block_object_dispose(&v78, 8);
  v66 = v37;
  v40 = [[v38 alloc] initWithEntity:v14 entityType:v8 error:&v66];
  v41 = v66;

  if (!v40)
  {
    v55 = os_log_create("com.apple.amp.medialibrary", "Indexing");
    v44 = v55;
    if (v41)
    {
      if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
      {
        msv_description2 = [v41 msv_description];
        *buf = 138412546;
        *&buf[4] = v14;
        *&buf[12] = 2114;
        *&buf[14] = msv_description2;
        _os_log_impl(&dword_22D2FA000, v44, OS_LOG_TYPE_ERROR, "ML3UpdateSiriIndexOperation 2.0 - failed to create CCMediaContent with entity=%@ error=%{public}@", buf, 0x16u);
      }
    }

    else
    {
      if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        *&buf[4] = v14;
        _os_log_impl(&dword_22D2FA000, v44, OS_LOG_TYPE_DEFAULT, "ML3UpdateSiriIndexOperation 2.0 - failed to create CCMediaContent with entity=%@", buf, 0xCu);
      }

      v41 = 0;
    }

    v52 = 0;
    goto LABEL_92;
  }

  v78 = 0;
  v79 = &v78;
  v80 = 0x2050000000;
  v42 = getCCMediaMetaContentClass_softClass;
  v81 = getCCMediaMetaContentClass_softClass;
  if (!getCCMediaMetaContentClass_softClass)
  {
    *buf = MEMORY[0x277D85DD0];
    *&buf[8] = 3221225472;
    *&buf[16] = __getCCMediaMetaContentClass_block_invoke;
    v83 = &unk_278764EF0;
    v84 = &v78;
    __getCCMediaMetaContentClass_block_invoke(buf);
    v42 = v79[3];
  }

  v43 = v42;
  _Block_object_dispose(&v78, 8);
  v65 = v41;
  v44 = [[v42 alloc] initWithSourceItemIdentifier:identifierCopy linkedIdentifiers:identifiersCopy error:&v65];
  v45 = v65;

  if (v44)
  {
    v78 = 0;
    v79 = &v78;
    v80 = 0x2050000000;
    v46 = getCCItemInstanceClass_softClass;
    v81 = getCCItemInstanceClass_softClass;
    if (!getCCItemInstanceClass_softClass)
    {
      *buf = MEMORY[0x277D85DD0];
      *&buf[8] = 3221225472;
      *&buf[16] = __getCCItemInstanceClass_block_invoke;
      v83 = &unk_278764EF0;
      v84 = &v78;
      __getCCItemInstanceClass_block_invoke(buf);
      v46 = v79[3];
    }

    v47 = v46;
    _Block_object_dispose(&v78, 8);
    v64 = v45;
    v48 = [[v46 alloc] initWithContent:v40 metaContent:v44 error:&v64];
    v49 = v64;

    if (v48)
    {
      v50 = os_log_create("com.apple.amp.medialibrary", "Indexing");
      if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        *&buf[4] = identifierCopy;
        *&buf[12] = 1024;
        *&buf[14] = v8;
        _os_log_impl(&dword_22D2FA000, v50, OS_LOG_TYPE_DEFAULT, "ML3UpdateSiriIndexOperation 2.0 - creating donation item with id=%@ and type=%u", buf, 0x12u);
      }

      v51 = v48;
      v45 = v49;
      v52 = v51;
      goto LABEL_91;
    }

    v59 = os_log_create("com.apple.amp.medialibrary", "Indexing");
    v60 = v59;
    if (v49)
    {
      if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
      {
        msv_description3 = [v49 msv_description];
        *buf = 138412802;
        *&buf[4] = v40;
        *&buf[12] = 2112;
        *&buf[14] = v44;
        *&buf[22] = 2114;
        v83 = msv_description3;
        _os_log_impl(&dword_22D2FA000, v60, OS_LOG_TYPE_ERROR, "ML3UpdateSiriIndexOperation 2.0 - failed to create CCItemInstance with content=%@ and metaContent=%@ error=%{public}@", buf, 0x20u);
      }

      v51 = 0;
      v52 = 0;
      v45 = v49;
      goto LABEL_91;
    }

    if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      *&buf[4] = v40;
      *&buf[12] = 2112;
      *&buf[14] = v44;
      _os_log_impl(&dword_22D2FA000, v60, OS_LOG_TYPE_DEFAULT, "ML3UpdateSiriIndexOperation 2.0 - failed to create CCItemInstance with content=%@ and metaContent=%@", buf, 0x16u);
    }

    v51 = 0;
  }

  else
  {
    v57 = os_log_create("com.apple.amp.medialibrary", "Indexing");
    v51 = v57;
    if (v45)
    {
      if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
      {
        msv_description4 = [v45 msv_description];
        *buf = 138412546;
        *&buf[4] = identifierCopy;
        *&buf[12] = 2114;
        *&buf[14] = msv_description4;
        _os_log_impl(&dword_22D2FA000, v51, OS_LOG_TYPE_ERROR, "ML3UpdateSiriIndexOperation 2.0 - failed to create CCMediaMetaContent with sourceItemIdentifier=%@ error=%{public}@", buf, 0x16u);
      }

      goto LABEL_90;
    }

    if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      *&buf[4] = identifierCopy;
      _os_log_impl(&dword_22D2FA000, v51, OS_LOG_TYPE_DEFAULT, "ML3UpdateSiriIndexOperation 2.0 - failed to create CCMediaMetaContent with sourceItemIdentifier=%@", buf, 0xCu);
    }
  }

  v45 = 0;
LABEL_90:
  v52 = 0;
LABEL_91:

  v41 = v45;
LABEL_92:

  v37 = v41;
LABEL_93:

  return v52;
}

- (BOOL)_performIncrementalIndexToRevision:(int64_t)revision withDonation:(id)donation
{
  v25 = *MEMORY[0x277D85DE8];
  donationCopy = donation;
  v7 = os_log_create("com.apple.amp.medialibrary", "Indexing");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218496;
    *&buf[4] = self;
    *&buf[12] = 2048;
    *&buf[14] = [donationCopy priorVersion];
    *&buf[22] = 2048;
    revisionCopy = revision;
    _os_log_impl(&dword_22D2FA000, v7, OS_LOG_TYPE_DEFAULT, "ML3UpdateSiriIndexOperation 2.0 %p - performing incremental index fromRevision=%llu toRevision=%lld", buf, 0x20u);
  }

  library = [(ML3DatabaseOperation *)self library];
  libraryUID = [library libraryUID];
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2020000000;
  LOBYTE(revisionCopy) = 1;
  priorVersion = [donationCopy priorVersion];
  v11 = +[ML3Entity revisionTrackingCode];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __79__ML3UpdateSiriIndexOperation__performIncrementalIndexToRevision_withDonation___block_invoke;
  v17[3] = &unk_278764DD0;
  v12 = library;
  v18 = v12;
  v13 = libraryUID;
  v19 = v13;
  selfCopy = self;
  v14 = donationCopy;
  v21 = v14;
  v22 = buf;
  [v12 enumeratePersistentIDsAfterRevision:priorVersion revisionTrackingCode:v11 maximumRevisionType:0 forMediaTypes:0 inUsersLibrary:0 usingBlock:v17];
  v15 = *(*&buf[8] + 24);

  _Block_object_dispose(buf, 8);
  return v15 & 1;
}

void __79__ML3UpdateSiriIndexOperation__performIncrementalIndexToRevision_withDonation___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, _BYTE *a7)
{
  v34 = *MEMORY[0x277D85DE8];
  v12 = objc_autoreleasePoolPush();
  if (a5)
  {
    v13 = [(ML3Entity *)ML3Track URLForEntityWithPersistentID:a2 libraryUID:*(a1 + 40)];
    v14 = [v13 absoluteString];

    if (v14)
    {
      v15 = os_log_create("com.apple.amp.medialibrary", "Indexing");
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v16 = *(a1 + 48);
        *buf = 134218242;
        v31 = v16;
        v32 = 2114;
        v33 = v14;
        _os_log_impl(&dword_22D2FA000, v15, OS_LOG_TYPE_DEFAULT, "ML3UpdateSiriIndexOperation 2.0 %p - attempting to delete item [incremental] with identifier=%{public}@", buf, 0x16u);
      }

      v17 = *(a1 + 56);
      v28 = 0;
      v18 = [v17 removeItemWithSourceItemIdentifier:v14 error:&v28];
      v19 = v28;
      if (v18)
      {
        goto LABEL_20;
      }

      if (a7)
      {
        *a7 = 1;
      }

      *(*(*(a1 + 64) + 8) + 24) = 0;
      v20 = os_log_create("com.apple.amp.medialibrary", "Indexing");
      if (!os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
LABEL_19:

LABEL_20:
        goto LABEL_21;
      }

      v21 = *(a1 + 48);
      *buf = 134218242;
      v31 = v21;
      v32 = 2114;
      v33 = v19;
      v22 = "ML3UpdateSiriIndexOperation 2.0 %p - failed to delete item [incremental] because of error=%{public}@";
LABEL_18:
      _os_log_impl(&dword_22D2FA000, v20, OS_LOG_TYPE_ERROR, v22, buf, 0x16u);
      goto LABEL_19;
    }
  }

  else
  {
    v14 = _CreateCCItemInstance(*(a1 + 32), *(a1 + 40), a2, a6);
    if (v14)
    {
      v23 = os_log_create("com.apple.amp.medialibrary", "Indexing");
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        v24 = *(a1 + 48);
        *buf = 134218242;
        v31 = v24;
        v32 = 2114;
        v33 = v14;
        _os_log_impl(&dword_22D2FA000, v23, OS_LOG_TYPE_DEFAULT, "ML3UpdateSiriIndexOperation 2.0 %p - attempting to add or update item [incremental] with identifier=%{public}@", buf, 0x16u);
      }

      v25 = *(a1 + 56);
      v29 = 0;
      v26 = [v25 addOrUpdateItem:v14 error:&v29];
      v19 = v29;
      if (v26)
      {
        goto LABEL_20;
      }

      if (a7)
      {
        *a7 = 1;
      }

      *(*(*(a1 + 64) + 8) + 24) = 0;
      v20 = os_log_create("com.apple.amp.medialibrary", "Indexing");
      if (!os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_19;
      }

      v27 = *(a1 + 48);
      *buf = 134218242;
      v31 = v27;
      v32 = 2114;
      v33 = v19;
      v22 = "ML3UpdateSiriIndexOperation 2.0 %p - failed to add or update item [incremental] because of error=%{public}@";
      goto LABEL_18;
    }
  }

LABEL_21:

  objc_autoreleasePoolPop(v12);
}

- (BOOL)_performFullIndexToRevision:(int64_t)revision withDonation:(id)donation
{
  v24 = *MEMORY[0x277D85DE8];
  donationCopy = donation;
  errorCode = [donationCopy errorCode];
  v8 = os_log_create("com.apple.amp.medialibrary", "Indexing");
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
  if (errorCode == 9)
  {
    if (v9)
    {
      *buf = 134218240;
      *&buf[4] = self;
      *&buf[12] = 2048;
      *&buf[14] = revision;
      _os_log_impl(&dword_22D2FA000, v8, OS_LOG_TYPE_DEFAULT, "ML3UpdateSiriIndexOperation 2.0 %p - skipping full index [same revision] revision=%lld", buf, 0x16u);
    }

    v10 = 0;
  }

  else
  {
    if (v9)
    {
      *buf = 134218240;
      *&buf[4] = self;
      *&buf[12] = 2048;
      *&buf[14] = revision;
      _os_log_impl(&dword_22D2FA000, v8, OS_LOG_TYPE_DEFAULT, "ML3UpdateSiriIndexOperation 2.0 %p - performing full index toRevision=%lld", buf, 0x16u);
    }

    library = [(ML3DatabaseOperation *)self library];
    libraryUID = [library libraryUID];
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    v23 = 1;
    v13 = +[ML3Entity revisionTrackingCode];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __72__ML3UpdateSiriIndexOperation__performFullIndexToRevision_withDonation___block_invoke;
    v16[3] = &unk_278764DD0;
    v8 = library;
    v17 = v8;
    v14 = libraryUID;
    v18 = v14;
    selfCopy = self;
    v20 = donationCopy;
    v21 = buf;
    [v8 enumeratePersistentIDsAfterRevision:0 revisionTrackingCode:v13 maximumRevisionType:0 forMediaTypes:0 inUsersLibrary:0 usingBlock:v16];
    v10 = *(*&buf[8] + 24);

    _Block_object_dispose(buf, 8);
  }

  return v10 & 1;
}

void __72__ML3UpdateSiriIndexOperation__performFullIndexToRevision_withDonation___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, _BYTE *a7)
{
  v26 = *MEMORY[0x277D85DE8];
  v12 = objc_autoreleasePoolPush();
  if (!a5)
  {
    v13 = _CreateCCItemInstance(*(a1 + 32), *(a1 + 40), a2, a6);
    if (v13)
    {
      v14 = os_log_create("com.apple.amp.medialibrary", "Indexing");
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v15 = *(a1 + 48);
        *buf = 134218242;
        v23 = v15;
        v24 = 2114;
        v25 = v13;
        _os_log_impl(&dword_22D2FA000, v14, OS_LOG_TYPE_DEFAULT, "ML3UpdateSiriIndexOperation 2.0 %p - attempting to register item [full index] with identifier=%{public}@", buf, 0x16u);
      }

      v16 = *(a1 + 56);
      v21 = 0;
      v17 = [v16 registerItem:v13 error:&v21];
      v18 = v21;
      if ((v17 & 1) == 0)
      {
        if (a7)
        {
          *a7 = 1;
        }

        *(*(*(a1 + 64) + 8) + 24) = 0;
        v19 = os_log_create("com.apple.amp.medialibrary", "Indexing");
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          v20 = *(a1 + 48);
          *buf = 134218242;
          v23 = v20;
          v24 = 2114;
          v25 = v18;
          _os_log_impl(&dword_22D2FA000, v19, OS_LOG_TYPE_ERROR, "ML3UpdateSiriIndexOperation 2.0 %p - failed to register item because of error=%{public}@", buf, 0x16u);
        }
      }
    }
  }

  objc_autoreleasePoolPop(v12);
}

- (void)_runAsPersonasForLibraryAccountWithBlock:(id)block
{
  v8 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  v5 = os_log_create("com.apple.amp.medialibrary", "Indexing");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 134217984;
    selfCopy = self;
    _os_log_impl(&dword_22D2FA000, v5, OS_LOG_TYPE_DEFAULT, "ML3UpdateSiriIndexOperation 2.0 %p - invoking block for a single-user platform", &v6, 0xCu);
  }

  blockCopy[2](blockCopy, 1);
}

- (BOOL)_platformSupportsSiriIndexing
{
  v32 = *MEMORY[0x277D85DE8];
  if (_platformSupportsSiriIndexing_onceToken != -1)
  {
    dispatch_once(&_platformSupportsSiriIndexing_onceToken, &__block_literal_global_21439);
  }

  if (MSVDeviceIsWatch())
  {
    v3 = _platformSupportsSiriIndexing___unsupportedPlatforms;
    v4 = MSVGetDeviceHardwarePlatform();
    LODWORD(v3) = [v3 containsObject:v4];

    if (v3)
    {
      v5 = os_log_create("com.apple.amp.medialibrary", "Indexing");
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134218242;
        *&buf[4] = self;
        *&buf[12] = 2112;
        *&buf[14] = _platformSupportsSiriIndexing___unsupportedPlatforms;
        v6 = "ML3UpdateSiriIndexOperation 2.0 %p - unsupported watch device: %@";
        v7 = v5;
        v8 = 22;
LABEL_22:
        _os_log_impl(&dword_22D2FA000, v7, OS_LOG_TYPE_DEFAULT, v6, buf, v8);
        goto LABEL_23;
      }

      goto LABEL_23;
    }
  }

  v25 = 0;
  v26 = &v25;
  v27 = 0x2020000000;
  v9 = getAFDeviceSupportsSiriUODSymbolLoc_ptr;
  v28 = getAFDeviceSupportsSiriUODSymbolLoc_ptr;
  if (!getAFDeviceSupportsSiriUODSymbolLoc_ptr)
  {
    *buf = MEMORY[0x277D85DD0];
    *&buf[8] = 3221225472;
    *&buf[16] = __getAFDeviceSupportsSiriUODSymbolLoc_block_invoke;
    v30 = &unk_278764EF0;
    v31 = &v25;
    v10 = AssistantServicesLibrary();
    v11 = dlsym(v10, "AFDeviceSupportsSiriUOD");
    *(v31[1] + 24) = v11;
    getAFDeviceSupportsSiriUODSymbolLoc_ptr = *(v31[1] + 24);
    v9 = v26[3];
  }

  _Block_object_dispose(&v25, 8);
  if (!v9)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    v20 = [MEMORY[0x277CCACA8] stringWithUTF8String:"BOOL soft_AFDeviceSupportsSiriUOD(void)"];
    [currentHandler handleFailureInFunction:v20 file:@"ML3UpdateSiriIndexOperation.m" lineNumber:438 description:{@"%s", dlerror()}];

    goto LABEL_27;
  }

  if (v9())
  {
    return 1;
  }

  v25 = 0;
  v26 = &v25;
  v27 = 0x2020000000;
  v12 = getAFShouldRunAsrOnServerForUODSymbolLoc_ptr;
  v28 = getAFShouldRunAsrOnServerForUODSymbolLoc_ptr;
  if (!getAFShouldRunAsrOnServerForUODSymbolLoc_ptr)
  {
    *buf = MEMORY[0x277D85DD0];
    *&buf[8] = 3221225472;
    *&buf[16] = __getAFShouldRunAsrOnServerForUODSymbolLoc_block_invoke;
    v30 = &unk_278764EF0;
    v31 = &v25;
    v13 = AssistantServicesLibrary();
    v14 = dlsym(v13, "AFShouldRunAsrOnServerForUOD");
    *(v31[1] + 24) = v14;
    getAFShouldRunAsrOnServerForUODSymbolLoc_ptr = *(v31[1] + 24);
    v12 = v26[3];
  }

  _Block_object_dispose(&v25, 8);
  if (!v12)
  {
    currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
    v22 = [MEMORY[0x277CCACA8] stringWithUTF8String:"BOOL soft_AFShouldRunAsrOnServerForUOD(void)"];
    [currentHandler2 handleFailureInFunction:v22 file:@"ML3UpdateSiriIndexOperation.m" lineNumber:439 description:{@"%s", dlerror()}];

    goto LABEL_27;
  }

  if (v12())
  {
    return 1;
  }

  v25 = 0;
  v26 = &v25;
  v27 = 0x2020000000;
  v15 = getAFOfflineDictationCapableSymbolLoc_ptr;
  v28 = getAFOfflineDictationCapableSymbolLoc_ptr;
  if (!getAFOfflineDictationCapableSymbolLoc_ptr)
  {
    *buf = MEMORY[0x277D85DD0];
    *&buf[8] = 3221225472;
    *&buf[16] = __getAFOfflineDictationCapableSymbolLoc_block_invoke;
    v30 = &unk_278764EF0;
    v31 = &v25;
    v16 = AssistantServicesLibrary();
    v17 = dlsym(v16, "AFOfflineDictationCapable");
    *(v31[1] + 24) = v17;
    getAFOfflineDictationCapableSymbolLoc_ptr = *(v31[1] + 24);
    v15 = v26[3];
  }

  _Block_object_dispose(&v25, 8);
  if (!v15)
  {
    currentHandler3 = [MEMORY[0x277CCA890] currentHandler];
    v24 = [MEMORY[0x277CCACA8] stringWithUTF8String:"BOOL soft_AFOfflineDictationCapable(void)"];
    [currentHandler3 handleFailureInFunction:v24 file:@"ML3UpdateSiriIndexOperation.m" lineNumber:440 description:{@"%s", dlerror()}];

LABEL_27:
    __break(1u);
  }

  if (v15())
  {
    return 1;
  }

  v5 = os_log_create("com.apple.amp.medialibrary", "Indexing");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    *&buf[4] = self;
    v6 = "ML3UpdateSiriIndexOperation 2.0 %p - Siri understanding on device or ASR is not supported";
    v7 = v5;
    v8 = 12;
    goto LABEL_22;
  }

LABEL_23:

  return 0;
}

void __60__ML3UpdateSiriIndexOperation__platformSupportsSiriIndexing__block_invoke()
{
  v0 = _platformSupportsSiriIndexing___unsupportedPlatforms;
  _platformSupportsSiriIndexing___unsupportedPlatforms = &unk_2840C8648;
}

- (BOOL)_execute:(id *)_execute
{
  v37 = *MEMORY[0x277D85DE8];
  if ([(ML3UpdateSiriIndexOperation *)self _platformSupportsSiriIndexing])
  {
    library = [(ML3DatabaseOperation *)self library];
    currentContentRevision = [library currentContentRevision];
    libraryUID = [library libraryUID];
    v7 = [library valueForDatabaseProperty:@"MLSiriIndexValidityRevision"];
    longLongValue = [v7 longLongValue];

    v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@-%ld-%lld", libraryUID, 1, longLongValue];
    v10 = os_log_create("com.apple.amp.medialibrary", "Indexing");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      library2 = [(ML3DatabaseOperation *)self library];
      databasePath = [library2 databasePath];
      *buf = 134218498;
      *&buf[4] = self;
      *&buf[12] = 2114;
      *&buf[14] = v9;
      *&buf[22] = 2114;
      v36 = databasePath;
      _os_log_impl(&dword_22D2FA000, v10, OS_LOG_TYPE_DEFAULT, "ML3UpdateSiriIndexOperation 2.0 %p - starting index validity=%{public}@ databasePath=%{public}@", buf, 0x20u);
    }

    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    LOBYTE(v36) = 1;
    v13 = dispatch_group_create();
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __40__ML3UpdateSiriIndexOperation__execute___block_invoke;
    v23[3] = &unk_278764DA8;
    v14 = v13;
    v24 = v14;
    v29 = currentContentRevision;
    v15 = v9;
    v25 = v15;
    selfCopy = self;
    v28 = buf;
    v30 = longLongValue;
    v16 = library;
    v27 = v16;
    [(ML3UpdateSiriIndexOperation *)self _runAsPersonasForLibraryAccountWithBlock:v23];
    v17 = dispatch_time(0, 60000000000);
    if (dispatch_group_wait(v14, v17))
    {
      v18 = os_log_create("com.apple.amp.medialibrary", "Indexing");
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *v31 = 134217984;
        selfCopy3 = self;
        _os_log_impl(&dword_22D2FA000, v18, OS_LOG_TYPE_DEFAULT, "ML3UpdateSiriIndexOperation 2.0 %p - operation timed out", v31, 0xCu);
      }

      *(*&buf[8] + 24) = 0;
    }

    v19 = os_log_create("com.apple.amp.medialibrary", "Indexing");
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v20 = *(*&buf[8] + 24);
      *v31 = 134218240;
      selfCopy3 = self;
      v33 = 1024;
      v34 = v20;
      _os_log_impl(&dword_22D2FA000, v19, OS_LOG_TYPE_DEFAULT, "ML3UpdateSiriIndexOperation 2.0 %p - operation complete [success = %{BOOL}u]", v31, 0x12u);
    }

    v21 = *(*&buf[8] + 24);
    _Block_object_dispose(buf, 8);
  }

  else
  {
    v16 = os_log_create("com.apple.amp.medialibrary", "Indexing");
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      *&buf[4] = self;
      _os_log_impl(&dword_22D2FA000, v16, OS_LOG_TYPE_DEFAULT, "ML3UpdateSiriIndexOperation 2.0 %p - unsupported platform, skipping donations.", buf, 0xCu);
    }

    v21 = 0;
  }

  return v21 & 1;
}

void __40__ML3UpdateSiriIndexOperation__execute___block_invoke(uint64_t a1, int a2)
{
  if (a2)
  {
    dispatch_group_enter(*(a1 + 32));
    v17 = 0;
    v18 = &v17;
    v19 = 0x2050000000;
    v3 = getCCSetDonationClass_softClass;
    v20 = getCCSetDonationClass_softClass;
    if (!getCCSetDonationClass_softClass)
    {
      v16[0] = MEMORY[0x277D85DD0];
      v16[1] = 3221225472;
      v16[2] = __getCCSetDonationClass_block_invoke;
      v16[3] = &unk_278764EF0;
      v16[4] = &v17;
      __getCCSetDonationClass_block_invoke(v16);
      v3 = v18[3];
    }

    v4 = v3;
    _Block_object_dispose(&v17, 8);
    v5 = *(a1 + 72);
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __40__ML3UpdateSiriIndexOperation__execute___block_invoke_2;
    v11[3] = &unk_278764D80;
    v6 = *(a1 + 40);
    v11[4] = *(a1 + 48);
    v14 = v5;
    v7 = *(a1 + 32);
    v8 = *(a1 + 80);
    v12 = v7;
    v15 = v8;
    v10 = *(a1 + 56);
    v9 = v10;
    v13 = v10;
    [v3 incrementalSetDonationWithItemType:18540 descriptors:MEMORY[0x277CBEBF8] version:v5 validity:v6 completion:v11];
  }
}

void __40__ML3UpdateSiriIndexOperation__execute___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v34 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v27 = 0;
  v28 = &v27;
  v29 = 0x2050000000;
  v7 = getCCIncrementalSetDonationClass_softClass;
  v30 = getCCIncrementalSetDonationClass_softClass;
  if (!getCCIncrementalSetDonationClass_softClass)
  {
    *buf = MEMORY[0x277D85DD0];
    *&buf[8] = 3221225472;
    *&buf[16] = __getCCIncrementalSetDonationClass_block_invoke;
    v32 = &unk_278764EF0;
    v33 = &v27;
    __getCCIncrementalSetDonationClass_block_invoke(buf);
    v7 = v28[3];
  }

  v8 = v7;
  _Block_object_dispose(&v27, 8);
  if (objc_opt_isKindOfClass())
  {
    if ([*(a1 + 32) _performIncrementalIndexToRevision:*(a1 + 64) withDonation:v5])
    {
LABEL_5:
      v9 = os_log_create("com.apple.amp.medialibrary", "Indexing");
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = *(a1 + 32);
        *buf = 134217984;
        *&buf[4] = v10;
        _os_log_impl(&dword_22D2FA000, v9, OS_LOG_TYPE_DEFAULT, "ML3UpdateSiriIndexOperation 2.0 %p - calling donation finish", buf, 0xCu);
      }

      v26 = v6;
      v11 = [v5 finish:&v26];
      v12 = v26;

      *(*(*(a1 + 56) + 8) + 24) = v11;
      if ((*(*(*(a1 + 56) + 8) + 24) & 1) == 0)
      {
        v13 = *(a1 + 48);
        v14 = [MEMORY[0x277CCABB0] numberWithInteger:*(a1 + 72) + 1];
        [v13 setValue:v14 forDatabaseProperty:@"MLSiriIndexValidityRevision"];
      }

      v15 = os_log_create("com.apple.amp.medialibrary", "Indexing");
      v16 = v15;
      if (v12)
      {
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          v17 = *(a1 + 32);
          v18 = [v12 msv_description];
          *buf = 134218242;
          *&buf[4] = v17;
          *&buf[12] = 2114;
          *&buf[14] = v18;
          _os_log_impl(&dword_22D2FA000, v16, OS_LOG_TYPE_ERROR, "ML3UpdateSiriIndexOperation 2.0 %p - finished index error=%{public}@", buf, 0x16u);
        }
      }

      else if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v25 = *(a1 + 32);
        *buf = 134217984;
        *&buf[4] = v25;
        _os_log_impl(&dword_22D2FA000, v16, OS_LOG_TYPE_DEFAULT, "ML3UpdateSiriIndexOperation 2.0 %p - finished index", buf, 0xCu);
      }

      v6 = v12;
      goto LABEL_25;
    }

    goto LABEL_16;
  }

  v27 = 0;
  v28 = &v27;
  v29 = 0x2050000000;
  v19 = getCCFullSetDonationClass_softClass;
  v30 = getCCFullSetDonationClass_softClass;
  if (!getCCFullSetDonationClass_softClass)
  {
    *buf = MEMORY[0x277D85DD0];
    *&buf[8] = 3221225472;
    *&buf[16] = __getCCFullSetDonationClass_block_invoke;
    v32 = &unk_278764EF0;
    v33 = &v27;
    __getCCFullSetDonationClass_block_invoke(buf);
    v19 = v28[3];
  }

  v20 = v19;
  _Block_object_dispose(&v27, 8);
  if (objc_opt_isKindOfClass())
  {
    if ([*(a1 + 32) _performFullIndexToRevision:*(a1 + 64) withDonation:v5])
    {
      goto LABEL_5;
    }

LABEL_16:
    v21 = os_log_create("com.apple.amp.medialibrary", "Indexing");
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v22 = *(a1 + 32);
      *buf = 134217984;
      *&buf[4] = v22;
      _os_log_impl(&dword_22D2FA000, v21, OS_LOG_TYPE_DEFAULT, "ML3UpdateSiriIndexOperation 2.0 %p - calling donation cancel", buf, 0xCu);
    }

    [v5 cancel];
    goto LABEL_25;
  }

  v23 = os_log_create("com.apple.amp.medialibrary", "Indexing");
  if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
  {
    v24 = *(a1 + 32);
    *buf = 134218242;
    *&buf[4] = v24;
    *&buf[12] = 2114;
    *&buf[14] = v6;
    _os_log_impl(&dword_22D2FA000, v23, OS_LOG_TYPE_ERROR, "ML3UpdateSiriIndexOperation 2.0 %p - failed to index [call to donate failed] error=%{public}@", buf, 0x16u);
  }

LABEL_25:
  dispatch_group_leave(*(a1 + 40));
}

@end