@interface FlexMLSong
+ (id)loadSongAtPath:(id)path;
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)minimumDuration;
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)naturalDuration;
- (BOOL)verifyRendition:(id)rendition forDuration:(id *)duration failureReason:(id *)reason;
- (FlexMLSong)initWithFileAtPath:(id)path;
- (NSURL)audioFileURL;
- (id)_summaryManager;
- (id)idealDurations;
- (id)renditionForDuration:(id *)duration withOptions:(id)options testingContext:(id)context;
- (id)timedMetadataItemsWithIdentifier:(id)identifier forRendition:(id)rendition;
- (void)setCachedNaturalDuration:(id *)duration;
@end

@implementation FlexMLSong

+ (id)loadSongAtPath:(id)path
{
  pathCopy = path;
  v4 = [FlexMLSong alloc];
  v8 = objc_msgSend_initWithFileAtPath_(v4, v5, pathCopy, v6, v7);

  return v8;
}

- (FlexMLSong)initWithFileAtPath:(id)path
{
  v172 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  v10 = objc_msgSend_defaultManager(MEMORY[0x277CCAA00], v6, v7, v8, v9);
  v169 = 0;
  v13 = objc_msgSend_contentsOfDirectoryAtPath_error_(v10, v11, pathCopy, &v169, v12);
  v14 = v169;

  v167 = 0u;
  v168 = 0u;
  v165 = 0u;
  v166 = 0u;
  v15 = v13;
  selfCopy = objc_msgSend_countByEnumeratingWithState_objects_count_(v15, v16, &v165, v171, 16);
  if (selfCopy)
  {
    v162 = v14;
    v163 = pathCopy;
    v22 = *v166;
LABEL_3:
    v23 = 0;
    while (1)
    {
      if (*v166 != v22)
      {
        objc_enumerationMutation(v15);
      }

      v24 = *(*(&v165 + 1) + 8 * v23);
      v25 = objc_msgSend_pathExtension(v24, v17, v18, v19, v20);
      isEqualToString = objc_msgSend_isEqualToString_(v25, v26, @"metadata", v27, v28);

      if (isEqualToString)
      {
        break;
      }

      if (selfCopy == ++v23)
      {
        selfCopy = objc_msgSend_countByEnumeratingWithState_objects_count_(v15, v17, &v165, v171, 16);
        if (selfCopy)
        {
          goto LABEL_3;
        }

        v30 = v15;
        v14 = v162;
        pathCopy = v163;
        goto LABEL_32;
      }
    }

    pathCopy = v163;
    v30 = objc_msgSend_stringByAppendingPathComponent_(v163, v17, v24, v19, v20);

    if (!v30)
    {
      selfCopy = 0;
      v14 = v162;
      goto LABEL_33;
    }

    objc_storeStrong(&self->_rootPath, path);
    objc_storeStrong(&self->_metadataPath, v30);
    v34 = objc_msgSend_dictionaryWithContentsOfFile_(MEMORY[0x277CBEB38], v31, v30, v32, v33);
    v38 = objc_msgSend_objectForKey_(v34, v35, @"plistRuntimeVersion", v36, v37);
    v43 = objc_msgSend_integerValue(v38, v39, v40, v41, v42);

    if ((v43 - 1) > 1)
    {
      selfCopy = 0;
      v14 = v162;
LABEL_31:

      goto LABEL_32;
    }

    v47 = objc_msgSend_objectForKey_(v34, v44, @"uuid", v45, v46);
    v161 = objc_msgSend_objectForKey_(v34, v48, @"songName", v49, v50);
    v160 = objc_msgSend_objectForKey_(v34, v51, @"artistName", v52, v53);
    v54 = MEMORY[0x277CBEB98];
    v58 = objc_msgSend_objectForKey_(v34, v55, @"tagIDs", v56, v57);
    v159 = objc_msgSend_setWithArray_(v54, v59, v58, v60, v61);

    v65 = objc_msgSend_objectForKey_(v34, v62, @"customOptions", v63, v64);
    v70 = objc_msgSend_set(MEMORY[0x277CBEB98], v66, v67, v68, v69);
    v158 = objc_msgSend_dictionary(MEMORY[0x277CBEAC0], v71, v72, v73, v74);
    v78 = objc_msgSend_objectForKey_(v34, v75, @"sampleRate", v76, v77);
    v157 = objc_msgSend_objectForKey_(v34, v79, @"audioEncoderPresetName", v80, v81);
    v155 = v78;
    if (v78)
    {
      v86 = objc_msgSend_integerValue(v78, v82, v83, v84, v85);
    }

    else
    {
      v86 = 44100;
    }

    v164.receiver = self;
    v164.super_class = FlexMLSong;
    v156 = v70;
    v87 = [(FlexSongBackend *)&v164 initWithUID:v47 songName:v161 artistName:v160 tagIDs:v159 keywords:v70 weightedKeywords:v158 hidden:0 recalled:v157 audioEncoderPresetName:0 metadataVersion:@"ML" songFormat:v86 sampleRate:v65 customOptions:?];
    v91 = v87;
    v14 = v162;
    if (!v87)
    {
LABEL_30:
      self = v91;

      selfCopy = self;
      goto LABEL_31;
    }

    v153 = v65;
    v92 = MEMORY[0x277CC0898];
    *(v87 + 136) = *MEMORY[0x277CC0898];
    *(v87 + 19) = *(v92 + 16);
    v93 = objc_msgSend_objectForKey_(v34, v88, @"audioFileExtension", v89, v90);
    v94 = v91[16];
    v91[16] = v93;

    v98 = objc_msgSend_objectForKey_(v34, v95, @"songFile", v96, v97);
    v102 = 0x277CBE000uLL;
    v154 = v47;
    v152 = v98;
    if (v98)
    {
      v103 = MEMORY[0x277CBEBC0];
      v104 = objc_msgSend_stringByAppendingPathComponent_(v91[14], v99, v98, v100, v101);
      v108 = objc_msgSend_fileURLWithPath_(v103, v105, v104, v106, v107);

      v113 = objc_msgSend_defaultManager(MEMORY[0x277CCAA00], v109, v110, v111, v112);
      v118 = objc_msgSend_path(v108, v114, v115, v116, v117);
      v122 = objc_msgSend_fileExistsAtPath_(v113, v119, v118, v120, v121);

      if ((v122 & 1) == 0)
      {

        v108 = 0;
      }

      v102 = 0x277CBE000;
    }

    else
    {
      v108 = 0;
    }

    v123 = objc_msgSend_objectForKey_(v34, v99, @"contentVersion", v100, v101);
    v127 = objc_msgSend_objectForKey_(v34, v124, @"compatibilityVersion", v125, v126);
    v150 = [FMSongAsset alloc];
    v151 = v108;
    v128 = v108 == 0;
    v136 = objc_msgSend_fileURLWithPath_(*(v102 + 3008), v129, v91[14], v130, v131);
    if (v123)
    {
      v137 = objc_msgSend_integerValue(v123, v132, v133, v134, v135);
      if (v127)
      {
LABEL_26:
        v138 = objc_msgSend_integerValue(v127, v132, v133, v134, v135);
        v140 = objc_msgSend_initWithAssetID_assetStatus_localURL_contentVersion_compatibilityVersion_(v150, v139, @"FMSongBundleAssetID", v128, v136, v137, v138);
LABEL_29:
        v141 = v140;

        v170 = v141;
        v144 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v142, &v170, 1, v143);
        objc_msgSend__setupInitialAssets_(v91, v145, v144, v146, v147);

        pathCopy = v163;
        v65 = v153;
        v47 = v154;
        goto LABEL_30;
      }
    }

    else
    {
      v123 = 0;
      v137 = 1;
      if (v127)
      {
        goto LABEL_26;
      }
    }

    v140 = objc_msgSend_initWithAssetID_assetStatus_localURL_contentVersion_compatibilityVersion_(v150, v132, @"FMSongBundleAssetID", v128, v136, v137, 4);
    goto LABEL_29;
  }

  v30 = v15;
LABEL_32:

LABEL_33:
  v148 = *MEMORY[0x277D85DE8];
  return selfCopy;
}

- (id)_summaryManager
{
  v5 = objc_msgSend_dictionaryWithContentsOfFile_(MEMORY[0x277CBEB38], a2, self->_metadataPath, v2, v3);
  v9 = objc_msgSend_objectForKey_(v5, v6, @"sampleRate", v7, v8);
  v13 = objc_msgSend_objectForKey_(v5, v10, @"summaryMapping", v11, v12);
  v14 = [FlexMLSummaryManager alloc];
  rootPath = self->_rootPath;
  metadataPath = self->_metadataPath;
  v21 = objc_msgSend_integerValue(v9, v17, v18, v19, v20);
  v23 = objc_msgSend_initWithSummaryMapping_bundlePath_metadataPath_targetTimeScale_(v14, v22, v13, rootPath, metadataPath, v21);

  return v23;
}

- (id)renditionForDuration:(id *)duration withOptions:(id)options testingContext:(id)context
{
  v25 = *MEMORY[0x277D85DE8];
  optionsCopy = options;
  v8 = FlexLogForCategory(0);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v24 = *duration;
    Seconds = CMTimeGetSeconds(&v24);
    LODWORD(v24.var0) = 134217984;
    *(&v24.var0 + 4) = Seconds;
    _os_log_impl(&dword_24B7E5000, v8, OS_LOG_TYPE_DEFAULT, "flex: Requesting ML format rendition for duration %.2f", &v24, 0xCu);
  }

  v14 = objc_msgSend__summaryManager(self, v10, v11, v12, v13);
  v24 = *duration;
  v18 = objc_msgSend_summaryForDuration_(v14, v15, &v24, v16, v17);
  v19 = [FlexMLSongRendition alloc];
  v24 = *duration;
  v21 = objc_msgSend_initWithSong_options_andSummary_forDuration_(v19, v20, self, optionsCopy, v18, &v24);

  v22 = *MEMORY[0x277D85DE8];

  return v21;
}

- (id)timedMetadataItemsWithIdentifier:(id)identifier forRendition:(id)rendition
{
  v738 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  renditionCopy = rendition;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v69 = MEMORY[0x277CBEBF8];
    goto LABEL_138;
  }

  v7 = renditionCopy;
  v12 = objc_msgSend_array(MEMORY[0x277CBEB18], v8, v9, v10, v11);
  v17 = objc_msgSend_summary(v7, v13, v14, v15, v16);
  v22 = objc_msgSend_videoCues(v17, v18, v19, v20, v21);

  v641 = v22;
  if (objc_msgSend_count(v22, v23, v24, v25, v26))
  {
    preferredTimescale = objc_msgSend_sampleRate(self, v27, v28, v29, v30);
    v35 = objc_msgSend_durationOfMusic(v7, v31, v32, v33, v34);
    v40 = objc_msgSend_summary(v7, v36, v37, v38, v39);
    objc_msgSend_lkfsValue(v40, v41, v42, v43, v44);
    v46 = v45;

    v51 = objc_msgSend_summary(v7, v47, v48, v49, v50);
    objc_msgSend_peakValue(v51, v52, v53, v54, v55);
    v57 = v56;

    v61 = objc_msgSend_objectForKeyedSubscript_(v22, v58, @"greatCues", v59, v60);
    v68 = objc_msgSend_objectForKeyedSubscript_(v22, v62, @"goodCues", v63, v64);
    v644 = v7;
    v638 = v68;
    v639 = v61;
    if (v61)
    {
      objc_msgSend_arrayByAddingObjectsFromArray_(v61, v65, v68, v66, v67);
    }

    else
    {
      objc_msgSend_arrayWithArray_(MEMORY[0x277CBEA60], v65, v68, v66, v67);
    }
    v70 = ;
    v74 = objc_msgSend_sortedArrayUsingSelector_(v70, v71, sel_compare_, v72, v73);

    v79 = objc_msgSend_orderedSet(MEMORY[0x277CBEB40], v75, v76, v77, v78);
    v700 = 0u;
    v701 = 0u;
    v702 = 0u;
    v703 = 0u;
    v80 = v74;
    v81 = v79;
    obj = v80;
    v83 = objc_msgSend_countByEnumeratingWithState_objects_count_(v80, v82, &v700, v737, 16);
    if (v83)
    {
      v87 = v83;
      v88 = *v701;
      do
      {
        for (i = 0; i != v87; ++i)
        {
          if (*v701 != v88)
          {
            objc_enumerationMutation(obj);
          }

          objc_msgSend_addObject_(v81, v84, *(*(&v700 + 1) + 8 * i), v85, v86);
        }

        v87 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v84, &v700, v737, 16);
      }

      while (v87);
    }

    v637 = v81;
    v94 = objc_msgSend_array(v81, v90, v91, v92, v93);
    v99 = objc_msgSend_firstObject(v94, v95, v96, v97, v98);
    objc_msgSend_doubleValue(v99, v100, v101, v102, v103);
    if (v107 == 0.0)
    {
      v636 = v99;
    }

    else
    {

      v636 = &unk_285EA8760;
      v736 = &unk_285EA8760;
      v110 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v108, &v736, 1, v109);
      v114 = objc_msgSend_arrayByAddingObjectsFromArray_(v110, v111, v94, v112, v113);

      v94 = v114;
    }

    v115 = v35;
    v116 = preferredTimescale;
    v642 = identifierCopy;
    v640 = renditionCopy;
    v670 = v12;
    v646 = v94;
    if (objc_msgSend_isEqualToString_(identifierCopy, v104, @"FMTimedMetadataIdentifierLoopPoints", v105, v106))
    {
      v698 = 0u;
      v699 = 0u;
      v696 = 0u;
      v697 = 0u;
      v121 = objc_msgSend_summary(v7, v117, v118, v119, v120);
      v126 = objc_msgSend_loopPoints(v121, v122, v123, v124, v125);

      v666 = v126;
      v128 = objc_msgSend_countByEnumeratingWithState_objects_count_(v126, v127, &v696, v735, 16);
      if (v128)
      {
        v133 = v128;
        v134 = *v697;
        v662 = *MEMORY[0x277CC08F0];
        v135 = *(MEMORY[0x277CC08F0] + 16);
        v136 = MEMORY[0x277CBEC10];
        do
        {
          for (j = 0; j != v133; ++j)
          {
            if (*v697 != v134)
            {
              objc_enumerationMutation(v666);
            }

            v138 = *(*(&v696 + 1) + 8 * j);
            memset(&v695, 0, sizeof(v695));
            objc_msgSend_doubleValue(v138, v129, v130, v131, v132);
            v140 = v139;
            v145 = objc_msgSend_sampleRate(self, v141, v142, v143, v144);
            CMTimeMakeWithSeconds(&start.start, v140, v145);
            *&duration.value = v662;
            duration.epoch = v135;
            CMTimeRangeMake(&v695, &start.start, &duration);
            v146 = [FMTimedMetadataItem alloc];
            v147 = MEMORY[0x277CCACA8];
            objc_msgSend_doubleValue(v138, v148, v149, v150, v151);
            v156 = objc_msgSend_stringWithFormat_(v147, v152, @"loop point @%f", v153, v154, v155);
            start = v695;
            v158 = objc_msgSend_initWithIdentifier_name_timeRange_values_(v146, v157, @"FMTimedMetadataIdentifierOnset", v156, &start, v136);

            objc_msgSend_addObject_(v12, v159, v158, v160, v161);
          }

          v133 = objc_msgSend_countByEnumeratingWithState_objects_count_(v666, v129, &v696, v735, 16);
        }

        while (v133);
        identifierCopy = v642;
        renditionCopy = v640;
        v7 = v644;
        v94 = v646;
      }
    }

    else
    {
      if (!objc_msgSend_isEqualToString_(identifierCopy, v117, @"FMTimedMetadataIdentifierSection", v119, v120))
      {
        goto LABEL_53;
      }

      v666 = objc_msgSend_objectForKeyedSubscript_(v641, v162, @"fadeToBlack", v163, v164);
      v659 = objc_msgSend_firstObject(v639, v165, v166, v167, v168);
      objc_msgSend_doubleValue(v659, v169, v170, v171, v172);
      v174 = MEMORY[0x277CC08F0];
      if (v175 != 0.0)
      {
        v733 = @"SectionType";
        v734 = @"BODY";
        v176 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v173, &v734, &v733, 1);
        memset(&v695, 0, sizeof(v695));
        CMTimeMakeWithSeconds(&start.start, 0.0, preferredTimescale);
        duration = *v174;
        CMTimeRangeMake(&v695, &start.start, &duration);
        v177 = [FMTimedMetadataItem alloc];
        start = v695;
        v179 = objc_msgSend_initWithIdentifier_name_timeRange_values_(v177, v178, @"FMTimedMetadataIdentifierSection", @"section", &start, v176);
        objc_msgSend_addObject_(v670, v180, v179, v181, v182);
      }

      v691 = 0u;
      v692 = 0u;
      v689 = 0u;
      v690 = 0u;
      v183 = v639;
      v185 = objc_msgSend_countByEnumeratingWithState_objects_count_(v183, v184, &v689, v732, 16);
      if (v185)
      {
        v190 = v185;
        v191 = *v690;
        v663 = *&v174->value;
        epoch = v174->epoch;
        do
        {
          for (k = 0; k != v190; ++k)
          {
            if (*v690 != v191)
            {
              objc_enumerationMutation(v183);
            }

            v194 = *(*(&v689 + 1) + 8 * k);
            memset(&v695, 0, sizeof(v695));
            objc_msgSend_doubleValue(v194, v186, v187, v188, v189);
            CMTimeMakeWithSeconds(&start.start, v195, preferredTimescale);
            *&duration.value = v663;
            duration.epoch = epoch;
            CMTimeRangeMake(&v695, &start.start, &duration);
            v200 = objc_msgSend_lastObject(v646, v196, v197, v198, v199);
            isEqualToNumber = objc_msgSend_isEqualToNumber_(v194, v201, v200, v202, v203);

            if (isEqualToNumber)
            {
              if (v666)
              {
                v209 = MEMORY[0x277CCABB0];
                objc_msgSend_doubleValue(v666, v205, v206, v207, v208);
                v211 = v210;
                objc_msgSend_doubleValue(v194, v212, v213, v214, v215);
                v221 = objc_msgSend_numberWithDouble_(v209, v217, v218, v219, v220, v211 - v216);

                v730[0] = @"SectionType";
                v730[1] = @"FadeToBlack";
                v731[0] = @"OUTRO";
                v731[1] = v221;
                v223 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v222, v731, v730, 2);
                v666 = v221;
              }

              else
              {
                v728 = @"SectionType";
                v729 = @"OUTRO";
                v223 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v205, &v729, &v728, 1);
                v666 = 0;
              }
            }

            else
            {
              v726 = @"SectionType";
              v727 = @"BODY";
              v223 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v205, &v727, &v726, 1);
            }

            v224 = [FMTimedMetadataItem alloc];
            start = v695;
            v226 = objc_msgSend_initWithIdentifier_name_timeRange_values_(v224, v225, @"FMTimedMetadataIdentifierSection", @"section", &start, v223);
            objc_msgSend_addObject_(v670, v227, v226, v228, v229);
          }

          v190 = objc_msgSend_countByEnumeratingWithState_objects_count_(v183, v186, &v689, v732, 16);
        }

        while (v190);
      }

      v234 = objc_msgSend_lastObject(v670, v230, v231, v232, v233);
      v239 = objc_msgSend_values(v234, v235, v236, v237, v238);
      v243 = objc_msgSend_objectForKeyedSubscript_(v239, v240, @"SectionType", v241, v242);
      isEqualToString = objc_msgSend_isEqualToString_(v243, v244, @"OUTRO", v245, v246);

      if (isEqualToString)
      {
        renditionCopy = v640;
        v7 = v644;
        v94 = v646;
        v252 = objc_msgSend_durationOfSilence(v644, v248, v249, v250, v251);
      }

      else
      {
        v94 = v646;
        v257 = objc_msgSend_lastObject(v646, v248, v249, v250, v251);
        memset(&v695, 0, sizeof(v695));
        objc_msgSend_doubleValue(v257, v258, v259, v260, v261);
        CMTimeMakeWithSeconds(&start.start, v262, preferredTimescale);
        duration = **&MEMORY[0x277CC08F0];
        CMTimeRangeMake(&v695, &start.start, &duration);
        renditionCopy = v640;
        v7 = v644;
        if (v666)
        {
          v267 = MEMORY[0x277CCABB0];
          objc_msgSend_doubleValue(v666, v263, v264, v265, v266);
          v269 = v268;
          objc_msgSend_doubleValue(v257, v270, v271, v272, v273);
          v279 = objc_msgSend_numberWithDouble_(v267, v275, v276, v277, v278, v269 - v274);

          v724[0] = @"SectionType";
          v724[1] = @"FadeToBlack";
          v725[0] = @"OUTRO";
          v725[1] = v279;
          v281 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v280, v725, v724, 2);
          v666 = v279;
        }

        else
        {
          v722 = @"SectionType";
          v723 = @"OUTRO";
          v281 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v263, &v723, &v722, 1);
          v666 = 0;
        }

        v282 = [FMTimedMetadataItem alloc];
        start = v695;
        v284 = objc_msgSend_initWithIdentifier_name_timeRange_values_(v282, v283, @"FMTimedMetadataIdentifierSection", @"section", &start, v281);
        objc_msgSend_addObject_(v670, v285, v284, v286, v287);

        identifierCopy = v642;
        v252 = objc_msgSend_durationOfSilence(v644, v288, v289, v290, v291);
      }

      if (v252)
      {
        memset(&v695, 0, sizeof(v695));
        v292 = objc_msgSend_durationOfMusic(v7, v253, v254, v255, v256);
        CMTimeMake(&start.start, v292, preferredTimescale);
        duration = **&MEMORY[0x277CC08F0];
        CMTimeRangeMake(&v695, &start.start, &duration);
        v720 = @"SectionType";
        v721 = @"SILENCE";
        v294 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v293, &v721, &v720, 1);
        v295 = [FMTimedMetadataItem alloc];
        start = v695;
        v297 = objc_msgSend_initWithIdentifier_name_timeRange_values_(v295, v296, @"FMTimedMetadataIdentifierSection", @"section", &start, v294);
        objc_msgSend_addObject_(v670, v298, v297, v299, v300);
      }

      v12 = v670;
    }

LABEL_53:
    v301 = v115 / v116;
    if (objc_msgSend_isEqualToString_(identifierCopy, v162, @"FMTimedMetadataIdentifierSegment", v163, v164))
    {
      v660 = objc_msgSend_objectForKeyedSubscript_(v641, v302, @"fadeToBlack", v303, v304);
      v309 = objc_msgSend_summary(v7, v305, v306, v307, v308);
      v314 = objc_msgSend_allBars(v309, v310, v311, v312, v313);

      v687 = 0u;
      v688 = 0u;
      v685 = 0u;
      v686 = 0u;
      v315 = v94;
      v667 = objc_msgSend_countByEnumeratingWithState_objects_count_(v315, v316, &v685, v719, 16);
      if (v667)
      {
        v321 = 0;
        v664 = *v686;
        v650 = *MEMORY[0x277CC08F0];
        v648 = *(MEMORY[0x277CC08F0] + 16);
        v655 = v314;
        v652 = v315;
        do
        {
          for (m = 0; m != v667; m = m + 1)
          {
            if (*v686 != v664)
            {
              objc_enumerationMutation(v315);
            }

            v323 = *(*(&v685 + 1) + 8 * m);
            v324 = objc_msgSend_lastObject(v315, v317, v318, v319, v320);
            v328 = objc_msgSend_isEqualToNumber_(v323, v325, v324, v326, v327);

            if (v328)
            {
              objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v329, v330, v331, v332, v301);
            }

            else
            {
              v333 = objc_msgSend_indexOfObject_(v315, v329, v323, v331, v332);
              objc_msgSend_objectAtIndexedSubscript_(v315, v334, v333 + 1, v335, v336);
            }
            v337 = ;
            if (v321 >= objc_msgSend_count(v314, v338, v339, v340, v341))
            {
              v347 = 0;
            }

            else
            {
              v346 = v12;
              v347 = 0;
              while (1)
              {
                v348 = objc_msgSend_objectAtIndexedSubscript_(v314, v342, v321 + v347, v344, v345);
                objc_msgSend_doubleValue(v348, v349, v350, v351, v352);
                v354 = v353;
                objc_msgSend_doubleValue(v337, v355, v356, v357, v358);
                v360 = v359;

                if (v354 >= v360)
                {
                  break;
                }

                ++v347;
                if (v321 + v347 >= objc_msgSend_count(v314, v342, v343, v344, v345))
                {
                  goto LABEL_69;
                }
              }

              v321 += v347;
LABEL_69:
              v12 = v346;
              v315 = v652;
            }

            memset(&v695, 0, sizeof(v695));
            objc_msgSend_doubleValue(v323, v342, v343, v344, v345);
            CMTimeMakeWithSeconds(&start.start, v361, preferredTimescale);
            *&duration.value = v650;
            duration.epoch = v648;
            CMTimeRangeMake(&v695, &start.start, &duration);
            v366 = objc_msgSend_lastObject(v315, v362, v363, v364, v365);
            v370 = objc_msgSend_isEqualToNumber_(v323, v367, v366, v368, v369);

            if (v370)
            {
              if (v660)
              {
                v376 = MEMORY[0x277CCABB0];
                objc_msgSend_doubleValue(v660, v371, v372, v373, v374);
                v378 = v377;
                objc_msgSend_doubleValue(v323, v379, v380, v381, v382);
                v388 = objc_msgSend_numberWithDouble_(v376, v384, v385, v386, v387, v378 - v383);

                v718[0] = @"OUTRO";
                v717[0] = @"SegmentType";
                v717[1] = @"PeakValue";
                LODWORD(v389) = v57;
                v394 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v390, v391, v392, v393, v389);
                v718[1] = v394;
                v717[2] = @"Loudness";
                v399 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v395, v396, v397, v398, v46);
                v718[2] = v399;
                v717[3] = @"BarsUsed";
                v403 = objc_msgSend_numberWithInteger_(MEMORY[0x277CCABB0], v400, v347, v401, v402);
                v717[4] = @"FadeToBlack";
                v718[3] = v403;
                v718[4] = v388;
                v405 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v404, v718, v717, 5);
                v660 = v388;
                v12 = v670;
              }

              else
              {
                v716[0] = @"OUTRO";
                v715[0] = @"SegmentType";
                v715[1] = @"PeakValue";
                LODWORD(v375) = v57;
                v394 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v371, v372, v373, v374, v375);
                v716[1] = v394;
                v715[2] = @"Loudness";
                v399 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v414, v415, v416, v417, v46);
                v716[2] = v399;
                v715[3] = @"BarsUsed";
                v403 = objc_msgSend_numberWithInteger_(MEMORY[0x277CCABB0], v418, v347, v419, v420);
                v716[3] = v403;
                v405 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v421, v716, v715, 4);
                v660 = 0;
              }

              v315 = v652;
            }

            else
            {
              v714[0] = @"BODY";
              v713[0] = @"SegmentType";
              v713[1] = @"PeakValue";
              LODWORD(v375) = v57;
              v394 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v371, v372, v373, v374, v375);
              v714[1] = v394;
              v713[2] = @"Loudness";
              v399 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v406, v407, v408, v409, v46);
              v714[2] = v399;
              v713[3] = @"BarsUsed";
              v403 = objc_msgSend_numberWithInteger_(MEMORY[0x277CCABB0], v410, v347, v411, v412);
              v714[3] = v403;
              v405 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v413, v714, v713, 4);
            }

            v422 = [FMTimedMetadataItem alloc];
            start = v695;
            v424 = objc_msgSend_initWithIdentifier_name_timeRange_values_(v422, v423, @"FMTimedMetadataIdentifierSegment", @"segment", &start, v405);
            objc_msgSend_addObject_(v12, v425, v424, v426, v427);

            v314 = v655;
          }

          v667 = objc_msgSend_countByEnumeratingWithState_objects_count_(v315, v317, &v685, v719, 16);
        }

        while (v667);
      }

      if (objc_msgSend_durationOfSilence(v644, v428, v429, v430, v431))
      {
        memset(&v695, 0, sizeof(v695));
        v436 = objc_msgSend_durationOfMusic(v644, v432, v433, v434, v435);
        CMTimeMake(&start.start, v436, preferredTimescale);
        duration = **&MEMORY[0x277CC08F0];
        CMTimeRangeMake(&v695, &start.start, &duration);
        v711 = @"SegmentType";
        v712 = @"SILENCE";
        v438 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v437, &v712, &v711, 1);
        v439 = [FMTimedMetadataItem alloc];
        start = v695;
        v441 = objc_msgSend_initWithIdentifier_name_timeRange_values_(v439, v440, @"FMTimedMetadataIdentifierSegment", @"segment", &start, v438);
        objc_msgSend_addObject_(v12, v442, v441, v443, v444);
      }

      identifierCopy = v642;
      renditionCopy = v640;
      v445 = v660;
      goto LABEL_121;
    }

    if ((objc_msgSend_isEqualToString_(identifierCopy, v302, @"FMTimedMetadataIdentifierBar", v303, v304) & 1) == 0 && !objc_msgSend_isEqualToString_(identifierCopy, v446, @"FMTimedMetadataIdentifierBeat", v448, v449))
    {
      goto LABEL_122;
    }

    v450 = objc_msgSend_count(v94, v446, v447, v448, v449);
    v455 = 0x7FFFFFFFFFFFFFFFLL;
    if (v450 > 1)
    {
      v455 = 1;
    }

    v651 = v455;
    v456 = objc_msgSend_summary(v7, v451, v452, v453, v454);
    v461 = objc_msgSend_allBars(v456, v457, v458, v459, v460);

    v314 = objc_msgSend_firstObject(v461, v462, v463, v464, v465);
    objc_msgSend_doubleValue(v314, v466, v467, v468, v469);
    if (v472 != 0.0)
    {
      v710 = &unk_285EA8760;
      v473 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v470, &v710, 1, v471);
      v477 = objc_msgSend_arrayByAddingObjectsFromArray_(v473, v474, v461, v475, v476);

      v461 = v477;
    }

    v683 = 0u;
    v684 = 0u;
    v681 = 0u;
    v682 = 0u;
    v445 = v461;
    v645 = objc_msgSend_countByEnumeratingWithState_objects_count_(v445, v478, &v681, v709, 16);
    if (!v645)
    {
LABEL_120:

      renditionCopy = v640;
LABEL_121:

      v94 = v646;
      v7 = v644;
LABEL_122:
      if (objc_msgSend_count(v12, v446, v447, v448, v449))
      {
        if (objc_msgSend_count(v12, v595, v596, v597, v598) != 1)
        {
          v603 = 0;
          do
          {
            v604 = objc_msgSend_objectAtIndex_(v12, v599, v603, v601, v602);
            v608 = objc_msgSend_objectAtIndex_(v12, v605, ++v603, v606, v607);
            v613 = v608;
            memset(&v695, 0, 24);
            if (v608)
            {
              objc_msgSend_timeRange(v608, v609, v610, v611, v612);
            }

            else
            {
              *&v673 = 0;
              v672 = 0u;
            }

            *&start.start.value = v672;
            start.start.epoch = v673;
            if (v604)
            {
              objc_msgSend_timeRange(v604, v609, v610, v611, v612);
            }

            else
            {
              memset(&v671[2], 0, sizeof(CMTime));
            }

            duration = v671[2];
            CMTimeSubtract(&v695.start, &start.start, &duration);
            *&start.start.value = *&v695.start.value;
            start.start.epoch = v695.start.epoch;
            objc_msgSend_adjustDurationTo_(v604, v614, &start, v615, v616);
          }

          while (v603 < objc_msgSend_count(v12, v617, v618, v619, v620) - 1);
        }

        v621 = objc_msgSend_lastObject(v12, v599, v600, v601, v602);
        memset(&v695, 0, 24);
        v626 = objc_msgSend_duration(v7, v622, v623, v624, v625);
        CMTimeMake(&start.start, v626, preferredTimescale);
        if (v621)
        {
          objc_msgSend_timeRange(v621, v627, v628, v629, v630);
        }

        else
        {
          memset(v671, 0, 24);
        }

        duration = v671[0];
        CMTimeSubtract(&v695.start, &start.start, &duration);
        *&start.start.value = *&v695.start.value;
        start.start.epoch = v695.start.epoch;
        objc_msgSend_adjustDurationTo_(v621, v631, &start, v632, v633);
      }

      v69 = v12;

      goto LABEL_137;
    }

    v483 = *v682;
    v668 = -1;
    v484 = MEMORY[0x277CC08F0];
    v656 = v314;
    v661 = v445;
    v643 = *v682;
LABEL_89:
    v485 = 0;
    while (1)
    {
      if (*v682 != v483)
      {
        objc_enumerationMutation(v445);
      }

      v657 = v485;
      v486 = *(*(&v681 + 1) + 8 * v485);
      v487 = objc_msgSend_lastObject(v445, v479, v480, v481, v482);
      if (objc_msgSend_isEqualToNumber_(v486, v488, v487, v489, v490))
      {
        objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v491, v492, v493, v494, v115 / v116);
      }

      else
      {
        v495 = objc_msgSend_indexOfObject_(v445, v491, v486, v493, v494);
        objc_msgSend_objectAtIndexedSubscript_(v445, v496, v495 + 1, v497, v498);
      }
      v499 = ;

      if (v651 == 0x7FFFFFFFFFFFFFFFLL || (objc_msgSend_objectAtIndexedSubscript_(v646, v500, v651, v502, v503), (v504 = objc_claimAutoreleasedReturnValue()) == 0))
      {
        ++v668;
      }

      else
      {
        v505 = v504;
        objc_msgSend_doubleValue(v486, v500, v501, v502, v503);
        v507 = v506;
        objc_msgSend_doubleValue(v505, v508, v509, v510, v511);
        if (v507 >= v516)
        {
          v593 = v651 + 1 < objc_msgSend_count(v646, v512, v513, v514, v515) ? v651 + 1 : 0x7FFFFFFFFFFFFFFFLL;
          v651 = v593;
          v483 = v643;

          v668 = 0;
        }

        else
        {
          ++v668;
        }
      }

      v517 = objc_msgSend_summary(v644, v500, v501, v502, v503);
      v522 = objc_msgSend_allBeats(v517, v518, v519, v520, v521);

      v678[0] = MEMORY[0x277D85DD0];
      v678[1] = 3221225472;
      v678[2] = sub_24B7EE4E8;
      v678[3] = &unk_27900EC18;
      v523 = v499;
      v679 = v523;
      v680 = v486;
      v653 = objc_msgSend_indexesOfObjectsPassingTest_(v522, v524, v678, v525, v526);
      v654 = v522;
      v530 = objc_msgSend_objectsAtIndexes_(v522, v527, v653, v528, v529);
      v534 = objc_msgSend_sortedArrayUsingSelector_(v530, v531, sel_compare_, v532, v533);

      v658 = v534;
      if (objc_msgSend_isEqualToString_(identifierCopy, v535, @"FMTimedMetadataIdentifierBar", v536, v537))
      {
        break;
      }

      v564 = v657;
      if (objc_msgSend_isEqualToString_(identifierCopy, v538, @"FMTimedMetadataIdentifierBeat", v540, v541))
      {
        v649 = v523;
        v676 = 0u;
        v677 = 0u;
        v674 = 0u;
        v675 = 0u;
        v552 = v534;
        v566 = objc_msgSend_countByEnumeratingWithState_objects_count_(v552, v565, &v674, v706, 16);
        if (v566)
        {
          v570 = v566;
          v571 = 0;
          v572 = *v675;
          do
          {
            for (n = 0; n != v570; ++n)
            {
              if (*v675 != v572)
              {
                objc_enumerationMutation(v552);
              }

              v574 = *(*(&v674 + 1) + 8 * n);
              v704[0] = @"BarIndex";
              v575 = objc_msgSend_numberWithInteger_(MEMORY[0x277CCABB0], v567, v668, v568, v569);
              v705[0] = v575;
              v704[1] = @"BeatIndex";
              v579 = objc_msgSend_numberWithInteger_(MEMORY[0x277CCABB0], v576, v571, v577, v578);
              v705[1] = v579;
              v581 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v580, v705, v704, 2);

              memset(&v695, 0, sizeof(v695));
              objc_msgSend_doubleValue(v574, v582, v583, v584, v585);
              CMTimeMakeWithSeconds(&start.start, v586, preferredTimescale);
              duration = *v484;
              CMTimeRangeMake(&v695, &start.start, &duration);
              v587 = [FMTimedMetadataItem alloc];
              start = v695;
              v589 = objc_msgSend_initWithIdentifier_name_timeRange_values_(v587, v588, @"FMTimedMetadataIdentifierBeat", @"beat", &start, v581);
              objc_msgSend_addObject_(v670, v590, v589, v591, v592);
              ++v571;
            }

            v570 = objc_msgSend_countByEnumeratingWithState_objects_count_(v552, v567, &v674, v706, 16);
          }

          while (v570);
          identifierCopy = v642;
          v483 = v643;
          v12 = v670;
LABEL_111:
          v564 = v657;
        }

        v314 = v656;
        v523 = v649;
      }

      v485 = v564 + 1;
      v445 = v661;
      if (v485 == v645)
      {
        v594 = objc_msgSend_countByEnumeratingWithState_objects_count_(v661, v479, &v681, v709, 16);
        v645 = v594;
        if (!v594)
        {
          goto LABEL_120;
        }

        goto LABEL_89;
      }
    }

    v649 = v523;
    v542 = objc_msgSend_count(v534, v538, v539, v540, v541);
    v707[0] = @"BarIndex";
    v546 = objc_msgSend_numberWithInteger_(MEMORY[0x277CCABB0], v543, v668, v544, v545);
    v708[0] = v546;
    v707[1] = @"BeatsPerBar";
    v550 = objc_msgSend_numberWithInteger_(MEMORY[0x277CCABB0], v547, v542, v548, v549);
    v708[1] = v550;
    v552 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v551, v708, v707, 2);

    memset(&v695, 0, sizeof(v695));
    objc_msgSend_doubleValue(v486, v553, v554, v555, v556);
    CMTimeMakeWithSeconds(&start.start, v557, preferredTimescale);
    duration = *v484;
    CMTimeRangeMake(&v695, &start.start, &duration);
    v558 = [FMTimedMetadataItem alloc];
    start = v695;
    v560 = objc_msgSend_initWithIdentifier_name_timeRange_values_(v558, v559, @"FMTimedMetadataIdentifierBar", @"bar", &start, v552);
    objc_msgSend_addObject_(v12, v561, v560, v562, v563);

    goto LABEL_111;
  }

  v69 = MEMORY[0x277CBEBF8];
LABEL_137:

LABEL_138:
  v634 = *MEMORY[0x277D85DE8];

  return v69;
}

- (BOOL)verifyRendition:(id)rendition forDuration:(id *)duration failureReason:(id *)reason
{
  v426 = *MEMORY[0x277D85DE8];
  renditionCopy = rendition;
  v420.receiver = self;
  v420.super_class = FlexMLSong;
  v419 = *duration;
  if ([(FlexSongBackend *)&v420 verifyRendition:renditionCopy forDuration:&v419 failureReason:reason])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = objc_msgSend_trackA(renditionCopy, v9, v10, v11, v12);
      v18 = objc_msgSend_mixParameters(v13, v14, v15, v16, v17);
      v23 = objc_msgSend_volumeKeyFrames(v18, v19, v20, v21, v22);
      v28 = objc_msgSend_lastObject(v23, v24, v25, v26, v27);
      v33 = objc_msgSend_sampleTime(v28, v29, v30, v31, v32);

      v38 = objc_msgSend_trackB(renditionCopy, v34, v35, v36, v37);
      v43 = objc_msgSend_mixParameters(v38, v39, v40, v41, v42);
      v48 = objc_msgSend_volumeKeyFrames(v43, v44, v45, v46, v47);
      v53 = objc_msgSend_lastObject(v48, v49, v50, v51, v52);
      v58 = objc_msgSend_sampleTime(v53, v54, v55, v56, v57);

      if (v33 <= v58)
      {
        v33 = v58;
      }

      if (v33 <= objc_msgSend_duration(renditionCopy, v59, v60, v61, v62))
      {
        reasonCopy = reason;
        v88 = objc_msgSend_trackA(renditionCopy, v63, v64, v65, v66);
        v93 = objc_msgSend_clips(v88, v89, v90, v91, v92);
        v98 = objc_msgSend_lastObject(v93, v94, v95, v96, v97);
        v103 = objc_msgSend_position(v98, v99, v100, v101, v102);
        v108 = objc_msgSend_trackA(renditionCopy, v104, v105, v106, v107);
        v113 = objc_msgSend_clips(v108, v109, v110, v111, v112);
        v118 = objc_msgSend_lastObject(v113, v114, v115, v116, v117);
        v123 = objc_msgSend_duration(v118, v119, v120, v121, v122) + v103;

        v128 = objc_msgSend_trackB(renditionCopy, v124, v125, v126, v127);
        v133 = objc_msgSend_clips(v128, v129, v130, v131, v132);
        v138 = objc_msgSend_lastObject(v133, v134, v135, v136, v137);
        v143 = objc_msgSend_position(v138, v139, v140, v141, v142);
        v148 = objc_msgSend_trackB(renditionCopy, v144, v145, v146, v147);
        v153 = objc_msgSend_clips(v148, v149, v150, v151, v152);
        v158 = objc_msgSend_lastObject(v153, v154, v155, v156, v157);
        v163 = objc_msgSend_duration(v158, v159, v160, v161, v162) + v143;

        if (v123 <= v163)
        {
          v168 = v163;
        }

        else
        {
          v168 = v123;
        }

        if (v168 == objc_msgSend_duration(renditionCopy, v164, v165, v166, v167))
        {
          v172 = objc_msgSend_timedMetadataItemsWithIdentifier_(renditionCopy, v169, @"FMTimedMetadataIdentifierLoopPoints", v170, v171);
          v177 = v172;
          v178 = reasonCopy;
          if (v172 && objc_msgSend_count(v172, v173, v174, v175, v176))
          {
            memset(&v419, 0, sizeof(v419));
            v179 = objc_msgSend_idealDurations(self, v173, v174, v175, v176);
            v184 = objc_msgSend_lastObject(v179, v180, v181, v182, v183);
            v189 = v184;
            if (v184)
            {
              objc_msgSend_CMTimeValue(v184, v185, v186, v187, v188);
            }

            else
            {
              memset(&v419, 0, sizeof(v419));
            }

            v203 = FlexLogForCategory(1uLL);
            if (os_log_type_enabled(v203, OS_LOG_TYPE_DEBUG))
            {
              sub_24B7EF864(v177, v203, v204, v205, v206);
            }

            v211 = objc_msgSend_count(v177, v207, v208, v209, v210);
            time = v419;
            CMTimeMultiply(&v418, &time, v211);
            value = v418.value;
            if (value > objc_msgSend_duration(renditionCopy, v213, v214, v215, v216))
            {
              v217 = MEMORY[0x277CCACA8];
              v218 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v173, v211, v175, v176);
              v222 = objc_msgSend_numberWithLongLong_(MEMORY[0x277CCABB0], v219, v419.value, v220, v221);
              v223 = MEMORY[0x277CCABB0];
              v228 = objc_msgSend_duration(renditionCopy, v224, v225, v226, v227);
              v232 = objc_msgSend_numberWithLongLong_(v223, v229, v228, v230, v231);
              *reasonCopy = objc_msgSend_stringWithFormat_(v217, v233, @"Expected that the number of loops detected (%@) * the max duration detected from the idealDurations.lastObject (%@) is <= the rendition.duration (%@)", v234, v235, v218, v222, v232);
            }
          }

          v236 = objc_msgSend_summary(renditionCopy, v173, v174, v175, v176);
          v413 = 0u;
          v414 = 0u;
          v415 = 0u;
          v416 = 0u;
          v241 = objc_msgSend_segments(v236, v237, v238, v239, v240);
          v243 = objc_msgSend_countByEnumeratingWithState_objects_count_(v241, v242, &v413, v425, 16);
          v396 = v177;
          if (v243)
          {
            v248 = *v414;
            v394 = v241;
            v387 = *v414;
            do
            {
              v249 = 0;
              v389 = v243;
              do
              {
                if (*v414 != v248)
                {
                  objc_enumerationMutation(v241);
                }

                v391 = v249;
                v250 = *(*(&v413 + 1) + 8 * v249);
                v409 = 0u;
                v410 = 0u;
                v411 = 0u;
                v412 = 0u;
                v251 = objc_msgSend_gainFunction(v250, v244, v245, v246, v247);
                v253 = objc_msgSend_countByEnumeratingWithState_objects_count_(v251, v252, &v409, v424, 16);
                if (!v253)
                {
                  goto LABEL_41;
                }

                v258 = v253;
                v259 = *v410;
                v393 = v236;
                while (2)
                {
                  v260 = 0;
                  v398 = v258;
                  do
                  {
                    if (*v410 != v259)
                    {
                      objc_enumerationMutation(v251);
                    }

                    v261 = *(*(&v409 + 1) + 8 * v260);
                    objc_msgSend_gain(v261, v254, v255, v256, v257);
                    v263 = v262;
                    v264 = v262;
                    if (v262 < 1.0 && v264 > 1.0e-13)
                    {
                      v265 = objc_msgSend_gainFunction(v250, v254, v255, v256, v257);
                      v270 = objc_msgSend_firstObject(v265, v266, v267, v268, v269);
                      if (objc_msgSend_isEqual_(v261, v271, v270, v272, v273))
                      {

LABEL_53:
                        objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v254, @"Expected a gain value of 0.00000000000001 or 1 for the first and last object in the gainFunction but found %f", v256, v257, *&v264);
LABEL_54:
                        v82 = 0;
                        *reasonCopy = v68 = v396;
                        v236 = v393;
                        v308 = v394;
                        goto LABEL_84;
                      }

                      objc_msgSend_gainFunction(v250, v274, v275, v276, v277);
                      v278 = v251;
                      v279 = renditionCopy;
                      v281 = v280 = v250;
                      v286 = objc_msgSend_lastObject(v281, v282, v283, v284, v285);
                      isEqual = objc_msgSend_isEqual_(v261, v287, v286, v288, v289);

                      v250 = v280;
                      renditionCopy = v279;
                      v251 = v278;
                      v258 = v398;

                      if (isEqual)
                      {
                        goto LABEL_53;
                      }
                    }

                    if (v263 < 0.0)
                    {
                      objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v254, @"Expected a gain value of >= 0 but found: %f", v256, v257, *&v264);
                      goto LABEL_54;
                    }

                    ++v260;
                  }

                  while (v258 != v260);
                  v258 = objc_msgSend_countByEnumeratingWithState_objects_count_(v251, v254, &v409, v424, 16);
                  v236 = v393;
                  if (v258)
                  {
                    continue;
                  }

                  break;
                }

LABEL_41:

                v295 = objc_msgSend_gainFunction(v250, v291, v292, v293, v294);
                v251 = objc_msgSend_lastObject(v295, v296, v297, v298, v299);

                memset(&v419, 0, sizeof(v419));
                if (v251)
                {
                  objc_msgSend_segmentTime(v251, v300, v301, v302, v303);
                }

                v178 = reasonCopy;
                if (v250)
                {
                  objc_msgSend_duration(v250, v300, v301, v302, v303);
                }

                else
                {
                  memset(&time, 0, sizeof(time));
                }

                v68 = v396;
                time1 = v419;
                if (CMTimeCompare(&time1, &time))
                {
                  v375 = MEMORY[0x277CCACA8];
                  time = v419;
                  Seconds = CMTimeGetSeconds(&time);
                  if (v250)
                  {
                    objc_msgSend_duration(v250, v376, v377, v378, v379);
                  }

                  else
                  {
                    memset(&time, 0, sizeof(time));
                  }

                  v308 = v394;
                  v381 = CMTimeGetSeconds(&time);
                  objc_msgSend_stringWithFormat_(v375, v382, @"The last segmentTime value (%f) in the gain function must match that of the segment duration (%f).", v383, v384, *&Seconds, *&v381);
                  *reasonCopy = v82 = 0;
                  goto LABEL_84;
                }

                v249 = v391 + 1;
                v241 = v394;
                v248 = v387;
              }

              while (v391 + 1 != v389);
              v243 = objc_msgSend_countByEnumeratingWithState_objects_count_(v394, v244, &v413, v425, 16);
            }

            while (v243);
          }

          v308 = objc_msgSend_videoCues(v236, v304, v305, v306, v307);
          v313 = objc_msgSend_allBars(v236, v309, v310, v311, v312);

          if (v313)
          {
            v318 = objc_msgSend_allBars(v236, v314, v315, v316, v317);
          }

          else
          {
            v318 = MEMORY[0x277CBEBF8];
          }

          v319 = objc_msgSend_allBeats(v236, v314, v315, v316, v317);

          if (v319)
          {
            v324 = objc_msgSend_allBeats(v236, v320, v321, v322, v323);
          }

          else
          {
            v324 = MEMORY[0x277CBEBF8];
          }

          v325 = objc_msgSend_objectForKeyedSubscript_(v308, v320, @"fadeToBlack", v322, v323);
          v329 = objc_msgSend_objectForKeyedSubscript_(v308, v326, @"goodCues", v327, v328);
          v337 = objc_msgSend_objectForKeyedSubscript_(v308, v330, @"greatCues", v331, v332);
          v388 = v325;
          if (v236)
          {
            objc_msgSend_duration(v236, v333, v334, v335, v336);
          }

          else
          {
            memset(&v419, 0, sizeof(v419));
          }

          v338 = CMTimeGetSeconds(&v419);
          v404 = 0u;
          v405 = 0u;
          v406 = 0u;
          v407 = 0u;
          v390 = v324;
          v392 = v318;
          v422[0] = v318;
          v422[1] = v324;
          v399 = v329;
          v422[2] = v329;
          v422[3] = v337;
          v341 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v339, v422, 4, v340);
          v343 = objc_msgSend_countByEnumeratingWithState_objects_count_(v341, v342, &v404, v423, 16);
          if (v343)
          {
            v344 = v343;
            v345 = *v405;
            v395 = v308;
            v385 = *v405;
            v386 = v337;
            do
            {
              v346 = 0;
              do
              {
                v347 = v236;
                if (*v405 != v345)
                {
                  objc_enumerationMutation(v341);
                }

                v348 = *(*(&v404 + 1) + 8 * v346);
                v400 = 0u;
                v401 = 0u;
                v402 = 0u;
                v403 = 0u;
                v349 = v348;
                v351 = objc_msgSend_countByEnumeratingWithState_objects_count_(v349, v350, &v400, v421, 16);
                if (v351)
                {
                  v356 = v351;
                  v357 = *v401;
                  while (2)
                  {
                    for (i = 0; i != v356; ++i)
                    {
                      if (*v401 != v357)
                      {
                        objc_enumerationMutation(v349);
                      }

                      v359 = *(*(&v400 + 1) + 8 * i);
                      objc_msgSend_floatValue(v359, v352, v353, v354, v355);
                      if (v338 < v360)
                      {
                        objc_msgSend_floatValue(v359, v352, v353, v354, v355);
                        if (vabdd_f64(v361, v338) > 0.001)
                        {
                          *reasonCopy = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v352, @"All video cue values should be < the summary.duration (%f).", v354, v355, *&v338);

                          v82 = 0;
                          v236 = v347;
                          v308 = v395;
                          v68 = v396;
                          v372 = v390;
                          v251 = v392;
                          v337 = v386;
                          v363 = v388;
                          goto LABEL_83;
                        }
                      }
                    }

                    v356 = objc_msgSend_countByEnumeratingWithState_objects_count_(v349, v352, &v400, v421, 16);
                    if (v356)
                    {
                      continue;
                    }

                    break;
                  }
                }

                ++v346;
                v178 = reasonCopy;
                v236 = v347;
                v308 = v395;
                v345 = v385;
                v337 = v386;
              }

              while (v346 != v344);
              v344 = objc_msgSend_countByEnumeratingWithState_objects_count_(v341, v362, &v404, v423, 16);
            }

            while (v344);
          }

          v363 = v388;
          objc_msgSend_floatValue(v388, v364, v365, v366, v367);
          if (v338 >= v371)
          {
            v82 = 1;
          }

          else
          {
            objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v368, @"Fade to black value should be < the summary.duration (%f).", v369, v370, *&v338);
            *v178 = v82 = 0;
          }

          v68 = v396;
          v372 = v390;
          v251 = v392;
LABEL_83:

LABEL_84:
          goto LABEL_85;
        }

        v190 = MEMORY[0x277CCACA8];
        v68 = objc_msgSend_numberWithLongLong_(MEMORY[0x277CCABB0], v169, v168, v170, v171);
        v191 = MEMORY[0x277CCABB0];
        v196 = objc_msgSend_duration(renditionCopy, v192, v193, v194, v195);
        v78 = objc_msgSend_numberWithLongLong_(v191, v197, v196, v198, v199);
        *reasonCopy = objc_msgSend_stringWithFormat_(v190, v200, @"The last clip's end time of %@ should equal the rendition's duration in seconds: %@. Here we are assuming that clips are using a timescale of 'sampleRate'.", v201, v202, v68, v78);
      }

      else
      {
        v67 = MEMORY[0x277CCACA8];
        v68 = objc_msgSend_numberWithLongLong_(MEMORY[0x277CCABB0], v63, v33, v65, v66);
        v69 = MEMORY[0x277CCABB0];
        v74 = objc_msgSend_duration(renditionCopy, v70, v71, v72, v73);
        v78 = objc_msgSend_numberWithLongLong_(v69, v75, v74, v76, v77);
        *reason = objc_msgSend_stringWithFormat_(v67, v79, @"Final keyframe sampleTime: %@ must be less or equal to the rendition's duration: %@", v80, v81, v68, v78);
      }

      v82 = 0;
    }

    else
    {
      v83 = MEMORY[0x277CCACA8];
      v84 = objc_opt_class();
      v68 = NSStringFromClass(v84);
      objc_msgSend_stringWithFormat_(v83, v85, @"Expected a FlexMLSongRendition but got a %@.", v86, v87, v68);
      *reason = v82 = 0;
    }

LABEL_85:

    goto LABEL_86;
  }

  v82 = 0;
LABEL_86:

  v373 = *MEMORY[0x277D85DE8];
  return v82;
}

- (id)idealDurations
{
  v5 = objc_msgSend__summaryManager(self, a2, v2, v3, v4);
  v10 = objc_msgSend_allSummaryDurations(v5, v6, v7, v8, v9);

  return v10;
}

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)naturalDuration
{
  v88 = *MEMORY[0x277D85DE8];
  p_var3 = &self[5].var3;
  if ((self[6].var0 & 0x100000000) == 0)
  {
    selfCopy = self;
    v8 = objc_msgSend_existingAssetWithID_(self, a3, @"FMSongBundleAssetID", v3, v4);
    v13 = objc_msgSend_localURL(v8, v9, v10, v11, v12);

    if (v13)
    {
      v75 = v8;
      v18 = objc_msgSend_localURL(v8, v14, v15, v16, v17);
      v23 = objc_msgSend_path(v18, v19, v20, v21, v22);

      v28 = objc_msgSend_defaultManager(MEMORY[0x277CCAA00], v24, v25, v26, v27);
      v80 = 0;
      v31 = objc_msgSend_contentsOfDirectoryAtPath_error_(v28, v29, v23, &v80, v30);
      v32 = v80;

      v78 = 0u;
      v79 = 0u;
      v76 = 0u;
      v77 = 0u;
      v33 = v31;
      v35 = objc_msgSend_countByEnumeratingWithState_objects_count_(v33, v34, &v76, v87, 16);
      v40 = v33;
      if (v35)
      {
        v41 = v35;
        v73 = retstr;
        v74 = v32;
        v72 = v23;
        v42 = *v77;
LABEL_5:
        v43 = 0;
        while (1)
        {
          if (*v77 != v42)
          {
            objc_enumerationMutation(v33);
          }

          v44 = *(*(&v76 + 1) + 8 * v43);
          v45 = objc_msgSend_pathExtension(v44, v36, v37, v38, v39, v72);
          v50 = objc_msgSend_audioFileExtension(selfCopy, v46, v47, v48, v49);
          isEqualToString = objc_msgSend_isEqualToString_(v45, v51, v50, v52, v53);

          if (isEqualToString)
          {
            break;
          }

          if (v41 == ++v43)
          {
            v41 = objc_msgSend_countByEnumeratingWithState_objects_count_(v33, v36, &v76, v87, 16);
            if (v41)
            {
              goto LABEL_5;
            }

            v40 = v33;
            v23 = v72;
            retstr = v73;
            v32 = v74;
            goto LABEL_21;
          }
        }

        v23 = v72;
        v40 = objc_msgSend_stringByAppendingPathComponent_(v72, v36, v44, v38, v39);

        retstr = v73;
        v32 = v74;
        if (!v40)
        {
          goto LABEL_22;
        }

        v58 = objc_msgSend_fileURLWithPath_(MEMORY[0x277CBEBC0], v55, v40, v56, v57);
        outExtAudioFile = 0;
        if (ExtAudioFileOpenURL(v58, &outExtAudioFile))
        {
          v59 = 1;
        }

        else
        {
          v59 = outExtAudioFile == 0;
        }

        if (!v59)
        {
          v84 = 0;
          outPropertyData = 0u;
          v83 = 0u;
          ioPropertyDataSize = 40;
          if (ExtAudioFileGetProperty(outExtAudioFile, 0x66666D74u, &ioPropertyDataSize, &outPropertyData) || (v60 = *&outPropertyData, v81 = 0, ioPropertyDataSize = 8, ExtAudioFileGetProperty(outExtAudioFile, 0x2366726Du, &ioPropertyDataSize, &v81)))
          {
            ExtAudioFileDispose(outExtAudioFile);
          }

          else
          {
            v62 = v81;
            ExtAudioFileDispose(outExtAudioFile);
            objc_msgSend_updateSampleRate_(selfCopy, v63, v60, v64, v65);
            v70 = objc_msgSend_sampleRate(selfCopy, v66, v67, v68, v69);
            v71 = v62;
            v32 = v74;
            CMTimeMake(&outPropertyData, v71, v70);
            *p_var3 = outPropertyData;
            p_var3[2] = v83;
          }
        }
      }

LABEL_21:

LABEL_22:
      v8 = v75;
    }
  }

  *&retstr->var0 = *p_var3;
  retstr->var3 = p_var3[2];
  v61 = *MEMORY[0x277D85DE8];
  return self;
}

- (NSURL)audioFileURL
{
  v66 = *MEMORY[0x277D85DE8];
  v5 = objc_msgSend_existingAssetWithID_(self, a2, @"FMSongBundleAssetID", v2, v3);
  v10 = objc_msgSend_localURL(v5, v6, v7, v8, v9);

  if (v10)
  {
    v15 = objc_msgSend_localURL(v5, v11, v12, v13, v14);
    v20 = objc_msgSend_path(v15, v16, v17, v18, v19);

    v25 = objc_msgSend_defaultManager(MEMORY[0x277CCAA00], v21, v22, v23, v24);
    v64 = 0;
    v28 = objc_msgSend_contentsOfDirectoryAtPath_error_(v25, v26, v20, &v64, v27);
    v29 = v64;

    v62 = 0u;
    v63 = 0u;
    v60 = 0u;
    v61 = 0u;
    v30 = v28;
    v32 = objc_msgSend_countByEnumeratingWithState_objects_count_(v30, v31, &v60, v65, 16);
    if (v32)
    {
      v37 = v32;
      v58 = v29;
      v59 = v20;
      v38 = *v61;
LABEL_4:
      v39 = 0;
      while (1)
      {
        if (*v61 != v38)
        {
          objc_enumerationMutation(v30);
        }

        v40 = *(*(&v60 + 1) + 8 * v39);
        v41 = objc_msgSend_pathExtension(v40, v33, v34, v35, v36, v58);
        v46 = objc_msgSend_audioFileExtension(self, v42, v43, v44, v45);
        isEqualToString = objc_msgSend_isEqualToString_(v41, v47, v46, v48, v49);

        if (isEqualToString)
        {
          break;
        }

        if (v37 == ++v39)
        {
          v37 = objc_msgSend_countByEnumeratingWithState_objects_count_(v30, v33, &v60, v65, 16);
          if (v37)
          {
            goto LABEL_4;
          }

          v51 = 0;
          v52 = v30;
          v20 = v59;
          goto LABEL_13;
        }
      }

      v20 = v59;
      v52 = objc_msgSend_stringByAppendingPathComponent_(v59, v33, v40, v35, v36);

      if (v52)
      {
        v51 = objc_msgSend_fileURLWithPath_(MEMORY[0x277CBEBC0], v53, v52, v54, v55);
LABEL_13:
        v29 = v58;
        goto LABEL_16;
      }

      v51 = 0;
      v29 = v58;
    }

    else
    {
      v51 = 0;
      v52 = v30;
LABEL_16:
    }
  }

  else
  {
    v51 = 0;
  }

  v56 = *MEMORY[0x277D85DE8];

  return v51;
}

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)minimumDuration
{
  v22 = objc_msgSend__summaryManager(self, a3, v3, v4, v5);
  v11 = objc_msgSend_allSummaryDurations(v22, v7, v8, v9, v10);
  v16 = objc_msgSend_firstObject(v11, v12, v13, v14, v15);

  retstr->var0 = 0;
  *&retstr->var1 = 0;
  retstr->var3 = 0;
  if (v16)
  {
    objc_msgSend_CMTimeValue(v16, v17, v18, v19, v20);
  }

  return result;
}

- (void)setCachedNaturalDuration:(id *)duration
{
  var3 = duration->var3;
  *&self->_cachedNaturalDuration.value = *&duration->var0;
  self->_cachedNaturalDuration.epoch = var3;
}

@end