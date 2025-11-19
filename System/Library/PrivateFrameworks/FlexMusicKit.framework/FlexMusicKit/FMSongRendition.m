@interface FMSongRendition
+ (id)coalesceMixParamsA:(id)a3 withMixParamsB:(id)a4;
- (FMSongRendition)initWithSong:(id)a3 andOptions:(id)a4;
- (double)_maxPeakAndLoudness:(double *)a3 missingPeakValueCount:(int *)a4 missingLoudnessCount:(int *)a5;
- (id)description;
- (id)timedMetadataItemsWithIdentifier:(id)a3;
@end

@implementation FMSongRendition

- (FMSongRendition)initWithSong:(id)a3 andOptions:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = FMSongRendition;
  v9 = [(FMSongRendition *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_song, a3);
    objc_storeStrong(&v10->_options, a4);
  }

  return v10;
}

- (id)description
{
  v6 = MEMORY[0x277CCACA8];
  v7 = objc_msgSend_trackA(self, a2, v2, v3, v4);
  v12 = objc_msgSend_description(v7, v8, v9, v10, v11);
  v16 = objc_msgSend_stringWithFormat_(v6, v13, @"\nTrackA: %@", v14, v15, v12);
  v20 = objc_msgSend_stringByAppendingString_(@"\nFMTracks:", v17, v16, v18, v19);

  v21 = MEMORY[0x277CCACA8];
  v26 = objc_msgSend_trackB(self, v22, v23, v24, v25);
  v31 = objc_msgSend_description(v26, v27, v28, v29, v30);
  v35 = objc_msgSend_stringWithFormat_(v21, v32, @"\nTrackB: %@", v33, v34, v31);
  v39 = objc_msgSend_stringByAppendingString_(v20, v36, v35, v37, v38);

  return v39;
}

+ (id)coalesceMixParamsA:(id)a3 withMixParamsB:(id)a4
{
  v221 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v11 = v6;
  if (!v6)
  {
    goto LABEL_4;
  }

  v12 = objc_msgSend_volumeKeyFrames(v6, v7, v8, v9, v10);
  if (objc_msgSend_count(v12, v13, v14, v15, v16) == 1)
  {
    v21 = objc_msgSend_volumeKeyFrames(v11, v17, v18, v19, v20);
    v26 = objc_msgSend_lastObject(v21, v22, v23, v24, v25);
    objc_msgSend_value(v26, v27, v28, v29, v30);
    v32 = v31;

    if (v32 == 1.0)
    {
LABEL_4:
      v37 = v5;
LABEL_10:
      v59 = v37;
      goto LABEL_11;
    }
  }

  else
  {
  }

  if (!v5)
  {
LABEL_9:
    v37 = v11;
    goto LABEL_10;
  }

  v38 = objc_msgSend_volumeKeyFrames(v5, v33, v34, v35, v36);
  if (objc_msgSend_count(v38, v39, v40, v41, v42) == 1)
  {
    v47 = objc_msgSend_volumeKeyFrames(v5, v43, v44, v45, v46);
    v52 = objc_msgSend_lastObject(v47, v48, v49, v50, v51);
    objc_msgSend_value(v52, v53, v54, v55, v56);
    v58 = v57;

    if (v58 == 1.0)
    {
      goto LABEL_9;
    }
  }

  else
  {
  }

  v59 = objc_opt_new();
  v213 = 0u;
  v214 = 0u;
  v215 = 0u;
  v216 = 0u;
  v66 = objc_msgSend_volumeKeyFrames(v5, v62, v63, v64, v65);
  v68 = objc_msgSend_countByEnumeratingWithState_objects_count_(v66, v67, &v213, v220, 16);
  if (v68)
  {
    v69 = v68;
    v70 = *v214;
    do
    {
      for (i = 0; i != v69; ++i)
      {
        if (*v214 != v70)
        {
          objc_enumerationMutation(v66);
        }

        v72 = *(*(&v213 + 1) + 8 * i);
        v73 = [FMKeyFrame alloc];
        v78 = objc_msgSend_sampleTime(v72, v74, v75, v76, v77);
        v82 = objc_msgSend_initWithValue_atTime_(v73, v79, v78, v80, v81, 0.0);
        objc_msgSend_appendVolumeKeyframe_(v59, v83, v82, v84, v85);
      }

      v69 = objc_msgSend_countByEnumeratingWithState_objects_count_(v66, v86, &v213, v220, 16);
    }

    while (v69);
  }

  v211 = 0u;
  v212 = 0u;
  v209 = 0u;
  v210 = 0u;
  v91 = objc_msgSend_volumeKeyFrames(v11, v87, v88, v89, v90);
  v93 = objc_msgSend_countByEnumeratingWithState_objects_count_(v91, v92, &v209, v219, 16);
  if (v93)
  {
    v94 = v93;
    v95 = *v210;
    do
    {
      for (j = 0; j != v94; ++j)
      {
        if (*v210 != v95)
        {
          objc_enumerationMutation(v91);
        }

        v97 = *(*(&v209 + 1) + 8 * j);
        v98 = [FMKeyFrame alloc];
        v103 = objc_msgSend_sampleTime(v97, v99, v100, v101, v102);
        v107 = objc_msgSend_initWithValue_atTime_(v98, v104, v103, v105, v106, 0.0);
        objc_msgSend_insertVolumeKeyframe_(v59, v108, v107, v109, v110);
      }

      v94 = objc_msgSend_countByEnumeratingWithState_objects_count_(v91, v111, &v209, v219, 16);
    }

    while (v94);
  }

  v112 = objc_opt_new();
  v117 = objc_msgSend_volumeKeyFrames(v59, v113, v114, v115, v116);
  if (objc_msgSend_count(v117, v118, v119, v120, v121) != 1)
  {
    v125 = 0;
    do
    {
      v126 = objc_msgSend_objectAtIndexedSubscript_(v117, v122, v125, v123, v124);
      v131 = objc_msgSend_sampleTime(v126, v127, v128, v129, v130);

      v135 = objc_msgSend_objectAtIndexedSubscript_(v117, v132, ++v125, v133, v134);
      v140 = objc_msgSend_sampleTime(v135, v136, v137, v138, v139);

      v141 = [FMKeyFrame alloc];
      v145 = objc_msgSend_initWithValue_atTime_(v141, v142, (v140 + v131) / 2, v143, v144, 0.0);
      objc_msgSend_addObject_(v112, v146, v145, v147, v148);
    }

    while (v125 < objc_msgSend_count(v117, v149, v150, v151, v152) - 1);
  }

  v207 = 0u;
  v208 = 0u;
  v205 = 0u;
  v206 = 0u;
  v153 = v112;
  v155 = objc_msgSend_countByEnumeratingWithState_objects_count_(v153, v154, &v205, v218, 16);
  if (v155)
  {
    v159 = v155;
    v160 = *v206;
    do
    {
      for (k = 0; k != v159; ++k)
      {
        if (*v206 != v160)
        {
          objc_enumerationMutation(v153);
        }

        objc_msgSend_insertVolumeKeyframe_(v59, v156, *(*(&v205 + 1) + 8 * k), v157, v158);
      }

      v159 = objc_msgSend_countByEnumeratingWithState_objects_count_(v153, v156, &v205, v218, 16);
    }

    while (v159);
  }

  v203 = 0u;
  v204 = 0u;
  v201 = 0u;
  v202 = 0u;
  v166 = objc_msgSend_volumeKeyFrames(v59, v162, v163, v164, v165, 0);
  v168 = objc_msgSend_countByEnumeratingWithState_objects_count_(v166, v167, &v201, v217, 16);
  if (v168)
  {
    v173 = v168;
    v174 = *v202;
    do
    {
      for (m = 0; m != v173; ++m)
      {
        if (*v202 != v174)
        {
          objc_enumerationMutation(v166);
        }

        v176 = *(*(&v201 + 1) + 8 * m);
        v177 = objc_msgSend_sampleTime(v176, v169, v170, v171, v172);
        objc_msgSend_volumeValueAtTime_(v5, v178, v177, v179, v180);
        v182 = v181;
        v187 = objc_msgSend_sampleTime(v176, v183, v184, v185, v186);
        objc_msgSend_volumeValueAtTime_(v11, v188, v187, v189, v190);
        if (fabsf(v182) == INFINITY)
        {
          v196 = 1.0;
        }

        else
        {
          v196 = v182;
        }

        if (fabsf(*&v195) == INFINITY)
        {
          *&v195 = 1.0;
        }

        *&v195 = v196 * *&v195;
        objc_msgSend_setValue_(v176, v191, v192, v193, v194, v195);
      }

      v173 = objc_msgSend_countByEnumeratingWithState_objects_count_(v166, v169, &v201, v217, 16);
    }

    while (v173);
  }

  objc_msgSend_removeRedundantVolumeKeyFrames(v59, v197, v198, v199, v200);
LABEL_11:

  v60 = *MEMORY[0x277D85DE8];

  return v59;
}

- (id)timedMetadataItemsWithIdentifier:(id)a3
{
  v4 = a3;
  v9 = objc_msgSend_song(self, v5, v6, v7, v8);
  v12 = objc_msgSend_timedMetadataItemsWithIdentifier_forRendition_(v9, v10, v4, self, v11);

  return v12;
}

- (double)_maxPeakAndLoudness:(double *)a3 missingPeakValueCount:(int *)a4 missingLoudnessCount:(int *)a5
{
  v33 = 0;
  v34 = &v33;
  v35 = 0x2020000000;
  v36 = 0;
  v29 = 0;
  v30 = &v29;
  v31 = 0x2020000000;
  v32 = 0;
  v25 = 0;
  v26 = &v25;
  v27 = 0x2020000000;
  v28 = 0;
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 0;
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  v8 = objc_msgSend_timedMetadataItemsWithIdentifier_(self, a2, @"FMTimedMetadataIdentifierSegment", a4, a5);
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = sub_24B7EA5D4;
  v16[3] = &unk_27900E998;
  v16[4] = &v33;
  v16[5] = &v21;
  v16[6] = &v29;
  v16[7] = &v25;
  v16[8] = &v17;
  objc_msgSend_enumerateObjectsUsingBlock_(v8, v9, v16, v10, v11);
  if (a3)
  {
    v12 = v26[3];
    if (v12 <= 0.0)
    {
      v13 = -INFINITY;
    }

    else
    {
      v13 = v30[3] / v12;
    }

    v30[3] = v13;
    *a3 = v13;
  }

  if (a4)
  {
    *a4 = *(v22 + 6);
  }

  if (a5)
  {
    *a5 = *(v18 + 6);
  }

  v14 = v34[3];

  _Block_object_dispose(&v17, 8);
  _Block_object_dispose(&v21, 8);
  _Block_object_dispose(&v25, 8);
  _Block_object_dispose(&v29, 8);
  _Block_object_dispose(&v33, 8);
  return v14;
}

@end