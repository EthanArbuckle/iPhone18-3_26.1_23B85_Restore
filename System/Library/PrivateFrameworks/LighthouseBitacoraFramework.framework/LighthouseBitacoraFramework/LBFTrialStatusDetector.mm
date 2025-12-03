@interface LBFTrialStatusDetector
- (LBFTrialStatusDetector)init;
- (id)getTrialStatus:(id)status deploymentId:(id)id;
@end

@implementation LBFTrialStatusDetector

- (LBFTrialStatusDetector)init
{
  v516 = *MEMORY[0x277D85DE8];
  v507.receiver = self;
  v507.super_class = LBFTrialStatusDetector;
  v2 = [(LBFTrialStatusDetector *)&v507 init];
  v3 = v2;
  if (v2)
  {
    v486 = v2;
    v498 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v8 = objc_msgSend_sharedInstance(LBFEventManager, v4, v5, v6, v7);
    v487 = objc_msgSend_ensureBiomeManagerTrial(v8, v9, v10, v11, v12);

    v17 = objc_msgSend_sharedInstance(LBFEventManager, v13, v14, v15, v16);
    v22 = objc_msgSend_ensureBiomeManagerMLRuntimed(v17, v18, v19, v20, v21);

    v27 = objc_msgSend_dateWithTimeIntervalSinceNow_(MEMORY[0x277CBEAA8], v23, v24, v25, v26, -7776000.0);
    v32 = objc_msgSend_now(MEMORY[0x277CBEAA8], v28, v29, v30, v31);
    v33 = LBFLogContextTrialStatusDetector;
    if (os_log_type_enabled(LBFLogContextTrialStatusDetector, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v513 = v27;
      v514 = 2112;
      v515 = v32;
      _os_log_impl(&dword_255ED5000, v33, OS_LOG_TYPE_INFO, "Searching for events for Trial detection from %@ to %@.", buf, 0x16u);
    }

    v36 = objc_msgSend_readData_endDate_(v487, v34, v27, v32, v35);
    v484 = v27;
    v485 = v22;
    v490 = objc_msgSend_readData_endDate_(v22, v37, v27, v32, v38);
    v503 = 0u;
    v504 = 0u;
    v505 = 0u;
    v506 = 0u;
    obj = v36;
    v40 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v39, &v503, v511, 16);
    v483 = v32;
    if (v40)
    {
      v41 = v40;
      v42 = *v504;
      v43 = 0x277CF1000uLL;
      v495 = *v504;
      do
      {
        for (i = 0; i != v41; ++i)
        {
          if (*v504 != v42)
          {
            objc_enumerationMutation(obj);
          }

          v45 = *(*(&v503 + 1) + 8 * i);
          v46 = *(v43 + 664);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v48 = v45;
            v53 = objc_msgSend_trialIdentifiers(v48, v49, v50, v51, v52);
            v58 = objc_msgSend_bmltIdentifiers(v53, v54, v55, v56, v57);
            v63 = objc_msgSend_trialTaskID(v58, v59, v60, v61, v62);
            v68 = v63;
            if (v63)
            {
              v69 = v63;
            }

            else
            {
              v70 = objc_msgSend_trialIdentifiers(v48, v64, v65, v66, v67);
              v75 = objc_msgSend_experimentIdentifiers(v70, v71, v72, v73, v74);
              v69 = objc_msgSend_trialExperimentID(v75, v76, v77, v78, v79);

              v43 = 0x277CF1000;
            }

            v84 = objc_msgSend_trialIdentifiers(v48, v80, v81, v82, v83);
            v89 = objc_msgSend_bmltIdentifiers(v84, v85, v86, v87, v88);
            v94 = objc_msgSend_trialDeploymentID(v89, v90, v91, v92, v93);
            v99 = v94;
            if (v94)
            {
              v100 = v94;
            }

            else
            {
              v101 = objc_msgSend_trialIdentifiers(v48, v95, v96, v97, v98);
              v106 = objc_msgSend_experimentIdentifiers(v101, v102, v103, v104, v105);
              v100 = objc_msgSend_trialDeploymentID(v106, v107, v108, v109, v110);

              v42 = v495;
              v43 = 0x277CF1000;
            }

            if (v69 && v100)
            {
              v114 = objc_msgSend_objectForKey_(v498, v111, v69, v112, v113);

              if (!v114)
              {
                v118 = objc_alloc_init(MEMORY[0x277CBEB38]);
                objc_msgSend_setObject_forKeyedSubscript_(v498, v119, v118, v69, v120);
              }

              v121 = objc_msgSend_objectForKeyedSubscript_(v498, v115, v69, v116, v117);
              v125 = objc_msgSend_objectForKey_(v121, v122, v100, v123, v124);

              if (!v125)
              {
                v130 = [LBFObservedTrialStatus alloc];
                v133 = objc_msgSend_initWithObservedStatus_deploymentId_(v130, v131, v69, v100, v132);
                v137 = objc_msgSend_objectForKeyedSubscript_(v498, v134, v69, v135, v136);
                objc_msgSend_setObject_forKeyedSubscript_(v137, v138, v133, v100, v139);
              }

              v140 = objc_msgSend_timestamp(v48, v126, v127, v128, v129);
              v144 = objc_msgSend_objectForKeyedSubscript_(v498, v141, v69, v142, v143);
              v148 = objc_msgSend_objectForKeyedSubscript_(v144, v145, v100, v146, v147);
              objc_msgSend_setLastObservedTimestamp_(v148, v149, v140, v150, v151);

              v156 = objc_msgSend_eventType(v48, v152, v153, v154, v155);
              switch(v156)
              {
                case 1:
                  if (objc_msgSend_eventSucceeded(v48, v157, v158, v159, v160))
                  {
                    v220 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v217, 1, v218, v219);
                    v224 = objc_msgSend_objectForKeyedSubscript_(v498, v221, v69, v222, v223);
                    v228 = objc_msgSend_objectForKeyedSubscript_(v224, v225, v100, v226, v227);
                    objc_msgSend_setIsAllocated_(v228, v229, v220, v230, v231);

                    v179 = objc_msgSend_objectForKeyedSubscript_(v498, v232, v69, v233, v234);
                    v183 = objc_msgSend_objectForKeyedSubscript_(v179, v235, v100, v236, v237);
                    objc_msgSend_setIsAllocated_implicit_(v183, v238, 1, v239, v240);
LABEL_32:

                    v42 = v495;
                  }

                  else
                  {
                    v242 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v217, 0, v218, v219);
                    v246 = objc_msgSend_objectForKeyedSubscript_(v498, v243, v69, v244, v245);
                    v250 = objc_msgSend_objectForKeyedSubscript_(v246, v247, v100, v248, v249);
                    objc_msgSend_setIsAllocated_(v250, v251, v242, v252, v253);

                    v257 = objc_msgSend_objectForKeyedSubscript_(v498, v254, v69, v255, v256);
                    v261 = objc_msgSend_objectForKeyedSubscript_(v257, v258, v100, v259, v260);
                    objc_msgSend_setIsAllocated_implicit_(v261, v262, 0, v263, v264);

                    v265 = LBFLogContextTrialStatusDetector;
                    v42 = v495;
                    if (os_log_type_enabled(LBFLogContextTrialStatusDetector, OS_LOG_TYPE_INFO))
                    {
                      *buf = 138412546;
                      v513 = v69;
                      v514 = 2112;
                      v515 = v100;
                      v215 = v265;
                      v216 = "BMLighthouseLedgerTrialdEventEventTypeAllocation failed experimentOrTaskId:%@ deploymentId:%@";
                      goto LABEL_39;
                    }
                  }

                  break;
                case 3:
                  v187 = objc_msgSend_eventSucceeded(v48, v157, v158, v159, v160);
                  v191 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v188, 0, v189, v190);
                  v195 = objc_msgSend_objectForKeyedSubscript_(v498, v192, v69, v193, v194);
                  v199 = objc_msgSend_objectForKeyedSubscript_(v195, v196, v100, v197, v198);
                  objc_msgSend_setIsActivated_(v199, v200, v191, v201, v202);

                  v43 = 0x277CF1000;
                  v206 = objc_msgSend_objectForKeyedSubscript_(v498, v203, v69, v204, v205);
                  v210 = objc_msgSend_objectForKeyedSubscript_(v206, v207, v100, v208, v209);
                  objc_msgSend_setIsActivated_implicit_(v210, v211, 0, v212, v213);

                  v42 = v495;
                  if ((v187 & 1) == 0)
                  {
                    v214 = LBFLogContextTrialStatusDetector;
                    if (os_log_type_enabled(LBFLogContextTrialStatusDetector, OS_LOG_TYPE_INFO))
                    {
                      *buf = 138412546;
                      v513 = v69;
                      v514 = 2112;
                      v515 = v100;
                      v215 = v214;
                      v216 = "BMLighthouseLedgerTrialdEventEventTypeDeactivation failed experimentOrTaskId:%@ deploymentId:%@";
                      goto LABEL_39;
                    }
                  }

                  break;
                case 2:
                  if (objc_msgSend_eventSucceeded(v48, v157, v158, v159, v160))
                  {
                    v164 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v161, 1, v162, v163);
                    v168 = objc_msgSend_objectForKeyedSubscript_(v498, v165, v69, v166, v167);
                    v172 = objc_msgSend_objectForKeyedSubscript_(v168, v169, v100, v170, v171);
                    objc_msgSend_setIsActivated_(v172, v173, v164, v174, v175);

                    v179 = objc_msgSend_objectForKeyedSubscript_(v498, v176, v69, v177, v178);
                    v183 = objc_msgSend_objectForKeyedSubscript_(v179, v180, v100, v181, v182);
                    objc_msgSend_setIsActivated_implicit_(v183, v184, 1, v185, v186);
                    goto LABEL_32;
                  }

                  v266 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v161, 0, v162, v163);
                  v270 = objc_msgSend_objectForKeyedSubscript_(v498, v267, v69, v268, v269);
                  v274 = objc_msgSend_objectForKeyedSubscript_(v270, v271, v100, v272, v273);
                  objc_msgSend_setIsActivated_(v274, v275, v266, v276, v277);

                  v281 = objc_msgSend_objectForKeyedSubscript_(v498, v278, v69, v279, v280);
                  v285 = objc_msgSend_objectForKeyedSubscript_(v281, v282, v100, v283, v284);
                  objc_msgSend_setIsActivated_implicit_(v285, v286, 0, v287, v288);

                  v289 = LBFLogContextTrialStatusDetector;
                  v42 = v495;
                  if (os_log_type_enabled(LBFLogContextTrialStatusDetector, OS_LOG_TYPE_INFO))
                  {
                    *buf = 138412546;
                    v513 = v69;
                    v514 = 2112;
                    v515 = v100;
                    v215 = v289;
                    v216 = "BMLighthouseLedgerTrialdEventEventTypeActivation failed experimentOrTaskId:%@ deploymentId:%@";
LABEL_39:
                    _os_log_impl(&dword_255ED5000, v215, OS_LOG_TYPE_INFO, v216, buf, 0x16u);
                  }

                  break;
                default:
                  v241 = LBFLogContextTrialStatusDetector;
                  v42 = v495;
                  if (os_log_type_enabled(LBFLogContextTrialStatusDetector, OS_LOG_TYPE_ERROR))
                  {
                    sub_255F0C59C(v509, v241, v48, v510);
                  }

                  break;
              }
            }

            continue;
          }
        }

        v41 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v47, &v503, v511, 16);
      }

      while (v41);
    }

    v501 = 0u;
    v502 = 0u;
    v499 = 0u;
    v500 = 0u;
    v290 = v490;
    v292 = objc_msgSend_countByEnumeratingWithState_objects_count_(v290, v291, &v499, v508, 16);
    v293 = v498;
    if (!v292)
    {
      goto LABEL_75;
    }

    v294 = v292;
    v295 = *v500;
    v296 = 0x277CF1000uLL;
    v489 = v290;
    v494 = *v500;
LABEL_45:
    v297 = 0;
    v496 = v294;
    while (1)
    {
      if (*v500 != v295)
      {
        objc_enumerationMutation(v290);
      }

      v298 = *(*(&v499 + 1) + 8 * v297);
      v299 = *(v296 + 616);
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_73;
      }

      v301 = v298;
      v306 = objc_msgSend_trialIdentifiers(v301, v302, v303, v304, v305);
      v311 = objc_msgSend_bmltIdentifiers(v306, v307, v308, v309, v310);
      v316 = objc_msgSend_trialTaskID(v311, v312, v313, v314, v315);
      v321 = v316;
      if (v316)
      {
        v322 = v316;
      }

      else
      {
        objc_msgSend_trialIdentifiers(v301, v317, v318, v319, v320);
        v324 = v323 = v301;
        v329 = objc_msgSend_experimentIdentifiers(v324, v325, v326, v327, v328);
        v322 = objc_msgSend_trialExperimentID(v329, v330, v331, v332, v333);

        v301 = v323;
      }

      v338 = objc_msgSend_trialIdentifiers(v301, v334, v335, v336, v337);
      v343 = objc_msgSend_bmltIdentifiers(v338, v339, v340, v341, v342);
      v348 = objc_msgSend_trialDeploymentID(v343, v344, v345, v346, v347);
      v353 = v348;
      if (v348)
      {
        v354 = v348;
      }

      else
      {
        objc_msgSend_trialIdentifiers(v301, v349, v350, v351, v352);
        v491 = v322;
        v355 = v293;
        v356 = v290;
        v358 = v357 = v301;
        v363 = objc_msgSend_experimentIdentifiers(v358, v359, v360, v361, v362);
        v354 = objc_msgSend_trialDeploymentID(v363, v364, v365, v366, v367);

        v301 = v357;
        v290 = v356;
        v293 = v355;
        v322 = v491;
      }

      if (v322 && v354)
      {
        v371 = objc_msgSend_objectForKey_(v293, v368, v322, v369, v370);

        if (!v371)
        {
          v375 = objc_alloc_init(MEMORY[0x277CBEB38]);
          objc_msgSend_setObject_forKeyedSubscript_(v293, v376, v375, v322, v377);
        }

        v378 = objc_msgSend_objectForKeyedSubscript_(v293, v372, v322, v373, v374);
        v382 = objc_msgSend_objectForKey_(v378, v379, v354, v380, v381);

        if (!v382)
        {
          v386 = [LBFObservedTrialStatus alloc];
          v389 = objc_msgSend_initWithObservedStatus_deploymentId_(v386, v387, v322, v354, v388);
          v393 = objc_msgSend_objectForKeyedSubscript_(v293, v390, v322, v391, v392);
          objc_msgSend_setObject_forKeyedSubscript_(v393, v394, v389, v354, v395);
        }

        v396 = objc_msgSend_objectForKeyedSubscript_(v293, v383, v322, v384, v385);
        v400 = objc_msgSend_objectForKeyedSubscript_(v396, v397, v354, v398, v399);
        if (objc_msgSend_isActivated_implicit(v400, v401, v402, v403, v404))
        {
          v408 = objc_msgSend_objectForKeyedSubscript_(v293, v405, v322, v406, v407);
          objc_msgSend_objectForKeyedSubscript_(v408, v409, v354, v410, v411);
          v412 = v354;
          v413 = v322;
          v414 = v293;
          v415 = v290;
          v417 = v416 = v301;
          isAllocated_implicit = objc_msgSend_isAllocated_implicit(v417, v418, v419, v420, v421);

          v301 = v416;
          v290 = v415;
          v293 = v414;
          v322 = v413;
          v354 = v412;

          if (isAllocated_implicit)
          {
            goto LABEL_72;
          }
        }

        else
        {
        }

        v425 = objc_msgSend_objectForKeyedSubscript_(v293, v422, v322, v423, v424);
        v429 = objc_msgSend_objectForKeyedSubscript_(v425, v426, v354, v427, v428);
        v434 = objc_msgSend_lastObservedTimestamp(v429, v430, v431, v432, v433);
        if (!v434)
        {

LABEL_69:
          v457 = LBFLogContextTrialStatusDetector;
          if (os_log_type_enabled(LBFLogContextTrialStatusDetector, OS_LOG_TYPE_INFO))
          {
            *buf = 138412546;
            v513 = v322;
            v514 = 2112;
            v515 = v354;
            _os_log_impl(&dword_255ED5000, v457, OS_LOG_TYPE_INFO, "set implicit trial status experimentOrTaskId:%@ deploymentId:%@", buf, 0x16u);
          }

          v461 = objc_msgSend_objectForKeyedSubscript_(v293, v458, v322, v459, v460);
          v465 = objc_msgSend_objectForKeyedSubscript_(v461, v462, v354, v463, v464);
          objc_msgSend_setIsActivated_implicit_(v465, v466, 1, v467, v468);

          v472 = objc_msgSend_objectForKeyedSubscript_(v293, v469, v322, v470, v471);
          v476 = objc_msgSend_objectForKeyedSubscript_(v472, v473, v354, v474, v475);
          objc_msgSend_setIsAllocated_implicit_(v476, v477, 1, v478, v479);

          v290 = v489;
          goto LABEL_72;
        }

        v439 = v434;
        v440 = objc_msgSend_timestamp(v301, v435, v436, v437, v438);
        objc_msgSend_objectForKeyedSubscript_(v293, v441, v322, v442, v443);
        v444 = v493 = v301;
        v448 = objc_msgSend_objectForKeyedSubscript_(v444, v445, v354, v446, v447);
        v453 = objc_msgSend_lastObservedTimestamp(v448, v449, v450, v451, v452);
        v488 = objc_msgSend_compare_(v440, v454, v453, v455, v456);

        v290 = v489;
        v293 = v498;

        v301 = v493;
        if (v488 == 1)
        {
          goto LABEL_69;
        }
      }

LABEL_72:

      v295 = v494;
      v296 = 0x277CF1000;
      v294 = v496;
LABEL_73:
      if (v294 == ++v297)
      {
        v294 = objc_msgSend_countByEnumeratingWithState_objects_count_(v290, v300, &v499, v508, 16);
        if (!v294)
        {
LABEL_75:

          v3 = v486;
          observedTrialStatusHolder = v486->_observedTrialStatusHolder;
          v486->_observedTrialStatusHolder = v293;

          break;
        }

        goto LABEL_45;
      }
    }
  }

  v481 = *MEMORY[0x277D85DE8];
  return v3;
}

- (id)getTrialStatus:(id)status deploymentId:(id)id
{
  statusCopy = status;
  idCopy = id;
  v11 = objc_msgSend_objectForKey_(self->_observedTrialStatusHolder, v8, statusCopy, v9, v10);

  if (v11 && (objc_msgSend_objectForKeyedSubscript_(self->_observedTrialStatusHolder, v12, statusCopy, v13, v14), v15 = objc_claimAutoreleasedReturnValue(), objc_msgSend_objectForKey_(v15, v16, idCopy, v17, v18), v19 = objc_claimAutoreleasedReturnValue(), v19, v15, v19))
  {
    v23 = objc_msgSend_objectForKeyedSubscript_(self->_observedTrialStatusHolder, v20, statusCopy, v21, v22);
    v27 = objc_msgSend_objectForKeyedSubscript_(v23, v24, idCopy, v25, v26);
  }

  else
  {
    v27 = 0;
  }

  return v27;
}

@end