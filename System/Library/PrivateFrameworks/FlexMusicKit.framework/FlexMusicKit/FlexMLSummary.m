@interface FlexMLSummary
+ (id)summaryFromSummaries:(id)a3 targetTimeScale:(int)a4;
- (FlexMLSummary)initWithDictionary:(id)a3 targetTimeScale:(int)a4;
- (void)setDuration:(id *)a3;
@end

@implementation FlexMLSummary

+ (id)summaryFromSummaries:(id)a3 targetTimeScale:(int)a4
{
  v346 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v9 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], v5, v6, v7, v8);
  v334 = **&MEMORY[0x277CC08F0];
  v308 = objc_msgSend_array(MEMORY[0x277CBEB18], v10, v11, v12, v13);
  v18 = objc_msgSend_array(MEMORY[0x277CBEB18], v14, v15, v16, v17);
  v23 = objc_msgSend_array(MEMORY[0x277CBEB18], v19, v20, v21, v22);
  v28 = objc_msgSend_array(MEMORY[0x277CBEB18], v24, v25, v26, v27);
  v304 = objc_msgSend_array(MEMORY[0x277CBEB18], v29, v30, v31, v32);
  v330 = 0u;
  v331 = 0u;
  v332 = 0u;
  v333 = 0u;
  v33 = v4;
  v300 = objc_msgSend_countByEnumeratingWithState_objects_count_(v33, v34, &v330, v345, 16);
  if (v300)
  {
    v294 = *v331;
    v303 = &unk_285EA8778;
    v293 = @"duration";
    v298 = v18;
    v299 = v9;
    v296 = v28;
    v297 = v23;
    v295 = v33;
    do
    {
      v39 = 0;
      do
      {
        if (*v331 != v294)
        {
          objc_enumerationMutation(v33);
        }

        v302 = v39;
        v40 = *(*(&v330 + 1) + 8 * v39);
        v41 = objc_msgSend_lastObject(v33, v35, v36, v37, v38, v293);

        v46 = v40;
        v305 = v40;
        if (v40 != v41)
        {
          v47 = objc_msgSend_objectForKey_(v9, v42, @"loopTimes", v44, v45);

          if (v47)
          {
            v56 = objc_msgSend_objectForKey_(v9, v48, @"loopTimes", v50, v51);
            memset(&time, 0, sizeof(time));
            if (v305)
            {
              objc_msgSend_duration(v305, v52, v53, v54, v55);
            }

            else
            {
              memset(&rhs, 0, sizeof(rhs));
            }

            lhs = v334;
            CMTimeAdd(&time, &lhs, &rhs);
            v61 = objc_msgSend_arrayWithArray_(MEMORY[0x277CBEB18], v58, v56, v59, v60);
            v62 = MEMORY[0x277CCABB0];
            rhs = time;
            Seconds = CMTimeGetSeconds(&rhs);
            v68 = objc_msgSend_numberWithDouble_(v62, v64, v65, v66, v67, Seconds);
            objc_msgSend_addObject_(v61, v69, v68, v70, v71);

            objc_msgSend_setObject_forKey_(v9, v72, v61, @"loopTimes", v73);
          }

          else
          {
            v57 = MEMORY[0x277CCABB0];
            if (v40)
            {
              objc_msgSend_duration(v40, v48, v49, v50, v51);
            }

            else
            {
              memset(&time, 0, sizeof(time));
            }

            v74 = CMTimeGetSeconds(&time);
            v56 = objc_msgSend_numberWithDouble_(v57, v75, v76, v77, v78, v74);
            v344 = v56;
            v61 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v79, &v344, 1, v80);
            objc_msgSend_setObject_forKey_(v9, v81, v61, @"loopTimes", v82);
          }

          v46 = v305;
        }

        v325 = 0u;
        v326 = 0u;
        v323 = 0u;
        v324 = 0u;
        obj = objc_msgSend_segments(v46, v42, v43, v44, v45);
        v309 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v83, &v323, v343, 16);
        if (v309)
        {
          v307 = *v324;
          do
          {
            v88 = 0;
            do
            {
              if (*v324 != v307)
              {
                objc_enumerationMutation(obj);
              }

              v311 = v88;
              v89 = *(*(&v323 + 1) + 8 * v88);
              v90 = objc_msgSend_array(MEMORY[0x277CBEB18], v84, v85, v86, v87);
              v319 = 0u;
              v320 = 0u;
              v321 = 0u;
              v322 = 0u;
              v310 = v89;
              v95 = objc_msgSend_gainFunction(v89, v91, v92, v93, v94);
              v97 = objc_msgSend_countByEnumeratingWithState_objects_count_(v95, v96, &v319, v342, 16);
              if (v97)
              {
                v102 = v97;
                v103 = *v320;
                do
                {
                  for (i = 0; i != v102; ++i)
                  {
                    if (*v320 != v103)
                    {
                      objc_enumerationMutation(v95);
                    }

                    v105 = *(*(&v319 + 1) + 8 * i);
                    v340[0] = @"gain";
                    v106 = MEMORY[0x277CCABB0];
                    objc_msgSend_gain(v105, v98, v99, v100, v101);
                    v115 = objc_msgSend_numberWithFloat_(v106, v107, v108, v109, v110);
                    v341[0] = v115;
                    v340[1] = @"segmentTime";
                    v116 = MEMORY[0x277CCABB0];
                    if (v105)
                    {
                      objc_msgSend_segmentTime(v105, v111, v112, v113, v114);
                    }

                    else
                    {
                      memset(&time, 0, sizeof(time));
                    }

                    v117 = CMTimeGetSeconds(&time);
                    v122 = objc_msgSend_numberWithDouble_(v116, v118, v119, v120, v121, v117);
                    v341[1] = v122;
                    v124 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v123, v341, v340, 2);
                    objc_msgSend_addObject_(v90, v125, v124, v126, v127);
                  }

                  v102 = objc_msgSend_countByEnumeratingWithState_objects_count_(v95, v98, &v319, v342, 16);
                }

                while (v102);
              }

              v338[0] = @"duration";
              v132 = MEMORY[0x277CCABB0];
              if (v310)
              {
                objc_msgSend_duration(v310, v128, v129, v130, v131);
              }

              else
              {
                memset(&time, 0, sizeof(time));
              }

              v133 = CMTimeGetSeconds(&time);
              v142 = objc_msgSend_numberWithDouble_(v132, v134, v135, v136, v137, v133);
              v339[0] = v142;
              v338[1] = @"trackTime";
              v143 = MEMORY[0x277CCABB0];
              if (v310)
              {
                objc_msgSend_trackTime(v310, v138, v139, v140, v141);
              }

              else
              {
                memset(&time, 0, sizeof(time));
              }

              v144 = CMTimeGetSeconds(&time);
              v153 = objc_msgSend_numberWithDouble_(v143, v145, v146, v147, v148, v144);
              v339[1] = v153;
              v338[2] = @"summaryTime";
              v154 = MEMORY[0x277CCABB0];
              if (v310)
              {
                objc_msgSend_summaryTime(v310, v149, v150, v151, v152);
              }

              else
              {
                memset(&rhs, 0, sizeof(rhs));
              }

              lhs = v334;
              CMTimeAdd(&time, &rhs, &lhs);
              v155 = CMTimeGetSeconds(&time);
              v160 = objc_msgSend_numberWithDouble_(v154, v156, v157, v158, v159, v155);
              v338[3] = @"gainFunction";
              v339[2] = v160;
              v339[3] = v90;
              v162 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v161, v339, v338, 4);
              objc_msgSend_addObject_(v308, v163, v162, v164, v165);

              v88 = v311 + 1;
            }

            while (v311 + 1 != v309);
            v309 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v84, &v323, v343, 16);
          }

          while (v309);
        }

        v9 = v299;
        objc_msgSend_setObject_forKey_(v299, v166, v308, @"segments", v167);
        v316[0] = MEMORY[0x277D85DD0];
        v316[1] = 3221225472;
        v316[2] = sub_24B7F591C;
        v316[3] = &unk_27900EE08;
        v317 = a4;
        v318 = v334;
        v168 = MEMORY[0x24C24B550](v316);
        v173 = objc_msgSend_allBeats(v305, v169, v170, v171, v172);
        v18 = v298;
        (v168)[2](v168, v298, v173);

        v178 = objc_msgSend_allBars(v305, v174, v175, v176, v177);
        v23 = v297;
        (v168)[2](v168, v297, v178);

        v183 = objc_msgSend_videoCues(v305, v179, v180, v181, v182);
        v187 = objc_msgSend_objectForKeyedSubscript_(v183, v184, @"goodCues", v185, v186);
        v28 = v296;
        (v168)[2](v168, v296, v187);

        v192 = objc_msgSend_videoCues(v305, v188, v189, v190, v191);
        v196 = objc_msgSend_objectForKeyedSubscript_(v192, v193, @"greatCues", v194, v195);
        (v168)[2](v168, v304, v196);

        v33 = v295;
        v201 = objc_msgSend_lastObject(v295, v197, v198, v199, v200);

        if (v305 == v201)
        {
          v207 = objc_msgSend_videoCues(v305, v202, v203, v204, v205);
          v211 = objc_msgSend_objectForKeyedSubscript_(v207, v208, @"fadeToBlack", v209, v210);

          memset(&time, 0, sizeof(time));
          if (v211)
          {
            objc_msgSend_doubleValue(v211, v212, v213, v214, v215);
            CMTimeMakeWithSeconds(&rhs, v216, a4);
          }

          else
          {
            rhs = **&MEMORY[0x277CC0898];
          }

          lhs = v334;
          CMTimeAdd(&time, &rhs, &lhs);
          v217 = MEMORY[0x277CCABB0];
          rhs = time;
          v218 = CMTimeGetSeconds(&rhs);
          v206 = objc_msgSend_numberWithDouble_(v217, v219, v220, v221, v222, v218);
        }

        else
        {
          v206 = v303;
        }

        objc_msgSend_sortUsingSelector_(v298, v202, sel_compare_, v204, v205);
        objc_msgSend_sortUsingSelector_(v297, v223, sel_compare_, v224, v225);
        v336[0] = @"goodCues";
        v336[1] = @"greatCues";
        v337[0] = v296;
        v337[1] = v304;
        v336[2] = @"fadeToBlack";
        v303 = v206;
        v337[2] = v206;
        v227 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v226, v337, v336, 3);
        objc_msgSend_setObject_forKey_(v299, v228, v227, @"videoScores", v229);

        objc_msgSend_setObject_forKey_(v299, v230, v298, @"beatTimes", v231);
        objc_msgSend_setObject_forKey_(v299, v232, v297, @"barTimes", v233);
        if (v305)
        {
          objc_msgSend_duration(v305, v234, v235, v236, v237);
        }

        else
        {
          memset(&time, 0, sizeof(time));
        }

        rhs = v334;
        CMTimeAdd(&v334, &rhs, &time);
        v238 = MEMORY[0x277CCABB0];
        time = v334;
        v239 = CMTimeGetSeconds(&time);
        v244 = objc_msgSend_numberWithDouble_(v238, v240, v241, v242, v243, v239);
        objc_msgSend_setObject_forKey_(v299, v245, v244, v293, v246);

        v39 = v302 + 1;
      }

      while (v302 + 1 != v300);
      v300 = objc_msgSend_countByEnumeratingWithState_objects_count_(v295, v35, &v330, v345, 16);
    }

    while (v300);
  }

  else
  {
    v303 = &unk_285EA8778;
  }

  v314 = 0u;
  v315 = 0u;
  v312 = 0u;
  v313 = 0u;
  v247 = v33;
  v249 = objc_msgSend_countByEnumeratingWithState_objects_count_(v247, v248, &v312, v335, 16);
  if (v249)
  {
    v254 = v249;
    v255 = *v313;
    v256 = 0.0;
    v257 = 0.0;
    do
    {
      for (j = 0; j != v254; ++j)
      {
        if (*v313 != v255)
        {
          objc_enumerationMutation(v247);
        }

        v259 = *(*(&v312 + 1) + 8 * j);
        objc_msgSend_peakValue(v259, v250, v251, v252, v253);
        if (v264 > v257)
        {
          v257 = v264;
        }

        objc_msgSend_lkfsValue(v259, v260, v261, v262, v263);
        v270 = v269;
        memset(&time, 0, sizeof(time));
        if (v259)
        {
          objc_msgSend_duration(v259, v265, v266, v267, v268);
        }

        rhs = time;
        v271 = CMTimeGetSeconds(&rhs);
        rhs = v334;
        v256 = v256 + v270 * (v271 / CMTimeGetSeconds(&rhs));
      }

      v254 = objc_msgSend_countByEnumeratingWithState_objects_count_(v247, v250, &v312, v335, 16);
    }

    while (v254);
  }

  else
  {
    v256 = 0.0;
    v257 = 0.0;
  }

  v276 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v272, v273, v274, v275, v256);
  objc_msgSend_setObject_forKey_(v9, v277, v276, @"lkfs", v278);

  *&v279 = v257;
  v284 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v280, v281, v282, v283, v279);
  objc_msgSend_setObject_forKey_(v9, v285, v284, @"peak", v286);

  v287 = [FlexMLSummary alloc];
  v290 = objc_msgSend_initWithDictionary_targetTimeScale_(v287, v288, v9, a4, v289);

  v291 = *MEMORY[0x277D85DE8];

  return v290;
}

- (FlexMLSummary)initWithDictionary:(id)a3 targetTimeScale:(int)a4
{
  v185 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v182.receiver = self;
  v182.super_class = FlexMLSummary;
  v9 = [(FlexMLSummary *)&v182 init];
  if (v9)
  {
    v10 = objc_msgSend_objectForKey_(v5, v6, @"duration", v7, v8);
    v15 = v10;
    if (v10)
    {
      objc_msgSend_doubleValue(v10, v11, v12, v13, v14);
      CMTimeMakeWithSeconds(&v181, v16, a4);
    }

    else
    {
      v181 = **&MEMORY[0x277CC0898];
    }

    *(v9 + 64) = v181;

    v24 = objc_msgSend_objectForKey_(v5, v17, @"segments", v18, v19);
    if (v24)
    {
      v160 = v9;
      v161 = v5;
      v164 = objc_msgSend_array(MEMORY[0x277CBEB18], v20, v21, v22, v23);
      v177 = 0u;
      v178 = 0u;
      v179 = 0u;
      v180 = 0u;
      v159 = v24;
      obj = v24;
      v165 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v25, &v177, v184, 16);
      if (v165)
      {
        v163 = *v178;
        do
        {
          v29 = 0;
          do
          {
            if (*v178 != v163)
            {
              objc_enumerationMutation(obj);
            }

            v30 = *(*(&v177 + 1) + 8 * v29);
            memset(&v181, 0, sizeof(v181));
            v31 = objc_msgSend_objectForKey_(v30, v26, @"duration", v27, v28);
            v36 = v31;
            if (v31)
            {
              objc_msgSend_doubleValue(v31, v32, v33, v34, v35);
              CMTimeMakeWithSeconds(&v181, v37, a4);
            }

            else
            {
              v181 = **&MEMORY[0x277CC0898];
            }

            memset(&v176, 0, sizeof(v176));
            v41 = objc_msgSend_objectForKey_(v30, v38, @"trackTime", v39, v40);
            v46 = v41;
            if (v41)
            {
              objc_msgSend_doubleValue(v41, v42, v43, v44, v45);
              CMTimeMakeWithSeconds(&v176, v47, a4);
            }

            else
            {
              v176 = **&MEMORY[0x277CC0898];
            }

            memset(&v175, 0, sizeof(v175));
            v51 = objc_msgSend_objectForKey_(v30, v48, @"summaryTime", v49, v50);
            v56 = v51;
            if (v51)
            {
              objc_msgSend_doubleValue(v51, v52, v53, v54, v55);
              CMTimeMakeWithSeconds(&v175, v57, a4);
            }

            else
            {
              v175 = **&MEMORY[0x277CC0898];
            }

            v166 = v29;

            v61 = objc_msgSend_objectForKey_(v30, v58, @"gainFunction", v59, v60);
            v62 = MEMORY[0x277CBEB18];
            v67 = objc_msgSend_count(v61, v63, v64, v65, v66);
            v71 = objc_msgSend_arrayWithCapacity_(v62, v68, v67, v69, v70);
            v171 = 0u;
            v172 = 0u;
            v173 = 0u;
            v174 = 0u;
            v72 = v61;
            v74 = objc_msgSend_countByEnumeratingWithState_objects_count_(v72, v73, &v171, v183, 16);
            if (v74)
            {
              v78 = v74;
              v79 = *v172;
              do
              {
                for (i = 0; i != v78; ++i)
                {
                  if (*v172 != v79)
                  {
                    objc_enumerationMutation(v72);
                  }

                  v81 = *(*(&v171 + 1) + 8 * i);
                  v82 = objc_msgSend_objectForKey_(v81, v75, @"gain", v76, v77);
                  if (v82)
                  {
                    v83 = v82;
                    v84 = objc_msgSend_objectForKey_(v81, v75, @"segmentTime", v76, v77);

                    if (v84)
                    {
                      v85 = objc_msgSend_objectForKeyedSubscript_(v81, v75, @"gain", v76, v77);
                      objc_msgSend_floatValue(v85, v86, v87, v88, v89);
                      v91 = v90;

                      memset(&v170, 0, sizeof(v170));
                      v95 = objc_msgSend_objectForKeyedSubscript_(v81, v92, @"segmentTime", v93, v94);
                      v100 = v95;
                      if (v95)
                      {
                        objc_msgSend_doubleValue(v95, v96, v97, v98, v99);
                        CMTimeMakeWithSeconds(&v170, v101, a4);
                      }

                      else
                      {
                        v170 = **&MEMORY[0x277CC0898];
                      }

                      v102 = [FlexMLGainValue alloc];
                      v169 = v170;
                      v106 = objc_msgSend_initWithGain_segmentTime_(v102, v103, &v169, v104, v105, COERCE_DOUBLE(__PAIR64__(HIDWORD(v170.value), v91)));
                      objc_msgSend_addObject_(v71, v107, v106, v108, v109);
                    }
                  }
                }

                v78 = objc_msgSend_countByEnumeratingWithState_objects_count_(v72, v75, &v171, v183, 16);
              }

              while (v78);
            }

            v110 = [FlexMLSegment alloc];
            v170 = v181;
            v169 = v176;
            v168 = v175;
            v112 = objc_msgSend_initWithDuration_trackTime_summaryTime_gainFunction_(v110, v111, &v170, &v169, &v168, v71);
            objc_msgSend_addObject_(v164, v113, v112, v114, v115);

            v29 = v166 + 1;
          }

          while (v166 + 1 != v165);
          v165 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v26, &v177, v184, 16);
        }

        while (v165);
      }

      v9 = v160;
      v116 = *(v160 + 2);
      *(v160 + 2) = v164;

      v5 = v161;
      v24 = v159;
    }

    v117 = objc_msgSend_objectForKey_(v5, v20, @"videoScores", v22, v23);
    objc_storeStrong(v9 + 3, v117);
    v121 = objc_msgSend_objectForKey_(v5, v118, @"lkfs", v119, v120);
    objc_msgSend_doubleValue(v121, v122, v123, v124, v125);
    *(v9 + 7) = v126;

    v130 = objc_msgSend_objectForKey_(v5, v127, @"peak", v128, v129);
    objc_msgSend_floatValue(v130, v131, v132, v133, v134);
    *(v9 + 2) = v135;

    v139 = objc_msgSend_objectForKey_(v5, v136, @"beatTimes", v137, v138);

    v143 = v5;
    if (v139 || (objc_msgSend_objectForKey_(v117, v140, @"beatTimes", v141, v142), v144 = objc_claimAutoreleasedReturnValue(), v144, v143 = v117, v144))
    {
      v145 = objc_msgSend_objectForKey_(v143, v140, @"beatTimes", v141, v142);
      v146 = *(v9 + 4);
      *(v9 + 4) = v145;
    }

    v147 = objc_msgSend_objectForKey_(v5, v140, @"barTimes", v141, v142);

    v151 = v5;
    if (v147 || (objc_msgSend_objectForKey_(v117, v148, @"barTimes", v149, v150), v152 = objc_claimAutoreleasedReturnValue(), v152, v151 = v117, v152))
    {
      v153 = objc_msgSend_objectForKey_(v151, v148, @"barTimes", v149, v150);
      v154 = *(v9 + 5);
      *(v9 + 5) = v153;
    }

    v155 = objc_msgSend_objectForKey_(v5, v148, @"loopTimes", v149, v150);
    v156 = *(v9 + 6);
    *(v9 + 6) = v155;
  }

  v157 = *MEMORY[0x277D85DE8];
  return v9;
}

- (void)setDuration:(id *)a3
{
  v3 = *&a3->var0;
  self->_duration.epoch = a3->var3;
  *&self->_duration.value = v3;
}

@end