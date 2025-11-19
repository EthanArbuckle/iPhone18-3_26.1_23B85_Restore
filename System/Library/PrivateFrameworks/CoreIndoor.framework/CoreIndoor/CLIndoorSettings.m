@interface CLIndoorSettings
+ (id)settingToSet:(id)a3;
- (CLIndoorSettings)initWithSettings:(id)a3;
- (id).cxx_construct;
- (optional<double>)indoorPrefetchClusterMergeRadius;
- (optional<double>)indoorTilePrefetchRadius;
- (optional<double>)regionalPrefetchClusterMergeRadius;
- (optional<double>)regionalTilePrefetchRadius;
- (optional<unsigned)indoorTilePrefetchMaxCount;
- (optional<unsigned)regionalTilePrefetchMaxCount;
@end

@implementation CLIndoorSettings

+ (id)settingToSet:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = a3;
  if (v3)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = objc_msgSend_setWithArray_(MEMORY[0x277CBEB98], v4, v5, v6, v7, v3);
LABEL_9:
      v9 = v8;
      goto LABEL_16;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = v3;
      goto LABEL_16;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
    {
      v8 = objc_msgSend_setWithObject_(MEMORY[0x277CBEB98], v10, v11, v12, v13, v3);
      goto LABEL_9;
    }

    if (qword_28144B270 != -1)
    {
      sub_245A8E604();
    }

    v14 = qword_28144B278;
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v19 = objc_msgSend_description(v3, v15, v16, v17, v18);
      v22 = 138543362;
      v23 = v19;
      _os_log_impl(&dword_245A2E000, v14, OS_LOG_TYPE_ERROR, "Cannot cast %{public}@ to a set", &v22, 0xCu);
    }
  }

  v9 = 0;
LABEL_16:

  v20 = *MEMORY[0x277D85DE8];

  return v9;
}

- (CLIndoorSettings)initWithSettings:(id)a3
{
  v264 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v261.receiver = self;
  v261.super_class = CLIndoorSettings;
  v6 = [(CLIndoorSettings *)&v261 init];
  if (v6)
  {
    v10 = objc_msgSend_objectForKeyedSubscript_(v4, v5, v7, v8, v9, qword_27EE330E8);
    v249 = v10;
    if (v10)
    {
      v15 = objc_msgSend_BOOLValue(v10, v11, v12, v13, v14);
    }

    else
    {
      v15 = 1;
    }

    v6->_pipelinedEnabled = v15;
    v16 = objc_msgSend_objectForKeyedSubscript_(v4, v11, v12, v13, v14, qword_27EE330F0);
    v21 = objc_msgSend_settingToSet_(CLIndoorSettings, v17, v18, v19, v20, v16);
    objc_msgSend_setDisabledVenues_(v6, v22, v23, v24, v25, v21);

    v30 = objc_msgSend_objectForKeyedSubscript_(v4, v26, v27, v28, v29, qword_27EE330F8);
    v248 = v30;
    if (v30)
    {
      objc_msgSend_doubleValue(v30, v31, v32, v33, v34);
    }

    else
    {
      v35 = 10.0;
    }

    objc_msgSend_setDebounceInterval_(v6, v31, v35, v33, v34);
    v40 = objc_msgSend_objectForKeyedSubscript_(v4, v36, v37, v38, v39, qword_27EE33100);
    v247 = v40;
    if (v40)
    {
      objc_msgSend_doubleValue(v40, v41, v42, v43, v44);
    }

    else
    {
      v45 = 5.0;
    }

    objc_msgSend_setErrorBackoffDuration_(v6, v41, v45 * 1000000000.0, 1000000000.0, v44, (v45 * 1000000000.0));
    v50 = objc_msgSend_objectForKeyedSubscript_(v4, v46, v47, v48, v49, qword_27EE33160);
    v246 = v50;
    if (v50)
    {
      v55 = objc_msgSend_intValue(v50, v51, v52, v53, v54);
    }

    else
    {
      v55 = 86400;
    }

    v6->_tilePrefetchActivityInterval.__rep_ = v55;
    v255 = objc_msgSend_objectForKeyedSubscript_(v4, v51, v52, v53, v54, qword_27EE33168);
    if (v255)
    {
      v6->_tilePrefetchPredictionActivityCycleAllowance.m_storage = objc_msgSend_unsignedIntValue(v255, v56, v57, v58, v59);
      v6->_tilePrefetchPredictionActivityCycleAllowance.m_initialized = 1;
    }

    v254 = objc_msgSend_objectForKeyedSubscript_(v4, v56, v57, v58, v59, qword_27EE33108);
    if (v254)
    {
      objc_msgSend_doubleValue(v254, v60, v61, v62, v63);
      objc_msgSend_setTilePrefetchRadius_(v6, v64, v65, v66, v67, 1, *&v65);
    }

    v253 = objc_msgSend_objectForKeyedSubscript_(v4, v60, v61, v62, v63, qword_27EE33110);
    if (v253)
    {
      objc_msgSend_doubleValue(v253, v68, v69, v70, v71);
      objc_msgSend_setTilePrefetchMaxCount_(v6, v72, v73, v74, v75, 1, v73);
    }

    v252 = objc_msgSend_objectForKeyedSubscript_(v4, v68, v69, v70, v71, qword_27EE33118);
    if (v252)
    {
      objc_msgSend_doubleValue(v252, v76, v77, v78, v79);
      objc_msgSend_setPrefetchClusterMergeRadius_(v6, v80, v81, v82, v83, 1, *&v81);
    }

    v251 = objc_msgSend_objectForKeyedSubscript_(v4, v76, v77, v78, v79, qword_27EE33120);
    if (v251)
    {
      objc_msgSend_doubleValue(v251, v84, v85, v86, v87);
      objc_msgSend_setTilePrefetchRadius_(v6, v88, v89, v90, v91, 1, *&v89);
    }

    v92 = objc_msgSend_objectForKeyedSubscript_(v4, v84, v85, v86, v87, qword_27EE33128);
    v97 = v92;
    if (v92)
    {
      objc_msgSend_doubleValue(v92, v93, v94, v95, v96);
      objc_msgSend_setTilePrefetchMaxCount_(v6, v98, v99, v100, v101, 1, v99);
    }

    v102 = objc_msgSend_objectForKeyedSubscript_(v4, v93, v94, v95, v96, qword_27EE33130);
    v107 = v102;
    if (v102)
    {
      objc_msgSend_doubleValue(v102, v103, v104, v105, v106);
      objc_msgSend_setPrefetchClusterMergeRadius_(v6, v108, v109, v110, v111, 1, *&v109);
    }

    v112 = objc_msgSend_objectForKeyedSubscript_(v4, v103, v104, v105, v106, qword_27EE33138);
    v117 = v112;
    if (v112)
    {
      objc_msgSend_doubleValue(v112, v113, v114, v115, v116);
      objc_msgSend_setRegionalTilePrefetchRadius_(v6, v118, v119, v120, v121, 1, *&v119);
    }

    v250 = objc_msgSend_objectForKeyedSubscript_(v4, v113, v114, v115, v116, qword_27EE33140);
    if (v97)
    {
      objc_msgSend_doubleValue(v250, v122, v123, v124, v125);
      objc_msgSend_setRegionalTilePrefetchMaxCount_(v6, v126, v127, v128, v129, 1, v127);
    }

    v130 = objc_msgSend_objectForKeyedSubscript_(v4, v122, v123, v124, v125, qword_27EE33148);
    v135 = v130;
    if (v130)
    {
      objc_msgSend_doubleValue(v130, v131, v132, v133, v134);
      objc_msgSend_setRegionalPrefetchClusterMergeRadius_(v6, v136, v137, v138, v139, 1, *&v137);
    }

    v6->_tilePrefetchRelevancyWindow.__rep_ = 604800;
    v140 = objc_msgSend_objectForKeyedSubscript_(v4, v131, v132, v133, v134, qword_27EE330E0);
    v145 = objc_msgSend_sharedConfiguration(MEMORY[0x277D0EB00], v141, v142, v143, v144);
    v150 = objc_msgSend_defaultForKey_defaultValue_(v145, v146, v147, v148, v149, @"CLPipelineAvailabilityServer", @"https://cl4.apple.com/2/m2/a.1/");

    if (v140)
    {
      objc_msgSend_setIndoorAvailabilityTilesServerUrl_(v6, v151, v152, v153, v154, v140);
    }

    else
    {
      objc_msgSend_setIndoorAvailabilityTilesServerUrl_(v6, v151, v152, v153, v154, v150);
    }

    if (qword_28144B270 != -1)
    {
      sub_245A8E618();
    }

    v155 = qword_28144B278;
    if (os_log_type_enabled(qword_28144B278, OS_LOG_TYPE_DEBUG))
    {
      indoorAvailabilityTilesServerUrl = v6->_indoorAvailabilityTilesServerUrl;
      *buf = 138477827;
      v263 = indoorAvailabilityTilesServerUrl;
      _os_log_impl(&dword_245A2E000, v155, OS_LOG_TYPE_DEBUG, "indoorAvailabilityTilesServerUrl = %{private}@", buf, 0xCu);
    }

    v161 = objc_msgSend_objectForKeyedSubscript_(v4, v156, v157, v158, v159, qword_27EE33150);
    v166 = objc_msgSend_settingToSet_(CLIndoorSettings, v162, v163, v164, v165, v161);
    objc_msgSend_setForcedVenues_(v6, v167, v168, v169, v170, v166);

    v175 = objc_msgSend_objectForKeyedSubscript_(v4, v171, v172, v173, v174, qword_27EE33158);
    v180 = v175;
    if (v175)
    {
      v181 = objc_msgSend_objectForKeyedSubscript_(v175, v176, v177, v178, v179, @"lat");
      objc_msgSend_doubleValue(v181, v182, v183, v184, v185);
      v259 = v186;

      v191 = objc_msgSend_objectForKeyedSubscript_(v180, v187, v188, v189, v190, @"lon");
      objc_msgSend_doubleValue(v191, v192, v193, v194, v195);
      v260 = v196;

      v201 = objc_msgSend_objectForKeyedSubscript_(v180, v197, v198, v199, v200, @"horizontalAccuracy");
      LOBYTE(v191) = v201 == 0;

      if (v191)
      {
        v257 = 0x4049000000000000;
      }

      else
      {
        v206 = objc_msgSend_objectForKeyedSubscript_(v180, v202, v203, v204, v205, @"horizontalAccuracy");
        objc_msgSend_doubleValue(v206, v207, v208, v209, v210);
        v257 = v211;
      }

      v217 = objc_msgSend_objectForKeyedSubscript_(v180, v202, v203, v204, v205, @"lifespan");
      v218 = v217 == 0;

      if (v218)
      {
        v258 = 0xBFF0000000000000;
      }

      else
      {
        v223 = objc_msgSend_objectForKeyedSubscript_(v180, v219, v220, v221, v222, @"lifespan");
        objc_msgSend_doubleValue(v223, v224, v225, v226, v227);
        v258 = v228;
      }

      v229 = [CLGpsPosition alloc];
      v234 = objc_msgSend_initWithLocation_andPrivateLocation_(v229, v230, v231, v232, v233, v256, buf);
      fakeLastFix = v6->_fakeLastFix;
      v6->_fakeLastFix = v234;
    }

    else
    {
      v212 = v6->_fakeLastFix;
      v6->_fakeLastFix = 0;
    }

    v236 = objc_msgSend_objectForKeyedSubscript_(v4, v213, v214, v215, v216, qword_27EE33170);
    v241 = v236;
    if (v236)
    {
      objc_msgSend_doubleValue(v236, v237, v238, v239, v240);
    }

    else
    {
      v242 = 250.0;
    }

    objc_msgSend_setVenueGroupDistance_(v6, v237, v242, v239, v240);
    v243 = v6;
  }

  v244 = *MEMORY[0x277D85DE8];
  return v6;
}

- (optional<double>)indoorTilePrefetchRadius
{
  m_storage = self->_indoorTilePrefetchRadius.m_storage;
  v3 = *&self->_indoorTilePrefetchRadius.m_initialized;
  result.m_storage = m_storage;
  result.m_initialized = v3;
  return result;
}

- (optional<unsigned)indoorTilePrefetchMaxCount
{
  m_storage = self->_indoorTilePrefetchMaxCount.m_storage;
  v3 = *&self->_indoorTilePrefetchMaxCount.m_initialized;
  result.m_storage = m_storage;
  result.m_initialized = v3;
  return result;
}

- (optional<double>)indoorPrefetchClusterMergeRadius
{
  m_storage = self->_indoorPrefetchClusterMergeRadius.m_storage;
  v3 = *&self->_indoorPrefetchClusterMergeRadius.m_initialized;
  result.m_storage = m_storage;
  result.m_initialized = v3;
  return result;
}

- (optional<double>)regionalTilePrefetchRadius
{
  m_storage = self->_regionalTilePrefetchRadius.m_storage;
  v3 = *&self->_regionalTilePrefetchRadius.m_initialized;
  result.m_storage = m_storage;
  result.m_initialized = v3;
  return result;
}

- (optional<unsigned)regionalTilePrefetchMaxCount
{
  m_storage = self->_regionalTilePrefetchMaxCount.m_storage;
  v3 = *&self->_regionalTilePrefetchMaxCount.m_initialized;
  result.m_storage = m_storage;
  result.m_initialized = v3;
  return result;
}

- (optional<double>)regionalPrefetchClusterMergeRadius
{
  m_storage = self->_regionalPrefetchClusterMergeRadius.m_storage;
  v3 = *&self->_regionalPrefetchClusterMergeRadius.m_initialized;
  result.m_storage = m_storage;
  result.m_initialized = v3;
  return result;
}

- (id).cxx_construct
{
  *(self + 48) = 0;
  *(self + 96) = 0;
  *(self + 112) = 0;
  *(self + 128) = 0;
  *(self + 144) = 0;
  *(self + 160) = 0;
  *(self + 176) = 0;
  *(self + 192) = 0;
  *(self + 208) = 0;
  *(self + 224) = 0;
  return self;
}

@end