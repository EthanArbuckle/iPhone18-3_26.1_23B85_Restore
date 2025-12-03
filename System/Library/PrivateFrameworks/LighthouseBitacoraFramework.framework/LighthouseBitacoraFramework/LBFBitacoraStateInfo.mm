@interface LBFBitacoraStateInfo
+ (id)getCAEventDictionaryFromBiomeEvent:(id)event;
- (BOOL)uploadRawEventsToCoreAnalytics;
- (BOOL)uploadToCoreAnalytics;
- (BOOL)uploadToDedisco;
- (LBFBitacoraStateInfo)initWithBitcoraState:(id)state bucketStartTime:(id)time bucketEndTime:(id)endTime observedTrialStatus:(id)status bitacoraStateTransitions:(id)transitions bitacoraEvents:(id)events;
- (LBFBitacoraStateInfo)initWithBitcoraStateMLHost:(id)host bucketStartTime:(id)time bucketEndTime:(id)endTime observedTrialStatus:(id)status bitacoraStateTransitions:(id)transitions bitacoraEvents:(id)events;
- (id)getDictionaryRepresentation;
- (id)getPETState;
- (id)maxTimedelta_To_State_Activated;
- (id)maxTimedelta_To_State_ActivatedFailed;
- (id)maxTimedelta_To_State_Allocated;
- (id)maxTimedelta_To_State_AllocatedFailed;
- (id)maxTimedelta_To_State_Deativated;
- (id)maxTimedelta_To_State_DeativatedFailed;
- (id)maxTimedelta_To_State_DprivacydBudgetCheck;
- (id)maxTimedelta_To_State_DprivacydBudgetCheckFailed;
- (id)maxTimedelta_To_State_DprivacydDonationReceived;
- (id)maxTimedelta_To_State_DprivacydDonationReceivedFailed;
- (id)maxTimedelta_To_State_DprivacydPayloadCreation;
- (id)maxTimedelta_To_State_DprivacydPayloadCreationFailed;
- (id)maxTimedelta_To_State_DprivacydRandomization;
- (id)maxTimedelta_To_State_DprivacydRandomizationFailed;
- (id)maxTimedelta_To_State_DprivacydUpload;
- (id)maxTimedelta_To_State_DprivacydUploadFailed;
- (id)maxTimedelta_To_State_PerformTask;
- (id)maxTimedelta_To_State_PerformTaskFailed;
- (id)maxTimedelta_To_State_TaskCompleted;
- (id)maxTimedelta_To_State_TaskCompletedFailed;
- (id)maxTimedelta_To_State_TaskFetched;
- (id)maxTimedelta_To_State_TaskFetchedFailed;
- (id)maxTimedelta_To_State_TaskScheduled;
- (id)maxTimedelta_To_State_TaskScheduledFailed;
- (id)maxTimedelta_To_State_Unexpeted;
- (void)iterateEvents;
- (void)iterateTransitions;
@end

@implementation LBFBitacoraStateInfo

- (LBFBitacoraStateInfo)initWithBitcoraState:(id)state bucketStartTime:(id)time bucketEndTime:(id)endTime observedTrialStatus:(id)status bitacoraStateTransitions:(id)transitions bitacoraEvents:(id)events
{
  stateCopy = state;
  timeCopy = time;
  endTimeCopy = endTime;
  statusCopy = status;
  transitionsCopy = transitions;
  eventsCopy = events;
  v79.receiver = self;
  v79.super_class = LBFBitacoraStateInfo;
  v19 = [(LBFBitacoraStateInfo *)&v79 init];
  if (v19)
  {
    LBFLoggingUtilsInit();
    objc_storeStrong(&v19->_bitacoraStateTransitions, transitions);
    objc_storeStrong(&v19->_bitacoraEvents, events);
    v24 = objc_msgSend_UUID(MEMORY[0x277CCAD78], v20, v21, v22, v23, endTimeCopy, timeCopy);
    v29 = objc_msgSend_UUIDString(v24, v25, v26, v27, v28);
    stateId = v19->_stateId;
    v19->_stateId = v29;

    objc_storeStrong(&v19->_trialIdentifiers, state);
    v35 = objc_msgSend_getContextId(LBFContextId, v31, v32, v33, v34);
    contextId = v19->_contextId;
    v19->_contextId = v35;

    v41 = objc_msgSend_isActivated(statusCopy, v37, v38, v39, v40);
    isActivated = v19->_isActivated;
    v19->_isActivated = v41;

    v47 = objc_msgSend_isAllocated(statusCopy, v43, v44, v45, v46);
    isAllocated = v19->_isAllocated;
    v19->_isAllocated = v47;

    v19->_isActivated_implicit = objc_msgSend_isActivated_implicit(statusCopy, v49, v50, v51, v52);
    v19->_isAllocated_implicit = objc_msgSend_isAllocated_implicit(statusCopy, v53, v54, v55, v56);
    objc_storeStrong(&v19->_bucketStartTime, time);
    objc_storeStrong(&v19->_bucketEndTime, endTime);
    if (objc_msgSend_count(transitionsCopy, v57, v58, v59, v60))
    {
      v65 = objc_msgSend_lastObject(transitionsCopy, v61, v62, v63, v64);
      v19->_latestState = objc_msgSend_state(v65, v66, v67, v68, v69);

      if (v19->_latestState == 8)
      {
        v70 = LBFLogContextBitacoraStateInfo;
        if (os_log_type_enabled(LBFLogContextBitacoraStateInfo, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_255ED5000, v70, OS_LOG_TYPE_INFO, "LBFBitacoraState_Unexpected state", buf, 2u);
        }
      }
    }

    else
    {
      v19->_latestState = 0;
    }

    if (stateCopy)
    {
      objc_msgSend_IsEmptyTrialIdentifiers_(LBFUtils, v61, stateCopy, v63, v64);
    }

    objc_msgSend_iterateEvents(v19, v61, v62, v63, v64);
    objc_msgSend_iterateTransitions(v19, v71, v72, v73, v74);
  }

  return v19;
}

- (LBFBitacoraStateInfo)initWithBitcoraStateMLHost:(id)host bucketStartTime:(id)time bucketEndTime:(id)endTime observedTrialStatus:(id)status bitacoraStateTransitions:(id)transitions bitacoraEvents:(id)events
{
  started = objc_msgSend_initWithBitcoraState_bucketStartTime_bucketEndTime_observedTrialStatus_bitacoraStateTransitions_bitacoraEvents_(self, a2, host, time, endTime, status, transitions, events);
  v12 = started;
  if (started)
  {
    v13 = objc_msgSend_addMLHostMarkerToString_(started, v9, started[2], v10, v11);
    stateId = v12->_stateId;
    v12->_stateId = v13;
  }

  return v12;
}

- (void)iterateEvents
{
  v551 = *MEMORY[0x277D85DE8];
  v544 = 0u;
  v545 = 0u;
  v546 = 0u;
  v547 = 0u;
  v3 = self->_bitacoraEvents;
  v5 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, v4, &v544, v550, 16);
  if (v5)
  {
    v6 = v5;
    v7 = *v545;
    do
    {
      v8 = 0;
      do
      {
        if (*v545 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v9 = *(*(&v544 + 1) + 8 * v8);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v10 = v9;
          v15 = objc_msgSend_timestamp(v10, v11, v12, v13, v14);
          v19 = objc_msgSend_compare_(v15, v16, self->_bucketStartTime, v17, v18);

          if (v19 == -1)
          {
            if (os_log_type_enabled(LBFLogContextBitacoraStateInfo, OS_LOG_TYPE_ERROR))
            {
              sub_255F0AE60(&v542, v543);
            }

            goto LABEL_87;
          }

          v24 = objc_msgSend_taskFetched(v10, v20, v21, v22, v23);

          if (v24)
          {
            v29 = objc_msgSend_taskFetched(v10, v25, v26, v27, v28);
            v34 = objc_msgSend_succeeded(v29, v30, v31, v32, v33);

            v39 = MEMORY[0x277CCABB0];
            if (v34)
            {
              v40 = objc_msgSend_intValue(self->_count_TaskFetched_Succeeded, v35, v36, v37, v38);
              v44 = objc_msgSend_numberWithInt_(v39, v41, (v40 + 1), v42, v43);
              count_TaskFetched_Succeeded = self->_count_TaskFetched_Succeeded;
              self->_count_TaskFetched_Succeeded = v44;

              v50 = objc_msgSend_timestamp(v10, v46, v47, v48, v49);
              timestamp_TaskFetched_Succeeded = self->_timestamp_TaskFetched_Succeeded;
              self->_timestamp_TaskFetched_Succeeded = v50;
            }

            else
            {
              v79 = objc_msgSend_intValue(self->_count_TaskFetched_Failed, v35, v36, v37, v38);
              v83 = objc_msgSend_numberWithInt_(v39, v80, (v79 + 1), v81, v82);
              count_TaskFetched_Failed = self->_count_TaskFetched_Failed;
              self->_count_TaskFetched_Failed = v83;

              v89 = objc_msgSend_timestamp(v10, v85, v86, v87, v88);
              timestamp_TaskFetched_Succeeded = self->_timestamp_TaskFetched_Failed;
              self->_timestamp_TaskFetched_Failed = v89;
            }

            goto LABEL_25;
          }

          v52 = objc_msgSend_taskCompleted(v10, v25, v26, v27, v28);

          if (v52)
          {
            v57 = objc_msgSend_taskCompleted(v10, v53, v54, v55, v56);
            v62 = objc_msgSend_succeeded(v57, v58, v59, v60, v61);

            v67 = MEMORY[0x277CCABB0];
            if (v62)
            {
              v68 = objc_msgSend_intValue(self->_count_TaskCompleted_Succeeded, v63, v64, v65, v66);
              v72 = objc_msgSend_numberWithInt_(v67, v69, (v68 + 1), v70, v71);
              count_TaskCompleted_Succeeded = self->_count_TaskCompleted_Succeeded;
              self->_count_TaskCompleted_Succeeded = v72;

              v78 = objc_msgSend_timestamp(v10, v74, v75, v76, v77);
              timestamp_TaskFetched_Succeeded = self->_timestamp_TaskCompleted_Succeeded;
              self->_timestamp_TaskCompleted_Succeeded = v78;
            }

            else
            {
              v117 = objc_msgSend_intValue(self->_count_TaskCompleted_Failed, v63, v64, v65, v66);
              v121 = objc_msgSend_numberWithInt_(v67, v118, (v117 + 1), v119, v120);
              count_TaskCompleted_Failed = self->_count_TaskCompleted_Failed;
              self->_count_TaskCompleted_Failed = v121;

              v127 = objc_msgSend_timestamp(v10, v123, v124, v125, v126);
              timestamp_TaskFetched_Succeeded = self->_timestamp_TaskCompleted_Failed;
              self->_timestamp_TaskCompleted_Failed = v127;
            }

            goto LABEL_25;
          }

          v90 = objc_msgSend_taskScheduled(v10, v53, v54, v55, v56);

          if (v90)
          {
            v95 = objc_msgSend_taskScheduled(v10, v91, v92, v93, v94);
            v100 = objc_msgSend_succeeded(v95, v96, v97, v98, v99);

            v105 = MEMORY[0x277CCABB0];
            if (v100)
            {
              v106 = objc_msgSend_intValue(self->_count_TaskScheduled_Succeeded, v101, v102, v103, v104);
              v110 = objc_msgSend_numberWithInt_(v105, v107, (v106 + 1), v108, v109);
              count_TaskScheduled_Succeeded = self->_count_TaskScheduled_Succeeded;
              self->_count_TaskScheduled_Succeeded = v110;

              v116 = objc_msgSend_timestamp(v10, v112, v113, v114, v115);
              timestamp_TaskFetched_Succeeded = self->_timestamp_TaskScheduled_Succeeded;
              self->_timestamp_TaskScheduled_Succeeded = v116;
            }

            else
            {
              v129 = objc_msgSend_intValue(self->_count_TaskScheduled_Failed, v101, v102, v103, v104);
              v133 = objc_msgSend_numberWithInt_(v105, v130, (v129 + 1), v131, v132);
              count_TaskScheduled_Failed = self->_count_TaskScheduled_Failed;
              self->_count_TaskScheduled_Failed = v133;

              v139 = objc_msgSend_timestamp(v10, v135, v136, v137, v138);
              timestamp_TaskFetched_Succeeded = self->_timestamp_TaskScheduled_Failed;
              self->_timestamp_TaskScheduled_Failed = v139;
            }

LABEL_25:
          }

          else
          {
            v128 = objc_msgSend_activityScheduleStatus(v10, v91, v92, v93, v94);

            if (!v128 && os_log_type_enabled(LBFLogContextBitacoraStateInfo, OS_LOG_TYPE_ERROR))
            {
              sub_255F0AD14(&v540, v541);
            }
          }
        }

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          goto LABEL_40;
        }

        v140 = v9;
        v145 = objc_msgSend_timestamp(v140, v141, v142, v143, v144);
        v149 = objc_msgSend_compare_(v145, v146, self->_bucketStartTime, v147, v148);

        if (v149 == -1)
        {
          if (os_log_type_enabled(LBFLogContextBitacoraStateInfo, OS_LOG_TYPE_ERROR))
          {
            sub_255F0AE34(&v538, v539);
          }

          goto LABEL_87;
        }

        v154 = objc_msgSend_performTaskStatus(v140, v150, v151, v152, v153);

        if (v154)
        {
          v159 = objc_msgSend_performTaskStatus(v140, v155, v156, v157, v158);
          goto LABEL_35;
        }

        v164 = objc_msgSend_performTrialTaskStatus(v140, v155, v156, v157, v158);

        if (v164)
        {
          v159 = objc_msgSend_performTrialTaskStatus(v140, v165, v166, v167, v168);
LABEL_35:
          v169 = v159;
          v170 = objc_msgSend_succeeded(v159, v160, v161, v162, v163);

          v175 = MEMORY[0x277CCABB0];
          if (v170)
          {
            v176 = objc_msgSend_intValue(self->_count_PerformTask_Succeeded, v171, v172, v173, v174);
            v180 = objc_msgSend_numberWithInt_(v175, v177, (v176 + 1), v178, v179);
            count_PerformTask_Succeeded = self->_count_PerformTask_Succeeded;
            self->_count_PerformTask_Succeeded = v180;

            v186 = objc_msgSend_timestamp(v140, v182, v183, v184, v185);
            timestamp_PerformTask_Succeeded = self->_timestamp_PerformTask_Succeeded;
            self->_timestamp_PerformTask_Succeeded = v186;
          }

          else
          {
            v188 = objc_msgSend_intValue(self->_count_PerformTask_Failed, v171, v172, v173, v174);
            v192 = objc_msgSend_numberWithInt_(v175, v189, (v188 + 1), v190, v191);
            count_PerformTask_Failed = self->_count_PerformTask_Failed;
            self->_count_PerformTask_Failed = v192;

            v198 = objc_msgSend_timestamp(v140, v194, v195, v196, v197);
            timestamp_PerformTask_Succeeded = self->_timestamp_PerformTask_Failed;
            self->_timestamp_PerformTask_Failed = v198;
          }

          goto LABEL_38;
        }

        v271 = objc_msgSend_stop(v140, v165, v166, v167, v168);

        if (!v271)
        {
          if (os_log_type_enabled(LBFLogContextBitacoraStateInfo, OS_LOG_TYPE_ERROR))
          {
            sub_255F0AD40(&v536, v537);
          }

          goto LABEL_39;
        }

        v276 = objc_msgSend_stop(v140, v272, v273, v274, v275);
        v281 = objc_msgSend_succeeded(v276, v277, v278, v279, v280);

        v286 = MEMORY[0x277CCABB0];
        if (v281)
        {
          v287 = objc_msgSend_intValue(self->_count_Stop_Succeeded, v282, v283, v284, v285);
          v291 = objc_msgSend_numberWithInt_(v286, v288, (v287 + 1), v289, v290);
          count_Stop_Succeeded = self->_count_Stop_Succeeded;
          self->_count_Stop_Succeeded = v291;

          v297 = objc_msgSend_timestamp(v140, v293, v294, v295, v296);
          timestamp_PerformTask_Succeeded = self->_timestamp_Stop_Succeeded;
          self->_timestamp_Stop_Succeeded = v297;
        }

        else
        {
          v523 = objc_msgSend_intValue(self->_count_Stop_Failed, v282, v283, v284, v285);
          v527 = objc_msgSend_numberWithInt_(v286, v524, (v523 + 1), v525, v526);
          count_Stop_Failed = self->_count_Stop_Failed;
          self->_count_Stop_Failed = v527;

          v533 = objc_msgSend_timestamp(v140, v529, v530, v531, v532);
          timestamp_PerformTask_Succeeded = self->_timestamp_Stop_Failed;
          self->_timestamp_Stop_Failed = v533;
        }

LABEL_38:

LABEL_39:
LABEL_40:
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          goto LABEL_61;
        }

        v199 = v9;
        v204 = objc_msgSend_timestamp(v199, v200, v201, v202, v203);
        v208 = objc_msgSend_compare_(v204, v205, self->_bucketStartTime, v206, v207);

        if (v208 == -1)
        {
          goto LABEL_87;
        }

        v213 = objc_msgSend_eventType(v199, v209, v210, v211, v212);
        switch(v213)
        {
          case 1:
            v253 = objc_msgSend_eventSucceeded(v199, v214, v215, v216, v217);
            v258 = MEMORY[0x277CCABB0];
            if (v253)
            {
              v259 = objc_msgSend_intValue(self->_count_Allocated_Succeeded, v254, v255, v256, v257);
              v263 = objc_msgSend_numberWithInt_(v258, v260, (v259 + 1), v261, v262);
              count_Allocated_Succeeded = self->_count_Allocated_Succeeded;
              self->_count_Allocated_Succeeded = v263;

              v269 = objc_msgSend_timestamp(v199, v265, v266, v267, v268);
              timestamp_Allocated_Succeeded = self->_timestamp_Allocated_Succeeded;
              self->_timestamp_Allocated_Succeeded = v269;
            }

            else
            {
              v309 = objc_msgSend_intValue(self->_count_Allocated_Failed, v254, v255, v256, v257);
              v313 = objc_msgSend_numberWithInt_(v258, v310, (v309 + 1), v311, v312);
              count_Allocated_Failed = self->_count_Allocated_Failed;
              self->_count_Allocated_Failed = v313;

              v319 = objc_msgSend_timestamp(v199, v315, v316, v317, v318);
              timestamp_Allocated_Succeeded = self->_timestamp_Allocated_Failed;
              self->_timestamp_Allocated_Failed = v319;
            }

            break;
          case 3:
            v236 = objc_msgSend_eventSucceeded(v199, v214, v215, v216, v217);
            v241 = MEMORY[0x277CCABB0];
            if (v236)
            {
              v242 = objc_msgSend_intValue(self->_count_Deactivated_Succeeded, v237, v238, v239, v240);
              v246 = objc_msgSend_numberWithInt_(v241, v243, (v242 + 1), v244, v245);
              count_Deactivated_Succeeded = self->_count_Deactivated_Succeeded;
              self->_count_Deactivated_Succeeded = v246;

              v252 = objc_msgSend_timestamp(v199, v248, v249, v250, v251);
              timestamp_Allocated_Succeeded = self->_timestamp_Deactivated_Succeeded;
              self->_timestamp_Deactivated_Succeeded = v252;
            }

            else
            {
              v298 = objc_msgSend_intValue(self->_count_Deactivated_Failed, v237, v238, v239, v240);
              v302 = objc_msgSend_numberWithInt_(v241, v299, (v298 + 1), v300, v301);
              count_Deactivated_Failed = self->_count_Deactivated_Failed;
              self->_count_Deactivated_Failed = v302;

              v308 = objc_msgSend_timestamp(v199, v304, v305, v306, v307);
              timestamp_Allocated_Succeeded = self->_timestamp_Deactivated_Failed;
              self->_timestamp_Deactivated_Failed = v308;
            }

            break;
          case 2:
            v218 = objc_msgSend_eventSucceeded(v199, v214, v215, v216, v217);
            v223 = MEMORY[0x277CCABB0];
            if (v218)
            {
              v224 = objc_msgSend_intValue(self->_count_Activated_Succeeded, v219, v220, v221, v222);
              v228 = objc_msgSend_numberWithInt_(v223, v225, (v224 + 1), v226, v227);
              count_Activated_Succeeded = self->_count_Activated_Succeeded;
              self->_count_Activated_Succeeded = v228;

              v234 = objc_msgSend_timestamp(v199, v230, v231, v232, v233);
              timestamp_Allocated_Succeeded = self->_timestamp_Activated_Succeeded;
              self->_timestamp_Activated_Succeeded = v234;
            }

            else
            {
              v320 = objc_msgSend_intValue(self->_count_Activated_Failed, v219, v220, v221, v222);
              v324 = objc_msgSend_numberWithInt_(v223, v321, (v320 + 1), v322, v323);
              count_Activated_Failed = self->_count_Activated_Failed;
              self->_count_Activated_Failed = v324;

              v330 = objc_msgSend_timestamp(v199, v326, v327, v328, v329);
              timestamp_Allocated_Succeeded = self->_timestamp_Activated_Failed;
              self->_timestamp_Activated_Failed = v330;
            }

            break;
          default:
            v270 = LBFLogContextBitacoraStateInfo;
            if (os_log_type_enabled(LBFLogContextBitacoraStateInfo, OS_LOG_TYPE_ERROR))
            {
              sub_255F0AD6C(v549, v270);
            }

            goto LABEL_60;
        }

LABEL_60:
LABEL_61:
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          goto LABEL_88;
        }

        v332 = v9;
        v337 = objc_msgSend_timestamp(v332, v333, v334, v335, v336);
        v341 = objc_msgSend_compare_(v337, v338, self->_bucketStartTime, v339, v340);

        if (v341 != -1)
        {
          v346 = objc_msgSend_event(v332, v342, v343, v344, v345);
          v351 = objc_msgSend_phase(v346, v347, v348, v349, v350);

          if (v351 <= 2)
          {
            if (v351 == 1)
            {
              v445 = objc_msgSend_event(v332, v352, v353, v354, v355);
              v450 = objc_msgSend_succeeded(v445, v446, v447, v448, v449);

              v455 = MEMORY[0x277CCABB0];
              if (v450)
              {
                v456 = objc_msgSend_intValue(self->_count_DprivacydDonationReceived_Succeeded, v451, v452, v453, v454);
                v460 = objc_msgSend_numberWithInt_(v455, v457, (v456 + 1), v458, v459);
                count_DprivacydDonationReceived_Succeeded = self->_count_DprivacydDonationReceived_Succeeded;
                self->_count_DprivacydDonationReceived_Succeeded = v460;

                v466 = objc_msgSend_timestamp(v332, v462, v463, v464, v465);
                timestamp_DprivacydDonationReceived_Succeeded = self->_timestamp_DprivacydDonationReceived_Succeeded;
                self->_timestamp_DprivacydDonationReceived_Succeeded = v466;
              }

              else
              {
                v490 = objc_msgSend_intValue(self->_count_DprivacydDonationReceived_Failed, v451, v452, v453, v454);
                v494 = objc_msgSend_numberWithInt_(v455, v491, (v490 + 1), v492, v493);
                count_DprivacydDonationReceived_Failed = self->_count_DprivacydDonationReceived_Failed;
                self->_count_DprivacydDonationReceived_Failed = v494;

                v500 = objc_msgSend_timestamp(v332, v496, v497, v498, v499);
                timestamp_DprivacydDonationReceived_Succeeded = self->_timestamp_DprivacydDonationReceived_Failed;
                self->_timestamp_DprivacydDonationReceived_Failed = v500;
              }
            }

            else
            {
              if (v351 != 2)
              {
LABEL_79:
                v467 = LBFLogContextBitacoraStateInfo;
                if (os_log_type_enabled(LBFLogContextBitacoraStateInfo, OS_LOG_TYPE_ERROR))
                {
                  sub_255F0ADC8(v548, v467);
                }

                goto LABEL_87;
              }

              v379 = objc_msgSend_event(v332, v352, v353, v354, v355);
              v384 = objc_msgSend_succeeded(v379, v380, v381, v382, v383);

              v389 = MEMORY[0x277CCABB0];
              if (v384)
              {
                v390 = objc_msgSend_intValue(self->_count_DprivacydRandomization_Succeeded, v385, v386, v387, v388);
                v394 = objc_msgSend_numberWithInt_(v389, v391, (v390 + 1), v392, v393);
                count_DprivacydRandomization_Succeeded = self->_count_DprivacydRandomization_Succeeded;
                self->_count_DprivacydRandomization_Succeeded = v394;

                v400 = objc_msgSend_timestamp(v332, v396, v397, v398, v399);
                timestamp_DprivacydDonationReceived_Succeeded = self->_timestamp_DprivacydRandomization_Succeeded;
                self->_timestamp_DprivacydRandomization_Succeeded = v400;
              }

              else
              {
                v512 = objc_msgSend_intValue(self->_count_DprivacydRandomization_Failed, v385, v386, v387, v388);
                v516 = objc_msgSend_numberWithInt_(v389, v513, (v512 + 1), v514, v515);
                count_DprivacydRandomization_Failed = self->_count_DprivacydRandomization_Failed;
                self->_count_DprivacydRandomization_Failed = v516;

                v522 = objc_msgSend_timestamp(v332, v518, v519, v520, v521);
                timestamp_DprivacydDonationReceived_Succeeded = self->_timestamp_DprivacydRandomization_Failed;
                self->_timestamp_DprivacydRandomization_Failed = v522;
              }
            }
          }

          else
          {
            switch(v351)
            {
              case 3:
                v401 = objc_msgSend_event(v332, v352, v353, v354, v355);
                v406 = objc_msgSend_succeeded(v401, v402, v403, v404, v405);

                v411 = MEMORY[0x277CCABB0];
                if (v406)
                {
                  v412 = objc_msgSend_intValue(self->_count_DprivacydBudgetCheck_Succeeded, v407, v408, v409, v410);
                  v416 = objc_msgSend_numberWithInt_(v411, v413, (v412 + 1), v414, v415);
                  count_DprivacydBudgetCheck_Succeeded = self->_count_DprivacydBudgetCheck_Succeeded;
                  self->_count_DprivacydBudgetCheck_Succeeded = v416;

                  v422 = objc_msgSend_timestamp(v332, v418, v419, v420, v421);
                  timestamp_DprivacydDonationReceived_Succeeded = self->_timestamp_DprivacydBudgetCheck_Succeeded;
                  self->_timestamp_DprivacydBudgetCheck_Succeeded = v422;
                }

                else
                {
                  v468 = objc_msgSend_intValue(self->_count_DprivacydBudgetCheck_Failed, v407, v408, v409, v410);
                  v472 = objc_msgSend_numberWithInt_(v411, v469, (v468 + 1), v470, v471);
                  count_DprivacydBudgetCheck_Failed = self->_count_DprivacydBudgetCheck_Failed;
                  self->_count_DprivacydBudgetCheck_Failed = v472;

                  v478 = objc_msgSend_timestamp(v332, v474, v475, v476, v477);
                  timestamp_DprivacydDonationReceived_Succeeded = self->_timestamp_DprivacydBudgetCheck_Failed;
                  self->_timestamp_DprivacydBudgetCheck_Failed = v478;
                }

                break;
              case 4:
                v423 = objc_msgSend_event(v332, v352, v353, v354, v355);
                v428 = objc_msgSend_succeeded(v423, v424, v425, v426, v427);

                v433 = MEMORY[0x277CCABB0];
                if (v428)
                {
                  v434 = objc_msgSend_intValue(self->_count_DprivacydPayloadCreation_Succeeded, v429, v430, v431, v432);
                  v438 = objc_msgSend_numberWithInt_(v433, v435, (v434 + 1), v436, v437);
                  count_DprivacydPayloadCreation_Succeeded = self->_count_DprivacydPayloadCreation_Succeeded;
                  self->_count_DprivacydPayloadCreation_Succeeded = v438;

                  v444 = objc_msgSend_timestamp(v332, v440, v441, v442, v443);
                  timestamp_DprivacydDonationReceived_Succeeded = self->_timestamp_DprivacydPayloadCreation_Succeeded;
                  self->_timestamp_DprivacydPayloadCreation_Succeeded = v444;
                }

                else
                {
                  v479 = objc_msgSend_intValue(self->_count_DprivacydPayloadCreation_Failed, v429, v430, v431, v432);
                  v483 = objc_msgSend_numberWithInt_(v433, v480, (v479 + 1), v481, v482);
                  count_DprivacydPayloadCreation_Failed = self->_count_DprivacydPayloadCreation_Failed;
                  self->_count_DprivacydPayloadCreation_Failed = v483;

                  v489 = objc_msgSend_timestamp(v332, v485, v486, v487, v488);
                  timestamp_DprivacydDonationReceived_Succeeded = self->_timestamp_DprivacydPayloadCreation_Failed;
                  self->_timestamp_DprivacydPayloadCreation_Failed = v489;
                }

                break;
              case 5:
                v356 = objc_msgSend_event(v332, v352, v353, v354, v355);
                v361 = objc_msgSend_succeeded(v356, v357, v358, v359, v360);

                v366 = MEMORY[0x277CCABB0];
                if (v361)
                {
                  v367 = objc_msgSend_intValue(self->_count_DprivacydUpload_Succeeded, v362, v363, v364, v365);
                  v371 = objc_msgSend_numberWithInt_(v366, v368, (v367 + 1), v369, v370);
                  count_DprivacydUpload_Succeeded = self->_count_DprivacydUpload_Succeeded;
                  self->_count_DprivacydUpload_Succeeded = v371;

                  v377 = objc_msgSend_timestamp(v332, v373, v374, v375, v376);
                  timestamp_DprivacydDonationReceived_Succeeded = self->_timestamp_DprivacydUpload_Succeeded;
                  self->_timestamp_DprivacydUpload_Succeeded = v377;
                }

                else
                {
                  v501 = objc_msgSend_intValue(self->_count_DprivacydUpload_Failed, v362, v363, v364, v365);
                  v505 = objc_msgSend_numberWithInt_(v366, v502, (v501 + 1), v503, v504);
                  count_DprivacydUpload_Failed = self->_count_DprivacydUpload_Failed;
                  self->_count_DprivacydUpload_Failed = v505;

                  v511 = objc_msgSend_timestamp(v332, v507, v508, v509, v510);
                  timestamp_DprivacydDonationReceived_Succeeded = self->_timestamp_DprivacydUpload_Failed;
                  self->_timestamp_DprivacydUpload_Failed = v511;
                }

                break;
              default:
                goto LABEL_79;
            }
          }
        }

LABEL_87:

LABEL_88:
        ++v8;
      }

      while (v6 != v8);
      v534 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, v331, &v544, v550, 16);
      v6 = v534;
    }

    while (v534);
  }

  v535 = *MEMORY[0x277D85DE8];
}

- (void)iterateTransitions
{
  v86 = *MEMORY[0x277D85DE8];
  v80 = 0u;
  v81 = 0u;
  v82 = 0u;
  v83 = 0u;
  v3 = self->_bitacoraStateTransitions;
  v5 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, v4, &v80, v85, 16);
  if (v5)
  {
    v10 = v5;
    v11 = *v81;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v81 != v11)
        {
          objc_enumerationMutation(v3);
        }

        v13 = *(*(&v80 + 1) + 8 * i);
        switch(objc_msgSend_state(v13, v6, v7, v8, v9, v80))
        {
          case 0:
          case 18:
          case 19:
            continue;
          case 1:
            timedeltas_To_State_Allocated = self->_timedeltas_To_State_Allocated;
            if (!timedeltas_To_State_Allocated)
            {
              v15 = objc_alloc_init(MEMORY[0x277CBEB18]);
              v16 = self->_timedeltas_To_State_Allocated;
              self->_timedeltas_To_State_Allocated = v15;

              timedeltas_To_State_Allocated = self->_timedeltas_To_State_Allocated;
            }

            goto LABEL_63;
          case 2:
            timedeltas_To_State_Allocated = self->_timedeltas_To_State_Activated;
            if (!timedeltas_To_State_Allocated)
            {
              v54 = objc_alloc_init(MEMORY[0x277CBEB18]);
              timedeltas_To_State_Activated = self->_timedeltas_To_State_Activated;
              self->_timedeltas_To_State_Activated = v54;

              timedeltas_To_State_Allocated = self->_timedeltas_To_State_Activated;
            }

            goto LABEL_63;
          case 3:
            timedeltas_To_State_Allocated = self->_timedeltas_To_State_Deactivated;
            if (!timedeltas_To_State_Allocated)
            {
              v39 = objc_alloc_init(MEMORY[0x277CBEB18]);
              timedeltas_To_State_Deactivated = self->_timedeltas_To_State_Deactivated;
              self->_timedeltas_To_State_Deactivated = v39;

              timedeltas_To_State_Allocated = self->_timedeltas_To_State_Deactivated;
            }

            goto LABEL_63;
          case 4:
            timedeltas_To_State_Allocated = self->_timedeltas_To_State_TaskFetched;
            if (!timedeltas_To_State_Allocated)
            {
              v45 = objc_alloc_init(MEMORY[0x277CBEB18]);
              timedeltas_To_State_TaskFetched = self->_timedeltas_To_State_TaskFetched;
              self->_timedeltas_To_State_TaskFetched = v45;

              timedeltas_To_State_Allocated = self->_timedeltas_To_State_TaskFetched;
            }

            goto LABEL_63;
          case 5:
            timedeltas_To_State_Allocated = self->_timedeltas_To_State_TaskScheduled;
            if (!timedeltas_To_State_Allocated)
            {
              v47 = objc_alloc_init(MEMORY[0x277CBEB18]);
              timedeltas_To_State_TaskScheduled = self->_timedeltas_To_State_TaskScheduled;
              self->_timedeltas_To_State_TaskScheduled = v47;

              timedeltas_To_State_Allocated = self->_timedeltas_To_State_TaskScheduled;
            }

            goto LABEL_63;
          case 6:
            timedeltas_To_State_Allocated = self->_timedeltas_To_State_TaskCompleted;
            if (!timedeltas_To_State_Allocated)
            {
              v58 = objc_alloc_init(MEMORY[0x277CBEB18]);
              timedeltas_To_State_TaskCompleted = self->_timedeltas_To_State_TaskCompleted;
              self->_timedeltas_To_State_TaskCompleted = v58;

              timedeltas_To_State_Allocated = self->_timedeltas_To_State_TaskCompleted;
            }

            goto LABEL_63;
          case 7:
            timedeltas_To_State_Allocated = self->_timedeltas_To_State_PerformTask;
            if (!timedeltas_To_State_Allocated)
            {
              v56 = objc_alloc_init(MEMORY[0x277CBEB18]);
              timedeltas_To_State_PerformTask = self->_timedeltas_To_State_PerformTask;
              self->_timedeltas_To_State_PerformTask = v56;

              timedeltas_To_State_Allocated = self->_timedeltas_To_State_PerformTask;
            }

            goto LABEL_63;
          case 8:
            timedeltas_To_State_Allocated = self->_timedeltas_To_State_Unexpeted;
            if (!timedeltas_To_State_Allocated)
            {
              v27 = objc_alloc_init(MEMORY[0x277CBEB18]);
              timedeltas_To_State_Unexpeted = self->_timedeltas_To_State_Unexpeted;
              self->_timedeltas_To_State_Unexpeted = v27;

              timedeltas_To_State_Allocated = self->_timedeltas_To_State_Unexpeted;
            }

            goto LABEL_63;
          case 9:
            timedeltas_To_State_Allocated = self->_timedeltas_To_State_AllocatedFailed;
            if (!timedeltas_To_State_Allocated)
            {
              v41 = objc_alloc_init(MEMORY[0x277CBEB18]);
              timedeltas_To_State_AllocatedFailed = self->_timedeltas_To_State_AllocatedFailed;
              self->_timedeltas_To_State_AllocatedFailed = v41;

              timedeltas_To_State_Allocated = self->_timedeltas_To_State_AllocatedFailed;
            }

            goto LABEL_63;
          case 10:
            timedeltas_To_State_Allocated = self->_timedeltas_To_State_ActivatedFailed;
            if (!timedeltas_To_State_Allocated)
            {
              v33 = objc_alloc_init(MEMORY[0x277CBEB18]);
              timedeltas_To_State_ActivatedFailed = self->_timedeltas_To_State_ActivatedFailed;
              self->_timedeltas_To_State_ActivatedFailed = v33;

              timedeltas_To_State_Allocated = self->_timedeltas_To_State_ActivatedFailed;
            }

            goto LABEL_63;
          case 11:
            timedeltas_To_State_Allocated = self->_timedeltas_To_State_DeactivatedFailed;
            if (!timedeltas_To_State_Allocated)
            {
              v21 = objc_alloc_init(MEMORY[0x277CBEB18]);
              timedeltas_To_State_DeactivatedFailed = self->_timedeltas_To_State_DeactivatedFailed;
              self->_timedeltas_To_State_DeactivatedFailed = v21;

              timedeltas_To_State_Allocated = self->_timedeltas_To_State_DeactivatedFailed;
            }

            goto LABEL_63;
          case 12:
            timedeltas_To_State_Allocated = self->_timedeltas_To_State_TaskFetchedFailed;
            if (!timedeltas_To_State_Allocated)
            {
              v49 = objc_alloc_init(MEMORY[0x277CBEB18]);
              timedeltas_To_State_TaskFetchedFailed = self->_timedeltas_To_State_TaskFetchedFailed;
              self->_timedeltas_To_State_TaskFetchedFailed = v49;

              timedeltas_To_State_Allocated = self->_timedeltas_To_State_TaskFetchedFailed;
            }

            goto LABEL_63;
          case 13:
            timedeltas_To_State_Allocated = self->_timedeltas_To_State_TaskScheduledFailed;
            if (!timedeltas_To_State_Allocated)
            {
              v51 = objc_alloc_init(MEMORY[0x277CBEB18]);
              timedeltas_To_State_TaskScheduledFailed = self->_timedeltas_To_State_TaskScheduledFailed;
              self->_timedeltas_To_State_TaskScheduledFailed = v51;

              timedeltas_To_State_Allocated = self->_timedeltas_To_State_TaskScheduledFailed;
            }

            goto LABEL_63;
          case 14:
            timedeltas_To_State_Allocated = self->_timedeltas_To_State_TaskCompletedFailed;
            if (!timedeltas_To_State_Allocated)
            {
              v62 = objc_alloc_init(MEMORY[0x277CBEB18]);
              timedeltas_To_State_TaskCompletedFailed = self->_timedeltas_To_State_TaskCompletedFailed;
              self->_timedeltas_To_State_TaskCompletedFailed = v62;

              timedeltas_To_State_Allocated = self->_timedeltas_To_State_TaskCompletedFailed;
            }

            goto LABEL_63;
          case 15:
            timedeltas_To_State_Allocated = self->_timedeltas_To_State_PerformTaskFailed;
            if (!timedeltas_To_State_Allocated)
            {
              v60 = objc_alloc_init(MEMORY[0x277CBEB18]);
              timedeltas_To_State_PerformTaskFailed = self->_timedeltas_To_State_PerformTaskFailed;
              self->_timedeltas_To_State_PerformTaskFailed = v60;

              timedeltas_To_State_Allocated = self->_timedeltas_To_State_PerformTaskFailed;
            }

            goto LABEL_63;
          case 16:
            timedeltas_To_State_Allocated = self->_timedeltas_To_State_PluginStop;
            if (!timedeltas_To_State_Allocated)
            {
              v17 = objc_alloc_init(MEMORY[0x277CBEB18]);
              timedeltas_To_State_PluginStop = self->_timedeltas_To_State_PluginStop;
              self->_timedeltas_To_State_PluginStop = v17;

              timedeltas_To_State_Allocated = self->_timedeltas_To_State_PluginStop;
            }

            goto LABEL_63;
          case 17:
            timedeltas_To_State_Allocated = self->_timedeltas_To_State_PluginStopFailed;
            if (!timedeltas_To_State_Allocated)
            {
              v35 = objc_alloc_init(MEMORY[0x277CBEB18]);
              timedeltas_To_State_PluginStopFailed = self->_timedeltas_To_State_PluginStopFailed;
              self->_timedeltas_To_State_PluginStopFailed = v35;

              timedeltas_To_State_Allocated = self->_timedeltas_To_State_PluginStopFailed;
            }

            goto LABEL_63;
          case 21:
            timedeltas_To_State_Allocated = self->_timedeltas_To_State_DprivacydDonationReceived;
            if (!timedeltas_To_State_Allocated)
            {
              v64 = objc_alloc_init(MEMORY[0x277CBEB18]);
              timedeltas_To_State_DprivacydDonationReceived = self->_timedeltas_To_State_DprivacydDonationReceived;
              self->_timedeltas_To_State_DprivacydDonationReceived = v64;

              timedeltas_To_State_Allocated = self->_timedeltas_To_State_DprivacydDonationReceived;
            }

            goto LABEL_63;
          case 22:
            timedeltas_To_State_Allocated = self->_timedeltas_To_State_DprivacydRandomization;
            if (!timedeltas_To_State_Allocated)
            {
              v19 = objc_alloc_init(MEMORY[0x277CBEB18]);
              timedeltas_To_State_DprivacydRandomization = self->_timedeltas_To_State_DprivacydRandomization;
              self->_timedeltas_To_State_DprivacydRandomization = v19;

              timedeltas_To_State_Allocated = self->_timedeltas_To_State_DprivacydRandomization;
            }

            goto LABEL_63;
          case 23:
            timedeltas_To_State_Allocated = self->_timedeltas_To_State_DprivacydBudgetCheck;
            if (!timedeltas_To_State_Allocated)
            {
              v31 = objc_alloc_init(MEMORY[0x277CBEB18]);
              timedeltas_To_State_DprivacydBudgetCheck = self->_timedeltas_To_State_DprivacydBudgetCheck;
              self->_timedeltas_To_State_DprivacydBudgetCheck = v31;

              timedeltas_To_State_Allocated = self->_timedeltas_To_State_DprivacydBudgetCheck;
            }

            goto LABEL_63;
          case 24:
            timedeltas_To_State_Allocated = self->_timedeltas_To_State_DprivacydPayloadCreation;
            if (!timedeltas_To_State_Allocated)
            {
              v25 = objc_alloc_init(MEMORY[0x277CBEB18]);
              timedeltas_To_State_DprivacydPayloadCreation = self->_timedeltas_To_State_DprivacydPayloadCreation;
              self->_timedeltas_To_State_DprivacydPayloadCreation = v25;

              timedeltas_To_State_Allocated = self->_timedeltas_To_State_DprivacydPayloadCreation;
            }

            goto LABEL_63;
          case 25:
            timedeltas_To_State_Allocated = self->_timedeltas_To_State_DprivacydUpload;
            if (!timedeltas_To_State_Allocated)
            {
              v43 = objc_alloc_init(MEMORY[0x277CBEB18]);
              timedeltas_To_State_DprivacydUpload = self->_timedeltas_To_State_DprivacydUpload;
              self->_timedeltas_To_State_DprivacydUpload = v43;

              timedeltas_To_State_Allocated = self->_timedeltas_To_State_DprivacydUpload;
            }

            goto LABEL_63;
          case 26:
            timedeltas_To_State_Allocated = self->_timedeltas_To_State_DprivacydDonationReceivedFailed;
            if (!timedeltas_To_State_Allocated)
            {
              v23 = objc_alloc_init(MEMORY[0x277CBEB18]);
              timedeltas_To_State_DprivacydDonationReceivedFailed = self->_timedeltas_To_State_DprivacydDonationReceivedFailed;
              self->_timedeltas_To_State_DprivacydDonationReceivedFailed = v23;

              timedeltas_To_State_Allocated = self->_timedeltas_To_State_DprivacydDonationReceivedFailed;
            }

            goto LABEL_63;
          case 27:
            timedeltas_To_State_Allocated = self->_timedeltas_To_State_DprivacydRandomizationFailed;
            if (!timedeltas_To_State_Allocated)
            {
              v68 = objc_alloc_init(MEMORY[0x277CBEB18]);
              timedeltas_To_State_DprivacydRandomizationFailed = self->_timedeltas_To_State_DprivacydRandomizationFailed;
              self->_timedeltas_To_State_DprivacydRandomizationFailed = v68;

              timedeltas_To_State_Allocated = self->_timedeltas_To_State_DprivacydRandomizationFailed;
            }

            goto LABEL_63;
          case 28:
            timedeltas_To_State_Allocated = self->_timedeltas_To_State_DprivacydBudgetCheckFailed;
            if (!timedeltas_To_State_Allocated)
            {
              v66 = objc_alloc_init(MEMORY[0x277CBEB18]);
              timedeltas_To_State_DprivacydBudgetCheckFailed = self->_timedeltas_To_State_DprivacydBudgetCheckFailed;
              self->_timedeltas_To_State_DprivacydBudgetCheckFailed = v66;

              timedeltas_To_State_Allocated = self->_timedeltas_To_State_DprivacydBudgetCheckFailed;
            }

            goto LABEL_63;
          case 29:
            timedeltas_To_State_Allocated = self->_timedeltas_To_State_DprivacydPayloadCreationFailed;
            if (!timedeltas_To_State_Allocated)
            {
              v29 = objc_alloc_init(MEMORY[0x277CBEB18]);
              timedeltas_To_State_DprivacydPayloadCreationFailed = self->_timedeltas_To_State_DprivacydPayloadCreationFailed;
              self->_timedeltas_To_State_DprivacydPayloadCreationFailed = v29;

              timedeltas_To_State_Allocated = self->_timedeltas_To_State_DprivacydPayloadCreationFailed;
            }

            goto LABEL_63;
          case 30:
            timedeltas_To_State_Allocated = self->_timedeltas_To_State_DprivacydUploadFailed;
            if (!timedeltas_To_State_Allocated)
            {
              v37 = objc_alloc_init(MEMORY[0x277CBEB18]);
              timedeltas_To_State_DprivacydUploadFailed = self->_timedeltas_To_State_DprivacydUploadFailed;
              self->_timedeltas_To_State_DprivacydUploadFailed = v37;

              timedeltas_To_State_Allocated = self->_timedeltas_To_State_DprivacydUploadFailed;
            }

LABEL_63:
            v70 = MEMORY[0x277CCABB0];
            objc_msgSend_timedelta(v13, v6, v7, v8, v9);
            v75 = objc_msgSend_numberWithDouble_(v70, v71, v72, v73, v74);
            objc_msgSend_addObject_(timedeltas_To_State_Allocated, v76, v75, v77, v78);

            break;
          default:
            v53 = LBFLogContextBitacoraStateInfo;
            if (os_log_type_enabled(LBFLogContextBitacoraStateInfo, OS_LOG_TYPE_ERROR))
            {
              sub_255F0AE8C(v84, v53);
            }

            break;
        }
      }

      v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, v6, &v80, v85, 16);
    }

    while (v10);
  }

  v79 = *MEMORY[0x277D85DE8];
}

- (id)getDictionaryRepresentation
{
  v444[30] = *MEMORY[0x277D85DE8];
  v443[0] = &unk_286801060;
  v443[1] = &unk_286801078;
  v444[0] = @"state_Unknown";
  v444[1] = @"state_Allocated";
  v443[2] = &unk_286801090;
  v443[3] = &unk_2868010A8;
  v444[2] = @"state_Activated";
  v444[3] = @"state_Deativated";
  v443[4] = &unk_2868010C0;
  v443[5] = &unk_2868010D8;
  v444[4] = @"state_TaskFetched";
  v444[5] = @"state_TaskScheduled";
  v443[6] = &unk_2868010F0;
  v443[7] = &unk_286801108;
  v444[6] = @"state_TaskCompleted";
  v444[7] = @"state_PerformTaskSucceeded";
  v443[8] = &unk_286801120;
  v443[9] = &unk_286801138;
  v444[8] = @"state_Unexpected";
  v444[9] = @"state_AllocateFailed";
  v443[10] = &unk_286801150;
  v443[11] = &unk_286801168;
  v444[10] = @"state_ActivateFailed";
  v444[11] = @"state_DeativateFailed";
  v443[12] = &unk_286801180;
  v443[13] = &unk_286801198;
  v444[12] = @"state_TaskFetcheFailed";
  v444[13] = @"state_TaskScheduleFailed";
  v443[14] = &unk_2868011B0;
  v443[15] = &unk_2868011C8;
  v444[14] = @"state_TaskCompleteFailed";
  v444[15] = @"state_PerformTaskFailed";
  v443[16] = &unk_2868011E0;
  v443[17] = &unk_2868011F8;
  v444[16] = @"state_PluginStop";
  v444[17] = @"state_PluginStopFailed";
  v443[18] = &unk_286801210;
  v443[19] = &unk_286801228;
  v444[18] = @"state_AllocatedIdle";
  v444[19] = @"state_ActivatedIdle";
  v443[20] = &unk_286801240;
  v443[21] = &unk_286801258;
  v444[20] = @"state_DonationReceived";
  v444[21] = @"state_Randomization";
  v443[22] = &unk_286801270;
  v443[23] = &unk_286801288;
  v444[22] = @"state_BudgetCheck";
  v444[23] = @"state_PayloadCreation";
  v443[24] = &unk_2868012A0;
  v443[25] = &unk_2868012B8;
  v444[24] = @"state_Upload";
  v444[25] = @"state_DonationReceivedFailed";
  v443[26] = &unk_2868012D0;
  v443[27] = &unk_2868012E8;
  v444[26] = @"state_RandomizationFailed";
  v444[27] = @"state_BudgetCheckFailed";
  v443[28] = &unk_286801300;
  v443[29] = &unk_286801318;
  v444[28] = @"state_PayloadCreationFailed";
  v444[29] = @"state_UploadFailed";
  v3 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], a2, v444, v443, 30);
  latestState = self->_latestState;
  v440 = v3;
  if (latestState >= 0x1F)
  {
    v10 = LBFLogContextBitacoraStateInfo;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_255F0AEE8(&self->_latestState, v10);
    }

    v9 = &unk_286801120;
  }

  else
  {
    v9 = qword_279813A48[latestState];
  }

  v441[0] = @"contextId";
  v11 = objc_msgSend_UUIDString(self->_contextId, v4, v5, v6, v7);
  count_Activated_Succeeded = self->_count_Activated_Succeeded;
  if (!count_Activated_Succeeded)
  {
    count_Activated_Succeeded = &unk_286801060;
  }

  v424 = v11;
  v442[0] = v11;
  v442[1] = count_Activated_Succeeded;
  v441[1] = @"count_Activated";
  v441[2] = @"count_Allocated";
  isActivated = self->_isActivated;
  count_Allocated_Succeeded = self->_count_Allocated_Succeeded;
  if (!count_Allocated_Succeeded)
  {
    count_Allocated_Succeeded = &unk_286801060;
  }

  count_Deactivated_Succeeded = self->_count_Deactivated_Succeeded;
  if (!count_Deactivated_Succeeded)
  {
    count_Deactivated_Succeeded = &unk_286801060;
  }

  v442[2] = count_Allocated_Succeeded;
  v442[3] = count_Deactivated_Succeeded;
  v441[3] = @"count_Deactivated";
  v441[4] = @"count_PerformTask_Failed";
  count_PerformTask_Succeeded = self->_count_PerformTask_Succeeded;
  count_PerformTask_Failed = self->_count_PerformTask_Failed;
  if (!count_PerformTask_Failed)
  {
    count_PerformTask_Failed = &unk_286801060;
  }

  if (!count_PerformTask_Succeeded)
  {
    count_PerformTask_Succeeded = &unk_286801060;
  }

  v442[4] = count_PerformTask_Failed;
  v442[5] = count_PerformTask_Succeeded;
  v441[5] = @"count_PerformTask_Succeeded";
  v441[6] = @"count_Stop_Failed";
  count_Stop_Succeeded = self->_count_Stop_Succeeded;
  count_Stop_Failed = self->_count_Stop_Failed;
  if (!count_Stop_Failed)
  {
    count_Stop_Failed = &unk_286801060;
  }

  if (!count_Stop_Succeeded)
  {
    count_Stop_Succeeded = &unk_286801060;
  }

  v442[6] = count_Stop_Failed;
  v442[7] = count_Stop_Succeeded;
  v441[7] = @"count_Stop_Succeeded";
  v441[8] = @"count_TaskCompleted_Failed";
  count_TaskCompleted_Succeeded = self->_count_TaskCompleted_Succeeded;
  count_TaskCompleted_Failed = self->_count_TaskCompleted_Failed;
  if (!count_TaskCompleted_Failed)
  {
    count_TaskCompleted_Failed = &unk_286801060;
  }

  if (!count_TaskCompleted_Succeeded)
  {
    count_TaskCompleted_Succeeded = &unk_286801060;
  }

  v442[8] = count_TaskCompleted_Failed;
  v442[9] = count_TaskCompleted_Succeeded;
  v441[9] = @"count_TaskCompleted_Succeeded";
  v441[10] = @"count_TaskFetched_Failed";
  count_TaskFetched_Succeeded = self->_count_TaskFetched_Succeeded;
  count_TaskFetched_Failed = self->_count_TaskFetched_Failed;
  if (!count_TaskFetched_Failed)
  {
    count_TaskFetched_Failed = &unk_286801060;
  }

  if (!count_TaskFetched_Succeeded)
  {
    count_TaskFetched_Succeeded = &unk_286801060;
  }

  v442[10] = count_TaskFetched_Failed;
  v442[11] = count_TaskFetched_Succeeded;
  v441[11] = @"count_TaskFetched_Succeeded";
  v441[12] = @"count_TaskScheduled_Failed";
  count_TaskScheduled_Succeeded = self->_count_TaskScheduled_Succeeded;
  count_TaskScheduled_Failed = self->_count_TaskScheduled_Failed;
  if (!count_TaskScheduled_Failed)
  {
    count_TaskScheduled_Failed = &unk_286801060;
  }

  if (!count_TaskScheduled_Succeeded)
  {
    count_TaskScheduled_Succeeded = &unk_286801060;
  }

  v442[12] = count_TaskScheduled_Failed;
  v442[13] = count_TaskScheduled_Succeeded;
  v441[13] = @"count_TaskScheduled_Succeeded";
  v441[14] = @"count_DprivacydDonationReceived_Failed";
  count_DprivacydDonationReceived_Succeeded = self->_count_DprivacydDonationReceived_Succeeded;
  count_DprivacydDonationReceived_Failed = self->_count_DprivacydDonationReceived_Failed;
  if (!count_DprivacydDonationReceived_Failed)
  {
    count_DprivacydDonationReceived_Failed = &unk_286801060;
  }

  if (!count_DprivacydDonationReceived_Succeeded)
  {
    count_DprivacydDonationReceived_Succeeded = &unk_286801060;
  }

  v442[14] = count_DprivacydDonationReceived_Failed;
  v442[15] = count_DprivacydDonationReceived_Succeeded;
  v441[15] = @"count_DprivacydDonationReceived_Succeeded";
  v441[16] = @"count_DprivacydRandomization_Failed";
  count_DprivacydRandomization_Succeeded = self->_count_DprivacydRandomization_Succeeded;
  count_DprivacydRandomization_Failed = self->_count_DprivacydRandomization_Failed;
  if (!count_DprivacydRandomization_Failed)
  {
    count_DprivacydRandomization_Failed = &unk_286801060;
  }

  if (!count_DprivacydRandomization_Succeeded)
  {
    count_DprivacydRandomization_Succeeded = &unk_286801060;
  }

  v442[16] = count_DprivacydRandomization_Failed;
  v442[17] = count_DprivacydRandomization_Succeeded;
  v441[17] = @"count_DprivacydRandomization_Succeeded";
  v441[18] = @"count_DprivacydBudgetCheck_Failed";
  count_DprivacydBudgetCheck_Succeeded = self->_count_DprivacydBudgetCheck_Succeeded;
  count_DprivacydBudgetCheck_Failed = self->_count_DprivacydBudgetCheck_Failed;
  if (!count_DprivacydBudgetCheck_Failed)
  {
    count_DprivacydBudgetCheck_Failed = &unk_286801060;
  }

  if (!count_DprivacydBudgetCheck_Succeeded)
  {
    count_DprivacydBudgetCheck_Succeeded = &unk_286801060;
  }

  v442[18] = count_DprivacydBudgetCheck_Failed;
  v442[19] = count_DprivacydBudgetCheck_Succeeded;
  v441[19] = @"count_DprivacydBudgetCheck_Succeeded";
  v441[20] = @"count_DprivacydPayloadCreation_Failed";
  count_DprivacydPayloadCreation_Succeeded = self->_count_DprivacydPayloadCreation_Succeeded;
  count_DprivacydPayloadCreation_Failed = self->_count_DprivacydPayloadCreation_Failed;
  if (!count_DprivacydPayloadCreation_Failed)
  {
    count_DprivacydPayloadCreation_Failed = &unk_286801060;
  }

  if (!count_DprivacydPayloadCreation_Succeeded)
  {
    count_DprivacydPayloadCreation_Succeeded = &unk_286801060;
  }

  v442[20] = count_DprivacydPayloadCreation_Failed;
  v442[21] = count_DprivacydPayloadCreation_Succeeded;
  v441[21] = @"count_DprivacydPayloadCreation_Succeeded";
  v441[22] = @"count_DprivacydUpload_Failed";
  count_DprivacydUpload_Succeeded = self->_count_DprivacydUpload_Succeeded;
  count_DprivacydUpload_Failed = self->_count_DprivacydUpload_Failed;
  if (!count_DprivacydUpload_Failed)
  {
    count_DprivacydUpload_Failed = &unk_286801060;
  }

  if (!count_DprivacydUpload_Succeeded)
  {
    count_DprivacydUpload_Succeeded = &unk_286801060;
  }

  v442[22] = count_DprivacydUpload_Failed;
  v442[23] = count_DprivacydUpload_Succeeded;
  v441[23] = @"count_DprivacydUpload_Succeeded";
  v441[24] = @"isActivated";
  v40 = isActivated;
  v423 = isActivated;
  if (!isActivated)
  {
    v40 = objc_msgSend_null(MEMORY[0x277CBEB68], v12, v13, v14, v15);
  }

  v380 = v40;
  v442[24] = v40;
  v441[25] = @"isAllocated";
  isAllocated = self->_isAllocated;
  v422 = isAllocated;
  if (!isAllocated)
  {
    isAllocated = objc_msgSend_null(MEMORY[0x277CBEB68], v12, v13, v14, v15);
  }

  v379 = isAllocated;
  v442[25] = isAllocated;
  v441[26] = @"isActivated_implicit";
  v421 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v12, self->_isActivated_implicit, v14, v15);
  v442[26] = v421;
  v441[27] = @"isAllocated_implicit";
  v420 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v42, self->_isAllocated_implicit, v43, v44);
  v442[27] = v420;
  v441[28] = @"maxTimedelta_To_State_Activated";
  v49 = objc_msgSend_maxTimedelta_To_State_Activated(self, v45, v46, v47, v48);
  v54 = v49;
  if (!v49)
  {
    v49 = objc_msgSend_null(MEMORY[0x277CBEB68], v50, v51, v52, v53);
  }

  v378 = v49;
  v442[28] = v49;
  v441[29] = @"maxTimedelta_To_State_ActivatedFailed";
  v55 = objc_msgSend_maxTimedelta_To_State_ActivatedFailed(self, v50, v51, v52, v53);
  v60 = v55;
  if (!v55)
  {
    v55 = objc_msgSend_null(MEMORY[0x277CBEB68], v56, v57, v58, v59);
  }

  v377 = v55;
  v442[29] = v55;
  v441[30] = @"maxTimedelta_To_State_Allocated";
  v65 = objc_msgSend_maxTimedelta_To_State_Allocated(self, v56, v57, v58, v59);
  v417 = v65;
  if (!v65)
  {
    v65 = objc_msgSend_null(MEMORY[0x277CBEB68], v61, v62, v63, v64);
  }

  v376 = v65;
  v442[30] = v65;
  v441[31] = @"maxTimedelta_To_State_AllocatedFailed";
  v70 = objc_msgSend_maxTimedelta_To_State_AllocatedFailed(self, v61, v62, v63, v64);
  v416 = v70;
  if (!v70)
  {
    v70 = objc_msgSend_null(MEMORY[0x277CBEB68], v66, v67, v68, v69);
  }

  v375 = v70;
  v442[31] = v70;
  v441[32] = @"maxTimedelta_To_State_Deativated";
  v71 = objc_msgSend_maxTimedelta_To_State_Deativated(self, v66, v67, v68, v69);
  v76 = v71;
  if (!v71)
  {
    v71 = objc_msgSend_null(MEMORY[0x277CBEB68], v72, v73, v74, v75);
  }

  v374 = v71;
  v442[32] = v71;
  v441[33] = @"maxTimedelta_To_State_DeativatedFailed";
  v77 = objc_msgSend_maxTimedelta_To_State_DeativatedFailed(self, v72, v73, v74, v75);
  v82 = v77;
  if (!v77)
  {
    v77 = objc_msgSend_null(MEMORY[0x277CBEB68], v78, v79, v80, v81);
  }

  v373 = v77;
  v442[33] = v77;
  v441[34] = @"maxTimedelta_To_State_PerformTaskFailed";
  v83 = objc_msgSend_maxTimedelta_To_State_PerformTaskFailed(self, v78, v79, v80, v81);
  v88 = v83;
  if (!v83)
  {
    v83 = objc_msgSend_null(MEMORY[0x277CBEB68], v84, v85, v86, v87);
  }

  v372 = v83;
  v442[34] = v83;
  v441[35] = @"maxTimedelta_To_State_PerformTaskSucceeded";
  v89 = objc_msgSend_maxTimedelta_To_State_PerformTask(self, v84, v85, v86, v87);
  v94 = v89;
  if (!v89)
  {
    v89 = objc_msgSend_null(MEMORY[0x277CBEB68], v90, v91, v92, v93);
  }

  v371 = v89;
  v442[35] = v89;
  v441[36] = @"maxTimedelta_To_State_TaskCompleted";
  v95 = objc_msgSend_maxTimedelta_To_State_TaskCompleted(self, v90, v91, v92, v93);
  v100 = v95;
  if (!v95)
  {
    v95 = objc_msgSend_null(MEMORY[0x277CBEB68], v96, v97, v98, v99);
  }

  v370 = v95;
  v442[36] = v95;
  v441[37] = @"maxTimedelta_To_State_TaskCompletedFailed";
  v105 = objc_msgSend_maxTimedelta_To_State_TaskCompletedFailed(self, v96, v97, v98, v99);
  v439 = v105;
  if (!v105)
  {
    v105 = objc_msgSend_null(MEMORY[0x277CBEB68], v101, v102, v103, v104);
  }

  v369 = v105;
  v442[37] = v105;
  v441[38] = @"maxTimedelta_To_State_TaskFetched";
  v110 = objc_msgSend_maxTimedelta_To_State_TaskFetched(self, v101, v102, v103, v104);
  v438 = v110;
  if (!v110)
  {
    v110 = objc_msgSend_null(MEMORY[0x277CBEB68], v106, v107, v108, v109);
  }

  v368 = v110;
  v442[38] = v110;
  v441[39] = @"maxTimedelta_To_State_TaskFetchedFailed";
  v115 = objc_msgSend_maxTimedelta_To_State_TaskFetchedFailed(self, v106, v107, v108, v109);
  v437 = v115;
  if (!v115)
  {
    v115 = objc_msgSend_null(MEMORY[0x277CBEB68], v111, v112, v113, v114);
  }

  v367 = v115;
  v442[39] = v115;
  v441[40] = @"maxTimedelta_To_State_TaskScheduled";
  v120 = objc_msgSend_maxTimedelta_To_State_TaskScheduled(self, v111, v112, v113, v114);
  v436 = v120;
  if (!v120)
  {
    v120 = objc_msgSend_null(MEMORY[0x277CBEB68], v116, v117, v118, v119);
  }

  v366 = v120;
  v442[40] = v120;
  v441[41] = @"maxTimedelta_To_State_TaskScheduledFailed";
  v125 = objc_msgSend_maxTimedelta_To_State_TaskScheduledFailed(self, v116, v117, v118, v119);
  v435 = v125;
  if (!v125)
  {
    v125 = objc_msgSend_null(MEMORY[0x277CBEB68], v121, v122, v123, v124);
  }

  v365 = v125;
  v442[41] = v125;
  v441[42] = @"maxTimedelta_To_State_DprivacydDonationReceived";
  v130 = objc_msgSend_maxTimedelta_To_State_DprivacydDonationReceived(self, v121, v122, v123, v124);
  v434 = v130;
  if (!v130)
  {
    v130 = objc_msgSend_null(MEMORY[0x277CBEB68], v126, v127, v128, v129);
  }

  v364 = v130;
  v442[42] = v130;
  v441[43] = @"maxTimedelta_To_State_DprivacydDonationReceivedFailed";
  v135 = objc_msgSend_maxTimedelta_To_State_DprivacydDonationReceivedFailed(self, v126, v127, v128, v129);
  v433 = v135;
  if (!v135)
  {
    v135 = objc_msgSend_null(MEMORY[0x277CBEB68], v131, v132, v133, v134);
  }

  v363 = v135;
  v442[43] = v135;
  v441[44] = @"maxTimedelta_To_State_DprivacydRandomization";
  v140 = objc_msgSend_maxTimedelta_To_State_DprivacydRandomization(self, v131, v132, v133, v134);
  v432 = v140;
  if (!v140)
  {
    v140 = objc_msgSend_null(MEMORY[0x277CBEB68], v136, v137, v138, v139);
  }

  v362 = v140;
  v442[44] = v140;
  v441[45] = @"maxTimedelta_To_State_DprivacydRandomizationFailed";
  v145 = objc_msgSend_maxTimedelta_To_State_DprivacydRandomizationFailed(self, v136, v137, v138, v139);
  v431 = v145;
  if (!v145)
  {
    v145 = objc_msgSend_null(MEMORY[0x277CBEB68], v141, v142, v143, v144);
  }

  v361 = v145;
  v442[45] = v145;
  v441[46] = @"maxTimedelta_To_State_DprivacydBudgetCheck";
  v150 = objc_msgSend_maxTimedelta_To_State_DprivacydBudgetCheck(self, v141, v142, v143, v144);
  v430 = v150;
  if (!v150)
  {
    v150 = objc_msgSend_null(MEMORY[0x277CBEB68], v146, v147, v148, v149);
  }

  v360 = v150;
  v442[46] = v150;
  v441[47] = @"maxTimedelta_To_State_DprivacydBudgetCheckFailed";
  v155 = objc_msgSend_maxTimedelta_To_State_DprivacydBudgetCheckFailed(self, v146, v147, v148, v149);
  v429 = v155;
  if (!v155)
  {
    v155 = objc_msgSend_null(MEMORY[0x277CBEB68], v151, v152, v153, v154);
  }

  v359 = v155;
  v442[47] = v155;
  v441[48] = @"maxTimedelta_To_State_DprivacydPayloadCreation";
  v160 = objc_msgSend_maxTimedelta_To_State_DprivacydPayloadCreation(self, v151, v152, v153, v154);
  v428 = v160;
  if (!v160)
  {
    v160 = objc_msgSend_null(MEMORY[0x277CBEB68], v156, v157, v158, v159);
  }

  v358 = v160;
  v442[48] = v160;
  v441[49] = @"maxTimedelta_To_State_DprivacydPayloadCreationFailed";
  v165 = objc_msgSend_maxTimedelta_To_State_DprivacydPayloadCreationFailed(self, v156, v157, v158, v159);
  v427 = v165;
  if (!v165)
  {
    v165 = objc_msgSend_null(MEMORY[0x277CBEB68], v161, v162, v163, v164);
  }

  v357 = v165;
  v442[49] = v165;
  v441[50] = @"maxTimedelta_To_State_DprivacydUpload";
  v170 = objc_msgSend_maxTimedelta_To_State_DprivacydUpload(self, v161, v162, v163, v164);
  v426 = v170;
  if (!v170)
  {
    v170 = objc_msgSend_null(MEMORY[0x277CBEB68], v166, v167, v168, v169);
  }

  v356 = v170;
  v442[50] = v170;
  v441[51] = @"maxTimedelta_To_State_DprivacydUploadFailed";
  v175 = objc_msgSend_maxTimedelta_To_State_DprivacydUploadFailed(self, v166, v167, v168, v169);
  v425 = v175;
  if (!v175)
  {
    v175 = objc_msgSend_null(MEMORY[0x277CBEB68], v171, v172, v173, v174);
  }

  v355 = v175;
  v442[51] = v175;
  v441[52] = @"maxTimedelta_To_State_Unexpeted";
  v180 = objc_msgSend_maxTimedelta_To_State_Unexpeted(self, v171, v172, v173, v174);
  v410 = v180;
  if (!v180)
  {
    v180 = objc_msgSend_null(MEMORY[0x277CBEB68], v176, v177, v178, v179);
  }

  v354 = v180;
  v442[52] = v180;
  v442[53] = v9;
  v441[53] = @"state";
  v441[54] = @"stateString";
  v181 = objc_msgSend_objectForKey_(v440, v176, v9, v178, v179);
  stateId = self->_stateId;
  v409 = v181;
  v442[54] = v181;
  v442[55] = stateId;
  v441[55] = @"stateID";
  v441[56] = @"timestamp";
  v408 = objc_msgSend_dateToTimestampStringInMSec_(LBFUtils, v183, self->_bucketEndTime, v184, v185);
  v442[56] = v408;
  v441[57] = @"timestamp_Activated";
  timestamp_Activated_Succeeded = self->_timestamp_Activated_Succeeded;
  if (timestamp_Activated_Succeeded)
  {
    objc_msgSend_dateToTimestampStringInMSec_(LBFUtils, v186, timestamp_Activated_Succeeded, v187, v188);
  }

  else
  {
    objc_msgSend_null(MEMORY[0x277CBEB68], v186, 0, v187, v188);
  }
  v407 = ;
  v442[57] = v407;
  v441[58] = @"timestamp_Allocated";
  timestamp_Allocated_Succeeded = self->_timestamp_Allocated_Succeeded;
  if (timestamp_Allocated_Succeeded)
  {
    objc_msgSend_dateToTimestampStringInMSec_(LBFUtils, v190, timestamp_Allocated_Succeeded, v191, v192);
  }

  else
  {
    objc_msgSend_null(MEMORY[0x277CBEB68], v190, 0, v191, v192);
  }
  v406 = ;
  v442[58] = v406;
  v441[59] = @"timestamp_Deactivated";
  timestamp_Deactivated_Succeeded = self->_timestamp_Deactivated_Succeeded;
  if (timestamp_Deactivated_Succeeded)
  {
    objc_msgSend_dateToTimestampStringInMSec_(LBFUtils, v194, timestamp_Deactivated_Succeeded, v195, v196);
  }

  else
  {
    objc_msgSend_null(MEMORY[0x277CBEB68], v194, 0, v195, v196);
  }
  v405 = ;
  v442[59] = v405;
  v441[60] = @"timestamp_PerformTask_Failed";
  timestamp_PerformTask_Failed = self->_timestamp_PerformTask_Failed;
  if (timestamp_PerformTask_Failed)
  {
    objc_msgSend_dateToTimestampStringInMSec_(LBFUtils, v198, timestamp_PerformTask_Failed, v199, v200);
  }

  else
  {
    objc_msgSend_null(MEMORY[0x277CBEB68], v198, 0, v199, v200);
  }
  v404 = ;
  v442[60] = v404;
  v441[61] = @"timestamp_PerformTask_Succeeded";
  timestamp_PerformTask_Succeeded = self->_timestamp_PerformTask_Succeeded;
  if (timestamp_PerformTask_Succeeded)
  {
    objc_msgSend_dateToTimestampStringInMSec_(LBFUtils, v202, timestamp_PerformTask_Succeeded, v203, v204);
  }

  else
  {
    objc_msgSend_null(MEMORY[0x277CBEB68], v202, 0, v203, v204);
  }
  v403 = ;
  v442[61] = v403;
  v441[62] = @"timestamp_Stop_Failed";
  timestamp_Stop_Failed = self->_timestamp_Stop_Failed;
  if (timestamp_Stop_Failed)
  {
    objc_msgSend_dateToTimestampStringInMSec_(LBFUtils, v206, timestamp_Stop_Failed, v207, v208);
  }

  else
  {
    objc_msgSend_null(MEMORY[0x277CBEB68], v206, 0, v207, v208);
  }
  v402 = ;
  v442[62] = v402;
  v441[63] = @"timestamp_Stop_Succeeded";
  timestamp_Stop_Succeeded = self->_timestamp_Stop_Succeeded;
  if (timestamp_Stop_Succeeded)
  {
    objc_msgSend_dateToTimestampStringInMSec_(LBFUtils, v210, timestamp_Stop_Succeeded, v211, v212);
  }

  else
  {
    objc_msgSend_null(MEMORY[0x277CBEB68], v210, 0, v211, v212);
  }
  v401 = ;
  v442[63] = v401;
  v441[64] = @"timestamp_TaskCompleted_Failed";
  timestamp_TaskCompleted_Failed = self->_timestamp_TaskCompleted_Failed;
  if (timestamp_TaskCompleted_Failed)
  {
    objc_msgSend_dateToTimestampStringInMSec_(LBFUtils, v214, timestamp_TaskCompleted_Failed, v215, v216);
  }

  else
  {
    objc_msgSend_null(MEMORY[0x277CBEB68], v214, 0, v215, v216);
  }
  v400 = ;
  v442[64] = v400;
  v441[65] = @"timestamp_TaskCompleted_Succeeded";
  timestamp_TaskCompleted_Succeeded = self->_timestamp_TaskCompleted_Succeeded;
  if (timestamp_TaskCompleted_Succeeded)
  {
    objc_msgSend_dateToTimestampStringInMSec_(LBFUtils, v218, timestamp_TaskCompleted_Succeeded, v219, v220);
  }

  else
  {
    objc_msgSend_null(MEMORY[0x277CBEB68], v218, 0, v219, v220);
  }
  v399 = ;
  v442[65] = v399;
  v441[66] = @"timestamp_TaskFetched_Failed";
  timestamp_TaskFetched_Failed = self->_timestamp_TaskFetched_Failed;
  if (timestamp_TaskFetched_Failed)
  {
    objc_msgSend_dateToTimestampStringInMSec_(LBFUtils, v222, timestamp_TaskFetched_Failed, v223, v224);
  }

  else
  {
    objc_msgSend_null(MEMORY[0x277CBEB68], v222, 0, v223, v224);
  }
  v398 = ;
  v442[66] = v398;
  v441[67] = @"timestamp_TaskFetched_Succeeded";
  timestamp_TaskFetched_Succeeded = self->_timestamp_TaskFetched_Succeeded;
  if (timestamp_TaskFetched_Succeeded)
  {
    objc_msgSend_dateToTimestampStringInMSec_(LBFUtils, v226, timestamp_TaskFetched_Succeeded, v227, v228);
  }

  else
  {
    objc_msgSend_null(MEMORY[0x277CBEB68], v226, 0, v227, v228);
  }
  v397 = ;
  v442[67] = v397;
  v441[68] = @"timestamp_TaskScheduled_Failed";
  timestamp_TaskScheduled_Failed = self->_timestamp_TaskScheduled_Failed;
  if (timestamp_TaskScheduled_Failed)
  {
    objc_msgSend_dateToTimestampStringInMSec_(LBFUtils, v230, timestamp_TaskScheduled_Failed, v231, v232);
  }

  else
  {
    objc_msgSend_null(MEMORY[0x277CBEB68], v230, 0, v231, v232);
  }
  v396 = ;
  v442[68] = v396;
  v441[69] = @"timestamp_TaskScheduled_Succeeded";
  timestamp_TaskScheduled_Succeeded = self->_timestamp_TaskScheduled_Succeeded;
  if (timestamp_TaskScheduled_Succeeded)
  {
    objc_msgSend_dateToTimestampStringInMSec_(LBFUtils, v234, timestamp_TaskScheduled_Succeeded, v235, v236);
  }

  else
  {
    objc_msgSend_null(MEMORY[0x277CBEB68], v234, 0, v235, v236);
  }
  v395 = ;
  v442[69] = v395;
  v441[70] = @"timestamp_DprivacydDonationReceived_Failed";
  timestamp_DprivacydDonationReceived_Failed = self->_timestamp_DprivacydDonationReceived_Failed;
  if (timestamp_DprivacydDonationReceived_Failed)
  {
    objc_msgSend_dateToTimestampStringInMSec_(LBFUtils, v238, timestamp_DprivacydDonationReceived_Failed, v239, v240);
  }

  else
  {
    objc_msgSend_null(MEMORY[0x277CBEB68], v238, 0, v239, v240);
  }
  v394 = ;
  v442[70] = v394;
  v441[71] = @"timestamp_DprivacydDonationReceived_Succeeded";
  timestamp_DprivacydDonationReceived_Succeeded = self->_timestamp_DprivacydDonationReceived_Succeeded;
  if (timestamp_DprivacydDonationReceived_Succeeded)
  {
    objc_msgSend_dateToTimestampStringInMSec_(LBFUtils, v242, timestamp_DprivacydDonationReceived_Succeeded, v243, v244);
  }

  else
  {
    objc_msgSend_null(MEMORY[0x277CBEB68], v242, 0, v243, v244);
  }
  v393 = ;
  v442[71] = v393;
  v441[72] = @"timestamp_DprivacydRandomization_Failed";
  timestamp_DprivacydRandomization_Failed = self->_timestamp_DprivacydRandomization_Failed;
  if (timestamp_DprivacydRandomization_Failed)
  {
    objc_msgSend_dateToTimestampStringInMSec_(LBFUtils, v246, timestamp_DprivacydRandomization_Failed, v247, v248);
  }

  else
  {
    objc_msgSend_null(MEMORY[0x277CBEB68], v246, 0, v247, v248);
  }
  v391 = ;
  v442[72] = v391;
  v441[73] = @"timestamp_DprivacydRandomization_Succeeded";
  timestamp_DprivacydRandomization_Succeeded = self->_timestamp_DprivacydRandomization_Succeeded;
  if (timestamp_DprivacydRandomization_Succeeded)
  {
    objc_msgSend_dateToTimestampStringInMSec_(LBFUtils, v250, timestamp_DprivacydRandomization_Succeeded, v251, v252);
  }

  else
  {
    objc_msgSend_null(MEMORY[0x277CBEB68], v250, 0, v251, v252);
  }
  v390 = ;
  v442[73] = v390;
  v441[74] = @"timestamp_DprivacydBudgetCheck_Failed";
  timestamp_DprivacydBudgetCheck_Failed = self->_timestamp_DprivacydBudgetCheck_Failed;
  if (timestamp_DprivacydBudgetCheck_Failed)
  {
    objc_msgSend_dateToTimestampStringInMSec_(LBFUtils, v254, timestamp_DprivacydBudgetCheck_Failed, v255, v256);
  }

  else
  {
    objc_msgSend_null(MEMORY[0x277CBEB68], v254, 0, v255, v256);
  }
  v389 = ;
  v442[74] = v389;
  v441[75] = @"timestamp_DprivacydBudgetCheck_Succeeded";
  timestamp_DprivacydBudgetCheck_Succeeded = self->_timestamp_DprivacydBudgetCheck_Succeeded;
  if (timestamp_DprivacydBudgetCheck_Succeeded)
  {
    objc_msgSend_dateToTimestampStringInMSec_(LBFUtils, v258, timestamp_DprivacydBudgetCheck_Succeeded, v259, v260);
  }

  else
  {
    objc_msgSend_null(MEMORY[0x277CBEB68], v258, 0, v259, v260);
  }
  v388 = ;
  v442[75] = v388;
  v441[76] = @"timestamp_DprivacydPayloadCreation_Failed";
  timestamp_DprivacydPayloadCreation_Failed = self->_timestamp_DprivacydPayloadCreation_Failed;
  if (timestamp_DprivacydPayloadCreation_Failed)
  {
    objc_msgSend_dateToTimestampStringInMSec_(LBFUtils, v262, timestamp_DprivacydPayloadCreation_Failed, v263, v264);
  }

  else
  {
    objc_msgSend_null(MEMORY[0x277CBEB68], v262, 0, v263, v264);
  }
  v387 = ;
  v442[76] = v387;
  v441[77] = @"timestamp_DprivacydPayloadCreation_Succeeded";
  timestamp_DprivacydPayloadCreation_Succeeded = self->_timestamp_DprivacydPayloadCreation_Succeeded;
  if (timestamp_DprivacydPayloadCreation_Succeeded)
  {
    objc_msgSend_dateToTimestampStringInMSec_(LBFUtils, v266, timestamp_DprivacydPayloadCreation_Succeeded, v267, v268);
  }

  else
  {
    objc_msgSend_null(MEMORY[0x277CBEB68], v266, 0, v267, v268);
  }
  v386 = ;
  v442[77] = v386;
  v441[78] = @"timestamp_DprivacydUpload_Failed";
  timestamp_DprivacydUpload_Failed = self->_timestamp_DprivacydUpload_Failed;
  if (timestamp_DprivacydUpload_Failed)
  {
    objc_msgSend_dateToTimestampStringInMSec_(LBFUtils, v270, timestamp_DprivacydUpload_Failed, v271, v272);
  }

  else
  {
    objc_msgSend_null(MEMORY[0x277CBEB68], v270, 0, v271, v272);
  }
  v385 = ;
  v442[78] = v385;
  v441[79] = @"timestamp_DprivacydUpload_Succeeded";
  timestamp_DprivacydUpload_Succeeded = self->_timestamp_DprivacydUpload_Succeeded;
  v413 = v88;
  if (timestamp_DprivacydUpload_Succeeded)
  {
    objc_msgSend_dateToTimestampStringInMSec_(LBFUtils, v274, timestamp_DprivacydUpload_Succeeded, v275, v276);
  }

  else
  {
    objc_msgSend_null(MEMORY[0x277CBEB68], v274, 0, v275, v276);
  }

  v384 = v418 = v60;
  v442[79] = v384;
  v441[80] = @"trialIdentifiers_BMLTIdentifiers_trialDeploymentID";
  v383 = objc_msgSend_bmltIdentifiers(self->_trialIdentifiers, v278, v279, v280, v281);
  v286 = objc_msgSend_trialDeploymentID(v383, v282, v283, v284, v285);
  v291 = v286;
  if (!v286)
  {
    v286 = objc_msgSend_null(MEMORY[0x277CBEB68], v287, v288, v289, v290);
  }

  v415 = v76;
  v419 = v54;
  v353 = v286;
  v442[80] = v286;
  v441[81] = @"trialIdentifiers_BMLTIdentifiers_trialTaskID";
  v382 = objc_msgSend_bmltIdentifiers(self->_trialIdentifiers, v287, v288, v289, v290);
  v296 = objc_msgSend_trialTaskID(v382, v292, v293, v294, v295);
  v301 = v296;
  if (!v296)
  {
    v296 = objc_msgSend_null(MEMORY[0x277CBEB68], v297, v298, v299, v300);
  }

  v412 = v94;
  v352 = v296;
  v442[81] = v296;
  v441[82] = @"trialIdentifiers_experimentIdentifiers_trialDeploymentID";
  v381 = objc_msgSend_experimentIdentifiers(self->_trialIdentifiers, v297, v298, v299, v300);
  v310 = objc_msgSend_trialDeploymentID(v381, v302, v303, v304, v305);
  v311 = v310;
  if (!v310)
  {
    v311 = objc_msgSend_null(MEMORY[0x277CBEB68], v306, v307, v308, v309);
  }

  v411 = v100;
  v414 = v82;
  v442[82] = v311;
  v441[83] = @"trialIdentifiers_experimentIdentifiers_trialExperimentID";
  v312 = objc_msgSend_experimentIdentifiers(self->_trialIdentifiers, v306, v307, v308, v309);
  v321 = objc_msgSend_trialExperimentID(v312, v313, v314, v315, v316);
  v322 = v321;
  if (!v321)
  {
    v322 = objc_msgSend_null(MEMORY[0x277CBEB68], v317, v318, v319, v320);
  }

  v442[83] = v322;
  v441[84] = @"trialIdentifiers_experimentIdentifiers_trialTreatmentID";
  v323 = objc_msgSend_experimentIdentifiers(self->_trialIdentifiers, v317, v318, v319, v320);
  v332 = objc_msgSend_trialTreatmentID(v323, v324, v325, v326, v327);
  v333 = v332;
  if (!v332)
  {
    v333 = objc_msgSend_null(MEMORY[0x277CBEB68], v328, v329, v330, v331);
  }

  v442[84] = v333;
  v392 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v328, v442, v441, 85);
  if (!v332)
  {
  }

  if (!v321)
  {
  }

  if (!v310)
  {
  }

  if (!v301)
  {
  }

  if (!v291)
  {
  }

  if (!v410)
  {
  }

  v334 = v425;
  if (!v425)
  {

    v334 = 0;
  }

  v335 = v426;
  if (!v426)
  {

    v335 = 0;
  }

  v336 = v427;
  if (!v427)
  {

    v336 = 0;
  }

  v337 = v428;
  if (!v428)
  {

    v337 = 0;
  }

  v338 = v429;
  if (!v429)
  {

    v338 = 0;
  }

  v339 = v430;
  if (!v430)
  {

    v339 = 0;
  }

  v340 = v431;
  if (!v431)
  {

    v340 = 0;
  }

  v341 = v432;
  if (!v432)
  {

    v341 = 0;
  }

  v342 = v433;
  if (!v433)
  {

    v342 = 0;
  }

  v343 = v434;
  if (!v434)
  {

    v343 = 0;
  }

  v344 = v435;
  if (!v435)
  {

    v344 = 0;
  }

  v345 = v436;
  if (!v436)
  {

    v345 = 0;
  }

  v346 = v437;
  if (!v437)
  {

    v346 = 0;
  }

  v347 = v438;
  if (!v438)
  {

    v347 = 0;
  }

  v348 = v439;
  if (!v439)
  {

    v348 = 0;
  }

  if (!v411)
  {
  }

  if (!v412)
  {
  }

  if (!v413)
  {
  }

  if (!v414)
  {
  }

  if (!v415)
  {
  }

  if (!v416)
  {
  }

  if (!v417)
  {
  }

  if (!v418)
  {
  }

  if (!v419)
  {
  }

  if (!v422)
  {
  }

  if (!v423)
  {
  }

  v349 = v392;
  v350 = *MEMORY[0x277D85DE8];
  return v392;
}

- (BOOL)uploadToCoreAnalytics
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = objc_msgSend_getDictionaryRepresentation(self, a2, v2, v3, v4);
  v6 = LBFLogContextBitacoraStateInfo;
  if (os_log_type_enabled(LBFLogContextBitacoraStateInfo, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v13 = v5;
    _os_log_impl(&dword_255ED5000, v6, OS_LOG_TYPE_INFO, "Emit CA Message %@", buf, 0xCu);
  }

  v11 = v5;
  v7 = v5;
  v8 = AnalyticsSendEventLazy();

  v9 = *MEMORY[0x277D85DE8];
  return v8;
}

- (id)maxTimedelta_To_State_Activated
{
  timedeltas_To_State_Activated = self->_timedeltas_To_State_Activated;
  if (timedeltas_To_State_Activated)
  {
    v5 = MEMORY[0x277CCABB0];
    v6 = objc_msgSend_valueForKeyPath_(timedeltas_To_State_Activated, a2, @"@max.self", v2, v3);
    objc_msgSend_doubleValue(v6, v7, v8, v9, v10);
    v15 = objc_msgSend_numberWithLong_(v5, v12, (v11 * 1000.0), v13, v14);
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (id)maxTimedelta_To_State_ActivatedFailed
{
  timedeltas_To_State_ActivatedFailed = self->_timedeltas_To_State_ActivatedFailed;
  if (timedeltas_To_State_ActivatedFailed)
  {
    v5 = MEMORY[0x277CCABB0];
    v6 = objc_msgSend_valueForKeyPath_(timedeltas_To_State_ActivatedFailed, a2, @"@max.self", v2, v3);
    objc_msgSend_doubleValue(v6, v7, v8, v9, v10);
    v15 = objc_msgSend_numberWithLong_(v5, v12, (v11 * 1000.0), v13, v14);
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (id)maxTimedelta_To_State_Allocated
{
  timedeltas_To_State_Allocated = self->_timedeltas_To_State_Allocated;
  if (timedeltas_To_State_Allocated)
  {
    v5 = MEMORY[0x277CCABB0];
    v6 = objc_msgSend_valueForKeyPath_(timedeltas_To_State_Allocated, a2, @"@max.self", v2, v3);
    objc_msgSend_doubleValue(v6, v7, v8, v9, v10);
    v15 = objc_msgSend_numberWithLong_(v5, v12, (v11 * 1000.0), v13, v14);
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (id)maxTimedelta_To_State_AllocatedFailed
{
  timedeltas_To_State_AllocatedFailed = self->_timedeltas_To_State_AllocatedFailed;
  if (timedeltas_To_State_AllocatedFailed)
  {
    v5 = MEMORY[0x277CCABB0];
    v6 = objc_msgSend_valueForKeyPath_(timedeltas_To_State_AllocatedFailed, a2, @"@max.self", v2, v3);
    objc_msgSend_doubleValue(v6, v7, v8, v9, v10);
    v15 = objc_msgSend_numberWithLong_(v5, v12, (v11 * 1000.0), v13, v14);
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (id)maxTimedelta_To_State_Deativated
{
  timedeltas_To_State_Deactivated = self->_timedeltas_To_State_Deactivated;
  if (timedeltas_To_State_Deactivated)
  {
    v5 = MEMORY[0x277CCABB0];
    v6 = objc_msgSend_valueForKeyPath_(timedeltas_To_State_Deactivated, a2, @"@max.self", v2, v3);
    objc_msgSend_doubleValue(v6, v7, v8, v9, v10);
    v15 = objc_msgSend_numberWithLong_(v5, v12, (v11 * 1000.0), v13, v14);
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (id)maxTimedelta_To_State_DeativatedFailed
{
  timedeltas_To_State_DeactivatedFailed = self->_timedeltas_To_State_DeactivatedFailed;
  if (timedeltas_To_State_DeactivatedFailed)
  {
    v5 = MEMORY[0x277CCABB0];
    v6 = objc_msgSend_valueForKeyPath_(timedeltas_To_State_DeactivatedFailed, a2, @"@max.self", v2, v3);
    objc_msgSend_doubleValue(v6, v7, v8, v9, v10);
    v15 = objc_msgSend_numberWithLong_(v5, v12, (v11 * 1000.0), v13, v14);
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (id)maxTimedelta_To_State_PerformTaskFailed
{
  timedeltas_To_State_PerformTaskFailed = self->_timedeltas_To_State_PerformTaskFailed;
  if (timedeltas_To_State_PerformTaskFailed)
  {
    v5 = MEMORY[0x277CCABB0];
    v6 = objc_msgSend_valueForKeyPath_(timedeltas_To_State_PerformTaskFailed, a2, @"@max.self", v2, v3);
    objc_msgSend_doubleValue(v6, v7, v8, v9, v10);
    v15 = objc_msgSend_numberWithLong_(v5, v12, (v11 * 1000.0), v13, v14);
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (id)maxTimedelta_To_State_PerformTask
{
  timedeltas_To_State_PerformTask = self->_timedeltas_To_State_PerformTask;
  if (timedeltas_To_State_PerformTask)
  {
    v5 = MEMORY[0x277CCABB0];
    v6 = objc_msgSend_valueForKeyPath_(timedeltas_To_State_PerformTask, a2, @"@max.self", v2, v3);
    objc_msgSend_doubleValue(v6, v7, v8, v9, v10);
    v15 = objc_msgSend_numberWithLong_(v5, v12, (v11 * 1000.0), v13, v14);
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (id)maxTimedelta_To_State_TaskCompleted
{
  timedeltas_To_State_TaskCompleted = self->_timedeltas_To_State_TaskCompleted;
  if (timedeltas_To_State_TaskCompleted)
  {
    v5 = MEMORY[0x277CCABB0];
    v6 = objc_msgSend_valueForKeyPath_(timedeltas_To_State_TaskCompleted, a2, @"@max.self", v2, v3);
    objc_msgSend_doubleValue(v6, v7, v8, v9, v10);
    v15 = objc_msgSend_numberWithLong_(v5, v12, (v11 * 1000.0), v13, v14);
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (id)maxTimedelta_To_State_TaskCompletedFailed
{
  timedeltas_To_State_TaskCompletedFailed = self->_timedeltas_To_State_TaskCompletedFailed;
  if (timedeltas_To_State_TaskCompletedFailed)
  {
    v5 = MEMORY[0x277CCABB0];
    v6 = objc_msgSend_valueForKeyPath_(timedeltas_To_State_TaskCompletedFailed, a2, @"@max.self", v2, v3);
    objc_msgSend_doubleValue(v6, v7, v8, v9, v10);
    v15 = objc_msgSend_numberWithLong_(v5, v12, (v11 * 1000.0), v13, v14);
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (id)maxTimedelta_To_State_TaskFetched
{
  timedeltas_To_State_TaskFetched = self->_timedeltas_To_State_TaskFetched;
  if (timedeltas_To_State_TaskFetched)
  {
    v5 = MEMORY[0x277CCABB0];
    v6 = objc_msgSend_valueForKeyPath_(timedeltas_To_State_TaskFetched, a2, @"@max.self", v2, v3);
    objc_msgSend_doubleValue(v6, v7, v8, v9, v10);
    v15 = objc_msgSend_numberWithLong_(v5, v12, (v11 * 1000.0), v13, v14);
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (id)maxTimedelta_To_State_TaskFetchedFailed
{
  timedeltas_To_State_TaskFetchedFailed = self->_timedeltas_To_State_TaskFetchedFailed;
  if (timedeltas_To_State_TaskFetchedFailed)
  {
    v5 = MEMORY[0x277CCABB0];
    v6 = objc_msgSend_valueForKeyPath_(timedeltas_To_State_TaskFetchedFailed, a2, @"@max.self", v2, v3);
    objc_msgSend_doubleValue(v6, v7, v8, v9, v10);
    v15 = objc_msgSend_numberWithLong_(v5, v12, (v11 * 1000.0), v13, v14);
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (id)maxTimedelta_To_State_TaskScheduled
{
  timedeltas_To_State_TaskScheduled = self->_timedeltas_To_State_TaskScheduled;
  if (timedeltas_To_State_TaskScheduled)
  {
    v5 = MEMORY[0x277CCABB0];
    v6 = objc_msgSend_valueForKeyPath_(timedeltas_To_State_TaskScheduled, a2, @"@max.self", v2, v3);
    objc_msgSend_doubleValue(v6, v7, v8, v9, v10);
    v15 = objc_msgSend_numberWithLong_(v5, v12, (v11 * 1000.0), v13, v14);
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (id)maxTimedelta_To_State_TaskScheduledFailed
{
  timedeltas_To_State_TaskScheduledFailed = self->_timedeltas_To_State_TaskScheduledFailed;
  if (timedeltas_To_State_TaskScheduledFailed)
  {
    v5 = MEMORY[0x277CCABB0];
    v6 = objc_msgSend_valueForKeyPath_(timedeltas_To_State_TaskScheduledFailed, a2, @"@max.self", v2, v3);
    objc_msgSend_doubleValue(v6, v7, v8, v9, v10);
    v15 = objc_msgSend_numberWithLong_(v5, v12, (v11 * 1000.0), v13, v14);
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (id)maxTimedelta_To_State_Unexpeted
{
  timedeltas_To_State_Unexpeted = self->_timedeltas_To_State_Unexpeted;
  if (timedeltas_To_State_Unexpeted)
  {
    v5 = MEMORY[0x277CCABB0];
    v6 = objc_msgSend_valueForKeyPath_(timedeltas_To_State_Unexpeted, a2, @"@max.self", v2, v3);
    objc_msgSend_doubleValue(v6, v7, v8, v9, v10);
    v15 = objc_msgSend_numberWithLong_(v5, v12, (v11 * 1000.0), v13, v14);
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (id)maxTimedelta_To_State_DprivacydDonationReceived
{
  timedeltas_To_State_DprivacydDonationReceived = self->_timedeltas_To_State_DprivacydDonationReceived;
  if (timedeltas_To_State_DprivacydDonationReceived)
  {
    v5 = MEMORY[0x277CCABB0];
    v6 = objc_msgSend_valueForKeyPath_(timedeltas_To_State_DprivacydDonationReceived, a2, @"@max.self", v2, v3);
    objc_msgSend_doubleValue(v6, v7, v8, v9, v10);
    v15 = objc_msgSend_numberWithLong_(v5, v12, (v11 * 1000.0), v13, v14);
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (id)maxTimedelta_To_State_DprivacydDonationReceivedFailed
{
  timedeltas_To_State_DprivacydDonationReceivedFailed = self->_timedeltas_To_State_DprivacydDonationReceivedFailed;
  if (timedeltas_To_State_DprivacydDonationReceivedFailed)
  {
    v5 = MEMORY[0x277CCABB0];
    v6 = objc_msgSend_valueForKeyPath_(timedeltas_To_State_DprivacydDonationReceivedFailed, a2, @"@max.self", v2, v3);
    objc_msgSend_doubleValue(v6, v7, v8, v9, v10);
    v15 = objc_msgSend_numberWithLong_(v5, v12, (v11 * 1000.0), v13, v14);
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (id)maxTimedelta_To_State_DprivacydRandomization
{
  timedeltas_To_State_DprivacydRandomization = self->_timedeltas_To_State_DprivacydRandomization;
  if (timedeltas_To_State_DprivacydRandomization)
  {
    v5 = MEMORY[0x277CCABB0];
    v6 = objc_msgSend_valueForKeyPath_(timedeltas_To_State_DprivacydRandomization, a2, @"@max.self", v2, v3);
    objc_msgSend_doubleValue(v6, v7, v8, v9, v10);
    v15 = objc_msgSend_numberWithLong_(v5, v12, (v11 * 1000.0), v13, v14);
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (id)maxTimedelta_To_State_DprivacydRandomizationFailed
{
  timedeltas_To_State_DprivacydRandomizationFailed = self->_timedeltas_To_State_DprivacydRandomizationFailed;
  if (timedeltas_To_State_DprivacydRandomizationFailed)
  {
    v5 = MEMORY[0x277CCABB0];
    v6 = objc_msgSend_valueForKeyPath_(timedeltas_To_State_DprivacydRandomizationFailed, a2, @"@max.self", v2, v3);
    objc_msgSend_doubleValue(v6, v7, v8, v9, v10);
    v15 = objc_msgSend_numberWithLong_(v5, v12, (v11 * 1000.0), v13, v14);
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (id)maxTimedelta_To_State_DprivacydBudgetCheck
{
  timedeltas_To_State_DprivacydBudgetCheck = self->_timedeltas_To_State_DprivacydBudgetCheck;
  if (timedeltas_To_State_DprivacydBudgetCheck)
  {
    v5 = MEMORY[0x277CCABB0];
    v6 = objc_msgSend_valueForKeyPath_(timedeltas_To_State_DprivacydBudgetCheck, a2, @"@max.self", v2, v3);
    objc_msgSend_doubleValue(v6, v7, v8, v9, v10);
    v15 = objc_msgSend_numberWithLong_(v5, v12, (v11 * 1000.0), v13, v14);
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (id)maxTimedelta_To_State_DprivacydBudgetCheckFailed
{
  timedeltas_To_State_DprivacydBudgetCheckFailed = self->_timedeltas_To_State_DprivacydBudgetCheckFailed;
  if (timedeltas_To_State_DprivacydBudgetCheckFailed)
  {
    v5 = MEMORY[0x277CCABB0];
    v6 = objc_msgSend_valueForKeyPath_(timedeltas_To_State_DprivacydBudgetCheckFailed, a2, @"@max.self", v2, v3);
    objc_msgSend_doubleValue(v6, v7, v8, v9, v10);
    v15 = objc_msgSend_numberWithLong_(v5, v12, (v11 * 1000.0), v13, v14);
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (id)maxTimedelta_To_State_DprivacydPayloadCreation
{
  timedeltas_To_State_DprivacydPayloadCreation = self->_timedeltas_To_State_DprivacydPayloadCreation;
  if (timedeltas_To_State_DprivacydPayloadCreation)
  {
    v5 = MEMORY[0x277CCABB0];
    v6 = objc_msgSend_valueForKeyPath_(timedeltas_To_State_DprivacydPayloadCreation, a2, @"@max.self", v2, v3);
    objc_msgSend_doubleValue(v6, v7, v8, v9, v10);
    v15 = objc_msgSend_numberWithLong_(v5, v12, (v11 * 1000.0), v13, v14);
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (id)maxTimedelta_To_State_DprivacydPayloadCreationFailed
{
  timedeltas_To_State_DprivacydPayloadCreationFailed = self->_timedeltas_To_State_DprivacydPayloadCreationFailed;
  if (timedeltas_To_State_DprivacydPayloadCreationFailed)
  {
    v5 = MEMORY[0x277CCABB0];
    v6 = objc_msgSend_valueForKeyPath_(timedeltas_To_State_DprivacydPayloadCreationFailed, a2, @"@max.self", v2, v3);
    objc_msgSend_doubleValue(v6, v7, v8, v9, v10);
    v15 = objc_msgSend_numberWithLong_(v5, v12, (v11 * 1000.0), v13, v14);
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (id)maxTimedelta_To_State_DprivacydUpload
{
  timedeltas_To_State_DprivacydUpload = self->_timedeltas_To_State_DprivacydUpload;
  if (timedeltas_To_State_DprivacydUpload)
  {
    v5 = MEMORY[0x277CCABB0];
    v6 = objc_msgSend_valueForKeyPath_(timedeltas_To_State_DprivacydUpload, a2, @"@max.self", v2, v3);
    objc_msgSend_doubleValue(v6, v7, v8, v9, v10);
    v15 = objc_msgSend_numberWithLong_(v5, v12, (v11 * 1000.0), v13, v14);
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (id)maxTimedelta_To_State_DprivacydUploadFailed
{
  timedeltas_To_State_DprivacydUploadFailed = self->_timedeltas_To_State_DprivacydUploadFailed;
  if (timedeltas_To_State_DprivacydUploadFailed)
  {
    v5 = MEMORY[0x277CCABB0];
    v6 = objc_msgSend_valueForKeyPath_(timedeltas_To_State_DprivacydUploadFailed, a2, @"@max.self", v2, v3);
    objc_msgSend_doubleValue(v6, v7, v8, v9, v10);
    v15 = objc_msgSend_numberWithLong_(v5, v12, (v11 * 1000.0), v13, v14);
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (id)getPETState
{
  v479 = *MEMORY[0x277D85DE8];
  v472 = objc_alloc_init(LIGHTHOUSE_BITACORA_PROTOLighthouseLedgerTrialIdentifiers);
  v3 = objc_alloc_init(LIGHTHOUSE_BITACORA_PROTOBitacoraState);
  v4 = MEMORY[0x277CCABB0];
  objc_msgSend_timeIntervalSince1970(self->_bucketEndTime, v5, v6, v7, v8);
  v13 = objc_msgSend_numberWithDouble_(v4, v9, v10, v11, v12);
  v471 = objc_msgSend_longValue(v13, v14, v15, v16, v17);

  objc_msgSend_setCountTaskFetchedFailed_(v3, v18, 0, v19, v20);
  objc_msgSend_setCountTaskFetchedSucceeded_(v3, v21, 0, v22, v23);
  objc_msgSend_setCountTaskScheduledFailed_(v3, v24, 0, v25, v26);
  objc_msgSend_setCountTaskScheduledSucceeded_(v3, v27, 0, v28, v29);
  objc_msgSend_setCountTaskCompletedFailed_(v3, v30, 0, v31, v32);
  objc_msgSend_setCountTaskCompletedSucceeded_(v3, v33, 0, v34, v35);
  objc_msgSend_setCountPerformTaskFailed_(v3, v36, 0, v37, v38);
  objc_msgSend_setCountPerformTaskSucceeded_(v3, v39, 0, v40, v41);
  objc_msgSend_setCountStopFailed_(v3, v42, 0, v43, v44);
  objc_msgSend_setCountStopSucceeded_(v3, v45, 0, v46, v47);
  v476 = 0u;
  v477 = 0u;
  v474 = 0u;
  v475 = 0u;
  selfCopy = self;
  v48 = self->_bitacoraEvents;
  v50 = objc_msgSend_countByEnumeratingWithState_objects_count_(v48, v49, &v474, v478, 16);
  if (v50)
  {
    v51 = v50;
    v52 = 0;
    v53 = *v475;
    do
    {
      for (i = 0; i != v51; ++i)
      {
        if (*v475 != v53)
        {
          objc_enumerationMutation(v48);
        }

        v55 = *(*(&v474 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v56 = v55;
          v57 = LBFLogContextEventsHolder;
          if (os_log_type_enabled(LBFLogContextEventsHolder, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&dword_255ED5000, v57, OS_LOG_TYPE_INFO, "Lighthouse Plugin Event.", buf, 2u);
          }

          v62 = objc_msgSend_performTrialTaskStatus(v56, v58, v59, v60, v61);

          if (v62)
          {
            v67 = objc_msgSend_performTrialTaskStatus(v56, v63, v64, v65, v66);
            v72 = objc_msgSend_succeeded(v67, v68, v69, v70, v71);

            if (v72)
            {
              v77 = objc_msgSend_countPerformTaskSucceeded(v3, v73, v74, v75, v76);
              objc_msgSend_setCountPerformTaskSucceeded_(v3, v78, (v77 + 1), v79, v80);
            }

            else
            {
              v81 = objc_msgSend_countPerformTaskFailed(v3, v73, v74, v75, v76);
              objc_msgSend_setCountPerformTaskFailed_(v3, v82, (v81 + 1), v83, v84);
            }
          }

          v85 = objc_msgSend_performTaskStatus(v56, v63, v64, v65, v66);

          if (v85)
          {
            v90 = objc_msgSend_performTaskStatus(v56, v86, v87, v88, v89);
            v95 = objc_msgSend_succeeded(v90, v91, v92, v93, v94);

            if (v95)
            {
              v100 = objc_msgSend_countPerformTaskSucceeded(v3, v96, v97, v98, v99);
              objc_msgSend_setCountPerformTaskSucceeded_(v3, v101, (v100 + 1), v102, v103);
            }

            else
            {
              v104 = objc_msgSend_countPerformTaskFailed(v3, v96, v97, v98, v99);
              objc_msgSend_setCountPerformTaskFailed_(v3, v105, (v104 + 1), v106, v107);
            }
          }

          v108 = objc_msgSend_stop(v56, v86, v87, v88, v89);

          if (v108)
          {
            v113 = objc_msgSend_stop(v56, v109, v110, v111, v112);
            v118 = objc_msgSend_succeeded(v113, v114, v115, v116, v117);

            if (v118)
            {
              v123 = objc_msgSend_countStopSucceeded(v3, v119, v120, v121, v122);
              objc_msgSend_setCountStopSucceeded_(v3, v124, (v123 + 1), v125, v126);
            }

            else
            {
              v127 = objc_msgSend_countStopFailed(v3, v119, v120, v121, v122);
              objc_msgSend_setCountStopFailed_(v3, v128, (v127 + 1), v129, v130);
            }
          }

          v131 = objc_msgSend_trialIdentifiers(v56, v109, v110, v111, v112);

          v52 = v131;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v132 = v55;
          v137 = objc_msgSend_taskFetched(v132, v133, v134, v135, v136);

          if (v137)
          {
            v142 = objc_msgSend_taskFetched(v132, v138, v139, v140, v141);
            v147 = objc_msgSend_succeeded(v142, v143, v144, v145, v146);

            if (v147)
            {
              v152 = objc_msgSend_countTaskFetchedSucceeded(v3, v148, v149, v150, v151);
              objc_msgSend_setCountTaskFetchedSucceeded_(v3, v153, (v152 + 1), v154, v155);
            }

            else
            {
              v156 = objc_msgSend_countTaskFetchedFailed(v3, v148, v149, v150, v151);
              objc_msgSend_setCountTaskFetchedFailed_(v3, v157, (v156 + 1), v158, v159);
            }
          }

          v160 = objc_msgSend_taskCompleted(v132, v138, v139, v140, v141);

          if (v160)
          {
            v165 = objc_msgSend_taskCompleted(v132, v161, v162, v163, v164);
            v170 = objc_msgSend_succeeded(v165, v166, v167, v168, v169);

            if (v170)
            {
              v175 = objc_msgSend_countTaskCompletedSucceeded(v3, v171, v172, v173, v174);
              objc_msgSend_setCountTaskCompletedSucceeded_(v3, v176, (v175 + 1), v177, v178);
            }

            else
            {
              v179 = objc_msgSend_countTaskCompletedFailed(v3, v171, v172, v173, v174);
              objc_msgSend_setCountTaskCompletedFailed_(v3, v180, (v179 + 1), v181, v182);
            }
          }

          v183 = objc_msgSend_taskScheduled(v132, v161, v162, v163, v164);

          if (v183)
          {
            v188 = objc_msgSend_taskScheduled(v132, v184, v185, v186, v187);
            v193 = objc_msgSend_succeeded(v188, v189, v190, v191, v192);

            if (v193)
            {
              v198 = objc_msgSend_countTaskScheduledSucceeded(v3, v194, v195, v196, v197);
              objc_msgSend_setCountTaskScheduledSucceeded_(v3, v199, (v198 + 1), v200, v201);
            }

            else
            {
              v202 = objc_msgSend_countTaskScheduledFailed(v3, v194, v195, v196, v197);
              objc_msgSend_setCountTaskScheduledFailed_(v3, v203, (v202 + 1), v204, v205);
            }
          }

          v206 = objc_msgSend_activityScheduleStatus(v132, v184, v185, v186, v187);

          if (v206)
          {
            v211 = objc_msgSend_activityScheduleStatus(v132, v207, v208, v209, v210);
            v216 = objc_msgSend_scheduled(v211, v212, v213, v214, v215);

            if (v216)
            {
              v221 = objc_msgSend_countTaskScheduledSucceeded(v3, v217, v218, v219, v220);
              objc_msgSend_setCountTaskScheduledSucceeded_(v3, v222, (v221 + 1), v223, v224);
            }

            else
            {
              v225 = objc_msgSend_countTaskScheduledFailed(v3, v217, v218, v219, v220);
              objc_msgSend_setCountTaskScheduledFailed_(v3, v226, (v225 + 1), v227, v228);
            }
          }

          v229 = objc_msgSend_trialIdentifiers(v132, v207, v208, v209, v210);

          v52 = v229;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v231 = v55;
          v232 = LBFLogContextEventsHolder;
          if (os_log_type_enabled(LBFLogContextEventsHolder, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&dword_255ED5000, v232, OS_LOG_TYPE_INFO, "Triald Event.", buf, 2u);
          }

          if (objc_msgSend_eventType(v231, v233, v234, v235, v236))
          {
            if (objc_msgSend_eventType(v231, v237, v238, v239, v240) == 2)
            {
              objc_msgSend_setIsActivated_(v3, v241, 1, v243, v244);
            }

            if (objc_msgSend_eventType(v231, v241, v242, v243, v244) == 1)
            {
              objc_msgSend_setIsAllocated_(v3, v245, 1, v247, v248);
            }

            if (objc_msgSend_eventType(v231, v245, v246, v247, v248) == 3)
            {
              objc_msgSend_setIsActivated_(v3, v237, 0, v239, v240);
            }
          }

          if (!v52)
          {
            v52 = objc_msgSend_trialIdentifiers(v231, v237, v238, v239, v240);
          }
        }
      }

      v51 = objc_msgSend_countByEnumeratingWithState_objects_count_(v48, v230, &v474, v478, 16);
    }

    while (v51);
  }

  else
  {
    v52 = 0;
  }

  if ((objc_msgSend_isActivated(v3, v249, v250, v251, v252) & 1) == 0)
  {
    objc_msgSend_setIsActivated_(v3, v253, selfCopy->_isActivated_implicit, v255, v256);
  }

  if ((objc_msgSend_isAllocated(v3, v253, v254, v255, v256) & 1) == 0)
  {
    objc_msgSend_setIsAllocated_(v3, v257, selfCopy->_isAllocated_implicit, v259, v260);
  }

  v261 = objc_msgSend_experimentIdentifiers(v52, v257, v258, v259, v260);

  if (v261)
  {
    v266 = objc_alloc_init(LIGHTHOUSE_BITACORA_PROTOExperimentIdentifiers);
    objc_msgSend_setExperimentIdentifiers_(v472, v267, v266, v268, v269);

    v274 = objc_msgSend_experimentIdentifiers(v52, v270, v271, v272, v273);
    v279 = objc_msgSend_trialTreatmentID(v274, v275, v276, v277, v278);
    v284 = objc_msgSend_experimentIdentifiers(v472, v280, v281, v282, v283);
    objc_msgSend_setTrialTreatmentID_(v284, v285, v279, v286, v287);

    v292 = objc_msgSend_experimentIdentifiers(v52, v288, v289, v290, v291);
    v297 = objc_msgSend_trialDeploymentID(v292, v293, v294, v295, v296);
    v302 = objc_msgSend_experimentIdentifiers(v472, v298, v299, v300, v301);
    objc_msgSend_setTrialDeploymentID_(v302, v303, v297, v304, v305);

    v310 = objc_msgSend_experimentIdentifiers(v52, v306, v307, v308, v309);
    v315 = objc_msgSend_trialExperimentID(v310, v311, v312, v313, v314);
    v320 = objc_msgSend_experimentIdentifiers(v472, v316, v317, v318, v319);
    objc_msgSend_setTrialExperimentID_(v320, v321, v315, v322, v323);

    objc_msgSend_setTrialIdentifierType_(v3, v324, 1, v325, v326);
    v331 = objc_msgSend_experimentIdentifiers(v52, v327, v328, v329, v330);
    v336 = objc_msgSend_trialTreatmentID(v331, v332, v333, v334, v335);
    objc_msgSend_setTrialTreatmentID_(v3, v337, v336, v338, v339);

    v344 = objc_msgSend_experimentIdentifiers(v52, v340, v341, v342, v343);
    v349 = objc_msgSend_trialDeploymentID(v344, v345, v346, v347, v348);
    objc_msgSend_setTrialDeploymentID_(v3, v350, v349, v351, v352);

    v357 = objc_msgSend_experimentIdentifiers(v52, v353, v354, v355, v356);
    v362 = objc_msgSend_trialExperimentID(v357, v358, v359, v360, v361);
    objc_msgSend_setTrialExperimentID_(v3, v363, v362, v364, v365);
  }

  v366 = objc_msgSend_bmltIdentifiers(v52, v262, v263, v264, v265);

  if (v366)
  {
    v370 = objc_alloc_init(LIGHTHOUSE_BITACORA_PROTOBMLTIdentifiers);
    objc_msgSend_setBmltIdentifiers_(v472, v371, v370, v372, v373);

    v378 = objc_msgSend_bmltIdentifiers(v52, v374, v375, v376, v377);
    v383 = objc_msgSend_trialDeploymentID(v378, v379, v380, v381, v382);
    v388 = objc_msgSend_bmltIdentifiers(v472, v384, v385, v386, v387);
    objc_msgSend_setTrialDeploymentID_(v388, v389, v383, v390, v391);

    v396 = objc_msgSend_bmltIdentifiers(v52, v392, v393, v394, v395);
    v401 = objc_msgSend_trialTaskID(v396, v397, v398, v399, v400);
    v406 = objc_msgSend_bmltIdentifiers(v472, v402, v403, v404, v405);
    objc_msgSend_setTrialTaskID_(v406, v407, v401, v408, v409);

    objc_msgSend_setTrialIdentifierType_(v3, v410, 2, v411, v412);
    v417 = objc_msgSend_bmltIdentifiers(v52, v413, v414, v415, v416);
    v422 = objc_msgSend_trialDeploymentID(v417, v418, v419, v420, v421);
    objc_msgSend_setTrialDeploymentID_(v3, v423, v422, v424, v425);

    v430 = objc_msgSend_bmltIdentifiers(v52, v426, v427, v428, v429);
    v435 = objc_msgSend_trialTaskID(v430, v431, v432, v433, v434);
    objc_msgSend_setTrialTaskID_(v3, v436, v435, v437, v438);
  }

  objc_msgSend_setTrialIdentifiers_(v3, v367, v472, v368, v369);
  objc_msgSend_setTimestamp_(v3, v439, v471, v440, v441);
  v446 = objc_msgSend_UUID(MEMORY[0x277CCAD78], v442, v443, v444, v445);
  v451 = objc_msgSend_UUIDString(v446, v447, v448, v449, v450);
  objc_msgSend_setTelemetryID_(v3, v452, v451, v453, v454);

  v459 = objc_msgSend_getContextId(LBFContextId, v455, v456, v457, v458);
  v464 = objc_msgSend_UUIDString(v459, v460, v461, v462, v463);
  objc_msgSend_setContextID_(v3, v465, v464, v466, v467);

  v468 = *MEMORY[0x277D85DE8];

  return v3;
}

+ (id)getCAEventDictionaryFromBiomeEvent:(id)event
{
  v994[42] = *MEMORY[0x277D85DE8];
  eventCopy = event;
  v8 = objc_msgSend_getContextId(LBFContextId, v4, v5, v6, v7);
  v960 = objc_msgSend_UUIDString(v8, v9, v10, v11, v12);

  v17 = objc_msgSend_UUID(MEMORY[0x277CCAD78], v13, v14, v15, v16);
  v959 = objc_msgSend_UUIDString(v17, v18, v19, v20, v21);

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v958 = 0;
    v980 = 0;
    v981 = 0;
    v982 = 0;
    v42 = 0;
    v989 = 0;
    v990 = 0;
    v991 = 0;
    v99 = 0;
    v987 = 0;
    v986 = 0;
    v985 = 0;
    v984 = 0;
    v983 = 0;
    v979 = 0;
    v27 = 0;
    v147 = &unk_286801060;
    goto LABEL_22;
  }

  v22 = eventCopy;
  v27 = objc_msgSend_timestamp(v22, v23, v24, v25, v26);
  v32 = objc_msgSend_trialIdentifiers(v22, v28, v29, v30, v31);
  v37 = objc_msgSend_bmltIdentifiers(v32, v33, v34, v35, v36);
  v42 = objc_msgSend_trialDeploymentID(v37, v38, v39, v40, v41);

  v47 = objc_msgSend_trialIdentifiers(v22, v43, v44, v45, v46);
  v52 = objc_msgSend_bmltIdentifiers(v47, v48, v49, v50, v51);
  v989 = objc_msgSend_trialTaskID(v52, v53, v54, v55, v56);

  v61 = objc_msgSend_trialIdentifiers(v22, v57, v58, v59, v60);
  v66 = objc_msgSend_experimentIdentifiers(v61, v62, v63, v64, v65);
  v990 = objc_msgSend_trialDeploymentID(v66, v67, v68, v69, v70);

  v75 = objc_msgSend_trialIdentifiers(v22, v71, v72, v73, v74);
  v80 = objc_msgSend_experimentIdentifiers(v75, v76, v77, v78, v79);
  v991 = objc_msgSend_trialExperimentID(v80, v81, v82, v83, v84);

  v89 = objc_msgSend_trialIdentifiers(v22, v85, v86, v87, v88);
  v94 = objc_msgSend_experimentIdentifiers(v89, v90, v91, v92, v93);
  v99 = objc_msgSend_trialTreatmentID(v94, v95, v96, v97, v98);

  v104 = objc_msgSend_taskFetched(v22, v100, v101, v102, v103);

  if (v104)
  {
    v109 = MEMORY[0x277CCABB0];
    v110 = objc_msgSend_taskFetched(v22, v105, v106, v107, v108);
    v115 = objc_msgSend_succeeded(v110, v111, v112, v113, v114);
    v958 = objc_msgSend_numberWithBool_(v109, v116, v115, v117, v118);

    v123 = objc_msgSend_taskFetched(v22, v119, v120, v121, v122);
    LOBYTE(v110) = objc_msgSend_succeeded(v123, v124, v125, v126, v127);

    if ((v110 & 1) == 0)
    {
      v128 = objc_msgSend_taskFetched(v22, v105, v106, v107, v108);
      v987 = objc_msgSend_errorDomain(v128, v129, v130, v131, v132);

      v133 = MEMORY[0x277CCACA8];
      v138 = objc_msgSend_taskFetched(v22, v134, v135, v136, v137);
      v143 = objc_msgSend_errorCode(v138, v139, v140, v141, v142);
      v986 = objc_msgSend_stringWithFormat_(v133, v144, @"%d", v145, v146, v143);

      goto LABEL_8;
    }
  }

  else
  {
    v958 = 0;
  }

  v987 = 0;
  v986 = 0;
LABEL_8:
  v148 = objc_msgSend_taskCompleted(v22, v105, v106, v107, v108);

  if (!v148)
  {
    v985 = 0;
    goto LABEL_12;
  }

  v153 = MEMORY[0x277CCABB0];
  v154 = objc_msgSend_taskCompleted(v22, v149, v150, v151, v152);
  v159 = objc_msgSend_succeeded(v154, v155, v156, v157, v158);
  v985 = objc_msgSend_numberWithBool_(v153, v160, v159, v161, v162);

  v167 = objc_msgSend_taskCompleted(v22, v163, v164, v165, v166);
  LOBYTE(v154) = objc_msgSend_succeeded(v167, v168, v169, v170, v171);

  if (v154)
  {
LABEL_12:
    v984 = 0;
    v983 = 0;
    goto LABEL_13;
  }

  v172 = objc_msgSend_taskCompleted(v22, v149, v150, v151, v152);
  v984 = objc_msgSend_errorDomain(v172, v173, v174, v175, v176);

  v177 = MEMORY[0x277CCACA8];
  v182 = objc_msgSend_taskCompleted(v22, v178, v179, v180, v181);
  v187 = objc_msgSend_errorCode(v182, v183, v184, v185, v186);
  v983 = objc_msgSend_stringWithFormat_(v177, v188, @"%d", v189, v190, v187);

LABEL_13:
  v191 = objc_msgSend_taskScheduled(v22, v149, v150, v151, v152);

  if (v191)
  {
    v196 = MEMORY[0x277CCABB0];
    v197 = objc_msgSend_taskScheduled(v22, v192, v193, v194, v195);
    v202 = objc_msgSend_succeeded(v197, v198, v199, v200, v201);
    v982 = objc_msgSend_numberWithBool_(v196, v203, v202, v204, v205);

    v210 = objc_msgSend_taskScheduled(v22, v206, v207, v208, v209);
    LOBYTE(v197) = objc_msgSend_succeeded(v210, v211, v212, v213, v214);

    if (v197)
    {
      v980 = 0;
      v981 = 0;
    }

    else
    {
      v215 = objc_msgSend_taskScheduled(v22, v192, v193, v194, v195);
      v981 = objc_msgSend_errorDomain(v215, v216, v217, v218, v219);

      v220 = MEMORY[0x277CCACA8];
      v225 = objc_msgSend_taskScheduled(v22, v221, v222, v223, v224);
      v230 = objc_msgSend_errorCode(v225, v226, v227, v228, v229);
      v980 = objc_msgSend_stringWithFormat_(v220, v231, @"%d", v232, v233, v230);
    }
  }

  else
  {
    v980 = 0;
    v981 = 0;
    v982 = 0;
  }

  v234 = objc_msgSend_activityScheduleStatus(v22, v192, v193, v194, v195);

  if (v234)
  {
    v239 = MEMORY[0x277CCABB0];
    v240 = objc_msgSend_activityScheduleStatus(v22, v235, v236, v237, v238);
    v245 = objc_msgSend_scheduled(v240, v241, v242, v243, v244);
    v979 = objc_msgSend_numberWithBool_(v239, v246, v245, v247, v248);
  }

  else
  {
    v979 = 0;
  }

  v147 = &unk_286801090;
LABEL_22:
  objc_opt_class();
  v961 = eventCopy;
  if (objc_opt_isKindOfClass())
  {
    v249 = eventCopy;
    v974 = objc_msgSend_timestamp(v249, v250, v251, v252, v253);

    v258 = objc_msgSend_trialIdentifiers(v249, v254, v255, v256, v257);
    v263 = objc_msgSend_bmltIdentifiers(v258, v259, v260, v261, v262);
    v268 = objc_msgSend_trialDeploymentID(v263, v264, v265, v266, v267);

    v273 = objc_msgSend_trialIdentifiers(v249, v269, v270, v271, v272);
    v278 = objc_msgSend_bmltIdentifiers(v273, v274, v275, v276, v277);
    v283 = objc_msgSend_trialTaskID(v278, v279, v280, v281, v282);

    v288 = objc_msgSend_trialIdentifiers(v249, v284, v285, v286, v287);
    objc_msgSend_experimentIdentifiers(v288, v289, v290, v291, v292);
    v294 = v293 = v99;
    v299 = objc_msgSend_trialDeploymentID(v294, v295, v296, v297, v298);

    v304 = objc_msgSend_trialIdentifiers(v249, v300, v301, v302, v303);
    v309 = objc_msgSend_experimentIdentifiers(v304, v305, v306, v307, v308);
    v314 = objc_msgSend_trialExperimentID(v309, v310, v311, v312, v313);

    v319 = objc_msgSend_trialIdentifiers(v249, v315, v316, v317, v318);
    v324 = objc_msgSend_experimentIdentifiers(v319, v320, v321, v322, v323);
    v99 = objc_msgSend_trialTreatmentID(v324, v325, v326, v327, v328);

    v333 = objc_msgSend_performTaskStatus(v249, v329, v330, v331, v332);

    if (!v333)
    {
      goto LABEL_25;
    }

    v338 = MEMORY[0x277CCABB0];
    v339 = objc_msgSend_performTaskStatus(v249, v334, v335, v336, v337);
    v344 = objc_msgSend_succeeded(v339, v340, v341, v342, v343);
    v333 = objc_msgSend_numberWithBool_(v338, v345, v344, v346, v347);

    v352 = objc_msgSend_performTaskStatus(v249, v348, v349, v350, v351);
    v357 = objc_msgSend_succeeded(v352, v353, v354, v355, v356);

    if ((v357 & 1) == 0)
    {
      v361 = objc_msgSend_performTaskStatus(v249, v334, v335, v336, v337);
      v988 = objc_msgSend_errorDomain(v361, v362, v363, v364, v365);

      v366 = MEMORY[0x277CCACA8];
      v371 = objc_msgSend_performTaskStatus(v249, v367, v368, v369, v370);
      v376 = objc_msgSend_errorCode(v371, v372, v373, v374, v375);
      v380 = objc_msgSend_stringWithFormat_(v366, v377, @"%d", v378, v379, v376);

      v358 = v380;
    }

    else
    {
LABEL_25:
      v358 = 0;
      v988 = 0;
    }

    v381 = objc_msgSend_performTrialTaskStatus(v249, v334, v335, v336, v337);

    if (v381)
    {
      v386 = v358;
      v387 = MEMORY[0x277CCABB0];
      v388 = objc_msgSend_performTrialTaskStatus(v249, v382, v383, v384, v385);
      v393 = objc_msgSend_succeeded(v388, v389, v390, v391, v392);
      v978 = objc_msgSend_numberWithBool_(v387, v394, v393, v395, v396);

      v401 = objc_msgSend_performTrialTaskStatus(v249, v397, v398, v399, v400);
      LOBYTE(v387) = objc_msgSend_succeeded(v401, v402, v403, v404, v405);

      if (v387)
      {
        v358 = v386;
      }

      else
      {
        v406 = objc_msgSend_performTrialTaskStatus(v249, v382, v383, v384, v385);
        v411 = objc_msgSend_errorDomain(v406, v407, v408, v409, v410);

        v412 = MEMORY[0x277CCACA8];
        v417 = objc_msgSend_performTrialTaskStatus(v249, v413, v414, v415, v416);
        v422 = objc_msgSend_errorCode(v417, v418, v419, v420, v421);
        v426 = objc_msgSend_stringWithFormat_(v412, v423, @"%d", v424, v425, v422);

        v358 = v426;
        v988 = v411;
      }
    }

    else
    {
      v978 = v333;
    }

    v360 = objc_msgSend_stop(v249, v382, v383, v384, v385);

    if (v360)
    {
      v431 = MEMORY[0x277CCABB0];
      v432 = objc_msgSend_stop(v249, v427, v428, v429, v430);
      v437 = objc_msgSend_succeeded(v432, v433, v434, v435, v436);
      v441 = objc_msgSend_numberWithBool_(v431, v438, v437, v439, v440);

      v446 = objc_msgSend_stop(v249, v442, v443, v444, v445);
      LOBYTE(v432) = objc_msgSend_succeeded(v446, v447, v448, v449, v450);

      if (v432)
      {
        v977 = 0;
        v359 = 0;
      }

      else
      {
        v455 = objc_msgSend_stop(v249, v451, v452, v453, v454);
        objc_msgSend_errorDomain(v455, v456, v457, v458, v459);
        v992 = v99;
        v460 = v314;
        v461 = v299;
        v462 = v283;
        v464 = v463 = v268;

        v465 = MEMORY[0x277CCACA8];
        v470 = objc_msgSend_stop(v249, v466, v467, v468, v469);
        v475 = objc_msgSend_errorCode(v470, v471, v472, v473, v474);
        v977 = objc_msgSend_stringWithFormat_(v465, v476, @"%d", v477, v478, v475);

        v359 = v464;
        v268 = v463;
        v283 = v462;
        v299 = v461;
        v314 = v460;
        v99 = v992;
      }

      v360 = v441;
    }

    else
    {
      v977 = 0;
      v359 = 0;
    }

    v989 = v283;
    v990 = v299;
    v991 = v314;
    v27 = v974;
    v147 = &unk_2868010A8;
    eventCopy = v961;
  }

  else
  {
    v268 = v42;
    v358 = 0;
    v988 = 0;
    v977 = 0;
    v978 = 0;
    v359 = 0;
    v360 = 0;
  }

  objc_opt_class();
  v950 = v359;
  v951 = v360;
  if (objc_opt_isKindOfClass())
  {
    v479 = eventCopy;
    v975 = objc_msgSend_timestamp(v479, v480, v481, v482, v483);

    v488 = objc_msgSend_trialIdentifiers(v479, v484, v485, v486, v487);
    v493 = objc_msgSend_bmltIdentifiers(v488, v489, v490, v491, v492);
    v972 = objc_msgSend_trialDeploymentID(v493, v494, v495, v496, v497);

    v502 = objc_msgSend_trialIdentifiers(v479, v498, v499, v500, v501);
    v507 = objc_msgSend_bmltIdentifiers(v502, v503, v504, v505, v506);
    v512 = objc_msgSend_trialTaskID(v507, v508, v509, v510, v511);

    v517 = objc_msgSend_trialIdentifiers(v479, v513, v514, v515, v516);
    objc_msgSend_experimentIdentifiers(v517, v518, v519, v520, v521);
    v523 = v522 = v99;
    v528 = objc_msgSend_trialDeploymentID(v523, v524, v525, v526, v527);

    v533 = objc_msgSend_trialIdentifiers(v479, v529, v530, v531, v532);
    v538 = objc_msgSend_experimentIdentifiers(v533, v534, v535, v536, v537);
    v543 = objc_msgSend_trialExperimentID(v538, v539, v540, v541, v542);

    v548 = objc_msgSend_trialIdentifiers(v479, v544, v545, v546, v547);
    v553 = objc_msgSend_experimentIdentifiers(v548, v549, v550, v551, v552);
    v99 = objc_msgSend_trialTreatmentID(v553, v554, v555, v556, v557);

    v562 = objc_msgSend_eventType(v479, v558, v559, v560, v561) - 1;
    if (v562 >= 3)
    {
      v564 = LBFLogContextBitacoraStateInfo;
      if (os_log_type_enabled(v564, OS_LOG_TYPE_ERROR))
      {
        sub_255F0AF64(v479, v564, v565, v566, v567);
      }

      v563 = &unk_286801060;
    }

    else
    {
      v563 = qword_279813B40[v562];
    }

    v957 = v563;
    v359 = v950;

    v989 = v512;
    v990 = v528;
    v991 = v543;
    v268 = v972;
    v27 = v975;
    v147 = &unk_286801078;
    eventCopy = v961;
    v360 = v951;
  }

  else
  {
    v957 = 0;
  }

  objc_opt_class();
  v952 = v358;
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v973 = 0;
    v976 = 0;
    v689 = 0;
    v970 = 0;
    v971 = 0;
    v953 = 0;
    v954 = 0;
    v968 = 0;
    v969 = 0;
    v965 = 0;
    v966 = 0;
    v963 = 0;
    v964 = 0;
    v967 = 0;
    v962 = 0;
    v664 = v958;
    v690 = v268;
    goto LABEL_90;
  }

  v572 = eventCopy;
  v577 = objc_msgSend_timestamp(v572, v573, v574, v575, v576);

  v582 = objc_msgSend_trialIdentifiers(v572, v578, v579, v580, v581);
  v587 = objc_msgSend_bmltIdentifiers(v582, v583, v584, v585, v586);
  v946 = objc_msgSend_trialDeploymentID(v587, v588, v589, v590, v591);

  v596 = objc_msgSend_trialIdentifiers(v572, v592, v593, v594, v595);
  v601 = objc_msgSend_bmltIdentifiers(v596, v597, v598, v599, v600);
  v606 = objc_msgSend_trialTaskID(v601, v602, v603, v604, v605);

  v611 = objc_msgSend_trialIdentifiers(v572, v607, v608, v609, v610);
  v616 = objc_msgSend_experimentIdentifiers(v611, v612, v613, v614, v615);
  v621 = objc_msgSend_trialDeploymentID(v616, v617, v618, v619, v620);

  v626 = objc_msgSend_trialIdentifiers(v572, v622, v623, v624, v625);
  v631 = objc_msgSend_experimentIdentifiers(v626, v627, v628, v629, v630);
  v955 = objc_msgSend_trialExperimentID(v631, v632, v633, v634, v635);

  v640 = objc_msgSend_trialIdentifiers(v572, v636, v637, v638, v639);
  v645 = objc_msgSend_experimentIdentifiers(v640, v641, v642, v643, v644);
  v948 = objc_msgSend_trialTreatmentID(v645, v646, v647, v648, v649);

  v654 = objc_msgSend_event(v572, v650, v651, v652, v653);
  v659 = objc_msgSend_phase(v654, v655, v656, v657, v658);

  if (v659 <= 2)
  {
    if (v659 == 1)
    {
      v665 = v621;
      v27 = v577;
      v760 = MEMORY[0x277CCABB0];
      v761 = objc_msgSend_event(v572, v660, v661, v662, v663);
      v766 = objc_msgSend_succeeded(v761, v762, v763, v764, v765);
      v976 = objc_msgSend_numberWithBool_(v760, v767, v766, v768, v769);

      v774 = objc_msgSend_event(v572, v770, v771, v772, v773);
      LOBYTE(v761) = objc_msgSend_succeeded(v774, v775, v776, v777, v778);

      v664 = v958;
      if (v761)
      {
        v689 = 0;
      }

      else
      {
        v817 = objc_msgSend_event(v572, v779, v780, v781, v782);
        v689 = objc_msgSend_errorMessage(v817, v818, v819, v820, v821);

        if (objc_msgSend_localizedCaseInsensitiveContainsString_(v689, v822, @";", v823, v824))
        {
          v783 = objc_msgSend_componentsSeparatedByString_(v689, v825, @"", v826, v827);;
          v971 = objc_msgSend_objectAtIndexedSubscript_(v783, v828, 0, v829, v830);
LABEL_75:
          v973 = 0;
          v954 = 0;
          v968 = 0;
LABEL_76:
          v970 = 0;
          v953 = 0;
          v965 = 0;
          goto LABEL_77;
        }
      }

      v971 = 0;
      v973 = 0;
    }

    else
    {
      v664 = v958;
      if (v659 != 2)
      {
        goto LABEL_66;
      }

      v665 = v621;
      v691 = MEMORY[0x277CCABB0];
      v692 = objc_msgSend_event(v572, v660, v661, v662, v663);
      v697 = objc_msgSend_succeeded(v692, v693, v694, v695, v696);
      v973 = objc_msgSend_numberWithBool_(v691, v698, v697, v699, v700);

      v705 = objc_msgSend_event(v572, v701, v702, v703, v704);
      LOBYTE(v692) = objc_msgSend_succeeded(v705, v706, v707, v708, v709);

      v27 = v577;
      if ((v692 & 1) == 0)
      {
        v899 = objc_msgSend_event(v572, v710, v711, v712, v713);
        v904 = objc_msgSend_errorMessage(v899, v900, v901, v902, v903);

        v954 = v904;
        if (objc_msgSend_localizedCaseInsensitiveContainsString_(v904, v905, @";", v906, v907))
        {
          v783 = objc_msgSend_componentsSeparatedByString_(v904, v908, @"", v909, v910);;
          v968 = objc_msgSend_objectAtIndexedSubscript_(v783, v911, 0, v912, v913);
          v976 = 0;
          v689 = 0;
          v971 = 0;
          goto LABEL_76;
        }

        v976 = 0;
        v689 = 0;
        v971 = 0;
        goto LABEL_82;
      }

      v976 = 0;
      v689 = 0;
      v971 = 0;
    }

    v954 = 0;
LABEL_82:
    v968 = 0;
    v970 = 0;
    goto LABEL_83;
  }

  if (v659 == 3)
  {
    v665 = v621;
    v714 = MEMORY[0x277CCABB0];
    v715 = objc_msgSend_event(v572, v660, v661, v662, v663);
    v720 = objc_msgSend_succeeded(v715, v716, v717, v718, v719);
    v970 = objc_msgSend_numberWithBool_(v714, v721, v720, v722, v723);

    v728 = objc_msgSend_event(v572, v724, v725, v726, v727);
    LOBYTE(v715) = objc_msgSend_succeeded(v728, v729, v730, v731, v732);

    v664 = v958;
    v27 = v577;
    if ((v715 & 1) == 0)
    {
      v787 = objc_msgSend_event(v572, v733, v734, v735, v736);
      v792 = objc_msgSend_errorMessage(v787, v788, v789, v790, v791);

      v953 = v792;
      if (objc_msgSend_localizedCaseInsensitiveContainsString_(v792, v793, @";", v794, v795))
      {
        v783 = objc_msgSend_componentsSeparatedByString_(v792, v796, @"", v797, v798);;
        v965 = objc_msgSend_objectAtIndexedSubscript_(v783, v799, 0, v800, v801);
        v973 = 0;
        v976 = 0;
        v689 = 0;
        v971 = 0;
        v954 = 0;
        v968 = 0;
LABEL_77:
        v969 = 0;
        v966 = 0;
        v963 = 0;
        goto LABEL_78;
      }

      v973 = 0;
      v976 = 0;
      v689 = 0;
      v971 = 0;
      v954 = 0;
      v968 = 0;
      goto LABEL_84;
    }

    v973 = 0;
    v976 = 0;
    v689 = 0;
    v971 = 0;
    v954 = 0;
    v968 = 0;
LABEL_83:
    v953 = 0;
LABEL_84:
    v965 = 0;
    v969 = 0;
    goto LABEL_85;
  }

  v664 = v958;
  if (v659 == 4)
  {
    v665 = v621;
    v737 = MEMORY[0x277CCABB0];
    v738 = objc_msgSend_event(v572, v660, v661, v662, v663);
    v743 = objc_msgSend_succeeded(v738, v739, v740, v741, v742);
    v969 = objc_msgSend_numberWithBool_(v737, v744, v743, v745, v746);

    v751 = objc_msgSend_event(v572, v747, v748, v749, v750);
    LOBYTE(v738) = objc_msgSend_succeeded(v751, v752, v753, v754, v755);

    v27 = v577;
    if ((v738 & 1) == 0)
    {
      v802 = objc_msgSend_event(v572, v756, v757, v758, v759);
      v807 = objc_msgSend_errorMessage(v802, v803, v804, v805, v806);

      v966 = v807;
      if (objc_msgSend_localizedCaseInsensitiveContainsString_(v807, v808, @";", v809, v810))
      {
        v783 = objc_msgSend_componentsSeparatedByString_(v807, v811, @"", v812, v813);;
        v963 = objc_msgSend_objectAtIndexedSubscript_(v783, v814, 0, v815, v816);
        v973 = 0;
        v976 = 0;
        v689 = 0;
        v970 = 0;
        v971 = 0;
        v953 = 0;
        v954 = 0;
        v968 = 0;
        v965 = 0;
LABEL_78:
        v967 = 0;
        v964 = 0;
        v962 = 0;
        goto LABEL_79;
      }

      v973 = 0;
      v976 = 0;
      v689 = 0;
      v970 = 0;
      v971 = 0;
      v953 = 0;
      v954 = 0;
      v968 = 0;
      v965 = 0;
LABEL_86:
      v963 = 0;
      v967 = 0;
      goto LABEL_87;
    }

    v973 = 0;
    v976 = 0;
    v689 = 0;
    v970 = 0;
    v971 = 0;
    v953 = 0;
    v954 = 0;
    v968 = 0;
    v965 = 0;
LABEL_85:
    v966 = 0;
    goto LABEL_86;
  }

  if (v659 != 5)
  {
LABEL_66:
    v665 = v621;
    v27 = v577;
    v783 = LBFLogContextBitacoraStateInfo;
    if (os_log_type_enabled(v783, OS_LOG_TYPE_ERROR))
    {
      sub_255F0AFE8(v572, v783, v784, v785, v786);
    }

    v976 = 0;
    v689 = 0;
    v971 = 0;
    goto LABEL_75;
  }

  v665 = v621;
  v666 = MEMORY[0x277CCABB0];
  v667 = objc_msgSend_event(v572, v660, v661, v662, v663);
  v672 = objc_msgSend_succeeded(v667, v668, v669, v670, v671);
  v967 = objc_msgSend_numberWithBool_(v666, v673, v672, v674, v675);

  v680 = objc_msgSend_event(v572, v676, v677, v678, v679);
  LOBYTE(v667) = objc_msgSend_succeeded(v680, v681, v682, v683, v684);

  v27 = v577;
  if (v667)
  {
    v973 = 0;
    v976 = 0;
    v689 = 0;
    v970 = 0;
    v971 = 0;
    v953 = 0;
    v954 = 0;
    v968 = 0;
    v969 = 0;
    v965 = 0;
    v966 = 0;
    v963 = 0;
LABEL_87:
    v964 = 0;
LABEL_88:
    v962 = 0;
    v690 = v946;
    goto LABEL_89;
  }

  v884 = objc_msgSend_event(v572, v685, v686, v687, v688);
  v889 = objc_msgSend_errorMessage(v884, v885, v886, v887, v888);

  v964 = v889;
  if (!objc_msgSend_localizedCaseInsensitiveContainsString_(v889, v890, @";", v891, v892))
  {
    v973 = 0;
    v976 = 0;
    v689 = 0;
    v970 = 0;
    v971 = 0;
    v953 = 0;
    v954 = 0;
    v968 = 0;
    v969 = 0;
    v965 = 0;
    v966 = 0;
    v963 = 0;
    goto LABEL_88;
  }

  v783 = objc_msgSend_componentsSeparatedByString_(v889, v893, @"", v894, v895);;
  v962 = objc_msgSend_objectAtIndexedSubscript_(v783, v896, 0, v897, v898);
  v963 = 0;
  v973 = 0;
  v976 = 0;
  v689 = 0;
  v970 = 0;
  v971 = 0;
  v953 = 0;
  v954 = 0;
  v968 = 0;
  v969 = 0;
  v965 = 0;
  v966 = 0;
LABEL_79:
  v690 = v946;

LABEL_89:
  v989 = v606;
  v990 = v665;
  v991 = v955;
  v99 = v948;
  v147 = &unk_2868010C0;
  v358 = v952;
LABEL_90:
  v993[0] = @"contextId";
  v993[1] = @"event_donator";
  v994[0] = v960;
  v994[1] = v147;
  v994[2] = v959;
  v831 = v358;
  v993[2] = @"eventId";
  v993[3] = @"lighthouseplugin_performTaskStatus_errorCode";
  if (!v358)
  {
    v831 = objc_msgSend_null(MEMORY[0x277CBEB68], v568, v569, v570, v571);
  }

  v944 = v831;
  v994[3] = v831;
  v993[4] = @"lighthouseplugin_performTaskStatus_errorDomain";
  v832 = v988;
  if (!v988)
  {
    v832 = objc_msgSend_null(MEMORY[0x277CBEB68], v568, v569, v570, v571);
  }

  v943 = v832;
  v994[4] = v832;
  v993[5] = @"lighthouseplugin_performTaskStatus_succeeded";
  v833 = v978;
  if (!v978)
  {
    v833 = objc_msgSend_null(MEMORY[0x277CBEB68], v568, v569, v570, v571);
  }

  v942 = v833;
  v994[5] = v833;
  v993[6] = @"lighthouseplugin_stop_errorCode";
  v834 = v977;
  if (!v977)
  {
    v834 = objc_msgSend_null(MEMORY[0x277CBEB68], v568, v569, v570, v571);
  }

  v941 = v834;
  v994[6] = v834;
  v993[7] = @"lighthouseplugin_stop_errorDomain";
  v835 = v359;
  if (!v359)
  {
    v835 = objc_msgSend_null(MEMORY[0x277CBEB68], v568, v569, v570, v571);
  }

  v940 = v835;
  v994[7] = v835;
  v993[8] = @"lighthouseplugin_stop_succeeded";
  v836 = v360;
  if (!v360)
  {
    v836 = objc_msgSend_null(MEMORY[0x277CBEB68], v568, v569, v570, v571);
  }

  v939 = v836;
  v994[8] = v836;
  v993[9] = @"mlruntimed_activityScheduleStatus_scheduled";
  v837 = v979;
  if (!v979)
  {
    v837 = objc_msgSend_null(MEMORY[0x277CBEB68], v568, v569, v570, v571);
  }

  v938 = v837;
  v994[9] = v837;
  v993[10] = @"mlruntimed_taskCompleted_errorCode";
  v838 = v983;
  if (!v983)
  {
    v838 = objc_msgSend_null(MEMORY[0x277CBEB68], v568, v569, v570, v571);
  }

  v937 = v838;
  v994[10] = v838;
  v993[11] = @"mlruntimed_taskCompleted_errorDomain";
  v839 = v984;
  if (!v984)
  {
    v839 = objc_msgSend_null(MEMORY[0x277CBEB68], v568, v569, v570, v571);
  }

  v936 = v839;
  v994[11] = v839;
  v993[12] = @"mlruntimed_taskCompleted_succeeded";
  v840 = v985;
  if (!v985)
  {
    v840 = objc_msgSend_null(MEMORY[0x277CBEB68], v568, v569, v570, v571);
  }

  v935 = v840;
  v994[12] = v840;
  v993[13] = @"mlruntimed_taskFetched_errorCode";
  v841 = v986;
  if (!v986)
  {
    v841 = objc_msgSend_null(MEMORY[0x277CBEB68], v568, v569, v570, v571);
  }

  v934 = v841;
  v994[13] = v841;
  v993[14] = @"mlruntimed_taskFetched_errorDomain";
  v842 = v987;
  if (!v987)
  {
    v842 = objc_msgSend_null(MEMORY[0x277CBEB68], v568, v569, v570, v571);
  }

  v933 = v842;
  v994[14] = v842;
  v993[15] = @"mlruntimed_taskFetched_succeeded";
  v843 = v664;
  if (!v664)
  {
    v843 = objc_msgSend_null(MEMORY[0x277CBEB68], v568, v569, v570, v571);
  }

  v932 = v843;
  v994[15] = v843;
  v993[16] = @"mlruntimed_taskScheduled_errorCode";
  v844 = v980;
  if (!v980)
  {
    v844 = objc_msgSend_null(MEMORY[0x277CBEB68], v568, v569, v570, v571);
  }

  v931 = v844;
  v994[16] = v844;
  v993[17] = @"mlruntimed_taskScheduled_errorDomain";
  v845 = v981;
  if (!v981)
  {
    v845 = objc_msgSend_null(MEMORY[0x277CBEB68], v568, v569, v570, v571);
  }

  v930 = v845;
  v994[17] = v845;
  v993[18] = @"mlruntimed_taskScheduled_succeeded";
  v846 = v982;
  if (!v982)
  {
    v846 = objc_msgSend_null(MEMORY[0x277CBEB68], v568, v569, v570, v571);
  }

  v929 = v846;
  v994[18] = v846;
  v993[19] = @"dprivacyd_donationReceived_succeeded";
  v847 = v976;
  if (!v976)
  {
    v847 = objc_msgSend_null(MEMORY[0x277CBEB68], v568, v569, v570, v571);
  }

  v928 = v847;
  v994[19] = v847;
  v993[20] = @"dprivacyd_donationReceived_errorMessage";
  v848 = v689;
  if (!v689)
  {
    v848 = objc_msgSend_null(MEMORY[0x277CBEB68], v568, v569, v570, v571);
  }

  v927 = v848;
  v994[20] = v848;
  v993[21] = @"dprivacyd_donationReceived_errorCode";
  v849 = v971;
  if (!v971)
  {
    v849 = objc_msgSend_null(MEMORY[0x277CBEB68], v568, v569, v570, v571);
  }

  v926 = v849;
  v994[21] = v849;
  v993[22] = @"dprivacyd_randomization_succeeded";
  v850 = v973;
  if (!v973)
  {
    v850 = objc_msgSend_null(MEMORY[0x277CBEB68], v568, v569, v570, v571);
  }

  v925 = v850;
  v994[22] = v850;
  v993[23] = @"dprivacyd_randomization_errorMessage";
  v851 = v954;
  if (!v954)
  {
    v851 = objc_msgSend_null(MEMORY[0x277CBEB68], v568, v569, v570, v571);
  }

  v924 = v851;
  v994[23] = v851;
  v993[24] = @"dprivacyd_randomization_errorCode";
  v852 = v968;
  if (!v968)
  {
    v852 = objc_msgSend_null(MEMORY[0x277CBEB68], v568, v569, v570, v571);
  }

  v923 = v852;
  v994[24] = v852;
  v993[25] = @"dprivacyd_budgetCheck_succeeded";
  v853 = v970;
  if (!v970)
  {
    v853 = objc_msgSend_null(MEMORY[0x277CBEB68], v568, v569, v570, v571);
  }

  v922 = v853;
  v994[25] = v853;
  v993[26] = @"dprivacyd_budgetCheck_errorMessage";
  v854 = v953;
  if (!v953)
  {
    v854 = objc_msgSend_null(MEMORY[0x277CBEB68], v568, v569, v570, v571);
  }

  v921 = v854;
  v994[26] = v854;
  v993[27] = @"dprivacyd_budgetCheck_errorCode";
  v855 = v965;
  if (!v965)
  {
    v855 = objc_msgSend_null(MEMORY[0x277CBEB68], v568, v569, v570, v571);
  }

  v920 = v855;
  v994[27] = v855;
  v993[28] = @"dprivacyd_payloadCreation_succeeded";
  v856 = v969;
  if (!v969)
  {
    v856 = objc_msgSend_null(MEMORY[0x277CBEB68], v568, v569, v570, v571);
  }

  v919 = v856;
  v994[28] = v856;
  v993[29] = @"dprivacyd_payloadCreation_errorMessage";
  v857 = v966;
  if (!v966)
  {
    v857 = objc_msgSend_null(MEMORY[0x277CBEB68], v568, v569, v570, v571);
  }

  v918 = v857;
  v994[29] = v857;
  v993[30] = @"dprivacyd_payloadCreation_errorCode";
  v858 = v963;
  if (!v963)
  {
    v858 = objc_msgSend_null(MEMORY[0x277CBEB68], v568, v569, v570, v571);
  }

  v917 = v858;
  v994[30] = v858;
  v993[31] = @"dprivacyd_upload_succeeded";
  v859 = v967;
  if (!v967)
  {
    v859 = objc_msgSend_null(MEMORY[0x277CBEB68], v568, v569, v570, v571);
  }

  v916 = v859;
  v994[31] = v859;
  v993[32] = @"dprivacyd_upload_errorMessage";
  v860 = v964;
  if (!v964)
  {
    v860 = objc_msgSend_null(MEMORY[0x277CBEB68], v568, v569, v570, v571);
  }

  v915 = v860;
  v994[32] = v860;
  v993[33] = @"dprivacyd_upload_errorCode";
  v861 = v962;
  if (!v962)
  {
    v861 = objc_msgSend_null(MEMORY[0x277CBEB68], v568, v569, v570, v571);
  }

  v914 = v861;
  v994[33] = v861;
  v993[34] = @"timestamp";
  v947 = v27;
  v945 = objc_msgSend_dateToTimestampStringInMSec_(LBFUtils, v568, v27, v570, v571);
  v994[34] = v945;
  v993[35] = @"triald_eventSucceeded";
  v870 = objc_msgSend_null(MEMORY[0x277CBEB68], v862, v863, v864, v865);
  v994[35] = v870;
  v993[36] = @"triald_eventType";
  v871 = v957;
  if (!v957)
  {
    v871 = objc_msgSend_null(MEMORY[0x277CBEB68], v866, v867, v868, v869);
  }

  v956 = v689;
  v994[36] = v871;
  v993[37] = @"trialIdentifiers_BMLTIdentifiers_trialDeploymentID";
  v872 = v690;
  v949 = v690;
  if (!v690)
  {
    v872 = objc_msgSend_null(MEMORY[0x277CBEB68], v866, v867, v868, v869);
  }

  v873 = v99;
  v994[37] = v872;
  v993[38] = @"trialIdentifiers_BMLTIdentifiers_trialTaskID";
  v874 = v989;
  if (!v989)
  {
    v874 = objc_msgSend_null(MEMORY[0x277CBEB68], v866, v867, v868, v869);
  }

  v994[38] = v874;
  v993[39] = @"trialIdentifiers_experimentIdentifiers_trialDeploymentID";
  v875 = v990;
  if (!v990)
  {
    v875 = objc_msgSend_null(MEMORY[0x277CBEB68], v866, v867, v868, v869);
  }

  v994[39] = v875;
  v993[40] = @"trialIdentifiers_experimentIdentifiers_trialExperimentID";
  v876 = v991;
  if (!v991)
  {
    v876 = objc_msgSend_null(MEMORY[0x277CBEB68], v866, v867, v868, v869);
  }

  v994[40] = v876;
  v993[41] = @"trialIdentifiers_experimentIdentifiers_trialTreatmentID";
  v877 = v873;
  if (!v873)
  {
    v877 = objc_msgSend_null(MEMORY[0x277CBEB68], v866, v867, v868, v869);
  }

  v994[41] = v877;
  v878 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v866, v994, v993, 42);
  if (!v873)
  {
  }

  if (!v991)
  {
  }

  if (!v990)
  {
  }

  if (!v989)
  {
  }

  if (!v949)
  {
  }

  if (!v957)
  {
  }

  if (!v962)
  {
  }

  v879 = v878;
  if (!v964)
  {

    v879 = v878;
  }

  if (!v967)
  {

    v879 = v878;
  }

  if (!v963)
  {

    v879 = v878;
  }

  if (!v966)
  {

    v879 = v878;
  }

  if (!v969)
  {

    v879 = v878;
  }

  if (v965)
  {
    if (v953)
    {
      goto LABEL_190;
    }
  }

  else
  {

    v879 = v878;
    if (v953)
    {
      goto LABEL_190;
    }
  }

  v879 = v878;
LABEL_190:
  if (!v970)
  {

    v879 = v878;
  }

  if (v968)
  {
    if (v954)
    {
      goto LABEL_194;
    }
  }

  else
  {

    v879 = v878;
    if (v954)
    {
      goto LABEL_194;
    }
  }

  v879 = v878;
LABEL_194:
  if (!v973)
  {

    v879 = v878;
  }

  if (!v971)
  {

    v879 = v878;
  }

  if (!v956)
  {

    v879 = v878;
  }

  if (!v976)
  {

    v879 = v878;
  }

  if (!v982)
  {

    v879 = v878;
  }

  if (!v981)
  {

    v879 = v878;
  }

  if (v980)
  {
    if (v958)
    {
      goto LABEL_208;
    }
  }

  else
  {

    v879 = v878;
    if (v958)
    {
      goto LABEL_208;
    }
  }

  v879 = v878;
LABEL_208:
  if (!v987)
  {

    v879 = v878;
  }

  if (!v986)
  {

    v879 = v878;
  }

  if (!v985)
  {

    v879 = v878;
  }

  if (!v984)
  {

    v879 = v878;
  }

  if (!v983)
  {

    v879 = v878;
  }

  if (v979)
  {
    if (v951)
    {
      goto LABEL_220;
    }

LABEL_235:

    v879 = v878;
    if (v950)
    {
      goto LABEL_221;
    }

    goto LABEL_236;
  }

  v879 = v878;
  if (!v951)
  {
    goto LABEL_235;
  }

LABEL_220:
  if (v950)
  {
    goto LABEL_221;
  }

LABEL_236:

  v879 = v878;
LABEL_221:
  if (!v977)
  {

    v879 = v878;
  }

  if (!v978)
  {

    v879 = v878;
  }

  if (!v988)
  {

    v879 = v878;
    if (v952)
    {
      goto LABEL_227;
    }

LABEL_238:

    v879 = v878;
    goto LABEL_227;
  }

  if (!v952)
  {
    goto LABEL_238;
  }

LABEL_227:
  v880 = v879;
  v881 = v879;

  v882 = *MEMORY[0x277D85DE8];
  return v880;
}

- (BOOL)uploadRawEventsToCoreAnalytics
{
  v20 = *MEMORY[0x277D85DE8];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v2 = self->_bitacoraEvents;
  v4 = objc_msgSend_countByEnumeratingWithState_objects_count_(v2, v3, &v15, v19, 16);
  if (v4)
  {
    v8 = v4;
    v9 = *v16;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v2);
        }

        v14 = objc_msgSend_getCAEventDictionaryFromBiomeEvent_(LBFBitacoraStateInfo, v5, *(*(&v15 + 1) + 8 * i), v6, v7);
        v11 = v14;
        AnalyticsSendEventLazy();
      }

      v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v2, v5, &v15, v19, 16);
    }

    while (v8);
  }

  v12 = *MEMORY[0x277D85DE8];
  return 1;
}

- (BOOL)uploadToDedisco
{
  v101 = *MEMORY[0x277D85DE8];
  v6 = objc_msgSend_getDictionaryRepresentation(self, a2, v2, v3, v4);
  v11 = objc_msgSend_trialIdentifiers(self, v7, v8, v9, v10);
  v16 = objc_msgSend_experimentIdentifiers(v11, v12, v13, v14, v15);

  v17 = LBFLogContextBitacoraStateInfo;
  if (v16)
  {
    if (os_log_type_enabled(LBFLogContextBitacoraStateInfo, OS_LOG_TYPE_INFO))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v6;
      _os_log_impl(&dword_255ED5000, v17, OS_LOG_TYPE_INFO, "Dedisco CA Input Dictionary: %@", &buf, 0xCu);
    }

    v22 = objc_msgSend_trialIdentifiers(self, v18, v19, v20, v21);
    v27 = objc_msgSend_experimentIdentifiers(v22, v23, v24, v25, v26);
    v32 = objc_msgSend_trialExperimentID(v27, v28, v29, v30, v31);

    v37 = objc_msgSend_trialIdentifiers(self, v33, v34, v35, v36);
    v42 = objc_msgSend_experimentIdentifiers(v37, v38, v39, v40, v41);
    v47 = objc_msgSend_trialDeploymentID(v42, v43, v44, v45, v46);

    v52 = objc_msgSend_trialIdentifiers(self, v48, v49, v50, v51);
    v57 = objc_msgSend_experimentIdentifiers(v52, v53, v54, v55, v56);
    v62 = objc_msgSend_trialTreatmentID(v57, v58, v59, v60, v61);

    v89 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v63, @"fedstats:com.apple.insights.telemetry:dprivacyd:%@:%@:%@", v64, v65, v32, v47, v62);
    v88 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v66, @"fedstats:com.apple.insights.telemetry:plugin_success:%@:%@:%@", v67, v68, v32, v47, v62);
    v72 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v69, @"fedstats:com.apple.insights.telemetry:plugin_success_time_deltas:%@:%@:%@", v70, v71, v32, v47, v62);
    v73 = LBFLogContextBitacoraStateInfo;
    if (os_log_type_enabled(LBFLogContextBitacoraStateInfo, OS_LOG_TYPE_INFO))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&dword_255ED5000, v73, OS_LOG_TYPE_INFO, "Uploading to Fedstats.", &buf, 2u);
    }

    v93 = 0;
    v94 = &v93;
    v95 = 0x2050000000;
    v74 = qword_27F817DF0;
    v96 = qword_27F817DF0;
    if (!qword_27F817DF0)
    {
      *&buf = MEMORY[0x277D85DD0];
      *(&buf + 1) = 3221225472;
      v98 = sub_255EE831C;
      v99 = &unk_2798139F0;
      v100 = &v93;
      sub_255EE831C(&buf);
      v74 = v94[3];
    }

    v75 = v74;
    _Block_object_dispose(&v93, 8);
    if (!v74 && os_log_type_enabled(LBFLogContextBitacoraStateInfo, OS_LOG_TYPE_DEBUG))
    {
      sub_255F0B07C();
    }

    v92 = 0;
    objc_msgSend_encodeDataAndRecord_dataTypeContent_baseKey_errorOut_(v74, v76, v6, &unk_2868014C0, v89, &v92);
    v77 = v92;
    if (os_log_type_enabled(LBFLogContextBitacoraStateInfo, OS_LOG_TYPE_DEBUG))
    {
      sub_255F0B0BC();
    }

    if (v77)
    {
      v79 = LBFLogContextBitacoraStateInfo;
      if (os_log_type_enabled(LBFLogContextBitacoraStateInfo, OS_LOG_TYPE_ERROR))
      {
        sub_255F0B148(v79, v77);
      }
    }

    v91 = v77;
    objc_msgSend_encodeDataAndRecord_dataTypeContent_baseKey_errorOut_(v74, v78, v6, &unk_2868016A0, v88, &v91);
    v80 = v91;

    if (os_log_type_enabled(LBFLogContextBitacoraStateInfo, OS_LOG_TYPE_DEBUG))
    {
      sub_255F0B1FC();
    }

    if (v80)
    {
      v82 = LBFLogContextBitacoraStateInfo;
      if (os_log_type_enabled(LBFLogContextBitacoraStateInfo, OS_LOG_TYPE_ERROR))
      {
        sub_255F0B288(v82, v80);
      }
    }

    v90 = v80;
    objc_msgSend_encodeDataAndRecord_dataTypeContent_baseKey_errorOut_(v74, v81, v6, &unk_286801880, v72, &v90);
    v83 = v90;

    if (os_log_type_enabled(LBFLogContextBitacoraStateInfo, OS_LOG_TYPE_DEBUG))
    {
      sub_255F0B33C();
    }

    v84 = v83 == 0;
    if (v83)
    {
      v85 = LBFLogContextBitacoraStateInfo;
      if (os_log_type_enabled(LBFLogContextBitacoraStateInfo, OS_LOG_TYPE_ERROR))
      {
        sub_255F0B3C8(v85, v83);
      }

      if (os_log_type_enabled(LBFLogContextBitacoraStateInfo, OS_LOG_TYPE_DEBUG))
      {
        sub_255F0B47C();
      }
    }
  }

  else
  {
    if (os_log_type_enabled(LBFLogContextBitacoraStateInfo, OS_LOG_TYPE_ERROR))
    {
      sub_255F0B4BC(v17);
    }

    v84 = 0;
  }

  v86 = *MEMORY[0x277D85DE8];
  return v84;
}

@end