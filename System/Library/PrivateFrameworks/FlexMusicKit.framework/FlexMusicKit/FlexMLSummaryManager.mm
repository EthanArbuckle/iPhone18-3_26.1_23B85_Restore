@interface FlexMLSummaryManager
- (FlexMLSummaryManager)initWithSummaryMapping:(id)mapping bundlePath:(id)path metadataPath:(id)metadataPath targetTimeScale:(int)scale;
- (double)averageGranularityBetweenSummaries;
- (id)_summaryForDuration:(id *)duration;
- (id)summaryForDuration:(id *)duration;
@end

@implementation FlexMLSummaryManager

- (FlexMLSummaryManager)initWithSummaryMapping:(id)mapping bundlePath:(id)path metadataPath:(id)metadataPath targetTimeScale:(int)scale
{
  v74 = *MEMORY[0x277D85DE8];
  mappingCopy = mapping;
  pathCopy = path;
  metadataPathCopy = metadataPath;
  v72.receiver = self;
  v72.super_class = FlexMLSummaryManager;
  v13 = [(FlexMLSummaryManager *)&v72 init];
  v18 = v13;
  if (v13)
  {
    v60 = metadataPathCopy;
    v61 = v13;
    metadataPathCopy2 = metadataPath;
    v63 = pathCopy;
    v13->_targetTimeScale = scale;
    v19 = objc_msgSend_array(MEMORY[0x277CBEB18], v14, v15, v16, v17);
    v24 = objc_msgSend_array(MEMORY[0x277CBEB18], v20, v21, v22, v23);
    v68 = 0u;
    v69 = 0u;
    v70 = 0u;
    v71 = 0u;
    v64 = mappingCopy;
    obj = mappingCopy;
    v26 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v25, &v68, v73, 16);
    if (v26)
    {
      v30 = v26;
      v31 = *v69;
      do
      {
        for (i = 0; i != v30; ++i)
        {
          if (*v69 != v31)
          {
            objc_enumerationMutation(obj);
          }

          v33 = *(*(&v68 + 1) + 8 * i);
          v34 = objc_msgSend_objectAtIndex_(v33, v27, 0, v28, v29);
          v38 = objc_msgSend_objectAtIndex_(v33, v35, 1, v36, v37);
          memset(&v67, 0, sizeof(v67));
          objc_msgSend_doubleValue(v34, v39, v40, v41, v42);
          CMTimeMakeWithSeconds(&v67, v43, scale);
          v66 = v67;
          v47 = objc_msgSend_valueWithCMTime_(MEMORY[0x277CCAE60], v44, &v66, v45, v46);
          objc_msgSend_addObject_(v19, v48, v38, v49, v50);
          objc_msgSend_addObject_(v24, v51, v47, v52, v53);
        }

        v30 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v27, &v68, v73, 16);
      }

      while (v30);
    }

    v18 = v61;
    allFileNames = v61->_allFileNames;
    v61->_allFileNames = v19;
    v55 = v19;

    allDurations = v61->_allDurations;
    v61->_allDurations = v24;
    v57 = v24;

    objc_storeStrong(&v61->_rootPath, path);
    objc_storeStrong(&v61->_metadataPath, metadataPathCopy2);

    pathCopy = v63;
    mappingCopy = v64;
    metadataPathCopy = v60;
  }

  v58 = *MEMORY[0x277D85DE8];
  return v18;
}

- (double)averageGranularityBetweenSummaries
{
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 1;
  v6 = objc_msgSend_allDurations(self, a2, v2, v3, v4);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = sub_24B7EFCA8;
  v11[3] = &unk_27900EC40;
  v11[4] = self;
  v11[5] = &v16;
  v11[6] = &v12;
  objc_msgSend_enumerateObjectsWithOptions_usingBlock_(v6, v7, 2, v11, v8);

  v9 = v17[3] / v13[6];
  v17[3] = v9;
  _Block_object_dispose(&v12, 8);
  _Block_object_dispose(&v16, 8);
  return v9;
}

- (id)summaryForDuration:(id *)duration
{
  v7 = objc_msgSend_allDurations(self, a2, duration, v3, v4);
  v12 = objc_msgSend_lastObject(v7, v8, v9, v10, v11);

  memset(&v75[1], 0, sizeof(CMTime));
  if (v12)
  {
    objc_msgSend_CMTimeValue(v12, v13, v14, v15, v16);
  }

  v17 = objc_msgSend_allDurations(self, v13, v14, v15, v16);
  v22 = objc_msgSend_firstObject(v17, v18, v19, v20, v21);

  memset(v75, 0, 24);
  if (v22)
  {
    objc_msgSend_CMTimeValue(v22, v23, v24, v25, v26);
  }

  time1 = *duration;
  time2 = v75[1];
  if (CMTimeCompare(&time1, &time2) < 1)
  {
    time1 = *duration;
    v69 = objc_msgSend__summaryForDuration_(self, v27, &time1, v29, v30);
  }

  else
  {
    v31 = objc_msgSend_array(MEMORY[0x277CBEB18], v27, v28, v29, v30);
    time1 = *duration;
    time2 = v75[0];
    Seconds = CMTimeGetSeconds(&time2);
    time2 = v75[1];
    v33 = CMTimeGetSeconds(&time2);
    time2 = *duration;
    v34 = Seconds / v33;
    v35 = CMTimeGetSeconds(&time2);
    time2 = v75[1];
    v36 = CMTimeGetSeconds(&time2);
    v37 = v35 / v36 - llround(v35 / v36);
    objc_msgSend_averageGranularityBetweenSummaries(self, v38, v39, v40, v41);
    v43 = v42;
    time2 = v75[1];
    v44 = CMTimeGetSeconds(&time2);
    v45 = v37 != 0.0;
    if (v37 <= v43 / v44)
    {
      v45 = 0;
    }

    v46 = v37 < v34 && v45;
    if (v46)
    {
      time2 = time1;
      rhs = v75[0];
      CMTimeSubtract(&time1, &time2, &rhs);
    }

    time2 = time1;
    rhs = v75[0];
    if (CMTimeCompare(&time2, &rhs) >= 1)
    {
      do
      {
        time2 = time1;
        v51 = objc_msgSend__summaryForDuration_(self, v47, &time2, v49, v50);
        objc_msgSend_addObject_(v31, v52, v51, v53, v54);
        if (v51)
        {
          objc_msgSend_duration(v51, v55, v56, v57, v58);
        }

        else
        {
          memset(&rhs, 0, sizeof(rhs));
        }

        v71 = time1;
        CMTimeSubtract(&time2, &v71, &rhs);
        time1 = time2;

        time2 = time1;
        rhs = v75[0];
      }

      while (CMTimeCompare(&time2, &rhs) > 0);
    }

    if (v46)
    {
      memset(&time2, 0, sizeof(time2));
      rhs = v75[0];
      v71 = time1;
      CMTimeAdd(&time2, &rhs, &v71);
      rhs = time2;
      v62 = objc_msgSend__summaryForDuration_(self, v59, &rhs, v60, v61);
      objc_msgSend_addObject_(v31, v63, v62, v64, v65);
    }

    v66 = objc_msgSend_targetTimeScale(self, v47, v48, v49, v50);
    v69 = objc_msgSend_summaryFromSummaries_targetTimeScale_(FlexMLSummary, v67, v31, v66, v68);
  }

  return v69;
}

- (id)_summaryForDuration:(id *)duration
{
  v319 = *MEMORY[0x277D85DE8];
  v5 = objc_msgSend_allDurations(self, a2, duration, v3, v4);
  v10 = objc_msgSend_count(v5, v6, v7, v8, v9);

  if (v10)
  {
    v15 = -1;
    selfCopy3 = self;
    while (1)
    {
      v17 = objc_msgSend_allDurations(selfCopy3, v11, v12, v13, v14);
      v21 = objc_msgSend_objectAtIndex_(v17, v18, v15 + 1, v19, v20);

      memset(&v296, 0, 24);
      if (v21)
      {
        objc_msgSend_CMTimeValue(v21, v22, v23, v24, v25);
      }

      *&time1.start.value = *&v296.start.value;
      time1.start.epoch = v296.start.epoch;
      time2 = *duration;
      if (!CMTimeCompare(&time1.start, &time2))
      {

        v33 = v15 + 1;
        goto LABEL_12;
      }

      *&time1.start.value = *&v296.start.value;
      time1.start.epoch = v296.start.epoch;
      time2 = *duration;
      v26 = CMTimeCompare(&time1.start, &time2);

      if ((v26 & 0x80000000) == 0)
      {
        break;
      }

      selfCopy3 = self;
      v27 = objc_msgSend_allDurations(self, v11, v12, v13, v14);
      v32 = objc_msgSend_count(v27, v28, v29, v30, v31);

      v33 = v15 + 1;
      v34 = v15 + 2;
      ++v15;
      if (v34 >= v32)
      {
        goto LABEL_13;
      }
    }

    v33 = v15;
  }

  else
  {
    v33 = -1;
  }

LABEL_12:
  selfCopy3 = self;
LABEL_13:
  v35 = v33 & ~(v33 >> 63);
  v36 = objc_msgSend_rootPath(selfCopy3, v11, v12, v13, v14);
  v40 = objc_msgSend_stringByAppendingPathComponent_(v36, v37, @"Summaries", v38, v39);

  v45 = objc_msgSend_allFileNames(selfCopy3, v41, v42, v43, v44);
  v49 = objc_msgSend_objectAtIndex_(v45, v46, v35, v47, v48);

  v53 = objc_msgSend_stringByAppendingPathComponent_(v40, v50, v49, v51, v52);
  v57 = objc_msgSend_dictionaryWithContentsOfFile_(MEMORY[0x277CBEB38], v54, v53, v55, v56);
  v58 = [FlexMLSummary alloc];
  v63 = objc_msgSend_targetTimeScale(selfCopy3, v59, v60, v61, v62);
  v278 = v57;
  v66 = objc_msgSend_initWithDictionary_targetTimeScale_(v58, v64, v57, v63, v65);
  v67 = MEMORY[0x277CBEB38];
  v72 = objc_msgSend_metadataPath(selfCopy3, v68, v69, v70, v71);
  v76 = objc_msgSend_dictionaryWithContentsOfFile_(v67, v73, v72, v74, v75);

  v84 = objc_msgSend_objectForKeyedSubscript_(v76, v77, @"songBeats", v78, v79);
  if (v84)
  {
    v273 = v76;
    v274 = v53;
    v276 = v40;
    v277 = v66;
    v275 = v49;
    v284 = objc_msgSend_array(MEMORY[0x277CBEB18], v80, v81, v82, v83);
    v289 = objc_msgSend_array(MEMORY[0x277CBEB18], v85, v86, v87, v88);
    v309 = 0u;
    v310 = 0u;
    v311 = 0u;
    v312 = 0u;
    v272 = v84;
    obj = v84;
    v90 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v89, &v309, v318, 16);
    if (v90)
    {
      v94 = v90;
      v95 = *v310;
      do
      {
        for (i = 0; i != v94; ++i)
        {
          if (*v310 != v95)
          {
            objc_enumerationMutation(obj);
          }

          v97 = *(*(&v309 + 1) + 8 * i);
          v98 = objc_msgSend_objectForKeyedSubscript_(v97, v91, @"time", v92, v93, v272);
          memset(&v296, 0, 24);
          objc_msgSend_doubleValue(v98, v99, v100, v101, v102);
          v104 = v103;
          v109 = objc_msgSend_targetTimeScale(self, v105, v106, v107, v108);
          CMTimeMakeWithSeconds(&v296.start, v104, v109);
          *&time1.start.value = *&v296.start.value;
          time1.start.epoch = v296.start.epoch;
          Seconds = CMTimeGetSeconds(&time1.start);
          v115 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v111, v112, v113, v114);
          objc_msgSend_addObject_(v284, v116, v115, v117, v118);

          v122 = objc_msgSend_objectForKey_(v97, v119, @"bar", v120, v121);
          if (v122)
          {
            v126 = v122;
            v127 = objc_msgSend_objectForKeyedSubscript_(v97, v123, @"bar", v124, v125);
            v132 = objc_msgSend_BOOLValue(v127, v128, v129, v130, v131);

            if (v132)
            {
              v137 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v133, v134, v135, v136, Seconds);
              objc_msgSend_addObject_(v289, v138, v137, v139, v140);
            }
          }
        }

        v94 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v91, &v309, v318, 16);
      }

      while (v94);
    }

    objc_msgSend_sortUsingSelector_(v284, v141, sel_compare_, v142, v143);
    objc_msgSend_sortUsingSelector_(v289, v144, sel_compare_, v145, v146);
    obja = objc_msgSend_orderedSet(MEMORY[0x277CBEB40], v147, v148, v149, v150);
    v285 = objc_msgSend_orderedSet(MEMORY[0x277CBEB40], v151, v152, v153, v154);
    v155 = MEMORY[0x277CC0898];
    value = *MEMORY[0x277CC0898];
    timescale = *(MEMORY[0x277CC0898] + 8);
    memset(&time2, 0, sizeof(time2));
    v160 = objc_msgSend_targetTimeScale(self, v156, v157, v158, v159);
    CMTimeMake(&time2, 1, v160);
    v165 = objc_msgSend_segments(v66, v161, v162, v163, v164);
    v305 = 0u;
    v306 = 0u;
    v307 = 0u;
    v308 = 0u;
    v279 = objc_msgSend_segments(v66, v166, v167, v168, v169);
    v282 = objc_msgSend_countByEnumeratingWithState_objects_count_(v279, v170, &v305, v315, 16);
    if (v282)
    {
      flags = *(v155 + 12);
      epoch = *(v155 + 16);
      v280 = *v306;
      v281 = v165;
      do
      {
        v177 = 0;
        do
        {
          if (*v306 != v280)
          {
            objc_enumerationMutation(v279);
          }

          v178 = *(*(&v305 + 1) + 8 * v177);
          v179 = objc_msgSend_lastObject(v165, v171, v172, v173, v174, v272);

          if (v178 == v179)
          {
            v187 = 0;
          }

          else
          {
            v183 = objc_msgSend_indexOfObject_(v165, v180, v178, v181, v182);
            v187 = objc_msgSend_objectAtIndexedSubscript_(v165, v184, v183 + 1, v185, v186);
          }

          v283 = v177;
          v303 = 0u;
          v304 = 0u;
          v301 = 0u;
          v302 = 0u;
          v188 = v284;
          v190 = objc_msgSend_countByEnumeratingWithState_objects_count_(v188, v189, &v301, v314, 16);
          if (v190)
          {
            v195 = v190;
            v196 = *v302;
            do
            {
              for (j = 0; j != v195; ++j)
              {
                if (*v302 != v196)
                {
                  objc_enumerationMutation(v188);
                }

                v198 = *(*(&v301 + 1) + 8 * j);
                v299 = 0uLL;
                v300 = 0;
                if (v178)
                {
                  objc_msgSend_trackTime(v178, v191, v192, v193, v194);
                  memset(&start, 0, sizeof(start));
                  objc_msgSend_duration(v178, v199, v200, v201, v202);
                  if (v187)
                  {
                    objc_msgSend_summaryTime(v187, v203, v204, v205, v206);
                    objc_msgSend_summaryTime(v178, v207, v208, v209, v210);
LABEL_42:
                    CMTimeSubtract(&v296.start, &time1.start, &rhs);
                    v211 = 0;
                    start = v296.start;
                    goto LABEL_44;
                  }
                }

                else
                {
                  memset(&start, 0, sizeof(start));
                  if (v187)
                  {
                    objc_msgSend_summaryTime(v187, v191, v192, v193, v194);
                    memset(&rhs, 0, sizeof(rhs));
                    goto LABEL_42;
                  }
                }

                v211 = 1;
LABEL_44:
                memset(&v296, 0, sizeof(v296));
                *&time1.start.value = v299;
                time1.start.epoch = v300;
                rhs = start;
                CMTimeRangeMake(&v296, &time1.start, &rhs);
                memset(&rhs, 0, sizeof(rhs));
                objc_msgSend_doubleValue(v198, v212, v213, v214, v215);
                v217 = v216;
                v222 = objc_msgSend_targetTimeScale(self, v218, v219, v220, v221);
                CMTimeMakeWithSeconds(&rhs, v217, v222);
                time1 = v296;
                time = rhs;
                if (!CMTimeRangeContainsTime(&time1, &time))
                {
                  memset(&time, 0, sizeof(time));
                  time1.start = rhs;
                  lhs = time2;
                  CMTimeAdd(&time, &time1.start, &lhs);
                  time1 = v296;
                  lhs = time;
                  if (!CMTimeRangeContainsTime(&time1, &lhs))
                  {
                    continue;
                  }

                  rhs = time;
                }

                memset(&time1, 0, 24);
                if (v178)
                {
                  objc_msgSend_trackTime(v178, v191, v192, v193, v194);
                  objc_msgSend_summaryTime(v178, v223, v224, v225, v226);
                }

                else
                {
                  memset(&time, 0, sizeof(time));
                  memset(&lhs, 0, sizeof(lhs));
                }

                CMTimeSubtract(&time1.start, &time, &lhs);
                memset(&time, 0, sizeof(time));
                lhs = rhs;
                v292 = time1.start;
                CMTimeSubtract(&time, &lhs, &v292);
                if ((flags & 1) == 0)
                {
                  goto LABEL_70;
                }

                v292.value = value;
                v292.timescale = timescale;
                v292.flags = flags;
                v292.epoch = epoch;
                v291 = time2;
                CMTimeSubtract(&lhs, &v292, &v291);
                v292 = time;
                if (CMTimeCompare(&v292, &lhs))
                {
                  v292.value = value;
                  v292.timescale = timescale;
                  v292.flags = flags;
                  v292.epoch = epoch;
                  v291 = time2;
                  CMTimeAdd(&lhs, &v292, &v291);
                  v292 = time;
                  if (CMTimeCompare(&v292, &lhs))
                  {
LABEL_70:
                    if (!v211 || (v292 = *duration, v291 = time2, CMTimeSubtract(&lhs, &v292, &v291), v292 = time, CMTimeCompare(&v292, &lhs)) && (lhs = time, v292 = *duration, CMTimeCompare(&lhs, &v292)))
                    {
                      lhs = time;
                      v227 = CMTimeGetSeconds(&lhs);
                      v232 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v228, v229, v230, v231);
                      objc_msgSend_addObject_(obja, v233, v232, v234, v235);

                      if (objc_msgSend_containsObject_(v289, v236, v198, v237, v238))
                      {
                        v239 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v191, v192, v193, v194, v227);
                        objc_msgSend_addObject_(v285, v240, v239, v241, v242);
                      }

                      value = time.value;
                      flags = time.flags;
                      timescale = time.timescale;
                      epoch = time.epoch;
                    }
                  }
                }
              }

              v195 = objc_msgSend_countByEnumeratingWithState_objects_count_(v188, v191, &v301, v314, 16);
            }

            while (v195);
          }

          v177 = v283 + 1;
          v165 = v281;
        }

        while (v283 + 1 != v282);
        v282 = objc_msgSend_countByEnumeratingWithState_objects_count_(v279, v171, &v305, v315, 16);
      }

      while (v282);
    }

    v247 = objc_msgSend_array(obja, v243, v244, v245, v246);
    v252 = objc_msgSend_array(v285, v248, v249, v250, v251);
    v253 = v278;
    v257 = objc_msgSend_dictionaryWithDictionary_(MEMORY[0x277CBEB38], v254, v278, v255, v256);
    objc_msgSend_setObject_forKey_(v257, v258, v247, @"beatTimes", v259);
    objc_msgSend_setObject_forKey_(v257, v260, v252, @"barTimes", v261);
    v262 = [FlexMLSummary alloc];
    v267 = objc_msgSend_targetTimeScale(self, v263, v264, v265, v266);
    v66 = objc_msgSend_initWithDictionary_targetTimeScale_(v262, v268, v257, v267, v269);

    v49 = v275;
    v40 = v276;
    v76 = v273;
    v53 = v274;
    v84 = v272;
  }

  else
  {
    v253 = v278;
  }

  v270 = *MEMORY[0x277D85DE8];

  return v66;
}

@end