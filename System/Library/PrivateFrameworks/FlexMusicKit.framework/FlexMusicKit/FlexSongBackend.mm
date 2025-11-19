@interface FlexSongBackend
- (BOOL)_verifyClips:(id)a3 inRendition:(id)a4 failureReason:(id *)a5;
- (BOOL)_verifyKeyFrames:(id)a3 failureReason:(id *)a4;
- (BOOL)verifyRendition:(id)a3 forDuration:(id *)a4 failureReason:(id *)a5;
- (FlexSongBackend)initWithUID:(id)a3 songName:(id)a4 artistName:(id)a5 tagIDs:(id)a6 keywords:(id)a7 weightedKeywords:(id)a8 hidden:(BOOL)a9 recalled:(BOOL)a10 audioEncoderPresetName:(id)a11 metadataVersion:(int64_t)a12 songFormat:(id)a13 sampleRate:(int64_t)a14 customOptions:(id)a15;
- (id)existingAssetWithID:(id)a3;
- (void)updateAssets:(id)a3;
- (void)updateSongArtist:(id)a3 title:(id)a4 tags:(id)a5 keywords:(id)a6 weightedKeywords:(id)a7 hidden:(BOOL)a8 recalled:(BOOL)a9 metadataVersion:(int64_t)a10;
@end

@implementation FlexSongBackend

- (FlexSongBackend)initWithUID:(id)a3 songName:(id)a4 artistName:(id)a5 tagIDs:(id)a6 keywords:(id)a7 weightedKeywords:(id)a8 hidden:(BOOL)a9 recalled:(BOOL)a10 audioEncoderPresetName:(id)a11 metadataVersion:(int64_t)a12 songFormat:(id)a13 sampleRate:(int64_t)a14 customOptions:(id)a15
{
  v38 = a3;
  v37 = a4;
  obj = a5;
  v22 = a5;
  v33 = a6;
  v23 = a6;
  v34 = a7;
  v24 = a7;
  v35 = a8;
  v25 = a8;
  v26 = a11;
  v27 = a13;
  v36 = a15;
  v39.receiver = self;
  v39.super_class = FlexSongBackend;
  v28 = [(FlexSongBackend *)&v39 init];
  v29 = v28;
  if (v28)
  {
    objc_storeStrong(&v28->_uid, a3);
    objc_storeStrong(&v29->_songName, a4);
    objc_storeStrong(&v29->_artistName, obj);
    objc_storeStrong(&v29->_tagIDs, v33);
    objc_storeStrong(&v29->_keywords, v34);
    objc_storeStrong(&v29->_weightedKeywords, v35);
    v29->_hidden = a9;
    v29->_recalled = a10;
    objc_storeStrong(&v29->_audioEncoderPresetName, a11);
    objc_storeStrong(&v29->_songFormat, a13);
    v29->_sampleRate = a14;
    v29->_metadataVersion = a12;
    objc_storeStrong(&v29->_customOptions, a15);
    assets = v29->_assets;
    v29->_assets = 0;
  }

  return v29;
}

- (void)updateAssets:(id)a3
{
  v61 = *MEMORY[0x277D85DE8];
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  v4 = a3;
  v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v5, &v55, v60, 16);
  if (v10)
  {
    v11 = *v56;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v56 != v11)
        {
          objc_enumerationMutation(v4);
        }

        v13 = *(*(&v55 + 1) + 8 * i);
        v14 = objc_msgSend_uid(self, v6, v7, v8, v9);
        objc_msgSend_setSongUID_(v13, v15, v14, v16, v17);
      }

      v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v6, &v55, v60, 16);
    }

    while (v10);
  }

  v18 = self;
  objc_sync_enter(v18);
  obj = v18;
  v27 = objc_msgSend_assets(v18, v19, v20, v21, v22);
  if (v27)
  {
    v28 = objc_msgSend_assets(v18, v23, v24, v25, v26);
    v33 = objc_msgSend_mutableCopy(v28, v29, v30, v31, v32);
  }

  else
  {
    v33 = objc_msgSend_array(MEMORY[0x277CBEB18], v23, v24, v25, v26);
  }

  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  v34 = v4;
  v39 = objc_msgSend_countByEnumeratingWithState_objects_count_(v34, v35, &v51, v59, 16);
  if (v39)
  {
    v40 = *v52;
    do
    {
      for (j = 0; j != v39; ++j)
      {
        if (*v52 != v40)
        {
          objc_enumerationMutation(v34);
        }

        v42 = *(*(&v51 + 1) + 8 * j);
        v50[0] = MEMORY[0x277D85DD0];
        v50[1] = 3221225472;
        v50[2] = sub_24B7E667C;
        v50[3] = &unk_27900E8F8;
        v50[4] = v42;
        v44 = objc_msgSend_indexOfObjectPassingTest_(v33, v36, v50, v37, v38);
        if (v44 == 0x7FFFFFFFFFFFFFFFLL)
        {
          objc_msgSend_addObject_(v33, v43, v42, v45, v46);
        }

        else
        {
          objc_msgSend_replaceObjectAtIndex_withObject_(v33, v43, v44, v42, v46);
        }
      }

      v39 = objc_msgSend_countByEnumeratingWithState_objects_count_(v34, v36, &v51, v59, 16);
    }

    while (v39);
  }

  assets = obj->_assets;
  obj->_assets = v33;

  objc_sync_exit(obj);
  v48 = *MEMORY[0x277D85DE8];
}

- (id)existingAssetWithID:(id)a3
{
  v32 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v10 = objc_msgSend_assets(v5, v6, v7, v8, v9, 0);
  v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v11, &v27, v31, 16);
  if (v16)
  {
    v17 = *v28;
    while (2)
    {
      for (i = 0; i != v16; i = i + 1)
      {
        if (*v28 != v17)
        {
          objc_enumerationMutation(v10);
        }

        v19 = *(*(&v27 + 1) + 8 * i);
        v20 = objc_msgSend_assetID(v19, v12, v13, v14, v15);
        isEqualToString = objc_msgSend_isEqualToString_(v20, v21, v4, v22, v23);

        if (isEqualToString)
        {
          v16 = v19;
          goto LABEL_11;
        }
      }

      v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v12, &v27, v31, 16);
      if (v16)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  objc_sync_exit(v5);
  v25 = *MEMORY[0x277D85DE8];

  return v16;
}

- (void)updateSongArtist:(id)a3 title:(id)a4 tags:(id)a5 keywords:(id)a6 weightedKeywords:(id)a7 hidden:(BOOL)a8 recalled:(BOOL)a9 metadataVersion:(int64_t)a10
{
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a7;
  artistName = self->_artistName;
  self->_artistName = v15;
  v21 = v15;

  songName = self->_songName;
  self->_songName = v16;
  v23 = v16;

  tagIDs = self->_tagIDs;
  self->_tagIDs = v17;
  v25 = v17;

  keywords = self->_keywords;
  self->_keywords = v18;
  v27 = v18;

  weightedKeywords = self->_weightedKeywords;
  self->_weightedKeywords = v19;

  self->_hidden = a8;
  self->_recalled = a9;
  self->_metadataVersion = a10;
}

- (BOOL)verifyRendition:(id)a3 forDuration:(id *)a4 failureReason:(id *)a5
{
  v7 = a3;
  v12 = v7;
  if (!v7)
  {
    v89 = 0;
    v90 = @"no rendition! The playback algorithm could not generate a rendition for this duration or there is an issue with the authoring tool";
LABEL_13:
    *a5 = v90;
    goto LABEL_18;
  }

  v13 = objc_msgSend_trackA(v7, v8, v9, v10, v11);

  if (!v13)
  {
    v89 = 0;
    v90 = @"trackA is not present in rendition.";
    goto LABEL_13;
  }

  v18 = objc_msgSend_trackB(v12, v14, v15, v16, v17);

  if (!v18)
  {
    v89 = 0;
    v90 = @"trackB is not present in rendition.";
    goto LABEL_13;
  }

  v23 = objc_msgSend_durationOfMusic(v12, v19, v20, v21, v22);
  v28 = objc_msgSend_durationOfSilence(v12, v24, v25, v26, v27) + v23;
  if (v28 != objc_msgSend_duration(v12, v29, v30, v31, v32))
  {
    v91 = MEMORY[0x277CCACA8];
    v92 = MEMORY[0x277CCABB0];
    v93 = objc_msgSend_durationOfMusic(v12, v33, v34, v35, v36);
    v37 = objc_msgSend_numberWithLongLong_(v92, v94, v93, v95, v96);
    v97 = MEMORY[0x277CCABB0];
    v102 = objc_msgSend_durationOfSilence(v12, v98, v99, v100, v101);
    v42 = objc_msgSend_numberWithLongLong_(v97, v103, v102, v104, v105);
    v106 = MEMORY[0x277CCABB0];
    v111 = objc_msgSend_duration(v12, v107, v108, v109, v110);
    v68 = objc_msgSend_numberWithLongLong_(v106, v112, v111, v113, v114);
    *a5 = objc_msgSend_stringWithFormat_(v91, v115, @"rendition.durationOfMusic (%@) + rendition.durationOfSilence (%@) should equal rendition.duration %@", v116, v117, v37, v42, v68);
    goto LABEL_15;
  }

  v37 = objc_msgSend_trackA(v12, v33, v34, v35, v36);
  v42 = objc_msgSend_clips(v37, v38, v39, v40, v41);
  if ((objc_msgSend__verifyClips_inRendition_failureReason_(self, v43, v42, v12, a5) & 1) == 0)
  {
LABEL_16:

    goto LABEL_17;
  }

  v48 = objc_msgSend_trackB(v12, v44, v45, v46, v47);
  v53 = objc_msgSend_clips(v48, v49, v50, v51, v52);
  v55 = objc_msgSend__verifyClips_inRendition_failureReason_(self, v54, v53, v12, a5);

  if (!v55)
  {
LABEL_17:
    v89 = 0;
    goto LABEL_18;
  }

  v37 = objc_msgSend_trackA(v12, v56, v57, v58, v59);
  v42 = objc_msgSend_mixParameters(v37, v60, v61, v62, v63);
  v68 = objc_msgSend_volumeKeyFrames(v42, v64, v65, v66, v67);
  if ((objc_msgSend__verifyKeyFrames_failureReason_(self, v69, v68, a5, v70) & 1) == 0)
  {
LABEL_15:

    goto LABEL_16;
  }

  v75 = objc_msgSend_trackB(v12, v71, v72, v73, v74);
  v80 = objc_msgSend_mixParameters(v75, v76, v77, v78, v79);
  v85 = objc_msgSend_volumeKeyFrames(v80, v81, v82, v83, v84);
  v88 = objc_msgSend__verifyKeyFrames_failureReason_(self, v86, v85, a5, v87);

  if ((v88 & 1) == 0)
  {
    goto LABEL_17;
  }

  v89 = 1;
LABEL_18:

  return v89;
}

- (BOOL)_verifyClips:(id)a3 inRendition:(id)a4 failureReason:(id *)a5
{
  v7 = a3;
  v8 = a4;
  v13 = objc_msgSend_defaultManager(MEMORY[0x277CCAA00], v9, v10, v11, v12);
  if (objc_msgSend_count(v7, v14, v15, v16, v17))
  {
    v21 = 0;
    while (1)
    {
      v22 = objc_msgSend_objectAtIndexedSubscript_(v7, v18, v21, v19, v20);
      if (objc_msgSend_duration(v22, v23, v24, v25, v26) <= 0)
      {
        break;
      }

      v31 = objc_msgSend_count(v7, v27, v28, v29, v30) - 1;
      v36 = objc_msgSend_url(v22, v32, v33, v34, v35);
      v41 = objc_msgSend_path(v36, v37, v38, v39, v40);
      v45 = objc_msgSend_fileExistsAtPath_(v13, v42, v41, v43, v44);

      if ((v45 & 1) != 0 || v21 != v31)
      {
        v58 = objc_msgSend_url(v22, v46, v47, v48, v49);
        v63 = objc_msgSend_path(v58, v59, v60, v61, v62);
        v67 = objc_msgSend_fileExistsAtPath_(v13, v64, v63, v65, v66);

        if ((v67 & 1) == 0)
        {
          v144 = MEMORY[0x277CCACA8];
          v69 = objc_msgSend_url(v22, v55, v68, v56, v57);
          v149 = objc_msgSend_path(v69, v145, v146, v147, v148);
          *a5 = objc_msgSend_stringWithFormat_(v144, v150, @"Clip url path %@ does not exist.", v151, v152, v149);

          goto LABEL_20;
        }
      }

      else
      {
        v50 = objc_msgSend_duration(v22, v46, v47, v48, v49);
        if (v50 != objc_msgSend_durationOfSilence(v8, v51, v52, v53, v54))
        {
          v153 = 0;
          v154 = @"Clip duration must equal the duration of silence if it is the last clip in the track.";
          goto LABEL_21;
        }
      }

      if (v21 == v31)
      {
        v153 = 1;
        goto LABEL_22;
      }

      v69 = objc_msgSend_objectAtIndexedSubscript_(v7, v55, ++v21, v56, v57);
      v74 = objc_msgSend_position(v22, v70, v71, v72, v73);
      if (v74 > objc_msgSend_position(v69, v75, v76, v77, v78))
      {
        v101 = MEMORY[0x277CCACA8];
        v102 = MEMORY[0x277CCABB0];
        v103 = objc_msgSend_position(v22, v79, v80, v81, v82);
        v107 = objc_msgSend_numberWithLongLong_(v102, v104, v103, v105, v106);
        v108 = MEMORY[0x277CCABB0];
        v113 = objc_msgSend_position(v69, v109, v110, v111, v112);
        v117 = objc_msgSend_numberWithLongLong_(v108, v114, v113, v115, v116);
        objc_msgSend_stringWithFormat_(v101, v118, @"Current clip's position: %@ should not begin after the position: %@ of its following clip within the track.", v119, v120, v107, v117);
        goto LABEL_18;
      }

      v83 = objc_msgSend_position(v22, v79, v80, v81, v82);
      v88 = objc_msgSend_duration(v22, v84, v85, v86, v87) + v83;
      if (v88 > objc_msgSend_position(v69, v89, v90, v91, v92))
      {
        v121 = MEMORY[0x277CCACA8];
        v122 = MEMORY[0x277CCABB0];
        v123 = objc_msgSend_position(v22, v93, v94, v95, v96);
        v128 = objc_msgSend_duration(v22, v124, v125, v126, v127);
        v107 = objc_msgSend_numberWithLongLong_(v122, v129, v128 + v123, v130, v131);
        v132 = MEMORY[0x277CCABB0];
        v137 = objc_msgSend_position(v69, v133, v134, v135, v136);
        v117 = objc_msgSend_numberWithLongLong_(v132, v138, v137, v139, v140);
        objc_msgSend_stringWithFormat_(v121, v141, @"Current clip's position + duration %@ should not exceed the position %@ of its following clip within the track.", v142, v143, v107, v117);
        *a5 = LABEL_18:;

LABEL_20:
        v153 = 0;
        goto LABEL_22;
      }

      if (v21 >= objc_msgSend_count(v7, v97, v98, v99, v100))
      {
        goto LABEL_13;
      }
    }

    v153 = 0;
    v154 = @"Found an invalid clip.duration in rendition. The duration must be > 0.";
LABEL_21:
    *a5 = v154;
LABEL_22:
  }

  else
  {
LABEL_13:
    v153 = 1;
  }

  return v153;
}

- (BOOL)_verifyKeyFrames:(id)a3 failureReason:(id *)a4
{
  v5 = a3;
  if (objc_msgSend_count(v5, v6, v7, v8, v9) == 1)
  {
LABEL_5:
    v35 = 1;
  }

  else
  {
    v13 = 0;
    while (1)
    {
      v14 = objc_msgSend_objectAtIndexedSubscript_(v5, v10, v13, v11, v12);
      v18 = objc_msgSend_objectAtIndexedSubscript_(v5, v15, ++v13, v16, v17);
      v23 = objc_msgSend_sampleTime(v14, v19, v20, v21, v22);
      if (v23 >= objc_msgSend_sampleTime(v18, v24, v25, v26, v27))
      {
        break;
      }

      if (v13 >= objc_msgSend_count(v5, v31, v32, v33, v34) - 1)
      {
        goto LABEL_5;
      }
    }

    *a4 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v28, @"Keyframe %@ sampleTime must be less than its following keyframe %@", v29, v30, v14, v18);

    v35 = 0;
  }

  return v35;
}

@end