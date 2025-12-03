@interface FlexLegacySongRendition
+ (int64_t)_durationOfOutroForPlaylist:(id)playlist onlyUsedDuration:(BOOL)duration;
- (FlexLegacySongRendition)initWithSong:(id)song segments:(id)segments withOptions:(id)options;
- (id)_buildOutroFadeoutMixParams;
- (void)_buildTracksFromSegments:(id)segments;
@end

@implementation FlexLegacySongRendition

- (FlexLegacySongRendition)initWithSong:(id)song segments:(id)segments withOptions:(id)options
{
  v87 = *MEMORY[0x277D85DE8];
  segmentsCopy = segments;
  v85.receiver = self;
  v85.super_class = FlexLegacySongRendition;
  v10 = [(FMSongRendition *)&v85 initWithSong:song andOptions:options];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_segments, segments);
    v83 = 0u;
    v84 = 0u;
    v81 = 0u;
    v82 = 0u;
    v12 = segmentsCopy;
    v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v13, &v81, v86, 16);
    if (v14)
    {
      v19 = v14;
      v20 = 0;
      v21 = *v82;
      do
      {
        for (i = 0; i != v19; ++i)
        {
          if (*v82 != v21)
          {
            objc_enumerationMutation(v12);
          }

          v20 += objc_msgSend_duration(*(*(&v81 + 1) + 8 * i), v15, v16, v17, v18, v81);
        }

        v19 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v15, &v81, v86, 16);
      }

      while (v19);
    }

    else
    {
      v20 = 0;
    }

    objc_msgSend_setDuration_(v11, v23, v20, v24, v25);
    v30 = objc_msgSend_lastObject(v12, v26, v27, v28, v29);
    v35 = v30;
    if (v30)
    {
      v36 = objc_msgSend_url(v30, v31, v32, v33, v34);

      if (v36)
      {
        objc_msgSend_setDurationOfSilence_(v11, v37, 0, v39, v40);
        objc_msgSend_setDurationOfMusic_(v11, v41, v20, v42, v43, v81);
      }

      else
      {
        v49 = objc_msgSend_duration(v35, v37, v38, v39, v40);
        objc_msgSend_setDurationOfSilence_(v11, v50, v49, v51, v52);
        v57 = objc_msgSend_duration(v11, v53, v54, v55, v56);
        v62 = v57 - objc_msgSend_durationOfSilence(v11, v58, v59, v60, v61);
        objc_msgSend_setDurationOfMusic_(v11, v63, v62, v64, v65, v81);
      }
    }

    else
    {
      objc_msgSend_setDurationOfMusic_(v11, v31, 0, v33, v34);
      objc_msgSend_setDurationOfSilence_(v11, v46, 0, v47, v48);
    }

    v66 = objc_msgSend__durationOfOutroForPlaylist_onlyUsedDuration_(FlexLegacySongRendition, v44, v12, 1, v45, v81);
    objc_msgSend_setDurationOfUsedOutro_(v11, v67, v66, v68, v69);
    v72 = objc_msgSend__durationOfOutroForPlaylist_onlyUsedDuration_(FlexLegacySongRendition, v70, v12, 0, v71);
    objc_msgSend_setDurationOfFullOutro_(v11, v73, v72, v74, v75);
    objc_msgSend__buildTracksFromSegments_(v11, v76, v12, v77, v78);
  }

  v79 = *MEMORY[0x277D85DE8];
  return v11;
}

+ (int64_t)_durationOfOutroForPlaylist:(id)playlist onlyUsedDuration:(BOOL)duration
{
  durationCopy = duration;
  playlistCopy = playlist;
  v10 = objc_msgSend_lastObject(playlistCopy, v6, v7, v8, v9);
  v15 = v10;
  if (!v10)
  {
    goto LABEL_17;
  }

  v16 = objc_msgSend_segment(v10, v11, v12, v13, v14);

  if (!v16)
  {
    if (objc_msgSend_count(playlistCopy, v17, v18, v19, v20) >= 2)
    {
      v69 = objc_msgSend_count(playlistCopy, v65, v66, v67, v68);
      v44 = objc_msgSend_objectAtIndex_(playlistCopy, v70, v69 - 2, v71, v72);
      v77 = objc_msgSend_segment(v44, v73, v74, v75, v76);
      if (!v77 || (v82 = v77, objc_msgSend_segment(v44, v78, v79, v80, v81), v83 = objc_claimAutoreleasedReturnValue(), v88 = objc_msgSend_type(v83, v84, v85, v86, v87), v83, v82, v88 != 4))
      {
        v31 = 0;
        goto LABEL_22;
      }

      if (durationCopy)
      {
        v31 = objc_msgSend_duration(v44, v89, v90, v91, v92);
        if (objc_msgSend_count(playlistCopy, v93, v94, v95, v96) < 3)
        {
LABEL_22:

          goto LABEL_23;
        }

        v101 = objc_msgSend_count(playlistCopy, v97, v98, v99, v100);
        v105 = objc_msgSend_objectAtIndex_(playlistCopy, v102, v101 - 3, v103, v104);
        v110 = objc_msgSend_segment(v105, v106, v107, v108, v109);
        if (v110)
        {
          v115 = v110;
          v116 = objc_msgSend_segment(v105, v111, v112, v113, v114);
          v121 = objc_msgSend_type(v116, v117, v118, v119, v120);

          if (v121 == 5)
          {
            v31 += objc_msgSend_duration(v105, v122, v123, v124, v125);
          }
        }
      }

      else
      {
        v105 = objc_msgSend_segment(v44, v89, v90, v91, v92);
        v31 = objc_msgSend_sampleCount(v105, v130, v131, v132, v133);
      }

      goto LABEL_22;
    }

LABEL_17:
    v31 = 0;
    goto LABEL_23;
  }

  v21 = objc_msgSend_segment(v15, v17, v18, v19, v20);
  v26 = objc_msgSend_type(v21, v22, v23, v24, v25);

  if (v26 != 4)
  {
    goto LABEL_17;
  }

  if (!durationCopy)
  {
    v44 = objc_msgSend_segment(v15, v27, v28, v29, v30);
    v31 = objc_msgSend_sampleCount(v44, v126, v127, v128, v129);
    goto LABEL_22;
  }

  v31 = objc_msgSend_duration(v15, v27, v28, v29, v30);
  if (objc_msgSend_count(playlistCopy, v32, v33, v34, v35) >= 2)
  {
    v40 = objc_msgSend_count(playlistCopy, v36, v37, v38, v39);
    v44 = objc_msgSend_objectAtIndex_(playlistCopy, v41, v40 - 2, v42, v43);
    v49 = objc_msgSend_segment(v44, v45, v46, v47, v48);
    if (v49)
    {
      v54 = v49;
      v55 = objc_msgSend_segment(v44, v50, v51, v52, v53);
      v60 = objc_msgSend_type(v55, v56, v57, v58, v59);

      if (v60 == 5)
      {
        v31 += objc_msgSend_duration(v44, v61, v62, v63, v64);
      }
    }

    goto LABEL_22;
  }

LABEL_23:

  return v31;
}

- (void)_buildTracksFromSegments:(id)segments
{
  segmentsCopy = segments;
  v311 = objc_opt_new();
  v319 = segmentsCopy;
  v9 = objc_msgSend_count(segmentsCopy, v5, v6, v7, v8);
  v308 = objc_opt_new();
  v310 = objc_opt_new();
  v309 = objc_opt_new();
  v306 = v9 - 1;
  v307 = v9;
  if (v9 >= 1)
  {
    v14 = 0;
    v15 = 0;
    v321 = 1;
    selfCopy = self;
    do
    {
      v16 = objc_msgSend_objectAtIndexedSubscript_(v319, v10, v15, v12, v13);
      v17 = objc_opt_new();
      objc_msgSend_setPosition_(v17, v18, v14, v19, v20);
      v25 = objc_msgSend_url(v16, v21, v22, v23, v24);
      objc_msgSend_setUrl_(v17, v26, v25, v27, v28);

      v33 = objc_msgSend_offset(v16, v29, v30, v31, v32);
      objc_msgSend_setOffset_(v17, v34, v33, v35, v36);
      v41 = objc_msgSend_duration(v16, v37, v38, v39, v40);
      objc_msgSend_setDuration_(v17, v42, v41, v43, v44);
      v53 = objc_msgSend_duration(v17, v45, v46, v47, v48);
      if (v15)
      {
        v54 = objc_msgSend_objectAtIndexedSubscript_(v319, v49, v15 - 1, v51, v52);
      }

      else
      {
        v54 = 0;
      }

      v320 = v53;
      if (v15 >= v306)
      {
        v55 = 0;
      }

      else
      {
        v55 = objc_msgSend_objectAtIndexedSubscript_(v319, v49, v15 + 1, v51, v52);
      }

      v56 = objc_msgSend_segment(v54, v49, v50, v51, v52);
      v61 = objc_msgSend_segment(v16, v57, v58, v59, v60);
      v318 = v55;
      v66 = objc_msgSend_segment(v55, v62, v63, v64, v65);
      v71 = objc_msgSend_name(v61, v67, v68, v69, v70);
      v72 = v54;
      v73 = v71;
      v315 = v72;
      v78 = objc_msgSend_barsUsed(v72, v74, v75, v76, v77) - 1;
      v316 = v56;
      v79 = v56;
      v80 = v66;
      v83 = objc_msgSend_transitionToSegmentNamed_fromBarIndex_(v79, v81, v73, v78, v82);

      v88 = objc_msgSend_name(v66, v84, v85, v86, v87);
      v317 = v16;
      v93 = objc_msgSend_barsUsed(v16, v89, v90, v91, v92);
      v322 = objc_msgSend_transitionToSegmentNamed_fromBarIndex_(v61, v94, v88, v93 - 1, v95);

      v96 = v309;
      if (v321)
      {
        v96 = v310;
        v97 = v311;
      }

      else
      {
        v97 = v308;
      }

      v98 = v96;
      v314 = v97;
      v324 = 0;
      if (v83)
      {
        if (objc_msgSend_fadeIn(v83, v99, v100, v101, v102) >= 1 && (objc_msgSend_prevented(v83, v99, v100, v101, v102) & 1) == 0)
        {
          v103 = objc_msgSend_transitionSegmentName(v83, v99, v100, v101, v102);

          if (!v103)
          {
            v104 = objc_msgSend_fadeOut(v83, v99, v100, v101, v102);
            v109 = objc_msgSend_fadeIn(v83, v105, v106, v107, v108);
            v110 = v104;
            self = selfCopy;
            objc_msgSend_crossfadeLengthInSamplesForFromSeg_toSeg_fadeOutTimeInMsec_fadeInTimeInMsec_validFadeOutSamples_validFadeInSamples_(FlexSegment, v111, v316, v61, v110, v109, 0, &v324);
            objc_msgSend_setFadeInLength_(v17, v112, v324, v113, v114);
          }
        }
      }

      v313 = objc_msgSend_lastVolumeKeyFrame(v98, v99, v100, v101, v102);
      objc_msgSend_value(v313, v115, v116, v117, v118);
      v124 = v320;
      if (v324 < 1)
      {
        v150 = v14;
        if (v123 != 0.0)
        {
          goto LABEL_26;
        }
      }

      else
      {
        if (v123 != 0.0)
        {
          v125 = [FMKeyFrame alloc];
          v129 = objc_msgSend_initWithValue_atTime_(v125, v126, v14, v127, v128, 0.0);
          objc_msgSend_appendVolumeKeyframe_(v98, v130, v129, v131, v132);
        }

        v133 = [FMKeyFrame alloc];
        v137 = objc_msgSend_initWithValue_atTime_(v133, v134, v14, v135, v136, 0.0);
        objc_msgSend_appendVolumeKeyframe_(v98, v138, v137, v139, v140);

        v141 = v324 + v14;
        if (v141 <= objc_msgSend_duration(self, v142, v143, v144, v145))
        {
          v150 = v324 + v14;
        }

        else
        {
          v150 = objc_msgSend_duration(self, v146, v147, v148, v149);
        }
      }

      v151 = [FMKeyFrame alloc];
      LODWORD(v152) = 1.0;
      v156 = objc_msgSend_initWithValue_atTime_(v151, v153, v150, v154, v155, v152);
      objc_msgSend_appendVolumeKeyframe_(v98, v157, v156, v158, v159);

LABEL_26:
      v323 = 0;
      v160 = v322;
      if (!v322)
      {
        goto LABEL_40;
      }

      if (objc_msgSend_fadeOut(v322, v119, v120, v121, v122) < 1)
      {
        goto LABEL_30;
      }

      if (objc_msgSend_prevented(v322, v161, v162, v163, v164))
      {
        goto LABEL_30;
      }

      v169 = objc_msgSend_transitionSegmentName(v322, v165, v166, v167, v168);

      if (v169)
      {
        goto LABEL_30;
      }

      v202 = objc_msgSend_segment(v317, v170, v171, v172, v173);
      v207 = objc_msgSend_barsUsed(v317, v203, v204, v205, v206);
      v303 = objc_msgSend_barEndPositionForBarIndex_(v202, v208, v207 - 1, v209, v210);

      v215 = objc_msgSend_fadeOut(v322, v211, v212, v213, v214);
      v220 = objc_msgSend_fadeIn(v322, v216, v217, v218, v219);
      objc_msgSend_crossfadeLengthInSamplesForFromSeg_toSeg_fadeOutTimeInMsec_fadeInTimeInMsec_validFadeOutSamples_validFadeInSamples_(FlexSegment, v221, v61, v80, v215, v220, &v323, 0);
      v226 = v323;
      if (v323 < 1)
      {
        v160 = 0;
LABEL_40:
        v233 = [FMKeyFrame alloc];
        LODWORD(v234) = 1.0;
        v198 = objc_msgSend_initWithValue_atTime_(v233, v235, v320 + v14, v236, v237, v234);
        objc_msgSend_appendVolumeKeyframe_(v98, v238, v198, v239, v240, v303);
        goto LABEL_41;
      }

      if (v226 + v303 <= objc_msgSend_sampleCount(v61, v222, v223, v224, v225))
      {
        v232 = 0;
        v231 = v323;
      }

      else
      {
        v231 = objc_msgSend_sampleCount(v61, v227, v228, v229, v230) - v303;
        v232 = v323 - v231;
      }

      v247 = v318;
      if (v231 >= 1)
      {
        v248 = v232;
        v249 = objc_msgSend_duration(v17, v227, v228, v229, v230);
        objc_msgSend_setDuration_(v17, v250, v249 + v231, v251, v252);
        objc_msgSend_setFadeOutLength_(v17, v253, v231, v254, v255);
        v232 = v248;
        v247 = v318;
      }

      if (v232 < 1)
      {
LABEL_30:
        v160 = 0;
      }

      else
      {
        v305 = v232;
        if (objc_msgSend_useNextSegmentForFadeOut(v322, v227, v228, v229, v230) && (objc_msgSend_sliceable(v61, v256, v257, v258, v259) & 1) == 0 && v247)
        {
          v160 = objc_opt_new();
          v264 = objc_msgSend_url(v247, v260, v261, v262, v263);
          objc_msgSend_setUrl_(v160, v265, v264, v266, v267);
        }

        else
        {
          v160 = objc_msgSend_copy(v17, v256, v257, v258, v259, v303);
        }

        objc_msgSend_setOffset_(v160, v268, 0, v269, v270, v303);
        objc_msgSend_setDuration_(v160, v271, v305, v272, v273);
        v278 = objc_msgSend_duration(v17, v274, v275, v276, v277);
        objc_msgSend_setPosition_(v160, v279, v278 + v14, v280, v281);
        objc_msgSend_setFadeOutLength_(v160, v282, v305, v283, v284);
      }

      if (v323 < 1)
      {
        goto LABEL_40;
      }

      v304 = v83;
      v174 = v80;
      v175 = [FMKeyFrame alloc];
      LODWORD(v176) = 1.0;
      v180 = objc_msgSend_initWithValue_atTime_(v175, v177, v320 + v14, v178, v179, v176);
      objc_msgSend_appendVolumeKeyframe_(v98, v181, v180, v182, v183);

      v184 = v323 + v320 + v14;
      if (v184 <= objc_msgSend_duration(selfCopy, v185, v186, v187, v188))
      {
        v193 = v323 + v320 + v14;
      }

      else
      {
        v193 = objc_msgSend_duration(selfCopy, v189, v190, v191, v192);
      }

      v80 = v174;
      v194 = [FMKeyFrame alloc];
      v198 = objc_msgSend_initWithValue_atTime_(v194, v195, v193, v196, v197, 0.0);
      v124 = v320;
      v83 = v304;
      objc_msgSend_appendVolumeKeyframe_(v98, v199, v198, v200, v201, v303);
LABEL_41:

      objc_msgSend_addObject_(v314, v241, v17, v242, v243);
      if (v160)
      {
        objc_msgSend_addObject_(v314, v244, v160, v245, v246);
      }

      v321 ^= 1u;
      v14 += v124;

      ++v15;
      self = selfCopy;
    }

    while (v307 != v15);
  }

  objc_msgSend_removeRedundantVolumeKeyFrames(v310, v10, v11, v12, v13);
  objc_msgSend_removeRedundantVolumeKeyFrames(v309, v285, v286, v287, v288);
  v289 = [FMTrack alloc];
  v292 = objc_msgSend_initWithClips_mixParameters_(v289, v290, v311, v310, v291);
  objc_msgSend_setTrackA_(self, v293, v292, v294, v295);

  v296 = [FMTrack alloc];
  v299 = objc_msgSend_initWithClips_mixParameters_(v296, v297, v308, v309, v298);
  objc_msgSend_setTrackB_(self, v300, v299, v301, v302);
}

- (id)_buildOutroFadeoutMixParams
{
  v5 = objc_msgSend_timedMetadataItemsWithIdentifier_(self, a2, @"FMTimedMetadataIdentifierSection", v2, v3);
  v74 = 0;
  v75 = &v74;
  v76 = 0x3810000000;
  v77 = &unk_24B81E453;
  v78 = *MEMORY[0x277CC0898];
  v79 = *(MEMORY[0x277CC0898] + 16);
  v68 = 0;
  v69 = &v68;
  v70 = 0x3810000000;
  v71 = &unk_24B81E453;
  v72 = v78;
  v73 = v79;
  v62 = 0;
  v63 = &v62;
  v64 = 0x3032000000;
  v65 = sub_24B815BE0;
  v66 = sub_24B815BF0;
  v67 = 0;
  v61[0] = MEMORY[0x277D85DD0];
  v61[1] = 3221225472;
  v61[2] = sub_24B815BF8;
  v61[3] = &unk_27900F768;
  v61[4] = &v74;
  v61[5] = &v68;
  v61[6] = &v62;
  objc_msgSend_enumerateObjectsWithOptions_usingBlock_(v5, v6, 2, v61, v7);
  v12 = v63[5];
  if (!v12)
  {
    goto LABEL_3;
  }

  memset(&v60, 0, sizeof(v60));
  v13 = objc_msgSend_integerValue(v12, v8, v9, v10, v11);
  v18 = objc_msgSend_song(self, v14, v15, v16, v17);
  v23 = objc_msgSend_sampleRate(v18, v19, v20, v21, v22);
  CMTimeMake(&v60, v13, v23);

  memset(&v59, 0, sizeof(v59));
  lhs = *(v75 + 4);
  rhs = *(v69 + 4);
  CMTimeAdd(&v59, &lhs, &rhs);
  lhs = v60;
  rhs = v59;
  if (CMTimeCompare(&lhs, &rhs) < 0)
  {
    v24 = objc_opt_new();
    v29 = objc_msgSend_song(self, v25, v26, v27, v28);
    v34 = objc_msgSend_sampleRate(v29, v30, v31, v32, v33);

    lhs = v60;
    CMTimeConvertScale(&v56, &lhs, v34, kCMTimeRoundingMethod_RoundHalfAwayFromZero);
    value = v56.value;
    lhs = v59;
    CMTimeConvertScale(&v55, &lhs, v34, kCMTimeRoundingMethod_RoundHalfAwayFromZero);
    v36 = v55.value;
    v37 = [FMKeyFrame alloc];
    LODWORD(v38) = 1.0;
    v42 = objc_msgSend_initWithValue_atTime_(v37, v39, value, v40, v41, v38);
    objc_msgSend_appendVolumeKeyframe_(v24, v43, v42, v44, v45);

    v46 = [FMKeyFrame alloc];
    v50 = objc_msgSend_initWithValue_atTime_(v46, v47, v36, v48, v49, 0.0);
    objc_msgSend_appendVolumeKeyframe_(v24, v51, v50, v52, v53);
  }

  else
  {
LABEL_3:
    v24 = 0;
  }

  _Block_object_dispose(&v62, 8);

  _Block_object_dispose(&v68, 8);
  _Block_object_dispose(&v74, 8);

  return v24;
}

@end