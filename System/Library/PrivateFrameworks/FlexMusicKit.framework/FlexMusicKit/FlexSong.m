@interface FlexSong
+ (BOOL)_transitionIsPossibleFromSegment:(id)a3 toSegment:(id)a4 forBodyClipPlaylist:(id)a5;
+ (id)loadSongInFolderWithPath:(id)a3;
+ (id)numberToString:(int64_t)a3;
+ (id)outroInfoForClipPlaylist:(id)a3;
+ (int64_t)_durationInSamplesToReserveForOutroSegment:(id)a3 withOptions:(id)a4;
+ (int64_t)_findEarlyFadeStartOffsetInSamplesForOutroSegment:(id)a3 withOptions:(id)a4;
+ (int64_t)_findMaxLengthInSamplesToReserveForOutroSegment:(id)a3 withOptions:(id)a4;
+ (int64_t)_findMinLengthInSamplesForEarlyFadeOutForOutroSegment:(id)a3 withOptions:(id)a4;
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)minimumDuration;
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)naturalDuration;
- (BOOL)_addBodySegmentsForAssemblyList:(id)a3 forDuration:(int64_t)a4 unusedDuration:(int64_t *)a5 testingContext:(id)a6 timedOut:(BOOL *)a7;
- (BOOL)_addIntroSegmentsToAssemblyList:(id)a3 forDuration:(int64_t)a4 testingContext:(id)a5;
- (BOOL)_addOutroSegmentsToAssemblyList:(id)a3 forDuration:(int64_t)a4 allowTrim:(BOOL)a5 testingContext:(id)a6;
- (BOOL)_addSegment:(id)a3 withDuration:(int64_t)a4 toAssemblyList:(id)a5 timeRemaining:(int64_t)a6 reusedSegment:(id *)a7 indexofNewSegment:(int64_t *)a8;
- (BOOL)_buildIntroAndOutroOnlySegmentAssemblyList:(id)a3 forDuration:(int64_t)a4 testingContext:(id)a5;
- (BOOL)_buildSegmentAssemblyList:(id)a3 forDuration:(int64_t)a4 withOptions:(id)a5 testingContext:(id)a6;
- (BOOL)_rebuildBodySegmentsInAssemblyList:(id)a3 forDuration:(int64_t)a4 unusedDuration:(int64_t *)a5 testingContext:(id)a6;
- (BOOL)_removeUnpermittedTransitionsInAssemblyList:(id)a3 final:(BOOL)a4 testingContext:(id)a5 removedIndexes:(id)a6 conflictList:(id)a7;
- (BOOL)_updateTransitionBodySegmentsForAssemblyList:(id)a3 usingNewSegment:(id)a4 indexOfNewTransitionSegment:(id)a5;
- (BOOL)_validateAuthoringIssuesInRendition:(id)a3 failureReason:(id *)a4;
- (BOOL)_validateStructureForRendition:(id)a3 failureReason:(id *)a4;
- (BOOL)_validateTransitionsInRendition:(id)a3 failureReason:(id *)a4;
- (BOOL)_verifyAssetsForSegment:(id)a3 withFailureReason:(id *)a4;
- (BOOL)verifyAssetsWithFailureReason:(id *)a3;
- (BOOL)verifyRendition:(id)a3 forDuration:(id *)a4 failureReason:(id *)a5;
- (FlexSong)initWithDictionary:(id)a3 assets:(id)a4;
- (FlexSong)initWithUID:(id)a3 songName:(id)a4 artistName:(id)a5 tagIDs:(id)a6 keywords:(id)a7 weightedKeywords:(id)a8 hidden:(BOOL)a9 sampleRate:(int64_t)a10 mainSegments:(id)a11 crossFadeSegments:(id)a12 assets:(id)a13 audioFileExtension:(id)a14 audioEncoderPresetName:(id)a15 metadataVersion:(int64_t)a16 customOptions:(id)a17;
- (id)_cacheObjectForKey:(id)a3;
- (id)_clipPlaylistForDuration:(id *)a3 withOptions:(id)a4 testingContext:(id)a5;
- (id)_fullSongLoopedClipPlaylistForDuration:(id *)a3 withOptions:(id)a4 testingContext:(id)a5;
- (id)_longestSegmentForType:(unint64_t)a3;
- (id)_longestSegmentsForType:(unint64_t)a3;
- (id)_naturalDurationAssemblyList;
- (id)_segmentsForIndex:(unint64_t)a3 andType:(unint64_t)a4;
- (id)_segmentsforType:(unint64_t)a3;
- (id)_shortestSegmentForType:(unint64_t)a3;
- (id)_shortestSegmentsForType:(unint64_t)a3;
- (id)_transitionSegmentForSegmentInfo:(id)a3 toSegmentInfo:(id)a4 fromBarIndex:(int64_t)a5 inSegmentList:(id)a6;
- (id)analysisData;
- (id)description;
- (id)encodeAsDictionary;
- (id)initCommonWithUID:(id)a3 songName:(id)a4 artistName:(id)a5 tagIDs:(id)a6 keywords:(id)a7 weightedKeywords:(id)a8 hidden:(BOOL)a9 sampleRate:(int64_t)a10 mainSegments:(id)a11 crossFadeSegments:(id)a12 audioFileExtension:(id)a13 audioEncoderPresetName:(id)a14 metadataVersion:(int64_t)a15 customOptions:(id)a16;
- (id)renditionForDuration:(id *)a3 withOptions:(id)a4 testingContext:(id)a5;
- (id)timedMetadataItemsWithIdentifier:(id)a3 forRendition:(id)a4;
- (int64_t)_actualOutroDurationForAssemblyList:(id)a3 currentDuration:(int64_t)a4;
- (int64_t)_maxIntroDuration;
- (int64_t)_maxOutroDuration;
- (int64_t)_minBodySegmentDuration;
- (int64_t)_minIntroDuration;
- (int64_t)_minOutroDuration;
- (int64_t)_minimumPermittedIntroAndOutroDuration;
- (int64_t)_sampleDurationOfClipPlaylist:(id)a3;
- (int64_t)_samplesForDuration:(id *)a3;
- (unint64_t)_highestIndexForSegmentType:(unint64_t)a3;
- (void)_destroyCache;
- (void)_loadAnalysisData;
- (void)_populateCache;
- (void)_removeSegmentInfo:(id)a3 fromAssemblyList:(id)a4;
- (void)_sequenceBodySegmentList:(id)a3 forIndexes:(id)a4;
- (void)_setupInitialAssets:(id)a3;
@end

@implementation FlexSong

- (id)initCommonWithUID:(id)a3 songName:(id)a4 artistName:(id)a5 tagIDs:(id)a6 keywords:(id)a7 weightedKeywords:(id)a8 hidden:(BOOL)a9 sampleRate:(int64_t)a10 mainSegments:(id)a11 crossFadeSegments:(id)a12 audioFileExtension:(id)a13 audioEncoderPresetName:(id)a14 metadataVersion:(int64_t)a15 customOptions:(id)a16
{
  v44 = a3;
  v43 = a4;
  v46 = a5;
  v21 = a6;
  v22 = a7;
  v23 = a8;
  v42 = a11;
  v41 = a12;
  v40 = a13;
  v45 = a14;
  v28 = a16;
  v29 = v21;
  if (!v21)
  {
    v29 = objc_msgSend_set(MEMORY[0x277CBEB98], v24, v25, v26, v27);
  }

  v30 = v22;
  if (!v22)
  {
    v30 = objc_msgSend_set(MEMORY[0x277CBEB98], v24, v25, v26, v27);
  }

  v31 = v23;
  if (!v23)
  {
    v31 = objc_msgSend_dictionary(MEMORY[0x277CBEAC0], v24, v25, v26, v27);
  }

  v47.receiver = self;
  v47.super_class = FlexSong;
  v32 = [(FlexSongBackend *)&v47 initWithUID:v44 songName:v43 artistName:v46 tagIDs:v29 keywords:v30 weightedKeywords:v31 hidden:a9 recalled:v45 audioEncoderPresetName:a15 metadataVersion:@"LG" songFormat:a10 sampleRate:v28 customOptions:?];
  if (v23)
  {
    if (v22)
    {
      goto LABEL_9;
    }

LABEL_15:

    if (v21)
    {
      goto LABEL_10;
    }

LABEL_16:

    goto LABEL_10;
  }

  if (!v22)
  {
    goto LABEL_15;
  }

LABEL_9:
  if (!v21)
  {
    goto LABEL_16;
  }

LABEL_10:
  if (v32)
  {
    objc_storeStrong(v32 + 19, a13);
    v37 = MEMORY[0x277CC0898];
    *(v32 + 120) = *MEMORY[0x277CC0898];
    *(v32 + 17) = *(v37 + 16);
    if (v42)
    {
      objc_msgSend__cacheSegmentsByType(v32, v33, v34, v35, v36);
    }
  }

  return v32;
}

- (FlexSong)initWithUID:(id)a3 songName:(id)a4 artistName:(id)a5 tagIDs:(id)a6 keywords:(id)a7 weightedKeywords:(id)a8 hidden:(BOOL)a9 sampleRate:(int64_t)a10 mainSegments:(id)a11 crossFadeSegments:(id)a12 assets:(id)a13 audioFileExtension:(id)a14 audioEncoderPresetName:(id)a15 metadataVersion:(int64_t)a16 customOptions:(id)a17
{
  v22 = a13;
  inited = objc_msgSend_initCommonWithUID_songName_artistName_tagIDs_keywords_weightedKeywords_hidden_sampleRate_mainSegments_crossFadeSegments_audioFileExtension_audioEncoderPresetName_metadataVersion_customOptions_(self, v23, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a14, a15, a16, a17);
  v28 = inited;
  if (inited)
  {
    objc_msgSend__setupInitialAssets_(inited, v25, v22, v26, v27);
  }

  return v28;
}

- (FlexSong)initWithDictionary:(id)a3 assets:(id)a4
{
  v5 = a3;
  v62 = a4;
  v65 = objc_msgSend_objectForKey_(v5, v6, @"uuid", v7, v8);
  v64 = objc_msgSend_objectForKey_(v5, v9, @"songName", v10, v11);
  v63 = objc_msgSend_objectForKey_(v5, v12, @"artistName", v13, v14);
  v18 = objc_msgSend_objectForKey_(v5, v15, @"sampleRate", v16, v17);
  v23 = objc_msgSend_intValue(v18, v19, v20, v21, v22);

  v27 = objc_msgSend_objectForKey_(v5, v24, @"tagIDs", v25, v26);
  v32 = objc_msgSend_firstObject(v27, v28, v29, v30, v31);

  if (v32)
  {
    v36 = objc_msgSend_setWithArray_(MEMORY[0x277CBEB98], v33, v27, v34, v35);
  }

  else
  {
    v36 = 0;
  }

  v37 = objc_msgSend_objectForKey_(v5, v33, @"audioEncoderPresetName", v34, v35);
  v41 = objc_msgSend_objectForKey_(v5, v38, @"audioFileExtension", v39, v40);
  v45 = objc_msgSend_objectForKey_(v5, v42, @"customOptions", v43, v44);
  v49 = objc_msgSend_objectForKey_(v5, v46, @"crossFadeSegments", v47, v48);
  v50 = objc_opt_class();
  v53 = objc_msgSend_decodeItemsInArray_asClass_(FlexUtilities, v51, v49, v50, v52);
  inited = objc_msgSend_initCommonWithUID_songName_artistName_tagIDs_keywords_weightedKeywords_hidden_sampleRate_mainSegments_crossFadeSegments_audioFileExtension_audioEncoderPresetName_metadataVersion_customOptions_(self, v54, v65, v64, v63, v36, 0, 0, 0, v23, 0, v53, v41, v37, 0, v45);
  v59 = inited;
  if (inited)
  {
    objc_msgSend__setupInitialAssets_(inited, v56, v62, v57, v58);
  }

  return v59;
}

- (void)_setupInitialAssets:(id)a3
{
  objc_msgSend_updateAssets_(self, a2, a3, v3, v4);
  v9 = objc_msgSend_existingAssetWithID_(self, v6, @"FMSongBundleAssetID", v7, v8);
  v31 = v9;
  if (v9)
  {
    v18 = objc_msgSend_localURL(v9, v10, v11, v12, v13);
    if (v18)
    {
      v19 = objc_msgSend_audioFileExtension(self, v14, v15, v16, v17);
      if (v19)
      {
        v20 = v19;
      }

      else
      {
        v20 = @"m4a";
      }

      v21 = [FlexSongAssetProvider_V2 alloc];
      v26 = objc_msgSend_path(v18, v22, v23, v24, v25);
      v29 = objc_msgSend_initWithFolderPath_audioFileExtension_(v21, v27, v26, v20, v28);
    }

    else
    {
      v29 = 0;
    }
  }

  else
  {
    v29 = 0;
  }

  assetProvider = self->_assetProvider;
  self->_assetProvider = v29;
}

- (void)_loadAnalysisData
{
  v91 = *MEMORY[0x277D85DE8];
  v77 = objc_opt_new();
  v79 = self;
  v80 = objc_msgSend_existingAssetWithID_(self, v3, @"FMSongBundleAssetID", v4, v5);
  v78 = objc_msgSend_localURL(v80, v6, v7, v8, v9);
  v14 = objc_msgSend_path(v78, v10, v11, v12, v13);
  v18 = objc_msgSend_stringByAppendingPathComponent_(v14, v15, @"ANALYSIS", v16, v17);

  v76 = v18;
  v22 = objc_msgSend_stringByAppendingPathComponent_(v18, v19, @"ONSET", v20, v21);
  v27 = objc_msgSend_defaultManager(MEMORY[0x277CCAA00], v23, v24, v25, v26);
  v30 = objc_msgSend_contentsOfDirectoryAtPath_error_(v27, v28, v22, 0, v29);

  v81 = objc_opt_new();
  v86 = 0u;
  v87 = 0u;
  v88 = 0u;
  v89 = 0u;
  obj = v30;
  v32 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v31, &v86, v90, 16);
  if (v32)
  {
    v36 = v32;
    v37 = *v87;
    v82 = *v87;
    do
    {
      v38 = 0;
      v83 = v36;
      do
      {
        if (*v87 != v37)
        {
          objc_enumerationMutation(obj);
        }

        v39 = *(*(&v86 + 1) + 8 * v38);
        v40 = objc_msgSend_stringByAppendingPathComponent_(v22, v33, v39, v34, v35);
        v85 = 0;
        v42 = objc_msgSend_stringWithContentsOfFile_encoding_error_(MEMORY[0x277CCACA8], v41, v40, 4, &v85);
        v46 = v85;
        if (!v46)
        {
          v47 = v22;
          v48 = objc_msgSend_componentsSeparatedByString_(v42, v43, @"\n", v44, v45);
          v53 = objc_msgSend_mutableCopy(v48, v49, v50, v51, v52);

          v57 = objc_msgSend_indexesOfObjectsPassingTest_(v53, v54, &unk_285EA0510, v55, v56);
          objc_msgSend_removeObjectsAtIndexes_(v53, v58, v57, v59, v60);
          v65 = objc_msgSend_stringByDeletingPathExtension(v39, v61, v62, v63, v64);
          v68 = objc_msgSend_stringByReplacingOccurrencesOfString_withString_(v65, v66, @"_onset", &stru_285EA09B0, v67);

          if (v53)
          {
            v71 = v68 == 0;
          }

          else
          {
            v71 = 1;
          }

          if (!v71)
          {
            objc_msgSend_setObject_forKey_(v81, v69, v53, v68, v70);
          }

          v22 = v47;
          v37 = v82;
          v36 = v83;
        }

        ++v38;
      }

      while (v36 != v38);
      v36 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v33, &v86, v90, 16);
    }

    while (v36);
  }

  objc_msgSend_setObject_forKey_(v77, v72, v81, @"onsets", v73);
  analysisData = v79->_analysisData;
  v79->_analysisData = v77;

  v75 = *MEMORY[0x277D85DE8];
}

- (id)analysisData
{
  v2 = self;
  objc_sync_enter(v2);
  if (!v2->_analysisData)
  {
    objc_msgSend__loadAnalysisData(v2, v3, v4, v5, v6);
  }

  objc_sync_exit(v2);

  analysisData = v2->_analysisData;

  return analysisData;
}

- (id)encodeAsDictionary
{
  v6 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], a2, v2, v3, v4);
  v11 = objc_msgSend_uid(self, v7, v8, v9, v10);
  objc_msgSend_setValue_forKey_(v6, v12, v11, @"uuid", v13);

  v18 = objc_msgSend_songName(self, v14, v15, v16, v17);
  objc_msgSend_setValue_forKey_(v6, v19, v18, @"songName", v20);

  v25 = objc_msgSend_artistName(self, v21, v22, v23, v24);
  objc_msgSend_setValue_forKey_(v6, v26, v25, @"artistName", v27);

  v28 = MEMORY[0x277CCABB0];
  v33 = objc_msgSend_sampleRate(self, v29, v30, v31, v32);
  v37 = objc_msgSend_numberWithInteger_(v28, v34, v33, v35, v36);
  objc_msgSend_setValue_forKey_(v6, v38, v37, @"sampleRate", v39);

  v44 = objc_msgSend__decodedMainSegmentsFromCache(self, v40, v41, v42, v43);
  v48 = objc_msgSend_encodeItemsInArray_(FlexUtilities, v45, v44, v46, v47);
  objc_msgSend__destroyCache(self, v49, v50, v51, v52);
  if (v48)
  {
    objc_msgSend_setValue_forKey_(v6, v53, v48, @"mainSegments", v56);
  }

  v57 = objc_msgSend_tagIDs(self, v53, v54, v55, v56);
  v62 = objc_msgSend_anyObject(v57, v58, v59, v60, v61);

  if (v62)
  {
    v67 = objc_msgSend_tagIDs(self, v63, v64, v65, v66);
    v72 = objc_msgSend_allObjects(v67, v68, v69, v70, v71);
    objc_msgSend_setValue_forKey_(v6, v73, v72, @"tagIDs", v74);
  }

  v75 = objc_msgSend_assetProvider(self, v63, v64, v65, v66);
  v80 = objc_msgSend_audioFileExtension(v75, v76, v77, v78, v79);

  if (v80)
  {
    objc_msgSend_setValue_forKey_(v6, v81, v80, @"audioFileExtension", v84);
  }

  v88 = objc_msgSend_audioEncoderPresetName(self, v81, v82, v83, v84);
  if (v88)
  {
    objc_msgSend_setValue_forKey_(v6, v85, v88, @"audioEncoderPresetName", v87);
  }

  v89 = objc_msgSend_existingAssetWithID_(self, v85, @"FMSongBundleAssetID", v86, v87);
  v94 = v89;
  if (v89)
  {
    v95 = MEMORY[0x277CCABB0];
    v96 = objc_msgSend_contentVersion(v89, v90, v91, v92, v93);
    v100 = objc_msgSend_numberWithInteger_(v95, v97, v96, v98, v99);
    objc_msgSend_setValue_forKey_(v6, v101, v100, @"contentVersion", v102);

    v103 = MEMORY[0x277CCABB0];
    v108 = objc_msgSend_compatibilityVersion(v94, v104, v105, v106, v107);
    v112 = objc_msgSend_numberWithInteger_(v103, v109, v108, v110, v111);
    objc_msgSend_setValue_forKey_(v6, v113, v112, @"compatibilityVersion", v114);
  }

  v117 = objc_msgSend_customOptions(self, v90, v91, v92, v93);
  if (v117)
  {
    objc_msgSend_setValue_forKey_(v6, v115, v117, @"customOptions", v116);
  }

  return v6;
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
  v8 = 6 * objc_msgSend_sampleRate(self, a3, v3, v4, v5);
  v13 = objc_msgSend_sampleRate(self, v9, v10, v11, v12);

  return CMTimeMake(retstr, v8, v13);
}

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)naturalDuration
{
  v4 = self;
  objc_sync_enter(v4);
  p_cachedNaturalDuration = &v4->_cachedNaturalDuration;
  if ((v4->_cachedNaturalDuration.flags & 1) == 0)
  {
    v10 = objc_msgSend__naturalDurationAssemblyList(v4, v5, v6, v7, v8);
    v14 = objc_msgSend__sampleDurationOfClipPlaylist_(v4, v11, v10, v12, v13);

    v19 = objc_msgSend_sampleRate(v4, v15, v16, v17, v18);
    CMTimeMake(&v22, 9600 * vcvtpd_s64_f64(v14 / 9600.0), v19);
    v20 = *&v22.value;
    v4->_cachedNaturalDuration.epoch = v22.epoch;
    *&p_cachedNaturalDuration->value = v20;
  }

  objc_sync_exit(v4);

  *&retstr->var0 = *&p_cachedNaturalDuration->value;
  retstr->var3 = v4->_cachedNaturalDuration.epoch;
  return result;
}

- (void)_populateCache
{
  v3 = objc_autoreleasePoolPush();
  v7 = objc_msgSend_existingAssetWithID_(self, v4, @"FMSongBundleAssetID", v5, v6);
  v12 = objc_msgSend_localURL(v7, v8, v9, v10, v11);
  v17 = objc_msgSend_path(v12, v13, v14, v15, v16);
  v21 = objc_msgSend_stringByAppendingPathComponent_(v17, v18, @"metadata.smm", v19, v20);

  v25 = objc_msgSend_dataWithContentsOfFile_(MEMORY[0x277CBEA90], v22, v21, v23, v24);
  v43 = 0;
  v27 = objc_msgSend_JSONObjectWithData_options_error_(MEMORY[0x277CCAAA0], v26, v25, 0, &v43);
  v31 = v43;
  if (!v31)
  {
    v32 = objc_msgSend_objectForKey_(v27, v28, @"mainSegments", v29, v30);
    v33 = objc_opt_class();
    v36 = objc_msgSend_decodeItemsInArray_asClass_(FlexUtilities, v34, v32, v33, v35);
    objc_msgSend_setObject_forKey_(self->_segmentCache, v37, v27, @"metadataDict", v38);
    objc_msgSend_setObject_forKey_(self->_segmentCache, v39, v36, @"decodedMainSegments", v40);
    objc_msgSend_setObject_forKey_(self->_segmentCache, v41, v32, @"mainSegments", v42);
  }

  objc_autoreleasePoolPop(v3);
}

- (id)_cacheObjectForKey:(id)a3
{
  v7 = a3;
  segmentCache = self->_segmentCache;
  if (!segmentCache)
  {
    v9 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v10 = self->_segmentCache;
    self->_segmentCache = v9;

    objc_msgSend__populateCache(self, v11, v12, v13, v14);
    segmentCache = self->_segmentCache;
  }

  v19 = objc_msgSend_objectForKey_(segmentCache, v4, v7, v5, v6);
  if (!v19)
  {
    objc_msgSend__populateCache(self, v15, v16, v17, v18);
    v19 = objc_msgSend_objectForKey_(self->_segmentCache, v20, v7, v21, v22);
  }

  return v19;
}

- (void)_destroyCache
{
  objc_msgSend_removeAllObjects(self->_segmentCache, a2, v2, v3, v4);
  segmentCache = self->_segmentCache;
  self->_segmentCache = 0;
}

- (id)_segmentsforType:(unint64_t)a3
{
  v11 = objc_msgSend__metadataDictFromCache(self, a2, a3, v3, v4);
  if (!v11)
  {
    v12 = FlexLogForCategory(0);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_24B7E5000, v12, OS_LOG_TYPE_DEFAULT, "flex: missing metadataDict!", buf, 2u);
    }
  }

  v15 = objc_msgSend__decodedMainSegmentsFromCache(self, v7, v8, v9, v10);
  if (!v15)
  {
    v16 = FlexLogForCategory(0);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *v19 = 0;
      _os_log_impl(&dword_24B7E5000, v16, OS_LOG_TYPE_DEFAULT, "flex: missing decodedMainSegments!", v19, 2u);
    }
  }

  if (a3 - 1 > 3)
  {
    v17 = 0;
  }

  else
  {
    v17 = objc_msgSend_segmentsWithType_inSegments_(FlexSegment, v13, a3, v15, v14);
  }

  return v17;
}

- (id)_segmentsForIndex:(unint64_t)a3 andType:(unint64_t)a4
{
  v36 = *MEMORY[0x277D85DE8];
  v6 = objc_msgSend__segmentsforType_(self, a2, a4, a4, v4);
  v11 = objc_msgSend_array(MEMORY[0x277CBEB18], v7, v8, v9, v10);
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v12 = v6;
  v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v13, &v31, v35, 16);
  if (v14)
  {
    v19 = v14;
    v20 = *v32;
    do
    {
      for (i = 0; i != v19; ++i)
      {
        if (*v32 != v20)
        {
          objc_enumerationMutation(v12);
        }

        v22 = *(*(&v31 + 1) + 8 * i);
        v23 = objc_msgSend_nameIndex(v22, v15, v16, v17, v18, v31);
        v28 = objc_msgSend_integerValue(v23, v24, v25, v26, v27);

        if (v28 == a3)
        {
          objc_msgSend_addObject_(v11, v15, v22, v17, v18);
        }
      }

      v19 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v15, &v31, v35, 16);
    }

    while (v19);
  }

  v29 = *MEMORY[0x277D85DE8];

  return v11;
}

- (id)_shortestSegmentsForType:(unint64_t)a3
{
  v51 = *MEMORY[0x277D85DE8];
  v7 = objc_msgSend_array(MEMORY[0x277CBEB18], a2, a3, v3, v4);
  v13 = objc_msgSend__highestIndexForSegmentType_(self, v8, a3, v9, v10);
  v14 = 0;
  do
  {
    v15 = objc_msgSend__segmentsForIndex_andType_(self, v11, v14, a3, v12);
    v19 = objc_msgSend__sortFlexSegmentsShortestToLongest_(self, v16, v15, v17, v18);

    if (objc_msgSend_count(v19, v20, v21, v22, v23))
    {
      v28 = objc_msgSend_firstObject(v19, v24, v25, v26, v27);
      objc_msgSend_addObject_(v7, v29, v28, v30, v31);
    }

    ++v14;
  }

  while (v14 <= v13);
  if (a3 == 2)
  {
    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    v33 = objc_msgSend__segmentsforType_(self, v11, 2, v32, v12, 0);
    v35 = objc_msgSend_countByEnumeratingWithState_objects_count_(v33, v34, &v46, v50, 16);
    if (v35)
    {
      v40 = v35;
      v41 = *v47;
      do
      {
        for (i = 0; i != v40; ++i)
        {
          if (*v47 != v41)
          {
            objc_enumerationMutation(v33);
          }

          v43 = *(*(&v46 + 1) + 8 * i);
          if (objc_msgSend_sliceable(v43, v36, v37, v38, v39))
          {
            objc_msgSend_addObject_(v7, v36, v43, v38, v39);
          }
        }

        v40 = objc_msgSend_countByEnumeratingWithState_objects_count_(v33, v36, &v46, v50, 16);
      }

      while (v40);
    }
  }

  v44 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)_shortestSegmentForType:(unint64_t)a3
{
  v6 = objc_msgSend__shortestSegmentsForType_(self, a2, a3, v3, v4);
  v10 = objc_msgSend__sortFlexSegmentsShortestToLongest_(self, v7, v6, v8, v9);

  v15 = objc_msgSend_firstObject(v10, v11, v12, v13, v14);

  return v15;
}

- (id)_longestSegmentsForType:(unint64_t)a3
{
  v7 = objc_msgSend_array(MEMORY[0x277CBEB18], a2, a3, v3, v4);
  v13 = objc_msgSend__highestIndexForSegmentType_(self, v8, a3, v9, v10);
  v14 = 0;
  do
  {
    v15 = objc_msgSend__segmentsForIndex_andType_(self, v11, v14, a3, v12);
    v19 = objc_msgSend__sortFlexSegmentsShortestToLongest_(self, v16, v15, v17, v18);

    if (objc_msgSend_count(v19, v20, v21, v22, v23))
    {
      v28 = objc_msgSend_lastObject(v19, v24, v25, v26, v27);
      objc_msgSend_addObject_(v7, v29, v28, v30, v31);
    }

    ++v14;
  }

  while (v14 <= v13);

  return v7;
}

- (id)_longestSegmentForType:(unint64_t)a3
{
  v6 = objc_msgSend__segmentsforType_(self, a2, a3, v3, v4);
  v10 = objc_msgSend__sortFlexSegmentsShortestToLongest_(self, v7, v6, v8, v9);

  v15 = objc_msgSend_lastObject(v10, v11, v12, v13, v14);

  return v15;
}

- (unint64_t)_highestIndexForSegmentType:(unint64_t)a3
{
  v38 = *MEMORY[0x277D85DE8];
  v5 = objc_msgSend__segmentsforType_(self, a2, a3, v3, v4);
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v6, &v33, v37, 16);
  if (v7)
  {
    v12 = v7;
    v13 = 0;
    v14 = *v34;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v34 != v14)
        {
          objc_enumerationMutation(v5);
        }

        v16 = *(*(&v33 + 1) + 8 * i);
        v17 = objc_msgSend_nameIndex(v16, v8, v9, v10, v11);
        if (objc_msgSend_integerValue(v17, v18, v19, v20, v21) > v13)
        {
          v26 = objc_msgSend_nameIndex(v16, v22, v23, v24, v25);
          v13 = objc_msgSend_integerValue(v26, v27, v28, v29, v30);
        }
      }

      v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v8, &v33, v37, 16);
    }

    while (v12);
  }

  else
  {
    v13 = 0;
  }

  v31 = *MEMORY[0x277D85DE8];
  return v13;
}

- (id)_transitionSegmentForSegmentInfo:(id)a3 toSegmentInfo:(id)a4 fromBarIndex:(int64_t)a5 inSegmentList:(id)a6
{
  v87 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v16 = objc_msgSend_indexOfObject_(v12, v13, v10, v14, v15);
  if (v16 == 0x7FFFFFFFFFFFFFFFLL || (v21 = v16, v16 >= objc_msgSend_count(v12, v17, v18, v19, v20) - 1))
  {
    v30 = 0;
  }

  else
  {
    v81 = v11;
    if (v11)
    {
      v25 = v11;
    }

    else
    {
      v25 = objc_msgSend_objectAtIndexedSubscript_(v12, v22, v21 + 1, v23, v24);
    }

    v31 = v25;
    v32 = objc_msgSend_segment(v10, v26, v27, v28, v29);
    v80 = v31;
    v37 = objc_msgSend_segment(v31, v33, v34, v35, v36);
    v42 = objc_msgSend_name(v37, v38, v39, v40, v41);
    v45 = objc_msgSend_transitionToSegmentNamed_fromBarIndex_(v32, v43, v42, a5, v44);

    v50 = objc_msgSend_transitionSegmentName(v45, v46, v47, v48, v49);

    if (v50)
    {
      v78 = v12;
      v79 = v10;
      v54 = objc_msgSend__segmentsforType_(self, v51, 3, v52, v53);
      v82 = 0u;
      v83 = 0u;
      v84 = 0u;
      v85 = 0u;
      v56 = objc_msgSend_countByEnumeratingWithState_objects_count_(v54, v55, &v82, v86, 16);
      if (v56)
      {
        v61 = v56;
        v30 = 0;
        v62 = *v83;
        do
        {
          for (i = 0; i != v61; ++i)
          {
            if (*v83 != v62)
            {
              objc_enumerationMutation(v54);
            }

            v64 = *(*(&v82 + 1) + 8 * i);
            v65 = objc_msgSend_name(v64, v57, v58, v59, v60);
            v70 = objc_msgSend_transitionSegmentName(v45, v66, v67, v68, v69);
            isEqualToString = objc_msgSend_isEqualToString_(v65, v71, v70, v72, v73);

            if (isEqualToString)
            {
              v75 = v64;

              v30 = v75;
            }
          }

          v61 = objc_msgSend_countByEnumeratingWithState_objects_count_(v54, v57, &v82, v86, 16);
        }

        while (v61);
      }

      else
      {
        v30 = 0;
      }

      v12 = v78;
      v10 = v79;
    }

    else
    {
      v30 = 0;
    }

    v11 = v81;
  }

  v76 = *MEMORY[0x277D85DE8];

  return v30;
}

- (int64_t)_sampleDurationOfClipPlaylist:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, v4, &v16, v20, 16);
  if (v5)
  {
    v10 = v5;
    v11 = 0;
    v12 = *v17;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v17 != v12)
        {
          objc_enumerationMutation(v3);
        }

        v11 += objc_msgSend_duration(*(*(&v16 + 1) + 8 * i), v6, v7, v8, v9);
      }

      v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, v6, &v16, v20, 16);
    }

    while (v10);
  }

  else
  {
    v11 = 0;
  }

  v14 = *MEMORY[0x277D85DE8];
  return v11;
}

- (int64_t)_minBodySegmentDuration
{
  v4 = objc_msgSend__shortestSegmentForType_(self, a2, 2, v2, v3);
  v9 = objc_msgSend_sampleCount(v4, v5, v6, v7, v8);

  return v9;
}

- (int64_t)_maxIntroDuration
{
  v4 = objc_msgSend__longestSegmentForType_(self, a2, 1, v2, v3);
  v9 = objc_msgSend_sampleCount(v4, v5, v6, v7, v8);

  return v9;
}

- (int64_t)_minIntroDuration
{
  v4 = objc_msgSend__shortestSegmentForType_(self, a2, 1, v2, v3);
  v9 = objc_msgSend_sampleCount(v4, v5, v6, v7, v8);

  return v9;
}

- (int64_t)_maxOutroDuration
{
  v4 = objc_msgSend__longestSegmentForType_(self, a2, 4, v2, v3);
  v9 = objc_msgSend_sampleCount(v4, v5, v6, v7, v8);

  return v9;
}

- (int64_t)_minOutroDuration
{
  v4 = objc_msgSend__shortestSegmentForType_(self, a2, 4, v2, v3);
  v9 = objc_msgSend_sampleCount(v4, v5, v6, v7, v8);

  return v9;
}

- (int64_t)_actualOutroDurationForAssemblyList:(id)a3 currentDuration:(int64_t)a4
{
  v71 = *MEMORY[0x277D85DE8];
  v6 = a3;
  if (objc_msgSend_indexOfObjectPassingTest_(v6, v7, &unk_285EA0550, v8, v9) == 0x7FFFFFFFFFFFFFFFLL)
  {
    v13 = FlexLogForCategory(1uLL);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      sub_24B80E518(v13);
    }

    v14 = 0;
  }

  else
  {
    v15 = objc_msgSend__segmentsforType_(self, v10, 4, v11, v12);
    if (objc_msgSend_count(v15, v16, v17, v18, v19) == 1)
    {
      v13 = objc_msgSend_lastObject(v15, v20, v21, v22, v23);
      v28 = objc_msgSend_sampleCount(v13, v24, v25, v26, v27);
    }

    else
    {
      v68[0] = 0;
      v68[1] = v68;
      v68[2] = 0x3032000000;
      v68[3] = sub_24B80429C;
      v68[4] = sub_24B8042AC;
      v69 = objc_msgSend_lastObject(v6, v20, v21, v22, v23);
      v67[0] = MEMORY[0x277D85DD0];
      v67[1] = 3221225472;
      v67[2] = sub_24B8042B4;
      v67[3] = &unk_27900F3E0;
      v67[4] = v68;
      v32 = objc_msgSend_indexesOfObjectsPassingTest_(v15, v29, v67, v30, v31);
      v36 = objc_msgSend_objectsAtIndexes_(v15, v33, v32, v34, v35);
      v62 = v32;
      if (objc_msgSend_count(v36, v37, v38, v39, v40) == 1)
      {
        v13 = objc_msgSend_firstObject(v36, v41, v42, v43, v44);
      }

      else
      {
        objc_msgSend__sortFlexSegmentsShortestToLongest_(self, v41, v36, v43, v44);
        v65 = 0u;
        v66 = 0u;
        v63 = 0u;
        v45 = v64 = 0u;
        v13 = 0;
        v51 = objc_msgSend_countByEnumeratingWithState_objects_count_(v45, v46, &v63, v70, 16);
        if (v51)
        {
          v52 = *v64;
          while (2)
          {
            v53 = 0;
            v54 = v13;
            do
            {
              if (*v64 != v52)
              {
                objc_enumerationMutation(v45);
              }

              v55 = *(*(&v63 + 1) + 8 * v53);
              if (objc_msgSend_sampleCount(v55, v47, v48, v49, v50) > a4)
              {
                v13 = v54;
                goto LABEL_19;
              }

              v13 = v55;

              ++v53;
              v54 = v13;
            }

            while (v51 != v53);
            v51 = objc_msgSend_countByEnumeratingWithState_objects_count_(v45, v47, &v63, v70, 16);
            if (v51)
            {
              continue;
            }

            break;
          }
        }

LABEL_19:
      }

      _Block_object_dispose(v68, 8);
      v28 = objc_msgSend_sampleCount(v13, v56, v57, v58, v59);
    }

    v14 = v28;
  }

  v60 = *MEMORY[0x277D85DE8];
  return v14;
}

- (int64_t)_minimumPermittedIntroAndOutroDuration
{
  v45 = *MEMORY[0x277D85DE8];
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  obj = objc_msgSend__shortestSegmentsForType_(self, a2, 1, v2, v3);
  v34 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v4, &v39, v44, 16);
  if (v34)
  {
    v32 = *v40;
    v8 = -1;
    do
    {
      for (i = 0; i != v34; ++i)
      {
        if (*v40 != v32)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v39 + 1) + 8 * i);
        v35 = 0u;
        v36 = 0u;
        v37 = 0u;
        v38 = 0u;
        v11 = objc_msgSend__shortestSegmentsForType_(self, v5, 4, v6, v7);
        v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v12, &v35, v43, 16);
        if (v13)
        {
          v15 = v13;
          v16 = *v36;
          do
          {
            for (j = 0; j != v15; ++j)
            {
              if (*v36 != v16)
              {
                objc_enumerationMutation(v11);
              }

              v18 = *(*(&v35 + 1) + 8 * j);
              if (objc_msgSend_canTransitionFromSegment_toSegment_fromBarIndex_checkIfPrevented_(FlexSegment, v14, v10, v18, 0, 1))
              {
                v22 = objc_msgSend_sampleCount(v10, v14, v19, v20, v21);
                v27 = objc_msgSend_sampleCount(v18, v23, v24, v25, v26);
                if (v27 + v22 >= v8)
                {
                  v28 = v8;
                }

                else
                {
                  v28 = v27 + v22;
                }

                if (v8 == -1)
                {
                  v8 = v27 + v22;
                }

                else
                {
                  v8 = v28;
                }
              }
            }

            v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v14, &v35, v43, 16);
          }

          while (v15);
        }
      }

      v34 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v5, &v39, v44, 16);
    }

    while (v34);
  }

  else
  {
    v8 = -1;
  }

  v29 = *MEMORY[0x277D85DE8];
  return v8;
}

+ (id)numberToString:(int64_t)a3
{
  if (qword_28151B380 != -1)
  {
    sub_24B80E55C();
  }

  if (a3 > 0x63)
  {
    objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], a2, @"%ld", v3, v4, a3);
  }

  else
  {
    objc_msgSend_objectAtIndexedSubscript_(qword_28151B378, a2, a3, v3, v4);
  }
  v6 = ;

  return v6;
}

- (id)_naturalDurationAssemblyList
{
  v61 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  objc_msgSend__segmentsforType_(self, v4, 2, v5, v6);
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  obj = v59 = 0u;
  v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v7, &v56, v60, 16);
  if (v8)
  {
    v10 = v8;
    v11 = *v57;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v57 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v56 + 1) + 8 * i);
        v14 = objc_alloc_init(FlexSegmentAssemblyInfo);
        objc_msgSend_setSegment_(v14, v15, v13, v16, v17);
        v22 = objc_msgSend_assetProvider(self, v18, v19, v20, v21);
        v26 = objc_msgSend_urlToAudioForSegment_(v22, v23, v13, v24, v25);
        objc_msgSend_setUrl_(v14, v27, v26, v28, v29);

        v34 = objc_msgSend_sampleCount(v13, v30, v31, v32, v33);
        objc_msgSend_setDuration_(v14, v35, v34, v36, v37);
        v42 = objc_msgSend_bars(v13, v38, v39, v40, v41);
        objc_msgSend_setBarsUsed_(v14, v43, v42, v44, v45);
        objc_msgSend_addObject_(v3, v46, v14, v47, v48);
      }

      v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v49, &v56, v60, 16);
    }

    while (v10);
  }

  if (objc_msgSend__updateTransitionBodySegmentsForAssemblyList_usingNewSegment_indexOfNewTransitionSegment_(self, v9, v3, 0, 0))
  {
    memset(&v55, 0, sizeof(v55));
    CMTimeMakeWithSeconds(&v55, 30.0, 48000);
    if (objc_msgSend__addOutroSegmentsToAssemblyList_forDuration_allowTrim_testingContext_(self, v50, v3, v55.value, 0, 0))
    {
      objc_msgSend__addIntroSegmentsToAssemblyList_forDuration_testingContext_(self, v51, v3, v55.value, 0);
    }
  }

  v52 = *MEMORY[0x277D85DE8];

  return v3;
}

- (void)_sequenceBodySegmentList:(id)a3 forIndexes:(id)a4
{
  v407 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v344 = a4;
  if (objc_msgSend_count(v6, v7, v8, v9, v10) >= 2)
  {
    v343 = objc_msgSend__highestIndexForSegmentType_(self, v11, 2, v12, v13);
    v21 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], v14, v15, v16, v17);
    v22 = 0;
    v345 = v6;
    v350 = v21;
    while (1)
    {
      v23 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x277CCABB0], v18, v22, v19, v20);
      v27 = objc_msgSend_containsObject_(v344, v24, v23, v25, v26);

      if ((v27 & 1) == 0)
      {
        v111 = v22;
        v364 = objc_msgSend_numberToString_(FlexSong, v28, v22, v30, v31);
        v355 = objc_msgSend_array(MEMORY[0x277CBEB18], v112, v113, v114, v115);
        v396 = 0u;
        v397 = 0u;
        v398 = 0u;
        v399 = 0u;
        v116 = v6;
        v118 = objc_msgSend_countByEnumeratingWithState_objects_count_(v116, v117, &v396, v406, 16);
        if (v118)
        {
          v123 = v118;
          LOBYTE(isEqualToString) = 0;
          v125 = *v397;
          do
          {
            v126 = 0;
            v127 = isEqualToString;
            do
            {
              if (*v397 != v125)
              {
                objc_enumerationMutation(v116);
              }

              v128 = *(*(&v396 + 1) + 8 * v126);
              v129 = objc_msgSend_segment(v128, v119, v120, v121, v122);
              v134 = objc_msgSend_nameIndex(v129, v130, v131, v132, v133);
              isEqualToString = objc_msgSend_isEqualToString_(v134, v135, v364, v136, v137);

              if (isEqualToString)
              {
                objc_msgSend_addObject_(v355, v119, v128, v121, v122);
                v21 = v350;
              }

              else
              {
                v21 = v350;
                if (v127)
                {
                  goto LABEL_37;
                }
              }

              ++v126;
              v127 = isEqualToString;
            }

            while (v123 != v126);
            v123 = objc_msgSend_countByEnumeratingWithState_objects_count_(v116, v119, &v396, v406, 16);
          }

          while (v123);
        }

LABEL_37:

        if (objc_msgSend_count(v355, v138, v139, v140, v141))
        {
          objc_msgSend_setObject_forKey_(v21, v142, v355, v364, v143);
        }

        v6 = v345;
        v144 = v343;
        v145 = v111;
        goto LABEL_94;
      }

      v356 = v22;
      v364 = objc_msgSend_array(MEMORY[0x277CBEB18], v28, v29, v30, v31);
      v355 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], v32, v33, v34, v35);
      v392 = 0u;
      v393 = 0u;
      v394 = 0u;
      v395 = 0u;
      v36 = v6;
      v38 = objc_msgSend_countByEnumeratingWithState_objects_count_(v36, v37, &v392, v405, 16);
      if (v38)
      {
        v43 = v38;
        v44 = *v393;
        do
        {
          for (i = 0; i != v43; ++i)
          {
            if (*v393 != v44)
            {
              objc_enumerationMutation(v36);
            }

            v46 = *(*(&v392 + 1) + 8 * i);
            v47 = objc_msgSend_segment(v46, v39, v40, v41, v42);
            v52 = objc_msgSend_nameIndex(v47, v48, v49, v50, v51);

            v56 = objc_msgSend_numberToString_(FlexSong, v53, v356, v54, v55);
            if (objc_msgSend_isEqualToString_(v52, v57, v56, v58, v59))
            {
              objc_msgSend_addObject_(v364, v60, v46, v61, v62);
              v67 = objc_msgSend_segment(v46, v63, v64, v65, v66);
              v72 = objc_msgSend_nameSuffix(v67, v68, v69, v70, v71);

              v76 = objc_msgSend_objectForKeyedSubscript_(v355, v73, v72, v74, v75);

              if (v76)
              {
                v80 = objc_msgSend_objectForKeyedSubscript_(v355, v77, v72, v78, v79);
                v81 = MEMORY[0x277CCABB0];
                v86 = objc_msgSend_intValue(v80, v82, v83, v84, v85);
                v90 = objc_msgSend_numberWithInt_(v81, v87, (v86 + 1), v88, v89);
              }

              else
              {
                v90 = &unk_285EA87F0;
              }

              objc_msgSend_setObject_forKey_(v355, v77, v90, v72, v79);
            }
          }

          v43 = objc_msgSend_countByEnumeratingWithState_objects_count_(v36, v39, &v392, v405, 16);
        }

        while (v43);
      }

      v390 = 0u;
      v391 = 0u;
      v388 = 0u;
      v389 = 0u;
      v95 = objc_msgSend_allKeys(v355, v91, v92, v93, v94);
      v97 = objc_msgSend_countByEnumeratingWithState_objects_count_(v95, v96, &v388, v404, 16);
      if (v97)
      {
        v101 = v97;
        v357 = 0;
        v102 = 0;
        v103 = *v389;
        do
        {
          for (j = 0; j != v101; ++j)
          {
            if (*v389 != v103)
            {
              objc_enumerationMutation(v95);
            }

            v105 = *(*(&v388 + 1) + 8 * j);
            if (objc_msgSend_localizedCaseInsensitiveContainsString_(v105, v98, @"to", v99, v100))
            {
              v106 = v105;

              v102 = 1;
              v357 = v106;
            }
          }

          v101 = objc_msgSend_countByEnumeratingWithState_objects_count_(v95, v98, &v388, v404, 16);
        }

        while (v101);

        v110 = v357;
        if (v357)
        {
          objc_msgSend_removeObjectForKey_(v355, v107, v357, v108, v109);
          goto LABEL_42;
        }
      }

      else
      {

        v102 = 0;
      }

      v357 = 0;
LABEL_42:
      v346 = objc_msgSend_array(MEMORY[0x277CBEB18], v107, v110, v108, v109);
      v347 = v102;
      if (v102)
      {
        v387[0] = MEMORY[0x277D85DD0];
        v387[1] = 3221225472;
        v387[2] = sub_24B80557C;
        v387[3] = &unk_27900F400;
        v387[4] = v356;
        v150 = objc_msgSend_indexesOfObjectsPassingTest_(v36, v146, v387, v148, v149);
        v154 = objc_msgSend_objectsAtIndexes_(v36, v151, v150, v152, v153);
        objc_msgSend_addObjectsFromArray_(v346, v155, v154, v156, v157);

        v385 = 0u;
        v386 = 0u;
        v383 = 0u;
        v384 = 0u;
        v158 = v346;
        v160 = objc_msgSend_countByEnumeratingWithState_objects_count_(v158, v159, &v383, v403, 16);
        if (v160)
        {
          v164 = v160;
          v165 = *v384;
          do
          {
            for (k = 0; k != v164; ++k)
            {
              if (*v384 != v165)
              {
                objc_enumerationMutation(v158);
              }

              objc_msgSend_removeObject_(v364, v161, *(*(&v383 + 1) + 8 * k), v162, v163);
            }

            v164 = objc_msgSend_countByEnumeratingWithState_objects_count_(v158, v161, &v383, v403, 16);
          }

          while (v164);
        }
      }

      v359 = objc_msgSend_array(MEMORY[0x277CBEB18], v146, v147, v148, v149);
      v351 = objc_msgSend_count(v364, v167, v168, v169, v170);
      v365 = 0;
      v175 = 1;
      do
      {
        if (!objc_msgSend_count(v364, v171, v172, v173, v174) || v365 >= v351)
        {
          break;
        }

        v353 = v175;
        v177 = objc_msgSend_allKeys(v355, v171, v176, v173, v174);
        v181 = objc_msgSend_sortedArrayUsingSelector_(v177, v178, sel_localizedCaseInsensitiveCompare_, v179, v180);

        v381 = 0u;
        v382 = 0u;
        v379 = 0u;
        v380 = 0u;
        obj = v181;
        v362 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v182, &v379, v402, 16);
        if (v362)
        {
          v360 = *v380;
          do
          {
            for (m = 0; m != v362; ++m)
            {
              if (*v380 != v360)
              {
                objc_enumerationMutation(obj);
              }

              v184 = *(*(&v379 + 1) + 8 * m);
              v375 = 0u;
              v376 = 0u;
              v377 = 0u;
              v378 = 0u;
              v185 = v364;
              v187 = objc_msgSend_countByEnumeratingWithState_objects_count_(v185, v186, &v375, v401, 16);
              if (!v187)
              {
LABEL_67:
                v206 = 0;
                goto LABEL_69;
              }

              v192 = v187;
              v193 = *v376;
LABEL_61:
              v194 = 0;
              while (1)
              {
                if (*v376 != v193)
                {
                  objc_enumerationMutation(v185);
                }

                v195 = *(*(&v375 + 1) + 8 * v194);
                v196 = objc_msgSend_segment(v195, v188, v189, v190, v191);
                v201 = objc_msgSend_nameSuffix(v196, v197, v198, v199, v200);
                v205 = objc_msgSend_isEqualToString_(v201, v202, v184, v203, v204);

                if (v205)
                {
                  break;
                }

                if (v192 == ++v194)
                {
                  v192 = objc_msgSend_countByEnumeratingWithState_objects_count_(v185, v188, &v375, v401, 16);
                  if (!v192)
                  {
                    goto LABEL_67;
                  }

                  goto LABEL_61;
                }
              }

              objc_msgSend_addObject_(v359, v188, v195, v190, v191);
              v206 = v195;
              ++v365;
LABEL_69:

              objc_msgSend_removeObject_(v185, v207, v206, v208, v209);
            }

            v362 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v210, &v379, v402, 16);
          }

          while (v362);
        }

        v175 = v353 + 1;
      }

      while (v353 != 1000);
      v6 = v345;
      v211 = v346;
      v21 = v350;
      v212 = 0x27900E000;
      if ((v347 & (v346 != 0)) != 1)
      {
        goto LABEL_93;
      }

      v373 = 0u;
      v374 = 0u;
      v371 = 0u;
      v372 = 0u;
      v213 = v346;
      v366 = objc_msgSend_countByEnumeratingWithState_objects_count_(v213, v214, &v371, v400, 16);
      if (!v366)
      {
        goto LABEL_92;
      }

      v219 = *v372;
      v348 = *v372;
      v349 = v213;
      do
      {
        for (n = 0; n != v366; ++n)
        {
          if (*v372 != v219)
          {
            objc_enumerationMutation(v213);
          }

          v221 = *(*(&v371 + 1) + 8 * n);
          v222 = objc_msgSend_segment(v221, v215, v216, v217, v218);
          v227 = objc_msgSend_nameSuffix(v222, v223, v224, v225, v226);

          v232 = objc_msgSend_segment(v221, v228, v229, v230, v231);
          v237 = objc_msgSend_nameIndex(v232, v233, v234, v235, v236);

          v242 = objc_msgSend_lowercaseString(v227, v238, v239, v240, v241);
          v247 = objc_msgSend_lowercaseString(@"to", v243, v244, v245, v246);
          if (objc_msgSend_hasPrefix_(v242, v248, v247, v249, v250))
          {
            v255 = v237;
            v256 = objc_msgSend_count(v213, v251, v252, v253, v254);

            v261 = v256 == 1;
            v237 = v255;
            if (v261)
            {
              objc_msgSend_addObject_(v359, v257, v221, v259, v260);
              goto LABEL_89;
            }
          }

          else
          {
          }

          v212 = 0x27900E000;
          if (objc_msgSend_length(v227, v257, v258, v259, v260) < 2)
          {
            goto LABEL_90;
          }

          v265 = objc_msgSend_substringToIndex_(v227, v262, 1, v263, v264);
          v269 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v266, @"%@%@", v267, v268, v237, v265);
          v367[0] = MEMORY[0x277D85DD0];
          v367[1] = 3221225472;
          v367[2] = sub_24B805624;
          v367[3] = &unk_27900F428;
          v270 = v359;
          v368 = v270;
          v363 = v269;
          v369 = v363;
          v370 = v221;
          v274 = objc_msgSend_indexOfObjectPassingTest_(v270, v271, v367, v272, v273);
          if (v274 < objc_msgSend_count(v270, v275, v276, v277, v278) - 1)
          {
            v361 = v237;
            v354 = objc_msgSend_objectAtIndexedSubscript_(v270, v279, v274 + 1, v280, v281);
            v286 = objc_msgSend_segment(v354, v282, v283, v284, v285);
            v290 = objc_msgSend_componentsSeparatedByString_(v227, v287, @"to", v288, v289);
            v352 = objc_msgSend_lastObject(v290, v291, v292, v293, v294);

            v299 = objc_msgSend_name(v286, v295, v296, v297, v298);
            v304 = objc_msgSend_namePrefix(v286, v300, v301, v302, v303);
            v307 = objc_msgSend_stringByReplacingOccurrencesOfString_withString_(v299, v305, v304, &stru_285EA09B0, v306);

            v312 = objc_msgSend_nameStem(v286, v308, v309, v310, v311);
            v315 = objc_msgSend_stringByReplacingOccurrencesOfString_withString_(v307, v313, v312, &stru_285EA09B0, v314);

            if (objc_msgSend_isEqualToString_(v352, v316, v315, v317, v318))
            {
              objc_msgSend_insertObject_atIndex_(v270, v319, v221, v274 + 1, v320);
            }

            v213 = v349;
            v21 = v350;
            v219 = v348;
            v237 = v361;
          }

LABEL_89:
          v212 = 0x27900E000uLL;
LABEL_90:
        }

        v366 = objc_msgSend_countByEnumeratingWithState_objects_count_(v213, v215, &v371, v400, 16);
      }

      while (v366);
LABEL_92:

      v6 = v345;
      v211 = v346;
LABEL_93:
      v145 = v356;
      v321 = objc_msgSend_numberToString_(*(v212 + 1752), v171, v356, v173, v174);
      objc_msgSend_setObject_forKey_(v21, v322, v359, v321, v323);

      v144 = v343;
LABEL_94:

      v22 = v145 + 1;
      if (v145 + 1 > v144)
      {
        v328 = objc_msgSend_array(MEMORY[0x277CBEB18], v18, v324, v19, v20);
        v329 = -1;
        do
        {
          v330 = objc_msgSend_numberToString_(FlexSong, v325, ++v329, v326, v327);
          v334 = objc_msgSend_objectForKeyedSubscript_(v21, v331, v330, v332, v333);
          objc_msgSend_addObjectsFromArray_(v328, v335, v334, v336, v337);
        }

        while (v329 < v343);
        v6 = v345;
        objc_msgSend_removeAllObjects(v345, v325, v338, v326, v327);
        objc_msgSend_addObjectsFromArray_(v345, v339, v328, v340, v341);

        break;
      }
    }
  }

  v342 = *MEMORY[0x277D85DE8];
}

- (BOOL)_addSegment:(id)a3 withDuration:(int64_t)a4 toAssemblyList:(id)a5 timeRemaining:(int64_t)a6 reusedSegment:(id *)a7 indexofNewSegment:(int64_t *)a8
{
  v195 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a5;
  v18 = v13;
  if (v12 && a4 && v13)
  {
    v19 = objc_msgSend_assetProvider(self, v14, v15, v16, v17);
    v23 = objc_msgSend_urlToAudioForSegment_(v19, v20, v12, v21, v22);

    if (!v23)
    {
      v94 = 0;
LABEL_47:

      goto LABEL_48;
    }

    v181 = a7;
    v28 = 0;
    v29 = 1;
    do
    {
      v30 = v29;
      if (v28 > a4)
      {
        break;
      }

      if (objc_msgSend_bars(v12, v24, v25, v26, v27) <= v29)
      {
        break;
      }

      v28 += objc_msgSend_barDurationForBarIndex_(v12, v24, v30 - 1, v26, v27);
      v29 = v30 + 1;
    }

    while (v28 < a4);
    if (objc_msgSend_sliceable(v12, v24, v25, v26, v27))
    {
      v179 = v23;
      v180 = a8;
      v191[0] = MEMORY[0x277D85DD0];
      v191[1] = 3221225472;
      v191[2] = sub_24B805E38;
      v191[3] = &unk_27900F450;
      v192 = v12;
      v34 = objc_msgSend_indexesOfObjectsPassingTest_(v18, v31, v191, v32, v33);
      objc_msgSend_objectsAtIndexes_(v18, v35, v34, v36, v37);
      v187 = 0u;
      v188 = 0u;
      v189 = 0u;
      obj = v190 = 0u;
      v39 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v38, &v187, v194, 16);
      if (v39)
      {
        v44 = v39;
        v176 = v34;
        v177 = a4;
        v178 = v12;
        v186 = *v188;
        v182 = v18;
        while (2)
        {
          for (i = 0; i != v44; ++i)
          {
            if (*v188 != v186)
            {
              objc_enumerationMutation(obj);
            }

            v46 = *(*(&v187 + 1) + 8 * i);
            v47 = objc_msgSend_barsUsed(v46, v40, v41, v42, v43, v176, v177);
            v52 = objc_msgSend_segment(v46, v48, v49, v50, v51);
            v57 = objc_msgSend_bars(v52, v53, v54, v55, v56);

            v62 = objc_msgSend_barsUsed(v46, v58, v59, v60, v61);
            v67 = objc_msgSend_segment(v46, v63, v64, v65, v66);
            v72 = objc_msgSend_bars(v67, v68, v69, v70, v71);

            if (v47 != v57 && v62 + v30 <= v72)
            {
              if (objc_msgSend_barsUsed(v46, v40, v41, v42, v43) <= -v30)
              {
                v79 = 0;
              }

              else
              {
                v78 = 0;
                v79 = 0;
                do
                {
                  v80 = objc_msgSend_segment(v46, v74, v75, v76, v77);
                  v79 += objc_msgSend_barDurationForBarIndex_(v80, v81, v78, v82, v83);

                  ++v78;
                }

                while (objc_msgSend_barsUsed(v46, v84, v85, v86, v87) + v30 > v78);
              }

              objc_msgSend__sampleDurationOfClipPlaylist_(self, v74, v182, v76, v77);
              if (v79 - objc_msgSend_duration(v46, v88, v89, v90, v91) <= a6)
              {
                v111 = objc_msgSend_barsUsed(v46, v40, v41, v42, v43);
                objc_msgSend_setBarsUsed_(v46, v112, v111 + v30, v113, v114);
                v93 = v46;
                objc_msgSend_setDuration_(v93, v115, v79, v116, v117);
                if (v181)
                {
                  *v181 = objc_msgSend_segment(v93, v118, v119, v120, v121);
                }

                v18 = v182;
                a8 = v180;
                *v180 = objc_msgSend_indexOfObject_(v182, v118, v93, v120, v121);
                v92 = 1;
                v12 = v178;
                goto LABEL_38;
              }
            }
          }

          v44 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v40, &v187, v194, 16);
          if (v44)
          {
            continue;
          }

          break;
        }

        v92 = 0;
        v93 = 0;
        v12 = v178;
        v18 = v182;
        a8 = v180;
LABEL_38:
        v23 = v179;
        v34 = v176;
        a4 = v177;
      }

      else
      {
        v92 = 0;
        v93 = 0;
      }

      if (v92)
      {
        goto LABEL_45;
      }
    }

    else
    {
      v93 = 0;
    }

    v122 = v93;
    v93 = objc_alloc_init(FlexSegmentAssemblyInfo);

    objc_msgSend_setSegment_(v93, v123, v12, v124, v125);
    objc_msgSend_setUrl_(v93, v126, v23, v127, v128);
    objc_msgSend_setDuration_(v93, v129, a4, v130, v131);
    objc_msgSend_setBarsUsed_(v93, v132, v30, v133, v134);
    if (objc_msgSend_type(v12, v135, v136, v137, v138) == 2 || objc_msgSend_type(v12, v139, v140, v141, v142) == 3)
    {
      objc_msgSend_addObject_(v18, v139, v93, v141, v142);
      v144 = MEMORY[0x277CCABB0];
      v149 = objc_msgSend_nameIndex(v12, v145, v146, v147, v148);
      v154 = objc_msgSend_integerValue(v149, v150, v151, v152, v153);
      v158 = objc_msgSend_numberWithInteger_(v144, v155, v154, v156, v157);
      v193 = v158;
      v161 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v159, &v193, 1, v160);
      objc_msgSend__sequenceBodySegmentList_forIndexes_(self, v162, v18, v161, v163);
    }

    else if (objc_msgSend_type(v12, v139, v143, v141, v142) == 1)
    {
      objc_msgSend_insertObject_atIndex_(v18, v169, v93, 0, v172);
    }

    else
    {
      if (objc_msgSend_type(v12, v169, v170, v171, v172) != 4)
      {
        v94 = 0;
        goto LABEL_46;
      }

      objc_msgSend_addObject_(v18, v173, v93, v174, v175);
    }

    *a8 = objc_msgSend_indexOfObject_(v18, v164, v93, v165, v166);
LABEL_45:
    v94 = 1;
LABEL_46:

    goto LABEL_47;
  }

  v94 = 0;
  if (!v12 && a4 && v13)
  {
    v95 = objc_alloc_init(FlexSegmentAssemblyInfo);
    objc_msgSend_setSegment_(v95, v96, 0, v97, v98);
    objc_msgSend_setUrl_(v95, v99, 0, v100, v101);
    objc_msgSend_setDuration_(v95, v102, a4, v103, v104);
    v94 = 1;
    objc_msgSend_setBarsUsed_(v95, v105, 1, v106, v107);
    objc_msgSend_addObject_(v18, v108, v95, v109, v110);
  }

LABEL_48:

  v167 = *MEMORY[0x277D85DE8];
  return v94;
}

- (void)_removeSegmentInfo:(id)a3 fromAssemblyList:(id)a4
{
  if (a3)
  {
    objc_msgSend_removeObject_(a4, a2, a3, a4, v4);
  }
}

- (BOOL)_updateTransitionBodySegmentsForAssemblyList:(id)a3 usingNewSegment:(id)a4 indexOfNewTransitionSegment:(id)a5
{
  v266 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v242 = a5;
  if (!objc_msgSend_count(v8, v10, v11, v12, v13))
  {
    v33 = 1;
    v231 = v242;
    goto LABEL_68;
  }

  v241 = v9;
  v18 = objc_msgSend_set(MEMORY[0x277CBEB58], v14, v15, v16, v17);
  v23 = objc_msgSend_set(MEMORY[0x277CBEB58], v19, v20, v21, v22);
  v32 = objc_msgSend_set(MEMORY[0x277CBEB58], v24, v25, v26, v27);
  v244 = 0;
  v33 = 1;
  v245 = v23;
  v246 = v18;
  do
  {
LABEL_3:
    objc_msgSend_removeAllObjects(v23, v28, v29, v30, v31);
    objc_msgSend_removeAllObjects(v18, v34, v35, v36, v37);
    if (!objc_msgSend_count(v8, v38, v39, v40, v41))
    {
      goto LABEL_27;
    }

    v46 = 0;
    while (1)
    {
      v47 = objc_msgSend_objectAtIndexedSubscript_(v8, v42, v46, v44, v45);
      v48 = (v46 + 1);
      if ((v46 + 1) < objc_msgSend_count(v8, v49, v50, v51, v52))
      {
        break;
      }

      if (v48 != objc_msgSend_count(v8, v53, v54, v55, v56))
      {
        goto LABEL_25;
      }

      v102 = objc_msgSend_segment(v47, v98, v99, v100, v101);
      v107 = objc_msgSend_type(v102, v103, v104, v105, v106);

      if (v107 == 3)
      {
        objc_msgSend_addObject_(v246, v108, v47, v109, v110);
      }

LABEL_22:

      v46 = v48;
      if (v48 >= objc_msgSend_count(v8, v167, v168, v169, v170))
      {
        goto LABEL_26;
      }
    }

    v247 = v46 + 1;
    v57 = objc_msgSend_objectAtIndexedSubscript_(v8, v53, (v46 + 1), v55, v56);
    v62 = objc_msgSend_segment(v47, v58, v59, v60, v61);
    v249 = v57;
    objc_msgSend_segment(v57, v63, v64, v65, v66);
    v68 = v67 = v47;
    v73 = objc_msgSend_name(v68, v69, v70, v71, v72);
    v78 = objc_msgSend_barsUsed(v67, v74, v75, v76, v77);
    v81 = objc_msgSend_transitionToSegmentNamed_fromBarIndex_(v62, v79, v73, v78 - 1, v80);

    v248 = v81;
    v86 = objc_msgSend_transitionSegmentName(v81, v82, v83, v84, v85);

    if (!v86)
    {
      v111 = objc_msgSend_segment(v67, v87, v88, v89, v90);
      v116 = objc_msgSend_type(v111, v112, v113, v114, v115);

      v47 = v67;
      v92 = v249;
      if (v116 != 3)
      {
LABEL_21:

        v48 = v247;
        goto LABEL_22;
      }

      if (v46)
      {
        v46 = objc_msgSend_objectAtIndexedSubscript_(v8, v117, (v46 - 1), v119, v120);
        objc_msgSend_segment(v46, v121, v122, v123, v124);
      }

      else
      {
        objc_msgSend_segment(0, v117, v118, v119, v120);
      }
      v125 = ;
      v130 = objc_msgSend_segment(v249, v126, v127, v128, v129);
      v135 = objc_msgSend_name(v130, v131, v132, v133, v134);
      v140 = objc_msgSend_barsUsed(v46, v136, v137, v138, v139);
      v143 = objc_msgSend_transitionToSegmentNamed_fromBarIndex_(v125, v141, v135, v140 - 1, v142);

      v148 = objc_msgSend_transitionSegmentName(v143, v144, v145, v146, v147);

      v47 = v67;
      if (!v148)
      {
        goto LABEL_18;
      }

      v153 = objc_msgSend_transitionSegmentName(v143, v149, v150, v151, v152);
      v158 = objc_msgSend_segment(v67, v154, v155, v156, v157);
      v163 = objc_msgSend_name(v158, v159, v160, v161, v162);
      isEqualToString = objc_msgSend_isEqualToString_(v153, v164, v163, v165, v166);

      v47 = v67;
      if ((isEqualToString & 1) == 0)
      {
LABEL_18:
        objc_msgSend_addObject_(v246, v149, v47, v151, v152);
      }

      v92 = v249;
LABEL_20:

      goto LABEL_21;
    }

    v91 = objc_msgSend_barsUsed(v67, v87, v88, v89, v90);
    v92 = v249;
    v94 = objc_msgSend__transitionSegmentForSegmentInfo_toSegmentInfo_fromBarIndex_inSegmentList_(self, v93, v67, v249, v91 - 1, v8);
    v47 = v67;
    if (v94)
    {
      v46 = v94;
      objc_msgSend_addObject_(v245, v95, v94, v96, v97);
      goto LABEL_20;
    }

    v33 = 0;
LABEL_25:

LABEL_26:
    v23 = v245;
    v18 = v246;
LABEL_27:
    if (objc_msgSend_count(v23, v42, v43, v44, v45))
    {
      v261 = 0u;
      v262 = 0u;
      v259 = 0u;
      v260 = 0u;
      v175 = v23;
      v177 = objc_msgSend_countByEnumeratingWithState_objects_count_(v175, v176, &v259, v265, 16);
      if (v177)
      {
        v182 = v177;
        v183 = *v260;
        do
        {
          for (i = 0; i != v182; ++i)
          {
            if (*v260 != v183)
            {
              objc_enumerationMutation(v175);
            }

            v185 = objc_msgSend_copy(*(*(&v259 + 1) + 8 * i), v178, v179, v180, v181);
            v258 = 0x7FFFFFFFFFFFFFFFLL;
            v190 = objc_msgSend_sampleCount(v185, v186, v187, v188, v189);
            v192 = objc_msgSend__addSegment_withDuration_toAssemblyList_indexOfNewSegment_(self, v191, v185, v190, v8, &v258);
            v33 = v192;
            if (v192)
            {
              v196 = v258 == 0x7FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v196 = 1;
            }

            if (!v196)
            {
              v200 = objc_msgSend_objectAtIndex_(v8, v193, v258, v194, v195);
              if (v200)
              {
                objc_msgSend_addObject_(v32, v197, v200, v198, v199);
              }
            }
          }

          v182 = objc_msgSend_countByEnumeratingWithState_objects_count_(v175, v178, &v259, v265, 16);
        }

        while (v182);
        v23 = v245;
        v18 = v246;
      }
    }

    if (objc_msgSend_count(v18, v171, v172, v173, v174))
    {
      v256 = 0u;
      v257 = 0u;
      v254 = 0u;
      v255 = 0u;
      v205 = v18;
      v207 = objc_msgSend_countByEnumeratingWithState_objects_count_(v205, v206, &v254, v264, 16);
      if (v207)
      {
        v210 = v207;
        v211 = *v255;
        do
        {
          for (j = 0; j != v210; ++j)
          {
            if (*v255 != v211)
            {
              objc_enumerationMutation(v205);
            }

            v213 = *(*(&v254 + 1) + 8 * j);
            objc_msgSend__removeSegmentInfo_fromAssemblyList_(self, v208, v213, v8, v209);
            if (objc_msgSend_containsObject_(v32, v214, v213, v215, v216))
            {
              objc_msgSend_removeObject_(v32, v208, v213, v217, v209);
            }
          }

          v210 = objc_msgSend_countByEnumeratingWithState_objects_count_(v205, v208, &v254, v264, 16);
        }

        while (v210);
      }

      v18 = v246;
    }

    if (v244 == 10)
    {
      break;
    }

    ++v244;
    v218 = objc_msgSend_anyObject(v23, v201, v202, v203, v204);
    if (v218)
    {

      goto LABEL_3;
    }

    v223 = objc_msgSend_anyObject(v18, v219, v220, v221, v222);
  }

  while (v223);
  v224 = v18;
  v252 = 0u;
  v253 = 0u;
  v250 = 0u;
  v251 = 0u;
  v225 = v32;
  v227 = objc_msgSend_countByEnumeratingWithState_objects_count_(v225, v226, &v250, v263, 16);
  v9 = v241;
  v231 = v242;
  if (v227)
  {
    v232 = v227;
    v233 = *v251;
    do
    {
      for (k = 0; k != v232; ++k)
      {
        if (*v251 != v233)
        {
          objc_enumerationMutation(v225);
        }

        v235 = objc_msgSend_indexOfObject_(v8, v228, *(*(&v250 + 1) + 8 * k), v229, v230);
        objc_msgSend_addIndex_(v242, v236, v235, v237, v238);
      }

      v232 = objc_msgSend_countByEnumeratingWithState_objects_count_(v225, v228, &v250, v263, 16);
    }

    while (v232);
  }

LABEL_68:
  v239 = *MEMORY[0x277D85DE8];
  return v33 & 1;
}

- (BOOL)_removeUnpermittedTransitionsInAssemblyList:(id)a3 final:(BOOL)a4 testingContext:(id)a5 removedIndexes:(id)a6 conflictList:(id)a7
{
  v438 = a4;
  v472 = *MEMORY[0x277D85DE8];
  v11 = a3;
  v440 = a5;
  v12 = a6;
  v439 = a7;
  v21 = objc_msgSend_array(MEMORY[0x277CBEB18], v13, v14, v15, v16);
  v22 = 0;
  v23 = 0;
  v459 = v12;
  v442 = v21;
  do
  {
    v441 = v23;
    if (v23)
    {
      break;
    }

    v443 = v22;
    v24 = objc_msgSend_count(v11, v17, v18, v19, v20);
    if (!v24)
    {
      goto LABEL_79;
    }

    v29 = v24;
    v30 = 0;
    v450 = v24 - 1;
    v31 = 1;
    v444 = v24;
    while (1)
    {
      v32 = objc_msgSend_objectAtIndexedSubscript_(v11, v25, v30, v27, v28);
      v37 = objc_msgSend_segment(v32, v33, v34, v35, v36);
      v42 = objc_msgSend_type(v37, v38, v39, v40, v41);

      if (v42 != 3)
      {
        break;
      }

LABEL_37:

      ++v30;
      ++v31;
      if (v30 == v29)
      {
        goto LABEL_79;
      }
    }

    v452 = v30;
    v454 = v31;
    if (v30 >= v450)
    {
      v55 = 0;
      v447 = 0;
      if (v30 != v450)
      {
LABEL_36:

        v31 = v454;
        goto LABEL_37;
      }

LABEL_24:
      v460 = v32;
      v108 = objc_msgSend__segmentsforType_(self, v43, 4, v44, v45);
      v466 = 0u;
      v467 = 0u;
      v468 = 0u;
      v469 = 0u;
      obja = v108;
      v110 = objc_msgSend_countByEnumeratingWithState_objects_count_(obja, v109, &v466, v471, 16);
      if (v110)
      {
        v115 = v110;
        v116 = *v467;
LABEL_26:
        v117 = 0;
        while (1)
        {
          if (*v467 != v116)
          {
            objc_enumerationMutation(obja);
          }

          v118 = *(*(&v466 + 1) + 8 * v117);
          v119 = objc_msgSend_segment(v460, v111, v112, v113, v114);
          v124 = objc_msgSend_name(v118, v120, v121, v122, v123);
          v129 = objc_msgSend_barsUsed(v460, v125, v126, v127, v128);
          v132 = objc_msgSend_transitionToSegmentNamed_fromBarIndex_(v119, v130, v124, v129 - 1, v131);

          v12 = v459;
          if (!v132)
          {
            break;
          }

          v137 = objc_msgSend_prevented(v132, v133, v134, v135, v136);

          if (!v137)
          {
            break;
          }

          if (v115 == ++v117)
          {
            v115 = objc_msgSend_countByEnumeratingWithState_objects_count_(obja, v111, &v466, v471, 16);
            if (v115)
            {
              goto LABEL_26;
            }

            v445 = v460;
            v272 = objc_msgSend_removedConflicts(v440, v268, v269, v270, v271);
            v273 = MEMORY[0x277CCACA8];
            v278 = objc_msgSend_segment(v445, v274, v275, v276, v277);
            v283 = objc_msgSend_name(v278, v279, v280, v281, v282);
            v287 = objc_msgSend_stringWithFormat_(v273, v284, @"supply an outro for %@", v285, v286, v283);
            objc_msgSend_addObject_(v272, v288, v287, v289, v290);

            v291 = MEMORY[0x277CCACA8];
            v32 = v460;
            v12 = v459;
            v296 = objc_msgSend_segment(v445, v292, v293, v294, v295);
            v301 = objc_msgSend_name(v296, v297, v298, v299, v300);
            v305 = objc_msgSend_stringWithFormat_(v291, v302, @"supply an outro for %@", v303, v304, v301);
            objc_msgSend_addObject_(v439, v306, v305, v307, v308);

            v309 = v445;
            if (v445)
            {
              goto LABEL_77;
            }

            goto LABEL_40;
          }
        }
      }

      v32 = v460;
      v29 = v444;
      v30 = v452;
      goto LABEL_36;
    }

    v46 = objc_msgSend_objectAtIndexedSubscript_(v11, v43, v30 + 1, v44, v45);
    obj = objc_msgSend_segment(v46, v47, v48, v49, v50);
    v54 = v454;
    while (1)
    {
      v55 = objc_msgSend_objectAtIndexedSubscript_(v11, v51, v54, v52, v53);
      v60 = objc_msgSend_segment(v55, v56, v57, v58, v59);
      v65 = objc_msgSend_type(v60, v61, v62, v63, v64);

      if (v65 == 2)
      {
        break;
      }

      if (v29 == ++v54)
      {
        v55 = v46;
        goto LABEL_14;
      }
    }

    v71 = objc_msgSend_segment(v55, v66, v67, v68, v69);

    obj = v71;
LABEL_14:
    v72 = objc_msgSend_segment(v32, v51, v70, v52, v53);
    v77 = objc_msgSend_sliceable(v72, v73, v74, v75, v76);

    if (v77)
    {
      v82 = objc_msgSend_barsUsed(v32, v78, v79, v80, v81) - 1;
    }

    else
    {
      v82 = 0;
    }

    v83 = objc_msgSend_lastObject(v11, v78, v79, v80, v81);

    v448 = objc_msgSend_type(obj, v84, v85, v86, v87);
    v92 = objc_msgSend_segment(v32, v88, v89, v90, v91);
    v97 = objc_msgSend_name(obj, v93, v94, v95, v96);
    v100 = objc_msgSend_transitionToSegmentNamed_fromBarIndex_(v92, v98, v97, v82, v99);

    if (v448 != 3 || v55 != v83)
    {
      v105 = objc_msgSend_prevented(v100, v101, v102, v103, v104);
      v106 = v105;
      if (v105)
      {
        v107 = v55;
      }

      else
      {
        v107 = 0;
      }

      v447 = v107;

      v30 = v452;
      if (v452 != v450 || (v106 & 1) != 0)
      {
        if (v106)
        {
          goto LABEL_40;
        }

        goto LABEL_36;
      }

      goto LABEL_24;
    }

    v447 = v55;
LABEL_40:
    v138 = v447;
    v142 = objc_msgSend__segmentsforType_(self, v139, 2, v140, v141);
    v146 = objc_msgSend_indexesOfObjectsPassingTest_(v142, v143, &unk_285EA0590, v144, v145);
    v150 = objc_msgSend_objectsAtIndexes_(v142, v147, v146, v148, v149);
    v453 = v146;
    v455 = v142;
    v451 = v150;
    if (objc_msgSend_count(v150, v151, v152, v153, v154) == 1)
    {
      v159 = objc_msgSend_firstObject(v150, v155, v156, v157, v158);
      v164 = objc_msgSend_name(v159, v160, v161, v162, v163);
      v169 = objc_msgSend_segment(v32, v165, v166, v167, v168);
      objc_msgSend_name(v169, v170, v171, v172, v173);
      v175 = v174 = v32;
      isEqualToString = objc_msgSend_isEqualToString_(v164, v176, v175, v177, v178);

      v32 = v174;
      v12 = v459;
    }

    else
    {
      isEqualToString = 0;
    }

    objb = v138;
    v461 = v32;
    v179 = objc_msgSend_segment(v32, v155, v156, v157, v158);
    v184 = objc_msgSend_name(v179, v180, v181, v182, v183);
    v189 = objc_msgSend_segment(v138, v185, v186, v187, v188);
    v194 = objc_msgSend_name(v189, v190, v191, v192, v193);
    v198 = objc_msgSend_isEqualToString_(v184, v195, v194, v196, v197);

    v199 = v138;
    v32 = v461;
    if (!v198)
    {
      goto LABEL_70;
    }

    v204 = objc_msgSend_segment(v461, v200, v201, v202, v203);
    if (objc_msgSend_sliceable(v204, v205, v206, v207, v208))
    {
      v213 = objc_msgSend_barsUsed(v461, v209, v210, v211, v212);
      v218 = objc_msgSend_segment(v461, v214, v215, v216, v217);
      v223 = v213 != objc_msgSend_bars(v218, v219, v220, v221, v222);
    }

    else
    {
      v223 = 0;
    }

    v228 = objc_msgSend_segment(v199, v224, v225, v226, v227);
    if (objc_msgSend_sliceable(v228, v229, v230, v231, v232))
    {
      v237 = objc_msgSend_barsUsed(v199, v233, v234, v235, v236);
      v242 = objc_msgSend_segment(v199, v238, v239, v240, v241);
      v247 = objc_msgSend_bars(v242, v243, v244, v245, v246);

      v248 = v237 != v247;
      if (v237 != v247 && v223)
      {
        v250 = objc_msgSend_barsUsed(v461, v200, v201, v202, v203);
        v255 = objc_msgSend_barsUsed(v199, v251, v252, v253, v254);
        v260 = v461;
        v261 = v250 < v255;
        v32 = v461;
        v12 = v459;
        if (v261)
        {
          goto LABEL_69;
        }

        v262 = objc_msgSend_barsUsed(v461, v256, v257, v258, v259);
        v267 = objc_msgSend_barsUsed(v199, v263, v264, v265, v266);
        v260 = v199;
        v261 = v262 <= v267;
        v32 = v461;
        if (!v261)
        {
          goto LABEL_69;
        }

        goto LABEL_70;
      }
    }

    else
    {

      v248 = 0;
    }

    v32 = v461;
    if (!v223 && !v248)
    {
      goto LABEL_70;
    }

    if (isEqualToString)
    {
      v260 = v223 ? v199 : v461;
    }

    else
    {
      if (v223)
      {
        v260 = v461;
      }

      else
      {
        v260 = v199;
      }

      if (!v438)
      {
        v260 = v461;
      }
    }

LABEL_69:
    v309 = v260;
    if (!v309)
    {
LABEL_70:
      v313 = objc_msgSend_segment(v32, v200, v201, v202, v203);
      v318 = objc_msgSend_priority(v313, v314, v315, v316, v317);
      v323 = objc_msgSend_segment(v199, v319, v320, v321, v322);
      v261 = v318 <= objc_msgSend_priority(v323, v324, v325, v326, v327);
      v32 = v461;
      if (v261)
      {
        v328 = v461;
      }

      else
      {
        v328 = v199;
      }

      v309 = v328;
    }

    v329 = objc_msgSend_segment(v199, v200, v201, v202, v203);
    v334 = objc_msgSend_type(v329, v330, v331, v332, v333);

    if (v334 != 3)
    {
      v339 = objc_msgSend_removedConflicts(v440, v335, v336, v337, v338);
      v340 = MEMORY[0x277CCACA8];
      v345 = objc_msgSend_segment(v32, v341, v342, v343, v344);
      v350 = objc_msgSend_name(v345, v346, v347, v348, v349);
      objc_msgSend_segment(v55, v351, v352, v353, v354);
      v355 = v446 = v309;
      v360 = objc_msgSend_name(v355, v356, v357, v358, v359);
      v364 = objc_msgSend_stringWithFormat_(v340, v361, @"%@ -> %@", v362, v363, v350, v360);
      objc_msgSend_addObject_(v339, v365, v364, v366, v367);

      v199 = objb;
      v368 = MEMORY[0x277CCACA8];
      v373 = objc_msgSend_segment(v461, v369, v370, v371, v372);
      v378 = objc_msgSend_name(v373, v374, v375, v376, v377);
      v383 = objc_msgSend_segment(v55, v379, v380, v381, v382);
      v388 = objc_msgSend_name(v383, v384, v385, v386, v387);
      v392 = objc_msgSend_stringWithFormat_(v368, v389, @"%@ -> %@", v390, v391, v378, v388);
      objc_msgSend_addObject_(v439, v393, v392, v394, v395);

      v32 = v461;
      v309 = v446;
    }

    if (v309)
    {
LABEL_77:
      objc_msgSend_addObject_(v442, v310, v309, v311, v312);
    }

LABEL_79:
    v21 = v442;
    if (objc_msgSend_count(v442, v25, v26, v27, v28))
    {
      v464 = 0u;
      v465 = 0u;
      v462 = 0u;
      v463 = 0u;
      v400 = v442;
      v402 = objc_msgSend_countByEnumeratingWithState_objects_count_(v400, v401, &v462, v470, 16);
      if (v402)
      {
        v405 = v402;
        v406 = *v463;
        do
        {
          for (i = 0; i != v405; ++i)
          {
            if (*v463 != v406)
            {
              objc_enumerationMutation(v400);
            }

            v408 = *(*(&v462 + 1) + 8 * i);
            objc_msgSend__removeSegmentInfo_fromAssemblyList_(self, v403, v408, v11, v404);
            v409 = MEMORY[0x277CCABB0];
            v414 = objc_msgSend_segment(v408, v410, v411, v412, v413);
            v419 = objc_msgSend_nameIndex(v414, v415, v416, v417, v418);
            v424 = objc_msgSend_integerValue(v419, v420, v421, v422, v423);
            v428 = objc_msgSend_numberWithInteger_(v409, v425, v424, v426, v427);
            objc_msgSend_addObject_(v12, v429, v428, v430, v431);
          }

          v405 = objc_msgSend_countByEnumeratingWithState_objects_count_(v400, v403, &v462, v470, 16);
        }

        while (v405);
      }

      objc_msgSend_removeAllObjects(v400, v432, v433, v434, v435);
      v23 = 0;
      v21 = v442;
    }

    else
    {
      v23 = objc_msgSend_count(v442, v396, v397, v398, v399) == 0;
    }

    v22 = v443 + 1;
  }

  while (v443 != 100);
  objc_msgSend_addObject_(v439, v17, @"-", v19, v20);

  v436 = *MEMORY[0x277D85DE8];
  return v441;
}

- (BOOL)_addBodySegmentsForAssemblyList:(id)a3 forDuration:(int64_t)a4 unusedDuration:(int64_t *)a5 testingContext:(id)a6 timedOut:(BOOL *)a7
{
  v430 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a6;
  v15 = objc_msgSend__segmentsforType_(self, v12, 2, v13, v14);
  v383 = objc_msgSend_sortedArrayUsingComparator_(v15, v16, &unk_285EA05B0, v17, v18);
  updated = objc_msgSend_count(v383, v19, v20, v21, v22) != 0;
  v26 = objc_msgSend__sortFlexSegmentsShortestToLongest_(self, v23, v15, v24, v25);
  v382 = objc_msgSend_firstObject(v26, v27, v28, v29, v30);

  objc_msgSend_indexesOfObjectsPassingTest_(v15, v31, &unk_285EA05D0, v32, v33);
  v378 = v394 = v15;
  objc_msgSend_objectsAtIndexes_(v15, v34, v378, v35, v36);
  v423 = 0u;
  v424 = 0u;
  v425 = 0u;
  v37 = v426 = 0u;
  v39 = objc_msgSend_countByEnumeratingWithState_objects_count_(v37, v38, &v423, v429, 16);
  v411 = self;
  obj = v37;
  if (v39)
  {
    v44 = v39;
    v45 = *v424;
    v46 = -1;
    do
    {
      for (i = 0; i != v44; ++i)
      {
        if (*v424 != v45)
        {
          objc_enumerationMutation(obj);
        }

        v48 = *(*(&v423 + 1) + 8 * i);
        if (objc_msgSend_bars(v48, v40, v41, v42, v43) >= 2)
        {
          v49 = 0;
          do
          {
            v50 = objc_msgSend_barDurationForBarIndex_(v48, v40, v49, v42, v43);
            if (v50 >= v46)
            {
              v55 = v46;
            }

            else
            {
              v55 = v50;
            }

            if (v46 == -1)
            {
              v46 = v50;
            }

            else
            {
              v46 = v55;
            }

            ++v49;
          }

          while (objc_msgSend_bars(v48, v51, v52, v53, v54) - 1 > v49);
        }
      }

      v44 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v40, &v423, v429, 16);
    }

    while (v44);

    self = v411;
    if (v46 != -1 && v46 < objc_msgSend_sampleCount(v382, v56, v57, v58, v59))
    {
      goto LABEL_22;
    }
  }

  else
  {
  }

  v46 = objc_msgSend_sampleCount(v382, v56, v57, v58, v59);
LABEL_22:
  *a7 = 0;
  v405 = objc_msgSend_array(MEMORY[0x277CBEB18], v56, v57, v58, v59);
  v392 = objc_msgSend_array(MEMORY[0x277CBEB18], v60, v61, v62, v63);
  v384 = 0;
  v68 = 0;
  v381 = a4 + 1;
  v69 = a4;
  v397 = a4;
  v393 = v11;
  v391 = v10;
  do
  {
    v386 = v68;
    if ((updated & 1) == 0 || v46 > v69)
    {
      goto LABEL_142;
    }

    context = objc_autoreleasePoolPush();
    if (objc_msgSend_count(v392, v70, v71, v72, v73))
    {
      v78 = objc_msgSend_arrayWithArray_(MEMORY[0x277CBEA60], v74, v392, v76, v77);
      objc_msgSend_addObject_(v405, v79, v78, v80, v81);
    }

    objc_msgSend_removeAllObjects(v392, v74, v75, v76, v77);
    v396 = objc_msgSend_lastObject(v405, v82, v83, v84, v85);
    v90 = objc_msgSend_count(v405, v86, v87, v88, v89);
    v94 = v90 - 2;
    if (v90 - 2 >= 0)
    {
      v95 = v90 - 1;
      v407 = v69;
      while (1)
      {
        v96 = objc_msgSend_objectAtIndexedSubscript_(v405, v91, v94, v92, v93);
        if (objc_msgSend_isEqualToArray_(v96, v97, v396, v98, v99))
        {
          v104 = objc_msgSend_array(MEMORY[0x277CBEB18], v100, v101, v102, v103);
          for (j = objc_msgSend_count(v405, v105, v106, v107, v108) - 1; j > v94; --j)
          {
            v114 = objc_msgSend_objectAtIndexedSubscript_(v405, v109, j, v111, v112);
            objc_msgSend_addObject_(v104, v115, v114, v116, v117);
          }

          v122 = v94 - objc_msgSend_count(v104, v109, v110, v111, v112) + 1;
          if (v122 >= 0)
          {
            v126 = objc_msgSend_array(MEMORY[0x277CBEB18], v118, v119, v120, v121);
            v127 = v95;
            if (v94 >= v122)
            {
              do
              {
                v128 = objc_msgSend_objectAtIndexedSubscript_(v405, v123, --v127, v124, v125);
                objc_msgSend_addObject_(v126, v129, v128, v130, v131);
              }

              while (v127 > v122);
            }

            isEqualToArray = objc_msgSend_isEqualToArray_(v126, v123, v104, v124, v125);

            v10 = v391;
            if (isEqualToArray)
            {
              ++v384;

              v11 = v393;
              self = v411;
              v69 = v407;
              break;
            }
          }

          v11 = v393;
          v69 = v407;
        }

        --v95;
        v266 = v94-- <= 0;
        if (v266)
        {
          self = v411;
          break;
        }
      }
    }

    v421 = 0u;
    v422 = 0u;
    v419 = 0u;
    v420 = 0u;
    v133 = v383;
    v404 = objc_msgSend_countByEnumeratingWithState_objects_count_(v133, v134, &v419, v428, 16);
    if (!v404)
    {
      v390 = 0;
      updated = 1;
      goto LABEL_138;
    }

    v390 = 0;
    v401 = *v420;
    updated = 1;
    v406 = v133;
    do
    {
      v139 = 0;
      do
      {
        if (*v420 != v401)
        {
          objc_enumerationMutation(v133);
        }

        v410 = v139;
        v140 = *(*(&v419 + 1) + 8 * v139);
        v141 = objc_msgSend_sampleCount(v140, v135, v136, v137, v138);
        v146 = objc_msgSend_name(v140, v142, v143, v144, v145);
        v150 = objc_msgSend_containsString_(v146, v147, @"drm_", v148, v149);

        if (v150)
        {
          v399 = v141;
          v155 = v11;
          v408 = v69;
          v156 = objc_msgSend_lastObject(v10, v151, v152, v153, v154);
          v161 = objc_msgSend_lastObject(v394, v157, v158, v159, v160);
          v402 = objc_msgSend_firstObject(v394, v162, v163, v164, v165);
          v166 = v156;
          v171 = objc_msgSend_segment(v156, v167, v168, v169, v170);
          v176 = objc_msgSend_nameSuffix(v171, v172, v173, v174, v175);
          v181 = objc_msgSend_nameSuffix(v140, v177, v178, v179, v180);
          v184 = objc_msgSend_compare_options_(v176, v182, v181, 1, v183);

          if (v184 == -1)
          {
            v219 = 0;
            v133 = v406;
            v69 = v408;
            v11 = v155;
          }

          else
          {
            v69 = v408;
            v11 = v155;
            if (objc_msgSend_count(v10, v185, v186, v187, v188))
            {
              v141 = v399;
              if (v184)
              {
                if (v184 == 1)
                {
                  v389 = objc_msgSend_segment(v166, v189, v190, v191, v192);
                  v197 = objc_msgSend_name(v389, v193, v194, v195, v196);
                  v387 = objc_msgSend_name(v161, v198, v199, v200, v201);
                  v388 = v197;
                  if (objc_msgSend_isEqualToString_(v197, v202, v387, v203, v204))
                  {
                    v209 = objc_msgSend_name(v140, v205, v206, v207, v208);
                    v214 = objc_msgSend_name(v402, v210, v211, v212, v213);
                    isEqualToString = objc_msgSend_isEqualToString_(v209, v215, v214, v216, v217);

                    v219 = isEqualToString ^ 1;
                    v69 = v408;
                  }

                  else
                  {
                    v219 = 1;
                  }

                  v133 = v406;

                  goto LABEL_63;
                }

                v219 = 0;
              }

              else
              {
                v219 = 1;
              }

              v133 = v406;
LABEL_63:

              goto LABEL_64;
            }

            v219 = 0;
            v133 = v406;
          }

          v141 = v399;
          goto LABEL_63;
        }

        v219 = 0;
        v133 = v406;
LABEL_64:
        if (v141 <= v69 && (v219 & 1) == 0)
        {
          v221 = objc_msgSend_sampleCount(v140, v151, v152, v153, v154);
LABEL_67:
          v417 = 0;
          v418 = 0x7FFFFFFFFFFFFFFFLL;
          self = v411;
          v222 = v69;
          v223 = objc_msgSend__addSegment_withDuration_toAssemblyList_timeRemaining_reusedSegment_indexofNewSegment_(v411, v220, v140, v221, v10, v69, &v417, &v418);
          v224 = v417;
          if (!v223)
          {
            v228 = 0;
            v262 = v410;
            goto LABEL_125;
          }

          v409 = v224;
          v228 = objc_msgSend_objectAtIndex_(v10, v225, v418, v226, v227);
          v416[0] = MEMORY[0x277D85DD0];
          v416[1] = 3221225472;
          v416[2] = sub_24B807E94;
          v416[3] = &unk_27900F498;
          v416[4] = v140;
          v232 = objc_msgSend_indexOfObjectPassingTest_(v133, v229, v416, v230, v231);
          if (v232 == 0x7FFFFFFFFFFFFFFFLL)
          {

            updated = 0;
LABEL_137:

            v69 = v222;
            goto LABEL_138;
          }

          v237 = v232;
          if (v232 < objc_msgSend_count(v133, v233, v234, v235, v236) - 1)
          {
            objc_msgSend_objectAtIndexedSubscript_(v133, v238, v237 + 1, v239, v240);
          }

          else
          {
            objc_msgSend_objectAtIndexedSubscript_(v133, v238, 0, v239, v240);
          }
          v241 = ;
          v246 = v222 - objc_msgSend_sampleCount(v140, v242, v243, v244, v245);
          v403 = v241;
          if (v246 <= objc_msgSend_sampleCount(v241, v247, v248, v249, v250))
          {
            v251 = objc_opt_new();
            v274 = objc_msgSend__removeUnpermittedTransitionsInAssemblyList_final_testingContext_removedIndexes_conflictList_(v411, v273, v10, 0, v11, v251, v392);
            if (objc_msgSend_count(v251, v275, v276, v277, v278))
            {
              v283 = objc_msgSend_allObjects(v251, v279, v280, v281, v282);
              objc_msgSend__sequenceBodySegmentList_forIndexes_(v411, v284, v10, v283, v285);
            }

            if (objc_msgSend_indexOfObject_(v10, v279, v228, v281, v282) != 0x7FFFFFFFFFFFFFFFLL)
            {

              if (v274)
              {
                goto LABEL_73;
              }

              v262 = v410;
              v261 = v403;
              goto LABEL_124;
            }

            v290 = objc_msgSend_indexSet(MEMORY[0x277CCAB58], v286, v287, v288, v289);
            objc_msgSend__updateTransitionBodySegmentsForAssemblyList_usingNewSegment_indexOfNewTransitionSegment_(v411, v291, v10, 0, v290);
            v222 = v397 - objc_msgSend__sampleDurationOfClipPlaylist_(v411, v292, v10, v293, v294);
            if (v222 < 0)
            {
              v299 = objc_msgSend_indexSet(MEMORY[0x277CCAB58], v295, v296, v297, v298);
              Index = objc_msgSend_firstIndex(v290, v300, v301, v302, v303);
              if (Index != 0x7FFFFFFFFFFFFFFFLL)
              {
                for (k = Index; k != 0x7FFFFFFFFFFFFFFFLL; k = objc_msgSend_indexGreaterThanIndex_(v290, v310, k, v311, v312))
                {
                  if (k + 1 <= (objc_msgSend_count(v10, v305, v306, v307, v308) - 1))
                  {
                    objc_msgSend_addIndex_(v299, v310, k + 1, v311, v312);
                  }
                }
              }

              objc_msgSend_addIndexes_(v299, v305, v290, v307, v308);
              objc_msgSend_removeObjectsAtIndexes_(v10, v313, v299, v314, v315);
              self = v411;
              v222 = v397 - objc_msgSend__sampleDurationOfClipPlaylist_(v411, v316, v10, v317, v318);
            }

LABEL_121:
          }

          else
          {
LABEL_73:
            v251 = objc_opt_new();
            if (objc_msgSend__updateTransitionBodySegmentsForAssemblyList_usingNewSegment_indexOfNewTransitionSegment_(v411, v252, v10, v140, v251))
            {
              v400 = v251;
              v260 = v397 - objc_msgSend__sampleDurationOfClipPlaylist_(v411, v253, v10, v254, v255);
              if (v260 >= 0)
              {
                self = v411;
LABEL_76:
                v261 = v403;
                v222 = v397 - objc_msgSend__sampleDurationOfClipPlaylist_(self, v256, v10, v258, v259);
                v390 = 1;
                updated = 1;
                v262 = v410;
                v251 = v400;
LABEL_123:

LABEL_124:
                v133 = v406;
                v224 = v409;
LABEL_125:

                goto LABEL_126;
              }

              if (objc_msgSend_sliceable(v140, v256, v257, v258, v259) && objc_msgSend_barsUsed(v228, v319, v320, v321, v322) >= 2)
              {
                v323 = objc_msgSend_barsUsed(v228, v319, v320, v321, v322);
                while (1)
                {
                  v266 = v323-- <= 1;
                  if (v266)
                  {
                    break;
                  }

                  v324 = v11;
                  v325 = 0;
                  v326 = 0;
                  do
                  {
                    v327 = objc_msgSend_segment(v228, v319, v320, v321, v322);
                    v326 += objc_msgSend_barDurationForBarIndex_(v327, v328, v325, v329, v330);

                    ++v325;
                  }

                  while (v323 != v325);
                  v11 = v324;
                  if (v260 - v326 + objc_msgSend_duration(v228, v319, v320, v321, v322) >= 1)
                  {
                    objc_msgSend_setBarsUsed_(v228, v319, v323, v321, v322);
                    objc_msgSend_setDuration_(v228, v331, v326, v332, v333);
                    self = v411;
                    v46 = v381 - objc_msgSend__sampleDurationOfClipPlaylist_(v411, v334, v10, v335, v336);
                    goto LABEL_76;
                  }
                }
              }

              v251 = v400;
              if (objc_msgSend_count(v400, v319, v320, v321, v322))
              {
                v340 = objc_msgSend_objectsAtIndexes_(v10, v337, v400, v338, v339);
                objc_msgSend__removeSegmentInfo_fromAssemblyList_(v411, v341, v228, v10, v342);
                v414 = 0u;
                v415 = 0u;
                v412 = 0u;
                v413 = 0u;
                v290 = v340;
                v344 = objc_msgSend_countByEnumeratingWithState_objects_count_(v290, v343, &v412, v427, 16);
                if (v344)
                {
                  v347 = v344;
                  v348 = *v413;
                  do
                  {
                    for (m = 0; m != v347; ++m)
                    {
                      if (*v413 != v348)
                      {
                        objc_enumerationMutation(v290);
                      }

                      objc_msgSend__removeSegmentInfo_fromAssemblyList_(v411, v345, *(*(&v412 + 1) + 8 * m), v10, v346);
                    }

                    v347 = objc_msgSend_countByEnumeratingWithState_objects_count_(v290, v345, &v412, v427, 16);
                  }

                  while (v347);
                }

                self = v411;
                objc_msgSend__updateTransitionBodySegmentsForAssemblyList_usingNewSegment_indexOfNewTransitionSegment_(v411, v350, v10, 0, 0);
                v222 = v397 - objc_msgSend__sampleDurationOfClipPlaylist_(v411, v351, v10, v352, v353);
                goto LABEL_121;
              }

              self = v411;
              objc_msgSend__removeSegmentInfo_fromAssemblyList_(v411, v337, v228, v10, v339);
            }
          }

          v262 = v410;
          v261 = v403;
          goto LABEL_123;
        }

        if (objc_msgSend_sliceable(v140, v151, v152, v153, v154))
        {
          v265 = v219 == 1;
        }

        else
        {
          v265 = 1;
        }

        v266 = v265 || v69 < 1;
        if (!v266)
        {
          v267 = 0;
          v268 = 0;
          v269 = 0;
          while (objc_msgSend_bars(v140, v220, v263, v221, v264) > v267)
          {
            v272 = objc_msgSend_barDurationForBarIndex_(v140, v220, v267, v270, v271);
            v221 = v272 + v268;
            if (v272 + v268 > v69)
            {
              break;
            }

            ++v267;
            v269 = 1;
            v268 += v272;
            if (v221 >= v69)
            {
              goto LABEL_67;
            }
          }

          v221 = v268;
          if (v269)
          {
            goto LABEL_67;
          }
        }

        v222 = v69;
        v228 = 0;
        v262 = v410;
        self = v411;
LABEL_126:
        if (v222 < v46)
        {
          objc_msgSend__removeUnpermittedTransitionsInAssemblyList_final_testingContext_removedIndexes_(self, v220, v10, 1, v11, 0);
          updated = objc_msgSend__updateTransitionBodySegmentsForAssemblyList_usingNewSegment_indexOfNewTransitionSegment_(self, v354, v10, 0, 0);
          v360 = v397 - objc_msgSend__sampleDurationOfClipPlaylist_(self, v355, v10, v356, v357);
          if (v360 < 0)
          {
            objc_msgSend__removeSegmentInfo_fromAssemblyList_(self, v358, v228, v10, v359);
            objc_msgSend__updateTransitionBodySegmentsForAssemblyList_usingNewSegment_indexOfNewTransitionSegment_(self, v361, v10, 0, 0);
            objc_msgSend__removeUnpermittedTransitionsInAssemblyList_final_testingContext_removedIndexes_(self, v362, v10, 1, v11, 0);
            v360 = v397 - objc_msgSend__sampleDurationOfClipPlaylist_(self, v363, v10, v364, v365);
          }

          v222 = v360;
          if (v360 < v46)
          {
            goto LABEL_137;
          }
        }

        v139 = v262 + 1;
        v69 = v222;
      }

      while (v139 != v404);
      v366 = objc_msgSend_countByEnumeratingWithState_objects_count_(v133, v135, &v419, v428, 16);
      v404 = v366;
    }

    while (v366);
LABEL_138:

    objc_autoreleasePoolPop(context);
    a4 = v397;
    if (v384 > 1)
    {
      break;
    }

    v68 = v386 + 1;
  }

  while ((v390 & 1) != 0);
  if (v384 >= 2)
  {
    *a7 = 1;
    objc_msgSend__removeUnpermittedTransitionsInAssemblyList_final_testingContext_removedIndexes_(self, v64, v10, 1, v11, 0);
    objc_msgSend__updateTransitionBodySegmentsForAssemblyList_usingNewSegment_indexOfNewTransitionSegment_(self, v367, v10, 0, 0);
  }

LABEL_142:
  if (objc_msgSend_maxPassesToFit(v11, v64, v65, v66, v67) >= v386)
  {
    v372 = objc_msgSend_maxPassesToFit(v11, v368, v369, v370, v371);
  }

  else
  {
    v372 = v386;
  }

  objc_msgSend_setMaxPassesToFit_(v11, v368, v372, v370, v371);
  *a5 = a4 - objc_msgSend__sampleDurationOfClipPlaylist_(self, v373, v10, v374, v375);

  v376 = *MEMORY[0x277D85DE8];
  return updated & 1;
}

- (BOOL)_addIntroSegmentsToAssemblyList:(id)a3 forDuration:(int64_t)a4 testingContext:(id)a5
{
  v49 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v11 = objc_msgSend__segmentsforType_(self, v8, 1, v9, v10);
  objc_msgSend_sortedArrayUsingComparator_(v11, v12, &unk_285EA05F0, v13, v14);
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v15 = v47 = 0u;
  v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(v15, v16, &v44, v48, 16);
  if (v17)
  {
    v22 = v17;
    v42 = v11;
    v23 = *v45;
    while (2)
    {
      for (i = 0; i != v22; ++i)
      {
        if (*v45 != v23)
        {
          objc_enumerationMutation(v15);
        }

        v25 = *(*(&v44 + 1) + 8 * i);
        if (objc_msgSend_sampleCount(v25, v18, v19, v20, v21) <= a4)
        {
          v26 = objc_msgSend_firstObject(v7, v18, v19, v20, v21);
          v31 = objc_msgSend_segment(v26, v27, v28, v29, v30);

          if (!v31 || (objc_msgSend_canTransitionFromSegment_toSegment_fromBarIndex_checkIfPrevented_(FlexSegment, v32, v25, v31, 0, 1) & 1) != 0)
          {
            v33 = v25;

            if (v33)
            {
              v43 = 0x7FFFFFFFFFFFFFFFLL;
              v38 = objc_msgSend_sampleCount(v33, v34, v35, v36, v37);
              objc_msgSend__addSegment_withDuration_toAssemblyList_indexOfNewSegment_(self, v39, v33, v38, v7, &v43);
            }

            goto LABEL_15;
          }
        }
      }

      v22 = objc_msgSend_countByEnumeratingWithState_objects_count_(v15, v18, &v44, v48, 16);
      if (v22)
      {
        continue;
      }

      break;
    }

    v33 = 0;
LABEL_15:
    v11 = v42;
  }

  else
  {

    v33 = 0;
  }

  v40 = *MEMORY[0x277D85DE8];
  return 1;
}

- (BOOL)_addOutroSegmentsToAssemblyList:(id)a3 forDuration:(int64_t)a4 allowTrim:(BOOL)a5 testingContext:(id)a6
{
  v101 = a5;
  v116 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v102 = a6;
  v13 = objc_msgSend__segmentsforType_(self, v10, 4, v11, v12);
  if (objc_msgSend_count(v13, v14, v15, v16, v17))
  {
    if (objc_msgSend_count(v13, v18, v19, v20, v21) == 1)
    {
      v26 = objc_msgSend_firstObject(v13, v22, v23, v24, v25);
      v31 = v26;
      if (v101 || objc_msgSend_sampleCount(v26, v27, v28, v29, v30) <= a4)
      {
        v32 = objc_msgSend_lastObject(v13, v27, v28, v29, v30);
        v33 = 1;
      }

      else
      {
        v32 = 0;
        v33 = 0;
      }
    }

    else
    {
      if (objc_msgSend_count(v9, v22, v23, v24, v25))
      {
        v112[0] = 0;
        v112[1] = v112;
        v112[2] = 0x3032000000;
        v112[3] = sub_24B80429C;
        v112[4] = sub_24B8042AC;
        v113 = objc_msgSend_lastObject(v9, v35, v36, v37, v38);
        v111[0] = MEMORY[0x277D85DD0];
        v111[1] = 3221225472;
        v111[2] = sub_24B808634;
        v111[3] = &unk_27900F3E0;
        v111[4] = v112;
        v42 = objc_msgSend_indexesOfObjectsPassingTest_(v13, v39, v111, v40, v41);
        v46 = objc_msgSend_objectsAtIndexes_(v13, v43, v42, v44, v45);
        v100 = v42;
        if (objc_msgSend_count(v46, v47, v48, v49, v50) == 1)
        {
          v32 = objc_msgSend_firstObject(v46, v51, v52, v53, v54);
        }

        else
        {
          v99 = v46;
          objc_msgSend__sortFlexSegmentsShortestToLongest_(self, v51, v46, v53, v54);
          v109 = 0u;
          v110 = 0u;
          v107 = 0u;
          v79 = v108 = 0u;
          v32 = 0;
          v85 = objc_msgSend_countByEnumeratingWithState_objects_count_(v79, v80, &v107, v115, 16);
          if (v85)
          {
            v86 = *v108;
            while (2)
            {
              v87 = 0;
              v88 = v32;
              do
              {
                if (*v108 != v86)
                {
                  objc_enumerationMutation(v79);
                }

                v89 = *(*(&v107 + 1) + 8 * v87);
                if (objc_msgSend_sampleCount(v89, v81, v82, v83, v84) > a4)
                {
                  if (!v101 || v88 && objc_msgSend_sampleCount(v88, v90, v91, v92, v93) >= a4)
                  {
                    v32 = v88;
                  }

                  else
                  {
                    v32 = v89;
                  }

                  goto LABEL_41;
                }

                v32 = v89;

                ++v87;
                v88 = v32;
              }

              while (v85 != v87);
              v85 = objc_msgSend_countByEnumeratingWithState_objects_count_(v79, v81, &v107, v115, 16);
              if (v85)
              {
                continue;
              }

              break;
            }
          }

LABEL_41:

          v46 = v99;
        }

        _Block_object_dispose(v112, 8);
      }

      else
      {
        v59 = objc_msgSend__segmentsforType_(self, v35, 4, v37, v38);
        v63 = objc_msgSend__sortFlexSegmentsShortestToLongest_(self, v60, v59, v61, v62);

        v105 = 0u;
        v106 = 0u;
        v103 = 0u;
        v104 = 0u;
        v64 = v63;
        v32 = 0;
        v70 = objc_msgSend_countByEnumeratingWithState_objects_count_(v64, v65, &v103, v114, 16);
        if (v70)
        {
          v71 = *v104;
          while (2)
          {
            v72 = 0;
            v73 = v32;
            do
            {
              if (*v104 != v71)
              {
                objc_enumerationMutation(v64);
              }

              v74 = *(*(&v103 + 1) + 8 * v72);
              if (objc_msgSend_sampleCount(v74, v66, v67, v68, v69) > a4)
              {
                if (!v101 || v73 && objc_msgSend_sampleCount(v73, v75, v76, v77, v78) >= a4)
                {
                  v32 = v73;
                }

                else
                {
                  v32 = v74;
                }

                goto LABEL_39;
              }

              v32 = v74;

              ++v72;
              v73 = v32;
            }

            while (v70 != v72);
            v70 = objc_msgSend_countByEnumeratingWithState_objects_count_(v64, v66, &v103, v114, 16);
            if (v70)
            {
              continue;
            }

            break;
          }
        }

LABEL_39:
      }

      v33 = 1;
    }

    v34 = v32 != 0;
    if (v33 && v32)
    {
      v94 = objc_msgSend_sampleCount(v32, v55, v56, v57, v58);
      if (v94 >= a4)
      {
        v96 = a4;
      }

      else
      {
        v96 = v94;
      }

      v112[0] = 0x7FFFFFFFFFFFFFFFLL;
      LOBYTE(v33) = objc_msgSend__addSegment_withDuration_toAssemblyList_indexOfNewSegment_(self, v95, v32, v96, v9, v112);
      v34 = 1;
    }
  }

  else
  {
    v34 = 0;
    v32 = 0;
    LOBYTE(v33) = 0;
  }

  v97 = *MEMORY[0x277D85DE8];
  return v34 & v33;
}

- (BOOL)_rebuildBodySegmentsInAssemblyList:(id)a3 forDuration:(int64_t)a4 unusedDuration:(int64_t *)a5 testingContext:(id)a6
{
  v10 = a6;
  v11 = a3;
  objc_msgSend_removeAllObjects(v11, v12, v13, v14, v15);
  v18 = 0;
  LOBYTE(a5) = objc_msgSend__addBodySegmentsForAssemblyList_forDuration_unusedDuration_testingContext_timedOut_(self, v16, v11, a4, a5, v10, &v18);

  return a5;
}

- (BOOL)_buildIntroAndOutroOnlySegmentAssemblyList:(id)a3 forDuration:(int64_t)a4 testingContext:(id)a5
{
  v8 = a3;
  v9 = a5;
  v14 = 0;
  if (objc_msgSend__addOutroSegmentsToAssemblyList_forDuration_allowTrim_testingContext_(self, v10, v8, a4, 0, v9))
  {
    v15 = objc_msgSend__sampleDurationOfClipPlaylist_(self, v11, v8, v12, v13);
    v14 = objc_msgSend__addIntroSegmentsToAssemblyList_forDuration_testingContext_(self, v16, v8, a4 - v15, v9);
  }

  return v14;
}

+ (int64_t)_findMaxLengthInSamplesToReserveForOutroSegment:(id)a3 withOptions:(id)a4
{
  v5 = a3;
  v6 = a4;
  v10 = objc_msgSend_objectForKey_(v6, v7, @"OutroCanBeShortened", v8, v9);
  v15 = objc_msgSend_BOOLValue(v10, v11, v12, v13, v14);

  if (v15)
  {
    v19 = objc_msgSend_objectForKey_(v6, v16, @"MaxOutroLengthToReserve", v17, v18);
    v24 = v19;
    if (v19 && (objc_msgSend_floatValue(v19, v20, v21, v22, v23), v29 >= 0.0))
    {
      v30 = (v29 * objc_msgSend_sampleRate(v5, v25, v26, v27, v28));
    }

    else
    {
      v30 = 0;
    }
  }

  else
  {
    v30 = 0;
  }

  return v30;
}

+ (int64_t)_findMinLengthInSamplesForEarlyFadeOutForOutroSegment:(id)a3 withOptions:(id)a4
{
  v5 = a3;
  v6 = a4;
  v11 = objc_msgSend_sampleRate(v5, v7, v8, v9, v10);
  v15 = objc_msgSend_objectForKey_(v6, v12, @"MinLengthForEarlyFade", v13, v14);

  if (v15)
  {
    objc_msgSend_floatValue(v15, v16, v17, v18, v19);
    if (v24 > 0.0)
    {
      v11 = (v24 * objc_msgSend_sampleRate(v5, v20, v21, v22, v23));
    }
  }

  return v11;
}

+ (int64_t)_findEarlyFadeStartOffsetInSamplesForOutroSegment:(id)a3 withOptions:(id)a4
{
  v5 = a3;
  v6 = a4;
  v10 = objc_msgSend_objectForKey_(v6, v7, @"IgnoreEarlyFadeMarker", v8, v9);
  v15 = objc_msgSend_BOOLValue(v10, v11, v12, v13, v14);

  if ((v15 & 1) == 0)
  {
    v20 = objc_msgSend_markers(v5, v16, v17, v18, v19);
    v24 = objc_msgSend_objectForKey_(v20, v21, @"OUTRO_EARLY_FADE", v22, v23);

    if (v24)
    {
      v29 = objc_msgSend_integerValue(v24, v25, v26, v27, v28);
      if ((v29 & 0x8000000000000000) == 0)
      {
        v34 = v29;
        if (v29 < objc_msgSend_sampleCount(v5, v30, v31, v32, v33))
        {
          goto LABEL_19;
        }
      }
    }
  }

  v35 = objc_msgSend_objectForKey_(v6, v16, @"IgnoreStingerMarkerForShortening", v18, v19);
  v40 = objc_msgSend_BOOLValue(v35, v36, v37, v38, v39);

  if (v40)
  {
    v45 = 0;
  }

  else
  {
    v46 = objc_msgSend_markers(v5, v41, v42, v43, v44);
    v50 = objc_msgSend_objectForKey_(v46, v47, @"OUTRO_STINGER", v48, v49);

    if (!v50 || (v55 = objc_msgSend_integerValue(v50, v51, v52, v53, v54), v55 < 0))
    {
      v45 = 0;
    }

    else
    {
      v45 = v55;
      if (v55 >= objc_msgSend_sampleCount(v5, v56, v57, v58, v59))
      {
        v45 = 0;
      }
    }
  }

  v60 = objc_msgSend_sampleRate(v5, v41, v42, v43, v44) / 2;
  v64 = objc_msgSend_objectForKey_(v6, v61, @"DefaultEarlyFadeStartFromStinger", v62, v63);
  v24 = v64;
  if (v64)
  {
    objc_msgSend_floatValue(v64, v65, v66, v67, v68);
    if (v73 >= 0.0)
    {
      v60 = (v73 * objc_msgSend_sampleRate(v5, v69, v70, v71, v72));
    }
  }

  v34 = v60 + v45;
LABEL_19:

  return v34;
}

+ (int64_t)_durationInSamplesToReserveForOutroSegment:(id)a3 withOptions:(id)a4
{
  v5 = a3;
  v6 = a4;
  v11 = objc_msgSend_sampleCount(v5, v7, v8, v9, v10);
  v15 = objc_msgSend_objectForKey_(v6, v12, @"OutroCanBeShortened", v13, v14);
  v20 = objc_msgSend_BOOLValue(v15, v16, v17, v18, v19);

  if (v20)
  {
    MaxLengthInSamplesToReserveForOutroSegment_withOptions = objc_msgSend__findMaxLengthInSamplesToReserveForOutroSegment_withOptions_(FlexSong, v21, v5, v6, v22);
    if (v11 >= MaxLengthInSamplesToReserveForOutroSegment_withOptions)
    {
      v26 = MaxLengthInSamplesToReserveForOutroSegment_withOptions;
    }

    else
    {
      v26 = v11;
    }

    if (MaxLengthInSamplesToReserveForOutroSegment_withOptions <= 0)
    {
      EarlyFadeStartOffsetInSamplesForOutroSegment_withOptions = objc_msgSend__findEarlyFadeStartOffsetInSamplesForOutroSegment_withOptions_(FlexSong, v24, v5, v6, v25);
      MinLengthInSamplesForEarlyFadeOutForOutroSegment_withOptions = objc_msgSend__findMinLengthInSamplesForEarlyFadeOutForOutroSegment_withOptions_(FlexSong, v28, v5, v6, v29);
      if (MinLengthInSamplesForEarlyFadeOutForOutroSegment_withOptions + EarlyFadeStartOffsetInSamplesForOutroSegment_withOptions < v11)
      {
        v11 = MinLengthInSamplesForEarlyFadeOutForOutroSegment_withOptions + EarlyFadeStartOffsetInSamplesForOutroSegment_withOptions;
      }
    }

    else
    {
      v11 = v26;
    }
  }

  return v11;
}

- (BOOL)_buildSegmentAssemblyList:(id)a3 forDuration:(int64_t)a4 withOptions:(id)a5 testingContext:(id)a6
{
  v145 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a5;
  v12 = a6;
  v13 = 9600 * (a4 / 9600);
  if (v13 >= objc_msgSend__minOutroDuration(self, v14, v15, v16, v17))
  {
    objc_msgSend_naturalDuration(self, v18, v19, v20, v21);
    if (v143 == a4)
    {
      v26 = objc_msgSend__naturalDurationAssemblyList(self, v22, v23, v24, v25);
      objc_msgSend_addObjectsFromArray_(v10, v27, v26, v28, v29);

      goto LABEL_4;
    }

    v35 = objc_msgSend_objectForKey_(v11, v22, @"OutroCanBeShortened", v24, v25);
    v40 = objc_msgSend_BOOLValue(v35, v36, v37, v38, v39);

    v136 = 9600 * (a4 / 9600);
    v135 = v40;
    if (v40)
    {
      v134 = v12;
      v45 = objc_msgSend__segmentsforType_(self, v41, 4, v43, v44);
      v139 = 0u;
      v140 = 0u;
      v141 = 0u;
      v142 = 0u;
      v47 = objc_msgSend_countByEnumeratingWithState_objects_count_(v45, v46, &v139, v144, 16);
      if (v47)
      {
        v50 = v47;
        v51 = 0;
        v52 = *v140;
        do
        {
          for (i = 0; i != v50; ++i)
          {
            if (*v140 != v52)
            {
              objc_enumerationMutation(v45);
            }

            v54 = objc_msgSend__durationInSamplesToReserveForOutroSegment_withOptions_(FlexSong, v48, *(*(&v139 + 1) + 8 * i), v11, v49);
            if (v54 > v51)
            {
              v51 = v54;
            }
          }

          v50 = objc_msgSend_countByEnumeratingWithState_objects_count_(v45, v48, &v139, v144, 16);
        }

        while (v50);
      }

      else
      {
        v51 = 0;
      }

      v12 = v134;
      v13 = 9600 * (a4 / 9600);
    }

    else
    {
      v51 = objc_msgSend__maxOutroDuration(self, v41, v42, v43, v44);
    }

    v58 = v13 - v51;
    v138 = 0;
    v137 = 0;
    if (v13 - v51 < 1)
    {
      v60 = 0;
      v61 = 0;
      v59 = 0;
    }

    else
    {
      v59 = objc_msgSend__addBodySegmentsForAssemblyList_forDuration_unusedDuration_testingContext_timedOut_(self, v55, v10, v58, &v138, v12, &v137);
      v60 = v138;
      v61 = v137;
    }

    if ((v61 & 1) != 0 || v60 > 192000)
    {
      v62 = -v51 - 48000 + v136;
      v63 = 6;
      do
      {
        objc_msgSend_removeAllObjects(v10, v55, v56, v58, v57);
        v59 = objc_msgSend__addBodySegmentsForAssemblyList_forDuration_unusedDuration_testingContext_timedOut_(self, v64, v10, v62, &v138, v12, &v137);
        if (!--v63)
        {
          break;
        }

        v62 -= 48000;
      }

      while ((v137 & 1) != 0 || v138 > 192000);
    }

    if (objc_msgSend_count(v10, v55, v56, v58, v57))
    {
      if (!v59)
      {
        goto LABEL_33;
      }

      v68 = objc_msgSend__sampleDurationOfClipPlaylist_(self, v65, v10, v66, v67);
      if ((objc_msgSend__addOutroSegmentsToAssemblyList_forDuration_allowTrim_testingContext_(self, v69, v10, v136 - v68, v135, v12) & 1) == 0)
      {
        goto LABEL_33;
      }

      v73 = objc_msgSend__sampleDurationOfClipPlaylist_(self, v70, v10, v71, v72);
      if (!objc_msgSend__addIntroSegmentsToAssemblyList_forDuration_testingContext_(self, v74, v10, v136 - v73, v12))
      {
        goto LABEL_33;
      }
    }

    else if ((objc_msgSend__buildIntroAndOutroOnlySegmentAssemblyList_forDuration_testingContext_(self, v65, v10, v136, v12) & 1) == 0)
    {
LABEL_33:
      v34 = 0;
      goto LABEL_44;
    }

    v78 = objc_msgSend__sampleDurationOfClipPlaylist_(self, v75, v10, v76, v77);
    v32 = a4 <= v78;
    v33 = a4 - v78;
    if (!v32)
    {
      if (!v135)
      {
        goto LABEL_5;
      }

      v81 = objc_msgSend_outroInfoForClipPlaylist_(FlexSong, v31, v10, v79, v80);
      v86 = v81;
      if (!v81)
      {
        goto LABEL_45;
      }

      v87 = objc_msgSend_offset(v81, v82, v83, v84, v85);
      v92 = v12;
      v93 = objc_msgSend_duration(v86, v88, v89, v90, v91) + v87;
      v98 = objc_msgSend_segment(v86, v94, v95, v96, v97);
      v103 = objc_msgSend_sampleCount(v98, v99, v100, v101, v102);

      v32 = v93 < v103;
      v12 = v92;
      if (!v32)
      {
LABEL_45:

        goto LABEL_5;
      }

      v108 = objc_msgSend_segment(v86, v104, v105, v106, v107);
      v113 = objc_msgSend_sampleCount(v108, v109, v110, v111, v112);
      v118 = objc_msgSend_offset(v86, v114, v115, v116, v117);
      v123 = v113 - (v118 + objc_msgSend_duration(v86, v119, v120, v121, v122));

      if (v123 >= v33)
      {
        v123 = v33;
      }

      v128 = objc_msgSend_duration(v86, v124, v125, v126, v127);
      objc_msgSend_setDuration_(v86, v129, v128 + v123, v130, v131);
      v33 -= v123;
      v12 = v92;

      if (v33 >= 1)
      {
        goto LABEL_5;
      }
    }

LABEL_43:
    v34 = 1;
    goto LABEL_44;
  }

LABEL_4:
  v30 = objc_msgSend__sampleDurationOfClipPlaylist_(self, v18, v10, v20, v21);
  v32 = a4 <= v30;
  v33 = a4 - v30;
  if (v32)
  {
    goto LABEL_43;
  }

LABEL_5:
  v138 = 0x7FFFFFFFFFFFFFFFLL;
  v34 = objc_msgSend__addSegment_withDuration_toAssemblyList_indexOfNewSegment_(self, v31, 0, v33, v10, &v138);
LABEL_44:

  v132 = *MEMORY[0x277D85DE8];
  return v34;
}

- (id)_fullSongLoopedClipPlaylistForDuration:(id *)a3 withOptions:(id)a4 testingContext:(id)a5
{
  v137[2] = *MEMORY[0x277D85DE8];
  v132 = a4;
  v8 = a5;
  objc_msgSend_setSequencingLongSong_(v8, v9, 1, v10, v11);
  v16 = objc_msgSend_sampleRate(self, v12, v13, v14, v15);
  time = *a3;
  CMTimeConvertScale(&v135, &time, v16, kCMTimeRoundingMethod_RoundHalfAwayFromZero);
  value = v135.value;
  v18 = objc_opt_new();
  v19 = objc_opt_new();
  v20 = objc_opt_new();
  memset(&time, 0, sizeof(time));
  objc_msgSend_naturalDuration(self, v21, v22, v23, v24);
  v130 = value;
  v25 = time.value;
  v26 = value / time.value;
  v27 = vcvtmd_s64_f64(v26);
  v28 = (v26 - v27) * 1.5;
  v136[0] = @"IgnoreStingerMarkerForShortening";
  v136[1] = @"IgnoreEarlyFadeMarker";
  v137[0] = MEMORY[0x277CBEC38];
  v137[1] = MEMORY[0x277CBEC38];
  v34 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v29, v137, v136, 2);
  v35 = 0;
  v131 = v20;
  if (v27 >= 2)
  {
    v129 = v18;
    v35 = 0;
    v36 = v27 - 1;
    do
    {
      v37 = v35;
      v42 = v34;
      if (v36 == 1 && v28 < 0.25)
      {
        v43 = v132;

        v42 = v43;
      }

      v44 = objc_msgSend_sampleRate(self, v38, v39, v40, v41);
      CMTimeMake(&v133, v25, v44);
      v35 = objc_msgSend__clipPlaylistForDuration_withOptions_testingContext_(self, v45, &v133, v42, v8);

      objc_msgSend_addObjectsFromArray_(v19, v46, v35, v47, v48);
      --v36;
    }

    while (v36);
    v52 = objc_msgSend_indexesOfObjectsPassingTest_(v19, v49, &unk_285EA0610, v50, v51);
    v56 = objc_msgSend_objectsAtIndexes_(v19, v53, v52, v54, v55);
    objc_msgSend_removeObjectsAtIndexes_(v19, v57, v52, v58, v59);
    objc_msgSend__sampleDurationOfClipPlaylist_(self, v60, v56, v61, v62);

    v18 = v129;
    v20 = v131;
  }

  if (v28 < 0.25)
  {
    v102 = v130 - objc_msgSend__sampleDurationOfClipPlaylist_(self, v30, v19, v32, v33);
    v107 = objc_msgSend_sampleRate(self, v103, v104, v105, v106);
    CMTimeMake(&v133, v102, v107);
    v101 = objc_msgSend__clipPlaylistForDuration_withOptions_testingContext_(self, v108, &v133, v34, v8);

    objc_msgSend_addObjectsFromArray_(v20, v109, v101, v110, v111);
    v72 = objc_msgSend_indexesOfObjectsPassingTest_(v20, v112, &unk_285EA0630, v113, v114);
    v97 = objc_msgSend_objectsAtIndexes_(v20, v115, v72, v116, v117);
    objc_msgSend_removeObjectsAtIndexes_(v20, v118, v72, v119, v120);
    objc_msgSend_addObjectsFromArray_(v18, v121, v20, v122, v123);
    objc_msgSend_addObjectsFromArray_(v18, v124, v19, v125, v126);
    v76 = v97;
    v95 = v132;
  }

  else
  {
    v63 = objc_msgSend_sampleRate(self, v30, v31, v32, v33);
    CMTimeMake(&v133, v25, v63);
    v65 = objc_msgSend__clipPlaylistForDuration_withOptions_testingContext_(self, v64, &v133, v34, v8);

    objc_msgSend_addObjectsFromArray_(v18, v66, v65, v67, v68);
    v72 = objc_msgSend_indexesOfObjectsPassingTest_(v18, v69, &unk_285EA0650, v70, v71);
    v76 = objc_msgSend_objectsAtIndexes_(v18, v73, v72, v74, v75);
    objc_msgSend_removeObjectsAtIndexes_(v18, v77, v72, v78, v79);
    objc_msgSend__sampleDurationOfClipPlaylist_(self, v80, v76, v81, v82);
    objc_msgSend_addObjectsFromArray_(v18, v83, v19, v84, v85);
    v89 = v130 - objc_msgSend__sampleDurationOfClipPlaylist_(self, v86, v18, v87, v88);
    v94 = objc_msgSend_sampleRate(self, v90, v91, v92, v93);
    CMTimeMake(&v133, v89, v94);
    v95 = v132;
    v97 = objc_msgSend__clipPlaylistForDuration_withOptions_testingContext_(self, v96, &v133, v132, v8);

    v20 = v131;
    v101 = v97;
  }

  objc_msgSend_addObjectsFromArray_(v18, v98, v97, v99, v100);

  v127 = *MEMORY[0x277D85DE8];

  return v18;
}

- (id)renditionForDuration:(id *)a3 withOptions:(id)a4 testingContext:(id)a5
{
  v103 = *MEMORY[0x277D85DE8];
  v8 = a4;
  v9 = a5;
  v10 = FlexLogForCategory(0);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    time = *a3;
    Seconds = CMTimeGetSeconds(&time);
    LODWORD(time.value) = 134217984;
    *(&time.value + 4) = Seconds;
    _os_log_impl(&dword_24B7E5000, v10, OS_LOG_TYPE_DEFAULT, "flex: Requesting legacy format rendition for duration %.2f", &time, 0xCu);
  }

  v12 = v8;
  v17 = objc_msgSend_customOptions(self, v13, v14, v15, v16);

  v22 = v12;
  if (v17)
  {
    v91 = a3;
    v92 = v9;
    v93 = objc_msgSend_mutableCopy(v12, v18, v19, v20, v21);
    v94 = self;
    v97 = 0u;
    v98 = 0u;
    v99 = 0u;
    v100 = 0u;
    v27 = objc_msgSend_customOptions(self, v23, v24, v25, v26);
    v32 = objc_msgSend_allKeys(v27, v28, v29, v30, v31);

    v34 = objc_msgSend_countByEnumeratingWithState_objects_count_(v32, v33, &v97, v101, 16);
    if (v34)
    {
      v38 = v34;
      v39 = *v98;
      do
      {
        for (i = 0; i != v38; ++i)
        {
          if (*v98 != v39)
          {
            objc_enumerationMutation(v32);
          }

          if (objc_msgSend_isEqualToString_(*(*(&v97 + 1) + 8 * i), v35, @"OutroCanBeShortened", v36, v37))
          {
            objc_msgSend_objectForKeyedSubscript_(v12, v35, @"OutroCanBeShortened", v36, v37);
            v42 = v41 = v12;
            v47 = objc_msgSend_BOOLValue(v42, v43, v44, v45, v46);

            v52 = objc_msgSend_customOptions(v94, v48, v49, v50, v51);
            v56 = objc_msgSend_objectForKeyedSubscript_(v52, v53, @"OutroCanBeShortened", v54, v55);
            v61 = objc_msgSend_BOOLValue(v56, v57, v58, v59, v60);

            v12 = v41;
            v65 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v62, v47 & v61, v63, v64);
            objc_msgSend_setObject_forKey_(v93, v66, v65, @"OutroCanBeShortened", v67);
          }
        }

        v38 = objc_msgSend_countByEnumeratingWithState_objects_count_(v32, v35, &v97, v101, 16);
      }

      while (v38);
    }

    v22 = objc_msgSend_dictionaryWithDictionary_(MEMORY[0x277CBEAC0], v68, v93, v69, v70);

    a3 = v91;
    v9 = v92;
    self = v94;
  }

  memset(&time, 0, sizeof(time));
  objc_msgSend_naturalDuration(self, v18, v19, v20, v21);
  CMTimeMultiplyByFloat64(&time, &time1, 1.5);
  time1 = *a3;
  time2 = time;
  if (CMTimeCompare(&time1, &time2) < 0 || (objc_msgSend_objectForKeyedSubscript_(v22, v71, @"LoopSongForLongDurations", v72, v73), v74 = objc_claimAutoreleasedReturnValue(), v79 = objc_msgSend_BOOLValue(v74, v75, v76, v77, v78), v74, !v79))
  {
    time1 = *a3;
    v80 = objc_msgSend__clipPlaylistForDuration_withOptions_testingContext_(self, v71, &time1, v22, v9);
  }

  else
  {
    time1 = *a3;
    v80 = objc_msgSend__fullSongLoopedClipPlaylistForDuration_withOptions_testingContext_(self, v71, &time1, v22, v9);
  }

  v81 = v80;
  if (v80)
  {
    v82 = [FlexLegacySongRendition alloc];
    v84 = objc_msgSend_initWithSong_segments_withOptions_(v82, v83, self, v81, v22);
    objc_msgSend__destroyCache(self, v85, v86, v87, v88);
  }

  else
  {
    v84 = 0;
  }

  v89 = *MEMORY[0x277D85DE8];

  return v84;
}

- (id)_clipPlaylistForDuration:(id *)a3 withOptions:(id)a4 testingContext:(id)a5
{
  v8 = a4;
  v9 = a5;
  if ((a3->var2 & 1) != 0 && (time1 = *a3, time2 = **&MEMORY[0x277CC08F0], CMTimeCompare(&time1, &time2)))
  {
    v14 = objc_msgSend_array(MEMORY[0x277CBEB18], v10, v11, v12, v13);
    v19 = objc_msgSend_sampleRate(self, v15, v16, v17, v18);
    time1 = *a3;
    CMTimeConvertScale(&v22, &time1, v19, kCMTimeRoundingMethod_RoundHalfAwayFromZero);
    objc_msgSend__buildSegmentAssemblyList_forDuration_withOptions_testingContext_(self, v20, v14, v22.value, v8, v9);
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (BOOL)_validateStructureForRendition:(id)a3 failureReason:(id *)a4
{
  v409 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v11 = objc_msgSend_segments(v6, v7, v8, v9, v10);
  v16 = objc_msgSend_firstObject(v11, v12, v13, v14, v15);
  v384 = v16 != 0;

  if (!v16)
  {
    *a4 = @"empty playlist!";
  }

  v386 = a4;
  v21 = objc_msgSend_duration(v6, v17, v18, v19, v20);
  objc_msgSend_naturalDuration(self, v22, v23, v24, v25);
  v387 = v6;
  v385 = self;
  if (v21 == v405)
  {
    v383 = v16;
    v26 = objc_opt_new();
    obj = objc_msgSend__segmentsforType_(self, v27, 2, v28, v29);
    objc_msgSend_addObjectsFromArray_(v26, v30, obj, v31, v32);
    v403 = 0u;
    v404 = 0u;
    v401 = 0u;
    v402 = 0u;
    v37 = objc_msgSend__naturalDurationAssemblyList(self, v33, v34, v35, v36);
    v39 = objc_msgSend_countByEnumeratingWithState_objects_count_(v37, v38, &v401, v408, 16);
    if (v39)
    {
      v44 = v39;
      v45 = *v402;
      do
      {
        for (i = 0; i != v44; ++i)
        {
          if (*v402 != v45)
          {
            objc_enumerationMutation(v37);
          }

          v47 = *(*(&v401 + 1) + 8 * i);
          v48 = objc_msgSend_segment(v47, v40, v41, v42, v43);
          v53 = objc_msgSend_type(v48, v49, v50, v51, v52);

          if (v53 == 2)
          {
            v400[0] = MEMORY[0x277D85DD0];
            v400[1] = 3221225472;
            v400[2] = sub_24B80A7A0;
            v400[3] = &unk_27900F498;
            v400[4] = v47;
            v54 = objc_msgSend_indexOfObjectPassingTest_(v26, v40, v400, v42, v43);
            if (v54 == 0x7FFFFFFFFFFFFFFFLL)
            {

LABEL_41:
              v142 = 0;
              v141 = v387;
              *v386 = @"invalid default duration playlist. there's a bug in the sequencer";
              goto LABEL_86;
            }

            objc_msgSend_removeObjectAtIndex_(v26, v55, v54, v56, v57);
          }
        }

        v44 = objc_msgSend_countByEnumeratingWithState_objects_count_(v37, v40, &v401, v408, 16);
      }

      while (v44);
    }

    if (!v383 || objc_msgSend_count(v26, v58, v59, v60, v61))
    {
      goto LABEL_41;
    }
  }

  v26 = objc_opt_new();
  v396 = 0u;
  v397 = 0u;
  v398 = 0u;
  v399 = 0u;
  v66 = objc_msgSend_segments(v6, v62, v63, v64, v65);
  v68 = objc_msgSend_countByEnumeratingWithState_objects_count_(v66, v67, &v396, v407, 16);
  if (!v68)
  {
    goto LABEL_34;
  }

  v73 = v68;
  v74 = *v397;
  do
  {
    v75 = 0;
    do
    {
      if (*v397 != v74)
      {
        objc_enumerationMutation(v66);
      }

      v76 = *(*(&v396 + 1) + 8 * v75);
      v77 = objc_msgSend_segment(v76, v69, v70, v71, v72);
      if (objc_msgSend_type(v77, v78, v79, v80, v81) == 1)
      {
        goto LABEL_27;
      }

      v86 = objc_msgSend_segment(v76, v82, v83, v84, v85);
      if (objc_msgSend_type(v86, v87, v88, v89, v90) == 2)
      {
        goto LABEL_26;
      }

      v95 = objc_msgSend_segment(v76, v91, v92, v93, v94);
      if (objc_msgSend_type(v95, v96, v97, v98, v99) == 4)
      {

LABEL_26:
LABEL_27:

LABEL_28:
        objc_msgSend_addObject_(v26, v69, v76, v71, v72);
        goto LABEL_29;
      }

      v104 = objc_msgSend_segment(v76, v100, v101, v102, v103);

      if (!v104)
      {
        goto LABEL_28;
      }

LABEL_29:
      ++v75;
    }

    while (v73 != v75);
    v105 = objc_msgSend_countByEnumeratingWithState_objects_count_(v66, v69, &v396, v407, 16);
    v73 = v105;
  }

  while (v105);
LABEL_34:

  if (objc_msgSend_count(v26, v106, v107, v108, v109) == 1)
  {
    v114 = objc_msgSend_lastObject(v26, v110, v111, v112, v113);
    v119 = objc_msgSend_segment(v114, v115, v116, v117, v118);

    if (!v119)
    {
      v143 = objc_msgSend_lastObject(v26, v110, v111, v112, v113);
      v148 = objc_msgSend_duration(v143, v144, v145, v146, v147);
      if (v148 > objc_msgSend__minOutroDuration(v385, v149, v150, v151, v152))
      {
        v157 = MEMORY[0x277CCACA8];
        v158 = objc_msgSend_sampleRate(v385, v153, v154, v155, v156);
        objc_msgSend_stringWithFormat_(v157, v159, @"excessive silence: %fs - check allowed transitions, priorities and which segments are sliceable.", v160, v161, (v148 / v158));
        *v386 = v384 = 0;
      }

      goto LABEL_45;
    }
  }

  if (objc_msgSend_count(v26, v110, v111, v112, v113) != 1 || (objc_msgSend_lastObject(v26, v120, v121, v122, v123), v124 = objc_claimAutoreleasedReturnValue(), objc_msgSend_segment(v124, v125, v126, v127, v128), v129 = objc_claimAutoreleasedReturnValue(), v129, v124, !v129))
  {
LABEL_45:
    v141 = v387;
    goto LABEL_46;
  }

  v130 = objc_msgSend_lastObject(v26, v120, v121, v122, v123);
  v135 = objc_msgSend_segment(v130, v131, v132, v133, v134);
  v140 = objc_msgSend_type(v135, v136, v137, v138, v139);

  v141 = v387;
  if (v140 == 4)
  {
    v142 = 1;
    goto LABEL_87;
  }

LABEL_46:
  v394 = 0u;
  v395 = 0u;
  v392 = 0u;
  v393 = 0u;
  obj = objc_msgSend_segments(v141, v120, v121, v122, v123);
  v163 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v162, &v392, v406, 16);
  v168 = @"No outro segments\n";
  v169 = @"No intro segments\n";
  if (!v163)
  {
    v173 = 0;
    v174 = 0;
    v199 = 0;
    goto LABEL_70;
  }

  v170 = v163;
  v171 = 0;
  v172 = 0;
  v173 = 0;
  v174 = 0;
  v175 = 0;
  v176 = *v393;
  while (2)
  {
    v177 = 0;
    while (2)
    {
      if (*v393 != v176)
      {
        objc_enumerationMutation(obj);
      }

      v178 = objc_msgSend_segment(*(*(&v392 + 1) + 8 * v177), v164, v165, v166, v167);
      if (objc_msgSend_type(v178, v179, v180, v181, v182) == 1)
      {
        v173 = v171 == 0;
        if ((objc_msgSend_sliceable(v178, v183, v184, v185, v186) & 1) == 0)
        {
          ++v171;
          goto LABEL_62;
        }

        v235 = @"Intro Segments cannot be marked as sliceable";
LABEL_84:
        v142 = 0;
        v141 = v387;
        *v386 = v235;
        goto LABEL_85;
      }

      if (objc_msgSend_type(v178, v183, v184, v185, v186) == 4)
      {
        v174 = v172 == 0;
        if (objc_msgSend_sliceable(v178, v187, v188, v189, v190))
        {
          v235 = @"Outro Segments cannot be marked as sliceable";
          goto LABEL_84;
        }

        ++v172;
      }

      else if (objc_msgSend_type(v178, v187, v188, v189, v190) == 3)
      {
        if (objc_msgSend_sliceable(v178, v191, v192, v193, v194))
        {
          v235 = @"Transitions cannot be marked as sliceable";
          goto LABEL_84;
        }
      }

      else if (objc_msgSend_type(v178, v191, v192, v193, v194) == 2)
      {
        objc_msgSend_sliceable(v178, v195, v196, v197, v198);
        v175 = 1;
      }

LABEL_62:

      if (v170 != ++v177)
      {
        continue;
      }

      break;
    }

    v170 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v164, &v392, v406, 16);
    if (v170)
    {
      continue;
    }

    break;
  }

  v169 = @"No intro segments\n";
  if (v171)
  {
    v169 = @"Too many intros added\n";
  }

  v168 = @"No outro segments\n";
  if (v172)
  {
    v168 = @"Too many outros added\n";
  }

  v199 = v175;
  v141 = v387;
LABEL_70:

  if (!v384)
  {
    v142 = 0;
    goto LABEL_87;
  }

  v204 = objc_msgSend_duration(v141, v200, v201, v202, v203);
  obj = objc_msgSend_lastObject(v26, v205, v206, v207, v208);
  v213 = objc_msgSend_segment(obj, v209, v210, v211, v212);

  if (!v213)
  {
    v204 -= objc_msgSend_duration(obj, v214, v215, v216, v217);
  }

  if (v204 < objc_msgSend__minOutroDuration(v385, v214, v215, v216, v217))
  {
    if (v173)
    {
      v178 = objc_msgSend_stringByAppendingString_(&stru_285EA09B0, v218, @"intro added when we should have silence\n", v220, v221);
      goto LABEL_90;
    }

    if ((v174 | v199))
    {
      v178 = &stru_285EA09B0;
LABEL_90:
      if (v174)
      {
        v238 = objc_msgSend_stringByAppendingString_(v178, v218, @"outro added when we should have silence\n", v220, v221);

        v178 = v238;
      }

      if (v199)
      {
        v239 = objc_msgSend_stringByAppendingString_(v178, v218, @"body added when we should have silence\n", v220, v221);
        goto LABEL_106;
      }
    }

    else
    {
      v178 = objc_msgSend_firstObject(v26, v218, v219, v220, v221);
      v288 = objc_msgSend_segment(v178, v284, v285, v286, v287);
      if (v288)
      {

        v239 = &stru_285EA09B0;
LABEL_106:

        v178 = v239;
      }

      else
      {
        v362 = objc_msgSend_count(v26, v289, v290, v291, v292);

        if (v362 == 1)
        {
          v142 = 1;
          goto LABEL_86;
        }

        v178 = &stru_285EA09B0;
      }
    }

    v293 = objc_msgSend_firstObject(v26, v218, v219, v220, v221);
    v298 = objc_msgSend_segment(v293, v294, v295, v296, v297);

    if (v298)
    {
      v303 = objc_msgSend_stringByAppendingString_(v178, v299, @"unexpected first object - should be nil segment\n", v301, v302);

      v178 = v303;
    }

    if (objc_msgSend_count(v26, v299, v300, v301, v302) != 1)
    {
      objc_msgSend_stringByAppendingString_(v178, v304, @"too many playlist items - there's a bug in the playback sequencing algorithm \n", v305, v306);
      goto LABEL_111;
    }

LABEL_112:
    v308 = v178;
    v142 = 0;
    *v386 = v178;
    goto LABEL_85;
  }

  if (objc_msgSend_count(v26, v218, v219, v220, v221) == 2)
  {
    v226 = objc_msgSend_lastObject(v26, v222, v223, v224, v225);
    v231 = objc_msgSend_segment(v226, v227, v228, v229, v230);

    if (v231)
    {
      v142 = (v199 | v173) & v174;
      if ((v142 & 1) == 0)
      {
        if (v173)
        {
          v178 = &stru_285EA09B0;
        }

        else
        {
          v178 = objc_msgSend_stringByAppendingString_(&stru_285EA09B0, v232, @"intro expected but not found\n", v233, v234);
        }

        if (!v174)
        {
          v363 = objc_msgSend_stringByAppendingString_(v178, v232, @"outro expected but not found\n", v233, v234);

          v178 = v363;
        }

        if ((v199 & 1) == 0)
        {
          goto LABEL_112;
        }

        objc_msgSend_stringByAppendingString_(v178, v232, @"body added when we should have only intro and outro segments\n", v233, v234);
        v307 = LABEL_111:;

        v178 = v307;
        goto LABEL_112;
      }
    }

    else
    {
      v142 = v174 & (v199 ^ 1);
      if ((v142 & 1) == 0)
      {
        if (v174)
        {
          v178 = &stru_285EA09B0;
        }

        else
        {
          v178 = objc_msgSend_stringByAppendingString_(&stru_285EA09B0, v232, @"outro expected but not found\n", v233, v234);
        }

        if ((v199 & 1) == 0)
        {
          goto LABEL_112;
        }

        objc_msgSend_stringByAppendingString_(v178, v232, @"body added when we should have only outro and silent segments\n", v233, v234);
        goto LABEL_111;
      }
    }

LABEL_158:
    v178 = &stru_285EA09B0;
    goto LABEL_85;
  }

  if (objc_msgSend_count(v26, v222, v223, v224, v225) == 3)
  {
    if ((v199 | v173) & v174)
    {
      v244 = objc_msgSend_count(v26, v240, v241, v242, v243);
      if (v244 - 1 >= 1)
      {
        v248 = v244;
        v178 = &stru_285EA09B0;
        while (1)
        {
          v249 = objc_msgSend_objectAtIndexedSubscript_(v26, v245, --v248, v246, v247);
          v254 = objc_msgSend_segment(v249, v250, v251, v252, v253);

          if (v254)
          {
            v259 = objc_msgSend_segment(v249, v255, v256, v257, v258);
            v264 = objc_msgSend_type(v259, v260, v261, v262, v263);

            if (v264 == 4)
            {
              goto LABEL_156;
            }

            v269 = objc_msgSend_segment(v249, v265, v266, v267, v268);
            if (objc_msgSend_type(v269, v270, v271, v272, v273) == 2)
            {
              goto LABEL_159;
            }

            v278 = objc_msgSend_segment(v249, v274, v275, v276, v277);
            v283 = objc_msgSend_type(v278, v279, v280, v281, v282);

            if (v283 == 1)
            {
              goto LABEL_160;
            }
          }

          v142 = 1;
          if (v248 <= 1)
          {
            goto LABEL_85;
          }
        }
      }

      goto LABEL_157;
    }

    if (v173)
    {
      v178 = &stru_285EA09B0;
    }

    else
    {
      v178 = objc_msgSend_stringByAppendingString_(&stru_285EA09B0, v240, @"intro expected but not found\n", v242, v243);
    }

    if (!v174)
    {
      v364 = objc_msgSend_stringByAppendingString_(v178, v240, @"outro expected but not found\n", v242, v243);

      v178 = v364;
    }

    if (v199)
    {
      objc_msgSend_stringByAppendingString_(v178, v240, @"body added when we should have only intro and outro segments\n", v242, v243);
      goto LABEL_148;
    }

    goto LABEL_149;
  }

  v309 = objc_msgSend_options(v141, v240, v241, v242, v243);
  v313 = objc_msgSend_objectForKey_(v309, v310, @"LoopSongForLongDurations", v311, v312);
  v318 = objc_msgSend_BOOLValue(v313, v314, v315, v316, v317);

  if (!v318 || (memset(&v391, 0, sizeof(v391)), objc_msgSend_naturalDuration(v385, v240, v241, v242, v243), CMTimeMultiplyByFloat64(&v391, &time, 1.5), v323 = objc_msgSend_duration(v141, v319, v320, v321, v322), CMTimeMake(&time, v323, 48000), time2 = v391, CMTimeCompare(&time, &time2) < 0))
  {
    if ((v174 & v199 & 1) == 0)
    {
      if (v173)
      {
        v178 = &stru_285EA09B0;
      }

      else
      {
        v178 = objc_msgSend_stringByAppendingString_(&stru_285EA09B0, v240, v169, v242, v243);
      }

      if (!v174)
      {
        v365 = objc_msgSend_stringByAppendingString_(v178, v240, v168, v242, v243);

        v178 = v365;
      }

      if ((v199 & 1) == 0)
      {
        objc_msgSend_stringByAppendingString_(v178, v240, @"expected a body segment\n", v242, v243);
        v366 = LABEL_148:;

        v178 = v366;
      }

LABEL_149:
      if (objc_msgSend_count(v26, v240, v241, v242, v243) != 1)
      {
        goto LABEL_112;
      }

      v371 = objc_msgSend_firstObject(v26, v367, v368, v369, v370);
      v376 = objc_msgSend_segment(v371, v372, v373, v374, v375);

      if (v376)
      {
        goto LABEL_112;
      }

      objc_msgSend_stringByAppendingString_(v178, v377, @"There is a bug in the smart song or playback sequencing algorithm!\n", v378, v379);
      goto LABEL_111;
    }
  }

  v324 = objc_msgSend_count(v26, v240, v241, v242, v243);
  if (v324 - 1 < 1)
  {
LABEL_157:
    v142 = 1;
    goto LABEL_158;
  }

  v328 = v324;
  v178 = &stru_285EA09B0;
  while (2)
  {
    v249 = objc_msgSend_objectAtIndexedSubscript_(v26, v325, --v328, v326, v327);
    v333 = objc_msgSend_segment(v249, v329, v330, v331, v332);

    if (!v333)
    {
LABEL_127:

      v142 = 1;
      if (v328 <= 1)
      {
        goto LABEL_85;
      }

      continue;
    }

    break;
  }

  v338 = objc_msgSend_segment(v249, v334, v335, v336, v337);
  v343 = objc_msgSend_type(v338, v339, v340, v341, v342);

  if (v343 == 4)
  {
LABEL_156:

    goto LABEL_157;
  }

  v269 = objc_msgSend_segment(v249, v344, v345, v346, v347);
  if (objc_msgSend_type(v269, v348, v349, v350, v351) != 2)
  {
    v356 = objc_msgSend_segment(v249, v352, v353, v354, v355);
    v361 = objc_msgSend_type(v356, v357, v358, v359, v360);

    if (v361 == 1)
    {
      goto LABEL_160;
    }

    goto LABEL_127;
  }

LABEL_159:

LABEL_160:
  v178 = &stru_285EA09B0;
  objc_msgSend_stringByAppendingString_(&stru_285EA09B0, v380, @"Outro segment is not after all Intro & Body segments", v381, v382);
  *v386 = v142 = 0;
LABEL_85:

LABEL_86:
LABEL_87:

  v236 = *MEMORY[0x277D85DE8];
  return v142 & 1;
}

+ (id)outroInfoForClipPlaylist:(id)a3
{
  v3 = a3;
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = sub_24B80429C;
  v13 = sub_24B8042AC;
  v14 = 0;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = sub_24B80A924;
  v8[3] = &unk_27900F4C0;
  v8[4] = &v9;
  objc_msgSend_enumerateObjectsWithOptions_usingBlock_(v3, v4, 2, v8, v5);
  v6 = v10[5];
  _Block_object_dispose(&v9, 8);

  return v6;
}

- (BOOL)_validateTransitionsInRendition:(id)a3 failureReason:(id *)a4
{
  v4 = a3;
  v9 = objc_msgSend_segments(v4, v5, v6, v7, v8);
  v14 = objc_msgSend_count(v9, v10, v11, v12, v13);

  if (v14 >= 3)
  {
    v20 = objc_msgSend_segments(v4, v15, v16, v17, v18);
    v408 = objc_msgSend_outroInfoForClipPlaylist_(FlexSong, v21, v20, v22, v23);

    v28 = 0;
    v415 = v14 - 1;
    v29 = v14 - 2;
    v30 = 1;
    v411 = 1;
    v409 = v14;
    while (1)
    {
      v31 = objc_msgSend_segments(v4, v24, v25, v26, v27);
      v35 = objc_msgSend_objectAtIndexedSubscript_(v31, v32, v28, v33, v34);

      v40 = objc_msgSend_segment(v35, v36, v37, v38, v39);
      v45 = v40;
      if (!v40)
      {
        goto LABEL_25;
      }

      if (objc_msgSend_type(v40, v41, v42, v43, v44) != 2)
      {
        break;
      }

      if (v28 >= v415)
      {
        v61 = 0;
        objc_msgSend_name(0, v46, v47, v48, v49);
      }

      else
      {
        v419 = v45;
        v50 = v35;
        v51 = v30;
        while (1)
        {
          v52 = objc_msgSend_segments(v4, v46, v47, v48, v49);
          v56 = objc_msgSend_objectAtIndexedSubscript_(v52, v53, v51, v54, v55);

          v61 = objc_msgSend_segment(v56, v57, v58, v59, v60);
          if (objc_msgSend_type(v61, v62, v63, v64, v65) == 2 || objc_msgSend_type(v61, v66, v67, v68, v69) == 4)
          {
            break;
          }

          if (v14 == ++v51)
          {
            v61 = 0;
            goto LABEL_34;
          }
        }

LABEL_34:
        v35 = v50;
        v45 = v419;
        objc_msgSend_name(v61, v46, v47, v48, v49);
      }
      v151 = ;
      v418 = v35;
      v156 = objc_msgSend_barsUsed(v35, v152, v153, v154, v155);
      v159 = objc_msgSend_transitionToSegmentNamed_fromBarIndex_(v45, v157, v151, v156 - 1, v158);

      v416 = v159;
      v164 = objc_msgSend_prevented(v159, v160, v161, v162, v163);
      if (v61)
      {
        if (v164)
        {
          v169 = objc_msgSend_nameIndex(v45, v165, v166, v167, v168);
          v174 = objc_msgSend_nameIndex(v61, v170, v171, v172, v173);
          isEqualToString = objc_msgSend_isEqualToString_(v169, v175, v174, v176, v177);

          if (isEqualToString)
          {
            v179 = objc_msgSend_nameSuffix(v45, v165, v166, v167, v168);
            if (v179)
            {
              v180 = v179;
              v181 = objc_msgSend_nameSuffix(v61, v165, v166, v167, v168);

              if (v181)
              {
                v182 = objc_msgSend_nameSuffix(v45, v165, v166, v167, v168);
                v187 = objc_msgSend_nameSuffix(v61, v183, v184, v185, v186);
                v190 = objc_msgSend_compare_options_(v182, v188, v187, 1, v189);

                if (v190)
                {
                  if (v190 == -1)
                  {
                    v191 = objc_msgSend_nameSuffix(v45, v165, v166, v167, v168);
                    v195 = objc_msgSend_characterAtIndex_(v191, v192, 0, v193, v194);

                    v200 = objc_msgSend_nameSuffix(v61, v196, v197, v198, v199);
                    v204 = objc_msgSend_characterAtIndex_(v200, v201, 0, v202, v203);

                    if (v204 - v195 == 1)
                    {
                      v205 = objc_msgSend_name(v61, v165, v166, v167, v168);
                      v209 = objc_msgSend_linkedPerBarTransitionsToSegmentNamed_(v45, v206, v205, v207, v208);

                      if (v209)
                      {
                        v214 = objc_msgSend_bars(v61, v210, v211, v212, v213) - 1;
                      }

                      else
                      {
                        v214 = 0;
                      }

                      v35 = v418;
                      if (v214 < objc_msgSend_bars(v61, v210, v211, v212, v213))
                      {
                        while ((objc_msgSend_canTransitionFromSegment_toSegment_fromBarIndex_checkIfPrevented_(FlexSegment, v366, v45, v61, v214, 1) & 1) == 0)
                        {
                          if (++v214 >= objc_msgSend_bars(v61, v370, v371, v372, v373))
                          {
                            goto LABEL_88;
                          }
                        }

                        v411 = 1;
                        goto LABEL_74;
                      }

LABEL_88:
                      v249 = objc_msgSend_song(v4, v366, v367, v368, v369);
                      v378 = objc_msgSend_uid(v249, v374, v375, v376, v377);
                      if (objc_msgSend_isEqualToString_(v378, v379, @"89EE9F2B-CEB7-4B06-8388-D12A7BFF78A8", v380, v381))
                      {

                        v411 = 1;
                        goto LABEL_73;
                      }

                      v407 = objc_msgSend_song(v4, v382, v383, v384, v385);
                      v390 = objc_msgSend_uid(v407, v386, v387, v388, v389);
                      v414 = objc_msgSend_isEqualToString_(v390, v391, @"0B84454E-B24A-44BC-9068-F88B899EDD2F", v392, v393);

                      if (v414)
                      {
                        v411 = 1;
                        v35 = v418;
                        goto LABEL_74;
                      }

                      v398 = MEMORY[0x277CCACA8];
                      v249 = objc_msgSend_name(v45, v394, v395, v396, v397);
                      v254 = objc_msgSend_name(v61, v399, v400, v401, v402);
                      objc_msgSend_stringWithFormat_(v398, v403, @"transition from %@ to %@ should be permitted but is not. successive segments in the clipPlaylist should transition into another.", v404, v405, v249, v254);
                      *a4 = LABEL_55:;

                      v411 = 0;
LABEL_58:
                      v35 = v418;
                      goto LABEL_73;
                    }
                  }
                }

                else
                {
                  v225 = objc_msgSend_segments(v4, v165, v166, v167, v168);
                  v424[0] = MEMORY[0x277D85DD0];
                  v424[1] = 3221225472;
                  v424[2] = sub_24B80B550;
                  v424[3] = &unk_27900F450;
                  v226 = v45;
                  v425 = v226;
                  v230 = objc_msgSend_indexesOfObjectsPassingTest_(v225, v227, v424, v228, v229);

                  if (objc_msgSend_sliceable(v61, v231, v232, v233, v234))
                  {
                    objc_msgSend_count(v230, v235, v236, v237, v238);
                  }

                  else
                  {
                    v348 = objc_msgSend_sliceable(v226, v235, v236, v237, v238);
                    if (objc_msgSend_count(v230, v349, v350, v351, v352) && !v348)
                    {
                      v413 = MEMORY[0x277CCACA8];
                      v357 = objc_msgSend_name(v226, v353, v354, v355, v356);
                      v362 = objc_msgSend_name(v61, v358, v359, v360, v361);
                      *a4 = objc_msgSend_stringWithFormat_(v413, v363, @"transition from %@ to %@ should not occur. there is a problem with the playback sequencing algorithm.", v364, v365, v357, v362);

                      v411 = 0;
                      v249 = v425;
                      goto LABEL_58;
                    }
                  }
                }
              }
            }
          }
        }
      }

      v239 = v416;
      if (objc_msgSend_fadeOut(v416, v165, v166, v167, v168) < 1 || (objc_msgSend_prevented(v416, v240, v241, v242, v243) & 1) != 0)
      {
        if (objc_msgSend_fadeOut(v416, v240, v241, v242, v243) >= 1 && objc_msgSend_prevented(v416, v244, v245, v246, v247))
        {
          v248 = MEMORY[0x277CCACA8];
          v249 = objc_msgSend_name(v45, v244, v245, v246, v247);
          v254 = objc_msgSend_name(v61, v250, v251, v252, v253);
          objc_msgSend_stringWithFormat_(v248, v255, @"transition sequenced from %@ to %@ but not allowed. algorithm bug? ", v256, v257, v249, v254);
          goto LABEL_55;
        }
      }

      else
      {
        v258 = objc_msgSend_segments(v4, v240, v241, v242, v243);
        v249 = objc_msgSend_objectAtIndexedSubscript_(v258, v259, v28 + 1, v260, v261);

        v266 = objc_msgSend_segment(v249, v262, v263, v264, v265);
        v271 = objc_msgSend_type(v266, v267, v268, v269, v270);

        if (v271 == 5)
        {
          v411 = 0;
          *a4 = @"there should be no crossfade segments when using real-time crossfades.";
          goto LABEL_58;
        }

        v239 = v416;
      }

      v272 = objc_msgSend_transitionSegmentName(v239, v244, v245, v246, v247);

      if (v272)
      {
        v421 = v45;
        if (v28 + 1 >= v415)
        {
LABEL_65:
          v249 = 0;
        }

        else
        {
          v277 = 0;
          while (1)
          {
            v278 = objc_msgSend_segments(v4, v273, v274, v275, v276);
            v249 = objc_msgSend_objectAtIndexedSubscript_(v278, v279, v30 + v277, v280, v281);

            v286 = objc_msgSend_segment(v249, v282, v283, v284, v285);
            v291 = objc_msgSend_type(v286, v287, v288, v289, v290);

            if (v291 == 3)
            {
              break;
            }

            if (v29 == ++v277)
            {
              goto LABEL_65;
            }
          }
        }

        v292 = objc_msgSend_segment(v249, v273, v274, v275, v276);
        v297 = objc_msgSend_type(v292, v293, v294, v295, v296);

        if (v297 != 3)
        {
          v321 = MEMORY[0x277CCACA8];
          v322 = objc_msgSend_name(v421, v298, v299, v300, v301);
          v327 = objc_msgSend_name(v61, v323, v324, v325, v326);
          *a4 = objc_msgSend_stringWithFormat_(v321, v328, @"transition segment specified for %@ to %@ but not found", v329, v330, v322, v327);
          goto LABEL_72;
        }

        v302 = objc_msgSend_segment(v249, v298, v299, v300, v301);
        v307 = objc_msgSend_name(v302, v303, v304, v305, v306);
        v312 = objc_msgSend_transitionSegmentName(v416, v308, v309, v310, v311);
        v316 = objc_msgSend_isEqualToString_(v307, v313, v312, v314, v315);

        if ((v316 & 1) == 0)
        {
          v412 = MEMORY[0x277CCACA8];
          v322 = objc_msgSend_name(v421, v317, v318, v319, v320);
          v327 = objc_msgSend_name(v61, v331, v332, v333, v334);
          v339 = objc_msgSend_segment(v249, v335, v336, v337, v338);
          v344 = objc_msgSend_name(v339, v340, v341, v342, v343);
          *a4 = objc_msgSend_stringWithFormat_(v412, v345, @"transition segment specified for %@ to %@ but incorrect segment %@ was found instead. playback sequencing algorithm issue?", v346, v347, v322, v327, v344);

LABEL_72:
          v411 = 0;
          v14 = v409;
          v35 = v418;
          v45 = v421;
LABEL_73:

LABEL_74:
LABEL_75:
          v138 = 1;
          goto LABEL_76;
        }

        v14 = v409;
        v45 = v421;
        v239 = v416;
      }

      v138 = 0;
      v35 = v418;
LABEL_76:

LABEL_77:
      if ((v138 & 1) == 0)
      {
        ++v28;
        --v29;
        ++v30;
        if (v28 != v14)
        {
          continue;
        }
      }

      v19 = v411;
      goto LABEL_95;
    }

    if (objc_msgSend_type(v45, v46, v47, v48, v49) == 3)
    {
      v417 = v35;
      v420 = v45;
      if ((v28 - 1) < 0)
      {
LABEL_17:
        v75 = 0;
      }

      else
      {
        v70 = v28;
        while (1)
        {
          --v70;
          v71 = objc_msgSend_segments(v4, v41, v42, v43, v44);
          v75 = objc_msgSend_objectAtIndexedSubscript_(v71, v72, v70, v73, v74);

          v80 = objc_msgSend_segment(v75, v76, v77, v78, v79);
          v85 = objc_msgSend_type(v80, v81, v82, v83, v84);

          if (v85 == 2)
          {
            break;
          }

          if (v70 <= 0)
          {
            goto LABEL_17;
          }
        }
      }

      v86 = v28 + 1;
      if (v28 + 1 >= v415)
      {
LABEL_22:
        v61 = 0;
      }

      else
      {
        v87 = v29;
        while (1)
        {
          v88 = objc_msgSend_segments(v4, v41, v42, v43, v44);
          v61 = objc_msgSend_objectAtIndexedSubscript_(v88, v89, v86, v90, v91);

          v96 = objc_msgSend_segment(v61, v92, v93, v94, v95);
          v101 = objc_msgSend_type(v96, v97, v98, v99, v100);

          if (v101 == 2)
          {
            break;
          }

          ++v86;
          if (!--v87)
          {
            goto LABEL_22;
          }
        }
      }

      v102 = objc_msgSend_segment(v75, v41, v42, v43, v44);
      v107 = objc_msgSend_segment(v61, v103, v104, v105, v106);
      v112 = objc_msgSend_name(v107, v108, v109, v110, v111);
      v117 = objc_msgSend_barsUsed(v417, v113, v114, v115, v116);
      v120 = objc_msgSend_transitionToSegmentNamed_fromBarIndex_(v102, v118, v112, v117 - 1, v119);

      v125 = objc_msgSend_transitionSegmentName(v120, v121, v122, v123, v124);
      v130 = objc_msgSend_name(v420, v126, v127, v128, v129);
      LODWORD(v112) = objc_msgSend_isEqualToString_(v125, v131, v130, v132, v133);

      if (v112)
      {

        v138 = 0;
      }

      else
      {
        v215 = MEMORY[0x277CCACA8];
        v216 = objc_msgSend_segment(v75, v134, v135, v136, v137);
        v221 = objc_msgSend_name(v216, v217, v218, v219, v220);
        *a4 = objc_msgSend_stringWithFormat_(v215, v222, @"incorrect transition segment found after %@. Bug in sequencing algorithm", v223, v224, v221);

        v411 = 0;
        v138 = 1;
      }

      v14 = v409;
      v35 = v417;
      v45 = v420;
      goto LABEL_76;
    }

LABEL_25:
    v139 = v45;
    v140 = objc_msgSend_segments(v4, v41, v42, v43, v44);
    v145 = objc_msgSend_lastObject(v140, v141, v142, v143, v144);

    if (v35 != v145)
    {
      v138 = 0;
      v45 = v139;
      goto LABEL_77;
    }

    v45 = v139;
    if (v35 == v408 || (objc_msgSend_segment(v35, v146, v147, v148, v149), v150 = objc_claimAutoreleasedReturnValue(), v150, !v150))
    {
      v138 = 1;
      v411 = 1;
      goto LABEL_77;
    }

    v138 = 1;
    v61 = FlexLogForCategory(1uLL);
    if (os_log_type_enabled(v61, OS_LOG_TYPE_DEBUG))
    {
      sub_24B80E570(&buf, v423, v61);
      v411 = 0;
      goto LABEL_75;
    }

    v411 = 0;
    goto LABEL_76;
  }

  v19 = 1;
LABEL_95:

  return v19 & 1;
}

+ (BOOL)_transitionIsPossibleFromSegment:(id)a3 toSegment:(id)a4 forBodyClipPlaylist:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v13 = objc_msgSend_sortedArrayUsingComparator_(v9, v10, &unk_285EA0670, v11, v12);
  v17 = objc_msgSend_indexOfObject_(v13, v14, v7, v15, v16);
  v21 = objc_msgSend_indexOfObject_(v13, v18, v8, v19, v20);
  v26 = objc_msgSend_array(MEMORY[0x277CBEB18], v22, v23, v24, v25);
  v30 = 0;
  if (v17 != 0x7FFFFFFFFFFFFFFFLL && v21 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v100 = v9;
    if (v17 >= v21)
    {
      if (v17 > v21)
      {
        v66 = v26;
        v67 = v17 - 1;
        while (1)
        {
          v68 = v67 - 1;
          if (v67 < 1)
          {
            break;
          }

          v69 = objc_msgSend_objectAtIndexedSubscript_(v13, v27, v67, v28, v29);
          v74 = objc_msgSend_name(v7, v70, v71, v72, v73);
          v79 = objc_msgSend_name(v69, v75, v76, v77, v78);
          v82 = objc_msgSend_compare_options_(v74, v80, v79, 65, v81);

          v87 = objc_msgSend_name(v8, v83, v84, v85, v86);
          v92 = objc_msgSend_name(v69, v88, v89, v90, v91);
          v95 = objc_msgSend_compare_options_(v87, v93, v92, 65, v94);

          v67 = v68;
          if (v82 == -1)
          {
            v67 = v68;
            if (v95 == 1)
            {
              v64 = 0;
              v65 = v66;
              goto LABEL_21;
            }
          }
        }

        v65 = v66;
        v26 = v66;
      }

      else
      {
        v65 = v26;
      }

      objc_msgSend_addObject_(v26, v27, v8, v28, v29);
      v64 = 1;
    }

    else
    {
      v101 = v26;
      v31 = 0;
      v32 = v17 + 1;
      do
      {
        v33 = objc_msgSend_objectAtIndexedSubscript_(v13, v27, v32, v28, v29);
        v38 = objc_msgSend_name(v7, v34, v35, v36, v37);
        v43 = objc_msgSend_name(v33, v39, v40, v41, v42);
        v46 = objc_msgSend_compare_options_(v38, v44, v43, 65, v45);

        if (v46 == -1)
        {
          if (!v31)
          {
            v31 = v33;
          }

          v51 = objc_msgSend_name(v31, v47, v48, v49, v50);
          v56 = objc_msgSend_name(v33, v52, v53, v54, v55);
          v59 = objc_msgSend_compare_options_(v51, v57, v56, 65, v58);

          if (v59 <= 1)
          {
            v60 = v33;

            objc_msgSend_addObject_(v101, v61, v60, v62, v63);
            v31 = v60;
          }
        }

        ++v32;
      }

      while (v32 <= v21);

      v64 = 1;
      v65 = v101;
    }

LABEL_21:
    v102[0] = MEMORY[0x277D85DD0];
    v102[1] = 3221225472;
    v102[2] = sub_24B80B9C0;
    v102[3] = &unk_27900F498;
    v103 = v8;
    if (objc_msgSend_indexOfObjectPassingTest_(v65, v96, v102, v97, v98) == 0x7FFFFFFFFFFFFFFFLL)
    {
      v30 = 0;
    }

    else
    {
      v30 = v64;
    }

    v9 = v100;
    v26 = v65;
  }

  return v30;
}

- (BOOL)_validateAuthoringIssuesInRendition:(id)a3 failureReason:(id *)a4
{
  v168 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v10 = objc_msgSend_segments(v5, v6, v7, v8, v9);
  v15 = objc_msgSend_firstObject(v10, v11, v12, v13, v14);
  v16 = v15 != 0;

  if (!v15)
  {
    *a4 = @"empty playlist!";
  }

  v21 = objc_msgSend_segments(v5, v17, v18, v19, v20);
  v26 = objc_msgSend_firstObject(v21, v22, v23, v24, v25);

  v31 = objc_msgSend_segment(v26, v27, v28, v29, v30);
  v36 = v31;
  if (v31)
  {
    v37 = objc_msgSend_sampleRate(v31, v32, v33, v34, v35);
  }

  else
  {
    v37 = -1;
  }

  v38 = objc_msgSend_segments(v5, v32, v33, v34, v35);
  v43 = objc_msgSend_count(v38, v39, v40, v41, v42);

  if (v36 || v43 != 1)
  {
    v160 = v26;
    v161 = v5;
    v162 = a4;
    v165 = 0u;
    v166 = 0u;
    v163 = 0u;
    v164 = 0u;
    v48 = objc_msgSend_segments(v5, v44, v45, v46, v47);
    v50 = objc_msgSend_countByEnumeratingWithState_objects_count_(v48, v49, &v163, v167, 16);
    if (!v50)
    {
      goto LABEL_45;
    }

    v55 = v50;
    v56 = *v164;
    while (1)
    {
      v57 = 0;
      do
      {
        if (*v164 != v56)
        {
          objc_enumerationMutation(v48);
        }

        v58 = objc_msgSend_segment(*(*(&v163 + 1) + 8 * v57), v51, v52, v53, v54);
        v63 = v58;
        if (!v58)
        {
          goto LABEL_33;
        }

        if (objc_msgSend_samplesPerBar(v58, v59, v60, v61, v62) == -1)
        {
          v68 = objc_msgSend_customBarMarkers(v63, v64, v65, v66, v67);
          v73 = objc_msgSend_count(v68, v69, v70, v71, v72);

          if (!v73)
          {
            v147 = MEMORY[0x277CCACA8];
            v155 = objc_msgSend_name(v63, v74, v75, v76, v77);
            objc_msgSend_stringWithFormat_(v147, v148, @"samplesPerBar is -1, customBarMarkers.count should be > 0 please fix %@", v149, v150, v155);
            goto LABEL_44;
          }

          v78 = objc_msgSend_customBarMarkers(v63, v74, v75, v76, v77);
          v83 = objc_msgSend_count(v78, v79, v80, v81, v82);
          v88 = objc_msgSend_bars(v63, v84, v85, v86, v87);

          if (v83 != v88)
          {
            v151 = MEMORY[0x277CCACA8];
            v155 = objc_msgSend_name(v63, v89, v90, v91, v92);
            v159 = v155;
            v156 = @"samplesPerBar is -1, customBarMarkers.count should equal segment.bars please fix %@";
            goto LABEL_43;
          }

          v93 = objc_msgSend_customBarMarkers(v63, v89, v90, v91, v92);
          v98 = objc_msgSend_count(v93, v94, v95, v96, v97);

          if (v98)
          {
            v103 = 0;
            while (1)
            {
              v104 = objc_msgSend_barDurationForBarIndex_(v63, v99, v103, v101, v102);
              if (v104 >= objc_msgSend_sampleCount(v63, v105, v106, v107, v108))
              {
                break;
              }

              ++v103;
              v113 = objc_msgSend_customBarMarkers(v63, v109, v110, v111, v112);
              v118 = objc_msgSend_count(v113, v114, v115, v116, v117);

              if (v103 >= v118)
              {
                goto LABEL_27;
              }
            }

            v141 = MEMORY[0x277CCACA8];
            v142 = objc_msgSend_name(v63, v109, v110, v111, v112);
            *v162 = objc_msgSend_stringWithFormat_(v141, v143, @"custom barDuration should be less than sampleCount. please fix %@", v144, v145, v142);

            v16 = 0;
            goto LABEL_33;
          }

          goto LABEL_27;
        }

        if (objc_msgSend_bars(v63, v64, v65, v66, v67) >= 2)
        {
          v123 = objc_msgSend_samplesPerBar(v63, v119, v120, v121, v122);
          if (v123 >= objc_msgSend_sampleCount(v63, v124, v125, v126, v127))
          {
            v151 = MEMORY[0x277CCACA8];
            v155 = objc_msgSend_name(v63, v99, v100, v101, v102);
            v159 = v155;
            v156 = @"samplesPerBar should be less than sampleCount if we have more than one bar. please fix %@";
            goto LABEL_43;
          }

LABEL_27:
          v16 = 1;
          goto LABEL_28;
        }

        if (objc_msgSend_bars(v63, v119, v120, v121, v122) == 1)
        {
          v132 = objc_msgSend_samplesPerBar(v63, v128, v129, v130, v131);
          if (v132 != objc_msgSend_sampleCount(v63, v133, v134, v135, v136))
          {
            v151 = MEMORY[0x277CCACA8];
            v155 = objc_msgSend_name(v63, v99, v100, v101, v102);
            v159 = v155;
            v156 = @"samplesPerBar should equal sampleCount if we only have one bar. please fix %@";
LABEL_43:
            objc_msgSend_stringWithFormat_(v151, v152, v156, v153, v154, v159);
            *v162 = LABEL_44:;

            v16 = 0;
            goto LABEL_45;
          }

          goto LABEL_27;
        }

        if (!objc_msgSend_bars(v63, v128, v129, v130, v131))
        {
          v151 = MEMORY[0x277CCACA8];
          v155 = objc_msgSend_name(v63, v99, v100, v101, v102);
          v159 = v155;
          v156 = @"samplesPerBar should not be 0. please fix %@";
          goto LABEL_43;
        }

LABEL_28:
        if (v16 && v37 >= 1)
        {
          if (objc_msgSend_sampleRate(v63, v99, v100, v101, v102) != v37)
          {
            v151 = MEMORY[0x277CCACA8];
            v155 = objc_msgSend_name(v63, v137, v138, v139, v140);
            v159 = v155;
            v156 = @"sample rates must be the same for all segments. please fix %@";
            goto LABEL_43;
          }

          v16 = 1;
        }

LABEL_33:

        ++v57;
      }

      while (v57 != v55);
      v146 = objc_msgSend_countByEnumeratingWithState_objects_count_(v48, v51, &v163, v167, 16);
      v55 = v146;
      if (!v146)
      {
LABEL_45:

        v26 = v160;
        v5 = v161;
        break;
      }
    }
  }

  v157 = *MEMORY[0x277D85DE8];
  return v16;
}

- (int64_t)_samplesForDuration:(id *)a3
{
  v6 = objc_msgSend_sampleRate(self, a2, a3, v3, v4);
  v8 = *a3;
  CMTimeConvertScale(&v9, &v8, v6, kCMTimeRoundingMethod_RoundHalfAwayFromZero);
  return v9.value;
}

- (BOOL)verifyRendition:(id)a3 forDuration:(id *)a4 failureReason:(id *)a5
{
  v8 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = v8;
    v58.receiver = self;
    v58.super_class = FlexSong;
    v56 = *&a4->var0;
    var3 = a4->var3;
    if (![(FlexSongBackend *)&v58 verifyRendition:v9 forDuration:&v56 failureReason:a5])
    {
      goto LABEL_9;
    }

    v14 = objc_msgSend_segments(v9, v10, v11, v12, v13);

    if (!v14)
    {
      v36 = 0;
      *a5 = @"no playlist! The playback algorithm could not generate a playlist for this duration or there is an issue with the authoring tool";
      goto LABEL_12;
    }

    v56 = *&a4->var0;
    var3 = a4->var3;
    v18 = objc_msgSend__samplesForDuration_(self, v15, &v56, v16, v17);
    v23 = objc_msgSend_segments(v9, v19, v20, v21, v22);
    v27 = objc_msgSend__sampleDurationOfClipPlaylist_(self, v24, v23, v25, v26);

    if (v18 != v27)
    {
      v45 = MEMORY[0x277CCACA8];
      v46 = v18 / objc_msgSend_sampleRate(self, v28, v29, v30, v31);
      v51 = objc_msgSend_sampleRate(self, v47, v48, v49, v50);
      objc_msgSend_stringWithFormat_(v45, v52, @"expected duration (%.2fs, %lld) does not match duration (%.2fs, %lld) of clipPlaylist! Possibly no valid intro or outro valid for this duration?", v53, v54, *&v46, v18, v27 / v51, v27);
      *a5 = v36 = 0;
      goto LABEL_12;
    }

    if (objc_msgSend__validateAuthoringIssuesInRendition_failureReason_(self, v28, v9, a5, v31) && objc_msgSend__validateStructureForRendition_failureReason_(self, v32, v9, a5, v33))
    {
      v36 = objc_msgSend__validateTransitionsInRendition_failureReason_(self, v34, v9, a5, v35);
    }

    else
    {
LABEL_9:
      v36 = 0;
    }

LABEL_12:

    goto LABEL_13;
  }

  v37 = MEMORY[0x277CCACA8];
  v38 = objc_opt_class();
  v39 = NSStringFromClass(v38);
  v40 = objc_opt_class();
  v41 = NSStringFromClass(v40);
  *a5 = objc_msgSend_stringWithFormat_(v37, v42, @"Expected a %@ class but found a %@", v43, v44, v39, v41);

  v36 = 0;
LABEL_13:

  return v36;
}

- (BOOL)_verifyAssetsForSegment:(id)a3 withFailureReason:(id *)a4
{
  v180[1] = *MEMORY[0x277D85DE8];
  v10 = a3;
  if (v10)
  {
    v11 = objc_msgSend_assetProvider(self, v6, v7, v8, v9);
    v15 = objc_msgSend_urlToAudioForSegment_(v11, v12, v10, v13, v14);

    if (v15)
    {
      v176 = 0;
      v20 = objc_msgSend_defaultManager(MEMORY[0x277CCAA00], v16, v17, v18, v19);
      v25 = objc_msgSend_path(v15, v21, v22, v23, v24);
      isDirectory = objc_msgSend_fileExistsAtPath_isDirectory_(v20, v26, v25, &v176, v27);
      v29 = v176;

      if (isDirectory && (v29 & 1) == 0)
      {
        v34 = objc_msgSend_path(v15, v30, v31, v32, v33);
        v38 = objc_msgSend_readInfoFromAudioFileAtPath_(FlexSegment, v35, v34, v36, v37);

        if (v38)
        {
          v43 = objc_msgSend_sampleRate(v10, v39, v40, v41, v42);
          if (v43 == objc_msgSend_sampleRate(v38, v44, v45, v46, v47))
          {
            v52 = objc_msgSend_sampleCount(v10, v48, v49, v50, v51);
            if (v52 == objc_msgSend_sampleCount(v38, v53, v54, v55, v56))
            {
              goto LABEL_12;
            }

            v61 = objc_msgSend_sampleCount(v10, v57, v58, v59, v60);
            if (v61 == objc_msgSend_sampleCount(v38, v62, v63, v64, v65) - 1)
            {
              v70 = FlexLogForCategory(1uLL);
              if (os_log_type_enabled(v70, OS_LOG_TYPE_DEBUG))
              {
                sub_24B80E5B0(v15, v10, v70, v71, v72);
              }

LABEL_12:
              v73 = MEMORY[0x277CE6650];
              v179 = *MEMORY[0x277CE6240];
              v180[0] = MEMORY[0x277CBEC38];
              v74 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v57, v180, &v179, 1);
              v77 = objc_msgSend_URLAssetWithURL_options_(v73, v75, v15, v74, v76);

              v78 = dispatch_semaphore_create(0);
              v174[0] = MEMORY[0x277D85DD0];
              v174[1] = 3221225472;
              v174[2] = sub_24B80C72C;
              v174[3] = &unk_27900E970;
              v79 = v78;
              v175 = v79;
              objc_msgSend_loadValuesAsynchronouslyForKeys_completionHandler_(v77, v80, &unk_285EA8748, v174, v81);
              v82 = dispatch_time(0, 20000000000);
              if (dispatch_semaphore_wait(v79, v82))
              {
                if (a4)
                {
                  v87 = MEMORY[0x277CCACA8];
                  v88 = objc_msgSend_lastPathComponent(v15, v83, v84, v85, v86);
                  *a4 = objc_msgSend_stringWithFormat_(v87, v89, @"Timed out waiting for %@ to load", v90, v91, v88);
                }

                goto LABEL_15;
              }

              memset(&v173, 0, sizeof(v173));
              if (v77)
              {
                objc_msgSend_duration(v77, v83, v84, v85, v86);
              }

              else
              {
                memset(&time, 0, sizeof(time));
              }

              v133 = objc_msgSend_sampleRate(v10, v83, v84, v85, v86);
              v92 = 1;
              CMTimeConvertScale(&v173, &time, v133, kCMTimeRoundingMethod_RoundHalfAwayFromZero);
              v138 = objc_msgSend_sampleCount(v10, v134, v135, v136, v137);
              if (v138 == v173.value)
              {
                goto LABEL_40;
              }

              v143 = objc_msgSend_sampleCount(v10, v139, v140, v141, v142);
              v92 = v143 == v173.value - 1;
              if (v143 == v173.value - 1)
              {
                v148 = FlexLogForCategory(1uLL);
                if (os_log_type_enabled(v148, OS_LOG_TYPE_DEBUG))
                {
                  v153 = objc_msgSend_lastPathComponent(v15, v149, v150, v151, v152);
                  value = v173.value;
                  v159 = objc_msgSend_sampleCount(v10, v155, v156, v157, v158);
                  LODWORD(time.value) = 138412802;
                  *(&time.value + 4) = v153;
                  LOWORD(time.flags) = 2048;
                  *(&time.flags + 2) = value;
                  HIWORD(time.epoch) = 2048;
                  v178 = v159;
                  _os_log_debug_impl(&dword_24B7E5000, v148, OS_LOG_TYPE_DEBUG, "%@: asset.duration %lld is 1 sample longer than segment.sampleCount %lld", &time, 0x20u);
                }
              }

              else
              {
                if (!a4)
                {
LABEL_15:
                  v92 = 0;
LABEL_40:

                  goto LABEL_41;
                }

                v160 = MEMORY[0x277CCACA8];
                v148 = objc_msgSend_lastPathComponent(v15, v144, v145, v146, v147);
                v161 = v173.value;
                v166 = objc_msgSend_sampleCount(v10, v162, v163, v164, v165);
                *a4 = objc_msgSend_stringWithFormat_(v160, v167, @"%@: asset.duration (%lld) does not match segment.sampleCount (%lld)", v168, v169, v148, v161, v166);
              }

              goto LABEL_40;
            }

            if (a4)
            {
              v120 = MEMORY[0x277CCACA8];
              v77 = objc_msgSend_lastPathComponent(v15, v66, v67, v68, v69);
              v125 = objc_msgSend_sampleCount(v38, v121, v122, v123, v124);
              v172 = objc_msgSend_sampleCount(v10, v126, v127, v128, v129);
              objc_msgSend_stringWithFormat_(v120, v130, @"%@: kExtAudioFileProperty_FileLengthFrames (%lld) does not match segment.sampleCount (%lld)", v131, v132, v77, v125, v172);
              goto LABEL_26;
            }

            goto LABEL_31;
          }

          if (a4)
          {
            v106 = MEMORY[0x277CCACA8];
            v107 = objc_msgSend_sampleRate(v38, v48, v49, v50, v51);
            v112 = objc_msgSend_sampleRate(v10, v108, v109, v110, v111);
            v77 = objc_msgSend_lastPathComponent(v15, v113, v114, v115, v116);
            objc_msgSend_stringWithFormat_(v106, v117, @"audio file sample rate (%ld) does not match sample rate (%ld) of %@", v118, v119, v107, v112, v77);
            goto LABEL_26;
          }
        }

        else if (a4)
        {
          v102 = MEMORY[0x277CCACA8];
          v77 = objc_msgSend_path(v15, v39, v40, v41, v42);
          objc_msgSend_stringWithFormat_(v102, v103, @"could not read info for audio file: %@", v104, v105, v77);
LABEL_26:
          *a4 = v92 = 0;
LABEL_41:

          goto LABEL_42;
        }

LABEL_31:
        v92 = 0;
        goto LABEL_42;
      }

      if (a4)
      {
        v98 = MEMORY[0x277CCACA8];
        v38 = objc_msgSend_name(v10, v30, v31, v32, v33);
        objc_msgSend_stringWithFormat_(v98, v99, @"audio file does not exist for segment %@", v100, v101, v38);
        *a4 = v92 = 0;
LABEL_42:

        goto LABEL_43;
      }
    }

    else if (a4)
    {
      v93 = MEMORY[0x277CCACA8];
      v94 = objc_msgSend_name(v10, v16, v17, v18, v19);
      *a4 = objc_msgSend_stringWithFormat_(v93, v95, @"could not determine url for segment %@", v96, v97, v94);
    }

    v92 = 0;
LABEL_43:

    goto LABEL_44;
  }

  v92 = 1;
LABEL_44:

  v170 = *MEMORY[0x277D85DE8];
  return v92;
}

- (BOOL)verifyAssetsWithFailureReason:(id *)a3
{
  v36 = *MEMORY[0x277D85DE8];
  v11 = objc_msgSend__metadataDictFromCache(self, a2, a3, v3, v4);
  if (!v11)
  {
    v12 = FlexLogForCategory(0);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_24B7E5000, v12, OS_LOG_TYPE_DEFAULT, "flex: missing metadataDict!", buf, 2u);
    }
  }

  v17 = objc_msgSend__decodedMainSegmentsFromCache(self, v7, v8, v9, v10);
  if (!v17)
  {
    v18 = FlexLogForCategory(0);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_24B7E5000, v18, OS_LOG_TYPE_DEFAULT, "flex: missing decodedMainSegments!", buf, 2u);
    }
  }

  objc_msgSend__destroyCache(self, v13, v14, v15, v16);
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v19 = v17;
  v21 = objc_msgSend_countByEnumeratingWithState_objects_count_(v19, v20, &v30, v35, 16);
  if (v21)
  {
    v24 = v21;
    v25 = *v31;
    while (2)
    {
      for (i = 0; i != v24; ++i)
      {
        if (*v31 != v25)
        {
          objc_enumerationMutation(v19);
        }

        if (!objc_msgSend__verifyAssetsForSegment_withFailureReason_(self, v22, *(*(&v30 + 1) + 8 * i), a3, v23, v30))
        {
          v27 = 0;
          goto LABEL_19;
        }
      }

      v24 = objc_msgSend_countByEnumeratingWithState_objects_count_(v19, v22, &v30, v35, 16);
      if (v24)
      {
        continue;
      }

      break;
    }
  }

  v27 = 1;
LABEL_19:

  v28 = *MEMORY[0x277D85DE8];
  return v27;
}

- (id)timedMetadataItemsWithIdentifier:(id)a3 forRendition:(id)a4
{
  v725 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  objc_opt_class();
  v636 = v7;
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v401 = MEMORY[0x277CBEBF8];
    goto LABEL_160;
  }

  v637 = v7;
  v12 = objc_msgSend_array(MEMORY[0x277CBEB18], v8, v9, v10, v11);
  v646 = v6;
  v680 = self;
  v681 = v12;
  if ((objc_msgSend_isEqualToString_(v6, v13, @"FMTimedMetadataIdentifierSection", v14, v15) & 1) != 0 || objc_msgSend_isEqualToString_(v6, v16, @"FMTimedMetadataIdentifierSegment", v17, v18))
  {
    isEqualToString = objc_msgSend_isEqualToString_(v6, v16, @"FMTimedMetadataIdentifierSection", v17, v18);
    v24 = objc_msgSend_segments(v637, v20, v21, v22, v23);
    v640 = objc_msgSend_lastObject(v24, v25, v26, v27, v28);

    v713 = 0u;
    v714 = 0u;
    v711 = 0u;
    v712 = 0u;
    v33 = objc_msgSend_segments(v637, v29, v30, v31, v32);
    v642 = objc_msgSend_countByEnumeratingWithState_objects_count_(v33, v34, &v711, v724, 16);
    if (!v642)
    {
      goto LABEL_116;
    }

    v649 = 0;
    v39 = 0;
    v40 = 0;
    v641 = *v712;
    if (isEqualToString)
    {
      v41 = @"SILENCE";
    }

    else
    {
      v41 = @"silence";
    }

    v638 = v41;
    v42 = 0x27900E000uLL;
    v647 = isEqualToString;
    obj = v33;
    while (1)
    {
      v43 = 0;
      v44 = v39;
      do
      {
        if (*v712 != v641)
        {
          objc_enumerationMutation(obj);
        }

        v45 = *(*(&v711 + 1) + 8 * v43);
        v46 = objc_msgSend_segment(v45, v35, v36, v37, v38);
        v51 = v46;
        v659 = v44;
        v677 = v45;
        if (!v46)
        {
          v61 = v638;
          if (isEqualToString)
          {
            v66 = 0;
            v67 = 0;
            v673 = 0;
            v68 = 0;
            v653 = 0;
            v656 = 0;
            v651 = 0;
            v663 = 0;
            v69 = @"SILENCE";
            v666 = @"SILENCE";
            v668 = 0;
          }

          else
          {
            v651 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v62, 1, v64, v65);
            v653 = 0;
            v66 = 0;
            v67 = 0;
            v673 = 0;
            v68 = 0;
            v656 = 0;
            v663 = 0;
            v666 = @"SILENCE";
            v668 = 0;
            v69 = @"silence";
          }

          v670 = v69;
          goto LABEL_52;
        }

        if (objc_msgSend_type(v46, v47, v48, v49, v50) == 1 || objc_msgSend_type(v51, v52, v53, v54, v55) == 4 || objc_msgSend_type(v51, v52, v53, v54, v55) == 3)
        {
          if (isEqualToString)
          {
            v56 = *(v42 + 1728);
            v57 = objc_msgSend_type(v51, v52, v53, v54, v55);
            objc_msgSend_longLabelForSegmentType_(v56, v58, v57, v59, v60);
          }

          else
          {
            objc_msgSend_name(v51, v52, v53, v54, v55);
          }
          v670 = ;

          v70 = *(v42 + 1728);
          v75 = objc_msgSend_type(v51, v71, v72, v73, v74);
          v666 = objc_msgSend_longLabelForSegmentType_(v70, v76, v75, v77, v78);
          if (objc_msgSend_type(v51, v79, v80, v81, v82) == 4)
          {
            v87 = objc_msgSend_offset(v45, v83, v84, v85, v86);
            v88 = v45;
            v89 = v87;
            v94 = objc_msgSend_duration(v88, v90, v91, v92, v93);
            v99 = objc_msgSend_sampleCount(v51, v95, v96, v97, v98);
            v104 = objc_msgSend_markers(v51, v100, v101, v102, v103);
            v108 = objc_msgSend_objectForKey_(v104, v105, @"OUTRO_STINGER", v106, v107);

            if (!v108 || (v113 = objc_msgSend_integerValue(v108, v109, v110, v111, v112), v113 < 0))
            {
              v115 = 0;
            }

            else
            {
              v114 = v113;
              if (v113 >= objc_msgSend_sampleCount(v51, v109, v110, v111, v112))
              {
                v115 = 0;
              }

              else
              {
                v115 = v114;
              }
            }

            v116 = v94 + v89;
            v117 = v40 - objc_msgSend_offset(v677, v109, v110, v111, v112);
            v668 = objc_msgSend_numberWithLongLong_(MEMORY[0x277CCABB0], v118, v117 + v115, v119, v120);
            if (v116 >= v99)
            {
              v673 = 0;
              self = v680;
              isEqualToString = v647;
            }

            else
            {
              v125 = objc_msgSend_options(v637, v121, v122, v123, v124);
              MaxLengthInSamplesToReserveForOutroSegment_withOptions = objc_msgSend__findMaxLengthInSamplesToReserveForOutroSegment_withOptions_(FlexSong, v126, v51, v125, v127);

              v135 = objc_msgSend_options(v637, v129, v130, v131, v132);
              if (MaxLengthInSamplesToReserveForOutroSegment_withOptions < 1)
              {
                EarlyFadeStartOffsetInSamplesForOutroSegment_withOptions = objc_msgSend__findEarlyFadeStartOffsetInSamplesForOutroSegment_withOptions_(FlexSong, v133, v51, v135, v134);
              }

              else
              {
                MinLengthInSamplesForEarlyFadeOutForOutroSegment_withOptions = objc_msgSend__findMinLengthInSamplesForEarlyFadeOutForOutroSegment_withOptions_(FlexSong, v133, v51, v135, v134);

                v141 = objc_msgSend_offset(v677, v137, v138, v139, v140);
                EarlyFadeStartOffsetInSamplesForOutroSegment_withOptions = v141 - MinLengthInSamplesForEarlyFadeOutForOutroSegment_withOptions + objc_msgSend_duration(v677, v142, v143, v144, v145);
              }

              v175 = EarlyFadeStartOffsetInSamplesForOutroSegment_withOptions & ~(EarlyFadeStartOffsetInSamplesForOutroSegment_withOptions >> 63);
              v673 = objc_msgSend_numberWithLongLong_(MEMORY[0x277CCABB0], v146, v175 + v117, v147, v148);
              isEqualToString = v647;
              if (v115 >= v175)
              {
                v179 = objc_msgSend_numberWithLongLong_(MEMORY[0x277CCABB0], v176, v117, v177, v178);

                v668 = v179;
              }

              self = v680;
            }

            v45 = v677;
          }

          else
          {
            v673 = 0;
            v668 = 0;
          }

          v653 = 0;
          v656 = 0;
          v663 = 0;
        }

        else
        {
          if (objc_msgSend_type(v51, v52, v53, v54, v55) != 2)
          {
            objc_msgSend_type(v51, v150, v151, v152, v153);
LABEL_109:
            v670 = 0;
            v673 = 0;
            v666 = 0;
            v668 = 0;
            v653 = 0;
            v656 = 0;
            v663 = 0;
            v180 = 0;
            goto LABEL_46;
          }

          if (isEqualToString)
          {
            v154 = objc_msgSend_nameIndex(v51, v150, v151, v152, v153);

            if (v154 == v649)
            {
              goto LABEL_109;
            }

            v156 = MEMORY[0x277CCACA8];
            v157 = *(v42 + 1728);
            v158 = objc_msgSend_type(v51, v83, v155, v85, v86);
            v162 = objc_msgSend_longLabelForSegmentType_(v157, v159, v158, v160, v161);
            v167 = objc_msgSend_nameIndex(v51, v163, v164, v165, v166);
            v670 = objc_msgSend_stringWithFormat_(v156, v168, @"%@ %@", v169, v170, v162, v167);

            isEqualToString = v647;
          }

          else
          {
            v670 = objc_msgSend_name(v51, v150, v151, v152, v153);
          }

          v289 = *(v42 + 1728);
          v290 = objc_msgSend_type(v51, v171, v172, v173, v174);
          v666 = objc_msgSend_longLabelForSegmentType_(v289, v291, v290, v292, v293);
          v294 = MEMORY[0x277CCABB0];
          v299 = objc_msgSend_nameIndex(v51, v295, v296, v297, v298);
          v304 = objc_msgSend_intValue(v299, v300, v301, v302, v303);
          v663 = objc_msgSend_numberWithInt_(v294, v305, v304, v306, v307);

          v308 = MEMORY[0x277CCABB0];
          v45 = v677;
          v313 = objc_msgSend_barsUsed(v677, v309, v310, v311, v312);
          v656 = objc_msgSend_numberWithInteger_(v308, v314, v313, v315, v316);
          if (isEqualToString)
          {
            v673 = 0;
            v668 = 0;
            v653 = 0;
          }

          else
          {
            v653 = objc_msgSend_nameSuffix(v51, v83, v317, v85, v86);
            v673 = 0;
            v668 = 0;
          }
        }

        v180 = 1;
LABEL_46:
        v67 = objc_msgSend_metadataValueForKey_(v51, v83, @"PeakValue", v85, v86);
        v66 = objc_msgSend_metadataValueForKey_(v51, v181, @"Loudness", v182, v183);
        if (!v180)
        {
          v68 = 0;
          v651 = 0;
          goto LABEL_101;
        }

        if (isEqualToString)
        {
          v68 = 0;
          v651 = 0;
        }

        else
        {
          v184 = MEMORY[0x277CCABB0];
          v185 = objc_msgSend_priority(v51, v62, v63, v64, v65);
          v651 = objc_msgSend_numberWithInteger_(v184, v186, v185, v187, v188);
          v193 = objc_msgSend_analysisData(self, v189, v190, v191, v192);
          v197 = objc_msgSend_objectForKeyedSubscript_(v193, v194, @"energy", v195, v196);
          v68 = objc_msgSend_objectForKey_(v197, v198, v670, v199, v200);

          isEqualToString = v647;
        }

        v44 = v659;
LABEL_52:
        v201 = v40;
        if (v44)
        {
          v201 = v40 - objc_msgSend_duration(v44, v62, v63, v64, v65);
        }

        memset(&rhs, 0, sizeof(rhs));
        if (v677 == v640)
        {
          v206 = objc_msgSend_duration(v677, v62, v63, v64, v65);
          if (v44)
          {
            v206 += objc_msgSend_duration(v44, v202, v203, v204, v205);
          }

          v207 = objc_msgSend_sampleRate(self, v202, v203, v204, v205);
          CMTimeMake(&rhs, v206, v207);
          isEqualToString = v647;
        }

        else
        {
          rhs = **&MEMORY[0x277CC08F0];
        }

        memset(&v709, 0, sizeof(v709));
        v208 = objc_msgSend_sampleRate(self, v62, v63, v64, v65);
        CMTimeMake(&start.start, v201, v208);
        duration = rhs;
        CMTimeRangeMake(&v709, &start.start, &duration);
        v213 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], v209, v210, v211, v212);
        v217 = v213;
        if (isEqualToString)
        {
          if (v666)
          {
            objc_msgSend_setObject_forKey_(v213, v214, v666, @"SectionType", v216);
          }

          if (v663)
          {
            objc_msgSend_setObject_forKey_(v217, v214, v663, @"BodyNumber", v216);
          }

          if (v668)
          {
            objc_msgSend_setObject_forKey_(v217, v214, v668, @"OutroStinger", v216);
          }

          if (v673)
          {
            objc_msgSend_setObject_forKey_(v217, v214, v673, @"OutroEarlyFade", v216);
          }
        }

        else
        {
          if (v666)
          {
            objc_msgSend_setObject_forKey_(v213, v214, v666, @"SegmentType", v216);
          }

          if (v651)
          {
            objc_msgSend_setObject_forKey_(v217, v214, v651, @"Priority", v216);
          }

          if (v663)
          {
            objc_msgSend_setObject_forKey_(v217, v214, v663, @"BodyNumber", v216);
          }

          if (v653)
          {
            objc_msgSend_setObject_forKey_(v217, v214, v653, @"BodyLetter", v216);
          }

          if (v656)
          {
            objc_msgSend_setObject_forKey_(v217, v214, v656, @"BarsUsed", v216);
          }

          if (v68)
          {
            objc_msgSend_setObject_forKey_(v217, v214, v68, @"Energy", v216);
          }

          v218 = v668;
          if (v668)
          {
            objc_msgSend_setObject_forKey_(v217, v214, v668, @"OutroStinger", v216);
          }

          if (v673)
          {
            objc_msgSend_setObject_forKey_(v217, v214, v673, @"OutroEarlyFade", v216);
          }

          if (v44)
          {
            v219 = objc_msgSend_segment(v44, v214, v218, v215, v216);
            v223 = objc_msgSend_metadataValueForKey_(v219, v220, @"PeakValue", v221, v222);

            v228 = objc_msgSend_segment(v44, v224, v225, v226, v227);
            v232 = objc_msgSend_metadataValueForKey_(v228, v229, @"Loudness", v230, v231);

            if (v223)
            {
              if (v67)
              {
                v237 = v67;
                objc_msgSend_doubleValue(v223, v233, v234, v235, v236);
                v239 = v238;
                objc_msgSend_doubleValue(v67, v240, v241, v242, v243);
                if (v239 > v244)
                {
                  v67 = v223;
                }
              }

              else
              {
                v67 = v223;
              }
            }

            if (v232)
            {
              if (v66)
              {
                objc_msgSend_doubleValue(v232, v233, v234, v235, v236);
                v246 = v245;
                v251 = objc_msgSend_duration(v659, v247, v248, v249, v250);
                objc_msgSend_doubleValue(v66, v252, v253, v254, v255);
                v257 = v256;
                v262 = objc_msgSend_duration(v677, v258, v259, v260, v261);
                v267 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v263, v264, v265, v266, (v257 * v262 + v246 * v251) / (v262 + v251));

                v66 = v267;
              }

              else
              {
                v66 = v232;
              }
            }

            self = v680;
          }

          if (v67)
          {
            objc_msgSend_setObject_forKey_(v217, v214, v67, @"PeakValue", v216);
          }

          if (v66)
          {
            objc_msgSend_setObject_forKey_(v217, v214, v66, @"Loudness", v216);
          }
        }

        v268 = [FMTimedMetadataItem alloc];
        v272 = objc_msgSend_dictionaryWithDictionary_(MEMORY[0x277CBEAC0], v269, v217, v270, v271);
        start = v709;
        v274 = objc_msgSend_initWithIdentifier_name_timeRange_values_(v268, v273, v646, v670, &start, v272);

        objc_msgSend_addObject_(v681, v275, v274, v276, v277);
        if (!v51)
        {

          v649 = 0;
          v283 = 0;
          isEqualToString = v647;
          v284 = v677;
          goto LABEL_106;
        }

        isEqualToString = v647;
        v45 = v677;
LABEL_101:
        v278 = objc_msgSend_nameIndex(v51, v62, v63, v64, v65);

        if (objc_msgSend_type(v51, v279, v280, v281, v282) == 5)
        {
          v283 = v45;
        }

        else
        {
          v283 = 0;
        }

        v649 = v278;
        v284 = v45;
LABEL_106:
        v39 = v283;

        v40 += objc_msgSend_duration(v284, v285, v286, v287, v288);
        ++v43;
        v44 = v39;
        v42 = 0x27900E000;
      }

      while (v642 != v43);
      v33 = obj;
      v318 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v35, &v711, v724, 16);
      v642 = v318;
      if (!v318)
      {

        v6 = v646;
        v12 = v681;
        goto LABEL_116;
      }
    }
  }

  if (objc_msgSend_isEqualToString_(v6, v16, @"FMTimedMetadataIdentifierBar", v17, v18))
  {
    v705 = 0u;
    v706 = 0u;
    v703 = 0u;
    v704 = 0u;
    v640 = objc_msgSend_segments(v637, v483, v484, v485, v486);
    v657 = objc_msgSend_countByEnumeratingWithState_objects_count_(v640, v487, &v703, v723, 16);
    if (v657)
    {
      v33 = 0;
      v675 = 0;
      v654 = *v704;
      while (1)
      {
        v492 = 0;
        v493 = v33;
        do
        {
          if (*v704 != v654)
          {
            objc_enumerationMutation(v640);
          }

          v494 = *(*(&v703 + 1) + 8 * v492);
          v499 = objc_msgSend_segment(v494, v488, v489, v490, v491);
          v500 = v675;
          if (!v499)
          {
            v511 = 0;
            goto LABEL_194;
          }

          v665 = v492;
          v501 = v675;
          if (v493)
          {
            v501 = v675 - objc_msgSend_duration(v493, v495, v496, v497, v498);
          }

          v661 = v493;
          v678 = objc_msgSend_duration(v494, v495, v496, v497, v498);
          if (objc_msgSend_type(v499, v502, v503, v504, v505) == 2 || objc_msgSend_type(v499, v506, v507, v508, v509) == 3 || objc_msgSend_type(v499, v506, v507, v508, v509) == 4)
          {
            if (objc_msgSend_type(v499, v506, v507, v508, v509) == 4)
            {
              v510 = 1;
LABEL_179:
              v512 = 0;
              v513 = 0;
              do
              {
                v514 = objc_msgSend_offset(v494, v506, v507, v508, v509);
                if (objc_msgSend_type(v499, v515, v516, v517, v518) == 4)
                {
                  v523 = 1;
                }

                else
                {
                  v523 = objc_msgSend_beatsPerBar(v499, v519, v520, v521, v522);
                }

                v524 = v513 - v514;
                v525 = v513 - v514 + v500;
                if (v525 >= v501 && v524 < v678)
                {
                  memset(&v709, 0, sizeof(v709));
                  v527 = objc_msgSend_sampleRate(self, v519, v520, v521, v522);
                  CMTimeMake(&start.start, v525, v527);
                  rhs = **&MEMORY[0x277CC08F0];
                  CMTimeRangeMake(&v709, &start.start, &rhs);
                  v528 = MEMORY[0x277CCACA8];
                  v533 = objc_msgSend_name(v499, v529, v530, v531, v532);
                  v537 = objc_msgSend_stringWithFormat_(v528, v534, @"%@ BarIndex %d", v535, v536, v533, v512);

                  v721[0] = @"BarIndex";
                  v541 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v538, v512, v539, v540);
                  v722[0] = v541;
                  v721[1] = @"BeatsPerBar";
                  v545 = objc_msgSend_numberWithInteger_(MEMORY[0x277CCABB0], v542, v523, v543, v544);
                  v722[1] = v545;
                  v547 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v546, v722, v721, 2);

                  v548 = [FMTimedMetadataItem alloc];
                  start = v709;
                  v550 = objc_msgSend_initWithIdentifier_name_timeRange_values_(v548, v549, @"FMTimedMetadataIdentifierBar", v537, &start, v547);
                  objc_msgSend_addObject_(v681, v551, v550, v552, v553);

                  v500 = v675;
                  self = v680;
                }

                v513 += objc_msgSend_barDurationForBarIndex_(v499, v519, v512++, v521, v522);
              }

              while (v510 != v512);
              goto LABEL_190;
            }

            v510 = objc_msgSend_bars(v499, v506, v507, v508, v509);
            if (v510 >= 1)
            {
              goto LABEL_179;
            }
          }

LABEL_190:
          if (objc_msgSend_type(v499, v506, v507, v508, v509) == 5)
          {
            v511 = v494;
          }

          else
          {
            v511 = 0;
          }

          v6 = v646;
          v12 = v681;
          v493 = v661;
          v492 = v665;
LABEL_194:
          v33 = v511;

          v675 += objc_msgSend_duration(v494, v554, v555, v556, v557);
          ++v492;
          v493 = v33;
        }

        while (v492 != v657);
        v657 = objc_msgSend_countByEnumeratingWithState_objects_count_(v640, v488, &v703, v723, 16);
        if (!v657)
        {
          goto LABEL_116;
        }
      }
    }
  }

  else
  {
    if (!objc_msgSend_isEqualToString_(v6, v483, @"FMTimedMetadataIdentifierBeat", v485, v486))
    {
      goto LABEL_118;
    }

    v701 = 0u;
    v702 = 0u;
    v699 = 0u;
    v700 = 0u;
    v640 = objc_msgSend_segments(v637, v319, v558, v320, v321);
    v644 = objc_msgSend_countByEnumeratingWithState_objects_count_(v640, v559, &v699, v720, 16);
    if (v644)
    {
      v33 = 0;
      v564 = 0;
      v643 = *v700;
      while (1)
      {
        v565 = 0;
        v648 = v33;
        do
        {
          if (*v700 != v643)
          {
            objc_enumerationMutation(v640);
          }

          v566 = *(*(&v699 + 1) + 8 * v565);
          v567 = objc_msgSend_segment(v566, v560, v561, v562, v563);
          v572 = v567;
          if (v567)
          {
            v645 = v565;
            if (objc_msgSend_beatsPerBar(v567, v568, v569, v570, v571) >= 1)
            {
              v577 = v564;
              if (v648)
              {
                v577 = v564 - objc_msgSend_duration(v648, v573, v574, v575, v576);
              }

              v578 = objc_msgSend_duration(v566, v573, v574, v575, v576);
              if (objc_msgSend_type(v572, v579, v580, v581, v582) == 2 || objc_msgSend_type(v572, v573, v574, v575, v576) == 3 || objc_msgSend_type(v572, v573, v574, v575, v576) == 4)
              {
                if (objc_msgSend_type(v572, v573, v574, v575, v576) == 4)
                {
                  v655 = 1;
LABEL_214:
                  v584 = 0;
                  v662 = 0;
                  v679 = v578 + v564;
                  v650 = v566;
                  v652 = v564;
                  while (2)
                  {
                    v585 = objc_msgSend_offset(v566, v573, v574, v575, v576);
                    if (objc_msgSend_type(v572, v586, v587, v588, v589) == 4)
                    {
                      v594 = objc_msgSend_barDurationForBarIndex_(v572, v590, v584, v592, v593);
                      v658 = v594;
                      v595 = 1;
LABEL_219:
                      v600 = 0;
                      v601 = v662 + v564 - v585;
                      v672 = v584;
                      v676 = v594;
                      do
                      {
                        if (v601 >= v577 && v601 < v679)
                        {
                          memset(&v709, 0, sizeof(v709));
                          v602 = objc_msgSend_sampleRate(v680, v573, v574, v575, v576);
                          CMTimeMake(&start.start, v601, v602);
                          rhs = **&MEMORY[0x277CC08F0];
                          CMTimeRangeMake(&v709, &start.start, &rhs);
                          v603 = MEMORY[0x277CCACA8];
                          objc_msgSend_name(v572, v604, v605, v606, v607);
                          v609 = v608 = v577;
                          v613 = objc_msgSend_stringWithFormat_(v603, v610, @"%@ BarIndex %d BeatIndex %d", v611, v612, v609, v672, v600);

                          v718[0] = @"BarIndex";
                          v617 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v614, v584, v615, v616);
                          v719[0] = v617;
                          v718[1] = @"BeatIndex";
                          v621 = objc_msgSend_numberWithInteger_(MEMORY[0x277CCABB0], v618, v600, v619, v620);
                          v719[1] = v621;
                          objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v622, v719, v718, 2);
                          v623 = v584;
                          v625 = v624 = v572;

                          v626 = [FMTimedMetadataItem alloc];
                          start = v709;
                          v628 = objc_msgSend_initWithIdentifier_name_timeRange_values_(v626, v627, @"FMTimedMetadataIdentifierBeat", v613, &start, v625);
                          objc_msgSend_addObject_(v681, v629, v628, v630, v631);

                          v577 = v608;
                          v572 = v624;
                          v584 = v623;

                          v594 = v676;
                        }

                        ++v600;
                        v601 += v594;
                      }

                      while (v595 != v600);
                      v12 = v681;
                      v566 = v650;
                      v564 = v652;
                      v599 = v658;
                    }

                    else
                    {
                      v595 = objc_msgSend_beatsPerBar(v572, v590, v591, v592, v593);
                      v599 = objc_msgSend_barDurationForBarIndex_(v572, v596, v584, v597, v598);
                      if (v595 >= 1)
                      {
                        v658 = v599;
                        v594 = v599 / v595;
                        goto LABEL_219;
                      }
                    }

                    v662 += v599;
                    if (++v584 == v655)
                    {
                      goto LABEL_226;
                    }

                    continue;
                  }
                }

                v655 = objc_msgSend_bars(v572, v573, v574, v575, v576);
                if (v655 >= 1)
                {
                  goto LABEL_214;
                }
              }
            }

LABEL_226:
            if (objc_msgSend_type(v572, v573, v574, v575, v576) == 5)
            {
              v583 = v566;
            }

            else
            {
              v583 = 0;
            }

            v565 = v645;
            v6 = v646;
          }

          else
          {
            v583 = 0;
          }

          v33 = v583;

          v564 += objc_msgSend_duration(v566, v632, v633, v634, v635);
          ++v565;
          v648 = v33;
        }

        while (v565 != v644);
        v644 = objc_msgSend_countByEnumeratingWithState_objects_count_(v640, v560, &v699, v720, 16);
        if (!v644)
        {
LABEL_116:

          break;
        }
      }
    }
  }

LABEL_118:
  if (objc_msgSend_isEqualToString_(v6, v319, @"FMTimedMetadataIdentifierOnset", v320, v321))
  {
    v697 = 0u;
    v698 = 0u;
    v695 = 0u;
    v696 = 0u;
    v667 = objc_msgSend_segments(v637, v322, v323, v324, v325);
    v327 = objc_msgSend_countByEnumeratingWithState_objects_count_(v667, v326, &v695, v717, 16);
    if (v327)
    {
      v332 = v327;
      v333 = 0;
      v334 = *v696;
      v335 = MEMORY[0x277CC08F0];
      v336 = MEMORY[0x277CBEC10];
      v660 = *v696;
      do
      {
        v337 = 0;
        v664 = v332;
        do
        {
          if (*v696 != v334)
          {
            objc_enumerationMutation(v667);
          }

          v338 = *(*(&v695 + 1) + 8 * v337);
          v339 = objc_msgSend_segment(v338, v328, v329, v330, v331);
          if (objc_msgSend_type(v339, v340, v341, v342, v343) == 2)
          {
            v669 = v338;
            v674 = v337;
            v348 = objc_msgSend_objectForKeyedSubscript_(v680->_analysisData, v344, @"onsets", v346, v347);
            v671 = v339;
            v353 = objc_msgSend_name(v339, v349, v350, v351, v352);
            v357 = objc_msgSend_objectForKey_(v348, v354, v353, v355, v356);

            v693 = 0u;
            v694 = 0u;
            v691 = 0u;
            v692 = 0u;
            v358 = v357;
            v360 = objc_msgSend_countByEnumeratingWithState_objects_count_(v358, v359, &v691, v716, 16);
            if (v360)
            {
              v365 = v360;
              v366 = *v692;
              do
              {
                for (i = 0; i != v365; ++i)
                {
                  if (*v692 != v366)
                  {
                    objc_enumerationMutation(v358);
                  }

                  v368 = *(*(&v691 + 1) + 8 * i);
                  memset(&rhs, 0, sizeof(rhs));
                  v369 = objc_msgSend_sampleRate(v680, v361, v362, v363, v364);
                  CMTimeMake(&rhs, v333, v369);
                  v709.start = rhs;
                  Seconds = CMTimeGetSeconds(&v709.start);
                  objc_msgSend_floatValue(v368, v371, v372, v373, v374);
                  memset(&v709, 0, sizeof(v709));
                  v376 = (v375 + Seconds);
                  v381 = objc_msgSend_sampleRate(v680, v377, v378, v379, v380);
                  CMTimeMakeWithSeconds(&start.start, v376, v381);
                  duration = *v335;
                  CMTimeRangeMake(&v709, &start.start, &duration);
                  v382 = [FMTimedMetadataItem alloc];
                  v386 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v383, @"onset @ %f", v384, v385, *&v376);
                  start = v709;
                  v388 = objc_msgSend_initWithIdentifier_name_timeRange_values_(v382, v387, @"FMTimedMetadataIdentifierOnset", v386, &start, v336);

                  objc_msgSend_addObject_(v681, v389, v388, v390, v391);
                }

                v365 = objc_msgSend_countByEnumeratingWithState_objects_count_(v358, v361, &v691, v716, 16);
              }

              while (v365);
            }

            v6 = v646;
            v334 = v660;
            v332 = v664;
            v339 = v671;
            v337 = v674;
            v338 = v669;
          }

          v333 += objc_msgSend_duration(v338, v344, v345, v346, v347);

          ++v337;
        }

        while (v337 != v332);
        v332 = objc_msgSend_countByEnumeratingWithState_objects_count_(v667, v328, &v695, v717, 16);
      }

      while (v332);
    }

    v12 = v681;
    v396 = objc_msgSend_count(v681, v392, v393, v394, v395);
  }

  else
  {
    if (objc_msgSend_isEqualToString_(v6, v322, @"FMTimedMetadataIdentifierLoopPoints", v324, v325))
    {
      v689 = 0u;
      v690 = 0u;
      v687 = 0u;
      v688 = 0u;
      v406 = objc_msgSend_segments(v637, v402, v403, v404, v405);
      v408 = objc_msgSend_countByEnumeratingWithState_objects_count_(v406, v407, &v687, v715, 16);
      if (v408)
      {
        v413 = v408;
        v414 = 0;
        v415 = *v688;
        v416 = MEMORY[0x277CC08F0];
        do
        {
          for (j = 0; j != v413; ++j)
          {
            if (*v688 != v415)
            {
              objc_enumerationMutation(v406);
            }

            v418 = *(*(&v687 + 1) + 8 * j);
            v419 = objc_msgSend_segment(v418, v409, v410, v411, v412);
            if (objc_msgSend_type(v419, v420, v421, v422, v423) == 4)
            {
              memset(&rhs, 0, sizeof(rhs));
              v428 = objc_msgSend_duration(v418, v424, v425, v426, v427);
              v433 = objc_msgSend_sampleRate(v680, v429, v430, v431, v432);
              CMTimeMake(&rhs, v428, v433);
              memset(&duration, 0, sizeof(duration));
              v438 = objc_msgSend_sampleRate(v680, v434, v435, v436, v437);
              CMTimeMake(&duration, v414, v438);
              memset(&v686, 0, sizeof(v686));
              v709.start = duration;
              start.start = rhs;
              CMTimeAdd(&v686, &v709.start, &start.start);
              v709.start = v686;
              v439 = CMTimeGetSeconds(&v709.start);
              memset(&v709, 0, sizeof(v709));
              v440 = v439;
              v445 = objc_msgSend_sampleRate(v680, v441, v442, v443, v444);
              CMTimeMakeWithSeconds(&start.start, v440, v445);
              v685 = *v416;
              CMTimeRangeMake(&v709, &start.start, &v685);
              v446 = [FMTimedMetadataItem alloc];
              v450 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v447, @"loop point @ %f", v448, v449, *&v440);
              start = v709;
              v452 = objc_msgSend_initWithIdentifier_name_timeRange_values_(v446, v451, @"FMTimedMetadataIdentifierOnset", v450, &start, MEMORY[0x277CBEC10]);

              objc_msgSend_addObject_(v681, v453, v452, v454, v455);
            }

            v414 += objc_msgSend_duration(v418, v424, v425, v426, v427);
          }

          v413 = objc_msgSend_countByEnumeratingWithState_objects_count_(v406, v409, &v687, v715, 16);
        }

        while (v413);
      }

      v12 = v681;
      objc_msgSend_removeLastObject(v681, v456, v457, v458, v459);
      v6 = v646;
    }

    v396 = objc_msgSend_count(v12, v402, v403, v404, v405);
  }

  if (v396 && objc_msgSend_count(v12, v397, v398, v399, v400) != 1)
  {
    v463 = 0;
    do
    {
      v464 = objc_msgSend_objectAtIndex_(v12, v460, v463, v461, v462);
      v468 = objc_msgSend_objectAtIndex_(v12, v465, ++v463, v466, v467);
      v473 = v468;
      memset(&v709, 0, 24);
      if (v468)
      {
        objc_msgSend_timeRange(v468, v469, v470, v471, v472);
      }

      else
      {
        *&v684 = 0;
        v683 = 0u;
      }

      *&start.start.value = v683;
      start.start.epoch = v684;
      if (v464)
      {
        objc_msgSend_timeRange(v464, v469, v470, v471, v472);
      }

      else
      {
        memset(&v682, 0, sizeof(v682));
      }

      rhs = v682;
      CMTimeSubtract(&v709.start, &start.start, &rhs);
      *&start.start.value = *&v709.start.value;
      start.start.epoch = v709.start.epoch;
      objc_msgSend_adjustDurationTo_(v464, v474, &start, v475, v476);
    }

    while (v463 < objc_msgSend_count(v12, v477, v478, v479, v480) - 1);
  }

  v401 = v12;

LABEL_160:
  v481 = *MEMORY[0x277D85DE8];

  return v401;
}

+ (id)loadSongInFolderWithPath:(id)a3
{
  v7 = a3;
  if (v7)
  {
    v18 = 0;
    v8 = objc_msgSend_defaultManager(MEMORY[0x277CCAA00], v3, v4, v5, v6);
    isDirectory = objc_msgSend_fileExistsAtPath_isDirectory_(v8, v9, v7, &v18, v10);
    v12 = v18;

    v16 = 0;
    if (isDirectory && (v12 & 1) != 0)
    {
      v16 = objc_msgSend_songAtPath_(FlexSongMetaDataReader_V2, v13, v7, v14, v15);
    }
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

@end