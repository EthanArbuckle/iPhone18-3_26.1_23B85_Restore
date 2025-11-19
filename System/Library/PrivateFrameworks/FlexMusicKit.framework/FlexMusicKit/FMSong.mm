@interface FMSong
+ (BOOL)hasValidTagIDs:(id)a3;
+ (NSArray)availableTagIDs;
+ (id)loadSongBundleAtPath:(id)a3;
+ (id)loadSongsAndArtworkInFolderAtPath:(id)a3;
+ (id)localizedNameForTagWithID:(id)a3;
+ (int64_t)versionFromArtworkFilename:(id)a3;
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)minimumDuration;
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)naturalDuration;
- (BOOL)_loadFlexSong;
- (BOOL)canPlay;
- (BOOL)hidden;
- (BOOL)isLoaded;
- (BOOL)recalled;
- (FMSong)initWithBackend:(id)a3;
- (FMSong)initWithUID:(id)a3 assets:(id)a4 metadata:(id)a5;
- (NSDictionary)weightedKeywords;
- (NSString)audioEncoderPresetName;
- (NSString)songFormat;
- (NSString)uid;
- (id)_impl;
- (id)artistName;
- (id)assetWithID:(id)a3;
- (id)customOptions;
- (id)description;
- (id)existingAssetWithID:(id)a3;
- (id)idealDurations;
- (id)keywords;
- (id)renditionForDuration:(id *)a3 withOptions:(id)a4;
- (id)renditionForDuration:(id *)a3 withOptions:(id)a4 testingContext:(id)a5;
- (id)songName;
- (id)tagIDs;
- (int64_t)metadataVersion;
- (int64_t)sampleRate;
- (void)_loadIfNeeded;
- (void)_notifySongAssetsChanged;
- (void)cancelDownloadOfAllAssetsWithIDs:(id)a3;
- (void)requestDownloadOfAllAssetsWithIDs:(id)a3;
- (void)requestDownloadOfAllAssetsWithIDs:(id)a3 withOptions:(id)a4;
- (void)updateAsset:(id)a3 downloadProgress:(double)a4 error:(id)a5;
- (void)updateAssets:(id)a3;
- (void)updateBackend:(id)a3;
@end

@implementation FMSong

- (FMSong)initWithUID:(id)a3 assets:(id)a4 metadata:(id)a5
{
  v306 = *MEMORY[0x277D85DE8];
  v286 = a3;
  v7 = a4;
  v287 = a5;
  v289 = objc_msgSend_array(MEMORY[0x277CBEB18], v8, v9, v10, v11);
  v288 = objc_msgSend_arrayWithArray_(MEMORY[0x277CBEB18], v12, v7, v13, v14);
  v299 = 0u;
  v300 = 0u;
  v301 = 0u;
  v302 = 0u;
  obj = v7;
  v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v15, &v299, v305, 16);
  if (!v16)
  {
    v22 = 0;
    v23 = 0;
    goto LABEL_23;
  }

  v21 = v16;
  v22 = 0;
  v23 = 0;
  v24 = *v300;
  do
  {
    for (i = 0; i != v21; ++i)
    {
      if (*v300 != v24)
      {
        objc_enumerationMutation(obj);
      }

      v26 = *(*(&v299 + 1) + 8 * i);
      if (v22 || (objc_msgSend_assetID(*(*(&v299 + 1) + 8 * i), v17, v18, v19, v20), v27 = v23, v28 = objc_claimAutoreleasedReturnValue(), v32 = objc_msgSend_isEqualToString_(v28, v29, @"FMSongArtworkAssetID", v30, v31), v28, v23 = v27, !v32))
      {
        if (v23)
        {
          continue;
        }

        v33 = objc_msgSend_assetID(v26, v17, v18, v19, v20);
        isEqualToString = objc_msgSend_isEqualToString_(v33, v34, @"FMSongBundleAssetID", v35, v36);

        if (isEqualToString && objc_msgSend_compatibilityVersion(v26, v17, v18, v19, v20) <= 4 && objc_msgSend_compatibilityVersion(v26, v17, v18, v19, v20) >= 1)
        {
          v27 = v26;
          goto LABEL_16;
        }

        v23 = 0;
      }

      else
      {
        if (objc_msgSend_compatibilityVersion(v26, v17, v18, v19, v20) <= 4 && objc_msgSend_compatibilityVersion(v26, v17, v18, v19, v20) > 0)
        {
          v22 = v26;
LABEL_16:
          v38 = v26;
          objc_msgSend_removeObject_(v288, v39, v38, v40, v41);
          objc_msgSend_addObject_(v289, v42, v38, v43, v44);
          v23 = v27;
          continue;
        }

        v22 = 0;
      }
    }

    v21 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v17, &v299, v305, 16);
  }

  while (v21);
LABEL_23:

  v53 = v286;
  v54 = v287;
  v285 = v23;
  if (objc_msgSend_count(v288, v45, v46, v47, v48))
  {
    v55 = FlexLogForCategory(0);
    if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
    {
      sub_24B7F4598();
    }

    v23 = v285;
  }

  if (!v23)
  {
    v69 = [FlexSongProxy alloc];
    v74 = objc_msgSend_set(MEMORY[0x277CBEB98], v70, v71, v72, v73);
    v79 = objc_msgSend_set(MEMORY[0x277CBEB98], v75, v76, v77, v78);
    v84 = objc_msgSend_dictionary(MEMORY[0x277CBEAC0], v80, v81, v82, v83);
    v60 = objc_msgSend_initWithUID_songName_artistName_tagIDs_keywords_weightedKeywords_hidden_recalled_assets_audioEncoderPresetName_metadataVersion_songFormat_(v69, v85, v286, &stru_285EA09B0, &stru_285EA09B0, v74, v79, v84, 0, v289, &stru_285EA09B0, 1, &stru_285EA09B0);

    if (!v287)
    {
      goto LABEL_64;
    }

    goto LABEL_35;
  }

  v56 = objc_msgSend_localURL(v23, v49, v50, v51, v52);
  v60 = objc_msgSend_backendForSongBundleURL_(FlexUtilities, v57, v56, v58, v59);

  if (!v60)
  {
    v64 = FlexLogForCategory(0);
    if (os_log_type_enabled(v64, OS_LOG_TYPE_ERROR))
    {
      sub_24B7F45CC();
    }
  }

  objc_msgSend_updateAssets_(v60, v61, v289, v62, v63);
  if (v287)
  {
LABEL_35:
    v283 = v60;
    v86 = objc_msgSend_set(MEMORY[0x277CBEB58], v65, v66, v67, v68);
    v295 = 0u;
    v296 = 0u;
    v297 = 0u;
    v298 = 0u;
    v91 = objc_msgSend_genres(v287, v87, v88, v89, v90);
    v93 = objc_msgSend_countByEnumeratingWithState_objects_count_(v91, v92, &v295, v304, 16);
    if (v93)
    {
      v97 = v93;
      v98 = *v296;
      do
      {
        for (j = 0; j != v97; ++j)
        {
          if (*v296 != v98)
          {
            objc_enumerationMutation(v91);
          }

          v100 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v94, @"%@%@", v95, v96, @"Genre_", *(*(&v295 + 1) + 8 * j));
          objc_msgSend_addObject_(v86, v101, v100, v102, v103);
        }

        v97 = objc_msgSend_countByEnumeratingWithState_objects_count_(v91, v94, &v295, v304, 16);
      }

      while (v97);
    }

    v108 = objc_msgSend_mood(v287, v104, v105, v106, v107);
    v113 = objc_msgSend_length(v108, v109, v110, v111, v112);

    if (v113)
    {
      v118 = MEMORY[0x277CCACA8];
      v119 = objc_msgSend_mood(v287, v114, v115, v116, v117);
      v123 = objc_msgSend_stringWithFormat_(v118, v120, @"%@%@", v121, v122, @"Mood_", v119);
      objc_msgSend_addObject_(v86, v124, v123, v125, v126);
    }

    v127 = objc_msgSend_moodAlt(v287, v114, v115, v116, v117);
    v132 = objc_msgSend_length(v127, v128, v129, v130, v131);

    if (v132)
    {
      v137 = MEMORY[0x277CCACA8];
      v138 = objc_msgSend_moodAlt(v287, v133, v134, v135, v136);
      v142 = objc_msgSend_stringWithFormat_(v137, v139, @"%@%@", v140, v141, @"MoodAlt_", v138);
      objc_msgSend_addObject_(v86, v143, v142, v144, v145);
    }

    v146 = objc_msgSend_pace(v287, v133, v134, v135, v136);
    v151 = objc_msgSend_length(v146, v147, v148, v149, v150);

    if (v151)
    {
      v156 = MEMORY[0x277CCACA8];
      v157 = objc_msgSend_pace(v287, v152, v153, v154, v155);
      v161 = objc_msgSend_stringWithFormat_(v156, v158, @"%@%@", v159, v160, @"SongPace_", v157);
      objc_msgSend_addObject_(v86, v162, v161, v163, v164);
    }

    if (objc_msgSend_style(v287, v152, v153, v154, v155) >= 1)
    {
      v169 = MEMORY[0x277CCACA8];
      v170 = objc_msgSend_style(v287, v165, v166, v167, v168);
      v174 = objc_msgSend_stringWithFormat_(v169, v171, @"%@%lld", v172, v173, @"Style_", v170);
      objc_msgSend_addObject_(v86, v175, v174, v176, v177);
    }

    v293 = 0u;
    v294 = 0u;
    v291 = 0u;
    v292 = 0u;
    v178 = objc_msgSend_regions(v287, v165, v166, v167, v168);
    v180 = objc_msgSend_countByEnumeratingWithState_objects_count_(v178, v179, &v291, v303, 16);
    if (v180)
    {
      v184 = v180;
      v185 = *v292;
      do
      {
        for (k = 0; k != v184; ++k)
        {
          if (*v292 != v185)
          {
            objc_enumerationMutation(v178);
          }

          v187 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v181, @"%@%@", v182, v183, @"Region_", *(*(&v291 + 1) + 8 * k));
          objc_msgSend_addObject_(v86, v188, v187, v189, v190);
        }

        v184 = objc_msgSend_countByEnumeratingWithState_objects_count_(v178, v181, &v291, v303, 16);
      }

      while (v184);
    }

    v54 = v287;
    objc_msgSend_arousal(v287, v191, v192, v193, v194);
    if (v199 > 0.0)
    {
      v200 = MEMORY[0x277CCACA8];
      objc_msgSend_arousal(v287, v195, v196, v197, v198);
      v205 = objc_msgSend_stringWithFormat_(v200, v201, @"%@%g", v202, v203, @"Arousal_", v204);
      objc_msgSend_addObject_(v86, v206, v205, v207, v208);
    }

    objc_msgSend_valence(v287, v195, v196, v197, v198);
    v53 = v286;
    v60 = v283;
    if (v213 > 0.0)
    {
      v214 = MEMORY[0x277CCACA8];
      objc_msgSend_valence(v287, v209, v210, v211, v212);
      v219 = objc_msgSend_stringWithFormat_(v214, v215, @"%@%g", v216, v217, @"Valence_", v218);
      objc_msgSend_addObject_(v86, v220, v219, v221, v222);
    }

    objc_msgSend_visualTempo(v287, v209, v210, v211, v212);
    if (v227 > 0.0)
    {
      v228 = MEMORY[0x277CCACA8];
      objc_msgSend_visualTempo(v287, v223, v224, v225, v226);
      v233 = objc_msgSend_stringWithFormat_(v228, v229, @"%@%g", v230, v231, @"VisualTempo_", v232);
      objc_msgSend_addObject_(v86, v234, v233, v235, v236);
    }

    v237 = objc_msgSend_artistName(v287, v223, v224, v225, v226);
    v242 = objc_msgSend_songName(v287, v238, v239, v240, v241);
    v247 = objc_msgSend_keywords(v287, v243, v244, v245, v246);
    v252 = objc_msgSend_weightedKeywords(v287, v248, v249, v250, v251);
    v257 = objc_msgSend_hidden(v287, v253, v254, v255, v256);
    LOBYTE(v282) = objc_msgSend_recalled(v287, v258, v259, v260, v261);
    objc_msgSend_updateSongArtist_title_tags_keywords_weightedKeywords_hidden_recalled_metadataVersion_(v283, v262, v237, v242, v86, v247, v252, v257, v282, 1);
  }

LABEL_64:
  objc_msgSend_updateUID_(v60, v65, v53, v67, v68);
  v267 = objc_msgSend_uid(v60, v263, v264, v265, v266);
  v271 = objc_msgSend_isEqualToString_(v267, v268, v53, v269, v270);

  if ((v271 & 1) == 0)
  {
    v275 = FlexLogForCategory(0);
    if (os_log_type_enabled(v275, OS_LOG_TYPE_ERROR))
    {
      sub_24B7F4600(v53, v60, v275, v276, v277);
    }
  }

  v278 = objc_msgSend_initWithBackend_(self, v272, v60, v273, v274);
  if (v278)
  {
    v278[8] = 1;
  }

  v279 = v278;

  v280 = *MEMORY[0x277D85DE8];
  return v279;
}

- (FMSong)initWithBackend:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = FMSong;
  v6 = [(FMSong *)&v10 init];
  v7 = v6;
  if (v6)
  {
    if (!v5)
    {
      v8 = 0;
      goto LABEL_6;
    }

    objc_storeStrong(&v6->_backend, a3);
  }

  v8 = v7;
LABEL_6:

  return v8;
}

- (void)updateBackend:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  backend = v5->_backend;
  v5->_backend = v4;

  objc_sync_exit(v5);

  objc_msgSend__notifySongAssetsChanged(v5, v7, v8, v9, v10);
}

- (void)_notifySongAssetsChanged
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_24B7F2230;
  block[3] = &unk_27900E970;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

- (void)updateAsset:(id)a3 downloadProgress:(double)a4 error:(id)a5
{
  v47[4] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a5;
  if (objc_msgSend_updateDownloadProgress_(v8, v10, v11, v12, v13, a4))
  {
    if (v9)
    {
      v46[0] = @"songUID";
      v18 = objc_msgSend_uid(self, v14, v15, v16, v17);
      v47[0] = v18;
      v46[1] = @"assetID";
      v23 = objc_msgSend_assetID(v8, v19, v20, v21, v22);
      v47[1] = v23;
      v46[2] = @"progress";
      v28 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v24, v25, v26, v27, a4);
      v46[3] = @"error";
      v47[2] = v28;
      v47[3] = v9;
      objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v29, v47, v46, 4);
    }

    else
    {
      v44[0] = @"songUID";
      v18 = objc_msgSend_uid(self, v14, v15, v16, v17);
      v45[0] = v18;
      v44[1] = @"assetID";
      v23 = objc_msgSend_assetID(v8, v30, v31, v32, v33);
      v45[1] = v23;
      v44[2] = @"progress";
      v28 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v34, v35, v36, v37, a4);
      v45[2] = v28;
      objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v38, v45, v44, 3);
    }
    v39 = ;

    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_24B7F24C0;
    block[3] = &unk_27900EDC0;
    block[4] = self;
    v43 = v39;
    v40 = v39;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }

  v41 = *MEMORY[0x277D85DE8];
}

- (id)_impl
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = v2->_backend;
  objc_sync_exit(v2);

  return v3;
}

- (void)_loadIfNeeded
{
  v18 = *MEMORY[0x277D85DE8];
  if ((objc_msgSend_isLoaded(self, a2, v2, v3, v4) & 1) == 0 && objc_msgSend_canPlay(self, v6, v7, v8, v9) && (objc_msgSend__loadFlexSong(self, v10, v11, v12, v13) & 1) == 0)
  {
    v14 = FlexLogForCategory(0);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 138412290;
      v17 = self;
      _os_log_impl(&dword_24B7E5000, v14, OS_LOG_TYPE_DEFAULT, "Failed to load FlexSong _impl for song: %@", &v16, 0xCu);
    }
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (BOOL)_loadFlexSong
{
  v31 = *MEMORY[0x277D85DE8];
  if (objc_msgSend_isLoaded(self, a2, v2, v3, v4))
  {
    v9 = FlexLogForCategory(0);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v29 = 138412290;
      v30 = self;
      _os_log_impl(&dword_24B7E5000, v9, OS_LOG_TYPE_DEFAULT, "ERROR: _loadFlexSong: Attempting to load already loaded FlexSong for song: %@", &v29, 0xCu);
    }

    LOBYTE(v9) = 1;
  }

  else
  {
    v10 = objc_msgSend_existingAssetWithID_(self, v6, @"FMSongBundleAssetID", v7, v8);
    LODWORD(v9) = objc_msgSend_isCloudBacked(v10, v11, v12, v13, v14);
    if (v9)
    {
      v19 = objc_msgSend_cloudManager(v10, v15, v16, v17, v18);
      v24 = objc_msgSend_uid(self, v20, v21, v22, v23);
      objc_msgSend_loadAssetWithID_forSongID_(v19, v25, @"FMSongBundleAssetID", v24, v26);
    }
  }

  v27 = *MEMORY[0x277D85DE8];
  return v9;
}

- (int64_t)metadataVersion
{
  v5 = objc_msgSend__impl(self, a2, v2, v3, v4);
  v10 = objc_msgSend_metadataVersion(v5, v6, v7, v8, v9);

  return v10;
}

- (BOOL)canPlay
{
  v5 = objc_msgSend__impl(self, a2, v2, v3, v4);
  canPlay = objc_msgSend_canPlay(v5, v6, v7, v8, v9);

  return canPlay;
}

- (BOOL)isLoaded
{
  v5 = objc_msgSend__impl(self, a2, v2, v3, v4);
  isLoaded = objc_msgSend_isLoaded(v5, v6, v7, v8, v9);

  return isLoaded;
}

- (BOOL)hidden
{
  v5 = objc_msgSend__impl(self, a2, v2, v3, v4);
  v10 = objc_msgSend_hidden(v5, v6, v7, v8, v9);

  return v10;
}

- (BOOL)recalled
{
  v5 = objc_msgSend__impl(self, a2, v2, v3, v4);
  v10 = objc_msgSend_recalled(v5, v6, v7, v8, v9);

  return v10;
}

- (NSString)uid
{
  v6 = objc_msgSend__impl(self, a2, v2, v3, v4);
  v15 = objc_msgSend_uid(v6, v7, v8, v9, v10);
  if (v15)
  {
    v16 = objc_msgSend__impl(self, v11, v12, v13, v14);
    v21 = objc_msgSend_uid(v16, v17, v18, v19, v20);
  }

  else
  {
    v21 = &stru_285EA09B0;
  }

  return v21;
}

- (id)songName
{
  v6 = objc_msgSend__impl(self, a2, v2, v3, v4);
  v15 = objc_msgSend_songName(v6, v7, v8, v9, v10);
  if (v15)
  {
    v16 = objc_msgSend__impl(self, v11, v12, v13, v14);
    v21 = objc_msgSend_songName(v16, v17, v18, v19, v20);
  }

  else
  {
    v21 = &stru_285EA09B0;
  }

  return v21;
}

- (id)artistName
{
  v6 = objc_msgSend__impl(self, a2, v2, v3, v4);
  v15 = objc_msgSend_artistName(v6, v7, v8, v9, v10);
  if (v15)
  {
    v16 = objc_msgSend__impl(self, v11, v12, v13, v14);
    v21 = objc_msgSend_artistName(v16, v17, v18, v19, v20);
  }

  else
  {
    v21 = &stru_285EA09B0;
  }

  return v21;
}

- (id)tagIDs
{
  v6 = objc_msgSend__impl(self, a2, v2, v3, v4);
  v15 = objc_msgSend_tagIDs(v6, v7, v8, v9, v10);
  if (v15)
  {
    v16 = objc_msgSend__impl(self, v11, v12, v13, v14);
    v21 = objc_msgSend_tagIDs(v16, v17, v18, v19, v20);
  }

  else
  {
    v21 = objc_msgSend_set(MEMORY[0x277CBEB98], v11, v12, v13, v14);
  }

  return v21;
}

- (NSDictionary)weightedKeywords
{
  v6 = objc_msgSend__impl(self, a2, v2, v3, v4);
  v15 = objc_msgSend_weightedKeywords(v6, v7, v8, v9, v10);
  if (v15)
  {
    v16 = objc_msgSend__impl(self, v11, v12, v13, v14);
    v21 = objc_msgSend_weightedKeywords(v16, v17, v18, v19, v20);
  }

  else
  {
    v21 = objc_msgSend_dictionary(MEMORY[0x277CBEAC0], v11, v12, v13, v14);
  }

  return v21;
}

- (id)keywords
{
  v6 = objc_msgSend__impl(self, a2, v2, v3, v4);
  v15 = objc_msgSend_keywords(v6, v7, v8, v9, v10);
  if (v15)
  {
    v16 = objc_msgSend__impl(self, v11, v12, v13, v14);
    v21 = objc_msgSend_keywords(v16, v17, v18, v19, v20);
  }

  else
  {
    v21 = objc_msgSend_set(MEMORY[0x277CBEB98], v11, v12, v13, v14);
  }

  return v21;
}

- (NSString)audioEncoderPresetName
{
  v6 = objc_msgSend__impl(self, a2, v2, v3, v4);
  v15 = objc_msgSend_audioEncoderPresetName(v6, v7, v8, v9, v10);
  if (v15)
  {
    v16 = objc_msgSend__impl(self, v11, v12, v13, v14);
    v21 = objc_msgSend_audioEncoderPresetName(v16, v17, v18, v19, v20);
  }

  else
  {
    v21 = &stru_285EA09B0;
  }

  return v21;
}

- (int64_t)sampleRate
{
  objc_msgSend__loadIfNeeded(self, a2, v2, v3, v4);
  v10 = objc_msgSend__impl(self, v6, v7, v8, v9);
  v15 = objc_msgSend_sampleRate(v10, v11, v12, v13, v14);

  return v15;
}

- (void)updateAssets:(id)a3
{
  v139 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v126 = objc_msgSend_array(MEMORY[0x277CBEB18], v4, v5, v6, v7);
  v127 = objc_msgSend_arrayWithArray_(MEMORY[0x277CBEB18], v8, v3, v9, v10);
  v133 = 0u;
  v134 = 0u;
  v135 = 0u;
  v136 = 0u;
  obj = v3;
  v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v11, &v133, v138, 16);
  if (!v12)
  {
    v18 = 0;
    v19 = 0;
    goto LABEL_23;
  }

  v17 = v12;
  v18 = 0;
  v19 = 0;
  v20 = *v134;
  do
  {
    for (i = 0; i != v17; ++i)
    {
      if (*v134 != v20)
      {
        objc_enumerationMutation(obj);
      }

      v22 = *(*(&v133 + 1) + 8 * i);
      if (v18 || (objc_msgSend_assetID(*(*(&v133 + 1) + 8 * i), v13, v14, v15, v16), v23 = objc_claimAutoreleasedReturnValue(), v27 = objc_msgSend_isEqualToString_(v23, v24, @"FMSongArtworkAssetID", v25, v26), v23, !v27))
      {
        if (v19)
        {
          continue;
        }

        v28 = objc_msgSend_assetID(v22, v13, v14, v15, v16);
        isEqualToString = objc_msgSend_isEqualToString_(v28, v29, @"FMSongBundleAssetID", v30, v31);

        if (isEqualToString && objc_msgSend_compatibilityVersion(v22, v13, v14, v15, v16) <= 4 && objc_msgSend_compatibilityVersion(v22, v13, v14, v15, v16) >= 1)
        {
          v19 = v22;
          goto LABEL_16;
        }

        v19 = 0;
      }

      else
      {
        if (objc_msgSend_compatibilityVersion(v22, v13, v14, v15, v16) <= 4 && objc_msgSend_compatibilityVersion(v22, v13, v14, v15, v16) > 0)
        {
          v18 = v22;
LABEL_16:
          v33 = v22;
          objc_msgSend_removeObject_(v127, v34, v33, v35, v36);
          objc_msgSend_addObject_(v126, v37, v33, v38, v39);
          continue;
        }

        v18 = 0;
      }
    }

    v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v13, &v133, v138, 16);
  }

  while (v17);
LABEL_23:

  v48 = self;
  if (objc_msgSend_count(v127, v40, v41, v42, v43))
  {
    v49 = FlexLogForCategory(0);
    if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
    {
      sub_24B7F4598();
    }
  }

  if (objc_msgSend_isClientManaged(self, v44, v45, v46, v47))
  {
    v131 = 0u;
    v132 = 0u;
    v129 = 0u;
    v130 = 0u;
    v54 = v126;
    v56 = objc_msgSend_countByEnumeratingWithState_objects_count_(v54, v55, &v129, v137, 16);
    if (v56)
    {
      v61 = v56;
      v62 = *v130;
LABEL_30:
      v63 = 0;
      while (1)
      {
        if (*v130 != v62)
        {
          objc_enumerationMutation(v54);
        }

        v64 = *(*(&v129 + 1) + 8 * v63);
        v65 = objc_msgSend_assetID(v64, v57, v58, v59, v60);
        v69 = objc_msgSend_isEqualToString_(v65, v66, @"FMSongBundleAssetID", v67, v68);

        if (v69)
        {
          break;
        }

        if (v61 == ++v63)
        {
          v61 = objc_msgSend_countByEnumeratingWithState_objects_count_(v54, v57, &v129, v137, 16);
          if (v61)
          {
            goto LABEL_30;
          }

          v70 = v54;
          v48 = self;
          goto LABEL_45;
        }
      }

      v70 = v64;

      v48 = self;
      if (!v70)
      {
        goto LABEL_46;
      }

      v71 = objc_msgSend_localURL(v70, v50, v51, v52, v53);
      v75 = objc_msgSend_backendForSongBundleURL_(FlexUtilities, v72, v71, v73, v74);

      if (v75)
      {
        v80 = objc_msgSend_artistName(self, v76, v77, v78, v79);
        v85 = objc_msgSend_songName(self, v81, v82, v83, v84);
        v90 = objc_msgSend_tagIDs(self, v86, v87, v88, v89);
        v95 = objc_msgSend_keywords(self, v91, v92, v93, v94);
        v100 = objc_msgSend_weightedKeywords(self, v96, v97, v98, v99);
        v124 = objc_msgSend_hidden(self, v101, v102, v103, v104);
        v123 = objc_msgSend_recalled(self, v105, v106, v107, v108);
        objc_msgSend_updateSongArtist_title_tags_keywords_weightedKeywords_hidden_recalled_metadataVersion_(v75, v109, v80, v85, v90, v95, v100, v124, v123, 1);

        objc_msgSend_updateBackend_(self, v110, v75, v111, v112);
      }

      else
      {
        v113 = FlexLogForCategory(0);
        if (os_log_type_enabled(v113, OS_LOG_TYPE_ERROR))
        {
          sub_24B7F45CC();
        }
      }
    }

    else
    {
      v70 = v54;
    }

LABEL_45:
  }

LABEL_46:
  v114 = objc_msgSend__impl(v48, v50, v51, v52, v53);
  objc_msgSend_updateAssets_(v114, v115, v126, v116, v117);

  objc_msgSend__notifySongAssetsChanged(v48, v118, v119, v120, v121);
  v122 = *MEMORY[0x277D85DE8];
}

- (id)assetWithID:(id)a3
{
  v4 = a3;
  v9 = objc_msgSend__impl(self, v5, v6, v7, v8);
  v13 = objc_msgSend_assetWithID_(v9, v10, v4, v11, v12);

  if ((!v13 || (objc_msgSend_isCloudBacked(v13, v14, v15, v16, v17) & 1) == 0) && objc_msgSend_isEqualToString_(v4, v14, @"FMSongArtworkAssetID", v16, v17))
  {
    v19 = objc_msgSend_existingAssetWithID_(self, v14, @"FMSongBundleAssetID", v16, v17);
    if (objc_msgSend_isCloudBacked(v19, v20, v21, v22, v23))
    {
      v28 = objc_msgSend_cloudManager(v19, v24, v25, v26, v27);
      v33 = objc_msgSend_uid(self, v29, v30, v31, v32);
      objc_msgSend_loadAssetWithID_forSongID_(v28, v34, v4, v33, v35);
    }
  }

  v36 = objc_msgSend__impl(self, v14, v18, v16, v17);
  v40 = objc_msgSend_assetWithID_(v36, v37, v4, v38, v39);

  return v40;
}

- (id)existingAssetWithID:(id)a3
{
  v4 = a3;
  v9 = objc_msgSend__impl(self, v5, v6, v7, v8);
  v13 = objc_msgSend_existingAssetWithID_(v9, v10, v4, v11, v12);

  objc_msgSend_isEqualToString_(v4, v14, @"FMSongBundleAssetID", v15, v16);

  return v13;
}

- (void)requestDownloadOfAllAssetsWithIDs:(id)a3
{
  v4 = a3;
  v7 = objc_opt_new();
  objc_msgSend_requestDownloadOfAllAssetsWithIDs_withOptions_(self, v5, v4, v7, v6);
}

- (void)requestDownloadOfAllAssetsWithIDs:(id)a3 withOptions:(id)a4
{
  v26 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v8, &v21, v25, 16);
  if (v9)
  {
    v13 = v9;
    v14 = *v22;
    do
    {
      v15 = 0;
      do
      {
        if (*v22 != v14)
        {
          objc_enumerationMutation(v6);
        }

        v16 = objc_msgSend_assetWithID_(self, v10, *(*(&v21 + 1) + 8 * v15), v11, v12);
        objc_msgSend_requestDownloadWithOptions_(v16, v17, v7, v18, v19);

        ++v15;
      }

      while (v13 != v15);
      v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v10, &v21, v25, 16);
    }

    while (v13);
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (void)cancelDownloadOfAllAssetsWithIDs:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v6 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v5, &v19, v23, 16);
  if (v6)
  {
    v10 = v6;
    v11 = *v20;
    do
    {
      v12 = 0;
      do
      {
        if (*v20 != v11)
        {
          objc_enumerationMutation(v4);
        }

        v13 = objc_msgSend_existingAssetWithID_(self, v7, *(*(&v19 + 1) + 8 * v12), v8, v9);
        objc_msgSend_cancelDownload(v13, v14, v15, v16, v17);

        ++v12;
      }

      while (v10 != v12);
      v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v7, &v19, v23, 16);
    }

    while (v10);
  }

  v18 = *MEMORY[0x277D85DE8];
}

+ (NSArray)availableTagIDs
{
  if (qword_27F060D58 != -1)
  {
    sub_24B7F46B4();
  }

  v3 = qword_27F060D50;

  return v3;
}

+ (id)localizedNameForTagWithID:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = @"?";
  }

  return v5;
}

- (id)description
{
  v6 = MEMORY[0x277CCACA8];
  v7 = objc_msgSend_songName(self, a2, v2, v3, v4);
  v12 = objc_msgSend_artistName(self, v8, v9, v10, v11);
  v16 = objc_msgSend_stringWithFormat_(v6, v13, @"%@ by %@", v14, v15, v7, v12);

  return v16;
}

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)minimumDuration
{
  objc_msgSend__loadIfNeeded(self, a3, v3, v4, v5);
  v12 = objc_msgSend__impl(self, v8, v9, v10, v11);
  if (v12)
  {
    v18 = v12;
    objc_msgSend_minimumDuration(v12, v13, v14, v15, v16);
    v12 = v18;
  }

  else
  {
    retstr->var0 = 0;
    *&retstr->var1 = 0;
    retstr->var3 = 0;
  }

  return result;
}

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)naturalDuration
{
  objc_msgSend__loadIfNeeded(self, a3, v3, v4, v5);
  v12 = objc_msgSend__impl(self, v8, v9, v10, v11);
  if (v12)
  {
    v18 = v12;
    objc_msgSend_naturalDuration(v12, v13, v14, v15, v16);
    v12 = v18;
  }

  else
  {
    retstr->var0 = 0;
    *&retstr->var1 = 0;
    retstr->var3 = 0;
  }

  return result;
}

- (id)idealDurations
{
  objc_msgSend__loadIfNeeded(self, a2, v2, v3, v4);
  v10 = objc_msgSend__impl(self, v6, v7, v8, v9);
  v15 = objc_msgSend_idealDurations(v10, v11, v12, v13, v14);

  return v15;
}

- (id)renditionForDuration:(id *)a3 withOptions:(id)a4
{
  v18 = *MEMORY[0x277D85DE8];
  v10 = a4;
  if (a3->var2)
  {
    objc_msgSend__loadIfNeeded(self, v6, v7, v8, v9);
    v16 = *&a3->var0;
    var3 = a3->var3;
    v12 = objc_msgSend_renditionForDuration_withOptions_testingContext_(self, v13, &v16, v10, 0);
  }

  else
  {
    v11 = FlexLogForCategory(0);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(v16) = 138412290;
      *(&v16 + 4) = self;
      _os_log_impl(&dword_24B7E5000, v11, OS_LOG_TYPE_DEFAULT, "invalid duration requested in renditionForDuration for song: %@", &v16, 0xCu);
    }

    v12 = 0;
  }

  v14 = *MEMORY[0x277D85DE8];

  return v12;
}

- (id)renditionForDuration:(id *)a3 withOptions:(id)a4 testingContext:(id)a5
{
  v8 = a5;
  v9 = a4;
  v14 = objc_msgSend__impl(self, v10, v11, v12, v13);
  v18 = *a3;
  v16 = objc_msgSend_renditionForDuration_withOptions_testingContext_(v14, v15, &v18, v9, v8);

  return v16;
}

+ (int64_t)versionFromArtworkFilename:(id)a3
{
  v3 = a3;
  if (objc_msgSend_rangeOfString_(v3, v4, @"_v", v5, v6) == 0x7FFFFFFFFFFFFFFFLL)
  {
    v10 = 1;
  }

  else
  {
    v11 = objc_msgSend_componentsSeparatedByString_(v3, v7, @"_", v8, v9);
    v16 = objc_msgSend_lastObject(v11, v12, v13, v14, v15);

    v21 = objc_msgSend_decimalDigitCharacterSet(MEMORY[0x277CCA900], v17, v18, v19, v20);
    v26 = objc_msgSend_invertedSet(v21, v22, v23, v24, v25);
    v30 = objc_msgSend_componentsSeparatedByCharactersInSet_(v16, v27, v26, v28, v29);
    v34 = objc_msgSend_componentsJoinedByString_(v30, v31, &stru_285EA09B0, v32, v33);

    v10 = objc_msgSend_integerValue(v34, v35, v36, v37, v38);
  }

  return v10;
}

+ (id)loadSongBundleAtPath:(id)a3
{
  v118[2] = *MEMORY[0x277D85DE8];
  v3 = a3;
  v7 = objc_msgSend_stringByAppendingPathComponent_(v3, v4, @"metadata.smm", v5, v6);
  v12 = objc_msgSend_defaultManager(MEMORY[0x277CCAA00], v8, v9, v10, v11);
  v16 = objc_msgSend_fileExistsAtPath_(v12, v13, v7, v14, v15);

  if (v16)
  {
    objc_msgSend_loadSongInFolderWithPath_(FlexSong, v17, v3, v18, v19);
  }

  else
  {
    objc_msgSend_loadSongAtPath_(FlexMLSong, v17, v3, v18, v19);
  }
  v20 = ;
  if (v20)
  {
    v21 = [FMSong alloc];
    v29 = objc_msgSend_initWithBackend_(v21, v22, v20, v23, v24);
    if (v29)
    {
      v30 = objc_msgSend_defaultManager(MEMORY[0x277CCAA00], v25, v26, v27, v28);
      v35 = objc_msgSend_stringByDeletingLastPathComponent(v3, v31, v32, v33, v34);
      v38 = objc_msgSend_contentsOfDirectoryAtPath_error_(v30, v36, v35, 0, v37);

      v42 = objc_msgSend_predicateWithFormat_(MEMORY[0x277CCAC30], v39, @"self ENDSWITH '.jpg'", v40, v41);
      v43 = MEMORY[0x277CCAC30];
      v48 = objc_msgSend_uid(v20, v44, v45, v46, v47);
      v52 = objc_msgSend_predicateWithFormat_(v43, v49, @"self CONTAINS %@", v50, v51, v48);

      v53 = MEMORY[0x277CCA920];
      v118[0] = v42;
      v118[1] = v52;
      v116 = v52;
      v56 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v54, v118, 2, v55);
      v60 = objc_msgSend_andPredicateWithSubpredicates_(v53, v57, v56, v58, v59);

      v64 = objc_msgSend_filteredArrayUsingPredicate_(v38, v61, v60, v62, v63);
      if (objc_msgSend_count(v64, v65, v66, v67, v68))
      {
        v113 = v60;
        v114 = v42;
        v73 = objc_msgSend_stringByDeletingLastPathComponent(v3, v69, v70, v71, v72);
        v78 = objc_msgSend_firstObject(v64, v74, v75, v76, v77);
        v82 = objc_msgSend_stringByAppendingPathComponent_(v73, v79, v78, v80, v81);

        v90 = objc_msgSend_lastPathComponent(v82, v83, v84, v85, v86);
        v115 = v38;
        if (v82)
        {
          v91 = objc_msgSend_fileURLWithPath_(MEMORY[0x277CBEBC0], v87, v82, v88, v89);
        }

        else
        {
          v91 = 0;
        }

        v112 = v90;
        v92 = objc_msgSend_versionFromArtworkFilename_(FMSong, v87, v90, v88, v89);
        v96 = objc_msgSend_existingAssetWithID_(v29, v93, @"FMSongBundleAssetID", v94, v95);
        v100 = objc_msgSend_compatibilityVersionForAssetLocation_(v96, v97, 0, v98, v99);
        v101 = [FMSongAsset alloc];
        v103 = objc_msgSend_initWithAssetID_assetStatus_localURL_contentVersion_compatibilityVersion_(v101, v102, @"FMSongArtworkAssetID", 0, v91, v92, v100);
        v117 = v103;
        v106 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v104, &v117, 1, v105);
        objc_msgSend_updateAssets_(v29, v107, v106, v108, v109);

        v42 = v114;
        v38 = v115;
        v60 = v113;
      }
    }
  }

  else
  {
    v29 = 0;
  }

  v110 = *MEMORY[0x277D85DE8];

  return v29;
}

+ (id)loadSongsAndArtworkInFolderAtPath:(id)a3
{
  v47 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v41 = objc_opt_new();
  if (v3)
  {
    v8 = objc_msgSend_defaultManager(MEMORY[0x277CCAA00], v4, v5, v6, v7);
    v11 = objc_msgSend_contentsOfDirectoryAtPath_error_(v8, v9, v3, 0, v10);

    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    v12 = v11;
    v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v13, &v42, v46, 16);
    if (v14)
    {
      v19 = v14;
      v20 = *v43;
      do
      {
        for (i = 0; i != v19; ++i)
        {
          if (*v43 != v20)
          {
            objc_enumerationMutation(v12);
          }

          v22 = *(*(&v42 + 1) + 8 * i);
          v23 = objc_msgSend_pathExtension(v22, v15, v16, v17, v18);
          if (objc_msgSend_isEqualToString_(v23, v24, @"smsbundle", v25, v26))
          {
            v30 = objc_msgSend_stringByAppendingPathComponent_(v3, v27, v22, v28, v29);
            v37 = objc_msgSend_loadSongBundleAtPath_(FMSong, v31, v30, v32, v33);
            if (v37)
            {
              objc_msgSend_addObject_(v41, v34, v37, v35, v36);
            }
          }
        }

        v19 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v15, &v42, v46, 16);
      }

      while (v19);
    }
  }

  v38 = objc_msgSend_arrayWithArray_(MEMORY[0x277CBEA60], v4, v41, v6, v7);

  v39 = *MEMORY[0x277D85DE8];

  return v38;
}

+ (BOOL)hasValidTagIDs:(id)a3
{
  v3 = a3;
  v32 = 0;
  v33 = &v32;
  v34 = 0x3032000000;
  v35 = sub_24B7F43D0;
  v36 = sub_24B7F43E0;
  v37 = objc_msgSend_array(MEMORY[0x277CBEB18], v4, v5, v6, v7);
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = sub_24B7F43D0;
  v30 = sub_24B7F43E0;
  v31 = objc_msgSend_array(MEMORY[0x277CBEB18], v8, v9, v10, v11);
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = sub_24B7F43E8;
  v25[3] = &unk_27900EDE8;
  v25[4] = &v32;
  v25[5] = &v26;
  objc_msgSend_enumerateObjectsUsingBlock_(v3, v12, v25, v13, v14);
  v23 = objc_msgSend_count(v33[5], v15, v16, v17, v18) == 1 && objc_msgSend_count(v27[5], v19, v20, v21, v22) == 1;
  _Block_object_dispose(&v26, 8);

  _Block_object_dispose(&v32, 8);
  return v23;
}

- (id)customOptions
{
  v5 = objc_msgSend__impl(self, a2, v2, v3, v4);
  v10 = objc_msgSend_customOptions(v5, v6, v7, v8, v9);

  return v10;
}

- (NSString)songFormat
{
  v6 = objc_msgSend__impl(self, a2, v2, v3, v4);
  v15 = objc_msgSend_songFormat(v6, v7, v8, v9, v10);
  if (v15)
  {
    v16 = objc_msgSend__impl(self, v11, v12, v13, v14);
    v21 = objc_msgSend_songFormat(v16, v17, v18, v19, v20);
  }

  else
  {
    v21 = @"?";
  }

  return v21;
}

@end