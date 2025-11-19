void sub_1B7BBBC24(uint64_t a1, void *a2)
{
  v45 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = IMLogHandleForCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CFA728(a1, v3, v4);
    }

    v5 = *(a1 + 32);
    v6 = v3;
    v7 = *(v5 + 56);
    *(v5 + 56) = v6;
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v8 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v11 = objc_msgSend_searchableItems(*(a1 + 32), v9, v10);
        v14 = objc_msgSend_count(v11, v12, v13);
        v17 = objc_msgSend_transactionID(*(a1 + 32), v15, v16);
        v41 = 134218242;
        v42 = v14;
        v43 = 2112;
        v44 = v17;
        _os_log_impl(&dword_1B7AD5000, v8, OS_LOG_TYPE_INFO, "indexing of %ld items to spotlight with transaction ID %@ completed", &v41, 0x16u);
      }
    }

    notify_post("com.apple.imdpersistenceagent.notification.spotlightclientstateupdated");
    v20 = objc_msgSend_sharedPublisher(IMDSpotlightActivityPublisher, v18, v19);
    v23 = objc_msgSend_searchableItems(*(a1 + 32), v21, v22);
    v26 = objc_msgSend_context(*(a1 + 32), v24, v25);
    objc_msgSend_publishItems_context_(v20, v27, v23, v26);

    v7 = objc_msgSend_sharedPublisher(IMDSpotlightActivityPublisher, v28, v29);
    v32 = objc_msgSend_rejectedItems(*(a1 + 32), v30, v31);
    v35 = objc_msgSend_context(*(a1 + 32), v33, v34);
    objc_msgSend_publishRejections_context_(v7, v36, v32, v35);
  }

  v39 = objc_msgSend_group(*(a1 + 32), v37, v38);
  dispatch_group_leave(v39);

  v40 = *MEMORY[0x1E69E9840];
}

void sub_1B7BBCB7C()
{
  v0 = [IMDCoreSpotlightRichLinkIndexer alloc];
  v2 = objc_msgSend_initWithClass_linkType_linkSubtype_prefix_(v0, v1, 0, 0, 0, 0);
  v3 = qword_1EBA541F0;
  qword_1EBA541F0 = v2;
}

void sub_1B7BBCD44()
{
  v128[15] = *MEMORY[0x1E69E9840];
  v127[0] = @"LPiTunesMediaSongMetadata";
  v2 = [IMDCoreSpotlightMediaLinkIndexer alloc];
  v123 = 0;
  v124 = &v123;
  v125 = 0x2050000000;
  v3 = qword_1EBA54260;
  v126 = qword_1EBA54260;
  if (!qword_1EBA54260)
  {
    v118 = MEMORY[0x1E69E9820];
    v119 = 3221225472;
    v120 = sub_1B7BBFDF0;
    v121 = &unk_1E7CB6EA8;
    v122 = &v123;
    sub_1B7BBFDF0(&v118, v0, v1);
    v3 = v124[3];
  }

  v4 = v3;
  _Block_object_dispose(&v123, 8);
  v6 = objc_msgSend_initWithClass_linkType_prefix_(v2, v5, v3, *MEMORY[0x1E6963B30], @"song");
  v128[0] = v6;
  v127[1] = @"LPiTunesMediaAlbumMetadata";
  v9 = [IMDCoreSpotlightMediaLinkIndexer alloc];
  v123 = 0;
  v124 = &v123;
  v125 = 0x2050000000;
  v10 = qword_1EBA54270;
  v126 = qword_1EBA54270;
  if (!qword_1EBA54270)
  {
    v118 = MEMORY[0x1E69E9820];
    v119 = 3221225472;
    v120 = sub_1B7BBFFB0;
    v121 = &unk_1E7CB6EA8;
    v122 = &v123;
    sub_1B7BBFFB0(&v118, v7, v8);
    v10 = v124[3];
  }

  v11 = v10;
  _Block_object_dispose(&v123, 8);
  v13 = objc_msgSend_initWithClass_linkType_prefix_(v9, v12, v10, *MEMORY[0x1E6963AE0], @"album");
  v128[1] = v13;
  v127[2] = @"LPiTunesMediaArtistMetadata";
  v16 = [IMDCoreSpotlightMediaLinkIndexer alloc];
  v123 = 0;
  v124 = &v123;
  v125 = 0x2050000000;
  v17 = qword_1EBA54278;
  v126 = qword_1EBA54278;
  if (!qword_1EBA54278)
  {
    v118 = MEMORY[0x1E69E9820];
    v119 = 3221225472;
    v120 = sub_1B7BC0008;
    v121 = &unk_1E7CB6EA8;
    v122 = &v123;
    sub_1B7BC0008(&v118, v14, v15);
    v17 = v124[3];
  }

  v18 = v17;
  _Block_object_dispose(&v123, 8);
  v20 = objc_msgSend_initWithClass_linkType_prefix_(v16, v19, v17, *MEMORY[0x1E6963AE8], @"artist");
  v128[2] = v20;
  v127[3] = @"LPiTunesMediaMusicVideoMetadata";
  v23 = [IMDCoreSpotlightMediaLinkIndexer alloc];
  v123 = 0;
  v124 = &v123;
  v125 = 0x2050000000;
  v24 = qword_1EBA54280;
  v126 = qword_1EBA54280;
  if (!qword_1EBA54280)
  {
    v118 = MEMORY[0x1E69E9820];
    v119 = 3221225472;
    v120 = sub_1B7BC0060;
    v121 = &unk_1E7CB6EA8;
    v122 = &v123;
    sub_1B7BC0060(&v118, v21, v22);
    v24 = v124[3];
  }

  v25 = v24;
  _Block_object_dispose(&v123, 8);
  v27 = objc_msgSend_initWithClass_linkType_prefix_(v23, v26, v24, *MEMORY[0x1E6963B00], @"music video");
  v128[3] = v27;
  v127[4] = @"LPiTunesMediaPodcastEpisodeMetadata";
  v30 = [IMDCoreSpotlightMediaLinkIndexer alloc];
  v123 = 0;
  v124 = &v123;
  v125 = 0x2050000000;
  v31 = qword_1EBA54288;
  v126 = qword_1EBA54288;
  if (!qword_1EBA54288)
  {
    v118 = MEMORY[0x1E69E9820];
    v119 = 3221225472;
    v120 = sub_1B7BC00B8;
    v121 = &unk_1E7CB6EA8;
    v122 = &v123;
    sub_1B7BC00B8(&v118, v28, v29);
    v31 = v124[3];
  }

  v32 = v31;
  _Block_object_dispose(&v123, 8);
  v33 = *MEMORY[0x1E6963B18];
  v35 = objc_msgSend_initWithClass_linkType_linkSubtype_prefix_(v30, v34, v31, *MEMORY[0x1E6963B18], @"episode", @"podcast episode");
  v128[4] = v35;
  v127[5] = @"LPiTunesMediaPodcastMetadata";
  v38 = [IMDCoreSpotlightMediaLinkIndexer alloc];
  v123 = 0;
  v124 = &v123;
  v125 = 0x2050000000;
  v39 = qword_1EBA54290;
  v126 = qword_1EBA54290;
  if (!qword_1EBA54290)
  {
    v118 = MEMORY[0x1E69E9820];
    v119 = 3221225472;
    v120 = sub_1B7BC0110;
    v121 = &unk_1E7CB6EA8;
    v122 = &v123;
    sub_1B7BC0110(&v118, v36, v37);
    v39 = v124[3];
  }

  v40 = v39;
  _Block_object_dispose(&v123, 8);
  v117 = objc_msgSend_initWithClass_linkType_prefix_(v38, v41, v39, v33, @"podcast");
  v128[5] = v117;
  v127[6] = @"LPiTunesMediaTVEpisodeMetadata";
  v44 = [IMDCoreSpotlightMediaLinkIndexer alloc];
  v123 = 0;
  v124 = &v123;
  v125 = 0x2050000000;
  v45 = qword_1EBA54298;
  v126 = qword_1EBA54298;
  if (!qword_1EBA54298)
  {
    v118 = MEMORY[0x1E69E9820];
    v119 = 3221225472;
    v120 = sub_1B7BC0168;
    v121 = &unk_1E7CB6EA8;
    v122 = &v123;
    sub_1B7BC0168(&v118, v42, v43);
    v45 = v124[3];
  }

  v46 = v45;
  _Block_object_dispose(&v123, 8);
  v47 = *MEMORY[0x1E6963B28];
  v116 = objc_msgSend_initWithClass_linkType_linkSubtype_prefix_(v44, v48, v45, *MEMORY[0x1E6963B28], @"episode", @"tv show episode");
  v128[6] = v116;
  v127[7] = @"LPiTunesMediaTVSeasonMetadata";
  v51 = [IMDCoreSpotlightMediaLinkIndexer alloc];
  v123 = 0;
  v124 = &v123;
  v125 = 0x2050000000;
  v52 = qword_1EBA542A0;
  v126 = qword_1EBA542A0;
  if (!qword_1EBA542A0)
  {
    v118 = MEMORY[0x1E69E9820];
    v119 = 3221225472;
    v120 = sub_1B7BC01C0;
    v121 = &unk_1E7CB6EA8;
    v122 = &v123;
    sub_1B7BC01C0(&v118, v49, v50);
    v52 = v124[3];
  }

  v53 = v52;
  _Block_object_dispose(&v123, 8);
  v115 = objc_msgSend_initWithClass_linkType_linkSubtype_prefix_(v51, v54, v52, v47, @"season", @"tv show");
  v128[7] = v115;
  v127[8] = @"LPiTunesMediaPlaylistMetadata";
  v57 = [IMDCoreSpotlightMediaLinkIndexer alloc];
  v123 = 0;
  v124 = &v123;
  v125 = 0x2050000000;
  v58 = qword_1EBA542A8;
  v126 = qword_1EBA542A8;
  if (!qword_1EBA542A8)
  {
    v118 = MEMORY[0x1E69E9820];
    v119 = 3221225472;
    v120 = sub_1B7BC0218;
    v121 = &unk_1E7CB6EA8;
    v122 = &v123;
    sub_1B7BC0218(&v118, v55, v56);
    v58 = v124[3];
  }

  v59 = v58;
  _Block_object_dispose(&v123, 8);
  v114 = objc_msgSend_initWithClass_linkType_prefix_(v57, v60, v58, *MEMORY[0x1E6963B10], @"playlist");
  v128[8] = v114;
  v127[9] = @"LPiTunesMediaMovieMetadata";
  v63 = [IMDCoreSpotlightMediaLinkIndexer alloc];
  v123 = 0;
  v124 = &v123;
  v125 = 0x2050000000;
  v64 = qword_1EBA542B0;
  v126 = qword_1EBA542B0;
  if (!qword_1EBA542B0)
  {
    v118 = MEMORY[0x1E69E9820];
    v119 = 3221225472;
    v120 = sub_1B7BC0270;
    v121 = &unk_1E7CB6EA8;
    v122 = &v123;
    sub_1B7BC0270(&v118, v61, v62);
    v64 = v124[3];
  }

  v65 = v64;
  _Block_object_dispose(&v123, 8);
  v66 = *MEMORY[0x1E6963AF8];
  v113 = objc_msgSend_initWithClass_linkType_prefix_(v63, v67, v64, *MEMORY[0x1E6963AF8], @"movie");
  v128[9] = v113;
  v127[10] = @"LPiTunesMediaMovieBundleMetadata";
  v70 = [IMDCoreSpotlightMediaLinkIndexer alloc];
  v123 = 0;
  v124 = &v123;
  v125 = 0x2050000000;
  v71 = qword_1EBA542B8;
  v126 = qword_1EBA542B8;
  if (!qword_1EBA542B8)
  {
    v118 = MEMORY[0x1E69E9820];
    v119 = 3221225472;
    v120 = sub_1B7BC02C8;
    v121 = &unk_1E7CB6EA8;
    v122 = &v123;
    sub_1B7BC02C8(&v118, v68, v69);
    v71 = v124[3];
  }

  v72 = v71;
  _Block_object_dispose(&v123, 8);
  v74 = objc_msgSend_initWithClass_linkType_linkSubtype_prefix_(v70, v73, v71, v66, @"bundle", @"movie bundle");
  v128[10] = v74;
  v127[11] = @"LPiTunesMediaRadioMetadata";
  v77 = [IMDCoreSpotlightMediaLinkIndexer alloc];
  v123 = 0;
  v124 = &v123;
  v125 = 0x2050000000;
  v78 = qword_1EBA542C0;
  v126 = qword_1EBA542C0;
  if (!qword_1EBA542C0)
  {
    v118 = MEMORY[0x1E69E9820];
    v119 = 3221225472;
    v120 = sub_1B7BC0320;
    v121 = &unk_1E7CB6EA8;
    v122 = &v123;
    sub_1B7BC0320(&v118, v75, v76);
    v78 = v124[3];
  }

  v79 = v78;
  _Block_object_dispose(&v123, 8);
  v112 = objc_msgSend_initWithClass_linkType_prefix_(v77, v80, v78, *MEMORY[0x1E6963B20], @"radio station");
  v128[11] = v112;
  v127[12] = @"LPAppleTVMetadata";
  v83 = [IMDCoreSpotlightAppleTVLinkIndexer alloc];
  v123 = 0;
  v124 = &v123;
  v125 = 0x2050000000;
  v84 = qword_1EBA542C8;
  v126 = qword_1EBA542C8;
  if (!qword_1EBA542C8)
  {
    v118 = MEMORY[0x1E69E9820];
    v119 = 3221225472;
    v120 = sub_1B7BC0378;
    v121 = &unk_1E7CB6EA8;
    v122 = &v123;
    sub_1B7BC0378(&v118, v81, v82);
    v84 = v124[3];
  }

  v85 = v84;
  _Block_object_dispose(&v123, 8);
  v87 = objc_msgSend_initWithClass_linkType_prefix_(v83, v86, v84, 0, 0);
  v128[12] = v87;
  v127[13] = @"LPAppleNewsMetadata";
  v90 = [IMDCoreSpotlightNewsLinkIndexer alloc];
  v123 = 0;
  v124 = &v123;
  v125 = 0x2050000000;
  v91 = qword_1EBA542D0;
  v126 = qword_1EBA542D0;
  if (!qword_1EBA542D0)
  {
    v118 = MEMORY[0x1E69E9820];
    v119 = 3221225472;
    v120 = sub_1B7BC03D0;
    v121 = &unk_1E7CB6EA8;
    v122 = &v123;
    sub_1B7BC03D0(&v118, v88, v89);
    v91 = v124[3];
  }

  v92 = v91;
  _Block_object_dispose(&v123, 8);
  v94 = objc_msgSend_initWithClass_linkType_prefix_(v90, v93, v91, *MEMORY[0x1E6963B08], @"news");
  v128[13] = v94;
  v127[14] = @"LPMapMetadata";
  v97 = [IMDCoreSpotlightMapsLinkIndexer alloc];
  v98 = v74;
  v99 = v35;
  v100 = v27;
  v101 = v20;
  v102 = v13;
  v103 = v6;
  v123 = 0;
  v124 = &v123;
  v125 = 0x2050000000;
  v104 = qword_1EBA542D8;
  v126 = qword_1EBA542D8;
  if (!qword_1EBA542D8)
  {
    v118 = MEMORY[0x1E69E9820];
    v119 = 3221225472;
    v120 = sub_1B7BC0428;
    v121 = &unk_1E7CB6EA8;
    v122 = &v123;
    sub_1B7BC0428(&v118, v95, v96);
    v104 = v124[3];
  }

  v105 = v104;
  _Block_object_dispose(&v123, 8);
  v107 = objc_msgSend_initWithClass_linkType_prefix_(v97, v106, v104, *MEMORY[0x1E6963AF0], @"map");
  v128[14] = v107;
  v109 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v108, v128, v127, 15);
  v110 = qword_1EBA54200;
  qword_1EBA54200 = v109;

  v111 = *MEMORY[0x1E69E9840];
}

void sub_1B7BBDA58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B7BBE0D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B7BBE6F0()
{
  v0 = objc_alloc(MEMORY[0x1E6964E00]);
  v2 = objc_msgSend_initWithKeyName_searchable_searchableByDefault_unique_multiValued_(v0, v1, @"com_apple_mobilesms_lpTitle", 1, 0, 0, 0);
  v3 = qword_1EBA54210;
  qword_1EBA54210 = v2;
}

void sub_1B7BBE78C()
{
  v0 = objc_alloc(MEMORY[0x1E6964E00]);
  v2 = objc_msgSend_initWithKeyName_searchable_searchableByDefault_unique_multiValued_(v0, v1, @"com_apple_mobilesms_lpRichMedia", 1, 0, 1, 0);
  v3 = qword_1EBA54220;
  qword_1EBA54220 = v2;
}

void sub_1B7BBE828()
{
  v0 = objc_alloc(MEMORY[0x1E6964E00]);
  v2 = objc_msgSend_initWithKeyName_searchable_searchableByDefault_unique_multiValued_(v0, v1, @"com_apple_mobilesms_lpPluginPaths", 0, 0, 1, 1);
  v3 = qword_1EBA54230;
  qword_1EBA54230 = v2;
}

void sub_1B7BBE8C4()
{
  v0 = objc_alloc(MEMORY[0x1E6964E00]);
  v2 = objc_msgSend_initWithKeyName_searchable_searchableByDefault_unique_multiValued_(v0, v1, @"com_apple_mobilesms_lpDescription", 1, 0, 0, 0);
  v3 = qword_1EBA54240;
  qword_1EBA54240 = v2;
}

void sub_1B7BBF4EC()
{
  v75[15] = *MEMORY[0x1E69E9840];
  v74[0] = @"Episode";
  v0 = [_IMDOpenGraphSpotlightMappingInfo alloc];
  v73 = objc_msgSend__indexerForClassName_(IMDCoreSpotlightRichLinkIndexer, v1, @"LPiTunesMediaTVEpisodeMetadata");
  v72 = objc_msgSend_initWithOGType_indexer_(v0, v2, @"Episode", v73);
  v75[0] = v72;
  v74[1] = @"video.episode";
  v3 = [_IMDOpenGraphSpotlightMappingInfo alloc];
  v71 = objc_msgSend__indexerForClassName_(IMDCoreSpotlightRichLinkIndexer, v4, @"LPiTunesMediaTVEpisodeMetadata");
  v70 = objc_msgSend_initWithOGType_indexer_(v3, v5, @"video.episode", v71);
  v75[1] = v70;
  v74[2] = @"Show";
  v6 = [_IMDOpenGraphSpotlightMappingInfo alloc];
  v69 = objc_msgSend__indexerForClassName_(IMDCoreSpotlightRichLinkIndexer, v7, @"LPiTunesMediaTVSeasonMetadata");
  v68 = objc_msgSend_initWithOGType_indexer_(v6, v8, @"Show", v69);
  v75[2] = v68;
  v74[3] = @"video.tv_show";
  v9 = [_IMDOpenGraphSpotlightMappingInfo alloc];
  v67 = objc_msgSend__indexerForClassName_(IMDCoreSpotlightRichLinkIndexer, v10, @"LPiTunesMediaTVSeasonMetadata");
  v66 = objc_msgSend_initWithOGType_indexer_(v9, v11, @"video.tv_show", v67);
  v75[3] = v66;
  v74[4] = @"Movie";
  v12 = [_IMDOpenGraphSpotlightMappingInfo alloc];
  v65 = objc_msgSend__indexerForClassName_(IMDCoreSpotlightRichLinkIndexer, v13, @"LPiTunesMediaMovieMetadata");
  v64 = objc_msgSend_initWithOGType_indexer_(v12, v14, @"Movie", v65);
  v75[4] = v64;
  v74[5] = @"video.movie";
  v15 = [_IMDOpenGraphSpotlightMappingInfo alloc];
  v63 = objc_msgSend__indexerForClassName_(IMDCoreSpotlightRichLinkIndexer, v16, @"LPiTunesMediaMovieMetadata");
  v62 = objc_msgSend_initWithOGType_indexer_(v15, v17, @"video.movie", v63);
  v75[5] = v62;
  v74[6] = @"music.song";
  v18 = [_IMDOpenGraphSpotlightMappingInfo alloc];
  v61 = objc_msgSend__indexerForClassName_(IMDCoreSpotlightRichLinkIndexer, v19, @"LPiTunesMediaSongMetadata");
  v60 = objc_msgSend_initWithOGType_indexer_(v18, v20, @"music.song", v61);
  v75[6] = v60;
  v74[7] = @"music.album";
  v21 = [_IMDOpenGraphSpotlightMappingInfo alloc];
  v59 = objc_msgSend__indexerForClassName_(IMDCoreSpotlightRichLinkIndexer, v22, @"LPiTunesMediaAlbumMetadata");
  v58 = objc_msgSend_initWithOGType_indexer_(v21, v23, @"music.album", v59);
  v75[7] = v58;
  v74[8] = @"music.playlist";
  v24 = [_IMDOpenGraphSpotlightMappingInfo alloc];
  v57 = objc_msgSend__indexerForClassName_(IMDCoreSpotlightRichLinkIndexer, v25, @"LPiTunesMediaPlaylistMetadata");
  v56 = objc_msgSend_initWithOGType_indexer_(v24, v26, @"music.playlist", v57);
  v75[8] = v56;
  v74[9] = @"music.radio_station";
  v27 = [_IMDOpenGraphSpotlightMappingInfo alloc];
  v55 = objc_msgSend__indexerForClassName_(IMDCoreSpotlightRichLinkIndexer, v28, @"LPiTunesMediaRadioMetadata");
  v30 = objc_msgSend_initWithOGType_indexer_(v27, v29, @"music.radio_station", v55);
  v75[9] = v30;
  v74[10] = @"video.other";
  v31 = [_IMDOpenGraphSpotlightMappingInfo alloc];
  v33 = objc_msgSend__indexerForClassName_(IMDCoreSpotlightRichLinkIndexer, v32, @"LPiTunesMediaMovieMetadata");
  v35 = objc_msgSend_initWithOGType_indexer_(v31, v34, @"video.other", v33);
  v75[10] = v35;
  v74[11] = @"article";
  v36 = [_IMDOpenGraphSpotlightMappingInfo alloc];
  v38 = objc_msgSend__indexerForClassName_(IMDCoreSpotlightRichLinkIndexer, v37, @"LPAppleNewsMetadata");
  v40 = objc_msgSend_initWithOGType_indexer_(v36, v39, @"article", v38);
  v75[11] = v40;
  v74[12] = @"book";
  v41 = [_IMDOpenGraphSpotlightMappingInfo alloc];
  v42 = *MEMORY[0x1E6963B38];
  v44 = objc_msgSend_initWithOGType_prefix_linkType_linkSubType_(v41, v43, @"book", @"book", *MEMORY[0x1E6963B38], @"book");
  v75[12] = v44;
  v74[13] = @"profile";
  v45 = [_IMDOpenGraphSpotlightMappingInfo alloc];
  v47 = objc_msgSend_initWithOGType_prefix_linkType_linkSubType_(v45, v46, @"profile", @"profile", v42, @"profile");
  v75[13] = v47;
  v74[14] = @"recipe";
  v48 = [_IMDOpenGraphSpotlightMappingInfo alloc];
  v50 = objc_msgSend_initWithOGType_prefix_linkType_linkSubType_(v48, v49, @"recipe", @"recipe", v42, @"recipe");
  v75[14] = v50;
  v52 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v51, v75, v74, 15);
  v53 = qword_1EBA54250;
  qword_1EBA54250 = v52;

  v54 = *MEMORY[0x1E69E9840];
}

Class sub_1B7BBFDF0(uint64_t a1, const char *a2, uint64_t a3)
{
  sub_1B7BBFE48(a1, a2, a3);
  result = objc_getClass("LPiTunesMediaSongMetadata");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_1B7CFA8CC(result, v5, v6);
  }

  qword_1EBA54260 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_1B7BBFE48(uint64_t a1, const char *a2, uint64_t a3)
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!qword_1EBA54268)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = sub_1B7BBFF3C;
    v4[4] = &unk_1E7CB6A70;
    v4[5] = v4;
    v5 = xmmword_1E7CBC220;
    v6 = 0;
    qword_1EBA54268 = _sl_dlopen();
  }

  if (!qword_1EBA54268)
  {
    sub_1B7CFA948(v4, a2, a3);
  }

  if (v4[0])
  {
    free(v4[0]);
  }

  v3 = *MEMORY[0x1E69E9840];
}

uint64_t sub_1B7BBFF3C(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_1EBA54268 = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

Class sub_1B7BBFFB0(uint64_t a1, const char *a2, uint64_t a3)
{
  sub_1B7BBFE48(a1, a2, a3);
  result = objc_getClass("LPiTunesMediaAlbumMetadata");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_1B7CFA9C8(result, v5, v6);
  }

  qword_1EBA54270 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class sub_1B7BC0008(uint64_t a1, const char *a2, uint64_t a3)
{
  sub_1B7BBFE48(a1, a2, a3);
  result = objc_getClass("LPiTunesMediaArtistMetadata");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_1B7CFAA44(result, v5, v6);
  }

  qword_1EBA54278 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class sub_1B7BC0060(uint64_t a1, const char *a2, uint64_t a3)
{
  sub_1B7BBFE48(a1, a2, a3);
  result = objc_getClass("LPiTunesMediaMusicVideoMetadata");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_1B7CFAAC0(result, v5, v6);
  }

  qword_1EBA54280 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class sub_1B7BC00B8(uint64_t a1, const char *a2, uint64_t a3)
{
  sub_1B7BBFE48(a1, a2, a3);
  result = objc_getClass("LPiTunesMediaPodcastEpisodeMetadata");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_1B7CFAB3C(result, v5, v6);
  }

  qword_1EBA54288 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class sub_1B7BC0110(uint64_t a1, const char *a2, uint64_t a3)
{
  sub_1B7BBFE48(a1, a2, a3);
  result = objc_getClass("LPiTunesMediaPodcastMetadata");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_1B7CFABB8(result, v5, v6);
  }

  qword_1EBA54290 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class sub_1B7BC0168(uint64_t a1, const char *a2, uint64_t a3)
{
  sub_1B7BBFE48(a1, a2, a3);
  result = objc_getClass("LPiTunesMediaTVEpisodeMetadata");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_1B7CFAC34(result, v5, v6);
  }

  qword_1EBA54298 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class sub_1B7BC01C0(uint64_t a1, const char *a2, uint64_t a3)
{
  sub_1B7BBFE48(a1, a2, a3);
  result = objc_getClass("LPiTunesMediaTVSeasonMetadata");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_1B7CFACB0(result, v5, v6);
  }

  qword_1EBA542A0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class sub_1B7BC0218(uint64_t a1, const char *a2, uint64_t a3)
{
  sub_1B7BBFE48(a1, a2, a3);
  result = objc_getClass("LPiTunesMediaPlaylistMetadata");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_1B7CFAD2C(result, v5, v6);
  }

  qword_1EBA542A8 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class sub_1B7BC0270(uint64_t a1, const char *a2, uint64_t a3)
{
  sub_1B7BBFE48(a1, a2, a3);
  result = objc_getClass("LPiTunesMediaMovieMetadata");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_1B7CFADA8(result, v5, v6);
  }

  qword_1EBA542B0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class sub_1B7BC02C8(uint64_t a1, const char *a2, uint64_t a3)
{
  sub_1B7BBFE48(a1, a2, a3);
  result = objc_getClass("LPiTunesMediaMovieBundleMetadata");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_1B7CFAE24(result, v5, v6);
  }

  qword_1EBA542B8 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class sub_1B7BC0320(uint64_t a1, const char *a2, uint64_t a3)
{
  sub_1B7BBFE48(a1, a2, a3);
  result = objc_getClass("LPiTunesMediaRadioMetadata");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_1B7CFAEA0(result, v5, v6);
  }

  qword_1EBA542C0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class sub_1B7BC0378(uint64_t a1, const char *a2, uint64_t a3)
{
  sub_1B7BBFE48(a1, a2, a3);
  result = objc_getClass("LPAppleTVMetadata");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_1B7CFAF1C(result, v5, v6);
  }

  qword_1EBA542C8 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class sub_1B7BC03D0(uint64_t a1, const char *a2, uint64_t a3)
{
  sub_1B7BBFE48(a1, a2, a3);
  result = objc_getClass("LPAppleNewsMetadata");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_1B7CFAF98(result, v5, v6);
  }

  qword_1EBA542D0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class sub_1B7BC0428(uint64_t a1, const char *a2, uint64_t a3)
{
  sub_1B7BBFE48(a1, a2, a3);
  result = objc_getClass("LPMapMetadata");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_1B7CFB014(result, v5, v6);
  }

  qword_1EBA542D8 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class sub_1B7BC0480(uint64_t a1, const char *a2, uint64_t a3)
{
  sub_1B7BBFE48(a1, a2, a3);
  result = objc_getClass("LPLinkMetadataPresentationTransformer");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_1B7CFB090(result, v5, v6);
  }

  qword_1EBA542E0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_1B7BC1284(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, id location, int a28, __int16 a29, uint64_t a30)
{
  if (a2 == 1)
  {
    objc_begin_catch(exception_object);
    objc_end_catch();
    JUMPOUT(0x1B7BC1214);
  }

  _Unwind_Resume(exception_object);
}

void sub_1B7BC1404(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  objc_msgSend_stopMainTimerAndLogAfterFailure(WeakRetained, v3, v4);

  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v8 = objc_msgSend_messageGUID(*(a1 + 32), v6, v7);
      v9 = 138412290;
      v10 = v8;
      _os_log_impl(&dword_1B7AD5000, v5, OS_LOG_TYPE_INFO, "Timed out indexing %@, likely have a hung thread, exiting!", &v9, 0xCu);
    }
  }

  exit(1);
}

uint64_t sub_1B7BC1A24(void *a1)
{
  v1 = a1;
  if (IMDSpotlightIndexingUsesPartialIndexersForIndexingContext(v1, v2, v3))
  {
    v6 = 1;
  }

  else
  {
    v6 = IMDSpotlightIndexingIncludesTextContentForIndexingContext(v1, v4, v5) ^ 1;
  }

  return v6;
}

void sub_1B7BC3238(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v8 = a3;
  objc_msgSend_addObjectsFromArray_(v5, v6, a2);
  objc_msgSend_addObjectsFromArray_(*(a1 + 40), v7, v8);
}

void sub_1B7BC35F4(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v5 = IMDIndexingErrorRequestWasDeferred(v3);
    v6 = IMLogHandleForCategory();
    v7 = v6;
    if (v5)
    {
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        v10 = objc_msgSend_messageGUIDs(*(a1 + 32), v8, v9);
        v21 = 134217984;
        v22 = objc_msgSend_count(v10, v11, v12);
        v13 = "%ld messages scheduled for indexing";
LABEL_7:
        _os_log_impl(&dword_1B7AD5000, v7, OS_LOG_TYPE_INFO, v13, &v21, 0xCu);
      }
    }

    else if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CFB10C(a1, v4, v7);
    }
  }

  else
  {
    v7 = IMLogHandleForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v10 = objc_msgSend_messageGUIDs(*(a1 + 32), v14, v15);
      v21 = 134217984;
      v22 = objc_msgSend_count(v10, v16, v17);
      v13 = "Finished index %ld messages due to selective reindexing request";
      goto LABEL_7;
    }
  }

  objc_msgSend__leaveGroup(*(a1 + 32), v18, v19);
  v20 = *MEMORY[0x1E69E9840];
}

void sub_1B7BC3900(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v5 = IMDIndexingErrorRequestWasDeferred(v3);
    v6 = IMLogHandleForCategory();
    v7 = v6;
    if (v5)
    {
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        v10 = objc_msgSend_chatGUIDs(*(a1 + 32), v8, v9);
        v21 = 134217984;
        v22 = objc_msgSend_count(v10, v11, v12);
        v13 = "%ld chats scheduled for indexing";
LABEL_7:
        _os_log_impl(&dword_1B7AD5000, v7, OS_LOG_TYPE_INFO, v13, &v21, 0xCu);
      }
    }

    else if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CFB1A4(a1, v4, v7);
    }
  }

  else
  {
    v7 = IMLogHandleForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v10 = objc_msgSend_chatGUIDs(*(a1 + 32), v14, v15);
      v21 = 134217984;
      v22 = objc_msgSend_count(v10, v16, v17);
      v13 = "Finished index %ld chats due to selective reindexing request";
      goto LABEL_7;
    }
  }

  objc_msgSend__leaveGroup(*(a1 + 32), v18, v19);
  v20 = *MEMORY[0x1E69E9840];
}

void sub_1B7BC69E0()
{
  v0 = objc_alloc_init(IMDSpotlightQueryProvider);
  v1 = qword_1EBA53A48;
  qword_1EBA53A48 = v0;
}

void sub_1B7BC6CB0(void *a1, void *a2, void *a3)
{
  v38 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v9 = objc_msgSend_domain(v6, v7, v8);
  if (objc_msgSend_isEqualToString_(v9, v10, *MEMORY[0x1E6963AD8]))
  {
    v13 = objc_msgSend_code(v6, v11, v12);

    if (v13 == -1003)
    {
      if (IMOSLoggingEnabled())
      {
        v16 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
        {
          v17 = a1[6];
          *buf = 134218498;
          v33 = v17;
          v34 = 1024;
          v35 = 5;
          v36 = 2112;
          v37 = v6;
          _os_log_impl(&dword_1B7AD5000, v16, OS_LOG_TYPE_INFO, "Error getting client state (attempt %lld/%d): %@", buf, 0x1Cu);
        }
      }

      v18 = dispatch_time(0, 5000000000);
      v19 = IMDIndexingClientRequestQueue();
      v28[0] = MEMORY[0x1E69E9820];
      v28[1] = 3221225472;
      v28[2] = sub_1B7BC6FC4;
      v28[3] = &unk_1E7CBB4B0;
      v28[4] = a1[4];
      v20 = v6;
      v22 = a1[5];
      v21 = a1[6];
      v29 = v20;
      v31 = v21;
      v30 = v22;
      dispatch_after(v18, v19, v28);

      goto LABEL_20;
    }
  }

  else
  {
  }

  v23 = objc_msgSend_length(v5, v14, v15);
  v24 = IMOSLoggingEnabled();
  if (v23)
  {
    if (v24)
    {
      v25 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1B7AD5000, v25, OS_LOG_TYPE_INFO, "Spotlight client state exists", buf, 2u);
      }
    }
  }

  else if (v24)
  {
    v26 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1B7AD5000, v26, OS_LOG_TYPE_INFO, "Spotlight client state is empty!", buf, 2u);
    }
  }

  (*(a1[5] + 16))();
LABEL_20:

  v27 = *MEMORY[0x1E69E9840];
}

uint64_t sub_1B7BC6FC4(void *a1)
{
  v1 = a1[6];
  v2 = a1[7] + 1;
  return MEMORY[0x1EEE66B58](a1[4], sel__validateSpotlightClientStateWithLastError_attempts_completion_, a1[5]);
}

void sub_1B7BC7108(uint64_t a1, const char *a2, uint64_t a3)
{
  v5 = objc_msgSend_sharedManager(IMDSpotlightClientStateManager, a2, a3);
  objc_msgSend__currentClientStateWithCompletion_(v5, v4, *(a1 + 32));
}

void sub_1B7BC71EC(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_sharedManager(IMDSpotlightClientStateManager, a2, a3);
  v15 = 0;
  v6 = objc_msgSend_currentClientStateWithError_(v4, v5, &v15);
  v7 = v15;

  if (!v7)
  {
    objc_msgSend_setIndexRevision_(v6, v8, 0);
    objc_msgSend_setIndexVersion_(v6, v9, 0);
    v12 = objc_msgSend_sharedManager(IMDSpotlightClientStateManager, v10, v11);
    v14 = 0;
    objc_msgSend_saveClientState_withError_(v12, v13, v6, &v14);
    v7 = v14;
  }

  (*(*(a1 + 32) + 16))();
}

void sub_1B7BC74D0(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = objc_msgSend_sharedInstance(MEMORY[0x1E69A60F0], a2, a3);
  isInternalInstall = objc_msgSend_isInternalInstall(v3, v4, v5);

  if (isInternalInstall)
  {
    v7 = objc_alloc_init(IMSpotlightEventNotifier);
    v8 = qword_1EDBE5C30;
    qword_1EDBE5C30 = v7;
  }
}

void sub_1B7BC82E4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = IMDIndexingClientRequestQueue();
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1B7BC83B8;
  block[3] = &unk_1E7CBC2B8;
  v5 = *(a1 + 56);
  v8 = v3;
  v11 = v5;
  v9 = *(a1 + 32);
  v10 = *(a1 + 40);
  v6 = v3;
  dispatch_async(v4, block);
}

void sub_1B7BC83B8(uint64_t a1, const char *a2)
{
  v3 = *(a1 + 32);
  if (v3)
  {
    objc_msgSend_addObject_(*(*(*(a1 + 64) + 8) + 40), a2, v3);
  }

  objc_msgSend_removeObject_(*(a1 + 40), a2, *(a1 + 48));
  v6 = objc_msgSend_group(*(a1 + 56), v4, v5);
  dispatch_group_leave(v6);
}

void sub_1B7BC8428(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = a2;
  v43[2] = *MEMORY[0x1E69E9840];
  v5 = objc_msgSend_timing(*(a1 + 32), a2, a3);
  objc_msgSend_stopTimingForKey_(v5, v6, @"total time for indexing messages");

  if (v3)
  {
    v9 = objc_msgSend_allObjects(*(a1 + 40), v7, v8);
    v11 = objc_msgSend__classNamesOfObjects_(_IMDAggregateMessageIndexingJob, v10, v9);

    v12 = IMLogHandleForCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CFB5BC(v11, v12);
    }

    if (!objc_msgSend_count(*(*(*(a1 + 56) + 8) + 40), v13, v14))
    {
      v15 = *(*(*(a1 + 56) + 8) + 40);
      v17 = objc_alloc(MEMORY[0x1E696ABC0]);
      v18 = *MEMORY[0x1E69A7C30];
      v42[0] = *MEMORY[0x1E696A278];
      v42[1] = @"_IMDIndexingUnfinishedJobs";
      v19 = MEMORY[0x1E695E0F0];
      if (v11)
      {
        v19 = v11;
      }

      v43[0] = @"Indexing timed out.";
      v43[1] = v19;
      v20 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v16, v43, v42, 2);
      v22 = objc_msgSend_initWithDomain_code_userInfo_(v17, v21, v18, 2, v20);
      objc_msgSend_addObject_(v15, v23, v22);
    }
  }

  else if (IMOSLoggingEnabled())
  {
    v26 = OSLogHandleForIMEventCategory();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
    {
      v29 = objc_msgSend_timing(*(a1 + 32), v27, v28);
      *buf = 138412290;
      v41 = v29;
      _os_log_impl(&dword_1B7AD5000, v26, OS_LOG_TYPE_INFO, "Done indexing messages, time: %@", buf, 0xCu);
    }
  }

  if (objc_msgSend_count(*(*(*(a1 + 56) + 8) + 40), v24, v25) < 2)
  {
    v36 = objc_msgSend_firstObject(*(*(*(a1 + 56) + 8) + 40), v30, v31);
  }

  else
  {
    v32 = MEMORY[0x1E696ABC0];
    v33 = *(*(*(a1 + 56) + 8) + 40);
    v38 = *MEMORY[0x1E696A750];
    v39 = v33;
    v34 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v30, &v39, &v38, 1);
    v36 = objc_msgSend_errorWithDomain_code_userInfo_(v32, v35, @"IMDIndexingErrorDomain", 2, v34);
  }

  (*(*(a1 + 48) + 16))();

  v37 = *MEMORY[0x1E69E9840];
}

void sub_1B7BC8A94(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = a2;
  objc_msgSend_setProcessedAnything_(v5, v8, 1);
  v12 = objc_msgSend_job(*(a1 + 32), v9, v10);
  objc_msgSend_processMessageDictionary_chatDictionary_(v12, v11, v7, v6);
}

void sub_1B7BC9584()
{
  v0 = objc_alloc_init(IMDIndexingMessageScrutinyController);
  v1 = qword_1EBA53AB0;
  qword_1EBA53AB0 = v0;
}

void sub_1B7BC97F0()
{
  v2 = dispatch_queue_attr_make_with_autorelease_frequency(MEMORY[0x1E69E96A8], DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v0 = dispatch_queue_create("com.apple.imdpersistence.scrutinyMessagesQueue", v2);
  v1 = qword_1EDBE5BA0;
  qword_1EDBE5BA0 = v0;
}

void sub_1B7BC995C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B7BC9974(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_copy(*(*(a1 + 32) + 8), a2, a3);
  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

void sub_1B7BC9B2C(uint64_t a1, const char *a2)
{
  objc_msgSend_addObject_(*(*(a1 + 32) + 8), a2, *(a1 + 40));
  v5 = objc_msgSend_array(*(*(a1 + 32) + 8), v3, v4);
  IMSetDomainValueForKey();
}

void sub_1B7BC9D0C(uint64_t a1, const char *a2)
{
  v20 = *MEMORY[0x1E69E9840];
  objc_msgSend_removeObject_(*(*(a1 + 32) + 8), a2, *(a1 + 40));
  v5 = objc_msgSend_array(*(*(a1 + 32) + 8), v3, v4);
  v8 = objc_msgSend_count(v5, v6, v7);
  if (v8 < 0xC9)
  {
    v12 = v5;
  }

  else
  {
    v9 = v8;
    if (IMOSLoggingEnabled())
    {
      v11 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v19[0] = 67109120;
        v19[1] = 200;
        _os_log_impl(&dword_1B7AD5000, v11, OS_LOG_TYPE_INFO, "Blocklist size > %d on load, truncating", v19, 8u);
      }
    }

    v12 = objc_msgSend_subarrayWithRange_(v5, v10, v9 - 200, 200);

    v13 = objc_alloc(MEMORY[0x1E695DFA0]);
    v15 = objc_msgSend_initWithArray_(v13, v14, v12);
    v16 = *(a1 + 32);
    v17 = *(v16 + 8);
    *(v16 + 8) = v15;
  }

  IMSetDomainValueForKey();

  v18 = *MEMORY[0x1E69E9840];
}

void sub_1B7BC9F60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1B7BC9F78(void *a1, const char *a2)
{
  result = objc_msgSend_containsObject_(*(a1[4] + 8), a2, a1[5]);
  *(*(a1[6] + 8) + 24) = result;
  return result;
}

void sub_1B7BC9FC8()
{
  v0 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  attr = dispatch_queue_attr_make_with_qos_class(v0, QOS_CLASS_UTILITY, 0);

  v1 = dispatch_queue_create("IMDIndexingClientRequestQueue", attr);
  v2 = qword_1EBA53C10;
  qword_1EBA53C10 = v1;

  dispatch_queue_set_specific(qword_1EBA53C10, "IMDIndexingClientRequestQueue", 1, 0);
}

void sub_1B7BCA494(uint64_t a1, void *a2, void *a3)
{
  v17[2] = *MEMORY[0x1E69E9840];
  v5 = a2;
  v7 = a3;
  if (*(a1 + 48) != 1 || (objc_msgSend_objectForKeyedSubscript_(v5, v6, @"attachments"), v8 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend_count(v8, v9, v10), v8, v11))
  {
    if ((*(*(a1 + 40) + 16))())
    {
      v13 = *(a1 + 32);
      v17[0] = v5;
      v17[1] = v7;
      v14 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v12, v17, 2);
      objc_msgSend_addObject_(v13, v15, v14);
    }
  }

  v16 = *MEMORY[0x1E69E9840];
}

void sub_1B7BCA5DC()
{
  v0 = objc_alloc_init(IMDIndexThrottlingController);
  v1 = qword_1EBA53AB8;
  qword_1EBA53AB8 = v0;
}

void sub_1B7BCA80C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1B7BCA828(uint64_t a1, const char *a2, uint64_t a3)
{
  result = objc_msgSend__isThrottled(*(a1 + 32), a2, a3);
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

void sub_1B7BCA9E8(uint64_t a1, const char *a2, uint64_t a3)
{
  *(*(*(a1 + 48) + 8) + 24) = objc_msgSend__isThrottled(*(a1 + 32), a2, a3);
  v4 = *(a1 + 40);

  dispatch_group_leave(v4);
}

uint64_t sub_1B7BCAA30(uint64_t a1)
{
  v2 = IMLogHandleForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    sub_1B7CFB774(a1, v2);
  }

  v3 = *(*(*(a1 + 40) + 8) + 24);
  return (*(*(a1 + 32) + 16))();
}

void sub_1B7BCB274(uint64_t a1, void *a2, void *a3)
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  objc_msgSend_timeIntervalSinceDate_(v6, v7, *(a1 + 32));
  if (v8 <= 0.0)
  {
    if (IMOSLoggingEnabled())
    {
      v10 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v12 = 138412546;
        v13 = v5;
        v14 = 2112;
        v15 = v6;
        _os_log_impl(&dword_1B7AD5000, v10, OS_LOG_TYPE_INFO, "Throttle for %@ expired at %@", &v12, 0x16u);
      }
    }

    objc_msgSend_addObject_(*(a1 + 40), v9, v5);
  }

  v11 = *MEMORY[0x1E69E9840];
}

void sub_1B7BCC230(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B7BCC264(uint64_t a1, uint64_t a2, void *a3)
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v7 = objc_msgSend_objectForKeyedSubscript_(*(a1 + 32), v6, a2);
  if (v7)
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v8 = v5;
    v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v9, &v16, v20, 16);
    if (v10)
    {
      v12 = v10;
      v13 = *v17;
      do
      {
        v14 = 0;
        do
        {
          if (*v17 != v13)
          {
            objc_enumerationMutation(v8);
          }

          objc_msgSend_setObject_forKeyedSubscript_(*(a1 + 40), v11, v7, *(*(&v16 + 1) + 8 * v14++), v16);
        }

        while (v12 != v14);
        v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v11, &v16, v20, 16);
      }

      while (v12);
    }
  }

  v15 = *MEMORY[0x1E69E9840];
}

void sub_1B7BCC544(uint64_t a1, const char *a2)
{
  v3 = *(a1 + 32);
  v8 = objc_msgSend_arrayByApplyingSelector_(*(a1 + 40), a2, sel_guid);
  v5 = objc_msgSend__loadChatDictionariesForMessagesWithGUIDs_(v3, v4, v8);
  v6 = *(*(a1 + 48) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

void sub_1B7BCC5BC(uint64_t a1)
{
  v29 = *MEMORY[0x1E69E9840];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v2 = *(a1 + 32);
  v4 = objc_msgSend_countByEnumeratingWithState_objects_count_(v2, v3, &v23, v28, 16);
  if (v4)
  {
    v7 = v4;
    v8 = *v24;
    do
    {
      v9 = 0;
      do
      {
        if (*v24 != v8)
        {
          objc_enumerationMutation(v2);
        }

        v10 = *(*(&v23 + 1) + 8 * v9);
        if (!objc_msgSend_requiresAttachments(*(a1 + 40), v5, v6, v23) || objc_msgSend_cacheHasAttachments(v10, v5, v6))
        {
          v11 = *(*(*(a1 + 48) + 8) + 40);
          v12 = objc_msgSend_guid(v10, v5, v6);
          v14 = objc_msgSend_objectForKeyedSubscript_(v11, v13, v12);

          if (v14)
          {
            v17 = objc_msgSend_indexableDictionaries(*(a1 + 40), v15, v16);
            v18 = IMCopyIndexableItemDictionaryForRecord(v10);
            v27[0] = v18;
            v27[1] = v14;
            v20 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v19, v27, 2);
            objc_msgSend_addObject_(v17, v21, v20);
          }
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v2, v5, &v23, v28, 16);
    }

    while (v7);
  }

  v22 = *MEMORY[0x1E69E9840];
}

void sub_1B7BCCA2C(uint64_t a1)
{
  v5 = (*(*(a1 + 40) + 16))();
  if (objc_msgSend_count(v5, v2, v3))
  {
    objc_msgSend_addObjectsFromArray_(*(a1 + 32), v4, v5);
  }
}

void sub_1B7BCCB70()
{
  v0 = objc_alloc(MEMORY[0x1E695E000]);
  v2 = objc_msgSend_initWithSuiteName_(v0, v1, @"com.apple.IMCoreSpotlight");
  v3 = qword_1EDBE5E90;
  qword_1EDBE5E90 = v2;
}

BOOL IMDIndexingErrorRequestWasDeferred(void *a1)
{
  v1 = a1;
  v4 = objc_msgSend_domain(v1, v2, v3);
  isEqualToString = objc_msgSend_isEqualToString_(v4, v5, @"IMDIndexingErrorDomain");

  if (isEqualToString)
  {
    v9 = ((objc_msgSend_code(v1, v7, v8) - 3) & 0xFFFFFFFFFFFFFFFDLL) == 0;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

void sub_1B7BCD548()
{
  v0 = objc_alloc_init(IMDIndexingController);
  v1 = qword_1EBA53AC0;
  qword_1EBA53AC0 = v0;
}

void sub_1B7BCDA8C(uint64_t a1, void *a2)
{
  v5 = a2;
  if (v5)
  {
    objc_msgSend__deferGUIDs_forFlag_context_(*(a1 + 32), v3, *(a1 + 40), *(a1 + 64), *(a1 + 48));
    objc_msgSend__beginThrottlingDueToIndexError_(*(a1 + 32), v4, v5);
  }

  (*(*(a1 + 56) + 16))();
}

void sub_1B7BCDED0(_Unwind_Exception *exception_object, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(exception_object);
    objc_end_catch();
    JUMPOUT(0x1B7BCDC04);
  }

  _Unwind_Resume(exception_object);
}

void sub_1B7BCDF1C()
{
  v0 = dispatch_queue_create("com.apple.IMDPersistence.IMDIndexingController.IntegrationResolution", 0);
  v1 = qword_1EBA542F0;
  qword_1EBA542F0 = v0;
}

void sub_1B7BCDF5C(uint64_t a1)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = sub_1B7BCDFF8;
  v3[3] = &unk_1E7CBB600;
  v1 = *(a1 + 48);
  v5 = *(a1 + 56);
  v2 = *(a1 + 32);
  v4 = *(a1 + 40);
  (*(v1 + 16))(v1, v2, v3);
}

void sub_1B7BCDFF8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = qword_1EBA542F0;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1B7BCE0C0;
  block[3] = &unk_1E7CBC4B0;
  v9 = v3;
  v7 = *(a1 + 32);
  v5 = v7;
  v10 = v7;
  v6 = v3;
  dispatch_async(v4, block);
}

void sub_1B7BCE0C0(void *a1, const char *a2)
{
  v3 = a1[4];
  if (v3)
  {
    v4 = *(*(a1[6] + 8) + 40);
    if (!v4)
    {
      v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v6 = *(a1[6] + 8);
      v7 = *(v6 + 40);
      *(v6 + 40) = v5;

      v4 = *(*(a1[6] + 8) + 40);
      v3 = a1[4];
    }

    objc_msgSend_addObject_(v4, a2, v3);
  }

  v8 = a1[5];

  dispatch_group_leave(v8);
}

void sub_1B7BCE140(uint64_t a1, const char *a2, uint64_t a3)
{
  v13[1] = *MEMORY[0x1E69E9840];
  if (objc_msgSend_count(*(*(*(a1 + 40) + 8) + 40), a2, a3) < 2)
  {
    v10 = objc_msgSend_firstObject(*(*(*(a1 + 40) + 8) + 40), v4, v5);
  }

  else
  {
    v6 = MEMORY[0x1E696ABC0];
    v7 = *(*(*(a1 + 40) + 8) + 40);
    v12 = *MEMORY[0x1E696A750];
    v13[0] = v7;
    v8 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v4, v13, &v12, 1);
    v10 = objc_msgSend_errorWithDomain_code_userInfo_(v6, v9, @"IMDIndexingErrorDomain", 2, v8);
  }

  (*(*(a1 + 32) + 16))();

  v11 = *MEMORY[0x1E69E9840];
}

void sub_1B7BCE3BC(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = a3;
  v11 = a2;
  v9 = objc_msgSend_reason(v5, v7, v8);
  objc_msgSend_deleteAttachmentGUIDs_reason_completionHandler_(v11, v10, v4, v9, v6);
}

void sub_1B7BCE5E0(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = a3;
  v11 = a2;
  v9 = objc_msgSend_reason(v5, v7, v8);
  objc_msgSend_deleteMessageGUIDs_reason_completionHandler_(v11, v10, v4, v9, v6);
}

void sub_1B7BCE764(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = a3;
  v11 = a2;
  v9 = objc_msgSend_reason(v5, v7, v8);
  objc_msgSend_deleteChatGUIDs_reason_completionHandler_(v11, v10, v4, v9, v6);
}

void sub_1B7BCEEB0(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x1B7BCECD0);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1B7BCEF00(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  if (objc_msgSend_isReindexing(*(a1 + 48), a2, a3))
  {
    v7 = 2;
  }

  else
  {
    v7 = 1;
  }

  v8 = *(a1 + 48);

  return objc_msgSend__deferGUIDs_forFlag_context_(v4, v6, v5, v7, v8);
}

void sub_1B7BCEF5C(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = IMLogHandleForCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CFB9DC(a1, v3, v4);
    }

    (*(*(a1 + 48) + 16))();
    objc_msgSend__beginThrottlingDueToIndexError_(*(a1 + 40), v5, v3);
  }

  v6 = *(a1 + 56);
  if (v6)
  {
    (*(v6 + 16))(v6, v3);
  }
}

uint64_t sub_1B7BCF134(void *a1)
{
  v1 = a1[6];
  v2 = a1[7];
  return MEMORY[0x1EEE66B58](a1[4], sel__indexMessageGUIDs_context_completionHandler_, a1[5]);
}

void sub_1B7BCF284(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v7 = *(a1 + 32);
  v6 = *(a1 + 40);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = sub_1B7BCF330;
  v10[3] = &unk_1E7CBB328;
  v11 = v5;
  v8 = v5;
  objc_msgSend_addChatGUIDs_context_completionHandler_(a2, v9, v7, v6, v10);
}

uint64_t sub_1B7BCF340(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_1B7BCF728(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  v10 = a2;
  v8 = objc_msgSend_reason(v4, v6, v7);
  objc_msgSend_prepareForReindexingWithReason_completion_(v10, v9, v8, v5);
}

void sub_1B7BCF79C(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = IMLogHandleForCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CFBA7C(v3, v4);
    }
  }

  v5 = [IMDPersistentTaskQueryProvider alloc];
  v7 = objc_msgSend_initWithBlockingDatabaseCalls_(v5, v6, 0);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = sub_1B7BCF894;
  v10[3] = &unk_1E7CB67C0;
  v8 = *(a1 + 32);
  v11 = *(a1 + 40);
  objc_msgSend_scheduleFullReindexWithContext_completionBlock_(v7, v9, v8, v10);
}

void sub_1B7BCF8A8(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  v10 = a2;
  v8 = objc_msgSend_reason(v4, v6, v7);
  objc_msgSend_setNeedsMessageReindexingWithReason_completion_(v10, v9, v8, v5);
}

void sub_1B7BCF91C(uint64_t a1, void *a2)
{
  v12 = a2;
  v5 = objc_msgSend_userInfo(v12, v3, v4);
  v7 = objc_msgSend_objectForKeyedSubscript_(v5, v6, @"IMDIndexingErrorFailedMessageGUIDs");

  if (objc_msgSend_count(v7, v8, v9))
  {
    objc_msgSend__deferGUIDs_forFlag_context_(*(a1 + 32), v10, v7, 2, *(a1 + 40));
  }

  v11 = *(a1 + 48);
  if (v11)
  {
    (*(v11 + 16))(v11, v12);
  }
}

void sub_1B7BCFB14(void *a1, void *a2)
{
  v16 = a2;
  v5 = objc_msgSend_userInfo(v16, v3, v4);
  v7 = objc_msgSend_objectForKeyedSubscript_(v5, v6, @"IMDIndexingErrorFailedMessageGUIDs");

  if (objc_msgSend_count(v7, v8, v9))
  {
    v10 = a1[4];
    v11 = [IMDIndexingContext alloc];
    v13 = objc_msgSend_initForReindexing_reason_(v11, v12, 1, a1[6]);
    objc_msgSend__deferGUIDs_forFlag_context_(v10, v14, v7, 2, v13);
  }

  v15 = a1[5];
  if (v15)
  {
    (*(v15 + 16))(v15, v16);
  }
}

void sub_1B7BCFEB8(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v8 = *(a1 + 48);
  v9 = *(a1 + 56);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = sub_1B7BCFF7C;
  v12[3] = &unk_1E7CBC608;
  v13 = v5;
  v10 = v5;
  objc_msgSend_markAttachmentWithFilePath_sender_recipients_isIncoming_completionHandler_(a2, v11, v6, v7, v8, v9, v12);
}

void sub_1B7BCFF7C(uint64_t a1, const char *a2)
{
  v2 = *(a1 + 32);
  if (a2)
  {
    v3 = *(v2 + 16);
    v4 = *(a1 + 32);

    v3(v4, 0);
  }

  else
  {
    v5 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x1E696ABC0], a2, *MEMORY[0x1E696A798], 0, 0);
    (*(v2 + 16))(v2, v5);
  }
}

uint64_t sub_1B7BD002C(uint64_t a1, const char *a2, uint64_t a3)
{
  objc_msgSend_stopAccessingSecurityScopedResource(*(a1 + 32), a2, a3);
  v4 = *(*(a1 + 40) + 16);

  return v4();
}

void sub_1B7BD0124(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v44 = *MEMORY[0x1E69E9840];
  v36 = 0;
  v37 = &v36;
  v38 = 0x3032000000;
  v39 = sub_1B7AE1B20;
  v40 = sub_1B7AE2598;
  v41 = 0;
  v30 = 0;
  v31 = &v30;
  v32 = 0x3032000000;
  v33 = sub_1B7AE1B20;
  v34 = sub_1B7AE2598;
  v35 = 0;
  v26 = 0;
  v27 = &v26;
  v28 = 0x2020000000;
  v29 = 0;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1B7BD04CC;
  block[3] = &unk_1E7CBC658;
  v4 = *(a1 + 48);
  block[4] = &v26;
  block[5] = &v36;
  block[6] = &v30;
  block[7] = v4;
  IMDPersistencePerformBlock(block, 1, a3);
  if (*(v27 + 24) != 1)
  {
    goto LABEL_17;
  }

  v7 = v37[5];
  if (v7 && objc_msgSend_count(v7, v5, v6))
  {
    if (IMOSLoggingEnabled())
    {
      v8 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v11 = objc_msgSend_count(v37[5], v9, v10);
        *buf = 134217984;
        v43 = v11;
        _os_log_impl(&dword_1B7AD5000, v8, OS_LOG_TYPE_INFO, "Found %ld messages guids to withdraw", buf, 0xCu);
      }
    }

    v12 = *(a1 + 32);
    v13 = v37[5];
    v14 = [IMDIndexingContext alloc];
    v16 = objc_msgSend_initForReindexing_reason_(v14, v15, 0, *(a1 + 56));
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = sub_1B7BD054C;
    v23[3] = &unk_1E7CBB328;
    v24 = *(a1 + 40);
    objc_msgSend_deleteMessageGUIDs_context_completionHandler_(v12, v17, v13, v16, v23);

    v18 = 1;
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v19 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1B7AD5000, v19, OS_LOG_TYPE_INFO, "Found 0 messages guids to withdraw", buf, 2u);
      }
    }

    v18 = 0;
  }

  v20 = v37[5];
  if (v20)
  {
  }

  if ((v18 & 1) == 0)
  {
LABEL_17:
    v21 = v31[5];
    (*(*(a1 + 40) + 16))();
  }

  _Block_object_dispose(&v26, 8);
  _Block_object_dispose(&v30, 8);

  _Block_object_dispose(&v36, 8);
  v22 = *MEMORY[0x1E69E9840];
}

void sub_1B7BD0458(_Unwind_Exception *exc_buf, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  if (a2 == 1)
  {
    objc_begin_catch(exc_buf);
    objc_end_catch();
    JUMPOUT(0x1B7BD02CCLL);
  }

  _Block_object_dispose(&a23, 8);
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose((v27 - 144), 8);
  _Unwind_Resume(exc_buf);
}

void sub_1B7BD04CC(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  v5 = *(a1 + 56);
  v6 = *(v2 + 8);
  v8 = *(v6 + 40);
  obj = v4;
  v7 = IMDMessageRecordDeleteBatchOfDeletedMessageGuids(v5, &obj, &v8);
  objc_storeStrong((v3 + 40), obj);
  objc_storeStrong((v6 + 40), v8);
  *(*(*(a1 + 32) + 8) + 24) = v7;
}

uint64_t sub_1B7BD0670(uint64_t result, const char *a2)
{
  if (a2)
  {
    return objc_msgSend_scheduleUpdateForDeletedMessagesWithReason_(*(result + 32), a2, *(result + 40));
  }

  return result;
}

void sub_1B7BD07D0(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = sub_1B7BD08B8;
  v11[3] = &unk_1E7CBC6D0;
  v14 = v6;
  v7 = *(a1 + 40);
  v12 = *(a1 + 32);
  v13 = v5;
  v8 = *(v7 + 16);
  v9 = v5;
  v10 = v6;
  v8(v7, v9, v11);
}

void sub_1B7BD08B8(id *a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (a3)
  {
    (*(a1[6] + 2))();
  }

  else
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = sub_1B7BD09AC;
    v6[3] = &unk_1E7CB70F8;
    v7 = a1[4];
    v8 = a1[5];
    v9 = v5;
    v10 = a1[6];
    IMDIndexingClientRequest(v6);
  }
}

uint64_t sub_1B7BD09AC(void *a1, const char *a2, uint64_t a3)
{
  v4 = a1[6];
  v5 = v4;
  if (!v4)
  {
    v5 = objc_msgSend_set(MEMORY[0x1E695DFD8], a2, a3);
  }

  v7 = a1[4];
  v6 = a1[5];
  v8 = objc_opt_class();
  v9 = NSStringFromClass(v8);
  objc_msgSend_setObject_forKeyedSubscript_(v7, v10, v5, v9);

  if (!v4)
  {
  }

  v11 = *(a1[7] + 16);

  return v11();
}

void sub_1B7BD0A4C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = a2;
  v7 = objc_msgSend_copy(v3, v5, v6);
  (*(v2 + 16))(v2, v7, v4);
}

void sub_1B7BD0DA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1B7BD0DC0(uint64_t a1)
{
  result = IMDMessageRecordMaxMessageIDFromChatMessageJoin();
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

void sub_1B7BD0E98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B7BD0EB0(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_synchronousDatabase(IMDDatabase, a2, a3);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = sub_1B7BD0F48;
  v6[3] = &unk_1E7CB6B98;
  v6[4] = *(a1 + 32);
  objc_msgSend_fetchCountOfRecordType_completionHandler_(v4, v5, 0, v6);
}

void sub_1B7BD1000(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B7BD1018(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_synchronousDatabase(IMDDatabase, a2, a3);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = sub_1B7BD10B0;
  v6[3] = &unk_1E7CB6B98;
  v6[4] = *(a1 + 32);
  objc_msgSend_fetchCountOfRecordType_completionHandler_(v4, v5, 1, v6);
}

void sub_1B7BD1338(uint64_t a1)
{
  v2 = [IMDIndexingContext alloc];
  v4 = objc_msgSend_initForReindexing_reason_(v2, v3, 1, 1004);
  objc_msgSend_setPreflight_(v4, v5, 1);
  v6 = *(a1 + 56);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = sub_1B7BD1420;
  v13[3] = &unk_1E7CBBDB8;
  v7 = *(a1 + 32);
  v10 = a1 + 40;
  v8 = *(a1 + 40);
  v9 = *(v10 + 8);
  v13[4] = v7;
  v14 = v4;
  v15 = v6;
  v11 = v4;
  objc_msgSend_copyIndexableMessageDictionariesWithLimit_requireIndexableAttachments_isIndexableBlock_completionHandler_(IMDIndexingUtilities, v12, v9, v6, v13, v8);
}

uint64_t sub_1B7BD1420(uint64_t a1, void *a2, void *a3)
{
  v31 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v9 = objc_msgSend_integrations(*(a1 + 32), v7, v8, 0);
  v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v10, &v26, v30, 16);
  if (v11)
  {
    v12 = v11;
    v13 = *v27;
    v14 = &selRef_delegate;
    while (2)
    {
      v15 = 0;
      v16 = v14[294];
      do
      {
        if (*v27 != v13)
        {
          objc_enumerationMutation(v9);
        }

        v17 = *(*(&v26 + 1) + 8 * v15);
        if (objc_opt_respondsToSelector())
        {
          v19 = objc_msgSend_indexableIdentifiersForMessageDict_chatDictionary_context_requireIndexableAttachments_(v17, v18, v5, v6, *(a1 + 40), *(a1 + 48));
          v22 = objc_msgSend_count(v19, v20, v21);

          if (v22)
          {
            v23 = 1;
            goto LABEL_12;
          }
        }

        ++v15;
      }

      while (v12 != v15);
      v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v18, &v26, v30, 16);
      v14 = &selRef_delegate;
      if (v12)
      {
        continue;
      }

      break;
    }
  }

  v23 = 0;
LABEL_12:

  v24 = *MEMORY[0x1E69E9840];
  return v23;
}

void sub_1B7BD167C(uint64_t a1)
{
  v2 = [IMDIndexingContext alloc];
  v4 = objc_msgSend_initForReindexing_reason_(v2, v3, 1, 1004);
  objc_msgSend_setPreflight_(v4, v5, 1);
  objc_msgSend_setIgnoreRejections_(v4, v6, *(a1 + 56));
  v7 = [IMDThreadSafeMessageDictionaryMapper alloc];
  v8 = *(a1 + 32);
  v9 = objc_alloc_init(MEMORY[0x1E69A6170]);
  v11 = objc_msgSend_initForFetchingMessageGUIDs_timingCollection_(v7, v10, v8, v9);

  v12 = objc_alloc_init(MEMORY[0x1E695DF90]);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = sub_1B7BD1844;
  aBlock[3] = &unk_1E7CBBE08;
  v30 = v12;
  v13 = v12;
  v14 = _Block_copy(aBlock);
  v22 = MEMORY[0x1E69E9820];
  v23 = 3221225472;
  v24 = sub_1B7BD18E8;
  v25 = &unk_1E7CBC748;
  v26 = *(a1 + 40);
  v27 = v4;
  v28 = v14;
  v15 = v14;
  v16 = v4;
  objc_msgSend_processWithBlock_(v11, v17, &v22);
  v18 = *(a1 + 48);
  v21 = objc_msgSend_copy(v13, v19, v20, v22, v23, v24, v25, v26);
  (*(v18 + 16))(v18, v21, 0);
}

void sub_1B7BD1844(uint64_t a1, void *a2, void *a3)
{
  v10 = a2;
  v5 = a3;
  v8 = objc_msgSend_objectForKeyedSubscript_(*(a1 + 32), v6, v10);
  if (!v8)
  {
    v8 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    objc_msgSend_setObject_forKeyedSubscript_(*(a1 + 32), v9, v8, v10);
  }

  objc_msgSend_addObjectsFromArray_(v8, v7, v5);
}

void sub_1B7BD18E8(uint64_t a1, void *a2, void *a3)
{
  v27 = *MEMORY[0x1E69E9840];
  v21 = a2;
  v5 = a3;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v8 = objc_msgSend_integrations(*(a1 + 32), v6, v7);
  v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v9, &v22, v26, 16);
  if (v10)
  {
    v11 = v10;
    v12 = *v23;
    do
    {
      v13 = 0;
      do
      {
        if (*v23 != v12)
        {
          objc_enumerationMutation(v8);
        }

        v14 = *(*(&v22 + 1) + 8 * v13);
        if (objc_opt_respondsToSelector())
        {
          v16 = objc_msgSend_indexableIdentifiersForMessageDict_chatDictionary_context_requireIndexableAttachments_(v14, v15, v21, v5, *(a1 + 40), 0);
          v17 = *(a1 + 48);
          v18 = objc_opt_class();
          v19 = NSStringFromClass(v18);
          (*(v17 + 16))(v17, v19, v16);
        }

        ++v13;
      }

      while (v11 != v13);
      v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v15, &v22, v26, 16);
    }

    while (v11);
  }

  v20 = *MEMORY[0x1E69E9840];
}

uint64_t IMDAttachmentRecordDeleteUsingPredicateQuery(uint64_t a1, const char *a2)
{
  if (a1)
  {
    v2 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, @"WHERE %@", a1);
  }

  else
  {
    v2 = &stru_1F2FA9728;
  }

  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v5 = objc_msgSend_initWithFormat_(v3, v4, @"%s%@", "DELETE FROM attachment ", v2);

  return v5;
}

uint64_t IMDAttachmentRecordCopyFilteredUsingPredicateWithLimitQuery(uint64_t a1, const char *a2)
{
  if (a1)
  {
    v2 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, @"WHERE %@", a1);
  }

  else
  {
    v2 = &stru_1F2FA9728;
  }

  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v5 = objc_msgSend_initWithFormat_(v3, v4, @"%s%@", "SELECT ROWID, guid, created_date, start_date, filename, uti, mime_type, transfer_state, is_outgoing, user_info, transfer_name, total_bytes, is_sticker, sticker_user_info, attribution_info, hide_attachment, ck_sync_state, ck_server_change_token_blob, ck_record_id, original_guid, is_commsafety_sensitive, emoji_image_content_identifier, emoji_image_short_description, preview_generation_state FROM attachment ", v2);

  return v5;
}

uint64_t IMDAttachmentRecordCopySortedAttachmentsFilteredUsingPredicateWithLimitQuery(void *a1, void *a2)
{
  v3 = a1;
  v6 = a2;
  if (v3)
  {
    v7 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v4, @"WHERE %@", v3);
  }

  else
  {
    v7 = &stru_1F2FA9728;
  }

  if (objc_msgSend_count(v6, v4, v5))
  {
    v9 = objc_msgSend_componentsJoinedByString_(v6, v8, @", ");
    v11 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v10, @"ORDER BY %@ ", v9);
  }

  else
  {
    v11 = &stru_1F2FA9728;
  }

  v12 = objc_alloc(MEMORY[0x1E696AEC0]);
  v14 = objc_msgSend_initWithFormat_(v12, v13, @"%@ %@ %@ LIMIT ?", @"SELECT ROWID, guid, created_date, start_date, filename, uti, mime_type, transfer_state, is_outgoing, user_info, transfer_name, total_bytes, is_sticker, sticker_user_info, attribution_info, hide_attachment, ck_sync_state, ck_server_change_token_blob, ck_record_id, original_guid, is_commsafety_sensitive, emoji_image_content_identifier, emoji_image_short_description, preview_generation_state FROM attachment ", v7, v11);

  return v14;
}

void sub_1B7BD1F0C(sqlite3_context *a1, int a2, sqlite3_value **a3)
{
  if (a2 == 1)
  {
    v4 = (sqlite3_value_int(*a3) & 0x403) != 0;

    sqlite3_result_int(a1, v4);
  }

  else
  {

    sqlite3_result_error(a1, "wrong number of arguments", -1);
  }
}

uint64_t sub_1B7BD1F88(uint64_t a1, const char *a2, uint64_t a3, void *a4)
{
  v23 = *MEMORY[0x1E69E9840];
  if (objc_msgSend_length(a4, a2, a3))
  {
    v7 = CSDBSqliteConnectionPerformSQL();
    if (v7)
    {
      v8 = v7 == 101;
    }

    else
    {
      v8 = 1;
    }

    v9 = v8;
    if (v7 && (v10 = v7, v7 != 101))
    {
      v13 = IMLogHandleForCategory();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v16 = sqlite3_errmsg(*(a1 + 8));
        v17 = 138412802;
        v18 = a2;
        v19 = 1024;
        v20 = v10;
        v21 = 2080;
        v22 = v16;
        _os_log_error_impl(&dword_1B7AD5000, v13, OS_LOG_TYPE_ERROR, "%@ SQLiteResult: %d SQLite Message: %s", &v17, 0x1Cu);
      }
    }

    else
    {
      v11 = IMLogHandleForCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v17 = 138412290;
        v18 = a3;
        _os_log_impl(&dword_1B7AD5000, v11, OS_LOG_TYPE_INFO, "%@", &v17, 0xCu);
      }
    }
  }

  else
  {
    v12 = IMLogHandleForCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CFBAF4(v12);
    }

    v9 = 1;
  }

  v14 = *MEMORY[0x1E69E9840];
  return v9;
}

uint64_t sub_1B7BD212C(uint64_t a1)
{
  v2 = IMLogHandleForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v10 = 0;
    _os_log_impl(&dword_1B7AD5000, v2, OS_LOG_TYPE_INFO, "Updating madrid indices.", v10, 2u);
  }

  v3 = sub_1B7BD1F88(a1, @"Failed to create index madrid_handle_index.", @"Created index madrid_handle_index.", @"CREATE INDEX madrid_handle_index ON message(madrid_handle);");
  v4 = v3 & sub_1B7BD1F88(a1, @"Failed to create index madrid_guid_index.", @"Created index madrid_guid_index.", @"CREATE INDEX madrid_guid_index ON message(madrid_guid);");
  v5 = sub_1B7BD1F88(a1, @"Failed to create index madrid_roomname_index.", @"Created index madrid_roomname_index.", @"CREATE INDEX madrid_roomname_index ON message(madrid_roomname);");
  v6 = v4 & v5 & sub_1B7BD1F88(a1, @"Failed to create index madrid_service_index.", @"Created index madrid_service_index.", @"CREATE INDEX madrid_service_index ON message(madrid_service);");
  v7 = sub_1B7BD1F88(a1, @"Failed to create index madrid_account_index.", @"Created index madrid_account_index.", @"CREATE INDEX madrid_account_index ON message(madrid_account);");
  v8 = v7 & sub_1B7BD1F88(a1, @"Failed to create index madrid_url_index.", @"Created index madrid_url_index.", @"CREATE INDEX madrid_url_index ON message(madrid_url);");
  return v6 & v8 & sub_1B7BD1F88(a1, @"Failed to create index madrid_flags_index.", @"Created index madrid_flags_index.", @"CREATE INDEX madrid_flags_index ON message(madrid_flags);");
}

uint64_t sub_1B7BD22A4(uint64_t a1)
{
  v2 = IMLogHandleForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v11 = 0;
    _os_log_impl(&dword_1B7AD5000, v2, OS_LOG_TYPE_INFO, "Nuking bogus madrid message indices.", v11, 2u);
  }

  v3 = sub_1B7BD1F88(a1, @"Failed to drop index madrid_handle_index.", @"Dropped index madrid_handle_index.", @"DROP INDEX madrid_handle_index;");
  v4 = v3 & sub_1B7BD1F88(a1, @"Failed to drop index madrid_roomname_index.", @"Dropped index madrid_roomname_index.", @"DROP INDEX madrid_roomname_index;");
  v5 = sub_1B7BD1F88(a1, @"Failed to drop index madrid_service_index.", @"Dropped index madrid_service_index.", @"DROP INDEX madrid_service_index;");
  v6 = v4 & v5 & sub_1B7BD1F88(a1, @"Failed to drop index madrid_account_index.", @"Dropped index madrid_account_index.", @"DROP INDEX madrid_account_index;");
  v7 = sub_1B7BD1F88(a1, @"Failed to drop index madrid_url_index.", @"Dropped index madrid_url_index.", @"DROP INDEX madrid_url_index;");
  v8 = v7 & sub_1B7BD1F88(a1, @"Failed to drop index madrid_flags_index.", @"Dropped index madrid_flags_index.", @"DROP INDEX madrid_flags_index;");
  v9 = v6 & v8 & sub_1B7BD1F88(a1, @"Failed to create index madrid_roomname_service_index.", @"Created index madrid_roomname_service_index.", @"CREATE INDEX madrid_roomname_service_index ON message(madrid_roomname, madrid_service);");
  return v9 & sub_1B7BD1F88(a1, @"Failed to create index madrid_handle_service_index.", @"Created index madrid_handle_service_index.", @"CREATE INDEX madrid_handle_service_index ON message(madrid_handle, madrid_service);");
}

uint64_t sub_1B7BD2440(uint64_t a1)
{
  v2 = sub_1B7BD1F88(a1, @"Failed to create index madrid_attachment_message_index.", @"Created index madrid_attachment_message_index.", @"CREATE INDEX IF NOT EXISTS madrid_attachment_message_index ON madrid_attachment(message_id);");
  v3 = v2 & sub_1B7BD1F88(a1, @"Failed to create index madrid_attachment_guid_index.", @"Created index madrid_attachment_guid_index.", @"CREATE INDEX IF NOT EXISTS madrid_attachment_guid_index ON madrid_attachment(attachment_guid);");
  return v3 & sub_1B7BD1F88(a1, @"Failed to create index madrid_attachment_filename_index.", @"Created index madrid_attachment_filename_index.", @"CREATE INDEX IF NOT EXISTS madrid_attachment_filename_index ON madrid_attachment(filename);");
}

uint64_t sub_1B7BD2514(uint64_t a1)
{
  v2 = sub_1B7BD1F88(a1, @"Failed to create madrid_chat table", @"Created madrid_chat table", @"CREATE TABLE madrid_chat (ROWID INTEGER PRIMARY KEY AUTOINCREMENT, style INTEGER, state INTEGER, account_id TEXT, properties BLOB, chat_identifier TEXT, service_name TEXT, guid TEXT, room_name TEXT, account_login TEXT, participants BLOB)");
  v3 = v2 & sub_1B7BD1F88(a1, @"Failed to create index madrid_chat_style_index.", @"Created index madrid_chat_style_index.", @"CREATE INDEX IF NOT EXISTS madrid_chat_style_index ON madrid_chat(style)");
  v4 = sub_1B7BD1F88(a1, @"Failed to create index madrid_chat_state_index.", @"Created index madrid_chat_state_index.", @"CREATE INDEX IF NOT EXISTS madrid_chat_state_index ON madrid_chat(state)");
  v5 = v3 & v4 & sub_1B7BD1F88(a1, @"Failed to create index madrid_chat_account_id_index.", @"Created index madrid_chat_account_id_index.", @"CREATE INDEX IF NOT EXISTS madrid_chat_account_id_index ON madrid_chat(account_id)");
  v6 = sub_1B7BD1F88(a1, @"Failed to create index madrid_chat_chat_identifier_index.", @"Created index madrid_chat_chat_identifier_index.", @"CREATE INDEX IF NOT EXISTS madrid_chat_chat_identifier_index ON madrid_chat(chat_identifier)");
  v7 = v6 & sub_1B7BD1F88(a1, @"Failed to create index madrid_chat_service_name_index.", @"Created index madrid_chat_service_name_index.", @"CREATE INDEX IF NOT EXISTS madrid_chat_service_name_index ON madrid_chat(service_name)");
  v8 = v5 & v7 & sub_1B7BD1F88(a1, @"Failed to create index madrid_chat_guid_index.", @"Created index madrid_chat_guid_index.", @"CREATE INDEX IF NOT EXISTS madrid_chat_guid_index ON madrid_chat(guid)");
  v9 = sub_1B7BD1F88(a1, @"Failed to create index madrid_chat_room_name_index.", @"Created index madrid_chat_room_name_index.", @"CREATE INDEX IF NOT EXISTS madrid_chat_room_name_index ON madrid_chat(room_name)");
  return v8 & v9 & sub_1B7BD1F88(a1, @"Failed to create index madrid_chat_account_login_index.", @"Created index madrid_chat_account_login_index.", @"CREATE INDEX IF NOT EXISTS madrid_chat_account_login_index ON madrid_chat(account_login)");
}

uint64_t sub_1B7BD2688(uint64_t a1, uint64_t a2)
{
  v4 = objc_alloc(MEMORY[0x1E696AEC0]);
  v6 = objc_msgSend_initWithFormat_(v4, v5, @"Failed to drop table: %@", a2);
  v7 = objc_alloc(MEMORY[0x1E696AEC0]);
  v9 = objc_msgSend_initWithFormat_(v7, v8, @"Successfully dropped table: %@", a2);
  v10 = objc_alloc(MEMORY[0x1E696AEC0]);
  v12 = objc_msgSend_initWithFormat_(v10, v11, @"DROP TABLE IF EXISTS %@;", a2);
  v13 = sub_1B7BD1F88(a1, v6, v9, v12);

  return v13;
}

uint64_t sub_1B7BD2744(uint64_t a1, uint64_t a2)
{
  v4 = objc_alloc(MEMORY[0x1E696AEC0]);
  v6 = objc_msgSend_initWithFormat_(v4, v5, @"Failed to drop index: %@", a2);
  v7 = objc_alloc(MEMORY[0x1E696AEC0]);
  v9 = objc_msgSend_initWithFormat_(v7, v8, @"Successfully dropped index: %@", a2);
  v10 = objc_alloc(MEMORY[0x1E696AEC0]);
  v12 = objc_msgSend_initWithFormat_(v10, v11, @"DROP INDEX IF EXISTS %@;", a2);
  v13 = sub_1B7BD1F88(a1, v6, v9, v12);

  return v13;
}

uint64_t sub_1B7BD2800(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = sub_1B7BD2744(a1, a2);
  v7 = objc_alloc(MEMORY[0x1E696AEC0]);
  v9 = objc_msgSend_initWithFormat_(v7, v8, @"Failed to create index: %@", a2);
  v10 = objc_alloc(MEMORY[0x1E696AEC0]);
  v12 = objc_msgSend_initWithFormat_(v10, v11, @"Successfully created index: %@", a2);
  LODWORD(a3) = sub_1B7BD1F88(a1, v9, v12, a3);

  return v6 & a3;
}

uint64_t sub_1B7BD28A8(uint64_t a1)
{
  v2 = sub_1B7BD1F88(a1, @"Failed to add column subject.", @"Added column subject.", @"ALTER TABLE message ADD COLUMN subject TEXT");
  v3 = v2 & sub_1B7BD1F88(a1, @"Failed to add column country.", @"Added column country.", @"ALTER TABLE message ADD COLUMN country TEXT");
  v4 = sub_1B7BD1F88(a1, @"Failed to add column headers.", @"Added column headers.", @"ALTER TABLE message ADD COLUMN headers BLOB");
  v5 = v3 & v4 & sub_1B7BD1F88(a1, @"Failed to add column recipients.", @"Added column recipients.", @"ALTER TABLE message ADD COLUMN recipients BLOB");
  v6 = sub_1B7BD1F88(a1, @"Failed to add column hash.", @"Added column hash.", @"ALTER TABLE msg_group ADD COLUMN hash INTEGER");
  v7 = v6 & sub_1B7BD1F88(a1, @"Failed to add index hash_index.", @"Added index hash_index.", @"CREATE INDEX hash_index ON msg_group(hash)");
  v8 = v5 & v7 & sub_1B7BD1F88(a1, @"Failed to add column country.", @"Added column country.", @"ALTER TABLE group_member ADD COLUMN country TEXT");
  v9 = sub_1B7BD1F88(a1, @"Failed to add column content_id.", @"Added column content_id.", @"ALTER TABLE msg_pieces ADD COLUMN content_id TEXT;");
  v10 = v9 & sub_1B7BD1F88(a1, @"Failed to add column content_loc.", @"Added column content_loc.", @"ALTER TABLE msg_pieces ADD COLUMN content_loc TEXT;");
  return v8 & v10 & sub_1B7BD1F88(a1, @"Failed to add column headers.", @"Added column headers.", @"ALTER TABLE msg_pieces ADD COLUMN headers BLOB;");
}

uint64_t sub_1B7BD2A50(uint64_t a1)
{
  v2 = sub_1B7BD1F88(a1, @"Failed to add column madrid_attributedBody.", @"Added column madrid_attributedBody.", @"ALTER TABLE message ADD COLUMN madrid_attributedBody BLOB");
  v3 = v2 & sub_1B7BD1F88(a1, @"Failed to add column madrid_handle.", @"Added column madrid_handle.", @"ALTER TABLE message ADD COLUMN madrid_handle TEXT");
  v4 = sub_1B7BD1F88(a1, @"Failed to add column madrid_version.", @"Added column madrid_version.", @"ALTER TABLE message ADD COLUMN madrid_version INTEGER");
  v5 = v3 & v4 & sub_1B7BD1F88(a1, @"Failed to add column madrid_guid.", @"Added column madrid_guid.", @"ALTER TABLE message ADD COLUMN madrid_guid TEXT");
  v6 = sub_1B7BD1F88(a1, @"Failed to add column madrid_type.", @"Added column madrid_type.", @"ALTER TABLE message ADD COLUMN madrid_type INTEGER");
  v7 = v6 & sub_1B7BD1F88(a1, @"Failed to add column madrid_roomname.", @"Added column madrid_roomname.", @"ALTER TABLE message ADD COLUMN madrid_roomname TEXT");
  v8 = v5 & v7 & sub_1B7BD1F88(a1, @"Failed to add column madrid_service.", @"Added column madrid_service.", @"ALTER TABLE message ADD COLUMN madrid_service TEXT");
  v9 = sub_1B7BD1F88(a1, @"Failed to add column madrid_account.", @"Added column madrid_account.", @"ALTER TABLE message ADD COLUMN madrid_account TEXT");
  v10 = v9 & sub_1B7BD1F88(a1, @"Failed to add column madrid_flags.", @"Added column madrid_flags.", @"ALTER TABLE message ADD COLUMN madrid_flags INTEGER");
  v11 = v10 & sub_1B7BD1F88(a1, @"Failed to add column madrid_attachmentInfo.", @"Added column madrid_attachmentInfo.", @"ALTER TABLE message ADD COLUMN madrid_attachmentInfo BLOB;");
  v12 = v8 & v11 & sub_1B7BD1F88(a1, @"Failed to add column madrid_url.", @"Added column madrid_url.", @"ALTER TABLE message ADD COLUMN madrid_url TEXT");
  v13 = sub_1B7BD1F88(a1, @"Failed to add column madrid_error.", @"Added column madrid_error.", @"ALTER TABLE message ADD COLUMN madrid_error INTEGER");
  return v12 & v13 & sub_1B7BD1F88(a1, @"Failed to add column is_madrid.", @"Added column is_madrid.", @"ALTER TABLE message ADD COLUMN is_madrid INTEGER;");
}

uint64_t sub_1B7BD2C58(uint64_t a1)
{
  v2 = sub_1B7BD1F88(a1, @"Failed to add column read.", @"Added column read.", @"ALTER TABLE message ADD COLUMN read INTEGER");
  v3 = v2 & sub_1B7BD1F88(a1, @"Failed to update flags.", @"Updated flags.", @"UPDATE message SET read = ((flags >> 1) & 1)");
  return v3 & sub_1B7BD1F88(a1, @"Failed to create index update message_groupid_read_index.", @"Created index message_groupid_read_index.", @"CREATE INDEX message_groupid_read_index ON message(group_id, read)");
}

uint64_t sub_1B7BD2CE0()
{
  v17 = *MEMORY[0x1E69E9840];
  v0 = IMLogHandleForCategory();
  v1 = os_log_type_enabled(v0, OS_LOG_TYPE_INFO);
  if (v1)
  {
    LOWORD(v16[0]) = 0;
    _os_log_impl(&dword_1B7AD5000, v0, OS_LOG_TYPE_INFO, "Create tables...", v16, 2u);
  }

  sub_1B7AEAEE4(v1, v2, v3);
  TablesForClass = CSDBRecordStoreCreateTablesForClass();
  sub_1B7AE0D64(TablesForClass, v5, v6);
  CSDBRecordStoreCreateTablesForClass();
  CSDBRecordStoreCreateTablesForClass();
  v7 = CSDBSqliteConnectionStatementForSQL();
  if (v7)
  {
    if (*(v7 + 8))
    {
      v8 = CSDBSqliteStatementPerform();
      CSDBSqliteStatementReset();
      if (v8 != 101)
      {
        if (v8)
        {
          v15 = IMLogHandleForCategory();
          if (!os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
          {
            goto LABEL_10;
          }

          v16[0] = 67109120;
          v16[1] = v8;
          v10 = "Failed to create table for handle. SQLiteError: %d";
          v11 = v15;
          v12 = 8;
          goto LABEL_9;
        }
      }
    }
  }

  v9 = IMLogHandleForCategory();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    LOWORD(v16[0]) = 0;
    v10 = "Table for handle was created successfully.";
    v11 = v9;
    v12 = 2;
LABEL_9:
    _os_log_impl(&dword_1B7AD5000, v11, OS_LOG_TYPE_INFO, v10, v16, v12);
  }

LABEL_10:
  sub_1B7BD2EA4();
  sub_1B7BD2FC4();
  sub_1B7BD30E4();
  v13 = *MEMORY[0x1E69E9840];
  return 1;
}

void sub_1B7BD2EA4()
{
  v9 = *MEMORY[0x1E69E9840];
  v0 = CSDBSqliteConnectionStatementForSQL();
  if (v0)
  {
    if (*(v0 + 8))
    {
      v1 = CSDBSqliteStatementPerform();
      CSDBSqliteStatementReset();
      if (v1 != 101)
      {
        if (v1)
        {
          v7 = IMLogHandleForCategory();
          if (!os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
          {
            goto LABEL_8;
          }

          v8[0] = 67109120;
          v8[1] = v1;
          v3 = "Failed to create join table for Message <--> Attachment. SQLiteError: %d";
          v4 = v7;
          v5 = 8;
          goto LABEL_7;
        }
      }
    }
  }

  v2 = IMLogHandleForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    LOWORD(v8[0]) = 0;
    v3 = "Join table for Message <--> Attachment was created successfully.";
    v4 = v2;
    v5 = 2;
LABEL_7:
    _os_log_impl(&dword_1B7AD5000, v4, OS_LOG_TYPE_INFO, v3, v8, v5);
  }

LABEL_8:
  v6 = *MEMORY[0x1E69E9840];
}

void sub_1B7BD2FC4()
{
  v9 = *MEMORY[0x1E69E9840];
  v0 = CSDBSqliteConnectionStatementForSQL();
  if (v0)
  {
    if (*(v0 + 8))
    {
      v1 = CSDBSqliteStatementPerform();
      CSDBSqliteStatementReset();
      if (v1 != 101)
      {
        if (v1)
        {
          v7 = IMLogHandleForCategory();
          if (!os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
          {
            goto LABEL_8;
          }

          v8[0] = 67109120;
          v8[1] = v1;
          v3 = "Failed to create join table for Chat <--> Handle. SQLiteError: %d";
          v4 = v7;
          v5 = 8;
          goto LABEL_7;
        }
      }
    }
  }

  v2 = IMLogHandleForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    LOWORD(v8[0]) = 0;
    v3 = "Join table for Chat <--> Handle was created successfully.";
    v4 = v2;
    v5 = 2;
LABEL_7:
    _os_log_impl(&dword_1B7AD5000, v4, OS_LOG_TYPE_INFO, v3, v8, v5);
  }

LABEL_8:
  v6 = *MEMORY[0x1E69E9840];
}

void sub_1B7BD30E4()
{
  v9 = *MEMORY[0x1E69E9840];
  v0 = CSDBSqliteConnectionStatementForSQL();
  if (v0)
  {
    if (*(v0 + 8))
    {
      v1 = CSDBSqliteStatementPerform();
      CSDBSqliteStatementReset();
      if (v1 != 101)
      {
        if (v1)
        {
          v7 = IMLogHandleForCategory();
          if (!os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
          {
            goto LABEL_8;
          }

          v8[0] = 67109120;
          v8[1] = v1;
          v3 = "Failed to create join table for Chat <--> Message. SQLiteError: %d";
          v4 = v7;
          v5 = 8;
          goto LABEL_7;
        }
      }
    }
  }

  v2 = IMLogHandleForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    LOWORD(v8[0]) = 0;
    v3 = "Join table for Chat <--> Message was created successfully.";
    v4 = v2;
    v5 = 2;
LABEL_7:
    _os_log_impl(&dword_1B7AD5000, v4, OS_LOG_TYPE_INFO, v3, v8, v5);
  }

LABEL_8:
  v6 = *MEMORY[0x1E69E9840];
}

uint64_t IMDLegacyMigrator(uint64_t *a1, const char *a2, uint64_t a3)
{
  v120 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v5 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CFBB38(v5, a2);
    }
  }

  v6 = *a1;
  v7 = a1[1];
  if (!v6 && (v8 = IMDatabaseLogHandle(), os_log_type_enabled(v8, OS_LOG_TYPE_ERROR)))
  {
    sub_1B7CFBBE8(v8, a2);
    if (v7)
    {
      goto LABEL_9;
    }
  }

  else if (v7)
  {
    goto LABEL_9;
  }

  v9 = IMDatabaseLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    sub_1B7CFBC98(v9, a2);
  }

LABEL_9:
  if ((a2 - 2) <= 2)
  {
    CSDBSqliteConnectionBeginTransactionType();
    v10 = IMLogHandleForCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CFBD48(a2, v10, v11);
    }

    goto LABEL_12;
  }

  if (a2 < 5 || objc_msgSend_schemaVersion(IMDLegacyRecordBridge, a2, a3) < a2)
  {
LABEL_17:
    result = 1;
    goto LABEL_18;
  }

  v17 = *(v7 + 8);
  CSDBSqliteDatabaseRegisterFunctionForDB();
  CSDBSqliteConnectionBeginTransactionType();
  if (a2 == 5)
  {
    CSDBSqliteDatabaseSetVersion();
    v18 = IMLogHandleForCategory();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      LOWORD(v118) = 0;
      _os_log_impl(&dword_1B7AD5000, v18, OS_LOG_TYPE_INFO, "Updating DB to sort by ROWID instead of date.", &v118, 2u);
    }

    v19 = sub_1B7BD1F88(v7, @"MobileSMS DB Migration failed while dropping message_group_index.", @"Successfully dropped index message_group_index.", @"DROP INDEX message_group_index;");
    v20 = sub_1B7BD1F88(v7, @"MobileSMS DB Migration failed while creating message_group_index.", @"Created index message_group_index", @"CREATE INDEX message_group_index ON message(group_id, ROWID);");
    if (!v19 || !v20)
    {
      goto LABEL_12;
    }

    CSDBSqliteDatabaseSetVersion();
    goto LABEL_26;
  }

  if (a2 <= 6)
  {
LABEL_26:
    CSDBSqliteDatabaseSetVersion();
    goto LABEL_27;
  }

  if (a2 == 7)
  {
LABEL_27:
    CSDBSqliteDatabaseSetVersion();
    v21 = sub_1B7BD1F88(v7, @"Failed to create table msg_pieces.", @"Created table msg_pieces.", @"CREATE TABLE IF NOT EXISTS msg_pieces (ROWID INTEGER PRIMARY KEY AUTOINCREMENT UNIQUE, message_id INTEGER, data BLOB, part_id INTEGER, preview_part INTEGER, content_type TEXT, height INTEGER, version INTEGER, flags INTEGER, content_id TEXT, content_loc TEXT, headers BLOB);");
    v22 = sub_1B7BD1F88(v7, @"Failed to create index pieces_message_index.", @"Created index pieces_message_index.", @"CREATE INDEX pieces_message_index ON msg_pieces(message_id);");
    if (!v21 || !v22)
    {
      goto LABEL_12;
    }

    CSDBSqliteDatabaseSetVersion();
    goto LABEL_30;
  }

  if (a2 <= 8)
  {
LABEL_30:
    CSDBSqliteDatabaseSetVersion();
    if (!sub_1B7BD28A8(v7))
    {
      goto LABEL_12;
    }

    CSDBSqliteDatabaseSetVersion();
    goto LABEL_32;
  }

  if (a2 == 10)
  {
    CSDBSqliteDatabaseSetVersion();
    if ((sub_1B7BD2C58(v7) & 1) == 0)
    {
      goto LABEL_12;
    }

LABEL_33:
    CSDBSqliteDatabaseSetVersion();
    goto LABEL_34;
  }

  if (a2 == 9)
  {
LABEL_32:
    CSDBSqliteDatabaseSetVersion();
    if ((sub_1B7BD2C58(v7) & 1) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_33;
  }

  if (a2 < 0xC)
  {
LABEL_34:
    v23 = IMLogHandleForCategory();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      LOWORD(v118) = 0;
      _os_log_impl(&dword_1B7AD5000, v23, OS_LOG_TYPE_INFO, "Updating DB to support madrid.", &v118, 2u);
    }

    CSDBSqliteDatabaseSetVersion();
    v24 = sub_1B7BD2A50(v7);
    v25 = sub_1B7BD212C(v7);
    if (!v24 || (v25 & 1) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_38;
  }

  if (a2 == 12)
  {
    v45 = IMLogHandleForCategory();
    if (os_log_type_enabled(v45, OS_LOG_TYPE_INFO))
    {
      LOWORD(v118) = 0;
      _os_log_impl(&dword_1B7AD5000, v45, OS_LOG_TYPE_INFO, "Updating DB from version 12 to current.", &v118, 2u);
    }

    CSDBSqliteDatabaseSetVersion();
    v46 = sub_1B7BD1F88(v7, @"MobileSMS DB Migration failed adding madrid_error column to message table.", @"Added madrid_error column.", @"ALTER TABLE message ADD COLUMN madrid_error INTEGER;");
    v47 = sub_1B7BD1F88(v7, @"MobileSMS DB Migration failed adding is_madrid column to message table.", @"Added column is_madrid", @"ALTER TABLE message ADD COLUMN is_madrid INTEGER;");
    v48 = sub_1B7BD1F88(v7, @"MobileSMS DB Migration failed creating index madrid_flags_index.", @"Added index madrid_flags_index.", @"CREATE INDEX madrid_flags_index ON message(madrid_flags);");
    if (!v46 || !v47 || (v48 & 1) == 0)
    {
      goto LABEL_12;
    }

LABEL_38:
    CSDBSqliteDatabaseSetVersion();
LABEL_39:
    CSDBSqliteDatabaseSetVersion();
    v26 = IMLogHandleForCategory();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
    {
      LOWORD(v118) = 0;
      _os_log_impl(&dword_1B7AD5000, v26, OS_LOG_TYPE_INFO, "Updating DB from version 13 to current.", &v118, 2u);
    }

    v27 = sub_1B7BD1F88(v7, @"MobileSMS DB Migration failed adding column madrid_date_read.", @"Added column madrid_date_read.", @"ALTER TABLE message ADD COLUMN madrid_date_read INTEGER;");
    v28 = sub_1B7BD1F88(v7, @"MobileSMS DB Migration failed adding column madrid_date_delivered.", @"Added column madrid_date_delivered.", @"ALTER TABLE message ADD COLUMN madrid_date_delivered INTEGER;");
    if (!v27 || !v28)
    {
      goto LABEL_12;
    }

    CSDBSqliteDatabaseSetVersion();
    goto LABEL_44;
  }

  if (a2 < 0xE)
  {
    goto LABEL_39;
  }

  if (a2 == 14)
  {
LABEL_44:
    v29 = IMLogHandleForCategory();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
    {
      LOWORD(v118) = 0;
      _os_log_impl(&dword_1B7AD5000, v29, OS_LOG_TYPE_INFO, "Updating DB from version 14 to current.", &v118, 2u);
    }

    CSDBSqliteDatabaseSetVersion();
    if (!sub_1B7BD24C8(v7))
    {
      goto LABEL_12;
    }

    CSDBSqliteDatabaseSetVersion();
    goto LABEL_48;
  }

  if (a2 <= 0xF)
  {
LABEL_48:
    CSDBSqliteDatabaseSetVersion();
LABEL_49:
    v30 = IMLogHandleForCategory();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
    {
      LOWORD(v118) = 0;
      _os_log_impl(&dword_1B7AD5000, v30, OS_LOG_TYPE_INFO, "Adding index for group_id on group_member", &v118, 2u);
    }

    CSDBSqliteDatabaseSetVersion();
    if (!sub_1B7BD1F88(v7, @"MobileSMS DB Migration failed adding index group_id_index", @"Added index group_id_index", @"CREATE INDEX group_id_index ON group_member(group_id);"))
    {
      goto LABEL_12;
    }

    CSDBSqliteDatabaseSetVersion();
    goto LABEL_53;
  }

  if (a2 == 16)
  {
    goto LABEL_49;
  }

  if (a2 <= 0x11)
  {
LABEL_53:
    v31 = IMLogHandleForCategory();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
    {
      LOWORD(v118) = 0;
      _os_log_impl(&dword_1B7AD5000, v31, OS_LOG_TYPE_INFO, "Adding support for Chats and Participants.", &v118, 2u);
    }

    CSDBSqliteDatabaseSetVersion();
    if (!sub_1B7BD2514(v7))
    {
      goto LABEL_12;
    }

    CSDBSqliteDatabaseSetVersion();
    goto LABEL_57;
  }

  if (a2 == 18)
  {
LABEL_57:
    v32 = IMLogHandleForCategory();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
    {
      LOWORD(v118) = 0;
      _os_log_impl(&dword_1B7AD5000, v32, OS_LOG_TYPE_INFO, "Ensuring sanity of is_madrid column.", &v118, 2u);
    }

    CSDBSqliteDatabaseSetVersion();
    if (!sub_1B7BD1F88(v7, @"MobileSMS DB Migration failed updating the values for is_madrid.", @"Updated values for is_madrid.", @"UPDATE message SET is_madrid = 0 WHERE is_madrid IS NULL;"))
    {
      goto LABEL_12;
    }

    CSDBSqliteDatabaseSetVersion();
    goto LABEL_61;
  }

  if (a2 <= 0x13)
  {
LABEL_61:
    v33 = IMLogHandleForCategory();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
    {
      LOWORD(v118) = 0;
      _os_log_impl(&dword_1B7AD5000, v33, OS_LOG_TYPE_INFO, "Cleaning message indices for iMessage.", &v118, 2u);
    }

    CSDBSqliteDatabaseSetVersion();
    if (!sub_1B7BD22A4(v7))
    {
      goto LABEL_12;
    }

    CSDBSqliteDatabaseSetVersion();
    goto LABEL_65;
  }

  if (a2 == 20)
  {
LABEL_65:
    v34 = IMLogHandleForCategory();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
    {
      LOWORD(v118) = 0;
      _os_log_impl(&dword_1B7AD5000, v34, OS_LOG_TYPE_INFO, "Adding column for iMessage Account GUID", &v118, 2u);
    }

    CSDBSqliteDatabaseSetVersion();
    if (!sub_1B7BD1F88(v7, @"MobileSMS DB Migration failed adding column madrid_account_guid.", @"Added column madrid_account_guid.", @"ALTER TABLE message ADD COLUMN madrid_account_guid TEXT;"))
    {
      goto LABEL_12;
    }

    CSDBSqliteDatabaseSetVersion();
    goto LABEL_69;
  }

  if (a2 <= 0x15)
  {
LABEL_69:
    v35 = IMLogHandleForCategory();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
    {
      LOWORD(v118) = 0;
      _os_log_impl(&dword_1B7AD5000, v35, OS_LOG_TYPE_INFO, "Moving old tables to *_legacy and adding tables for the new schema.", &v118, 2u);
    }

    CSDBSqliteDatabaseSetVersion();
    v36 = sub_1B7BD1F88(v7, @"MobileSMS DB migration failed to rename group_member table.", @"Renamed group_member table.", @"ALTER TABLE group_member RENAME TO group_member_legacy;");
    v37 = sub_1B7BD1F88(v7, @"MobileSMS DB migration failed to rename madrid_attachment table.", @"Renamed madrid_attachment table.", @"ALTER TABLE madrid_attachment RENAME TO madrid_attachment_legacy;");
    v38 = sub_1B7BD1F88(v7, @"MobileSMS DB migration failed to rename madrid_chat table.", @"Renamed madrid_chat table.", @"ALTER TABLE madrid_chat RENAME TO madrid_chat_legacy;");
    v39 = sub_1B7BD1F88(v7, @"MobileSMS DB migration failed to rename group_member table.", @"Renamed message table.", @"ALTER TABLE message RENAME TO message_legacy;");
    v40 = sub_1B7BD1F88(v7, @"MobileSMS DB migration failed to rename msg_group table.", @"Renamed msg_group table.", @"ALTER TABLE msg_group RENAME TO msg_group_legacy;");
    v41 = sub_1B7BD1F88(v7, @"MobileSMS DB migration failed to rename msg_pieces table.", @"Renamed msg_pieces table.", @"ALTER TABLE msg_pieces RENAME TO msg_pieces_legacy;");
    sub_1B7BD2CE0();
    v42 = _IMDSMSDatabaseMigrateData_21_22(v6, v7);
    if (!v36 || !v37 || !v38 || !v39 || !v40 || !v41 || (v42 & 1) == 0)
    {
      goto LABEL_12;
    }

    CSDBSqliteDatabaseSetVersion();
    goto LABEL_79;
  }

  if (a2 == 22)
  {
LABEL_79:
    CSDBSqliteDatabaseSetVersion();
    v43 = CSDBSqliteConnectionPerformSQL();
    if ((v43 - 100) >= 2 && v43)
    {
      if (!sub_1B7BD1F88(v7, @"MobileSMS DB migration failed to add column is_archived to the chat table.", @"Added is_archived column to the chat table.", @"ALTER TABLE chat ADD COLUMN is_archived DEFAULT 0"))
      {
        goto LABEL_12;
      }
    }

    else
    {
      v44 = IMLogHandleForCategory();
      if (os_log_type_enabled(v44, OS_LOG_TYPE_INFO))
      {
        LOWORD(v118) = 0;
        _os_log_impl(&dword_1B7AD5000, v44, OS_LOG_TYPE_INFO, "The is_archived column already exists on chat, skipping this step.", &v118, 2u);
      }
    }

    CSDBSqliteDatabaseSetVersion();
    goto LABEL_142;
  }

  if (a2 <= 0x17)
  {
LABEL_142:
    CSDBSqliteDatabaseSetVersion();
    v49 = CSDBSqliteConnectionPerformSQL();
    v50 = IMLogHandleForCategory();
    if (os_log_type_enabled(v50, OS_LOG_TYPE_INFO))
    {
      v118 = 67109120;
      v119 = v49;
      _os_log_impl(&dword_1B7AD5000, v50, OS_LOG_TYPE_INFO, "SQLite result was %d", &v118, 8u);
    }

    if (v49 != 101 && v49)
    {
      goto LABEL_12;
    }

    CSDBSqliteDatabaseSetVersion();
    goto LABEL_147;
  }

  if (a2 == 24)
  {
LABEL_147:
    CSDBSqliteDatabaseSetVersion();
    v51 = IMLogHandleForCategory();
    if (os_log_type_enabled(v51, OS_LOG_TYPE_INFO))
    {
      LOWORD(v118) = 0;
      _os_log_impl(&dword_1B7AD5000, v51, OS_LOG_TYPE_INFO, "Fixing missing text in group field", &v118, 2u);
    }

    if ((_IMDSMSDatabaseMigrateData_24_25() & 1) == 0)
    {
      goto LABEL_12;
    }

    CSDBSqliteDatabaseSetVersion();
    goto LABEL_151;
  }

  if (a2 <= 0x19)
  {
LABEL_151:
    CSDBSqliteDatabaseSetVersion();
    CSDBSqliteDatabaseSetVersion();
    goto LABEL_152;
  }

  if (a2 == 26)
  {
LABEL_152:
    CSDBSqliteDatabaseSetVersion();
    CSDBSqliteDatabaseSetVersion();
LABEL_153:
    CSDBSqliteDatabaseSetVersion();
    v52 = CSDBSqliteConnectionPerformSQL();
    if ((v52 - 100) >= 2 && v52)
    {
      if (!sub_1B7BD1F88(v7, @"MobileSMS DB migration failed to add column was_data_detected to the message table.", @"Added was_data_detected column to the message table.", @"ALTER TABLE message ADD COLUMN was_data_detected INTEGER DEFAULT 0"))
      {
        goto LABEL_12;
      }
    }

    else
    {
      v53 = IMLogHandleForCategory();
      if (os_log_type_enabled(v53, OS_LOG_TYPE_INFO))
      {
        LOWORD(v118) = 0;
        _os_log_impl(&dword_1B7AD5000, v53, OS_LOG_TYPE_INFO, "The was_data_detected column already exists on message, skipping this step.", &v118, 2u);
      }
    }

    CSDBSqliteDatabaseSetVersion();
    goto LABEL_159;
  }

  if (a2 <= 0x1B)
  {
    goto LABEL_153;
  }

  if (a2 == 28)
  {
LABEL_159:
    CSDBSqliteDatabaseSetVersion();
    v54 = CSDBSqliteConnectionPerformSQL();
    v55 = IMLogHandleForCategory();
    if (os_log_type_enabled(v55, OS_LOG_TYPE_INFO))
    {
      v118 = 67109120;
      v119 = v54;
      _os_log_impl(&dword_1B7AD5000, v55, OS_LOG_TYPE_INFO, "SQLite result was %d", &v118, 8u);
    }

    if ((v54 - 100) >= 2 && v54)
    {
      if (!sub_1B7BD1F88(v7, @"MobileSMS DB migration failed to add column last_addressed_handle to the chat table.", @"Added last_addressed_handle column to the chat table.", @"ALTER TABLE chat ADD COLUMN last_addressed_handle TEXT"))
      {
        goto LABEL_12;
      }
    }

    else
    {
      v56 = IMLogHandleForCategory();
      if (os_log_type_enabled(v56, OS_LOG_TYPE_INFO))
      {
        LOWORD(v118) = 0;
        _os_log_impl(&dword_1B7AD5000, v56, OS_LOG_TYPE_INFO, "The last_addressed_handle column already exists on chat, skipping this step.", &v118, 2u);
      }
    }

    CSDBSqliteDatabaseSetVersion();
    goto LABEL_167;
  }

  if (a2 <= 0x1D)
  {
LABEL_167:
    CSDBSqliteDatabaseSetVersion();
    if (!sub_1B7BD1F88(v7, @"MobileSMS DB migration failed to delete V21_MIGRATION_NONCANONICAL_GROUP_HANDLE_MAP.", @"Dropped unneeded V21_MIGRATION_NONCANONICAL_GROUP_HANDLE_MAP.", @"DROP TABLE IF EXISTS V21_MIGRATION_NONCANONICAL_GROUP_HANDLE_MAP"))
    {
      goto LABEL_12;
    }

    CSDBSqliteDatabaseSetVersion();
    goto LABEL_169;
  }

  if (a2 == 30)
  {
LABEL_169:
    CSDBSqliteDatabaseSetVersion();
    v57 = CSDBSqliteConnectionPerformSQL();
    if ((v57 - 100) >= 2 && v57)
    {
      if (!sub_1B7BD1F88(v7, @"MobileSMS DB migration failed to add column was_deduplicated to the message table.", @"Added was_deduplicated column to the message table.", @"ALTER TABLE message ADD COLUMN was_deduplicated INTEGER DEFAULT 0"))
      {
        goto LABEL_12;
      }
    }

    else
    {
      v58 = IMLogHandleForCategory();
      if (os_log_type_enabled(v58, OS_LOG_TYPE_INFO))
      {
        LOWORD(v118) = 0;
        _os_log_impl(&dword_1B7AD5000, v58, OS_LOG_TYPE_INFO, "The was_deduplicated column already exists on message, skipping this step.", &v118, 2u);
      }
    }

    CSDBSqliteDatabaseSetVersion();
    goto LABEL_175;
  }

  if (a2 <= 0x1F)
  {
LABEL_175:
    CSDBSqliteDatabaseSetVersion();
    if (!sub_1B7BD2800(v7, @"message_idx_is_read", @"CREATE INDEX message_idx_is_read ON message(is_read, is_from_me, is_finished);"))
    {
      goto LABEL_12;
    }

    CSDBSqliteDatabaseSetVersion();
    goto LABEL_177;
  }

  if (a2 == 32)
  {
LABEL_177:
    CSDBSqliteDatabaseSetVersion();
    v59 = sub_1B7BD2800(v7, @"message_idx_failed", @"CREATE INDEX message_idx_failed ON message(is_finished, is_from_me, error)");
    v60 = sub_1B7BD2800(v7, @"message_idx_handle", @"CREATE INDEX IF NOT EXISTS message_idx_handle ON message(handle_id, date);");
    v61 = sub_1B7BD2800(v7, @"chat_idx_identifier", @"CREATE INDEX IF NOT EXISTS chat_idx_identifier ON chat(chat_identifier)");
    v62 = sub_1B7BD2800(v7, @"chat_idx_room_name", @"CREATE INDEX IF NOT EXISTS chat_idx_room_name ON chat(room_name)");
    v63 = sub_1B7BD2800(v7, @"message_idx_was_downgraded", @"CREATE INDEX IF NOT EXISTS message_idx_was_downgraded ON message(was_downgraded);");
    v64 = sub_1B7BD2800(v7, @"chat_message_join_idx_message_id", @"CREATE INDEX IF NOT EXISTS chat_message_join_idx_message_date_id_chat_id ON chat_message_join(chat_id, message_date, message_id)");
    if (!v59 || !v60 || !v61 || !v62 || !v63 || !v64)
    {
      goto LABEL_12;
    }

    CSDBSqliteDatabaseSetVersion();
    goto LABEL_184;
  }

  if (a2 <= 0x21)
  {
LABEL_184:
    CSDBSqliteDatabaseSetVersion();
    v65 = sub_1B7BD2688(v7, @"madrid_attachment_legacy");
    v66 = sub_1B7BD2688(v7, @"group_member_legacy");
    v67 = sub_1B7BD2688(v7, @"madrid_chat_legacy");
    v68 = sub_1B7BD2688(v7, @"message_legacy");
    v69 = sub_1B7BD2688(v7, @"msg_group_legacy");
    v70 = sub_1B7BD2688(v7, @"msg_pieces_legacy");
    if (!v65 || !v66 || !v67 || !v68 || !v69 || !v70)
    {
      goto LABEL_12;
    }

    CSDBSqliteDatabaseSetVersion();
    goto LABEL_191;
  }

  if (a2 == 34)
  {
LABEL_191:
    CSDBSqliteDatabaseSetVersion();
    v71 = IMLogHandleForCategory();
    if (os_log_type_enabled(v71, OS_LOG_TYPE_INFO))
    {
      LOWORD(v118) = 0;
      _os_log_impl(&dword_1B7AD5000, v71, OS_LOG_TYPE_INFO, "Fixing busted chat identifiers for group chats", &v118, 2u);
    }

    if ((_IMDSMSDatabaseMigrateData_34_35() & 1) == 0)
    {
      goto LABEL_12;
    }

    CSDBSqliteDatabaseSetVersion();
    goto LABEL_195;
  }

  if (a2 <= 0x23)
  {
LABEL_195:
    CSDBSqliteDatabaseSetVersion();
    v72 = IMLogHandleForCategory();
    if (os_log_type_enabled(v72, OS_LOG_TYPE_INFO))
    {
      LOWORD(v118) = 0;
      _os_log_impl(&dword_1B7AD5000, v72, OS_LOG_TYPE_INFO, "Adding attachment is_outgoing column", &v118, 2u);
    }

    v73 = CSDBSqliteConnectionPerformSQL();
    if ((v73 - 100) >= 2 && v73)
    {
      if (!sub_1B7BD1F88(v7, @"MobileSMS DB migration failed to add column is_outgoing to the attachment table.", @"Added is_outgoing column to the attachment table.", @"ALTER TABLE attachment ADD COLUMN is_outgoing INTEGER DEFAULT 0"))
      {
        goto LABEL_12;
      }
    }

    else
    {
      v74 = IMLogHandleForCategory();
      if (os_log_type_enabled(v74, OS_LOG_TYPE_INFO))
      {
        LOWORD(v118) = 0;
        _os_log_impl(&dword_1B7AD5000, v74, OS_LOG_TYPE_INFO, "The is_outgoing column already exists on attachment, skipping this step.", &v118, 2u);
      }
    }

    CSDBSqliteDatabaseSetVersion();
    goto LABEL_203;
  }

  if (a2 == 36)
  {
LABEL_203:
    CSDBSqliteDatabaseSetVersion();
    CSDBSqliteDatabaseSetVersion();
    goto LABEL_204;
  }

  if (a2 <= 0x25)
  {
LABEL_204:
    v75 = IMLogHandleForCategory();
    if (os_log_type_enabled(v75, OS_LOG_TYPE_INFO))
    {
      LOWORD(v118) = 0;
      _os_log_impl(&dword_1B7AD5000, v75, OS_LOG_TYPE_INFO, "Fixing up uncanonicalized identifiers that had previously been incorrectly treated as canonicalized.", &v118, 2u);
    }

    CSDBSqliteDatabaseSetVersion();
    CSDBSqliteDatabaseSetVersion();
    goto LABEL_207;
  }

  if (a2 == 38)
  {
LABEL_207:
    v76 = IMLogHandleForCategory();
    if (os_log_type_enabled(v76, OS_LOG_TYPE_INFO))
    {
      LOWORD(v118) = 0;
      _os_log_impl(&dword_1B7AD5000, v76, OS_LOG_TYPE_INFO, "Fixing up uncanonicalized handle identifiers that failed to migrate due to conflicts.", &v118, 2u);
    }

    CSDBSqliteDatabaseSetVersion();
    if ((_IMDSMSDatabaseMigrateData_38_6100() & 1) == 0)
    {
      goto LABEL_12;
    }

    CSDBSqliteDatabaseSetVersion();
    goto LABEL_211;
  }

  if (a2 <= 0x17D4)
  {
LABEL_211:
    CSDBSqliteDatabaseSetVersion();
    v77 = IMLogHandleForCategory();
    if (os_log_type_enabled(v77, OS_LOG_TYPE_INFO))
    {
      LOWORD(v118) = 0;
      _os_log_impl(&dword_1B7AD5000, v77, OS_LOG_TYPE_INFO, "Adding attachment user_info column", &v118, 2u);
    }

    v78 = CSDBSqliteConnectionPerformSQL();
    if ((v78 - 100) >= 2 && v78)
    {
      if (!sub_1B7BD1F88(v7, @"MobileSMS DB migration failed to add column user_info to the attachment table.", @"Added user_info column to the attachment table.", @"ALTER TABLE attachment ADD COLUMN user_info BLOB"))
      {
        goto LABEL_12;
      }
    }

    else
    {
      v79 = IMLogHandleForCategory();
      if (os_log_type_enabled(v79, OS_LOG_TYPE_INFO))
      {
        LOWORD(v118) = 0;
        _os_log_impl(&dword_1B7AD5000, v79, OS_LOG_TYPE_INFO, "The user_info column already exists on attachment, skipping this step.", &v118, 2u);
      }
    }

    CSDBSqliteDatabaseSetVersion();
    goto LABEL_219;
  }

  if (a2 <= 0x1B58)
  {
LABEL_219:
    CSDBSqliteDatabaseSetVersion();
    v80 = IMLogHandleForCategory();
    if (os_log_type_enabled(v80, OS_LOG_TYPE_INFO))
    {
      LOWORD(v118) = 0;
      _os_log_impl(&dword_1B7AD5000, v80, OS_LOG_TYPE_INFO, "Adding attachment transfer_name column", &v118, 2u);
    }

    v81 = CSDBSqliteConnectionPerformSQL();
    if ((v81 - 100) >= 2 && v81)
    {
      if (!sub_1B7BD1F88(v7, @"MobileSMS DB migration failed to add column transfer_name to the attachment table.", @"Added transfer_name column to the attachment table.", @"ALTER TABLE attachment ADD COLUMN transfer_name TEXT"))
      {
        goto LABEL_12;
      }
    }

    else
    {
      v82 = IMLogHandleForCategory();
      if (os_log_type_enabled(v82, OS_LOG_TYPE_INFO))
      {
        LOWORD(v118) = 0;
        _os_log_impl(&dword_1B7AD5000, v82, OS_LOG_TYPE_INFO, "The transfer_name column already exists on attachment, skipping this step.", &v118, 2u);
      }
    }

    CSDBSqliteDatabaseSetVersion();
    goto LABEL_227;
  }

  if (a2 == 7001)
  {
LABEL_227:
    CSDBSqliteDatabaseSetVersion();
    v83 = IMLogHandleForCategory();
    if (os_log_type_enabled(v83, OS_LOG_TYPE_INFO))
    {
      LOWORD(v118) = 0;
      _os_log_impl(&dword_1B7AD5000, v83, OS_LOG_TYPE_INFO, "Adding chat display_name column", &v118, 2u);
    }

    v84 = CSDBSqliteConnectionPerformSQL();
    if ((v84 - 100) >= 2 && v84)
    {
      if (!sub_1B7BD1F88(v7, @"MobileSMS DB migration failed to add column display_name to the display_name table.", @"Added display_name column to the display_name table.", @"ALTER TABLE chat ADD COLUMN display_name TEXT"))
      {
        goto LABEL_12;
      }
    }

    else
    {
      v85 = IMLogHandleForCategory();
      if (os_log_type_enabled(v85, OS_LOG_TYPE_INFO))
      {
        LOWORD(v118) = 0;
        _os_log_impl(&dword_1B7AD5000, v85, OS_LOG_TYPE_INFO, "The display_name column already exists on chat, skipping this step.", &v118, 2u);
      }
    }

    CSDBSqliteDatabaseSetVersion();
    goto LABEL_235;
  }

  if (a2 >> 2 <= 0x6D6)
  {
LABEL_235:
    CSDBSqliteDatabaseSetVersion();
    v86 = IMLogHandleForCategory();
    if (os_log_type_enabled(v86, OS_LOG_TYPE_INFO))
    {
      LOWORD(v118) = 0;
      _os_log_impl(&dword_1B7AD5000, v86, OS_LOG_TYPE_INFO, "Adding attachment total_bytes column", &v118, 2u);
    }

    v87 = CSDBSqliteConnectionPerformSQL();
    if ((v87 - 100) >= 2 && v87)
    {
      if (!sub_1B7BD1F88(v7, @"MobileSMS DB migration failed to add column total_bytes to the attachment table.", @"Added total_bytes column to the attachment table.", @"ALTER TABLE attachment ADD COLUMN total_bytes INTEGER DEFAULT -1"))
      {
        goto LABEL_12;
      }
    }

    else
    {
      v88 = IMLogHandleForCategory();
      if (os_log_type_enabled(v88, OS_LOG_TYPE_INFO))
      {
        LOWORD(v118) = 0;
        _os_log_impl(&dword_1B7AD5000, v88, OS_LOG_TYPE_INFO, "The transfer_name column already exists on attachment, skipping this step.", &v118, 2u);
      }
    }

    CSDBSqliteDatabaseSetVersion();
    goto LABEL_243;
  }

  if (a2 == 7004)
  {
LABEL_243:
    CSDBSqliteDatabaseSetVersion();
    v89 = IMLogHandleForCategory();
    if (os_log_type_enabled(v89, OS_LOG_TYPE_INFO))
    {
      LOWORD(v118) = 0;
      _os_log_impl(&dword_1B7AD5000, v89, OS_LOG_TYPE_INFO, "Purging orphaned messages", &v118, 2u);
    }

    if (!sub_1B7BD1F88(v7, @"Purged orphaned messages failed :-(."), CFSTR("Purged orphaned messages."), CFSTR("DELETE FROM message WHERE (SELECT 1 from chat_message_join cmj WHERE message.ROWID = cmj.message_id LIMIT 1) IS NULL;"))
    {
      goto LABEL_12;
    }

    CSDBSqliteDatabaseSetVersion();
    goto LABEL_247;
  }

  if (a2 >> 1 <= 0xDAE)
  {
LABEL_247:
    CSDBSqliteDatabaseSetVersion();
    v90 = IMLogHandleForCategory();
    if (os_log_type_enabled(v90, OS_LOG_TYPE_INFO))
    {
      LOWORD(v118) = 0;
      _os_log_impl(&dword_1B7AD5000, v90, OS_LOG_TYPE_INFO, "Purging orphaned messages", &v118, 2u);
    }

    if (!sub_1B7BD1F88(v7, @"Purged orphaned messages failed :-(."), CFSTR("Purged orphaned messages."), CFSTR("DELETE FROM message WHERE (SELECT 1 from chat_message_join cmj WHERE message.ROWID = cmj.message_id LIMIT 1) IS NULL;"))
    {
      goto LABEL_12;
    }

    CSDBSqliteDatabaseSetVersion();
    goto LABEL_251;
  }

  if (a2 == 7006)
  {
LABEL_251:
    CSDBSqliteDatabaseSetVersion();
    CSDBSqliteDatabaseSetVersion();
    goto LABEL_252;
  }

  if (a2 <= 0x1F40)
  {
LABEL_252:
    CSDBSqliteDatabaseSetVersion();
    v91 = IMLogHandleForCategory();
    if (os_log_type_enabled(v91, OS_LOG_TYPE_INFO))
    {
      LOWORD(v118) = 0;
      _os_log_impl(&dword_1B7AD5000, v91, OS_LOG_TYPE_INFO, "Adding message is_audio_message, is_played, and date_played column", &v118, 2u);
    }

    v92 = CSDBSqliteConnectionPerformSQL();
    if ((v92 - 100) >= 2 && v92)
    {
      v94 = sub_1B7BD1F88(v7, @"MobileSMS DB migration failed to add column is_audio_message to the message table.", @"Added is_audio_message column to the message table.", @"ALTER TABLE message ADD COLUMN is_audio_message INTEGER DEFAULT 0");
      v95 = sub_1B7BD1F88(v7, @"MobileSMS DB migration failed to add column is_played to the message table.", @"Added is_played column to the message table.", @"ALTER TABLE message ADD COLUMN is_played INTEGER DEFAULT 0");
      v96 = sub_1B7BD1F88(v7, @"MobileSMS DB migration failed to add column date_played to the message table.", @"Added date_played column to the message table.", @"ALTER TABLE message ADD COLUMN date_played INTEGER");
      if (!v94 || !v95 || !v96)
      {
        goto LABEL_12;
      }
    }

    else
    {
      v93 = IMLogHandleForCategory();
      if (os_log_type_enabled(v93, OS_LOG_TYPE_INFO))
      {
        LOWORD(v118) = 0;
        _os_log_impl(&dword_1B7AD5000, v93, OS_LOG_TYPE_INFO, "The is_audio_message, is_played, and date_played columns already exist on message, skipping this step.", &v118, 2u);
      }
    }

    CSDBSqliteDatabaseSetVersion();
    goto LABEL_262;
  }

  if (a2 == 8001)
  {
LABEL_262:
    CSDBSqliteDatabaseSetVersion();
    v97 = IMLogHandleForCategory();
    if (os_log_type_enabled(v97, OS_LOG_TYPE_INFO))
    {
      LOWORD(v118) = 0;
      _os_log_impl(&dword_1B7AD5000, v97, OS_LOG_TYPE_INFO, "Purging orphaned messages - again", &v118, 2u);
    }

    if (!sub_1B7BD1F88(v7, @"Purged orphaned messages failed :-(."), CFSTR("Purged orphaned messages."), CFSTR("DELETE FROM message WHERE (SELECT 1 from chat_message_join cmj WHERE message.ROWID = cmj.message_id LIMIT 1) IS NULL;"))
    {
      goto LABEL_12;
    }

    CSDBSqliteDatabaseSetVersion();
    goto LABEL_266;
  }

  if (a2 <= 0x1F42)
  {
LABEL_266:
    CSDBSqliteDatabaseSetVersion();
    v98 = IMLogHandleForCategory();
    if (os_log_type_enabled(v98, OS_LOG_TYPE_INFO))
    {
      LOWORD(v118) = 0;
      _os_log_impl(&dword_1B7AD5000, v98, OS_LOG_TYPE_INFO, "Adding message item_type, other_handle, group_title, group_action_type, share_status, share_direction", &v118, 2u);
    }

    v99 = CSDBSqliteConnectionPerformSQL();
    if ((v99 - 100) >= 2 && v99)
    {
      v101 = sub_1B7BD1F88(v7, @"MobileSMS DB migration failed to add column item_type to the message table.", @"Added item_type column to the message table.", @"ALTER TABLE message ADD COLUMN item_type INTEGER DEFAULT 0");
      v102 = sub_1B7BD1F88(v7, @"MobileSMS DB migration failed to add column other_handle to the message table.", @"Added other_handle column to the message table.", @"ALTER TABLE message ADD COLUMN other_handle INTEGER DEFAULT -1");
      v103 = sub_1B7BD1F88(v7, @"MobileSMS DB migration failed to add column group_title to the message table.", @"Added group_title column to the message table.", @"ALTER TABLE message ADD COLUMN group_title TEXT");
      v104 = sub_1B7BD1F88(v7, @"MobileSMS DB migration failed to add column group_action_type to the message table.", @"Added group_action_type column to the message table.", @"ALTER TABLE message ADD COLUMN group_action_type INTEGER DEFAULT 0");
      v105 = sub_1B7BD1F88(v7, @"MobileSMS DB migration failed to add column share_status to the message table.", @"Added share_status column to the message table.", @"ALTER TABLE message ADD COLUMN share_status INTEGER");
      v106 = sub_1B7BD1F88(v7, @"MobileSMS DB migration failed to add column share_direction to the message table.", @"Added share_direction column to the message table.", @"ALTER TABLE message ADD COLUMN share_direction INTEGER");
      if (!v101 || !v102 || !v103 || !v104 || !v105 || !v106)
      {
        goto LABEL_12;
      }
    }

    else
    {
      v100 = IMLogHandleForCategory();
      if (os_log_type_enabled(v100, OS_LOG_TYPE_INFO))
      {
        LOWORD(v118) = 0;
        _os_log_impl(&dword_1B7AD5000, v100, OS_LOG_TYPE_INFO, "The item_type, other_handle, group_title, group_action_type, share_status, share_direction columns already exist on message, skipping this step.", &v118, 2u);
      }
    }

    v107 = CSDBSqliteConnectionPerformSQL();
    if ((v107 - 100) >= 2 && v107)
    {
      if (!sub_1B7BD1F88(v7, @"MobileSMS DB migration failed to add column group_id to the chat table.", @"Added group_id column to the chat table.", @"ALTER TABLE chat ADD COLUMN group_id TEXT"))
      {
        goto LABEL_12;
      }
    }

    else
    {
      v108 = IMLogHandleForCategory();
      if (os_log_type_enabled(v108, OS_LOG_TYPE_INFO))
      {
        LOWORD(v118) = 0;
        _os_log_impl(&dword_1B7AD5000, v108, OS_LOG_TYPE_INFO, "The group_id columns already exist on chat, skipping this step.", &v118, 2u);
      }
    }

    CSDBSqliteDatabaseSetVersion();
    goto LABEL_284;
  }

  if (a2 >> 1 <= 0xFA2)
  {
LABEL_284:
    CSDBSqliteDatabaseSetVersion();
    CSDBSqliteDatabaseSetVersion();
    goto LABEL_285;
  }

  if (a2 == 8006)
  {
LABEL_285:
    CSDBSqliteDatabaseSetVersion();
    v109 = IMLogHandleForCategory();
    if (os_log_type_enabled(v109, OS_LOG_TYPE_INFO))
    {
      LOWORD(v118) = 0;
      _os_log_impl(&dword_1B7AD5000, v109, OS_LOG_TYPE_INFO, "Adding message is_expirable, expire_state, and message_action_type column", &v118, 2u);
    }

    v110 = CSDBSqliteConnectionPerformSQL();
    if ((v110 - 100) >= 2 && v110)
    {
      v112 = sub_1B7BD1F88(v7, @"MobileSMS DB migration failed to add column is_expirable to the message table.", @"Added is_expirable column to the message table.", @"ALTER TABLE message ADD COLUMN is_expirable INTEGER DEFAULT 0");
      v113 = sub_1B7BD1F88(v7, @"MobileSMS DB migration failed to add column expire_state to the message table.", @"Added expire_state column to the message table.", @"ALTER TABLE message ADD COLUMN expire_state INTEGER DEFAULT 0");
      v114 = sub_1B7BD1F88(v7, @"MobileSMS DB migration failed to add column message_action_type to the message table.", @"Added message_action_type column to the message table.", @"ALTER TABLE message ADD COLUMN message_action_type INTEGER DEFAULT 0");
      if (!v112 || !v113 || !v114)
      {
        goto LABEL_12;
      }
    }

    else
    {
      v111 = IMLogHandleForCategory();
      if (os_log_type_enabled(v111, OS_LOG_TYPE_INFO))
      {
        LOWORD(v118) = 0;
        _os_log_impl(&dword_1B7AD5000, v111, OS_LOG_TYPE_INFO, "The is_expirable, expire_state, and message_action_type columns already exist on message, skipping this step.", &v118, 2u);
      }
    }

    CSDBSqliteDatabaseSetVersion();
    goto LABEL_295;
  }

  if (a2 >> 3 > 0x3E8)
  {
    if (a2 != 8008)
    {
      goto LABEL_17;
    }

LABEL_303:
    CSDBSqliteDatabaseSetVersion();
    CSDBSqliteDatabaseSetVersion();
    goto LABEL_17;
  }

LABEL_295:
  CSDBSqliteDatabaseSetVersion();
  v115 = IMLogHandleForCategory();
  if (os_log_type_enabled(v115, OS_LOG_TYPE_INFO))
  {
    LOWORD(v118) = 0;
    _os_log_impl(&dword_1B7AD5000, v115, OS_LOG_TYPE_INFO, "Adding message message_source column", &v118, 2u);
  }

  v116 = CSDBSqliteConnectionPerformSQL();
  if ((v116 - 100) < 2 || !v116)
  {
    v117 = IMLogHandleForCategory();
    if (os_log_type_enabled(v117, OS_LOG_TYPE_INFO))
    {
      LOWORD(v118) = 0;
      _os_log_impl(&dword_1B7AD5000, v117, OS_LOG_TYPE_INFO, "The message_source column already exists on message, skipping this step.", &v118, 2u);
    }

    goto LABEL_302;
  }

  if (sub_1B7BD1F88(v7, @"MobileSMS DB migration failed to add column message_source to the message table.", @"Added message_source column to the message table.", @"ALTER TABLE message ADD COLUMN message_source INTEGER DEFAULT 0"))
  {
LABEL_302:
    CSDBSqliteDatabaseSetVersion();
    goto LABEL_303;
  }

LABEL_12:
  v12 = IMLogHandleForCategory();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    sub_1B7CFBDE4(v6, v12);
  }

  CSDBSqliteConnectionCommit();
  IMDPersistenceSubmitEvent(@"com.apple.MobileSMS.Migration.Migration_Failure", v13, v14);
  result = 0;
LABEL_18:
  v16 = *MEMORY[0x1E69E9840];
  return result;
}

BOOL IMDMigrateTo10001(uint64_t a1)
{
  result = IMDSqlOperationAddColumnIfNotExistsToTableWithOperation(a1, @"message", @"balloon_bundle_id", @"STRING DEFAULT NULL");
  if (result)
  {

    return IMDSqlOperationAddColumnIfNotExistsToTableWithOperation(a1, @"message", @"payload_data", @"BLOB");
  }

  return result;
}

BOOL IMDMigrateTo10002(uint64_t a1)
{
  result = IMDSqlOperationAddColumnIfNotExistsToTableWithOperation(a1, @"attachment", @"is_sticker", @"INTEGER DEFAULT 0");
  if (result)
  {

    return IMDSqlOperationAddColumnIfNotExistsToTableWithOperation(a1, @"attachment", @"sticker_user_info", @"BLOB");
  }

  return result;
}

BOOL IMDMigrateTo10007(uint64_t a1)
{
  result = IMDSqlOperationAddColumnIfNotExistsToTableWithOperation(a1, @"message", @"associated_message_range_location", @"INTEGER DEFAULT 0");
  if (result)
  {

    return IMDSqlOperationAddColumnIfNotExistsToTableWithOperation(a1, @"message", @"associated_message_range_length", @"INTEGER DEFAULT 0");
  }

  return result;
}

BOOL IMDMigrateTo11001(uint64_t a1)
{
  result = IMDSqlOperationAddColumnIfNotExistsToTableWithOperation(a1, @"chat", @"server_change_token", @"TEXT");
  if (result)
  {

    return IMDSqlOperationAddColumnIfNotExistsToTableWithOperation(a1, @"chat", @"ck_sync_state", @"INTEGER DEFAULT 0");
  }

  return result;
}

BOOL IMDMigrateTo11005(uint64_t a1)
{
  if (!IMDSqlOperationAddColumnIfNotExistsToTableWithOperation(a1, @"message", @"ck_sync_state", @"INTEGER DEFAULT 0") || !IMDSqlOperationAddColumnIfNotExistsToTableWithOperation(a1, @"message", @"ck_record_id", @"TEXT DEFAULT NULL"))
  {
    return 0;
  }

  return IMDSqlOperationAddColumnIfNotExistsToTableWithOperation(a1, @"message", @"ck_record_change_tag", @"TEXT DEFAULT NULL");
}

BOOL IMDMigrateTo11006(uint64_t a1)
{
  result = IMDSqlOperationAddColumnIfNotExistsToTableWithOperation(a1, @"attachment", @"ck_sync_state", @"INTEGER DEFAULT 0");
  if (result)
  {

    return IMDSqlOperationAddColumnIfNotExistsToTableWithOperation(a1, @"attachment", @"ck_server_change_token_blob", @"BLOB DEFAULT NULL");
  }

  return result;
}

BOOL IMDMigrateTo11011(uint64_t a1)
{
  result = IMDSqlOperationAddColumnIfNotExistsToTableWithOperation(a1, @"chat_message_join", @"message_date", @"INTEGER DEFAULT 0");
  if (result)
  {

    return IMDSqlOperationExecuteQuery(a1, @"UPDATE chat_message_join SET message_date = (select m.date from message m where m.ROWID = message_id);", 0);
  }

  return result;
}

BOOL IMDMigrateTo11012(uint64_t a1)
{
  result = IMDSqlOperationAddColumnIfNotExistsToTableWithOperation(a1, @"attachment", @"original_guid", @"TEXT");
  if (result)
  {

    return IMDSqlOperationExecuteQuery(a1, @"update attachment set original_guid=guid;", 0);
  }

  return result;
}

BOOL IMDMigrateTo11020(uint64_t a1)
{
  v2 = IMDSqlOperationAddColumnIfNotExistsToTableWithOperation(a1, @"chat", @"sr_server_change_token", @"TEXT");
  if (v2)
  {
    IMDSqlOperationAddColumnIfNotExistsToTableWithOperation(a1, @"chat", @"sr_ck_sync_state", @"INTEGER DEFAULT 0");
  }

  return v2;
}

BOOL IMDMigrateTo11021(uint64_t a1)
{
  if (!IMDSqlOperationAddColumnIfNotExistsToTableWithOperation(a1, @"message", @"sr_ck_sync_state", @"INTEGER DEFAULT 0") || !IMDSqlOperationAddColumnIfNotExistsToTableWithOperation(a1, @"message", @"sr_ck_record_id", @"TEXT DEFAULT NULL"))
  {
    return 0;
  }

  return IMDSqlOperationAddColumnIfNotExistsToTableWithOperation(a1, @"message", @"sr_ck_record_change_tag", @"TEXT DEFAULT NULL");
}

BOOL IMDMigrateTo11022(uint64_t a1)
{
  if (!IMDSqlOperationAddColumnIfNotExistsToTableWithOperation(a1, @"attachment", @"sr_ck_record_id", @"TEXT DEFAULT NULL") || !IMDSqlOperationAddColumnIfNotExistsToTableWithOperation(a1, @"attachment", @"sr_ck_sync_state", @"INTEGER DEFAULT 0"))
  {
    return 0;
  }

  return IMDSqlOperationAddColumnIfNotExistsToTableWithOperation(a1, @"attachment", @"sr_ck_server_change_token_blob", @"BLOB DEFAULT NULL");
}

BOOL IMDMigrateTo11023(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_sharedInstance(MEMORY[0x1E69A60F0], a2, a3);
  if (!objc_msgSend_isInternalInstall(v4, v5, v6))
  {
    return 1;
  }

  return IMDSqlOperationExecuteQuery(a1, @"UPDATE chat SET room_name = chat_identifier WHERE style = 43 AND room_name is null;", 0);
}

BOOL IMDMigrateTo11024(uint64_t a1)
{
  v2 = IMDSqlOperationAddColumnIfNotExistsToTableWithOperation(a1, @"chat", @"cloudkit_record_id", @"TEXT DEFAULT NULL") && IMDSqlOperationAddColumnIfNotExistsToTableWithOperation(a1, @"chat", @"sr_cloudkit_record_id", @"TEXT DEFAULT NULL");
  v3 = IMDSqlOperationColumnExistsOnTableWithOperation(a1, @"chat", @"ck_record_system_property_blob");
  v4 = IMDSqlOperationColumnExistsOnTableWithOperation(a1, @"chat", @"sr_ck_record_system_property_blob");
  if (!v2)
  {
    return 0;
  }

  if (((v3 | v4) & 1) == 0)
  {
    return 1;
  }

  v5 = @"UPDATE chat SET ck_record_system_property_blob = NULL;";
  if ((v3 & v4) != 0)
  {
    v5 = @"UPDATE chat SET ck_record_system_property_blob = NULL, sr_ck_record_system_property_blob = NULL;";
  }

  if (v3)
  {
    v6 = v5;
  }

  else
  {
    v6 = @"UPDATE chat SET sr_ck_record_system_property_blob = NULL;";
  }

  return IMDSqlOperationExecuteQuery(a1, v6, 0);
}

BOOL IMDMigrateTo13000(uint64_t a1)
{
  result = IMDSqlOperationAddColumnIfNotExistsToTableWithOperation(a1, @"message", @"reply_to_guid", @"TEXT DEFAULT NULL");
  if (result)
  {

    return IMDSqlOperationAddColumnIfNotExistsToTableWithOperation(a1, @"message", @"sort_id", @"INTEGER DEFAULT 0");
  }

  return result;
}

uint64_t IMDMigrateTo14004(uint64_t a1)
{
  if (IMDSqlOperationColumnExistsOnTableWithOperation(a1, @"chat", @"is_filtered"))
  {
    IMDSqlOperationExecuteQuery(a1, @"UPDATE chat SET is_filtered = 1 WHERE is_filtered = 0 AND service_name = 'SMS';", 0);
  }

  return 1;
}

BOOL IMDMigrateTo15003(uint64_t a1)
{
  result = IMDSqlOperationAddColumnIfNotExistsToTableWithOperation(a1, @"message", @"was_delivered_quietly", @"INTEGER DEFAULT 0");
  if (result)
  {

    return IMDSqlOperationAddColumnIfNotExistsToTableWithOperation(a1, @"message", @"did_notify_recipient", @"INTEGER DEFAULT 0");
  }

  return result;
}

BOOL IMDMigrateTo15005(uint64_t a1)
{
  result = IMDSqlOperationAddColumnIfNotExistsToTableWithOperation(a1, @"chat", @"syndication_date", @"INTEGER DEFAULT 0");
  if (result)
  {

    return IMDSqlOperationAddColumnIfNotExistsToTableWithOperation(a1, @"chat", @"syndication_type", @"INTEGER DEFAULT 0");
  }

  return result;
}

uint64_t IMDMigrateTo15007(uint64_t a1)
{
  IMDSqlOperationExecuteQuery(a1, @"UPDATE chat SET syndication_type = 0", 0);
  IMDSqlOperationExecuteQuery(a1, @"UPDATE chat SET syndication_date = 0", 0);
  return 1;
}

uint64_t IMDMigrateTo15009(uint64_t a1)
{
  if (!IMDSqlOperationExecuteQuery(a1, @"INSERT OR REPLACE INTO kvtable (key, value) VALUES ('lastFailedMessageDate', COALESCE((SELECT m.date FROM message m WHERE m.error != 0 AND m.is_from_me == 1 AND m.is_finished == 1 ORDER BY date DESC, ROWID DESC LIMIT 1), 0)), ('lastFailedMessageRowID', COALESCE((SELECT m.ROWID FROM message m WHERE m.error != 0 AND m.is_from_me == 1 AND m.is_finished == 1 ORDER BY date DESC, ROWID DESC LIMIT 1), 0));", 0))
  {
    v2 = IMLogHandleForCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      *v4 = 0;
      _os_log_impl(&dword_1B7AD5000, v2, OS_LOG_TYPE_INFO, "Failed to assign lastFailedMessageDate with query, attempting to set to zero instead", v4, 2u);
    }

    IMDSqlOperationExecuteQuery(a1, @"INSERT OR REPLACE INTO kvtable (key, value) VALUES ('lastFailedMessageDate', 0), ('lastFailedMessageRowID', 0);", 0);
  }

  return 1;
}

uint64_t IMDMigrateTo15010(uint64_t a1)
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = sub_1B7BD5E4C;
  v4[3] = &unk_1E7CB7920;
  v4[4] = &v5;
  v4[5] = a1;
  _IMDSqlOperationRunQuery(a1, @"select name from sqlite_master where sql LIKE '%_legacy%' and type = 'index';", 0, v4);
  if (*(v6 + 24) == 1)
  {
    IMDDropAllIndexesWithOperation(a1, 1, v2);
  }

  _Block_object_dispose(&v5, 8);
  return 1;
}

void sub_1B7BD5E34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B7BD5E4C(uint64_t a1)
{
  HasRows = IMDSqlOperationHasRows(*(a1 + 40));
  v3 = IMLogHandleForCategory();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_INFO);
  if (HasRows)
  {
    if (v4)
    {
      *buf = 0;
      _os_log_impl(&dword_1B7AD5000, v3, OS_LOG_TYPE_INFO, "Found an index referencing *_legacy!", buf, 2u);
    }

    *(*(*(a1 + 32) + 8) + 24) = 1;
  }

  else if (v4)
  {
    *v5 = 0;
    _os_log_impl(&dword_1B7AD5000, v3, OS_LOG_TYPE_INFO, "Did not find index referencing *_legacy!", v5, 2u);
  }
}

uint64_t IMDMigrateTo15011(uint64_t a1)
{
  v2 = IMLogHandleForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1B7AD5000, v2, OS_LOG_TYPE_INFO, "Attempting to re-add iOS 6, 7 and 8 column additions", buf, 2u);
  }

  IMDSqlOperationAddColumnIfNotExistsToTableWithOperation(a1, @"message", @"item_type", @"INTEGER DEFAULT 0");
  IMDSqlOperationAddColumnIfNotExistsToTableWithOperation(a1, @"message", @"other_handle", @"INTEGER DEFAULT -1");
  IMDSqlOperationAddColumnIfNotExistsToTableWithOperation(a1, @"message", @"group_title", @"TEXT");
  IMDSqlOperationAddColumnIfNotExistsToTableWithOperation(a1, @"message", @"group_action_type", @"INTEGER DEFAULT 0");
  IMDSqlOperationAddColumnIfNotExistsToTableWithOperation(a1, @"message", @"share_status", @"INTEGER");
  IMDSqlOperationAddColumnIfNotExistsToTableWithOperation(a1, @"message", @"share_direction", @"INTEGER");
  IMDSqlOperationAddColumnIfNotExistsToTableWithOperation(a1, @"message", @"is_audio_message", @"INTEGER DEFAULT 0");
  IMDSqlOperationAddColumnIfNotExistsToTableWithOperation(a1, @"message", @"is_played", @"INTEGER DEFAULT 0");
  IMDSqlOperationAddColumnIfNotExistsToTableWithOperation(a1, @"message", @"date_played", @"INTEGER");
  IMDSqlOperationAddColumnIfNotExistsToTableWithOperation(a1, @"message", @"is_expirable", @"INTEGER DEFAULT 0");
  IMDSqlOperationAddColumnIfNotExistsToTableWithOperation(a1, @"message", @"expire_state", @"INTEGER DEFAULT 0");
  IMDSqlOperationAddColumnIfNotExistsToTableWithOperation(a1, @"message", @"message_action_type", @"INTEGER DEFAULT 0");
  IMDSqlOperationAddColumnIfNotExistsToTableWithOperation(a1, @"message", @"message_source", @"INTEGER DEFAULT 0");
  IMDSqlOperationAddColumnIfNotExistsToTableWithOperation(a1, @"chat", @"group_id", @"TEXT");
  IMDSqlOperationAddColumnIfNotExistsToTableWithOperation(a1, @"chat", @"display_name", @"TEXT");
  IMDSqlOperationAddColumnIfNotExistsToTableWithOperation(a1, @"attachment", @"user_info", @"BLOB");
  IMDSqlOperationAddColumnIfNotExistsToTableWithOperation(a1, @"attachment", @"transfer_name", @"BLOB");
  IMDSqlOperationAddColumnIfNotExistsToTableWithOperation(a1, @"attachment", @"total_bytes", @"INTEGER DEFAULT -1");
  v3 = IMLogHandleForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v5 = 0;
    _os_log_impl(&dword_1B7AD5000, v3, OS_LOG_TYPE_INFO, "Finished re-adding iOS 6, 7 and 8 column additions", v5, 2u);
  }

  return 1;
}

BOOL IMDMigrateTo16000(uint64_t a1)
{
  result = IMDSqlOperationAddColumnIfNotExistsToTableWithOperation(a1, @"message", @"date_retracted", @"INTEGER DEFAULT 0");
  if (result)
  {

    return IMDSqlOperationAddColumnIfNotExistsToTableWithOperation(a1, @"message", @"date_edited", @"INTEGER DEFAULT 0");
  }

  return result;
}

BOOL IMDMigrateTo16008(uint64_t a1)
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v7 = 0;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = sub_1B7BD639C;
  v3[3] = &unk_1E7CB7920;
  v3[4] = &v4;
  v3[5] = a1;
  _IMDSqlOperationRunQuery(a1, @"select name from sqlite_master where sql LIKE '%_legacy%';", 0, v3);
  v1 = *(v5 + 24);
  _Block_object_dispose(&v4, 8);
  return (v1 & 1) == 0;
}

void sub_1B7BD6384(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B7BD639C(uint64_t a1)
{
  HasRows = IMDSqlOperationHasRows(*(a1 + 40));
  v3 = IMLogHandleForCategory();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_INFO);
  if (HasRows)
  {
    if (v4)
    {
      *buf = 0;
      _os_log_impl(&dword_1B7AD5000, v3, OS_LOG_TYPE_INFO, "Found table referencing *_legacy!", buf, 2u);
    }

    *(*(*(a1 + 32) + 8) + 24) = 1;
  }

  else if (v4)
  {
    *v5 = 0;
    _os_log_impl(&dword_1B7AD5000, v3, OS_LOG_TYPE_INFO, "Did not find any table referencing *_legacy!", v5, 2u);
  }
}

uint64_t IMDMigrateTo16200(sqlite3_stmt **a1)
{
  v30 = *MEMORY[0x1E69E9840];
  v20 = a1;
  Rows = _IMDSqlOperationGetRows(a1, @"SELECT ROWID, id FROM handle");
  IMCountryCodeForIncomingTextMessage();
  v22 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v3 = objc_msgSend_countByEnumeratingWithState_objects_count_(Rows, v2, &v23, v29, 16);
  if (v3)
  {
    v6 = v3;
    v7 = *v24;
    do
    {
      v8 = 0;
      do
      {
        if (*v24 != v7)
        {
          objc_enumerationMutation(Rows);
        }

        v9 = *(*(&v23 + 1) + 8 * v8);
        v10 = objc_msgSend_objectForKeyedSubscript_(v9, v4, @"id", v20);
        if (v10)
        {
          v11 = v10;
          if (MEMORY[0x1B8CAF9C0]())
          {
            if (!IMCountryCodeForNumber())
            {
              v12 = objc_msgSend_objectForKeyedSubscript_(v9, v4, @"ROWID");
              v13 = IMInternationalForPhoneNumberWithOptions();
              if (v13)
              {
                v14 = v13;
                if ((objc_msgSend_isEqualToString_(v13, v4, v11) & 1) == 0)
                {
                  objc_msgSend_setObject_forKeyedSubscript_(v22, v4, v14, v12);
                }
              }
            }
          }
        }

        ++v8;
      }

      while (v6 != v8);
      v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(Rows, v4, &v23, v29, 16);
      v6 = v15;
    }

    while (v15);
  }

  if (objc_msgSend_count(v22, v4, v5, v20))
  {
    updated = IMDHandleCanonicalizedIDsBulkUpdateQuery(v22);
    v17 = IMLogHandleForCategory();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v28 = updated;
      _os_log_impl(&dword_1B7AD5000, v17, OS_LOG_TYPE_INFO, "IMDMigrateTo16200 canonicalize handles with query: %@", buf, 0xCu);
    }

    IMDSqlOperationExecuteQuery(v21, updated, 0);
    if (updated)
    {
    }
  }

  if (Rows)
  {
  }

  if (v22)
  {
  }

  v18 = *MEMORY[0x1E69E9840];
  return 1;
}

BOOL IMDMigrateTo17008(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_sharedInstance(MEMORY[0x1E69A60F0], a2, a3);
  if (!objc_msgSend_isInternalInstall(v4, v5, v6))
  {
    return 1;
  }

  return IMDSqlOperationAddColumnIfNotExistsToTableWithOperation(a1, @"message", @"is_scheduled", @"INTEGER DEFAULT 0");
}

uint64_t IMDMigrateTo17012(uint64_t a1)
{
  IMDSqlOperationExecuteQuery(a1, @"INSERT INTO deleted_messages (guid) SELECT guid FROM message WHERE error != 0 AND ROWID NOT IN (SELECT message_id FROM chat_message_join);", 0);
  IMDSqlOperationExecuteQuery(a1, @"INSERT INTO sync_deleted_messages (guid, recordID) SELECT guid, ck_record_id FROM message WHERE error != 0 AND ROWID NOT IN (SELECT message_id FROM chat_message_join);", 0);
  IMDSqlOperationExecuteQuery(a1, @"DELETE FROM message WHERE associated_message_guid IS NOT NULL AND LENGTH(SUBSTR(associated_message_guid, -36)) = 36 AND SUBSTR(associated_message_guid, -36) IN (SELECT guid FROM message WHERE associated_message_guid IS NULL AND error != 0 AND ROWID NOT IN (SELECT message_id FROM chat_message_join))", 0);
  IMDSqlOperationExecuteQuery(a1, @"DELETE FROM message WHERE error != 0 AND ROWID NOT IN (SELECT message_id FROM chat_message_join);", 0);
  return 1;
}

BOOL IMDMigrateTo18001(uint64_t a1)
{
  result = IMDSqlOperationAddColumnIfNotExistsToTableWithOperation(a1, @"message", @"is_pending_satellite_send", @"INTEGER DEFAULT 0");
  if (result)
  {

    return IMDSqlOperationAddColumnIfNotExistsToTableWithOperation(a1, @"message", @"needs_relay", @"INTEGER DEFAULT 0");
  }

  return result;
}

BOOL IMDMigrateTo18005(uint64_t a1)
{
  if (!IMDSqlOperationAddColumnIfNotExistsToTableWithOperation(a1, @"message", @"schedule_state", @"INTEGER DEFAULT 0") || !IMDSqlOperationExecuteQuery(a1, @"UPDATE message SET schedule_state = 2 WHERE schedule_type = 2;", 0))
  {
    return 0;
  }

  return IMDSqlOperationExecuteQuery(a1, @"UPDATE message SET schedule_state = 3, schedule_type = 2 WHERE schedule_type = 10;", 0);
}

BOOL IMDMigrateTo18011(uint64_t a1)
{
  v2 = IMDSqlOperationExecuteQuery(a1, @"DROP INDEX IF EXISTS message_idx_undelivered_one_to_one_imessage;", 0);
  IMDCreateIndexesWithOperation(a1, 1);
  return v2;
}

uint64_t IMDMigrateTo18012(uint64_t a1)
{
  if (IMDSqlOperationColumnExistsOnTableWithOperation(a1, @"chat", @"is_filtered"))
  {
    IMDSqlOperationExecuteQuery(a1, @"UPDATE chat SET is_filtered = 1 WHERE is_filtered = 0;", 0);
  }

  return 1;
}

BOOL IMDMigrateTo18015(uint64_t a1)
{
  v2 = objc_alloc(MEMORY[0x1E696AEC0]);
  v5 = objc_msgSend_now(MEMORY[0x1E695DF00], v3, v4);
  v8 = objc_msgSend___im_nanosecondTimeInterval(v5, v6, v7);
  v10 = objc_msgSend_initWithFormat_(v2, v9, @"UPDATE message SET is_read = 1, date_read = %lld WHERE (is_read == 0 AND is_finished == 1 AND is_from_me == 0 AND item_type == 1 AND is_system_message == 0);", v8);
  v11 = IMDSqlOperationExecuteQuery(a1, v10, 0);

  return v11;
}

BOOL IMDMigrateTo18017(uint64_t a1)
{
  v2 = IMDSqlOperationAddColumnIfNotExistsToTableWithOperation(a1, @"attachment", @"preview_generation_state", @"INTEGER DEFAULT 0");
  if (v2)
  {
    IMDSqlOperationExecuteQuery(a1, @"UPDATE attachment SET preview_generation_state = 3;", 0);
  }

  return v2;
}

BOOL IMDMigrateTo19004(uint64_t a1, int a2)
{
  if (a2 < 19000)
  {
    return 1;
  }

  result = IMDSqlOperationExecuteQuery(a1, @"DROP TABLE IF EXISTS message_processing_task;", 0);
  if (result)
  {
    result = IMDCreateTableWithNameWithOperation(a1, @"message_processing_task", 0);
    if (result)
    {
      return 1;
    }
  }

  return result;
}

uint64_t sub_1B7BD6D70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 <= 0)
  {
    v3 = 0;
  }

  else
  {
    v3 = 2 * a3 - 1;
  }

  return MEMORY[0x1EEE66B58](&stru_1F2FA9728, sel_stringByPaddingToLength_withString_startingAtIndex_, v3);
}

uint64_t IMDMessageRecordAddMessageRecord(uint64_t a1)
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v7 = 0;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = sub_1B7BD6E58;
  v3[3] = &unk_1E7CB7368;
  v3[4] = &v4;
  v3[5] = a1;
  _IMDPerformLockedMessageStoreBlock(v3);
  v1 = *(v5 + 24);
  _Block_object_dispose(&v4, 8);
  return v1;
}

void sub_1B7BD6E40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1B7BD6E58(uint64_t result)
{
  if (*(result + 40))
  {
    v1 = result;
    CSDBRecordStoreAddRecord();
    result = CSDBRecordSaveStore();
    *(*(*(v1 + 32) + 8) + 24) = result;
  }

  return result;
}

void IMDMessageRecordUnassociateMessageWithGUIDFromAttachmentWithGUID(uint64_t a1, uint64_t a2)
{
  v13 = *MEMORY[0x1E69E9840];
  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412546;
      v10 = a1;
      v11 = 2112;
      v12 = a2;
      _os_log_impl(&dword_1B7AD5000, v4, OS_LOG_TYPE_DEBUG, "IMDMessageRecordUnassociateMessageWithGUIDFromAttachmentWithGUID [MessageGUID: %@] [AttachmentGUID: %@", buf, 0x16u);
    }
  }

  if (!a1)
  {
    v5 = IMDatabaseMessageEventLogHandle();
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      goto LABEL_14;
    }

    *buf = 0;
    v6 = "Cannot unassociate attachment from empty message GUID";
    goto LABEL_13;
  }

  if (!a2)
  {
    v5 = IMDatabaseMessageEventLogHandle();
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      goto LABEL_14;
    }

    *buf = 0;
    v6 = "Cannot unassociate attachment with empty attachment GUID";
LABEL_13:
    _os_log_impl(&dword_1B7AD5000, v5, OS_LOG_TYPE_INFO, v6, buf, 2u);
    goto LABEL_14;
  }

  if (IMDIsRunningInDatabaseServerProcess())
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = sub_1B7BD7068;
    v8[3] = &unk_1E7CB81C8;
    v8[4] = a1;
    v8[5] = a2;
    _IMDPerformLockedStatementBlockWithQuery(@"DELETE FROM message_attachment_join WHERE   ROWID IN(    SELECT       j.ROWID     FROM       message_attachment_join j     INNER JOIN message m ON j.message_id = m.ROWID     INNER JOIN attachment a ON j.attachment_id = a.ROWID     WHERE       m.guid = ?       AND a.guid = ?  ) ", v8);
  }

  else
  {
    __syncXPCIMDMessageRecordUnassociateMessageWithGUIDFromAttachmentWithGUID_IPCAction(0, a1, a2);
  }

LABEL_14:
  v7 = *MEMORY[0x1E69E9840];
}

void sub_1B7BD7068(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  CSDBSqliteBindTextFromCFString();
  v3 = *(a1 + 40);
  CSDBSqliteBindTextFromCFString();
  v4 = CSDBSqliteStatementPerform();
  if (v4 != 101)
  {
    v5 = v4;
    if (IMOSLoggingEnabled())
    {
      v6 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
      {
        v8[0] = 67109120;
        v8[1] = v5;
        _os_log_impl(&dword_1B7AD5000, v6, OS_LOG_TYPE_DEBUG, "SQLite returned %d from IMDChatRecordAddMessageIfNeeded", v8, 8u);
      }
    }
  }

  v7 = *MEMORY[0x1E69E9840];
}

void IMDMessageRecordDeleteOrphanedMessages()
{
  v12 = *MEMORY[0x1E69E9840];
  if (IMDIsRunningInDatabaseServerProcess())
  {
    _IMDPerformLockedStatementBlockWithQuery(@"DELETE FROM message WHERE message.ROWID NOT IN (SELECT message_id from chat_message_join);", &unk_1F2FA0610);
    v0 = IMDMessageRecordCountChangesUnlocked();
    v1 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 134217984;
      v11 = v0;
      _os_log_impl(&dword_1B7AD5000, v1, OS_LOG_TYPE_DEFAULT, "Deleted %llu orphaned messages", &v10, 0xCu);
    }

    v4 = objc_msgSend_sharedInstance(MEMORY[0x1E69A8168], v2, v3);
    v6 = objc_msgSend_numberWithLongLong_(MEMORY[0x1E696AD98], v5, v0);
    objc_msgSend_trackDeleteMessages_sourceType_(v4, v7, v6, 6);
    v8 = *MEMORY[0x1E69E9840];
  }

  else
  {
    v9 = *MEMORY[0x1E69E9840];

    __syncXPCIMDMessageRecordDeleteOrphanedMessages_IPCAction(0);
  }
}

void sub_1B7BD72B8()
{
  v0 = IMDatabaseLogHandle();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_INFO))
  {
    *v1 = 0;
    _os_log_impl(&dword_1B7AD5000, v0, OS_LOG_TYPE_INFO, "Orphaned messages cleanup complete", v1, 2u);
  }
}

uint64_t IMDMessageRecordCountChangesUnlocked()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v6 = 0;
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = sub_1B7BDFC5C;
  v2[3] = &unk_1E7CB7390;
  v2[4] = &v3;
  _IMDPerformLockedStatementBlockWithQuery(@"SELECT changes();", v2);
  v0 = v4[3];
  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1B7BD73C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void IMDMessageRecordAssociateMessageWithGUIDToAttachmentWithGUID(uint64_t a1, uint64_t a2)
{
  v12 = *MEMORY[0x1E69E9840];
  if (IMDIsRunningInDatabaseServerProcess())
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = sub_1B7BD7560;
    v7[3] = &unk_1E7CB75B0;
    v7[4] = a2;
    v7[5] = a1;
    if (IMOSLoggingEnabled())
    {
      v4 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412546;
        v9 = a1;
        v10 = 2112;
        v11 = a2;
        _os_log_impl(&dword_1B7AD5000, v4, OS_LOG_TYPE_DEBUG, "IMDMessageRecordAssociateMessageWithGUIDToAttachmentWithGUID [MessageGUID: %@] [AttachmentGUID: %@", buf, 0x16u);
      }
    }

    _IMDPerformBlock(v7);
    v5 = *MEMORY[0x1E69E9840];
  }

  else
  {
    v6 = *MEMORY[0x1E69E9840];

    __syncXPCIMDMessageRecordAssociateMessageWithGUIDToAttachmentWithGUID_IPCAction(0, a1, a2);
  }
}

void sub_1B7BD7560(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (!v2 || !CFStringGetLength(v2))
  {
    v7 = IMDatabaseMessageEventLogHandle();
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      return;
    }

    v11 = 0;
    v8 = "Unable to associate message and attachment, empty attachment GUID.";
    v9 = &v11;
LABEL_12:
    _os_log_impl(&dword_1B7AD5000, v7, OS_LOG_TYPE_INFO, v8, v9, 2u);
    return;
  }

  v3 = *(a1 + 40);
  if (!v3 || !CFStringGetLength(v3))
  {
    v7 = IMDatabaseMessageEventLogHandle();
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      return;
    }

    v10 = 0;
    v8 = "Unable to associate message and attachment, empty message GUID.";
    v9 = &v10;
    goto LABEL_12;
  }

  v4 = IMDAttachmentRecordCopyAttachmentForGUIDUnlocked(*(a1 + 32));
  v5 = IMDMessageRecordCopyMessageForGUIDUnlocked(*(a1 + 40));
  v6 = v5;
  if (v4 && v5)
  {
    IMDMessageRecordAddAttachmentIfNeededUnlocked(v5, v4);
  }

  else if (!v5)
  {
    goto LABEL_16;
  }

  CFRelease(v6);
LABEL_16:
  if (v4)
  {

    CFRelease(v4);
  }
}

const __CFString *IMDMessageRecordCopyMessageForGUIDUnlocked(const __CFString *a1)
{
  v9 = *MEMORY[0x1E69E9840];
  if (IMOSLoggingEnabled())
  {
    v2 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = a1;
      _os_log_impl(&dword_1B7AD5000, v2, OS_LOG_TYPE_DEBUG, "IMDMessageRecordCopyMessageForGUID [%@]", &buf, 0xCu);
    }
  }

  if (a1)
  {
    if (CFStringGetLength(a1))
    {
      *&buf = 0;
      *(&buf + 1) = &buf;
      v7 = 0x2020000000;
      v8 = 0;
      v5[0] = MEMORY[0x1E69E9820];
      v5[1] = 3221225472;
      v5[2] = sub_1B7BD8D7C;
      v5[3] = &unk_1E7CB7520;
      v5[4] = &buf;
      v5[5] = a1;
      _IMDPerformLockedStatementBlockWithQuery(@"SELECT ROWID, guid, text, replace, service_center, handle_id, subject, country, attributedBody, version, type, service, account, account_guid, error, date, date_read, date_delivered, is_delivered, is_finished, is_emote, is_from_me, is_empty, is_delayed, is_auto_reply, is_prepared, is_read, is_system_message, is_sent, has_dd_results, is_service_message, is_forward, was_downgraded, is_archive, cache_has_attachments, cache_roomnames, was_data_detected, was_deduplicated, is_audio_message, is_played, date_played, item_type, other_handle, group_title, group_action_type, share_status, share_direction, is_expirable, expire_state, message_action_type, message_source, associated_message_guid, associated_message_type, balloon_bundle_id, payload_data, expressive_send_style_id, associated_message_range_location, associated_message_range_length, time_expressive_send_played, message_summary_info, ck_sync_state, ck_record_id, ck_record_change_tag, destination_caller_id, is_corrupt, reply_to_guid, sort_id, is_spam, has_unseen_mention, thread_originator_guid, thread_originator_part, syndication_ranges, synced_syndication_ranges, was_delivered_quietly, did_notify_recipient, date_retracted, date_edited, date_recovered, was_detonated, part_count, is_stewie, is_sos, is_critical, bia_reference_id, is_kt_verified, fallback_hash, associated_message_emoji, is_pending_satellite_send, needs_relay, schedule_type, schedule_state, sent_or_received_off_grid, is_time_sensitive, ck_chat_id FROM message WHERE guid = ? ORDER BY message.ROWID ASC;", v5);
      a1 = *(*(&buf + 1) + 24);
      _Block_object_dispose(&buf, 8);
    }

    else
    {
      a1 = 0;
    }
  }

  v3 = *MEMORY[0x1E69E9840];
  return a1;
}

void sub_1B7BD77C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

const __CFString *IMDMessageRecordCopyMessagesForAssociatedGUID(const __CFString *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  if (IMOSLoggingEnabled())
  {
    v2 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = a1;
      _os_log_impl(&dword_1B7AD5000, v2, OS_LOG_TYPE_DEBUG, "IMDMessageRecordCopyMessagesForAssociatedGUID [%@]", &buf, 0xCu);
    }
  }

  if (a1)
  {
    if (CFStringGetLength(a1))
    {
      *&buf = 0;
      *(&buf + 1) = &buf;
      v8 = 0x2020000000;
      v9 = 0;
      if (IMDIsRunningInDatabaseServerProcess())
      {
        v6[0] = MEMORY[0x1E69E9820];
        v6[1] = 3221225472;
        v6[2] = sub_1B7BD7A04;
        v6[3] = &unk_1E7CB7520;
        v6[4] = &buf;
        v6[5] = a1;
        _IMDPerformLockedStatementBlockWithQuery(@"SELECT ROWID, guid, text, replace, service_center, handle_id, subject, country, attributedBody, version, type, service, account, account_guid, error, date, date_read, date_delivered, is_delivered, is_finished, is_emote, is_from_me, is_empty, is_delayed, is_auto_reply, is_prepared, is_read, is_system_message, is_sent, has_dd_results, is_service_message, is_forward, was_downgraded, is_archive, cache_has_attachments, cache_roomnames, was_data_detected, was_deduplicated, is_audio_message, is_played, date_played, item_type, other_handle, group_title, group_action_type, share_status, share_direction, is_expirable, expire_state, message_action_type, message_source, associated_message_guid, associated_message_type, balloon_bundle_id, payload_data, expressive_send_style_id, associated_message_range_location, associated_message_range_length, time_expressive_send_played, message_summary_info, ck_sync_state, ck_record_id, ck_record_change_tag, destination_caller_id, is_corrupt, reply_to_guid, sort_id, is_spam, has_unseen_mention, thread_originator_guid, thread_originator_part, syndication_ranges, synced_syndication_ranges, was_delivered_quietly, did_notify_recipient, date_retracted, date_edited, date_recovered, was_detonated, part_count, is_stewie, is_sos, is_critical, bia_reference_id, is_kt_verified, fallback_hash, associated_message_emoji, is_pending_satellite_send, needs_relay, schedule_type, schedule_state, sent_or_received_off_grid, is_time_sensitive, ck_chat_id FROM message WHERE associated_message_guid = ? ORDER BY message.ROWID ASC;", v6);
      }

      else
      {
        v5[0] = MEMORY[0x1E69E9820];
        v5[1] = 3221225472;
        v5[2] = sub_1B7BD7B3C;
        v5[3] = &unk_1E7CB6838;
        v5[4] = &buf;
        __syncXPCIMDMessageRecordCopyMessagesForAssociatedGUID_IPCAction(v5, a1);
      }

      a1 = *(*(&buf + 1) + 24);
      _Block_object_dispose(&buf, 8);
    }

    else
    {
      a1 = 0;
    }
  }

  v3 = *MEMORY[0x1E69E9840];
  return a1;
}

void sub_1B7BD7A04(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = CSDBSqliteBindTextFromCFString();
  sub_1B7AEAEE4(v3, v4, v5);
  v6 = CSDBRecordStoreProcessStatement();
  if (v6)
  {
    v7 = v6;
    Count = CFArrayGetCount(v6);
    if (Count)
    {
      v9 = Count;
      v10 = 0;
      v11 = *MEMORY[0x1E695E480];
      v12 = MEMORY[0x1E695E9C0];
      do
      {
        CFArrayGetValueAtIndex(v7, v10);
        ID = CSDBRecordGetID();
        v14 = IMDMessageRecordCreateFromRecordIDUnlocked(v11, ID);
        v15 = *(*(a1 + 32) + 8);
        Mutable = *(v15 + 24);
        if (!Mutable)
        {
          Mutable = CFArrayCreateMutable(v11, v9, v12);
          v15 = *(*(a1 + 32) + 8);
        }

        *(v15 + 24) = Mutable;
        if (v14)
        {
          CFArrayAppendValue(*(*(*(a1 + 32) + 8) + 24), v14);
          CFRelease(v14);
        }

        ++v10;
      }

      while (v9 != v10);
    }

    CFRelease(v7);
  }
}

xpc_object_t sub_1B7BD7B3C(uint64_t a1, xpc_object_t xdict)
{
  result = xpc_dictionary_get_value(xdict, "array_result");
  if (result)
  {
    applier[0] = MEMORY[0x1E69E9820];
    applier[1] = 3221225472;
    applier[2] = sub_1B7BD7BD0;
    applier[3] = &unk_1E7CB6810;
    applier[4] = *(a1 + 32);
    return xpc_array_apply(result, applier);
  }

  return result;
}

uint64_t sub_1B7BD7BD0(uint64_t a1, uint64_t a2, void *a3)
{
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    *(*(*(a1 + 32) + 8) + 24) = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
  }

  v5 = _IMDCopyIMDMessageRecordFromXPCObjectClient(a3);
  if (v5)
  {
    v6 = v5;
    CFArrayAppendValue(*(*(*(a1 + 32) + 8) + 24), v5);
    CFRelease(v6);
  }

  return 1;
}

xpc_object_t sub_1B7BD7C54(uint64_t a1, xpc_object_t xdict)
{
  result = xpc_dictionary_get_value(xdict, "array_result");
  if (result)
  {
    applier[0] = MEMORY[0x1E69E9820];
    applier[1] = 3221225472;
    applier[2] = sub_1B7BD7CE8;
    applier[3] = &unk_1E7CB6810;
    applier[4] = *(a1 + 32);
    return xpc_array_apply(result, applier);
  }

  return result;
}

uint64_t sub_1B7BD7CE8(uint64_t a1, uint64_t a2, void *a3)
{
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    *(*(*(a1 + 32) + 8) + 24) = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
  }

  v5 = objc_autoreleasePoolPush();
  v6 = _IMDCopyIMDMessageRecordFromXPCObjectClient(a3);
  if (v6)
  {
    v7 = v6;
    CFArrayAppendValue(*(*(*(a1 + 32) + 8) + 24), v6);
    CFRelease(v7);
  }

  objc_autoreleasePoolPop(v5);
  return 1;
}

uint64_t IMDMessageRecordCopyLastReceivedMessage()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v7 = 0;
  if (IMDIsRunningInDatabaseServerProcess())
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = sub_1B7BD7EB4;
    v3[3] = &unk_1E7CB7390;
    v3[4] = &v4;
    _IMDPerformLockedStatementBlockWithQuery(@"SELECT ROWID, guid, text, replace, service_center, handle_id, subject, country, attributedBody, version, type, service, account, account_guid, error, date, date_read, date_delivered, is_delivered, is_finished, is_emote, is_from_me, is_empty, is_delayed, is_auto_reply, is_prepared, is_read, is_system_message, is_sent, has_dd_results, is_service_message, is_forward, was_downgraded, is_archive, cache_has_attachments, cache_roomnames, was_data_detected, was_deduplicated, is_audio_message, is_played, date_played, item_type, other_handle, group_title, group_action_type, share_status, share_direction, is_expirable, expire_state, message_action_type, message_source, associated_message_guid, associated_message_type, balloon_bundle_id, payload_data, expressive_send_style_id, associated_message_range_location, associated_message_range_length, time_expressive_send_played, message_summary_info, ck_sync_state, ck_record_id, ck_record_change_tag, destination_caller_id, is_corrupt, reply_to_guid, sort_id, is_spam, has_unseen_mention, thread_originator_guid, thread_originator_part, syndication_ranges, synced_syndication_ranges, was_delivered_quietly, did_notify_recipient, date_retracted, date_edited, date_recovered, was_detonated, part_count, is_stewie, is_sos, is_critical, bia_reference_id, is_kt_verified, fallback_hash, associated_message_emoji, is_pending_satellite_send, needs_relay, schedule_type, schedule_state, sent_or_received_off_grid, is_time_sensitive, ck_chat_id FROM message INNER JOIN chat_message_join AS cmj ON message.ROWID = cmj.message_id WHERE error == 0 AND is_from_me == 0 AND is_finished == 1 ORDER BY date DESC, ROWID DESC LIMIT 1;", v3);
  }

  else
  {
    v2[0] = MEMORY[0x1E69E9820];
    v2[1] = 3221225472;
    v2[2] = sub_1B7BD7FF4;
    v2[3] = &unk_1E7CB6838;
    v2[4] = &v4;
    __syncXPCIMDMessageRecordCopyLastReceivedMessage_IPCAction(v2);
  }

  v0 = v5[3];
  _Block_object_dispose(&v4, 8);
  return v0;
}

void sub_1B7BD7EB4(uint64_t a1, const char *a2, uint64_t a3)
{
  v10 = *MEMORY[0x1E69E9840];
  sub_1B7AEAEE4(a1, a2, a3);
  v4 = CSDBRecordStoreProcessStatement();
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v8 = 138412290;
      v9 = v4;
      _os_log_impl(&dword_1B7AD5000, v5, OS_LOG_TYPE_DEBUG, "results from last received: %@", &v8, 0xCu);
    }
  }

  if (v4)
  {
    if (CFArrayGetCount(v4))
    {
      CFArrayGetValueAtIndex(v4, 0);
      ID = CSDBRecordGetID();
      *(*(*(a1 + 32) + 8) + 24) = IMDMessageRecordCreateFromRecordIDUnlocked(*MEMORY[0x1E695E480], ID);
    }

    CFRelease(v4);
  }

  v7 = *MEMORY[0x1E69E9840];
}

uint64_t sub_1B7BD7FF4(uint64_t a1, void *a2)
{
  result = _IMDCopyIMDMessageRecordFromXPCObjectClient(a2);
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t IMDMessageRecordCopyLastReceivedMessageLimit(int64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = IMDatabaseLogHandle();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    LODWORD(buf) = 134217984;
    *(&buf + 4) = a1;
    _os_log_impl(&dword_1B7AD5000, v2, OS_LOG_TYPE_INFO, "IMDMessageRecordCopyLastReceivedMessageLimit with limit %lld", &buf, 0xCu);
  }

  if ((a1 - 51) >= 0xFFFFFFFFFFFFFFCELL)
  {
    *&buf = 0;
    *(&buf + 1) = &buf;
    v11 = 0x2020000000;
    Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
    if (IMDIsRunningInDatabaseServerProcess())
    {
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = sub_1B7BD824C;
      v9[3] = &unk_1E7CB7520;
      v9[4] = &buf;
      v9[5] = a1;
      _IMDPerformLockedStatementBlockWithQuery(@"SELECT ROWID, guid, text, replace, service_center, handle_id, subject, country, attributedBody, version, type, service, account, account_guid, error, date, date_read, date_delivered, is_delivered, is_finished, is_emote, is_from_me, is_empty, is_delayed, is_auto_reply, is_prepared, is_read, is_system_message, is_sent, has_dd_results, is_service_message, is_forward, was_downgraded, is_archive, cache_has_attachments, cache_roomnames, was_data_detected, was_deduplicated, is_audio_message, is_played, date_played, item_type, other_handle, group_title, group_action_type, share_status, share_direction, is_expirable, expire_state, message_action_type, message_source, associated_message_guid, associated_message_type, balloon_bundle_id, payload_data, expressive_send_style_id, associated_message_range_location, associated_message_range_length, time_expressive_send_played, message_summary_info, ck_sync_state, ck_record_id, ck_record_change_tag, destination_caller_id, is_corrupt, reply_to_guid, sort_id, is_spam, has_unseen_mention, thread_originator_guid, thread_originator_part, syndication_ranges, synced_syndication_ranges, was_delivered_quietly, did_notify_recipient, date_retracted, date_edited, date_recovered, was_detonated, part_count, is_stewie, is_sos, is_critical, bia_reference_id, is_kt_verified, fallback_hash, associated_message_emoji, is_pending_satellite_send, needs_relay, schedule_type, schedule_state, sent_or_received_off_grid, is_time_sensitive, ck_chat_id FROM message INNER JOIN chat_message_join AS cmj ON message.ROWID = cmj.message_id WHERE error == 0 AND is_from_me == 0 AND item_type == 0 AND is_finished == 1 ORDER BY date DESC, ROWID DESC LIMIT ?;", v9);
    }

    else
    {
      v4 = IMDatabaseLogHandle();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        *v8 = 0;
        _os_log_impl(&dword_1B7AD5000, v4, OS_LOG_TYPE_INFO, "IMDMessageRecordCopyLastReceivedMessageLimit syncXPC", v8, 2u);
      }

      v7[0] = MEMORY[0x1E69E9820];
      v7[1] = 3221225472;
      v7[2] = sub_1B7BD834C;
      v7[3] = &unk_1E7CB6838;
      v7[4] = &buf;
      __syncXPCIMDMessageRecordCopyLastReceivedMessageLimit_IPCAction(v7, a1);
    }

    v3 = *(*(&buf + 1) + 24);
    _Block_object_dispose(&buf, 8);
  }

  else
  {
    v3 = 0;
  }

  v5 = *MEMORY[0x1E69E9840];
  return v3;
}

void sub_1B7BD824C(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = CSDBSqliteBindInt64();
  sub_1B7AEAEE4(v3, v4, v5);
  v6 = CSDBRecordStoreProcessStatement();
  if (v6)
  {
    v7 = v6;
    if (CFArrayGetCount(v6) >= 1)
    {
      v8 = 0;
      v9 = *MEMORY[0x1E695E480];
      do
      {
        CFArrayGetValueAtIndex(v7, v8);
        ID = CSDBRecordGetID();
        v11 = IMDMessageRecordCreateFromRecordIDUnlocked(v9, ID);
        if (v11)
        {
          v12 = v11;
          CFArrayAppendValue(*(*(*(a1 + 32) + 8) + 24), v11);
          CFRelease(v12);
        }

        ++v8;
      }

      while (v8 < CFArrayGetCount(v7));
    }

    CFRelease(v7);
  }
}

xpc_object_t sub_1B7BD834C(uint64_t a1, xpc_object_t xdict)
{
  result = xpc_dictionary_get_value(xdict, "array_result");
  if (result)
  {
    applier[0] = MEMORY[0x1E69E9820];
    applier[1] = 3221225472;
    applier[2] = sub_1B7BD83E0;
    applier[3] = &unk_1E7CB6810;
    applier[4] = *(a1 + 32);
    return xpc_array_apply(result, applier);
  }

  return result;
}

uint64_t sub_1B7BD83E0(uint64_t a1, uint64_t a2, void *a3)
{
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    *(*(*(a1 + 32) + 8) + 24) = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
  }

  v5 = _IMDCopyIMDMessageRecordFromXPCObjectClient(a3);
  if (v5)
  {
    v6 = v5;
    CFArrayAppendValue(*(*(*(a1 + 32) + 8) + 24), v5);
    CFRelease(v6);
  }

  return 1;
}

uint64_t IMDMessageRecordCopyMessageForRowID(int64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  if (IMOSLoggingEnabled())
  {
    v2 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
    {
      LODWORD(buf) = 134217984;
      *(&buf + 4) = a1;
      _os_log_impl(&dword_1B7AD5000, v2, OS_LOG_TYPE_DEBUG, "IMDMessageRecordCopyMessageForRowID [%lld]", &buf, 0xCu);
    }
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v9 = 0x2020000000;
  v10 = 0;
  if (IMDIsRunningInDatabaseServerProcess())
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = sub_1B7BD863C;
    v7[3] = &unk_1E7CB7520;
    v7[4] = &buf;
    v7[5] = a1;
    _IMDPerformLockedStatementBlockWithQuery(@"SELECT ROWID, guid, text, replace, service_center, handle_id, subject, country, attributedBody, version, type, service, account, account_guid, error, date, date_read, date_delivered, is_delivered, is_finished, is_emote, is_from_me, is_empty, is_delayed, is_auto_reply, is_prepared, is_read, is_system_message, is_sent, has_dd_results, is_service_message, is_forward, was_downgraded, is_archive, cache_has_attachments, cache_roomnames, was_data_detected, was_deduplicated, is_audio_message, is_played, date_played, item_type, other_handle, group_title, group_action_type, share_status, share_direction, is_expirable, expire_state, message_action_type, message_source, associated_message_guid, associated_message_type, balloon_bundle_id, payload_data, expressive_send_style_id, associated_message_range_location, associated_message_range_length, time_expressive_send_played, message_summary_info, ck_sync_state, ck_record_id, ck_record_change_tag, destination_caller_id, is_corrupt, reply_to_guid, sort_id, is_spam, has_unseen_mention, thread_originator_guid, thread_originator_part, syndication_ranges, synced_syndication_ranges, was_delivered_quietly, did_notify_recipient, date_retracted, date_edited, date_recovered, was_detonated, part_count, is_stewie, is_sos, is_critical, bia_reference_id, is_kt_verified, fallback_hash, associated_message_emoji, is_pending_satellite_send, needs_relay, schedule_type, schedule_state, sent_or_received_off_grid, is_time_sensitive, ck_chat_id FROM message WHERE ROWID = ? ORDER BY message.ROWID ASC;", v7);
  }

  else
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = sub_1B7BD86F8;
    v6[3] = &unk_1E7CB6838;
    v6[4] = &buf;
    __syncXPCIMDMessageRecordCopyMessageForRowID_IPCAction(v6, a1);
  }

  v3 = *(*(&buf + 1) + 24);
  _Block_object_dispose(&buf, 8);
  v4 = *MEMORY[0x1E69E9840];
  return v3;
}

void sub_1B7BD863C(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = CSDBSqliteBindInt64();
  sub_1B7AEAEE4(v3, v4, v5);
  v6 = CSDBRecordStoreProcessStatement();
  if (v6)
  {
    v7 = v6;
    if (CFArrayGetCount(v6))
    {
      CFArrayGetValueAtIndex(v7, 0);
      ID = CSDBRecordGetID();
      *(*(*(a1 + 32) + 8) + 24) = IMDMessageRecordCreateFromRecordIDUnlocked(*MEMORY[0x1E695E480], ID);
    }

    CFRelease(v7);
  }
}

uint64_t sub_1B7BD86F8(uint64_t a1, void *a2)
{
  result = _IMDCopyIMDMessageRecordFromXPCObjectClient(a2);
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t IMDMessageRecordCopyMessagesForRowIDs(const __CFArray *a1)
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  if (a1 && CFArrayGetCount(a1))
  {
    if (IMDIsRunningInDatabaseServerProcess())
    {
      Count = CFArrayGetCount(a1);
      if (Count >= 1)
      {
        for (i = 0; i != Count; ++i)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(a1, i);
          valuePtr = -1;
          if (ValueAtIndex)
          {
            CFNumberGetValue(ValueAtIndex, kCFNumberLongLongType, &valuePtr);
            if (valuePtr != -1)
            {
              v5 = IMDMessageRecordCopyMessageForRowID(valuePtr);
              if (v5)
              {
                CFArrayAppendValue(v11[3], v5);
                CFRelease(v5);
              }
            }
          }
        }
      }
    }

    else
    {
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = sub_1B7BD88C4;
      v8[3] = &unk_1E7CB6838;
      v8[4] = &v10;
      __syncXPCIMDMessageRecordCopyMessagesForRowIDs_IPCAction(v8, a1);
    }
  }

  v6 = v11[3];
  _Block_object_dispose(&v10, 8);
  return v6;
}

void sub_1B7BD889C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

xpc_object_t sub_1B7BD88C4(uint64_t a1, xpc_object_t xdict)
{
  result = xpc_dictionary_get_value(xdict, "array_result");
  if (result)
  {
    applier[0] = MEMORY[0x1E69E9820];
    applier[1] = 3221225472;
    applier[2] = sub_1B7BD8958;
    applier[3] = &unk_1E7CB6810;
    applier[4] = *(a1 + 32);
    return xpc_array_apply(result, applier);
  }

  return result;
}

uint64_t sub_1B7BD8958(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = _IMDCopyIMDMessageRecordFromXPCObjectClient(a3);
  if (v4)
  {
    v5 = v4;
    CFArrayAppendValue(*(*(*(a1 + 32) + 8) + 24), v4);
    CFRelease(v5);
  }

  return 1;
}

uint64_t IMDMessageRecordMaxMessageIDFromChatMessageJoin()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v7 = 0;
  if (IMDIsRunningInDatabaseServerProcess())
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = sub_1B7BD8AD8;
    v3[3] = &unk_1E7CB7390;
    v3[4] = &v4;
    _IMDPerformLockedStatementBlockWithQuery(@"SELECT MAX(message_id) FROM chat_message_join", v3);
  }

  else
  {
    v2[0] = MEMORY[0x1E69E9820];
    v2[1] = 3221225472;
    v2[2] = sub_1B7BD8B1C;
    v2[3] = &unk_1E7CB6838;
    v2[4] = &v4;
    __syncXPCIMDMessageRecordMaxMessageIDFromChatMessageJoin_IPCAction(v2);
  }

  v0 = v5[3];
  _Block_object_dispose(&v4, 8);
  return v0;
}

uint64_t sub_1B7BD8AD8(uint64_t a1)
{
  result = CSDBSqliteStatementInteger64Result();
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

int64_t sub_1B7BD8B1C(uint64_t a1, xpc_object_t xdict)
{
  result = xpc_dictionary_get_int64(xdict, "sint64_result");
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t IMDMessageRecordCopyMessagesFromRowIDDescLimit(uint64_t a1, uint64_t a2)
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  if (a1 && a2 && IMDIsRunningInDatabaseServerProcess())
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = sub_1B7BD8C64;
    v6[3] = &unk_1E7CB7548;
    v6[5] = a1;
    v6[6] = a2;
    v6[4] = &v7;
    _IMDPerformLockedStatementBlockWithQuery(@"SELECT ROWID, guid, text, replace, service_center, handle_id, subject, country, attributedBody, version, type, service, account, account_guid, error, date, date_read, date_delivered, is_delivered, is_finished, is_emote, is_from_me, is_empty, is_delayed, is_auto_reply, is_prepared, is_read, is_system_message, is_sent, has_dd_results, is_service_message, is_forward, was_downgraded, is_archive, cache_has_attachments, cache_roomnames, was_data_detected, was_deduplicated, is_audio_message, is_played, date_played, item_type, other_handle, group_title, group_action_type, share_status, share_direction, is_expirable, expire_state, message_action_type, message_source, associated_message_guid, associated_message_type, balloon_bundle_id, payload_data, expressive_send_style_id, associated_message_range_location, associated_message_range_length, time_expressive_send_played, message_summary_info, ck_sync_state, ck_record_id, ck_record_change_tag, destination_caller_id, is_corrupt, reply_to_guid, sort_id, is_spam, has_unseen_mention, thread_originator_guid, thread_originator_part, syndication_ranges, synced_syndication_ranges, was_delivered_quietly, did_notify_recipient, date_retracted, date_edited, date_recovered, was_detonated, part_count, is_stewie, is_sos, is_critical, bia_reference_id, is_kt_verified, fallback_hash, associated_message_emoji, is_pending_satellite_send, needs_relay, schedule_type, schedule_state, sent_or_received_off_grid, is_time_sensitive, ck_chat_id FROM message WHERE ROWID IN (SELECT message_id FROM chat_message_join WHERE message_id < ?) AND item_type = 0 ORDER BY ROWID DESC LIMIT ?", v6);
  }

  v4 = v8[3];
  _Block_object_dispose(&v7, 8);
  return v4;
}

void sub_1B7BD8C64(void *a1)
{
  v2 = a1[5];
  CSDBSqliteBindInt64();
  v3 = a1[6];
  v4 = CSDBSqliteBindInt64();
  sub_1B7AEAEE4(v4, v5, v6);
  v7 = CSDBRecordStoreProcessStatement();
  if (*(*(a1[4] + 8) + 24))
  {
    v8 = v7;
    if (CFArrayGetCount(v7) >= 1)
    {
      v9 = 0;
      v10 = *MEMORY[0x1E695E480];
      do
      {
        CFArrayGetValueAtIndex(v8, v9);
        ID = CSDBRecordGetID();
        v12 = IMDMessageRecordCreateFromRecordIDUnlocked(v10, ID);
        if (v12)
        {
          v13 = v12;
          CFArrayAppendValue(*(*(a1[4] + 8) + 24), v12);
          CFRelease(v13);
        }

        ++v9;
      }

      while (v9 < CFArrayGetCount(v8));
    }

    CFRelease(v8);
  }
}

void sub_1B7BD8D7C(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = CSDBSqliteBindTextFromCFString();
  sub_1B7AEAEE4(v3, v4, v5);
  v6 = CSDBRecordStoreProcessStatement();
  if (v6)
  {
    v7 = v6;
    if (CFArrayGetCount(v6))
    {
      CFArrayGetValueAtIndex(v7, 0);
      ID = CSDBRecordGetID();
      *(*(*(a1 + 32) + 8) + 24) = IMDMessageRecordCreateFromRecordIDUnlocked(*MEMORY[0x1E695E480], ID);
    }

    CFRelease(v7);
  }

  else
  {
    v9 = IMDatabaseMessageEventLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *v10 = 0;
      _os_log_impl(&dword_1B7AD5000, v9, OS_LOG_TYPE_INFO, "IMDMessageRecordCopyMessageForGUIDUnlocked failed to get results", v10, 2u);
    }
  }
}

BOOL IMDMessageRecordDeleteBatchOfDeletedMessageGuids(int a1, void *a2, void *a3)
{
  if (a1 > 0)
  {
    goto LABEL_6;
  }

  v54 = xmmword_1E7CBCBE8;
  v55 = *off_1E7CBCBF8;
  v6 = MEMORY[0x1E696AEC0];
  v7 = IMFileLocationTrimFileName();
  v9 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v8, &stru_1F2FA9728);
  v11 = objc_msgSend_stringWithFormat_(v6, v10, @"Unexpected false '%@' in %s at %s:%d. %@", @"batchAmount > 0", "BOOL IMDMessageRecordDeleteBatchOfDeletedMessageGuids(int, NSArray **, NSError **)", v7, 666, v9);
  v12 = IMGetAssertionFailureHandler();
  if (v12)
  {
    v12(v11);
    if (!a2)
    {
      goto LABEL_8;
    }

LABEL_7:
    *a2 = 0;
    goto LABEL_8;
  }

  v15 = objc_msgSend_warning(MEMORY[0x1E69A6138], v13, v14);
  if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
LABEL_6:
    if (!a2)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  sub_1B7CED0B0();
  if (a2)
  {
    goto LABEL_7;
  }

LABEL_8:
  v63 = 0u;
  v64 = 0u;
  v61 = 0u;
  v62 = 0u;
  v59 = 0u;
  v60 = 0u;
  v57 = 0u;
  v58 = 0u;
  v55 = 0u;
  v56 = 0u;
  v54 = 0u;
  IMDSqlOperationInitWithSharedCSDBDatabase(&v54);
  IMDSqlOperationBeginTransaction(&v54);
  if (*(&v64 + 1))
  {
    v16 = 0;
  }

  else
  {
    v52 = 0;
    v53 = 0;
    sub_1B7BD9180(&v54, &v53, &v52, a1);
    v16 = 0;
    v19 = v53;
    if (!*(&v64 + 1) && v53)
    {
      if (objc_msgSend_count(v53, v17, v18))
      {
        v22 = objc_msgSend_count(v52, v20, v21);
        if (v22 != objc_msgSend_count(v53, v23, v24))
        {
          v27 = MEMORY[0x1E696AEC0];
          v28 = IMFileLocationTrimFileName();
          v30 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v29, &stru_1F2FA9728);
          v32 = objc_msgSend_stringWithFormat_(v27, v31, @"Unexpected false '%@' in %s at %s:%d. %@", @"rowIDs.count == guids.count", "BOOL IMDMessageRecordDeleteBatchOfDeletedMessageGuids(int, NSArray **, NSError **)", v28, 685, v30);
          v33 = IMGetAssertionFailureHandler();
          if (v33)
          {
            v33(v32);
          }

          else
          {
            v36 = objc_msgSend_warning(MEMORY[0x1E69A6138], v34, v35);
            if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
            {
              sub_1B7CED0B0();
            }
          }
        }

        if (objc_msgSend_count(v52, v25, v26))
        {
          v38 = objc_msgSend_objectAtIndex_(v52, v37, 0);
          v41 = objc_msgSend_unsignedLongLongValue(v38, v39, v40);
          v42 = v52;
          v45 = objc_msgSend_count(v52, v43, v44);
          v47 = objc_msgSend_objectAtIndex_(v42, v46, v45 - 1);
          v50 = objc_msgSend_unsignedLongLongValue(v47, v48, v49);
          sub_1B7BD92B4(&v54, v41, v50);
        }

        v16 = *(&v64 + 1) == 0;
        if (a2 && !*(&v64 + 1))
        {
          *a2 = v53;
          v16 = 1;
        }
      }

      else
      {
        v16 = 0;
      }

      v19 = v53;
    }

    if (v19)
    {

      v53 = 0;
    }

    if (v52)
    {
    }
  }

  IMDSqlOperationCommitOrRevertTransaction(&v54);
  IMDSqlOperationRelease(&v54, a3);
  return v16;
}

BOOL sub_1B7BD9180(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  if (a3)
  {
    v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
    if (a2)
    {
LABEL_3:
      v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
      goto LABEL_6;
    }
  }

  else
  {
    v8 = 0;
    if (a2)
    {
      goto LABEL_3;
    }
  }

  v9 = 0;
LABEL_6:
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = sub_1B7BD99D0;
  v13[3] = &unk_1E7CBCC58;
  v14 = a4;
  v13[4] = a1;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = sub_1B7BD99E8;
  v12[3] = &unk_1E7CBCCA8;
  if (a4)
  {
    v10 = @"SELECT * from deleted_messages ORDER BY ROWID ASC LIMIT ?;";
  }

  else
  {
    v10 = @"SELECT * from deleted_messages ORDER BY ROWID ASC;";
  }

  v12[4] = v8;
  v12[5] = v9;
  v12[6] = a1;
  v12[7] = a2;
  v12[8] = a3;
  return _IMDSqlOperationRunQuery(a1, v10, v13, v12);
}

BOOL sub_1B7BD92B4(uint64_t a1, unint64_t a2, unint64_t a3)
{
  if (!a1)
  {
    v29 = xmmword_1E7CBCCC8;
    v30 = *off_1E7CBCCD8;
    v31 = 894;
    v6 = MEMORY[0x1E696AEC0];
    v7 = IMFileLocationTrimFileName();
    v9 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v8, &stru_1F2FA9728);
    v11 = objc_msgSend_stringWithFormat_(v6, v10, @"Unexpected nil '%@' in %s at %s:%d. %@", @"operation", "BOOL _IMDDeleteDeletedMessagesWithRangeOfRowIDs(IMDSqlOperation *, uint64_t, uint64_t)", v7, 894, v9);
    v12 = IMGetAssertionFailureHandler();
    if (v12)
    {
      v12(v11);
    }

    else
    {
      v15 = objc_msgSend_warning(MEMORY[0x1E69A6138], v13, v14);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        sub_1B7CED0B0();
      }
    }
  }

  if (a3 >= a2)
  {
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = sub_1B7BD9CA0;
    v28[3] = &unk_1E7CBCD18;
    v28[4] = a1;
    v28[5] = a2;
    v28[6] = a3;
    v25 = _IMDSqlOperationRunQuery(a1, @"DELETE FROM deleted_messages where ROWID >= ? AND ROWID <= ?;", v28, 0);
    CFRelease(@"DELETE FROM deleted_messages where ROWID >= ? AND ROWID <= ?;");
  }

  else
  {
    v29 = xmmword_1E7CBCCF0;
    v30 = *off_1E7CBCD00;
    v16 = MEMORY[0x1E696AEC0];
    v17 = IMFileLocationTrimFileName();
    v19 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v18, &stru_1F2FA9728);
    v21 = objc_msgSend_stringWithFormat_(v16, v20, @"Unexpected false '%@' in %s at %s:%d. %@", @"lastRowID >= firstRowID", "BOOL _IMDDeleteDeletedMessagesWithRangeOfRowIDs(IMDSqlOperation *, uint64_t, uint64_t)", v17, 895, v19);
    v22 = IMGetAssertionFailureHandler();
    if (v22)
    {
      v22(v21);
    }

    else
    {
      v26 = objc_msgSend_warning(MEMORY[0x1E69A6138], v23, v24);
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        sub_1B7CED0B0();
      }
    }

    return 0;
  }

  return v25;
}

void IMDMessageRecordDeleteMessagesForGUIDs(const __CFArray *a1, uint64_t a2)
{
  v12 = *MEMORY[0x1E69E9840];
  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v11 = a1;
      _os_log_impl(&dword_1B7AD5000, v4, OS_LOG_TYPE_DEBUG, "IMDMessageRecordDeleteMessagesForGUIDs %@", buf, 0xCu);
    }
  }

  if (a1 && CFArrayGetCount(a1))
  {
    if (IMDIsRunningInDatabaseServerProcess())
    {
      Count = CFArrayGetCount(a1);
      v6 = IMDCreateQueryRemoveMessagesFromMessageTableWithMessageGuidCount(Count);
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = sub_1B7BD9698;
      v9[3] = &unk_1E7CBCC38;
      v9[4] = v6;
      v9[5] = a1;
      v9[6] = a2;
      IMDRunSqlOperation(v9);
      CFRelease(v6);
      IMDCoreSpotlightScheduleUpdateForDeletedMessages(1006);
    }

    else
    {
      __syncXPCIMDMessageRecordDeleteMessagesForGUIDs_IPCAction(0, a1);
    }
  }

  else
  {
    v7 = IMDatabaseMessageEventLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1B7AD5000, v7, OS_LOG_TYPE_INFO, "IMDMessageRecordDeleteMessagesForGUIDs has no GUIDs to delete.", buf, 2u);
    }
  }

  v8 = *MEMORY[0x1E69E9840];
}

uint64_t sub_1B7BD9698(uint64_t a1, uint64_t a2)
{
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_1B7BD9740;
  v7[3] = &unk_1E7CB75B0;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v7[4] = a2;
  v7[5] = v5;
  _IMDSqlOperationRunQuery(a2, v4, v7, 0);
  if (!*(a2 + 168))
  {
    IMDSqlOperationUpdateLastDeleteSequenceNumber(a2);
  }

  return IMDSqlOperationGetError(a2, *(a1 + 48));
}

void IMDSelectMessagesForDeletionAfterDaysWithQuery(uint64_t a1, const __CFString *a2, void *a3, void *a4)
{
  v18 = *MEMORY[0x1E69E9840];
  if (IMOSLoggingEnabled())
  {
    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134217984;
      *&buf[4] = a1;
      _os_log_impl(&dword_1B7AD5000, v8, OS_LOG_TYPE_DEBUG, "IMDSelectMessagesForDeletionAfterDaysWithQuery %lld", buf, 0xCu);
    }
  }

  v9 = sub_1B7BD992C(a1);
  if (a3)
  {
    *a3 = 0;
  }

  v16 = 0u;
  memset(v17, 0, sizeof(v17));
  *buf = 0u;
  IMDSqlOperationInitWithSharedCSDBDatabase(buf);
  _IMDSqlOperationBeginQuery(buf, a2);
  IMDSqlStatementBindInt64(v17, v9);
  v10 = 0;
  while (IMDSqlOperationHasRows(buf))
  {
    IMDSqlOperationColumnByIndex(buf, 0, v14);
    v12 = IMDStringFromSqlColumn(v14);
    if (v12)
    {
      if (!v10)
      {
        v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
      }

      objc_msgSend_addObject_(v10, v11, v12);
      CFRelease(v12);
    }
  }

  IMDSqlOperationFinishQuery(buf);
  if (((a3 != 0) & IMDSqlOperationRelease(buf, a4)) == 1)
  {
    *a3 = v10;
  }

  if (v10)
  {
  }

  v13 = *MEMORY[0x1E69E9840];
}

double sub_1B7BD992C(uint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x1E695DF10]);
  objc_msgSend_setDay_(v2, v3, -a1);
  v6 = objc_msgSend_currentCalendar(MEMORY[0x1E695DEE8], v4, v5);
  v9 = objc_msgSend_date(MEMORY[0x1E695DF00], v7, v8);
  v11 = objc_msgSend_dateByAddingComponents_toDate_options_(v6, v10, v2, v9, 0);

  return objc_msgSend___im_nanosecondTimeInterval(v11, v12, v13);
}

void sub_1B7BD99D0(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    IMDSqlStatementBindInt(*(a1 + 32) + 32, v1);
  }
}

void sub_1B7BD99E8(uint64_t a1)
{
  if (IMDSqlOperationHasRows(*(a1 + 48)))
  {
    v4 = MEMORY[0x1E69E9820];
    do
    {
      v24 = 0;
      v25 = &v24;
      v26 = 0x2020000000;
      v27 = -1;
      v18 = 0;
      v19 = &v18;
      v20 = 0x3052000000;
      v21 = sub_1B7AE1B30;
      v22 = sub_1B7AE25A0;
      v23 = 0;
      v5 = *(a1 + 48);
      v14[0] = v4;
      v14[1] = 3221225472;
      v14[2] = sub_1B7BD9C08;
      v14[3] = &unk_1E7CBCC80;
      v15 = *(a1 + 32);
      v16 = &v24;
      v17 = &v18;
      IMDSqlOperationIterateRow(v5, v14);
      if (objc_msgSend_length(v19[5], v6, v7))
      {
        v9 = v25[3];
        if ((v9 & 0x8000000000000000) == 0)
        {
          v10 = *(a1 + 32);
          v11 = objc_msgSend_numberWithLongLong_(MEMORY[0x1E696AD98], v8, v9);
          objc_msgSend_addObject_(v10, v12, v11);
          objc_msgSend_addObject_(*(a1 + 40), v13, v19[5]);
        }
      }

      _Block_object_dispose(&v18, 8);
      _Block_object_dispose(&v24, 8);
    }

    while (IMDSqlOperationHasRows(*(a1 + 48)));
  }

  if (!*(*(a1 + 48) + 168))
  {
    if (*(a1 + 56) && objc_msgSend_count(*(a1 + 40), v2, v3))
    {
      **(a1 + 56) = *(a1 + 40);
    }

    if (*(a1 + 64) && objc_msgSend_count(*(a1 + 32), v2, v3))
    {
      **(a1 + 64) = *(a1 + 32);
    }
  }
}

void sub_1B7BD9BE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va1, a10);
  va_start(va, a10);
  v11 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

const unsigned __int8 *sub_1B7BD9C08(const unsigned __int8 *result, __int128 *a2)
{
  v2 = result;
  v3 = *(a2 + 4);
  if (v3 == 1)
  {
    if (*(result + 5))
    {
      v4 = *a2;
      v5 = *(a2 + 2);
      result = IMDStringFromSqlColumn(&v4);
      *(*(*(v2 + 7) + 8) + 40) = result;
    }
  }

  else if (!v3)
  {
    if (*(result + 4))
    {
      v4 = *a2;
      v5 = *(a2 + 2);
      result = IMDInt64FromSqlColumn(&v4);
      *(*(*(v2 + 6) + 8) + 24) = result;
    }
  }

  return result;
}

void sub_1B7BD9CA0(void *a1)
{
  IMDSqlStatementBindInt64(a1[4] + 32, a1[5]);
  v2 = a1[6];
  v3 = a1[4] + 32;

  IMDSqlStatementBindInt64(v3, v2);
}

BOOL IMDSelectDeletedMessages(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = sub_1B7BD9D5C;
  v5[3] = &unk_1E7CBCD38;
  v5[4] = a1;
  v5[5] = a2;
  v6 = a3;
  v5[6] = a4;
  return IMDRunSqlOperation(v5);
}

uint64_t sub_1B7BD9D5C(uint64_t a1, uint64_t a2)
{
  sub_1B7BD9180(a2, *(a1 + 32), *(a1 + 40), *(a1 + 56));
  v4 = *(a1 + 48);

  return IMDSqlOperationGetError(a2, v4);
}

void IMDMessageRecordDeleteMessagesOlderThanDays(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = IMDatabaseLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    LODWORD(v20[0]) = 134217984;
    *(v20 + 4) = a1;
    _os_log_impl(&dword_1B7AD5000, v4, OS_LOG_TYPE_INFO, "IMDMessageRecordDeleteMessagesOlderThanDays %lld", v20, 0xCu);
  }

  if (IMDIsRunningInDatabaseServerProcess())
  {
    v5 = sub_1B7BD992C(a1);
    v6 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      LODWORD(v20[0]) = 134217984;
      *(v20 + 4) = v5;
      _os_log_impl(&dword_1B7AD5000, v6, OS_LOG_TYPE_INFO, "IMDMessageRecordDeleteMessagesOlderThanDays interval is %f", v20, 0xCu);
    }

    memset(v21, 0, sizeof(v21));
    memset(v20, 0, sizeof(v20));
    IMDSqlOperationInitWithSharedCSDBDatabase(v20);
    _IMDSqlOperationBeginQuery(v20, @"DELETE from message WHERE date >= 1000000000.0  AND date < ?  AND NOT (group_action_type IN (1,3) AND (ROWID IN (SELECT message_id FROM message_attachment_join)))  AND NOT (ROWID IN (SELECT message_id FROM chat_recoverable_message_join));");
    IMDSqlStatementBindInt64(v21, v5);
    if (IMDSqlOperationFinishQuery(v20))
    {
      v7 = IMDMessageRecordCountChangesUnlocked();
      v10 = objc_msgSend_sharedInstance(MEMORY[0x1E69A8168], v8, v9);
      v12 = objc_msgSend_numberWithLongLong_(MEMORY[0x1E696AD98], v11, v7);
      v15 = objc_msgSend_sharedInstance(MEMORY[0x1E69A8168], v13, v14);
      v17 = objc_msgSend_keepMessagesSourceTypeForDays_(v15, v16, a1);
      objc_msgSend_trackDeleteMessages_sourceType_(v10, v18, v12, v17);
      IMDSqlOperationUpdateLastDeleteSequenceNumber(v20);
    }

    if (IMDSqlOperationRelease(v20, a2))
    {
      IMDCoreSpotlightScheduleUpdateForDeletedMessages(1006);
    }
  }

  else
  {
    __syncXPCIMDMessageRecordDeleteMessagesOlderThanDays_IPCAction(0, a1);
  }

  v19 = *MEMORY[0x1E69E9840];
}

uint64_t IMDMessageRecordCopyMessagesWithRoomnameOnServiceLimit(CFStringRef theString, const __CFString *a2, int64_t a3)
{
  if (theString)
  {
    v6 = CFStringGetLength(theString) == 0;
    if (!a2)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v6 = 1;
    if (!a2)
    {
      goto LABEL_7;
    }
  }

  if (!v6 || CFStringGetLength(a2))
  {
LABEL_7:
    v12 = 0;
    v13 = &v12;
    v14 = 0x2020000000;
    v15 = 0;
    if (IMDIsRunningInDatabaseServerProcess())
    {
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = sub_1B7BDA13C;
      v11[3] = &unk_1E7CBCD60;
      v11[6] = a2;
      v11[7] = a3;
      v11[4] = &v12;
      v11[5] = theString;
      _IMDPerformLockedStatementBlockWithQuery(@"SELECT m.ROWID, m.guid, m.text, m.replace, m.service_center, m.handle_id, m.subject, m.country, m.attributedBody, m.version, m.type, m.service, m.account, m.account_guid, m.error, m.date, m.date_read, m.date_delivered, m.is_delivered, m.is_finished, m.is_emote, m.is_from_me, m.is_empty, m.is_delayed, m.is_auto_reply, m.is_prepared, m.is_read, m.is_system_message, m.is_sent, m.has_dd_results, m.is_service_message, m.is_forward, m.was_downgraded, m.is_archive, m.cache_has_attachments, m.cache_roomnames, m.was_data_detected, m.was_deduplicated, m.is_audio_message, m.is_played, m.date_played, m.item_type, m.other_handle, m.group_title, m.group_action_type, m.share_status, m.share_direction, m.is_expirable, m.expire_state, m.message_action_type, m.message_source, m.associated_message_guid, m.associated_message_type, m.balloon_bundle_id, m.payload_data, m.expressive_send_style_id, m.associated_message_range_location, m.associated_message_range_length, m.time_expressive_send_played, m.message_summary_info, m.ck_sync_state, m.ck_record_id, m.ck_record_change_tag, m.destination_caller_id, m.is_corrupt, m.reply_to_guid, m.sort_id, m.is_spam, m.has_unseen_mention, m.thread_originator_guid, m.thread_originator_part, m.syndication_ranges, m.synced_syndication_ranges, m.was_delivered_quietly, m.did_notify_recipient, m.date_retracted, m.date_edited, m.date_recovered, m.was_detonated, m.part_count, m.is_stewie, m.is_sos, m.is_critical, m.bia_reference_id, m.is_kt_verified, m.fallback_hash, m.associated_message_emoji, m.is_pending_satellite_send, m.needs_relay, m.schedule_type, m.schedule_state, m.sent_or_received_off_grid, m.is_time_sensitive, m.ck_chat_id FROM message m INNER JOIN chat_message_join j ON   m.ROWID = j.message_id INNER JOIN chat c ON   c.ROWID = j.chat_id WHERE   c.room_name = ?   AND c.service_name = ? ORDER BY   m.ROWID DESC LIMIT ?", v11);
    }

    else
    {
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = sub_1B7BDA288;
      v10[3] = &unk_1E7CB6838;
      v10[4] = &v12;
      __syncXPCIMDMessageRecordCopyMessagesWithRoomnameOnServiceLimit_IPCAction(v10, theString, a2, a3);
    }

    v7 = v13[3];
    _Block_object_dispose(&v12, 8);
    return v7;
  }

  v9 = IMDatabaseLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    sub_1B7CFBF10();
  }

  return 0;
}

void sub_1B7BDA13C(void *a1)
{
  v2 = a1[5];
  CSDBSqliteBindTextFromCFString();
  v3 = a1[6];
  CSDBSqliteBindTextFromCFString();
  v4 = a1[7];
  v5 = CSDBSqliteBindInt64();
  sub_1B7AEAEE4(v5, v6, v7);
  v8 = CSDBRecordStoreProcessStatement();
  if (v8)
  {
    v9 = v8;
    v10 = *MEMORY[0x1E695E480];
    *(*(a1[4] + 8) + 24) = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
    if (*(*(a1[4] + 8) + 24) && CFArrayGetCount(v9) >= 1)
    {
      v11 = 0;
      do
      {
        CFArrayGetValueAtIndex(v9, v11);
        ID = CSDBRecordGetID();
        v13 = IMDMessageRecordCreateFromRecordIDUnlocked(v10, ID);
        if (v13)
        {
          v14 = v13;
          CFArrayAppendValue(*(*(a1[4] + 8) + 24), v13);
          CFRelease(v14);
        }

        ++v11;
      }

      while (v11 < CFArrayGetCount(v9));
    }

    CFRelease(v9);
  }
}

xpc_object_t sub_1B7BDA288(uint64_t a1, xpc_object_t xdict)
{
  result = xpc_dictionary_get_value(xdict, "array_result");
  if (result)
  {
    applier[0] = MEMORY[0x1E69E9820];
    applier[1] = 3221225472;
    applier[2] = sub_1B7BDA31C;
    applier[3] = &unk_1E7CB6810;
    applier[4] = *(a1 + 32);
    return xpc_array_apply(result, applier);
  }

  return result;
}

uint64_t sub_1B7BDA31C(uint64_t a1, uint64_t a2, void *a3)
{
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    *(*(*(a1 + 32) + 8) + 24) = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
  }

  v5 = _IMDCopyIMDMessageRecordFromXPCObjectClient(a3);
  if (v5)
  {
    v6 = v5;
    CFArrayAppendValue(*(*(*(a1 + 32) + 8) + 24), v5);
    CFRelease(v6);
  }

  return 1;
}

uint64_t IMDMessageRecordCopyMessagesWithHandleIDLimit(uint64_t a1, uint64_t a2)
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = sub_1B7BDA46C;
  v4[3] = &unk_1E7CB7548;
  v4[5] = a1;
  v4[6] = a2;
  v4[4] = &v5;
  _IMDPerformLockedStatementBlockWithQuery(@"SELECT m.ROWID, m.guid, m.text, m.replace, m.service_center, m.handle_id, m.subject, m.country, m.attributedBody, m.version, m.type, m.service, m.account, m.account_guid, m.error, m.date, m.date_read, m.date_delivered, m.is_delivered, m.is_finished, m.is_emote, m.is_from_me, m.is_empty, m.is_delayed, m.is_auto_reply, m.is_prepared, m.is_read, m.is_system_message, m.is_sent, m.has_dd_results, m.is_service_message, m.is_forward, m.was_downgraded, m.is_archive, m.cache_has_attachments, m.cache_roomnames, m.was_data_detected, m.was_deduplicated, m.is_audio_message, m.is_played, m.date_played, m.item_type, m.other_handle, m.group_title, m.group_action_type, m.share_status, m.share_direction, m.is_expirable, m.expire_state, m.message_action_type, m.message_source, m.associated_message_guid, m.associated_message_type, m.balloon_bundle_id, m.payload_data, m.expressive_send_style_id, m.associated_message_range_location, m.associated_message_range_length, m.time_expressive_send_played, m.message_summary_info, m.ck_sync_state, m.ck_record_id, m.ck_record_change_tag, m.destination_caller_id, m.is_corrupt, m.reply_to_guid, m.sort_id, m.is_spam, m.has_unseen_mention, m.thread_originator_guid, m.thread_originator_part, m.syndication_ranges, m.synced_syndication_ranges, m.was_delivered_quietly, m.did_notify_recipient, m.date_retracted, m.date_edited, m.date_recovered, m.was_detonated, m.part_count, m.is_stewie, m.is_sos, m.is_critical, m.bia_reference_id, m.is_kt_verified, m.fallback_hash, m.associated_message_emoji, m.is_pending_satellite_send, m.needs_relay, m.schedule_type, m.schedule_state, m.sent_or_received_off_grid, m.is_time_sensitive, m.ck_chat_id FROM message m INNER JOIN chat_message_join cm ON   m.ROWID = cm.message_id INNER JOIN chat c ON   c.ROWID = cm.chat_id INNER JOIN chat_handle_join ch ON   c.ROWID = ch.chat_id WHERE   ch.handle_id = ?   AND c.room_name IS NULL ORDER BY m.ROWID DESC LIMIT ?", v4);
  v2 = v6[3];
  _Block_object_dispose(&v5, 8);
  return v2;
}

uint64_t sub_1B7BDA46C(uint64_t a1)
{
  v2 = *(a1 + 40);
  CSDBSqliteBindInt();
  v3 = *(a1 + 48);
  v4 = CSDBSqliteBindInt();
  sub_1B7AEAEE4(v4, v5, v6);
  result = CSDBRecordStoreProcessStatement();
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t IMDMessageRecordCopyNewParticipantChangeItems()
{
  v0 = IMDatabaseLogHandle();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1B7AD5000, v0, OS_LOG_TYPE_DEFAULT, "IMDMessageRecordCopyNewParticipantChangeItems", buf, 2u);
  }

  *buf = 0;
  v5 = buf;
  v6 = 0x2020000000;
  v7 = 0;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = sub_1B7BDA5E0;
  v3[3] = &unk_1E7CB7390;
  v3[4] = buf;
  _IMDPerformLockedStatementBlockWithQuery(@"SELECT m.ROWID, m.guid, m.text, m.replace, m.service_center, m.handle_id, m.subject, m.country, m.attributedBody, m.version, m.type, m.service, m.account, m.account_guid, m.error, m.date, m.date_read, m.date_delivered, m.is_delivered, m.is_finished, m.is_emote, m.is_from_me, m.is_empty, m.is_delayed, m.is_auto_reply, m.is_prepared, m.is_read, m.is_system_message, m.is_sent, m.has_dd_results, m.is_service_message, m.is_forward, m.was_downgraded, m.is_archive, m.cache_has_attachments, m.cache_roomnames, m.was_data_detected, m.was_deduplicated, m.is_audio_message, m.is_played, m.date_played, m.item_type, m.other_handle, m.group_title, m.group_action_type, m.share_status, m.share_direction, m.is_expirable, m.expire_state, m.message_action_type, m.message_source, m.associated_message_guid, m.associated_message_type, m.balloon_bundle_id, m.payload_data, m.expressive_send_style_id, m.associated_message_range_location, m.associated_message_range_length, m.time_expressive_send_played, m.message_summary_info, m.ck_sync_state, m.ck_record_id, m.ck_record_change_tag, m.destination_caller_id, m.is_corrupt, m.reply_to_guid, m.sort_id, m.is_spam, m.has_unseen_mention, m.thread_originator_guid, m.thread_originator_part, m.syndication_ranges, m.synced_syndication_ranges, m.was_delivered_quietly, m.did_notify_recipient, m.date_retracted, m.date_edited, m.date_recovered, m.was_detonated, m.part_count, m.is_stewie, m.is_sos, m.is_critical, m.bia_reference_id, m.is_kt_verified, m.fallback_hash, m.associated_message_emoji, m.is_pending_satellite_send, m.needs_relay, m.schedule_type, m.schedule_state, m.sent_or_received_off_grid, m.is_time_sensitive, m.ck_chat_id FROM message m  INDEXED BY message_idx_isRead_isFromMe_itemType  INNER JOIN chat_message_join cm ON cm.message_id = m.rowid  INNER JOIN chat c ON c.ROWID = cm.chat_id  WHERE m.is_read == 0  AND m.is_from_me == 0  AND m.item_type == 1  ORDER BY m.date DESC;", v3);
  v1 = *(v5 + 3);
  _Block_object_dispose(buf, 8);
  return v1;
}

void sub_1B7BDA5C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B7BDA5E0(uint64_t a1, const char *a2, uint64_t a3)
{
  v19 = *MEMORY[0x1E69E9840];
  sub_1B7AEAEE4(a1, a2, a3);
  v4 = CSDBRecordStoreProcessStatement();
  if (v4)
  {
    v5 = v4;
    Count = CFArrayGetCount(v4);
    if (Count >= 1)
    {
      v7 = IMDatabaseLogHandle();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v17 = 134217984;
        v18 = Count;
        _os_log_impl(&dword_1B7AD5000, v7, OS_LOG_TYPE_DEFAULT, "IMDMessageRecordCopyNewParticipantChangeItems got back %ld rows", &v17, 0xCu);
      }

      v8 = *MEMORY[0x1E695E480];
      Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], Count, MEMORY[0x1E695E9C0]);
      if (Mutable)
      {
        v10 = Mutable;
        v11 = 0;
        do
        {
          CFArrayGetValueAtIndex(v5, v11);
          ID = CSDBRecordGetID();
          v13 = IMDMessageRecordCreateFromRecordIDUnlocked(v8, ID);
          if (v13)
          {
            v15 = v13;
            CFArrayAppendValue(v10, v13);
            CFRelease(v15);
          }

          ++v11;
        }

        while (Count != v11);
        objc_msgSend_sortUsingComparator_(v10, v14, &unk_1F2F9FED0);
        *(*(*(a1 + 32) + 8) + 24) = v10;
      }
    }

    CFRelease(v5);
  }

  v16 = *MEMORY[0x1E69E9840];
}

uint64_t sub_1B7BDA764(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Date = IMDMessageRecordGetDate(a2, 0, a3);
  Identifier = IMDMessageRecordGetDate(a3, 0, v6);
  if (!Date || !Identifier || Date == Identifier)
  {
    Date = IMDMessageRecordGetIdentifier(a2);
    Identifier = IMDMessageRecordGetIdentifier(a3);
  }

  if (Date > Identifier)
  {
    return 1;
  }

  else
  {
    return -1;
  }
}

void sub_1B7BDA80C(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v2 = IMDatabaseLogHandle();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 56);
    v4 = *(a1 + 64);
    v5 = *(a1 + 32);
    v14 = 134218498;
    v15 = v3;
    v16 = 2048;
    v17 = v4;
    v18 = 2112;
    v19 = v5;
    _os_log_impl(&dword_1B7AD5000, v2, OS_LOG_TYPE_INFO, "history query %lu / %lu - %@ - in operation bind", &v14, 0x20u);
  }

  v6 = *(a1 + 72);
  ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 80), *(a1 + 56));
  IMDSqlStatementBindTextFromCFString(v6 + 32, ValueAtIndex);
  if (*(a1 + 112) == 1)
  {
    v8 = *(a1 + 72);
    v9 = CFArrayGetValueAtIndex(*(a1 + 88), *(a1 + 56));
    IMDSqlStatementBindTextFromCFString(v8 + 32, v9);
  }

  if (*(a1 + 113) == 1)
  {
    IMDSqlStatementBindTextFromCFString(*(a1 + 72) + 32, *(a1 + 40));
    IMDSqlStatementBindTextFromCFString(*(a1 + 72) + 32, *(a1 + 48));
    v10 = *(a1 + 96);
    AssociatedMessageGUIDFromThreadIdentifier = IMMessageCreateAssociatedMessageGUIDFromThreadIdentifier();
    IMDSqlStatementBindTextFromCFString(*(a1 + 72) + 32, AssociatedMessageGUIDFromThreadIdentifier);
  }

  v12 = *(a1 + 104);
  if (v12 >= 1)
  {
    IMDSqlStatementBindInt(*(a1 + 72) + 32, v12);
  }

  v13 = *MEMORY[0x1E69E9840];
}

void sub_1B7BDA96C(uint64_t a1)
{
  v22 = *MEMORY[0x1E69E9840];
  v2 = IMDatabaseLogHandle();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 48);
    v4 = *(a1 + 56);
    v5 = *(a1 + 32);
    *buf = 134218498;
    v17 = v3;
    v18 = 2048;
    v19 = v4;
    v20 = 2112;
    v21 = v5;
    _os_log_impl(&dword_1B7AD5000, v2, OS_LOG_TYPE_INFO, "history query %lu / %lu - %@ - in operation results", buf, 0x20u);
  }

  if (!*(a1 + 40))
  {
    v6 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CFC094(v6, v7);
    }
  }

  if (IMDSqlOperationHasRows(*(a1 + 64)))
  {
    v8 = MEMORY[0x1E69E9820];
    do
    {
      v9 = *(a1 + 64);
      v15[0] = v8;
      v15[1] = 3221225472;
      v15[2] = sub_1B7BDAB28;
      v15[3] = &unk_1E7CB6FA8;
      v15[4] = *(a1 + 40);
      IMDSqlOperationIterateRow(v9, v15);
    }

    while (IMDSqlOperationHasRows(*(a1 + 64)));
  }

  v10 = IMDatabaseLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v13 = objc_msgSend_count(*(a1 + 40), v11, v12);
    *buf = 134217984;
    v17 = v13;
    _os_log_impl(&dword_1B7AD5000, v10, OS_LOG_TYPE_INFO, "history query got %lu rows", buf, 0xCu);
  }

  v14 = *MEMORY[0x1E69E9840];
}

uint64_t sub_1B7BDAB28(uint64_t a1, __int128 *a2)
{
  v10 = *a2;
  v11 = *(a2 + 2);
  v4 = IMDInt64FromSqlColumn(&v10);
  if (!v4)
  {
    v5 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CFC144(v5, v3);
    }
  }

  v6 = *(a1 + 32);
  v7 = objc_msgSend_numberWithLongLong_(MEMORY[0x1E696AD98], v3, v4);
  return objc_msgSend_addObject_(v6, v8, v7);
}

void sub_1B7BDABB8(uint64_t a1, xpc_object_t xdict)
{
  v13 = *MEMORY[0x1E69E9840];
  value = xpc_dictionary_get_value(xdict, "array_result");
  if (value)
  {
    *&buf = 0;
    *(&buf + 1) = &buf;
    v11 = 0x2020000000;
    v12 = 0;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = sub_1B7BDAD24;
    v9[3] = &unk_1E7CBCE00;
    v9[4] = *(a1 + 32);
    v9[5] = &buf;
    xpc_array_apply(value, v9);
    _Block_object_dispose(&buf, 8);
  }

  else
  {
    v5 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CFC1F4(v5, v6);
    }

    v7 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = xdict;
      _os_log_impl(&dword_1B7AD5000, v7, OS_LOG_TYPE_INFO, "IMDP client got null array_result back: %@", &buf, 0xCu);
    }
  }

  v8 = *MEMORY[0x1E69E9840];
}

uint64_t sub_1B7BDAD24(uint64_t a1, uint64_t a2, void *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    *(*(*(a1 + 32) + 8) + 24) = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
  }

  v5 = _IMDCopyIMDMessageRecordFromXPCObjectClient(a3);
  if ((*(*(*(a1 + 40) + 8) + 24) & 1) == 0)
  {
    v6 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v9 = 138412290;
      v10 = v5;
      _os_log_impl(&dword_1B7AD5000, v6, OS_LOG_TYPE_INFO, "history query: IMDP client got at least one message: %@", &v9, 0xCu);
    }

    *(*(*(a1 + 40) + 8) + 24) = 1;
  }

  if (v5)
  {
    CFArrayAppendValue(*(*(*(a1 + 32) + 8) + 24), v5);
    CFRelease(v5);
  }

  v7 = *MEMORY[0x1E69E9840];
  return 1;
}

const __CFArray *IMDMessageRecordCopyMessagesWithChatIdentifiersOnServicesBeforeAndAfterGUIDWithOptionalThreadIdentifier(void *a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, const __CFString *a6, BOOL *a7, BOOL *a8)
{
  v97 = *MEMORY[0x1E69E9840];
  v12 = objc_msgSend_count(a1, a2, a3);
  v17 = objc_msgSend_count(a2, v13, v14);
  if (a6)
  {
    v18 = CFStringGetLength(a6) > 0;
  }

  else
  {
    v18 = 0;
  }

  v19 = objc_msgSend_sharedFeatureFlags(MEMORY[0x1E69A8070], v15, v16);
  isOneChatEnabled = objc_msgSend_isOneChatEnabled(v19, v20, v21);
  if (v12 && v17 && v12 == v17)
  {
    v23 = isOneChatEnabled;
    v24 = IMDatabaseLogHandle();
    v25 = os_log_type_enabled(v24, OS_LOG_TYPE_INFO);
    if (a3)
    {
      v71 = a8;
      if (v25)
      {
        *buf = 138413570;
        *&buf[4] = a1;
        *&buf[12] = 2112;
        *&buf[14] = a2;
        *&buf[22] = 2112;
        v93 = a3;
        *v94 = 2048;
        *&v94[2] = a4;
        *&v94[10] = 2048;
        *&v94[12] = a5;
        v95 = 2112;
        v96 = a6;
        _os_log_impl(&dword_1B7AD5000, v24, OS_LOG_TYPE_INFO, "IMDMessageRecordCopyMessagesWithChatIdentifiersOnServicesBeforeAndAfterGUID with ids: %@ services: %@ messageGUID: %@ numberOfMessagesBefore: %lld numberOfMessagesAfter: %lld threadIdentifier: %@", buf, 0x3Eu);
      }

      v86 = 0;
      v87 = &v86;
      v88 = 0x2020000000;
      v89 = 0;
      if (IMDIsRunningInDatabaseServerProcess())
      {
        if (v18)
        {
          v90 = 0;
          v91 = 0;
          AssociatedMessageGUIDFromThreadIdentifier = IMMessageCreateAssociatedMessageGUIDFromThreadIdentifier();
          IMMessageThreadIdentifierGetComponents();
          if (objc_msgSend_length(v91, v27, v28) && objc_msgSend_length(v90, v29, v30))
          {
            v31 = objc_alloc(MEMORY[0x1E695DFA8]);
            v33 = objc_msgSend_initWithCapacity_(v31, v32, a4);
            v34 = objc_alloc(MEMORY[0x1E695DFA8]);
            v36 = objc_msgSend_initWithCapacity_(v34, v35, a5);
            v39 = objc_alloc_init(MEMORY[0x1E695DFA8]);
            if (a4 >= 1)
            {
              sub_1B7BE881C(@"SELECT   m.ROWID FROM   message m INDEXED BY   message_idx_thread_originator_guid INNER JOIN   chat_message_join cmj ON cmj.message_id = m.ROWID WHERE   m.thread_originator_guid = ? AND m.thread_originator_part = ?   AND m.date < (SELECT om.date FROM message om WHERE om.guid = ?) ORDER BY   m.date DESC LIMIT ?", a3, v91, v90, a4, v33);
            }

            if (a5 >= 1)
            {
              sub_1B7BE881C(@"SELECT   m.ROWID FROM   message m INDEXED BY   message_idx_thread_originator_guid INNER JOIN   chat_message_join cmj ON cmj.message_id = m.ROWID WHERE   m.thread_originator_guid = ? AND m.thread_originator_part = ?   AND m.date >= (SELECT om.date FROM message om WHERE om.guid = ?) ORDER BY   m.date ASC LIMIT ? + 1", a3, v91, v90, a5, v36);
            }

            if (objc_msgSend_length(AssociatedMessageGUIDFromThreadIdentifier, v37, v38, a8))
            {
              v40 = IMDatabaseLogHandle();
              if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412290;
                *&buf[4] = AssociatedMessageGUIDFromThreadIdentifier;
                _os_log_impl(&dword_1B7AD5000, v40, OS_LOG_TYPE_DEFAULT, "Performing threaded history query for thread originator associated messages without thread_originator_guid with associated message GUID: %@", buf, 0xCu);
              }

              *buf = MEMORY[0x1E69E9820];
              *&buf[8] = 3221225472;
              *&buf[16] = sub_1B7BE8BE8;
              v93 = &unk_1E7CB7B50;
              *v94 = v39;
              *&v94[8] = AssociatedMessageGUIDFromThreadIdentifier;
              IMDRunSqlOperation(buf);
            }

            MessagesInSet = IMDMessageRecordLoadMessagesInSet(v33, a4, 1);
            v42 = IMDMessageRecordLoadMessagesInSet(v36, (a5 + 1), 0);
            v45 = IMDMessageRecordLoadMessagesInSet(v39, a5, 0);
            if (a4 >= 1 && a7 && objc_msgSend_count(MessagesInSet, v43, v44) < a4)
            {
              *a7 = 0;
            }

            if (a5 >= 1 && v72 && objc_msgSend_count(v42, v43, v44) < (a5 + 1))
            {
              *v72 = 0;
            }

            objc_msgSend_addObjectsFromArray_(v42, v43, v45);
            objc_msgSend_addObjectsFromArray_(v42, v46, MessagesInSet);

            v47 = IMDatabaseLogHandle();
            if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
            {
              v50 = objc_msgSend_count(v42, v48, v49);
              *buf = 134217984;
              *&buf[4] = v50;
              _os_log_impl(&dword_1B7AD5000, v47, OS_LOG_TYPE_DEFAULT, "Threaded history query got %llu items", buf, 0xCu);
            }
          }

          else
          {
            if (IMOSLoggingEnabled())
            {
              v58 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v58, OS_LOG_TYPE_INFO))
              {
                *buf = 138412802;
                *&buf[4] = a6;
                *&buf[12] = 2112;
                *&buf[14] = v91;
                *&buf[22] = 2112;
                v93 = v90;
                _os_log_impl(&dword_1B7AD5000, v58, OS_LOG_TYPE_INFO, "Bad thread identifier given to paged history query, identifier: %@ guid: %@ part: %@", buf, 0x20u);
              }
            }

            v42 = 0;
          }

          goto LABEL_39;
        }

        v55 = a4 > 0 && a5 > 0;
        v75 = objc_alloc_init(MEMORY[0x1E695DFA8]);
        if (v55)
        {
          v56 = objc_alloc(MEMORY[0x1E695DFA8]);
          v74 = objc_msgSend_initWithCapacity_(v56, v57, a5);
        }

        else
        {
          v74 = 0;
        }

        v59 = 0;
        v60 = v23 ^ 1;
        v61 = MEMORY[0x1E69E9820];
        do
        {
          while (1)
          {
            v83[0] = v61;
            v83[1] = 3221225472;
            v83[2] = sub_1B7BDB6B4;
            v83[3] = &unk_1E7CBCE70;
            v84 = 0;
            v85 = v60;
            v83[6] = a5;
            v83[7] = a1;
            v83[8] = v59;
            v83[9] = a2;
            v83[10] = a3;
            v83[4] = v75;
            v83[5] = a4;
            IMDRunSqlOperation(v83);
            if (v55)
            {
              break;
            }

            if (++v59 == v12)
            {
              if (a4 < 1)
              {
                if (v71)
                {
                  *v71 = objc_msgSend_count(v75, v62, v63) > a5;
                }

                v64 = a7;
                if (a7)
                {
LABEL_63:
                  *v64 = 0;
                }
              }

              else
              {
                v64 = v71;
                if (a7)
                {
                  *a7 = objc_msgSend_count(v75, v62, v63) > a4;
                }

                a5 = a4;
                if (v71)
                {
                  goto LABEL_63;
                }
              }

              v65 = IMDMessageRecordLoadMessagesInSet(v75, (a5 + 1), a4 > 0);
              v87[3] = v65;

              goto LABEL_38;
            }
          }

          v80[0] = MEMORY[0x1E69E9820];
          v80[1] = 3221225472;
          v80[2] = sub_1B7BDBA74;
          v80[3] = &unk_1E7CBCEB8;
          v81 = 0;
          v82 = v60;
          v80[6] = a1;
          v80[7] = v59;
          v80[8] = a2;
          v80[9] = a3;
          v80[4] = v74;
          v80[5] = a5;
          IMDRunSqlOperation(v80);
          ++v59;
        }

        while (v59 != v12);
        v66 = IMDMessageRecordLoadMessagesInSet(v75, a4, 1);
        v67 = IMDMessageRecordLoadMessagesInSet(v74, (a5 + 1), 0);
        v70 = v67;
        if (a7)
        {
          *a7 = objc_msgSend_count(v66, v68, v69) == a4;
        }

        if (v71)
        {
          *v71 = objc_msgSend_count(v70, v68, v69) == a5 + 1;
        }

        objc_msgSend_addObjectsFromArray_(v70, v68, v66, v71);
        v87[3] = v70;
      }

      else
      {
        v79[0] = MEMORY[0x1E69E9820];
        v79[1] = 3221225472;
        v79[2] = sub_1B7BDBE28;
        v79[3] = &unk_1E7CBCEE0;
        v79[4] = &v86;
        v79[5] = a7;
        v79[6] = a8;
        __syncXPCIMDMessageRecordCopyMessagesWithChatIdentifiersOnServicesBeforeAndAfterGUIDWithOptionalThreadIdentifier_IPCAction(v79, a1, a2, a3, a6, a4, a5);
      }

LABEL_38:
      v42 = v87[3];
LABEL_39:
      _Block_object_dispose(&v86, 8);
      goto LABEL_40;
    }

    if (v25)
    {
      *buf = 0;
      _os_log_impl(&dword_1B7AD5000, v24, OS_LOG_TYPE_INFO, "IMDMessageRecordCopyMessagesWithChatIdentifiersOnServicesBeforeAndAfterGUID We have a NULL messageGUID, early returning ****--We should have not gotten to this point if we had a null messageGUID, please file a radar--****", buf, 2u);
    }
  }

  else
  {
    v51 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CFC2A4();
    }
  }

  v42 = 0;
LABEL_40:
  v52 = *MEMORY[0x1E69E9840];
  return v42;
}

void sub_1B7BDB6B4(uint64_t a1, uint64_t a2)
{
  MessagesWithChatIdentifiersOnServicesBeforeAndAfterGUIDWithOptionalThreadIdentifierQuery = IMDMessageRecordGetMessagesWithChatIdentifiersOnServicesBeforeAndAfterGUIDWithOptionalThreadIdentifierQuery(*(a1 + 88), *(a1 + 89), *(a1 + 40), *(a1 + 48));
  if (!MessagesWithChatIdentifiersOnServicesBeforeAndAfterGUIDWithOptionalThreadIdentifierQuery)
  {
    v5 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CFC2E0(v5, v6);
    }
  }

  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = sub_1B7BDB7F4;
  v11[3] = &unk_1E7CBCE20;
  v7 = *(a1 + 56);
  v8 = *(a1 + 64);
  v11[4] = a2;
  v11[5] = v7;
  v11[6] = v8;
  v15 = *(a1 + 89);
  v12 = *(a1 + 72);
  v9 = *(a1 + 48);
  v13 = *(a1 + 40);
  v14 = v9;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = sub_1B7BDB88C;
  v10[3] = &unk_1E7CBCE48;
  v10[4] = *(a1 + 32);
  v10[5] = v13;
  v10[6] = v9;
  v10[7] = a2;
  _IMDSqlOperationRunQuery(a2, MessagesWithChatIdentifiersOnServicesBeforeAndAfterGUIDWithOptionalThreadIdentifierQuery, v11, v10);
  if (MessagesWithChatIdentifiersOnServicesBeforeAndAfterGUIDWithOptionalThreadIdentifierQuery)
  {
    CFRelease(MessagesWithChatIdentifiersOnServicesBeforeAndAfterGUIDWithOptionalThreadIdentifierQuery);
  }
}

void sub_1B7BDB7F4(uint64_t a1)
{
  v2 = *(a1 + 32);
  ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 40), *(a1 + 48));
  IMDSqlStatementBindTextFromCFString(v2 + 32, ValueAtIndex);
  if (*(a1 + 88) == 1)
  {
    v4 = *(a1 + 32);
    v5 = CFArrayGetValueAtIndex(*(a1 + 56), *(a1 + 48));
    IMDSqlStatementBindTextFromCFString(v4 + 32, v5);
  }

  IMDSqlStatementBindTextFromCFString(*(a1 + 32) + 32, *(a1 + 64));
  v6 = *(a1 + 72);
  if (v6 <= 0)
  {
    v6 = *(a1 + 80) & ~(*(a1 + 80) >> 63);
  }

  v7 = *(a1 + 32) + 32;

  IMDSqlStatementBindInt(v7, v6);
}

void sub_1B7BDB88C(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  if (!*(a1 + 32))
  {
    v2 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CFC390(a1, v2);
    }
  }

  if (IMDSqlOperationHasRows(*(a1 + 56)))
  {
    v3 = MEMORY[0x1E69E9820];
    do
    {
      v4 = *(a1 + 56);
      v10[0] = v3;
      v10[1] = 3221225472;
      v10[2] = sub_1B7BDB9E4;
      v10[3] = &unk_1E7CB6FA8;
      v10[4] = *(a1 + 32);
      IMDSqlOperationIterateRow(v4, v10);
    }

    while (IMDSqlOperationHasRows(*(a1 + 56)));
  }

  v5 = IMDatabaseLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v8 = objc_msgSend_count(*(a1 + 32), v6, v7);
    *buf = 134217984;
    v12 = v8;
    _os_log_impl(&dword_1B7AD5000, v5, OS_LOG_TYPE_INFO, "Paged history query got %lu rows", buf, 0xCu);
  }

  v9 = *MEMORY[0x1E69E9840];
}

uint64_t sub_1B7BDB9E4(uint64_t a1, __int128 *a2)
{
  v10 = *a2;
  v11 = *(a2 + 2);
  v4 = IMDInt64FromSqlColumn(&v10);
  if (!v4)
  {
    v5 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CFC45C(v5, v3);
    }
  }

  v6 = *(a1 + 32);
  v7 = objc_msgSend_numberWithLongLong_(MEMORY[0x1E696AD98], v3, v4);
  return objc_msgSend_addObject_(v6, v8, v7);
}

void sub_1B7BDBA74(uint64_t a1, uint64_t a2)
{
  MessagesWithChatIdentifiersOnServicesBeforeAndAfterGUIDWithOptionalThreadIdentifierQuery = IMDMessageRecordGetMessagesWithChatIdentifiersOnServicesBeforeAndAfterGUIDWithOptionalThreadIdentifierQuery(*(a1 + 80), *(a1 + 81), 0, *(a1 + 40));
  if (!MessagesWithChatIdentifiersOnServicesBeforeAndAfterGUIDWithOptionalThreadIdentifierQuery)
  {
    v5 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CFC50C(v5, v6);
    }
  }

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = sub_1B7BDBBB8;
  v10[3] = &unk_1E7CBCE90;
  v8 = *(a1 + 40);
  v7 = *(a1 + 48);
  v10[4] = a2;
  v10[5] = v7;
  v10[6] = *(a1 + 56);
  v13 = *(a1 + 81);
  v11 = *(a1 + 64);
  v12 = v8;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = sub_1B7BDBC40;
  v9[3] = &unk_1E7CB8428;
  v9[4] = *(a1 + 32);
  v9[5] = v8;
  v9[6] = a2;
  _IMDSqlOperationRunQuery(a2, MessagesWithChatIdentifiersOnServicesBeforeAndAfterGUIDWithOptionalThreadIdentifierQuery, v10, v9);
  if (MessagesWithChatIdentifiersOnServicesBeforeAndAfterGUIDWithOptionalThreadIdentifierQuery)
  {
    CFRelease(MessagesWithChatIdentifiersOnServicesBeforeAndAfterGUIDWithOptionalThreadIdentifierQuery);
  }
}

void sub_1B7BDBBB8(uint64_t a1)
{
  v2 = *(a1 + 32);
  ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 40), *(a1 + 48));
  IMDSqlStatementBindTextFromCFString(v2 + 32, ValueAtIndex);
  if (*(a1 + 80) == 1)
  {
    v4 = *(a1 + 32);
    v5 = CFArrayGetValueAtIndex(*(a1 + 56), *(a1 + 48));
    IMDSqlStatementBindTextFromCFString(v4 + 32, v5);
  }

  IMDSqlStatementBindTextFromCFString(*(a1 + 32) + 32, *(a1 + 64));
  v6 = *(a1 + 72);
  v7 = *(a1 + 32) + 32;

  IMDSqlStatementBindInt(v7, v6);
}

void sub_1B7BDBC40(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  if (!*(a1 + 32))
  {
    v2 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CFC5BC(a1, v2);
    }
  }

  if (IMDSqlOperationHasRows(*(a1 + 48)))
  {
    v3 = MEMORY[0x1E69E9820];
    do
    {
      v4 = *(a1 + 48);
      v10[0] = v3;
      v10[1] = 3221225472;
      v10[2] = sub_1B7BDBD98;
      v10[3] = &unk_1E7CB6FA8;
      v10[4] = *(a1 + 32);
      IMDSqlOperationIterateRow(v4, v10);
    }

    while (IMDSqlOperationHasRows(*(a1 + 48)));
  }

  v5 = IMDatabaseLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v8 = objc_msgSend_count(*(a1 + 32), v6, v7);
    *buf = 134217984;
    v12 = v8;
    _os_log_impl(&dword_1B7AD5000, v5, OS_LOG_TYPE_INFO, "Paged history query got %lu rows for second load", buf, 0xCu);
  }

  v9 = *MEMORY[0x1E69E9840];
}

uint64_t sub_1B7BDBD98(uint64_t a1, __int128 *a2)
{
  v10 = *a2;
  v11 = *(a2 + 2);
  v4 = IMDInt64FromSqlColumn(&v10);
  if (!v4)
  {
    v5 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CFC688(v5, v3);
    }
  }

  v6 = *(a1 + 32);
  v7 = objc_msgSend_numberWithLongLong_(MEMORY[0x1E696AD98], v3, v4);
  return objc_msgSend_addObject_(v6, v8, v7);
}

uint64_t sub_1B7BDBE28(uint64_t a1, xpc_object_t xdict)
{
  v15 = *MEMORY[0x1E69E9840];
  value = xpc_dictionary_get_value(xdict, "array_result");
  if (value)
  {
    applier[0] = MEMORY[0x1E69E9820];
    applier[1] = 3221225472;
    applier[2] = sub_1B7BDBFAC;
    applier[3] = &unk_1E7CB6810;
    applier[4] = *(a1 + 32);
    xpc_array_apply(value, applier);
  }

  else
  {
    v5 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CFC738(v5, v6);
    }

    v7 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v14 = xdict;
      _os_log_impl(&dword_1B7AD5000, v7, OS_LOG_TYPE_INFO, "IMDMessageRecordCopyMessagesWithChatIdentifiersOnServicesBeforeAndAfterGUID IMDP client got null array_result back: %@", buf, 0xCu);
    }
  }

  v8 = xpc_dictionary_get_value(xdict, "has_messages_before");
  result = xpc_dictionary_get_value(xdict, "has_messages_after");
  v10 = result;
  if (v8)
  {
    result = xpc_BOOL_get_value(v8);
    **(a1 + 40) = result;
  }

  if (v10)
  {
    result = xpc_BOOL_get_value(v10);
    **(a1 + 48) = result;
  }

  v11 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1B7BDBFAC(uint64_t a1, uint64_t a2, void *a3)
{
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    *(*(*(a1 + 32) + 8) + 24) = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
  }

  v5 = _IMDCopyIMDMessageRecordFromXPCObjectClient(a3);
  if (v5)
  {
    v6 = v5;
    CFArrayAppendValue(*(*(*(a1 + 32) + 8) + 24), v5);
    CFRelease(v6);
  }

  return 1;
}

uint64_t IMDMessageRecordCopyFrequentRepliesForChatIdentifiersOnServicesUpToLimit(void *a1, char *a2, uint64_t a3)
{
  v6 = objc_msgSend_count(a1, a2, a3);
  v9 = objc_msgSend_count(a2, v7, v8);
  if (v6 && v9 && v6 == v9)
  {
    v34 = 0;
    v35 = &v34;
    v36 = 0x2020000000;
    v37 = 0;
    if (IMDIsRunningInDatabaseServerProcess())
    {
      v10 = objc_alloc(MEMORY[0x1E696AB50]);
      v12 = objc_msgSend_initWithCapacity_(v10, v11, a3 + a3 * v6);
      v33[0] = MEMORY[0x1E69E9820];
      v33[1] = 3221225472;
      v33[2] = sub_1B7BDC324;
      v33[3] = &unk_1E7CBCF08;
      v33[4] = v12;
      v33[5] = a3;
      _IMDPerformLockedStatementBlockWithQuery(@"SELECT count(*) as count, m.text as reply FROM(  SELECT text FROM message WHERE is_from_me == 1 AND text != '\uFFFC' ORDER BY ROWID DESC LIMIT 1000) m GROUP BY m.text ORDER BY count DESC LIMIT ?;", v33);
      v32[0] = MEMORY[0x1E69E9820];
      v32[1] = 3221225472;
      v32[2] = sub_1B7BDC45C;
      v32[3] = &unk_1E7CBCF30;
      v32[6] = a1;
      v32[7] = a2;
      v32[8] = a3;
      v32[4] = v12;
      v32[5] = v6;
      _IMDPerformLockedStatementBlockWithQuery(@"SELECT count(*) as count, m.text as reply FROM message m INNER JOIN chat_message_join cm ON   m.ROWID = cm.message_id WHERE m.is_from_me == 1 AND text != '\uFFFC' AND   cm.chat_id = (SELECT c.rowid FROM chat c WHERE c.chat_identifier = ? AND c.service_name = ?) GROUP BY m.text ORDER BY count DESC, m.date DESC LIMIT ?", v32);
      v15 = objc_msgSend_allObjects(v12, v13, v14);
      v31[0] = MEMORY[0x1E69E9820];
      v31[1] = 3221225472;
      v31[2] = sub_1B7BDC5CC;
      v31[3] = &unk_1E7CBCF58;
      v31[4] = v12;
      v17 = objc_msgSend_sortedArrayUsingComparator_(v15, v16, v31);
      v20 = objc_msgSend_count(v17, v18, v19);
      if (a3 >= 1)
      {
        v22 = v20;
        v23 = 0;
        v24 = MEMORY[0x1E695E9C0];
        do
        {
          if (!v35[3])
          {
            Mutable = CFArrayCreateMutable(0, 0, v24);
            v35[3] = Mutable;
          }

          if (v22 > v23)
          {
            v26 = objc_msgSend_objectAtIndexedSubscript_(v17, v21, v23);
            CFArrayAppendValue(v35[3], v26);
          }

          ++v23;
        }

        while (a3 != v23);
      }
    }

    else
    {
      v30[0] = MEMORY[0x1E69E9820];
      v30[1] = 3221225472;
      v30[2] = sub_1B7BDC620;
      v30[3] = &unk_1E7CB6838;
      v30[4] = &v34;
      __syncXPCIMDMessageRecordCopyFrequentRepliesForChatIdentifiersOnServicesLimit_IPCAction(v30, a1, a2, a3);
    }

    v28 = v35[3];
    _Block_object_dispose(&v34, 8);
  }

  else
  {
    v27 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CFBF4C();
    }

    return 0;
  }

  return v28;
}

uint64_t sub_1B7BDC324(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a1 + 40);
  CSDBSqliteBindInt64();
  if (sqlite3_step(*(a4 + 8)) == 100)
  {
    v7 = *MEMORY[0x1E695E480];
    do
    {
      v8 = sqlite3_column_int(*(a4 + 8), 0);
      if (sqlite3_column_text(*(a4 + 8), 1))
      {
        v9 = sqlite3_column_text(*(a4 + 8), 1);
        v10 = CFStringCreateWithCString(v7, v9, 0x8000100u);
        v12 = v10;
        if (v10)
        {
          v13 = v8 < 3;
        }

        else
        {
          v13 = 1;
        }

        if (!v13)
        {
          v14 = objc_msgSend_stringByReplacingOccurrencesOfString_withString_(v10, v11, @"\uFFFC", &stru_1F2FA9728);
          v17 = objc_msgSend_stringByReplacingOccurrencesOfString_withString_(v14, v15, @"\uFFFD", &stru_1F2FA9728);
          do
          {
            objc_msgSend_addObject_(*(a1 + 32), v16, v17);
            --v8;
          }

          while (v8);
        }

        if (v12)
        {
          CFRelease(v12);
        }
      }
    }

    while (sqlite3_step(*(a4 + 8)) == 100);
  }

  return CSDBSqliteStatementReset();
}

uint64_t sub_1B7BDC45C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(result + 40))
  {
    v5 = result;
    v6 = 0;
    v7 = *MEMORY[0x1E695E480];
    do
    {
      CFArrayGetValueAtIndex(*(v5 + 48), v6);
      CSDBSqliteBindTextFromCFString();
      CFArrayGetValueAtIndex(*(v5 + 56), v6);
      CSDBSqliteBindTextFromCFString();
      v8 = *(v5 + 64);
      CSDBSqliteBindInt64();
      while (sqlite3_step(*(a4 + 8)) == 100)
      {
        v9 = sqlite3_column_int(*(a4 + 8), 0);
        if (sqlite3_column_text(*(a4 + 8), 1))
        {
          v10 = sqlite3_column_text(*(a4 + 8), 1);
          v11 = CFStringCreateWithCString(v7, v10, 0x8000100u);
          v13 = v11;
          if (v11)
          {
            v14 = v9 < 3;
          }

          else
          {
            v14 = 1;
          }

          if (!v14)
          {
            v15 = objc_msgSend_stringByReplacingOccurrencesOfString_withString_(v11, v12, @"\uFFFC", &stru_1F2FA9728);
            v18 = objc_msgSend_stringByReplacingOccurrencesOfString_withString_(v15, v16, @"\uFFFD", &stru_1F2FA9728);
            do
            {
              objc_msgSend_addObject_(*(v5 + 32), v17, v18);
              --v9;
            }

            while (v9);
          }

          if (v13)
          {
            CFRelease(v13);
          }
        }
      }

      result = CSDBSqliteStatementReset();
      ++v6;
    }

    while (v6 < *(v5 + 40));
  }

  return result;
}

uint64_t sub_1B7BDC5CC(uint64_t a1, const char *a2, uint64_t a3)
{
  v5 = objc_msgSend_countForObject_(*(a1 + 32), a2, a2);
  v7 = objc_msgSend_countForObject_(*(a1 + 32), v6, a3);
  if (v5 == v7)
  {
    v8 = 0;
  }

  else
  {
    v8 = -1;
  }

  if (v5 < v7)
  {
    return 1;
  }

  else
  {
    return v8;
  }
}

void sub_1B7BDC620(uint64_t a1, xpc_object_t xdict)
{
  value = xpc_dictionary_get_value(xdict, "array_result");
  if (value)
  {
    v4 = value;
    count = xpc_array_get_count(value);
    if (count)
    {
      v6 = count;
      v7 = 0;
      v8 = MEMORY[0x1E695E9C0];
      do
      {
        if (!*(*(*(a1 + 32) + 8) + 24))
        {
          *(*(*(a1 + 32) + 8) + 24) = CFArrayCreateMutable(0, 0, v8);
        }

        string = xpc_array_get_string(v4, v7);
        if (string)
        {
          v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x1E696AEC0], v10, string);
          if (v11)
          {
            CFArrayAppendValue(*(*(*(a1 + 32) + 8) + 24), v11);
          }
        }

        ++v7;
      }

      while (v6 != v7);
    }
  }
}

uint64_t IMDMessageRecordCopyGUIDsForMessagesWithChatIdentifiersOnServices(void *a1, char *a2, uint64_t a3)
{
  v5 = objc_msgSend_count(a1, a2, a3);
  v8 = objc_msgSend_count(a2, v6, v7);
  if (v5 && v8 && v5 == v8)
  {
    v14 = 0;
    v15 = &v14;
    v16 = 0x2020000000;
    v17 = 0;
    if (IMDIsRunningInDatabaseServerProcess())
    {
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = sub_1B7BDC888;
      v13[3] = &unk_1E7CBCD60;
      v13[6] = a1;
      v13[7] = a2;
      v13[4] = &v14;
      v13[5] = v5;
      _IMDPerformLockedStatementBlockWithQuery(@"SELECT m.guid FROM message m INNER JOIN chat_message_join cm ON   m.ROWID = cm.message_id WHERE cm.chat_id = (SELECT c.rowid FROM chat c WHERE c.chat_identifier = ? AND c.service_name = ?)", v13);
    }

    else
    {
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = sub_1B7BDC9B8;
      v12[3] = &unk_1E7CB6838;
      v12[4] = &v14;
      __syncXPCIMDMessageRecordCopyGUIDsForMessagesWithChatIdentifiersOnServices_IPCAction(v12, a1, a2);
    }

    v10 = v15[3];
    _Block_object_dispose(&v14, 8);
  }

  else
  {
    v9 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CFBF4C();
    }

    return 0;
  }

  return v10;
}

uint64_t sub_1B7BDC888(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(result + 40))
  {
    v5 = result;
    v6 = 0;
    v7 = *MEMORY[0x1E695E480];
    v8 = MEMORY[0x1E695E9C0];
    do
    {
      CFArrayGetValueAtIndex(*(v5 + 48), v6);
      CSDBSqliteBindTextFromCFString();
      CFArrayGetValueAtIndex(*(v5 + 56), v6);
      CSDBSqliteBindTextFromCFString();
      while (sqlite3_step(*(a4 + 8)) == 100)
      {
        if (sqlite3_column_text(*(a4 + 8), 0))
        {
          v9 = sqlite3_column_text(*(a4 + 8), 0);
          v10 = CFStringCreateWithCString(v7, v9, 0x8000100u);
          if (v10)
          {
            v11 = v10;
            v12 = *(*(*(v5 + 32) + 8) + 24);
            if (!v12)
            {
              *(*(*(v5 + 32) + 8) + 24) = CFArrayCreateMutable(0, 0, v8);
              v12 = *(*(*(v5 + 32) + 8) + 24);
            }

            CFArrayAppendValue(v12, v11);
            CFRelease(v11);
          }
        }
      }

      result = CSDBSqliteStatementReset();
      ++v6;
    }

    while (v6 < *(v5 + 40));
  }

  return result;
}

void sub_1B7BDC9B8(uint64_t a1, xpc_object_t xdict)
{
  value = xpc_dictionary_get_value(xdict, "array_result");
  if (value)
  {
    v4 = value;
    count = xpc_array_get_count(value);
    if (count)
    {
      v6 = count;
      v7 = 0;
      v8 = MEMORY[0x1E695E9C0];
      do
      {
        if (!*(*(*(a1 + 32) + 8) + 24))
        {
          *(*(*(a1 + 32) + 8) + 24) = CFArrayCreateMutable(0, 0, v8);
        }

        string = xpc_array_get_string(v4, v7);
        if (string)
        {
          v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x1E696AEC0], v10, string);
          if (v11)
          {
            CFArrayAppendValue(*(*(*(a1 + 32) + 8) + 24), v11);
          }
        }

        ++v7;
      }

      while (v6 != v7);
    }
  }
}

BOOL IMDMessageRecordDeleteMessagesWithGUIDsChatIdentifiersOnServices(void *a1, void *a2, void *a3)
{
  v40 = *MEMORY[0x1E69E9840];
  v6 = objc_msgSend_count(a2, a2, a3);
  v9 = objc_msgSend_count(a3, v7, v8);
  v12 = objc_msgSend_count(a1, v10, v11);
  if (v12 && v6 && v9 && v6 == v9)
  {
    v13 = v12;
    if (IMDIsRunningInDatabaseServerProcess())
    {
      objc_msgSend_timeIntervalSinceReferenceDate(MEMORY[0x1E695DF00], v14, v15);
      v17 = v16;
      memset(v31, 0, sizeof(v31));
      memset(v30, 0, sizeof(v30));
      IMDSqlOperationInitWithSharedCSDBDatabase(v30);
      IMDSqlOperationBeginTransaction(v30);
      v18 = IMDMessageRecordDeleteMessagesWithGUIDsChatIdentifiersOnServicesQuery1(v13);
      for (i = 0; i != v6; ++i)
      {
        _IMDSqlOperationBeginQuery(v30, v18);
        ValueAtIndex = CFArrayGetValueAtIndex(a2, i);
        IMDSqlStatementBindTextFromCFString(v31, ValueAtIndex);
        v21 = CFArrayGetValueAtIndex(a3, i);
        IMDSqlStatementBindTextFromCFString(v31, v21);
        IMDSqlStatementBindTextFromArrayOfCFStrings(v31, a1);
        IMDSqlOperationFinishQuery(v30);
      }

      IMDSqlOperationCommitOrRevertTransaction(v30);
      v22 = IMDSqlOperationRelease(v30, 0);
      CFRelease(v18);
      v23 = IMDatabaseLogHandle();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
      {
        objc_msgSend_timeIntervalSinceReferenceDate(MEMORY[0x1E695DF00], v24, v25);
        *buf = 134218752;
        v33 = v13;
        v34 = 2048;
        v35 = v26 - v17;
        v36 = 2048;
        v37 = v6;
        v38 = 2048;
        v39 = v6;
        _os_log_impl(&dword_1B7AD5000, v23, OS_LOG_TYPE_INFO, "Deleted %ld messages in %f seconds on %ld chats and %ld services", buf, 0x2Au);
      }

      IMDCoreSpotlightScheduleUpdateForDeletedMessages(1006);
    }

    else
    {
      __syncXPCIMDMessageRecordDeleteMessagesWithGUIDsChatIdentifiersOnServices_IPCAction(0, a1, a2, a3);
      v22 = 1;
    }
  }

  else
  {
    v27 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CFC7E8();
    }

    v22 = 0;
  }

  v28 = *MEMORY[0x1E69E9840];
  return v22;
}

void IMDMessageRecordMarkMessagesAsUnreadWithChatGUIDUpToGUIDFromMe(const __CFString *a1, uint64_t a2, int a3)
{
  if (IMDIsRunningInDatabaseServerProcess())
  {
    v6 = IMDChatRecordCopyChatForGUID(a1);
    if (v6)
    {
      v7 = v6;
      Identifier = IMDChatRecordGetIdentifier(v6);
      CFRelease(v7);
    }

    else
    {
      Identifier = -1;
    }

    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = sub_1B7BDCDE4;
    v9[3] = &unk_1E7CBCF78;
    v9[4] = Identifier;
    v10 = a3;
    _IMDPerformLockedStatementBlockWithQuery(@"UPDATE   message SET   is_read = 0, date_read = 0 WHERE   rowid in(    select m.rowid from message m       INNER JOIN chat_message_join       cm ON m.ROWID = cm.message_id     WHERE       cm.chat_id = ?       AND m.item_type == 0       AND m.is_from_me == ?  )", v9);
  }

  else
  {

    __syncXPCIMDMessageRecordMarkMessagesAsUnreadWithChatGUIDUpToGUIDFromMe_IPCAction(&unk_1F2FA1370, a1, a2, a3);
  }
}

void sub_1B7BDCDE4(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  CSDBSqliteBindInt64();
  v3 = *(a1 + 40);
  CSDBSqliteBindInt64();
  v4 = CSDBSqliteStatementPerform();
  v5 = IMDatabaseLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7[0] = 67109120;
    v7[1] = v4;
    _os_log_impl(&dword_1B7AD5000, v5, OS_LOG_TYPE_DEFAULT, "SQLite returned %d from IMDMessageRecordMarkMessagesAsUnreadWithChatGUIDUpToGUIDFromMe", v7, 8u);
  }

  v6 = *MEMORY[0x1E69E9840];
}

void IMDMessageRecordMarkMessageGUIDUnread(uint64_t a1)
{
  if (IMDIsRunningInDatabaseServerProcess())
  {
    v2[0] = MEMORY[0x1E69E9820];
    v2[1] = 3221225472;
    v2[2] = sub_1B7BDCF64;
    v2[3] = &unk_1E7CB6F80;
    v2[4] = a1;
    _IMDPerformLockedStatementBlockWithQuery(@"update message set is_read = 0 where guid = ?;", v2);
  }

  else
  {

    __syncXPCIMDMessageRecordMarkMessageGUIDUnread_IPCAction(&unk_1F2FA1390, a1);
  }
}

void sub_1B7BDCF64(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  CSDBSqliteBindTextFromCFString();
  v2 = CSDBSqliteStatementPerform();
  if (v2 != 101)
  {
    v3 = v2;
    v4 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v6[0] = 67109120;
      v6[1] = v3;
      _os_log_impl(&dword_1B7AD5000, v4, OS_LOG_TYPE_DEFAULT, "SQLite returned %d from IMDMessageRecordMarkMessageGUIDUnread", v6, 8u);
    }
  }

  v5 = *MEMORY[0x1E69E9840];
}

uint64_t IMDMessageRecordCopyMessagesWithHandleOnServiceLimit(const __CFString *a1, const __CFString *a2, uint64_t a3)
{
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  if ((a1 || CFStringGetLength(0)) && (a2 || CFStringGetLength(0)))
  {
    if (IMDIsRunningInDatabaseServerProcess())
    {
      v6 = IMDHandleRecordCopyHandleForIDOnService(a1, a2);
      v7 = v6;
      if (v6)
      {
        Identifier = IMDHandleRecordGetIdentifier(v6);
        v9 = IMDMessageRecordCopyMessagesWithHandleIDLimit(Identifier, a3);
        v15[3] = v9;
        CFRelease(v7);
      }
    }

    else
    {
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = sub_1B7BDD1C0;
      v13[3] = &unk_1E7CB6838;
      v13[4] = &v14;
      __syncXPCIMDMessageRecordCopyMessagesWithHandleOnServiceLimit_IPCAction(v13, a1, a2, a3);
    }

    v10 = v15[3];
  }

  else
  {
    v11 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CFC824();
    }

    v10 = 0;
  }

  _Block_object_dispose(&v14, 8);
  return v10;
}

void sub_1B7BDD19C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

xpc_object_t sub_1B7BDD1C0(uint64_t a1, xpc_object_t xdict)
{
  result = xpc_dictionary_get_value(xdict, "array_result");
  if (result)
  {
    applier[0] = MEMORY[0x1E69E9820];
    applier[1] = 3221225472;
    applier[2] = sub_1B7BDD254;
    applier[3] = &unk_1E7CB6810;
    applier[4] = *(a1 + 32);
    return xpc_array_apply(result, applier);
  }

  return result;
}

uint64_t sub_1B7BDD254(uint64_t a1, uint64_t a2, void *a3)
{
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    *(*(*(a1 + 32) + 8) + 24) = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
  }

  v5 = _IMDCopyIMDMessageRecordFromXPCObjectClient(a3);
  if (v5)
  {
    v6 = v5;
    CFArrayAppendValue(*(*(*(a1 + 32) + 8) + 24), v5);
    CFRelease(v6);
  }

  return 1;
}

uint64_t IMDMessageRecordCopyMessageMatchingBodyStringWithChatIdentifiersServicesSkippingGUIDs(const __CFString *a1, const __CFString *a2, const __CFArray *a3, const __CFArray *a4, int a5, const __CFArray *a6, const __CFArray *a7, double a8)
{
  v8 = 0;
  if (!a1 || !a2)
  {
    return v8;
  }

  if (!CFStringGetLength(a1) || !CFStringGetLength(a2))
  {
    return 0;
  }

  if (!a6)
  {
    Count = 0;
    if (a7)
    {
      goto LABEL_7;
    }

    return 0;
  }

  Count = CFArrayGetCount(a6);
  if (!a7)
  {
    return 0;
  }

LABEL_7:
  v18 = CFArrayGetCount(a7);
  v8 = 0;
  if (Count && v18)
  {
    v21 = objc_msgSend_dateWithTimeIntervalSinceReferenceDate_(MEMORY[0x1E695DF00], v19, v20, a8);
    v28 = objc_msgSend___im_nanosecondTimeInterval(v21, v22, v23);
    v31 = 0;
    v32 = &v31;
    v33 = 0x2020000000;
    v34 = 0;
    if (IMDIsRunningInDatabaseServerProcess())
    {
      if (a3)
      {
        v24 = CFArrayGetCount(a3);
      }

      else
      {
        v24 = 0;
      }

      if (a4)
      {
        v26 = CFArrayGetCount(a4);
      }

      else
      {
        v26 = 0;
      }

      v27 = IMDMessageRecordCopyMessageMatchingBodyStringWithChatIdentifiersServicesSkippingGUIDsQuery(v24, v26, a5);
      v30[0] = MEMORY[0x1E69E9820];
      v30[1] = 3221225472;
      v30[2] = sub_1B7BDD54C;
      v30[3] = &unk_1E7CBCFA0;
      v30[6] = a2;
      v30[7] = v24;
      v30[8] = a3;
      v30[9] = v28;
      v30[10] = v26;
      v30[11] = a4;
      v30[12] = a1;
      v30[13] = a6;
      v30[14] = a7;
      v30[4] = &v31;
      v30[5] = Count;
      _IMDPerformLockedStatementBlockWithQuery(v27, v30);
      if (v27)
      {
        CFRelease(v27);
      }
    }

    else
    {
      v29[0] = MEMORY[0x1E69E9820];
      v29[1] = 3221225472;
      v29[2] = sub_1B7BDD6AC;
      v29[3] = &unk_1E7CB6838;
      v29[4] = &v31;
      __syncXPCIMDMessageRecordCopyMessageMatchingBodyStringWithChatIdentifiersServicesSkippingGUIDs_IPCAction(v29, a1, a2, a3, a4, a5, a6, a7, a8);
    }

    v8 = v32[3];
    _Block_object_dispose(&v31, 8);
  }

  return v8;
}

uint64_t sub_1B7BDD54C(uint64_t result)
{
  if (*(result + 40))
  {
    v1 = result;
    v2 = 0;
    v3 = 0;
    do
    {
      v4 = *(v1 + 48);
      CSDBSqliteBindTextFromCFString();
      if (*(v1 + 56) >= 1)
      {
        v5 = 0;
        do
        {
          CFArrayGetValueAtIndex(*(v1 + 64), v5);
          CSDBSqliteBindTextFromCFString();
          ++v5;
        }

        while (v5 < *(v1 + 56));
      }

      v6 = *(v1 + 72);
      CSDBSqliteBindInt64();
      if (*(v1 + 80) >= 1)
      {
        v7 = 0;
        do
        {
          CFArrayGetValueAtIndex(*(v1 + 88), v7);
          CSDBSqliteBindTextFromCFString();
          ++v7;
        }

        while (v7 < *(v1 + 80));
      }

      v8 = *(v1 + 96);
      CSDBSqliteBindTextFromCFString();
      CFArrayGetValueAtIndex(*(v1 + 104), v3);
      CSDBSqliteBindTextFromCFString();
      CFArrayGetValueAtIndex(*(v1 + 112), v3);
      CSDBSqliteBindTextFromCFString();
      v9 = CSDBSqliteStatementInteger64Result();
      if (v9 > v2)
      {
        v2 = v9;
      }

      result = CSDBSqliteStatementReset();
      ++v3;
    }

    while (v3 < *(v1 + 40));
    if (v2 > 0)
    {
      result = IMDMessageRecordCreateFromRecordIDUnlocked(*MEMORY[0x1E695E480], v2);
      *(*(*(v1 + 32) + 8) + 24) = result;
    }
  }

  return result;
}

uint64_t sub_1B7BDD6AC(uint64_t a1, void *a2)
{
  result = _IMDCopyIMDMessageRecordFromXPCObjectClient(a2);
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t IMDMessageRecordCopyMessageMatchingBodyStringWithHandleSkippingServicesSkippingGUIDs(const __CFString *a1, const __CFString *a2, const __CFArray *a3, const __CFArray *a4, double a5)
{
  v5 = 0;
  v33 = *MEMORY[0x1E69E9840];
  if (a1 && a2)
  {
    if (CFStringGetLength(a1) && CFStringGetLength(a2))
    {
      v28 = 0;
      v29 = &v28;
      v30 = 0x2020000000;
      v31 = 0;
      v13 = objc_msgSend_dateWithTimeIntervalSinceReferenceDate_(MEMORY[0x1E695DF00], v11, v12, a5);
      v16 = objc_msgSend___im_nanosecondTimeInterval(v13, v14, v15);
      if (!IMDIsRunningInDatabaseServerProcess())
      {
        v26[0] = MEMORY[0x1E69E9820];
        v26[1] = 3221225472;
        v26[2] = sub_1B7BDDA6C;
        v26[3] = &unk_1E7CB6838;
        v26[4] = &v28;
        __syncXPCIMDMessageRecordCopyMessageMatchingBodyStringWithHandleSkippingServicesSkippingGUIDs_IPCAction(v26, a1, a2, a3, a4, a5);
LABEL_18:
        v5 = v29[3];
        _Block_object_dispose(&v28, 8);
        goto LABEL_19;
      }

      if (a3)
      {
        Count = CFArrayGetCount(a3);
        if (a4)
        {
LABEL_8:
          v18 = CFArrayGetCount(a4);
          goto LABEL_13;
        }
      }

      else
      {
        Count = 0;
        if (a4)
        {
          goto LABEL_8;
        }
      }

      v18 = 0;
LABEL_13:
      v19 = Count;
      v20 = IMDMessageRecordCopyMessageMatchingBodyStringWithHandleSkippingServicesSkippingGUIDsQuery(Count, v18);
      if (!v20)
      {
        v21 = IMDatabaseLogHandle();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          v23 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v22, &stru_1F2FA9728);
          sub_1B7CFC860(v23, v32);
        }
      }

      v27[0] = MEMORY[0x1E69E9820];
      v27[1] = 3221225472;
      v27[2] = sub_1B7BDD978;
      v27[3] = &unk_1E7CBCFC8;
      v27[6] = v19;
      v27[7] = a3;
      v27[8] = v16;
      v27[9] = v18;
      v27[10] = a4;
      v27[11] = a1;
      v27[4] = &v28;
      v27[5] = a2;
      _IMDPerformLockedStatementBlockWithQuery(v20, v27);
      if (v20)
      {
        CFRelease(v20);
      }

      goto LABEL_18;
    }

    v5 = 0;
  }

LABEL_19:
  v24 = *MEMORY[0x1E69E9840];
  return v5;
}

uint64_t sub_1B7BDD978(uint64_t a1)
{
  v2 = *(a1 + 40);
  CSDBSqliteBindTextFromCFString();
  if (*(a1 + 48) >= 1)
  {
    v3 = 0;
    do
    {
      CFArrayGetValueAtIndex(*(a1 + 56), v3);
      CSDBSqliteBindTextFromCFString();
      ++v3;
    }

    while (v3 < *(a1 + 48));
  }

  v4 = *(a1 + 64);
  CSDBSqliteBindInt64();
  if (*(a1 + 72) >= 1)
  {
    v5 = 0;
    do
    {
      CFArrayGetValueAtIndex(*(a1 + 80), v5);
      CSDBSqliteBindTextFromCFString();
      ++v5;
    }

    while (v5 < *(a1 + 72));
  }

  v6 = *(a1 + 88);
  CSDBSqliteBindTextFromCFString();
  result = CSDBSqliteStatementInteger64Result();
  if (result > 0)
  {
    result = IMDMessageRecordCreateFromRecordIDUnlocked(*MEMORY[0x1E695E480], result);
    *(*(*(a1 + 32) + 8) + 24) = result;
  }

  return result;
}

uint64_t sub_1B7BDDA6C(uint64_t a1, void *a2)
{
  result = _IMDCopyIMDMessageRecordFromXPCObjectClient(a2);
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t IMDMessageRecordCopyMessageMatchingBodyStringWithHandleMatchingServiceMatchingSOSSkippingGUID(const __CFString *a1, const __CFString *a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6)
{
  v6 = 0;
  v33 = *MEMORY[0x1E69E9840];
  if (a1 && a2)
  {
    if (CFStringGetLength(a1) && CFStringGetLength(a2))
    {
      v28 = 0;
      v29 = &v28;
      v30 = 0x2020000000;
      v31 = 0;
      v15 = objc_msgSend_dateWithTimeIntervalSinceReferenceDate_(MEMORY[0x1E695DF00], v13, v14, a6);
      v18 = objc_msgSend___im_nanosecondTimeInterval(v15, v16, v17);
      if (IMDIsRunningInDatabaseServerProcess())
      {
        v19 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"SELECT   MAX(m.ROWID) FROM   message m   INDEXED BY message_idx_handle WHERE   m.handle_id IN(   SELECT       h.rowid     FROM       handle h     WHERE       h.id = ?  )  AND m.date >= ?   AND m.is_from_me = 0   AND m.was_deduplicated = 0   AND m.cache_roomnames IS NULL   AND m.is_sos  = ?   AND m.service = ?   AND m.guid NOT IN (?)   AND m.text = ? ");
        if (!v19)
        {
          v20 = IMDatabaseLogHandle();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
          {
            v22 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v21, &stru_1F2FA9728);
            sub_1B7CFC8BC(v22, v32);
          }
        }

        v26[0] = MEMORY[0x1E69E9820];
        v26[1] = 3221225472;
        v26[2] = sub_1B7BDDD10;
        v26[3] = &unk_1E7CBCFF0;
        v27 = a4;
        v26[6] = v18;
        v26[7] = a3;
        v26[8] = a5;
        v26[9] = a1;
        v26[4] = &v28;
        v26[5] = a2;
        _IMDPerformLockedStatementBlockWithQuery(v19, v26);
        if (v19)
        {
          CFRelease(v19);
        }
      }

      else
      {
        v25[0] = MEMORY[0x1E69E9820];
        v25[1] = 3221225472;
        v25[2] = sub_1B7BDDDB0;
        v25[3] = &unk_1E7CB6838;
        v25[4] = &v28;
        __syncXPCIMDMessageRecordCopyMessageMatchingBodyStringWithHandleMatchingServiceMatchingSOSSkippingGUID_IPCAction(v25, a1, a2, a3, a6, a4, a5);
      }

      v6 = v29[3];
      _Block_object_dispose(&v28, 8);
    }

    else
    {
      v6 = 0;
    }
  }

  v23 = *MEMORY[0x1E69E9840];
  return v6;
}

uint64_t sub_1B7BDDD10(uint64_t a1)
{
  v2 = *(a1 + 40);
  CSDBSqliteBindTextFromCFString();
  v3 = *(a1 + 48);
  CSDBSqliteBindInt64();
  v4 = *(a1 + 80);
  CSDBSqliteBindInt64();
  v5 = *(a1 + 56);
  CSDBSqliteBindTextFromCFString();
  v6 = *(a1 + 64);
  CSDBSqliteBindTextFromCFString();
  v7 = *(a1 + 72);
  CSDBSqliteBindTextFromCFString();
  result = CSDBSqliteStatementInteger64Result();
  if (result >= 1)
  {
    result = IMDMessageRecordCreateFromRecordIDUnlocked(*MEMORY[0x1E695E480], result);
    *(*(*(a1 + 32) + 8) + 24) = result;
  }

  return result;
}

uint64_t sub_1B7BDDDB0(uint64_t a1, void *a2)
{
  result = _IMDCopyIMDMessageRecordFromXPCObjectClient(a2);
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t IMDMessageRecordCopyMessageWithHandleOnServiceWithReplaceID(const __CFString *a1, const char *a2, uint64_t a3)
{
  v43[1] = *MEMORY[0x1E69E9840];
  v34 = 0;
  v35 = &v34;
  v36 = 0x2020000000;
  v37 = 0;
  v6 = objc_msgSend_sharedFeatureFlags(MEMORY[0x1E69A8070], a2, a3);
  if (objc_msgSend_isOneChatEnabled(v6, v7, v8))
  {
    v9 = objc_alloc(MEMORY[0x1E696AEB0]);
    v11 = objc_msgSend_initWithKey_ascending_(v9, v10, @"rowID", 0);
    v14 = objc_msgSend_synchronousDatabase(IMDDatabase, v12, v13);
    v16 = objc_msgSend_predicateWithFormat_(MEMORY[0x1E696AE18], v15, @"%K == %ld", *MEMORY[0x1E69A71D8], a3);
    v43[0] = v11;
    v18 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v17, v43, 1);
    v20 = objc_msgSend_predicateWithFormat_(MEMORY[0x1E696AE18], v19, @"%K == %@", *MEMORY[0x1E69A7058], a1);
    v33[0] = MEMORY[0x1E69E9820];
    v33[1] = 3221225472;
    v33[2] = sub_1B7BDE19C;
    v33[3] = &unk_1E7CB6860;
    v33[4] = &v34;
    objc_msgSend_fetchMessageRecordsFilteredUsingPredicate_sortedUsingDescriptors_inChatsFilteredUsingPredicate_fromHandlesUsingPredicate_limit_completionHandler_(v14, v21, v16, v18, 0, v20, 1, v33);

LABEL_15:
    v28 = v35[3];
    goto LABEL_16;
  }

  if ((a1 || CFStringGetLength(0)) && (a2 || CFStringGetLength(0)))
  {
    if (IMDIsRunningInDatabaseServerProcess())
    {
      v22 = IMDHandleRecordCopyHandleForIDOnService(a1, a2);
      v23 = v22;
      if (v22)
      {
        Identifier = IMDHandleRecordGetIdentifier(v22);
        v39 = 0;
        v40 = &v39;
        v41 = 0x2020000000;
        v42 = 0;
        v38[0] = MEMORY[0x1E69E9820];
        v38[1] = 3221225472;
        v38[2] = sub_1B7BE8DCC;
        v38[3] = &unk_1E7CBCD60;
        v38[6] = a3;
        v38[7] = 1;
        v38[4] = &v39;
        v38[5] = Identifier;
        _IMDPerformLockedStatementBlockWithQuery(@"SELECT m.ROWID, m.guid, m.text, m.replace, m.service_center, m.handle_id, m.subject, m.country, m.attributedBody, m.version, m.type, m.service, m.account, m.account_guid, m.error, m.date, m.date_read, m.date_delivered, m.is_delivered, m.is_finished, m.is_emote, m.is_from_me, m.is_empty, m.is_delayed, m.is_auto_reply, m.is_prepared, m.is_read, m.is_system_message, m.is_sent, m.has_dd_results, m.is_service_message, m.is_forward, m.was_downgraded, m.is_archive, m.cache_has_attachments, m.cache_roomnames, m.was_data_detected, m.was_deduplicated, m.is_audio_message, m.is_played, m.date_played, m.item_type, m.other_handle, m.group_title, m.group_action_type, m.share_status, m.share_direction, m.is_expirable, m.expire_state, m.message_action_type, m.message_source, m.associated_message_guid, m.associated_message_type, m.balloon_bundle_id, m.payload_data, m.expressive_send_style_id, m.associated_message_range_location, m.associated_message_range_length, m.time_expressive_send_played, m.message_summary_info, m.ck_sync_state, m.ck_record_id, m.ck_record_change_tag, m.destination_caller_id, m.is_corrupt, m.reply_to_guid, m.sort_id, m.is_spam, m.has_unseen_mention, m.thread_originator_guid, m.thread_originator_part, m.syndication_ranges, m.synced_syndication_ranges, m.was_delivered_quietly, m.did_notify_recipient, m.date_retracted, m.date_edited, m.date_recovered, m.was_detonated, m.part_count, m.is_stewie, m.is_sos, m.is_critical, m.bia_reference_id, m.is_kt_verified, m.fallback_hash, m.associated_message_emoji, m.is_pending_satellite_send, m.needs_relay, m.schedule_type, m.schedule_state, m.sent_or_received_off_grid, m.is_time_sensitive, m.ck_chat_id FROM message m INNER JOIN chat_message_join cm ON   m.ROWID = cm.message_id INNER JOIN chat c ON   c.ROWID = cm.chat_id INNER JOIN chat_handle_join ch ON   c.ROWID = ch.chat_id WHERE   ch.handle_id = ?   AND c.room_name IS NULL   AND m.replace = ? ORDER BY m.ROWID DESC LIMIT ?", v38);
        v25 = v40[3];
        _Block_object_dispose(&v39, 8);
        if (v25)
        {
          if (CFArrayGetCount(v25))
          {
            CFArrayGetValueAtIndex(v25, 0);
            ID = CSDBRecordGetID();
            v27 = IMDMessageRecordCreateFromRecordIDUnlocked(*MEMORY[0x1E695E480], ID);
            v35[3] = v27;
          }

          CFRelease(v25);
        }

        CFRelease(v23);
      }
    }

    else
    {
      v32[0] = MEMORY[0x1E69E9820];
      v32[1] = 3221225472;
      v32[2] = sub_1B7BDE1D4;
      v32[3] = &unk_1E7CB6838;
      v32[4] = &v34;
      __syncXPCIMDMessageRecordCopyMessageWithHandleOnServiceWithReplaceID_IPCAction(v32, a1, a2, a3);
    }

    goto LABEL_15;
  }

  v31 = IMDatabaseLogHandle();
  if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
  {
    sub_1B7CFC824();
  }

  v28 = 0;
LABEL_16:
  _Block_object_dispose(&v34, 8);
  v29 = *MEMORY[0x1E69E9840];
  return v28;
}

void sub_1B7BDE150(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_1B7BDE19C(uint64_t a1, void *a2, uint64_t a3)
{
  result = objc_msgSend_firstObject(a2, a2, a3);
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t sub_1B7BDE1D4(uint64_t a1, void *a2)
{
  result = _IMDCopyIMDMessageRecordFromXPCObjectClient(a2);
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t IMDMessageRecordCopyUndeliveredOneToOneiMessages(int64_t a1)
{
  if (IMOSLoggingEnabled())
  {
    v2 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_1B7AD5000, v2, OS_LOG_TYPE_DEBUG, "IMDMessageRecordCopyUndeliveredOneToOneMadridMessages", buf, 2u);
    }
  }

  *buf = 0;
  v9 = buf;
  v10 = 0x2020000000;
  v11 = 0;
  if (IMDIsRunningInDatabaseServerProcess())
  {
    v3 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"SELECT m.ROWID, m.guid, m.text, m.replace, m.service_center, m.handle_id, m.subject, m.country, m.attributedBody, m.version, m.type, m.service, m.account, m.account_guid, m.error, m.date, m.date_read, m.date_delivered, m.is_delivered, m.is_finished, m.is_emote, m.is_from_me, m.is_empty, m.is_delayed, m.is_auto_reply, m.is_prepared, m.is_read, m.is_system_message, m.is_sent, m.has_dd_results, m.is_service_message, m.is_forward, m.was_downgraded, m.is_archive, m.cache_has_attachments, m.cache_roomnames, m.was_data_detected, m.was_deduplicated, m.is_audio_message, m.is_played, m.date_played, m.item_type, m.other_handle, m.group_title, m.group_action_type, m.share_status, m.share_direction, m.is_expirable, m.expire_state, m.message_action_type, m.message_source, m.associated_message_guid, m.associated_message_type, m.balloon_bundle_id, m.payload_data, m.expressive_send_style_id, m.associated_message_range_location, m.associated_message_range_length, m.time_expressive_send_played, m.message_summary_info, m.ck_sync_state, m.ck_record_id, m.ck_record_change_tag, m.destination_caller_id, m.is_corrupt, m.reply_to_guid, m.sort_id, m.is_spam, m.has_unseen_mention, m.thread_originator_guid, m.thread_originator_part, m.syndication_ranges, m.synced_syndication_ranges, m.was_delivered_quietly, m.did_notify_recipient, m.date_retracted, m.date_edited, m.date_recovered, m.was_detonated, m.part_count, m.is_stewie, m.is_sos, m.is_critical, m.bia_reference_id, m.is_kt_verified, m.fallback_hash, m.associated_message_emoji, m.is_pending_satellite_send, m.needs_relay, m.schedule_type, m.schedule_state, m.sent_or_received_off_grid, m.is_time_sensitive, m.ck_chat_id FROM message m INDEXED BY message_idx_undelivered_one_to_one_imessage WHERE   m.cache_roomnames IS NULL   AND m.service IN ('%@', '%@')   AND m.is_sent = 1   AND m.is_delivered = 0   AND m.was_downgraded = 0   AND m.item_type == 0   AND m.schedule_type == 0   AND m.ROWID > ? ORDER BY m.date ASC", @"iMessage", @"RCS");
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = sub_1B7BDE3E8;
    v7[3] = &unk_1E7CB7520;
    v7[4] = buf;
    v7[5] = a1;
    _IMDPerformLockedStatementBlockWithQuery(v3, v7);
    if (v3)
    {
      CFRelease(v3);
    }
  }

  else
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = sub_1B7BDE528;
    v6[3] = &unk_1E7CB6838;
    v6[4] = buf;
    __syncXPCIMDMessageRecordCopyUndeliveredOneToOneiMessages_IPCAction(v6, a1);
  }

  v4 = *(v9 + 3);
  _Block_object_dispose(buf, 8);
  return v4;
}

void sub_1B7BDE3E8(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = CSDBSqliteBindInt64();
  sub_1B7AEAEE4(v3, v4, v5);
  v6 = CSDBRecordStoreProcessStatement();
  if (v6)
  {
    v7 = v6;
    if (CFArrayGetCount(v6) >= 1)
    {
      *(*(*(a1 + 32) + 8) + 24) = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
      if (*(*(*(a1 + 32) + 8) + 24))
      {
        if (CFArrayGetCount(v7) >= 1)
        {
          v8 = 0;
          v9 = *MEMORY[0x1E695E480];
          do
          {
            CFArrayGetValueAtIndex(v7, v8);
            ID = CSDBRecordGetID();
            v11 = IMDMessageRecordCreateFromRecordIDUnlocked(v9, ID);
            if (v11)
            {
              v12 = v11;
              CFArrayAppendValue(*(*(*(a1 + 32) + 8) + 24), v11);
              CFRelease(v12);
            }

            ++v8;
          }

          while (v8 < CFArrayGetCount(v7));
        }
      }
    }

    CFRelease(v7);
  }
}

xpc_object_t sub_1B7BDE528(uint64_t a1, xpc_object_t xdict)
{
  result = xpc_dictionary_get_value(xdict, "array_result");
  if (result)
  {
    applier[0] = MEMORY[0x1E69E9820];
    applier[1] = 3221225472;
    applier[2] = sub_1B7BDE5BC;
    applier[3] = &unk_1E7CB6810;
    applier[4] = *(a1 + 32);
    return xpc_array_apply(result, applier);
  }

  return result;
}

uint64_t sub_1B7BDE5BC(uint64_t a1, uint64_t a2, void *a3)
{
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    *(*(*(a1 + 32) + 8) + 24) = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
  }

  v5 = _IMDCopyIMDMessageRecordFromXPCObjectClient(a3);
  if (v5)
  {
    v6 = v5;
    CFArrayAppendValue(*(*(*(a1 + 32) + 8) + 24), v5);
    CFRelease(v6);
  }

  return 1;
}

uint64_t IMDMessageRecordCopyExpiringOrExpiredMessages(int64_t a1)
{
  if (IMOSLoggingEnabled())
  {
    v2 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_1B7AD5000, v2, OS_LOG_TYPE_DEBUG, "IMDMessageRecordCopyExpiredOrExpiringiMessages", buf, 2u);
    }
  }

  *buf = 0;
  v9 = buf;
  v10 = 0x2020000000;
  v11 = 0;
  if (IMDIsRunningInDatabaseServerProcess())
  {
    v3 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"SELECT m.ROWID, m.guid, m.text, m.replace, m.service_center, m.handle_id, m.subject, m.country, m.attributedBody, m.version, m.type, m.service, m.account, m.account_guid, m.error, m.date, m.date_read, m.date_delivered, m.is_delivered, m.is_finished, m.is_emote, m.is_from_me, m.is_empty, m.is_delayed, m.is_auto_reply, m.is_prepared, m.is_read, m.is_system_message, m.is_sent, m.has_dd_results, m.is_service_message, m.is_forward, m.was_downgraded, m.is_archive, m.cache_has_attachments, m.cache_roomnames, m.was_data_detected, m.was_deduplicated, m.is_audio_message, m.is_played, m.date_played, m.item_type, m.other_handle, m.group_title, m.group_action_type, m.share_status, m.share_direction, m.is_expirable, m.expire_state, m.message_action_type, m.message_source, m.associated_message_guid, m.associated_message_type, m.balloon_bundle_id, m.payload_data, m.expressive_send_style_id, m.associated_message_range_location, m.associated_message_range_length, m.time_expressive_send_played, m.message_summary_info, m.ck_sync_state, m.ck_record_id, m.ck_record_change_tag, m.destination_caller_id, m.is_corrupt, m.reply_to_guid, m.sort_id, m.is_spam, m.has_unseen_mention, m.thread_originator_guid, m.thread_originator_part, m.syndication_ranges, m.synced_syndication_ranges, m.was_delivered_quietly, m.did_notify_recipient, m.date_retracted, m.date_edited, m.date_recovered, m.was_detonated, m.part_count, m.is_stewie, m.is_sos, m.is_critical, m.bia_reference_id, m.is_kt_verified, m.fallback_hash, m.associated_message_emoji, m.is_pending_satellite_send, m.needs_relay, m.schedule_type, m.schedule_state, m.sent_or_received_off_grid, m.is_time_sensitive, m.ck_chat_id FROM message m INDEXED BY message_idx_expire_state WHERE   (m.expire_state = %d OR m.expire_state = %d)  AND m.item_type == 0   AND m.schedule_type == 0   AND m.ROWID > ? ORDER BY m.date ASC", 1, 2);
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = sub_1B7BDE810;
    v7[3] = &unk_1E7CB7520;
    v7[4] = buf;
    v7[5] = a1;
    _IMDPerformLockedStatementBlockWithQuery(v3, v7);
    if (v3)
    {
      CFRelease(v3);
    }
  }

  else
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = sub_1B7BDE950;
    v6[3] = &unk_1E7CB6838;
    v6[4] = buf;
    __syncXPCIMDMessageRecordCopyExpiringOrExpiredMessages_IPCAction(v6, a1);
  }

  v4 = *(v9 + 3);
  _Block_object_dispose(buf, 8);
  return v4;
}

void sub_1B7BDE810(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = CSDBSqliteBindInt64();
  sub_1B7AEAEE4(v3, v4, v5);
  v6 = CSDBRecordStoreProcessStatement();
  if (v6)
  {
    v7 = v6;
    if (CFArrayGetCount(v6) >= 1)
    {
      *(*(*(a1 + 32) + 8) + 24) = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
      if (*(*(*(a1 + 32) + 8) + 24))
      {
        if (CFArrayGetCount(v7) >= 1)
        {
          v8 = 0;
          v9 = *MEMORY[0x1E695E480];
          do
          {
            CFArrayGetValueAtIndex(v7, v8);
            ID = CSDBRecordGetID();
            v11 = IMDMessageRecordCreateFromRecordIDUnlocked(v9, ID);
            if (v11)
            {
              v12 = v11;
              CFArrayAppendValue(*(*(*(a1 + 32) + 8) + 24), v11);
              CFRelease(v12);
            }

            ++v8;
          }

          while (v8 < CFArrayGetCount(v7));
        }
      }
    }

    CFRelease(v7);
  }
}

xpc_object_t sub_1B7BDE950(uint64_t a1, xpc_object_t xdict)
{
  result = xpc_dictionary_get_value(xdict, "array_result");
  if (result)
  {
    applier[0] = MEMORY[0x1E69E9820];
    applier[1] = 3221225472;
    applier[2] = sub_1B7BDE9E4;
    applier[3] = &unk_1E7CB6810;
    applier[4] = *(a1 + 32);
    return xpc_array_apply(result, applier);
  }

  return result;
}

uint64_t sub_1B7BDE9E4(uint64_t a1, uint64_t a2, void *a3)
{
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    *(*(*(a1 + 32) + 8) + 24) = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
  }

  v5 = _IMDCopyIMDMessageRecordFromXPCObjectClient(a3);
  if (v5)
  {
    v6 = v5;
    CFArrayAppendValue(*(*(*(a1 + 32) + 8) + 24), v5);
    CFRelease(v6);
  }

  return 1;
}

uint64_t IMDMessageRecordCopyUnsentUnfailedMessages(int64_t a1)
{
  if (IMOSLoggingEnabled())
  {
    v2 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_1B7AD5000, v2, OS_LOG_TYPE_DEBUG, "IMDMessageRecordCopyUnsentUnfailedMessages", buf, 2u);
    }
  }

  *buf = 0;
  v9 = buf;
  v10 = 0x2020000000;
  v11 = 0;
  if (IMDIsRunningInDatabaseServerProcess())
  {
    v3 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"SELECT m.ROWID, m.guid, m.text, m.replace, m.service_center, m.handle_id, m.subject, m.country, m.attributedBody, m.version, m.type, m.service, m.account, m.account_guid, m.error, m.date, m.date_read, m.date_delivered, m.is_delivered, m.is_finished, m.is_emote, m.is_from_me, m.is_empty, m.is_delayed, m.is_auto_reply, m.is_prepared, m.is_read, m.is_system_message, m.is_sent, m.has_dd_results, m.is_service_message, m.is_forward, m.was_downgraded, m.is_archive, m.cache_has_attachments, m.cache_roomnames, m.was_data_detected, m.was_deduplicated, m.is_audio_message, m.is_played, m.date_played, m.item_type, m.other_handle, m.group_title, m.group_action_type, m.share_status, m.share_direction, m.is_expirable, m.expire_state, m.message_action_type, m.message_source, m.associated_message_guid, m.associated_message_type, m.balloon_bundle_id, m.payload_data, m.expressive_send_style_id, m.associated_message_range_location, m.associated_message_range_length, m.time_expressive_send_played, m.message_summary_info, m.ck_sync_state, m.ck_record_id, m.ck_record_change_tag, m.destination_caller_id, m.is_corrupt, m.reply_to_guid, m.sort_id, m.is_spam, m.has_unseen_mention, m.thread_originator_guid, m.thread_originator_part, m.syndication_ranges, m.synced_syndication_ranges, m.was_delivered_quietly, m.did_notify_recipient, m.date_retracted, m.date_edited, m.date_recovered, m.was_detonated, m.part_count, m.is_stewie, m.is_sos, m.is_critical, m.bia_reference_id, m.is_kt_verified, m.fallback_hash, m.associated_message_emoji, m.is_pending_satellite_send, m.needs_relay, m.schedule_type, m.schedule_state, m.sent_or_received_off_grid, m.is_time_sensitive, m.ck_chat_id FROM message m WHERE   m.is_from_me = 1   AND m.is_sent = 0   AND m.error = 0   AND m.item_type = 0   AND m.schedule_type = 0   AND m.ROWID > ? ");
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = sub_1B7BDEC2C;
    v7[3] = &unk_1E7CB7520;
    v7[4] = buf;
    v7[5] = a1;
    _IMDPerformLockedStatementBlockWithQuery(v3, v7);
    if (v3)
    {
      CFRelease(v3);
    }
  }

  else
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = sub_1B7BDED6C;
    v6[3] = &unk_1E7CB6838;
    v6[4] = buf;
    __syncXPCIMDMessageRecordCopyUnsentUnfailedMessages_IPCAction(v6, a1);
  }

  v4 = *(v9 + 3);
  _Block_object_dispose(buf, 8);
  return v4;
}

void sub_1B7BDEC2C(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = CSDBSqliteBindInt64();
  sub_1B7AEAEE4(v3, v4, v5);
  v6 = CSDBRecordStoreProcessStatement();
  if (v6)
  {
    v7 = v6;
    if (CFArrayGetCount(v6) >= 1)
    {
      *(*(*(a1 + 32) + 8) + 24) = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
      if (*(*(*(a1 + 32) + 8) + 24))
      {
        if (CFArrayGetCount(v7) >= 1)
        {
          v8 = 0;
          v9 = *MEMORY[0x1E695E480];
          do
          {
            CFArrayGetValueAtIndex(v7, v8);
            ID = CSDBRecordGetID();
            v11 = IMDMessageRecordCreateFromRecordIDUnlocked(v9, ID);
            if (v11)
            {
              v12 = v11;
              CFArrayAppendValue(*(*(*(a1 + 32) + 8) + 24), v11);
              CFRelease(v12);
            }

            ++v8;
          }

          while (v8 < CFArrayGetCount(v7));
        }
      }
    }

    CFRelease(v7);
  }
}

xpc_object_t sub_1B7BDED6C(uint64_t a1, xpc_object_t xdict)
{
  result = xpc_dictionary_get_value(xdict, "array_result");
  if (result)
  {
    applier[0] = MEMORY[0x1E69E9820];
    applier[1] = 3221225472;
    applier[2] = sub_1B7BDEE00;
    applier[3] = &unk_1E7CB6810;
    applier[4] = *(a1 + 32);
    return xpc_array_apply(result, applier);
  }

  return result;
}

uint64_t sub_1B7BDEE00(uint64_t a1, uint64_t a2, void *a3)
{
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    *(*(*(a1 + 32) + 8) + 24) = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
  }

  v5 = _IMDCopyIMDMessageRecordFromXPCObjectClient(a3);
  if (v5)
  {
    v6 = v5;
    CFArrayAppendValue(*(*(*(a1 + 32) + 8) + 24), v5);
    CFRelease(v6);
  }

  return 1;
}

uint64_t IMDMessageRecordCopyMessageActionItemsForOriginalMessageGUID(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  if (IMOSLoggingEnabled())
  {
    v2 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = a1;
      _os_log_impl(&dword_1B7AD5000, v2, OS_LOG_TYPE_DEBUG, "IMDMessageRecordCopyMessageActionItemsForOriginalMessageGUID [%@]", &buf, 0xCu);
    }
  }

  if (a1)
  {
    *&buf = 0;
    *(&buf + 1) = &buf;
    v8 = 0x2020000000;
    v9 = 0;
    if (IMDIsRunningInDatabaseServerProcess())
    {
      v6[0] = MEMORY[0x1E69E9820];
      v6[1] = 3221225472;
      v6[2] = sub_1B7BDF064;
      v6[3] = &unk_1E7CB7520;
      v6[4] = &buf;
      v6[5] = a1;
      _IMDPerformLockedStatementBlockWithQuery(@"SELECT ROWID, guid, text, replace, service_center, handle_id, subject, country, attributedBody, version, type, service, account, account_guid, error, date, date_read, date_delivered, is_delivered, is_finished, is_emote, is_from_me, is_empty, is_delayed, is_auto_reply, is_prepared, is_read, is_system_message, is_sent, has_dd_results, is_service_message, is_forward, was_downgraded, is_archive, cache_has_attachments, cache_roomnames, was_data_detected, was_deduplicated, is_audio_message, is_played, date_played, item_type, other_handle, group_title, group_action_type, share_status, share_direction, is_expirable, expire_state, message_action_type, message_source, associated_message_guid, associated_message_type, balloon_bundle_id, payload_data, expressive_send_style_id, associated_message_range_location, associated_message_range_length, time_expressive_send_played, message_summary_info, ck_sync_state, ck_record_id, ck_record_change_tag, destination_caller_id, is_corrupt, reply_to_guid, sort_id, is_spam, has_unseen_mention, thread_originator_guid, thread_originator_part, syndication_ranges, synced_syndication_ranges, was_delivered_quietly, did_notify_recipient, date_retracted, date_edited, date_recovered, was_detonated, part_count, is_stewie, is_sos, is_critical, bia_reference_id, is_kt_verified, fallback_hash, associated_message_emoji, is_pending_satellite_send, needs_relay, schedule_type, schedule_state, sent_or_received_off_grid, is_time_sensitive, ck_chat_id FROM message WHERE subject = ?   AND item_type = ? ORDER BY message.ROWID ASC;", v6);
    }

    else
    {
      v5[0] = MEMORY[0x1E69E9820];
      v5[1] = 3221225472;
      v5[2] = sub_1B7BDF198;
      v5[3] = &unk_1E7CB6838;
      v5[4] = &buf;
      __syncXPCIMDMessageRecordCopyMessageActionItemsForOriginalMessageGUID_IPCAction(v5, a1);
    }

    a1 = *(*(&buf + 1) + 24);
    _Block_object_dispose(&buf, 8);
  }

  v3 = *MEMORY[0x1E69E9840];
  return a1;
}

void sub_1B7BDF064(uint64_t a1)
{
  v2 = *(a1 + 40);
  CSDBSqliteBindTextFromCFString();
  v3 = CSDBSqliteBindInt64();
  sub_1B7AEAEE4(v3, v4, v5);
  v6 = CSDBRecordStoreProcessStatement();
  if (v6)
  {
    v7 = v6;
    Count = CFArrayGetCount(v6);
    if (Count >= 1)
    {
      v9 = *MEMORY[0x1E695E480];
      Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], Count, MEMORY[0x1E695E9C0]);
      if (Mutable)
      {
        v11 = Mutable;
        for (i = 0; i != Count; ++i)
        {
          CFArrayGetValueAtIndex(v7, i);
          ID = CSDBRecordGetID();
          v14 = IMDMessageRecordCreateFromRecordIDUnlocked(v9, ID);
          if (v14)
          {
            v15 = v14;
            CFArrayAppendValue(v11, v14);
            CFRelease(v15);
          }
        }

        *(*(*(a1 + 32) + 8) + 24) = v11;
      }
    }

    CFRelease(v7);
  }
}

xpc_object_t sub_1B7BDF198(uint64_t a1, xpc_object_t xdict)
{
  result = xpc_dictionary_get_value(xdict, "array_result");
  if (result)
  {
    applier[0] = MEMORY[0x1E69E9820];
    applier[1] = 3221225472;
    applier[2] = sub_1B7BDF22C;
    applier[3] = &unk_1E7CB6810;
    applier[4] = *(a1 + 32);
    return xpc_array_apply(result, applier);
  }

  return result;
}

uint64_t sub_1B7BDF22C(uint64_t a1, uint64_t a2, void *a3)
{
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    *(*(*(a1 + 32) + 8) + 24) = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
  }

  v5 = _IMDCopyIMDMessageRecordFromXPCObjectClient(a3);
  if (v5)
  {
    v6 = v5;
    CFArrayAppendValue(*(*(*(a1 + 32) + 8) + 24), v5);
    CFRelease(v6);
  }

  return 1;
}

uint64_t IMDMessageRecordCountAllUnreadMessages()
{
  v36 = *MEMORY[0x1E69E9840];
  v30 = 0;
  v31 = &v30;
  v32 = 0x2020000000;
  v33 = -1;
  if (IMDIsRunningInDatabaseServerProcess())
  {
    v2 = objc_msgSend_sharedFeatureFlags(MEMORY[0x1E69A8070], v0, v1);
    if (objc_msgSend_isUnreadCountRefactorEnabled(v2, v3, v4))
    {
      v7 = objc_msgSend_synchronousDatabase(IMDDatabase, v5, v6);
      v29[0] = MEMORY[0x1E69E9820];
      v29[1] = 3221225472;
      v29[2] = sub_1B7BDF65C;
      v29[3] = &unk_1E7CBAE30;
      v29[4] = &v30;
      objc_msgSend_generateUnreadCountReportsWithCompletionHandler_(v7, v8, v29);
    }

    else
    {
      if (IMOSLoggingEnabled())
      {
        v9 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_1B7AD5000, v9, OS_LOG_TYPE_INFO, "Counting all unread messages...", buf, 2u);
        }
      }

      v10 = objc_alloc_init(MEMORY[0x1E69A6170]);
      objc_msgSend_startTimingForKey_(v10, v11, @"IMDMessageRecordCountAllUnreadMessages");
      v14 = objc_msgSend_excludedFilterActions(MEMORY[0x1E69A8198], v12, v13);
      v17 = objc_msgSend_count(v14, v15, v16);
      v20 = IMDMessageRecordCountAllUnreadMessagesQuery(v17, v18, v19);
      if (IMOSLoggingEnabled())
      {
        v21 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v35 = v14;
          _os_log_impl(&dword_1B7AD5000, v21, OS_LOG_TYPE_INFO, "Inboxes to exclude from unread messages count: %@", buf, 0xCu);
        }
      }

      v28[0] = MEMORY[0x1E69E9820];
      v28[1] = 3221225472;
      v28[2] = sub_1B7BDF6EC;
      v28[3] = &unk_1E7CBD018;
      v28[4] = v14;
      v28[5] = &v30;
      v28[6] = v17;
      _IMDPerformLockedStatementBlockWithQuery(v20, v28);
      if (v20)
      {
        CFRelease(v20);
      }

      objc_msgSend_stopTimingForKey_(v10, v22, @"IMDMessageRecordCountAllUnreadMessages");
      if (IMOSLoggingEnabled())
      {
        v23 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v35 = v10;
          _os_log_impl(&dword_1B7AD5000, v23, OS_LOG_TYPE_INFO, "IMDMessageRecordCountAllUnreadMessages timing: %@", buf, 0xCu);
        }
      }
    }
  }

  else
  {
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = sub_1B7BDF774;
    v27[3] = &unk_1E7CB6838;
    v27[4] = &v30;
    __syncXPCIMDMessageRecordCountAllUnreadMessages_IPCAction(v27);
  }

  v24 = v31[3];
  _Block_object_dispose(&v30, 8);
  v25 = *MEMORY[0x1E69E9840];
  return v24;
}

void sub_1B7BDF65C(uint64_t a1, uint64_t a2)
{
  v10 = objc_alloc_init(MEMORY[0x1E69A8338]);
  v4 = objc_alloc(MEMORY[0x1E69A8330]);
  v6 = objc_msgSend_initWithFilteringController_(v4, v5, v10);
  objc_msgSend_replaceReports_(v6, v7, a2);
  *(*(*(a1 + 32) + 8) + 24) = objc_msgSend_unreadCount(v6, v8, v9);
}

uint64_t sub_1B7BDF6EC(uint64_t a1, const char *a2)
{
  if (*(a1 + 48))
  {
    v3 = 0;
    do
    {
      v4 = objc_msgSend_objectAtIndexedSubscript_(*(a1 + 32), a2, v3);
      objc_msgSend_integerValue(v4, v5, v6);
      CSDBSqliteBindInt();
      ++v3;
    }

    while (v3 < *(a1 + 48));
  }

  result = CSDBSqliteStatementInteger64Result();
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

int64_t sub_1B7BDF774(uint64_t a1, xpc_object_t xdict)
{
  result = xpc_dictionary_get_int64(xdict, "sint64_result");
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t IMDMessageRecordCountAllUnreadMessagesForChatGUID(const __CFString *a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = -1;
  if (a1 && CFStringGetLength(a1) > 0)
  {
    if (IMDIsRunningInDatabaseServerProcess())
    {
      v2 = IMDChatRecordCopyChatForGUID(a1);
      v3 = v2;
      if (!v2 || (Identifier = IMDChatRecordGetIdentifier(v2), Identifier == -1))
      {
        if (IMOSLoggingEnabled())
        {
          v5 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v17 = a1;
            _os_log_impl(&dword_1B7AD5000, v5, OS_LOG_TYPE_INFO, "** WARNING ** counting all unread messages for chat row id of -1 because no chat record for guid (%@) could be found!", buf, 0xCu);
          }
        }

        Identifier = -1;
      }

      v6 = IMDMessageRecordCountAllUnreadMessagesForChatRowID(Identifier);
      v13[3] = v6;
      if (v3)
      {
        CFRelease(v3);
      }
    }

    else
    {
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = sub_1B7BDFAF4;
      v11[3] = &unk_1E7CB6838;
      v11[4] = &v12;
      __syncXPCIMDMessageRecordCountAllUnreadMessagesForChatGUID_IPCAction(v11, a1);
    }
  }

  else
  {
    v7 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CFC918();
    }
  }

  v8 = v13[3];
  _Block_object_dispose(&v12, 8);
  v9 = *MEMORY[0x1E69E9840];
  return v8;
}

uint64_t IMDMessageRecordCountAllUnreadMessagesForChatRowID(int64_t a1)
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = -1;
  if ((a1 & 0x8000000000000000) == 0)
  {
    if (IMDIsRunningInDatabaseServerProcess())
    {
      v5[0] = MEMORY[0x1E69E9820];
      v5[1] = 3221225472;
      v5[2] = sub_1B7BDFCA0;
      v5[3] = &unk_1E7CB7520;
      v5[4] = &v6;
      v5[5] = a1;
      _IMDPerformLockedStatementBlockWithQuery(@"SELECT   COUNT(m.ROWID) FROM   message m   INDEXED BY message_idx_isRead_isFromMe_itemType INNER JOIN chat_message_join   cm ON m.ROWID = cm.message_id WHERE   cm.chat_id = ?   AND m.item_type == 0   AND m.is_read == 0   AND m.is_from_me == 0   AND m.is_finished == 1   AND m.is_system_message == 0 ", v5);
    }

    else
    {
      v4[0] = MEMORY[0x1E69E9820];
      v4[1] = 3221225472;
      v4[2] = sub_1B7BDFCF8;
      v4[3] = &unk_1E7CB6838;
      v4[4] = &v6;
      __syncXPCIMDMessageRecordCountAllUnreadMessagesForChatRowID_IPCAction(v4, a1);
    }
  }

  v2 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v2;
}

int64_t sub_1B7BDFAF4(uint64_t a1, xpc_object_t xdict)
{
  result = xpc_dictionary_get_int64(xdict, "sint64_result");
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t IMDMessageRecordCountAllUnreadMessagesForChatRowIDUnlocked(uint64_t a1)
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v1 = -1;
  v7 = -1;
  if ((a1 & 0x8000000000000000) == 0)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = sub_1B7BDFC04;
    v3[3] = &unk_1E7CB7520;
    v3[4] = &v4;
    v3[5] = a1;
    _IMDPerformLockedStatementBlockWithQuery(@"SELECT   COUNT(m.ROWID) FROM   message m INNER JOIN chat_message_join   cm ON m.ROWID = cm.message_id WHERE   cm.chat_id = ?   AND m.item_type == 0   AND m.is_read == 0   AND m.is_from_me == 0 ", v3);
    v1 = v5[3];
  }

  _Block_object_dispose(&v4, 8);
  return v1;
}

void sub_1B7BDFBEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1B7BDFC04(uint64_t a1)
{
  v2 = *(a1 + 40);
  CSDBSqliteBindInt64();
  result = CSDBSqliteStatementInteger64Result();
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t sub_1B7BDFC5C(uint64_t a1)
{
  result = CSDBSqliteStatementInteger64Result();
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t sub_1B7BDFCA0(uint64_t a1)
{
  v2 = *(a1 + 40);
  CSDBSqliteBindInt64();
  result = CSDBSqliteStatementInteger64Result();
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

int64_t sub_1B7BDFCF8(uint64_t a1, xpc_object_t xdict)
{
  result = xpc_dictionary_get_int64(xdict, "sint64_result");
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t _IMDMessageRecordCountAllUnreadMessagesForChatQuery(uint64_t a1, uint64_t a2)
{
  if ((IMDIsRunningInDatabaseServerProcess() & 1) == 0)
  {
    v16 = xmmword_1E7CBD038;
    v17 = *off_1E7CBD048;
    v18 = 2651;
    v4 = MEMORY[0x1E696AEC0];
    v5 = IMFileLocationTrimFileName();
    v7 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v6, @"_IMDMessageRecordCountAllUnreadMessagesForAllUnreadChats can only be called from IMDPersistenceAgent");
    v9 = objc_msgSend_stringWithFormat_(v4, v8, @"Unexpected false '%@' in %s at %s:%d. %@", @"IMDIsRunningInDatabaseServerProcess()", "void _IMDMessageRecordCountAllUnreadMessagesForChatQuery(CFStringRef, void (^)(int64_t, SInt64))", v5, 2651, v7);
    v10 = IMGetAssertionFailureHandler();
    if (v10)
    {
      v10(v9);
    }

    else
    {
      v13 = objc_msgSend_warning(MEMORY[0x1E69A6138], v11, v12);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        sub_1B7CED0B0();
      }
    }
  }

  result = IMDIsRunningInDatabaseServerProcess();
  if (result)
  {
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = sub_1B7BDFE90;
    v15[3] = &unk_1E7CBD068;
    v15[4] = a2;
    return _IMDPerformLockedStatementBlockWithQuery(a1, v15);
  }

  return result;
}

uint64_t sub_1B7BDFE90(uint64_t a1)
{
  result = CSDBSqliteStep();
  if (result)
  {
    do
    {
      CSDBSqliteStatementInteger64ResultColumn();
      CSDBSqliteStatementInteger64ResultColumn();
      (*(*(a1 + 32) + 16))();
      result = CSDBSqliteStep();
    }

    while ((result & 1) != 0);
  }

  return result;
}

void sub_1B7BDFF18(uint64_t a1, __int128 *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = *(a2 + 4);
  if (v4 == 1)
  {
    v7 = MEMORY[0x1E696AD98];
    v13 = *a2;
    v14 = *(a2 + 2);
    v8 = IMDInt64FromSqlColumn(&v13);
    v5 = objc_msgSend_numberWithLongLong_(v7, v9, v8);
    v6 = *(a1 + 40);
    goto LABEL_5;
  }

  if (!v4)
  {
    v13 = *a2;
    v14 = *(a2 + 2);
    v5 = IMDStringFromSqlColumn(&v13);
    v6 = *(a1 + 32);
LABEL_5:
    *(*(v6 + 8) + 40) = v5;
    goto LABEL_9;
  }

  if (IMOSLoggingEnabled())
  {
    v10 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = *(a2 + 4);
      LODWORD(v13) = 67109120;
      DWORD1(v13) = v11;
      _os_log_impl(&dword_1B7AD5000, v10, OS_LOG_TYPE_INFO, "Unexpected column in reply count query with index %d", &v13, 8u);
    }
  }

LABEL_9:
  v12 = *MEMORY[0x1E69E9840];
}

CFMutableArrayRef IMDMessageRecordCopyAllUnplayedMessageGUIDsForChatGUID(const __CFString *a1)
{
  if (a1 && CFStringGetLength(a1) > 0)
  {
    if (IMDIsRunningInDatabaseServerProcess())
    {
      if (IMOSLoggingEnabled())
      {
        v2 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_impl(&dword_1B7AD5000, v2, OS_LOG_TYPE_DEBUG, "IMDMessageRecordCopyAllUnplayedMessageGUIDsForChatGUID", buf, 2u);
        }
      }

      Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
      *buf = MEMORY[0x1E69E9820];
      v8 = 3221225472;
      v9 = sub_1B7BE8E48;
      v10 = &unk_1E7CBD258;
      v11 = a1;
      v12 = Mutable;
      _IMDPerformLockedDatabaseBlock(buf);
    }

    else
    {
      *buf = 0;
      v8 = buf;
      v9 = 0x2020000000;
      v10 = 0;
      v6[0] = MEMORY[0x1E69E9820];
      v6[1] = 3221225472;
      v6[2] = sub_1B7BE0268;
      v6[3] = &unk_1E7CB6838;
      v6[4] = buf;
      __syncXPCIMDMessageRecordCopyAllUnplayedMessageGUIDsForChatGUID_IPCAction(v6, a1);
      Mutable = *(v8 + 24);
      _Block_object_dispose(buf, 8);
    }
  }

  else
  {
    v4 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CFC954();
    }

    return 0;
  }

  return Mutable;
}

void sub_1B7BE0268(uint64_t a1, xpc_object_t xdict)
{
  value = xpc_dictionary_get_value(xdict, "array_result");
  if (value)
  {
    v4 = value;
    count = xpc_array_get_count(value);
    if (count)
    {
      v6 = count;
      v7 = 0;
      v8 = MEMORY[0x1E695E9C0];
      do
      {
        if (!*(*(*(a1 + 32) + 8) + 24))
        {
          *(*(*(a1 + 32) + 8) + 24) = CFArrayCreateMutable(0, 0, v8);
        }

        string = xpc_array_get_string(v4, v7);
        if (string)
        {
          v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x1E696AEC0], v10, string);
          if (v11)
          {
            CFArrayAppendValue(*(*(*(a1 + 32) + 8) + 24), v11);
          }
        }

        ++v7;
      }

      while (v6 != v7);
    }
  }
}

uint64_t IMDMessageRecordLastFailedMessageRowID()
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = -1;
  if (IMDIsRunningInDatabaseServerProcess())
  {
    v2 = objc_msgSend_synchronousDatabase(IMDDatabase, v0, v1);
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = sub_1B7BE0474;
    v7[3] = &unk_1E7CB6B98;
    v7[4] = &v8;
    objc_msgSend_fetchInteger64ForKey_completionHandler_(v2, v3, @"lastFailedMessageRowID", v7);
  }

  else
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = sub_1B7BE0484;
    v6[3] = &unk_1E7CB6838;
    v6[4] = &v8;
    __syncXPCIMDMessageRecordLastFailedMessageRowID_IPCAction(v6);
  }

  v4 = v9[3];
  _Block_object_dispose(&v8, 8);
  return v4;
}

int64_t sub_1B7BE0484(uint64_t a1, xpc_object_t xdict)
{
  result = xpc_dictionary_get_int64(xdict, "sint64_result");
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t IMDMessageRecordLastSyncedMessageRowID()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v7 = -1;
  if (IMDIsRunningInDatabaseServerProcess())
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = sub_1B7BE05F8;
    v3[3] = &unk_1E7CB7390;
    v3[4] = &v4;
    _IMDPerformLockedStatementBlockWithQuery(@"select ROWID from message where LENGTH(ck_record_id) > 0 AND ck_sync_state=1 ORDER BY ROWID DESC limit 1;", v3);
  }

  else
  {
    v2[0] = MEMORY[0x1E69E9820];
    v2[1] = 3221225472;
    v2[2] = sub_1B7BE063C;
    v2[3] = &unk_1E7CB6838;
    v2[4] = &v4;
    __syncXPCIMDMessageRecordLastSyncedMessageRowID_IPCAction(v2);
  }

  v0 = v5[3];
  _Block_object_dispose(&v4, 8);
  return v0;
}

uint64_t sub_1B7BE05F8(uint64_t a1)
{
  result = CSDBSqliteStatementInteger64Result();
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

int64_t sub_1B7BE063C(uint64_t a1, xpc_object_t xdict)
{
  result = xpc_dictionary_get_int64(xdict, "sint64_result");
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t IMDMessageRecordLastFailedMessageDate()
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = -1;
  if (IMDIsRunningInDatabaseServerProcess())
  {
    v2 = objc_msgSend_synchronousDatabase(IMDDatabase, v0, v1);
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = sub_1B7BE07B4;
    v7[3] = &unk_1E7CB6B98;
    v7[4] = &v8;
    objc_msgSend_fetchInteger64ForKey_completionHandler_(v2, v3, @"lastFailedMessageDate", v7);
  }

  else
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = sub_1B7BE07C4;
    v6[3] = &unk_1E7CB6838;
    v6[4] = &v8;
    __syncXPCIMDMessageRecordLastFailedMessageDate_IPCAction(v6);
  }

  v4 = v9[3];
  _Block_object_dispose(&v8, 8);
  return v4;
}

int64_t sub_1B7BE07C4(uint64_t a1, xpc_object_t xdict)
{
  result = xpc_dictionary_get_int64(xdict, "sint64_result");
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t IMDMessageRecordGetMostRecentMessageDate()
{
  v14 = *MEMORY[0x1E69E9840];
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = -1;
  if (IMDIsRunningInDatabaseServerProcess())
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = sub_1B7BE09C8;
    v7[3] = &unk_1E7CB7390;
    v7[4] = &v8;
    _IMDPerformLockedStatementBlockWithQuery(@"SELECT date FROM message ORDER BY date DESC, ROWID DESC LIMIT 1;", v7);
  }

  else
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = sub_1B7BE0A0C;
    v6[3] = &unk_1E7CB6838;
    v6[4] = &v8;
    __syncXPCIMDMessageRecordGetMostRecentMessageDate_IPCAction(v6);
  }

  v0 = IMDatabaseLogHandle();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    v2 = objc_msgSend_numberWithLongLong_(MEMORY[0x1E696AD98], v1, v9[3]);
    *buf = 138412290;
    v13 = v2;
    _os_log_impl(&dword_1B7AD5000, v0, OS_LOG_TYPE_DEFAULT, "Most recent date: %@", buf, 0xCu);
  }

  v3 = v9[3];
  _Block_object_dispose(&v8, 8);
  v4 = *MEMORY[0x1E69E9840];
  return v3;
}

void sub_1B7BE09A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1B7BE09C8(uint64_t a1)
{
  result = CSDBSqliteStatementInteger64Result();
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

int64_t sub_1B7BE0A0C(uint64_t a1, xpc_object_t xdict)
{
  result = xpc_dictionary_get_int64(xdict, "sint64_result");
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

void IMDMessageRecordMarkFailedAllUnsentUnfailedMessages()
{
  if (IMOSLoggingEnabled())
  {
    v0 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v0, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_1B7AD5000, v0, OS_LOG_TYPE_DEBUG, "Marking all unsent and failed messages as sent.", buf, 2u);
    }
  }

  if (IMDIsRunningInDatabaseServerProcess())
  {
    *buf = 0;
    v5 = buf;
    v6 = 0x2020000000;
    v7 = 0;
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = sub_1B7BE0C04;
    v3[3] = &unk_1E7CB7390;
    v3[4] = buf;
    _IMDPerformLockedStatementBlockWithQuery(@"SELECT COUNT(*) FROM message WHERE (is_sent = 0 AND is_from_me = 1 AND error = 0)", v3);
    if (*(v5 + 3))
    {
      _IMDPerformLockedStatementBlockWithQuery(@"UPDATE message SET error = ? WHERE (is_sent = 0 AND is_from_me = 1 AND error = 0)", &unk_1F2FA13B0);
      _IMDPerformLockedStatementBlockWithQuery(@"UPDATE message SET schedule_state = 4 WHERE (is_sent = 0 AND is_from_me = 1 AND error = 39)", &unk_1F2F9FD90);
    }

    else
    {
      v1 = IMDatabaseLogHandle();
      if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
      {
        *v2 = 0;
        _os_log_impl(&dword_1B7AD5000, v1, OS_LOG_TYPE_DEFAULT, "No unsent unfailed messages to mark!", v2, 2u);
      }
    }

    _Block_object_dispose(buf, 8);
  }

  else
  {
    __syncXPCIMDMessageRecordMarkFailedAllUnsentUnfailedMessages_IPCAction(0);
  }
}

void sub_1B7BE0BCC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1B7BE0C04(uint64_t a1)
{
  *(*(*(a1 + 32) + 8) + 24) = CSDBSqliteStatementInteger64Result();

  return CSDBSqliteStatementPerform();
}

uint64_t sub_1B7BE0C54()
{
  CSDBSqliteBindInt();
  CSDBSqliteStatementPerform();
  CSDBRecordSaveStore();

  return CSDBRecordStoreInvalidateCachesWithStore();
}

uint64_t sub_1B7BE0CA8()
{
  CSDBSqliteStatementPerform();
  CSDBRecordSaveStore();

  return CSDBRecordStoreInvalidateCachesWithStore();
}

int64_t sub_1B7BE0CEC(uint64_t a1, xpc_object_t xdict)
{
  result = xpc_dictionary_get_int64(xdict, "sint64_result");
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

void IMDMessageRecordRetractNotificationsForMessagesMatchingChatGUIDs(const __CFArray *a1)
{
  v53 = *MEMORY[0x1E69E9840];
  v2 = IMDatabaseLogHandle();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1B7AD5000, v2, OS_LOG_TYPE_DEFAULT, "IMDMessageRecordRetractNotificationsForMessagesMatchingChatGUIDs", buf, 2u);
  }

  if (IMDIsRunningInDatabaseServerProcess())
  {
    v5 = objc_msgSend_array(MEMORY[0x1E695DF70], v3, v4);
    Count = CFArrayGetCount(a1);
    if (Count >= 1)
    {
      v7 = 0;
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(a1, v7);
        v9 = IMDChatRecordCopyChatForGUID(ValueAtIndex);
        if (v9)
        {
          v11 = v9;
          Identifier = IMDChatRecordGetIdentifier(v9);
          v14 = objc_msgSend_numberWithInteger_(MEMORY[0x1E696AD98], v13, Identifier);
          objc_msgSend_addObject_(v5, v15, v14);
          CFRelease(v11);
        }

        else
        {
          v16 = objc_msgSend_numberWithInteger_(MEMORY[0x1E696AD98], v10, -1);
          objc_msgSend_addObject_(v5, v17, v16);
        }

        ++v7;
      }

      while (Count != v7);
    }

    v18 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1B7AD5000, v18, OS_LOG_TYPE_DEFAULT, "_IMDMessageRecordCopyUnreadMessagesMatchingRecoverableChatIDs", buf, 2u);
    }

    v19 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v22 = objc_msgSend_count(v5, v20, v21);
    if (v22)
    {
      *buf = MEMORY[0x1E69E9820];
      v46 = 3221225472;
      v47 = sub_1B7BE8F64;
      v48 = &unk_1E7CBD280;
      v50 = v19;
      v51 = v22;
      v49 = v5;
      _IMDPerformLockedDatabaseBlock(buf);
    }

    else
    {

      v19 = 0;
    }

    v23 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    v25 = objc_msgSend_countByEnumeratingWithState_objects_count_(v19, v24, &v41, v52, 16);
    if (v25)
    {
      v28 = v25;
      v29 = *v42;
      v30 = *MEMORY[0x1E695E480];
      do
      {
        v31 = 0;
        do
        {
          if (*v42 != v29)
          {
            objc_enumerationMutation(v19);
          }

          v32 = objc_msgSend_integerValue(*(*(&v41 + 1) + 8 * v31), v26, v27);
          v33 = IMDMessageRecordCreateFromRecordIDUnlocked(v30, v32);
          v34 = IMDMessageRecordCopyGUIDForMessage(v33);
          objc_msgSend_addObject_(v23, v35, v34);
          if (v34)
          {
            CFRelease(v34);
          }

          if (v33)
          {
            CFRelease(v33);
          }

          ++v31;
        }

        while (v28 != v31);
        v28 = objc_msgSend_countByEnumeratingWithState_objects_count_(v19, v26, &v41, v52, 16);
      }

      while (v28);
    }

    if (objc_msgSend_count(v23, v26, v27))
    {
      v38 = objc_msgSend_sharedInstance(IMDNotificationsController, v36, v37);
      objc_msgSend_retractNotificationsForReadMessages_(v38, v39, v23);
    }

    if (v23)
    {
    }
  }

  else
  {
    __asyncXPCIMDMessageRecordRetractNotificationsForChatGuids_IPCAction(&unk_1F2FA13D0, a1);
  }

  v40 = *MEMORY[0x1E69E9840];
}