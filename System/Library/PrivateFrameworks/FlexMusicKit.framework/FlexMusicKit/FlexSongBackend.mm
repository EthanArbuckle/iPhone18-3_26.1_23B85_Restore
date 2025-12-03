@interface FlexSongBackend
- (BOOL)_verifyClips:(id)clips inRendition:(id)rendition failureReason:(id *)reason;
- (BOOL)_verifyKeyFrames:(id)frames failureReason:(id *)reason;
- (BOOL)verifyRendition:(id)rendition forDuration:(id *)duration failureReason:(id *)reason;
- (FlexSongBackend)initWithUID:(id)d songName:(id)name artistName:(id)artistName tagIDs:(id)ds keywords:(id)keywords weightedKeywords:(id)weightedKeywords hidden:(BOOL)hidden recalled:(BOOL)self0 audioEncoderPresetName:(id)self1 metadataVersion:(int64_t)self2 songFormat:(id)self3 sampleRate:(int64_t)self4 customOptions:(id)self5;
- (id)existingAssetWithID:(id)d;
- (void)updateAssets:(id)assets;
- (void)updateSongArtist:(id)artist title:(id)title tags:(id)tags keywords:(id)keywords weightedKeywords:(id)weightedKeywords hidden:(BOOL)hidden recalled:(BOOL)recalled metadataVersion:(int64_t)self0;
@end

@implementation FlexSongBackend

- (FlexSongBackend)initWithUID:(id)d songName:(id)name artistName:(id)artistName tagIDs:(id)ds keywords:(id)keywords weightedKeywords:(id)weightedKeywords hidden:(BOOL)hidden recalled:(BOOL)self0 audioEncoderPresetName:(id)self1 metadataVersion:(int64_t)self2 songFormat:(id)self3 sampleRate:(int64_t)self4 customOptions:(id)self5
{
  dCopy = d;
  nameCopy = name;
  obj = artistName;
  artistNameCopy = artistName;
  dsCopy = ds;
  dsCopy2 = ds;
  keywordsCopy = keywords;
  keywordsCopy2 = keywords;
  weightedKeywordsCopy = weightedKeywords;
  weightedKeywordsCopy2 = weightedKeywords;
  presetNameCopy = presetName;
  formatCopy = format;
  optionsCopy = options;
  v39.receiver = self;
  v39.super_class = FlexSongBackend;
  v28 = [(FlexSongBackend *)&v39 init];
  v29 = v28;
  if (v28)
  {
    objc_storeStrong(&v28->_uid, d);
    objc_storeStrong(&v29->_songName, name);
    objc_storeStrong(&v29->_artistName, obj);
    objc_storeStrong(&v29->_tagIDs, dsCopy);
    objc_storeStrong(&v29->_keywords, keywordsCopy);
    objc_storeStrong(&v29->_weightedKeywords, weightedKeywordsCopy);
    v29->_hidden = hidden;
    v29->_recalled = recalled;
    objc_storeStrong(&v29->_audioEncoderPresetName, presetName);
    objc_storeStrong(&v29->_songFormat, format);
    v29->_sampleRate = rate;
    v29->_metadataVersion = version;
    objc_storeStrong(&v29->_customOptions, options);
    assets = v29->_assets;
    v29->_assets = 0;
  }

  return v29;
}

- (void)updateAssets:(id)assets
{
  v61 = *MEMORY[0x277D85DE8];
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  assetsCopy = assets;
  v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(assetsCopy, v5, &v55, v60, 16);
  if (v10)
  {
    v11 = *v56;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v56 != v11)
        {
          objc_enumerationMutation(assetsCopy);
        }

        v13 = *(*(&v55 + 1) + 8 * i);
        v14 = objc_msgSend_uid(self, v6, v7, v8, v9);
        objc_msgSend_setSongUID_(v13, v15, v14, v16, v17);
      }

      v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(assetsCopy, v6, &v55, v60, 16);
    }

    while (v10);
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  obj = selfCopy;
  v27 = objc_msgSend_assets(selfCopy, v19, v20, v21, v22);
  if (v27)
  {
    v28 = objc_msgSend_assets(selfCopy, v23, v24, v25, v26);
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
  v34 = assetsCopy;
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

- (id)existingAssetWithID:(id)d
{
  v32 = *MEMORY[0x277D85DE8];
  dCopy = d;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v10 = objc_msgSend_assets(selfCopy, v6, v7, v8, v9, 0);
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
        isEqualToString = objc_msgSend_isEqualToString_(v20, v21, dCopy, v22, v23);

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

  objc_sync_exit(selfCopy);
  v25 = *MEMORY[0x277D85DE8];

  return v16;
}

- (void)updateSongArtist:(id)artist title:(id)title tags:(id)tags keywords:(id)keywords weightedKeywords:(id)weightedKeywords hidden:(BOOL)hidden recalled:(BOOL)recalled metadataVersion:(int64_t)self0
{
  artistCopy = artist;
  titleCopy = title;
  tagsCopy = tags;
  keywordsCopy = keywords;
  weightedKeywordsCopy = weightedKeywords;
  artistName = self->_artistName;
  self->_artistName = artistCopy;
  v21 = artistCopy;

  songName = self->_songName;
  self->_songName = titleCopy;
  v23 = titleCopy;

  tagIDs = self->_tagIDs;
  self->_tagIDs = tagsCopy;
  v25 = tagsCopy;

  keywords = self->_keywords;
  self->_keywords = keywordsCopy;
  v27 = keywordsCopy;

  weightedKeywords = self->_weightedKeywords;
  self->_weightedKeywords = weightedKeywordsCopy;

  self->_hidden = hidden;
  self->_recalled = recalled;
  self->_metadataVersion = version;
}

- (BOOL)verifyRendition:(id)rendition forDuration:(id *)duration failureReason:(id *)reason
{
  renditionCopy = rendition;
  v12 = renditionCopy;
  if (!renditionCopy)
  {
    v89 = 0;
    v90 = @"no rendition! The playback algorithm could not generate a rendition for this duration or there is an issue with the authoring tool";
LABEL_13:
    *reason = v90;
    goto LABEL_18;
  }

  v13 = objc_msgSend_trackA(renditionCopy, v8, v9, v10, v11);

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
    *reason = objc_msgSend_stringWithFormat_(v91, v115, @"rendition.durationOfMusic (%@) + rendition.durationOfSilence (%@) should equal rendition.duration %@", v116, v117, v37, v42, v68);
    goto LABEL_15;
  }

  v37 = objc_msgSend_trackA(v12, v33, v34, v35, v36);
  v42 = objc_msgSend_clips(v37, v38, v39, v40, v41);
  if ((objc_msgSend__verifyClips_inRendition_failureReason_(self, v43, v42, v12, reason) & 1) == 0)
  {
LABEL_16:

    goto LABEL_17;
  }

  v48 = objc_msgSend_trackB(v12, v44, v45, v46, v47);
  v53 = objc_msgSend_clips(v48, v49, v50, v51, v52);
  v55 = objc_msgSend__verifyClips_inRendition_failureReason_(self, v54, v53, v12, reason);

  if (!v55)
  {
LABEL_17:
    v89 = 0;
    goto LABEL_18;
  }

  v37 = objc_msgSend_trackA(v12, v56, v57, v58, v59);
  v42 = objc_msgSend_mixParameters(v37, v60, v61, v62, v63);
  v68 = objc_msgSend_volumeKeyFrames(v42, v64, v65, v66, v67);
  if ((objc_msgSend__verifyKeyFrames_failureReason_(self, v69, v68, reason, v70) & 1) == 0)
  {
LABEL_15:

    goto LABEL_16;
  }

  v75 = objc_msgSend_trackB(v12, v71, v72, v73, v74);
  v80 = objc_msgSend_mixParameters(v75, v76, v77, v78, v79);
  v85 = objc_msgSend_volumeKeyFrames(v80, v81, v82, v83, v84);
  v88 = objc_msgSend__verifyKeyFrames_failureReason_(self, v86, v85, reason, v87);

  if ((v88 & 1) == 0)
  {
    goto LABEL_17;
  }

  v89 = 1;
LABEL_18:

  return v89;
}

- (BOOL)_verifyClips:(id)clips inRendition:(id)rendition failureReason:(id *)reason
{
  clipsCopy = clips;
  renditionCopy = rendition;
  v13 = objc_msgSend_defaultManager(MEMORY[0x277CCAA00], v9, v10, v11, v12);
  if (objc_msgSend_count(clipsCopy, v14, v15, v16, v17))
  {
    v21 = 0;
    while (1)
    {
      v22 = objc_msgSend_objectAtIndexedSubscript_(clipsCopy, v18, v21, v19, v20);
      if (objc_msgSend_duration(v22, v23, v24, v25, v26) <= 0)
      {
        break;
      }

      v31 = objc_msgSend_count(clipsCopy, v27, v28, v29, v30) - 1;
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
          *reason = objc_msgSend_stringWithFormat_(v144, v150, @"Clip url path %@ does not exist.", v151, v152, v149);

          goto LABEL_20;
        }
      }

      else
      {
        v50 = objc_msgSend_duration(v22, v46, v47, v48, v49);
        if (v50 != objc_msgSend_durationOfSilence(renditionCopy, v51, v52, v53, v54))
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

      v69 = objc_msgSend_objectAtIndexedSubscript_(clipsCopy, v55, ++v21, v56, v57);
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
        *reason = LABEL_18:;

LABEL_20:
        v153 = 0;
        goto LABEL_22;
      }

      if (v21 >= objc_msgSend_count(clipsCopy, v97, v98, v99, v100))
      {
        goto LABEL_13;
      }
    }

    v153 = 0;
    v154 = @"Found an invalid clip.duration in rendition. The duration must be > 0.";
LABEL_21:
    *reason = v154;
LABEL_22:
  }

  else
  {
LABEL_13:
    v153 = 1;
  }

  return v153;
}

- (BOOL)_verifyKeyFrames:(id)frames failureReason:(id *)reason
{
  framesCopy = frames;
  if (objc_msgSend_count(framesCopy, v6, v7, v8, v9) == 1)
  {
LABEL_5:
    v35 = 1;
  }

  else
  {
    v13 = 0;
    while (1)
    {
      v14 = objc_msgSend_objectAtIndexedSubscript_(framesCopy, v10, v13, v11, v12);
      v18 = objc_msgSend_objectAtIndexedSubscript_(framesCopy, v15, ++v13, v16, v17);
      v23 = objc_msgSend_sampleTime(v14, v19, v20, v21, v22);
      if (v23 >= objc_msgSend_sampleTime(v18, v24, v25, v26, v27))
      {
        break;
      }

      if (v13 >= objc_msgSend_count(framesCopy, v31, v32, v33, v34) - 1)
      {
        goto LABEL_5;
      }
    }

    *reason = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v28, @"Keyframe %@ sampleTime must be less than its following keyframe %@", v29, v30, v14, v18);

    v35 = 0;
  }

  return v35;
}

@end