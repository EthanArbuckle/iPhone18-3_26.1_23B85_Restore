@interface CLAvailabilityTileParser
+ (BOOL)generateAvlTileFromJSON:(id)a3 atPath:(id)a4;
+ (void)_setParamOverrides:(void *)a3 fromDict:(id)a4;
- (BOOL)_openTileFileForIncrementalIO;
- (CLAvailabilityTileParser)init;
- (CLAvailabilityTileParser)initWithEmptyTile;
- (CLAvailabilityTileParser)initWithTilePathIncrementalIO:(id)a3;
- (id).cxx_construct;
- (int)numVenuesExpected;
@end

@implementation CLAvailabilityTileParser

- (id).cxx_construct
{
  *(self + 1) = 0;
  *(self + 2) = 0;
  return self;
}

- (BOOL)_openTileFileForIncrementalIO
{
  path = self->_path;
  if (!path)
  {
    if (qword_28144B270 == -1)
    {
      v15 = qword_28144B278;
      if (!os_log_type_enabled(qword_28144B278, OS_LOG_TYPE_FAULT))
      {
        return 0;
      }
    }

    else
    {
      sub_245A8EBA4();
      v15 = qword_28144B278;
      if (!os_log_type_enabled(qword_28144B278, OS_LOG_TYPE_FAULT))
      {
        return 0;
      }
    }

    LOWORD(v18) = 0;
    _os_log_impl(&dword_245A2E000, v15, OS_LOG_TYPE_FAULT, "_openTileFileForIncrementalIO: Must specify a valid path to deserialize the availability tile!", &v18, 2u);
    return 0;
  }

  v6 = objc_msgSend_path(path, a2, v2, v3, v4);
  v7 = v6;
  v12 = objc_msgSend_UTF8String(v7, v8, v9, v10, v11);
  v13 = strlen(v12);
  if (v13 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_245A3C1B4();
  }

  v14 = v13;
  if (v13 >= 0x17)
  {
    operator new();
  }

  v21 = v13;
  if (v13)
  {
    memmove(&__dst, v12, v13);
  }

  *(&__dst + v14) = 0;

  sub_245A3258C(&__dst, 0, &v18);
  if (v18 > 1)
  {
    v19 = 1;
    sub_245A2FE68();
  }

  if (qword_28144B270 == -1)
  {
    v16 = qword_28144B278;
    if (!os_log_type_enabled(qword_28144B278, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  sub_245A8EB7C();
  v16 = qword_28144B278;
  if (os_log_type_enabled(qword_28144B278, OS_LOG_TYPE_ERROR))
  {
LABEL_16:
    LOWORD(v18) = 0;
    _os_log_impl(&dword_245A2E000, v16, OS_LOG_TYPE_ERROR, "_openTileFileForIncrementalIO: tile doesn't exist on-disk. attempting to deserialize will fail", &v18, 2u);
  }

LABEL_17:
  if (v21 < 0)
  {
    operator delete(__dst);
  }

  return 0;
}

- (int)numVenuesExpected
{
  if (objc_msgSend_tileIsOpenForIncrementalIO(self, a2, v2, v3, v4))
  {
    return *(self->_avlTile.__ptr_ + 14);
  }

  else
  {
    return objc_msgSend_venuesCount(self, v6, v7, v8, v9);
  }
}

- (CLAvailabilityTileParser)init
{
  v7.receiver = self;
  v7.super_class = CLAvailabilityTileParser;
  v2 = [(CLAvailabilityTileParser *)&v7 init];
  v3 = v2;
  if (!v2)
  {
    return v3;
  }

  path = v2->_path;
  v2->_path = 0;

  cntrl = v3->_avlTile.__cntrl_;
  v3->_avlTile.__ptr_ = 0;
  v3->_avlTile.__cntrl_ = 0;
  if (!cntrl || atomic_fetch_add(&cntrl->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    return v3;
  }

  (cntrl->__on_zero_shared)(cntrl);
  std::__shared_weak_count::__release_weak(cntrl);
  return v3;
}

- (CLAvailabilityTileParser)initWithEmptyTile
{
  v5.receiver = self;
  v5.super_class = CLAvailabilityTileParser;
  v2 = [(CLAvailabilityTileParser *)&v5 init];
  if (v2)
  {
    path = v2->_path;
    v2->_path = 0;

    operator new();
  }

  return 0;
}

- (CLAvailabilityTileParser)initWithTilePathIncrementalIO:(id)a3
{
  v5 = a3;
  v14.receiver = self;
  v14.super_class = CLAvailabilityTileParser;
  v6 = [(CLAvailabilityTileParser *)&v14 init];
  v7 = v6;
  if (v6 && (objc_storeStrong(&v6->_path, a3), (objc_msgSend__openTileFileForIncrementalIO(v7, v8, v9, v10, v11) & 1) == 0))
  {
    v12 = 0;
  }

  else
  {
    v12 = v7;
  }

  return v12;
}

+ (void)_setParamOverrides:(void *)a3 fromDict:(id)a4
{
  v5 = a4;
  v10 = objc_msgSend_valueForKey_(v5, v6, v7, v8, v9, @"notifyIntervalNanos");

  if (v10)
  {
    v15 = objc_msgSend_objectForKeyedSubscript_(v5, v11, v12, v13, v14, @"notifyIntervalNanos");
    v20 = objc_msgSend_unsignedIntValue(v15, v16, v17, v18, v19);
    *(a3 + 75) |= 1u;
    *(a3 + 2) = v20;
  }

  v21 = objc_msgSend_valueForKey_(v5, v11, v12, v13, v14, @"numParticles");

  if (v21)
  {
    v26 = objc_msgSend_objectForKeyedSubscript_(v5, v22, v23, v24, v25, @"numParticles");
    v31 = objc_msgSend_unsignedIntValue(v26, v27, v28, v29, v30);
    *(a3 + 75) |= 2u;
    *(a3 + 6) = v31;
  }

  v32 = objc_msgSend_valueForKey_(v5, v22, v23, v24, v25, @"localizerType");

  if (v32)
  {
    v37 = objc_msgSend_objectForKeyedSubscript_(v5, v33, v34, v35, v36, @"localizerType");
    v42 = objc_msgSend_unsignedIntValue(v37, v38, v39, v40, v41);
    *(a3 + 75) |= 4u;
    *(a3 + 7) = v42;
  }

  v43 = objc_msgSend_valueForKey_(v5, v33, v34, v35, v36, @"modeEstimator");

  if (v43)
  {
    v48 = objc_msgSend_objectForKeyedSubscript_(v5, v44, v45, v46, v47, @"modeEstimator");
    v53 = objc_msgSend_unsignedIntValue(v48, v49, v50, v51, v52);
    *(a3 + 75) |= 0x10u;
    *(a3 + 9) = v53;
  }

  v54 = objc_msgSend_valueForKey_(v5, v44, v45, v46, v47, @"confidenceFactor");

  if (v54)
  {
    v59 = objc_msgSend_objectForKeyedSubscript_(v5, v55, v56, v57, v58, @"confidenceFactor");
    objc_msgSend_floatValue(v59, v60, v61, v62, v63);
    *(a3 + 75) |= 0x20u;
    *(a3 + 10) = v64;
  }

  v65 = objc_msgSend_valueForKey_(v5, v55, v56, v57, v58, @"motionPdrUnmodelledHeadingVariancePerSecond");

  if (v65)
  {
    v70 = objc_msgSend_objectForKeyedSubscript_(v5, v66, v67, v68, v69, @"motionPdrUnmodelledHeadingVariancePerSecond");
    objc_msgSend_floatValue(v70, v71, v72, v73, v74);
    *(a3 + 75) |= 0x40u;
    *(a3 + 11) = v75;
  }

  v76 = objc_msgSend_valueForKey_(v5, v66, v67, v68, v69, @"time2dMotionVariancePerSecond");

  if (v76)
  {
    v81 = objc_msgSend_objectForKeyedSubscript_(v5, v77, v78, v79, v80, @"time2dMotionVariancePerSecond");
    objc_msgSend_floatValue(v81, v82, v83, v84, v85);
    *(a3 + 75) |= 0x800u;
    *(a3 + 24) = v86;
  }

  v87 = objc_msgSend_valueForKey_(v5, v77, v78, v79, v80, @"secondsBetweenVenueTransitions");

  if (v87)
  {
    v92 = objc_msgSend_objectForKeyedSubscript_(v5, v88, v89, v90, v91, @"secondsBetweenVenueTransitions");
    objc_msgSend_doubleValue(v92, v93, v94, v95, v96);
    *(a3 + 75) |= 0x8000u;
    *(a3 + 14) = v97;
  }

  v98 = objc_msgSend_valueForKey_(v5, v88, v89, v90, v91, @"coarseIndoorFloorSelection");

  if (v98)
  {
    v103 = objc_msgSend_objectForKeyedSubscript_(v5, v99, v100, v101, v102, @"coarseIndoorFloorSelection");
    v108 = objc_msgSend_unsignedIntValue(v103, v104, v105, v106, v107);
    *(a3 + 75) |= 1u;
    *(a3 + 2) = v108;
  }

  v109 = objc_msgSend_valueForKey_(v5, v99, v100, v101, v102, @"gpsStrobeDistance");

  if (v109)
  {
    v114 = objc_msgSend_objectForKeyedSubscript_(v5, v110, v111, v112, v113, @"gpsStrobeDistance");
    objc_msgSend_floatValue(v114, v115, v116, v117, v118);
    *(a3 + 75) |= 0x20000u;
    *(a3 + 30) = v119;
  }

  v120 = objc_msgSend_valueForKey_(v5, v110, v111, v112, v113, @"lifespanDeepIndoors");

  if (v120)
  {
    v125 = objc_msgSend_objectForKeyedSubscript_(v5, v121, v122, v123, v124, @"lifespanDeepIndoors");
    objc_msgSend_floatValue(v125, v126, v127, v128, v129);
    *(a3 + 75) |= 0x40000u;
    *(a3 + 31) = v130;
  }

  v131 = objc_msgSend_valueForKey_(v5, v121, v122, v123, v124, @"lifespanNearVenueEdge");

  if (v131)
  {
    v136 = objc_msgSend_objectForKeyedSubscript_(v5, v132, v133, v134, v135, @"lifespanNearVenueEdge");
    objc_msgSend_floatValue(v136, v137, v138, v139, v140);
    *(a3 + 75) |= 0x80000u;
    *(a3 + 32) = v141;
  }

  v142 = objc_msgSend_valueForKey_(v5, v132, v133, v134, v135, @"lifespanAuxiliary");

  if (v142)
  {
    v147 = objc_msgSend_objectForKeyedSubscript_(v5, v143, v144, v145, v146, @"lifespanAuxiliary");
    objc_msgSend_floatValue(v147, v148, v149, v150, v151);
    *(a3 + 75) |= 0x100000u;
    *(a3 + 33) = v152;
  }

  v153 = objc_msgSend_valueForKey_(v5, v143, v144, v145, v146, @"wifiLikelihoodOnMapPriorFactor");

  if (v153)
  {
    v158 = objc_msgSend_objectForKeyedSubscript_(v5, v154, v155, v156, v157, @"wifiLikelihoodOnMapPriorFactor");
    objc_msgSend_floatValue(v158, v159, v160, v161, v162);
    *(a3 + 75) |= 0x200000u;
    *(a3 + 34) = v163;
  }

  v164 = objc_msgSend_valueForKey_(v5, v154, v155, v156, v157, @"coarseIndoorRadioOddsTransform");

  if (v164)
  {
    v169 = objc_msgSend_objectForKeyedSubscript_(v5, v165, v166, v167, v168, @"coarseIndoorRadioOddsTransform");
    v174 = objc_msgSend_unsignedIntValue(v169, v170, v171, v172, v173);
    *(a3 + 75) |= 0x800000u;
    *(a3 + 35) = v174;
  }

  v175 = objc_msgSend_valueForKey_(v5, v165, v166, v167, v168, @"feasibleLocationRequiredPrbIndoor");

  if (v175)
  {
    v180 = objc_msgSend_objectForKeyedSubscript_(v5, v176, v177, v178, v179, @"feasibleLocationRequiredPrbIndoor");
    objc_msgSend_doubleValue(v180, v181, v182, v183, v184);
    *(a3 + 75) |= 0x1000000u;
    *(a3 + 19) = v185;
  }

  v186 = objc_msgSend_valueForKey_(v5, v176, v177, v178, v179, @"assignFloorWeightsByLikelihood");

  if (v186)
  {
    v191 = objc_msgSend_objectForKeyedSubscript_(v5, v187, v188, v189, v190, @"assignFloorWeightsByLikelihood");
    v196 = objc_msgSend_BOOLValue(v191, v192, v193, v194, v195);
    *(a3 + 75) |= 0x10000000u;
    *(a3 + 192) = v196;
  }

  v197 = objc_msgSend_valueForKey_(v5, v187, v188, v189, v190, @"priorOnMapWeightFraction");

  if (v197)
  {
    v202 = objc_msgSend_objectForKeyedSubscript_(v5, v198, v199, v200, v201, @"priorOnMapWeightFraction");
    objc_msgSend_doubleValue(v202, v203, v204, v205, v206);
    *(a3 + 75) |= 0x20000000u;
    *(a3 + 23) = v207;
  }

  v208 = objc_msgSend_valueForKey_(v5, v198, v199, v200, v201, @"enableBaroAidedFloorTransition");

  if (v208)
  {
    v213 = objc_msgSend_objectForKeyedSubscript_(v5, v209, v210, v211, v212, @"enableBaroAidedFloorTransition");
    v218 = objc_msgSend_BOOLValue(v213, v214, v215, v216, v217);
    *(a3 + 75) |= 0x40000000u;
    *(a3 + 193) = v218;
  }

  v219 = objc_msgSend_valueForKey_(v5, v209, v210, v211, v212, @"time2dMotionVariancePerSecondWifi2");

  if (v219)
  {
    v224 = objc_msgSend_objectForKeyedSubscript_(v5, v220, v221, v222, v223, @"time2dMotionVariancePerSecondWifi2");
    objc_msgSend_floatValue(v224, v225, v226, v227, v228);
    *(a3 + 75) |= 0x80000000;
    *(a3 + 49) = v229;
  }

  v230 = objc_msgSend_valueForKey_(v5, v220, v221, v222, v223, @"bilinearObservations");

  if (v230)
  {
    v235 = objc_msgSend_objectForKeyedSubscript_(v5, v231, v232, v233, v234, @"bilinearObservations");
    v240 = objc_msgSend_BOOLValue(v235, v236, v237, v238, v239);
    *(a3 + 76) |= 2u;
    *(a3 + 194) = v240;
  }

  v241 = objc_msgSend_valueForKey_(v5, v231, v232, v233, v234, @"walkableBlueDotSearchRadius");

  if (v241)
  {
    v246 = objc_msgSend_objectForKeyedSubscript_(v5, v242, v243, v244, v245, @"walkableBlueDotSearchRadius");
    objc_msgSend_floatValue(v246, v247, v248, v249, v250);
    *(a3 + 76) |= 0x10u;
    *(a3 + 56) = v251;
  }

  v252 = objc_msgSend_valueForKey_(v5, v242, v243, v244, v245, @"motionPdrUnmodelledHeadingVariancePerSecondWifi2");

  if (v252)
  {
    v257 = objc_msgSend_objectForKeyedSubscript_(v5, v253, v254, v255, v256, @"motionPdrUnmodelledHeadingVariancePerSecondWifi2");
    objc_msgSend_floatValue(v257, v258, v259, v260, v261);
    *(a3 + 76) |= 0x40u;
    *(a3 + 57) = v262;
  }

  v263 = objc_msgSend_valueForKey_(v5, v253, v254, v255, v256, @"particleFilterOffMapProbabilityFloor");

  if (v263)
  {
    v268 = objc_msgSend_objectForKeyedSubscript_(v5, v264, v265, v266, v267, @"particleFilterOffMapProbabilityFloor");
    objc_msgSend_floatValue(v268, v269, v270, v271, v272);
    *(a3 + 76) |= 0x100u;
    *(a3 + 62) = v273;
  }

  v274 = objc_msgSend_valueForKey_(v5, v264, v265, v266, v267, @"coarseOutdoorProbabilityFloor");

  if (v274)
  {
    v279 = objc_msgSend_objectForKeyedSubscript_(v5, v275, v276, v277, v278, @"coarseOutdoorProbabilityFloor");
    objc_msgSend_floatValue(v279, v280, v281, v282, v283);
    *(a3 + 76) |= 0x200u;
    *(a3 + 63) = v284;
  }

  v285 = objc_msgSend_valueForKey_(v5, v275, v276, v277, v278, @"pdr");

  if (v285)
  {
    if (qword_28144B270 == -1)
    {
      v290 = qword_28144B278;
      if (!os_log_type_enabled(v290, OS_LOG_TYPE_DEFAULT))
      {
LABEL_55:

        goto LABEL_56;
      }
    }

    else
    {
      sub_245A8EBA4();
      v290 = qword_28144B278;
      if (!os_log_type_enabled(v290, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_55;
      }
    }

    *v377 = 0;
    _os_log_impl(&dword_245A2E000, v290, OS_LOG_TYPE_DEFAULT, "@IndoorAvl, generateAvlTileFromJSON, #warning pdr is not currently supported", v377, 2u);
    goto LABEL_55;
  }

LABEL_56:
  v291 = objc_msgSend_valueForKey_(v5, v286, v287, v288, v289, @"pedomCompassMotionWifi2");

  if (!v291)
  {
    goto LABEL_61;
  }

  if (qword_28144B270 != -1)
  {
    sub_245A8EB7C();
    v296 = qword_28144B278;
    if (!os_log_type_enabled(v296, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_60;
    }

    goto LABEL_59;
  }

  v296 = qword_28144B278;
  if (os_log_type_enabled(v296, OS_LOG_TYPE_DEFAULT))
  {
LABEL_59:
    *v377 = 0;
    _os_log_impl(&dword_245A2E000, v296, OS_LOG_TYPE_DEFAULT, "@IndoorAvl, generateAvlTileFromJSON, #warning pedomCompassMotionWifi2 is not currently supported", v377, 2u);
  }

LABEL_60:

LABEL_61:
  v297 = objc_msgSend_valueForKey_(v5, v292, v293, v294, v295, @"deadReckoning");

  if (!v297)
  {
    goto LABEL_66;
  }

  if (qword_28144B270 != -1)
  {
    sub_245A8EB7C();
    v302 = qword_28144B278;
    if (!os_log_type_enabled(v302, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_65;
    }

    goto LABEL_64;
  }

  v302 = qword_28144B278;
  if (os_log_type_enabled(v302, OS_LOG_TYPE_DEFAULT))
  {
LABEL_64:
    *v377 = 0;
    _os_log_impl(&dword_245A2E000, v302, OS_LOG_TYPE_DEFAULT, "@IndoorAvl, generateAvlTileFromJSON, #warning deadReckoning is not currently supported", v377, 2u);
  }

LABEL_65:

LABEL_66:
  v303 = objc_msgSend_valueForKey_(v5, v298, v299, v300, v301, @"coarseIndoor");

  if (!v303)
  {
    goto LABEL_71;
  }

  if (qword_28144B270 != -1)
  {
    sub_245A8EB7C();
    v308 = qword_28144B278;
    if (!os_log_type_enabled(v308, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_70;
    }

    goto LABEL_69;
  }

  v308 = qword_28144B278;
  if (os_log_type_enabled(v308, OS_LOG_TYPE_DEFAULT))
  {
LABEL_69:
    *v377 = 0;
    _os_log_impl(&dword_245A2E000, v308, OS_LOG_TYPE_DEFAULT, "@IndoorAvl, generateAvlTileFromJSON, #warning coarseIndoor is not currently supported", v377, 2u);
  }

LABEL_70:

LABEL_71:
  v309 = objc_msgSend_valueForKey_(v5, v304, v305, v306, v307, @"gpsFusionGlobalParams");

  if (!v309)
  {
    goto LABEL_76;
  }

  if (qword_28144B270 != -1)
  {
    sub_245A8EB7C();
    v314 = qword_28144B278;
    if (!os_log_type_enabled(v314, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_75;
    }

    goto LABEL_74;
  }

  v314 = qword_28144B278;
  if (os_log_type_enabled(v314, OS_LOG_TYPE_DEFAULT))
  {
LABEL_74:
    *v377 = 0;
    _os_log_impl(&dword_245A2E000, v314, OS_LOG_TYPE_DEFAULT, "@IndoorAvl, generateAvlTileFromJSON, #warning gpsFusionGlobalParams is not currently supported", v377, 2u);
  }

LABEL_75:

LABEL_76:
  v315 = objc_msgSend_valueForKey_(v5, v310, v311, v312, v313, @"wifi");

  if (!v315)
  {
    goto LABEL_81;
  }

  if (qword_28144B270 != -1)
  {
    sub_245A8EB7C();
    v320 = qword_28144B278;
    if (!os_log_type_enabled(v320, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_80;
    }

    goto LABEL_79;
  }

  v320 = qword_28144B278;
  if (os_log_type_enabled(v320, OS_LOG_TYPE_DEFAULT))
  {
LABEL_79:
    *v377 = 0;
    _os_log_impl(&dword_245A2E000, v320, OS_LOG_TYPE_DEFAULT, "@IndoorAvl, generateAvlTileFromJSON, #warning wifi is not currently supported", v377, 2u);
  }

LABEL_80:

LABEL_81:
  v321 = objc_msgSend_valueForKey_(v5, v316, v317, v318, v319, @"bodyFixed");

  if (!v321)
  {
    goto LABEL_86;
  }

  if (qword_28144B270 != -1)
  {
    sub_245A8EB7C();
    v326 = qword_28144B278;
    if (!os_log_type_enabled(v326, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_85;
    }

    goto LABEL_84;
  }

  v326 = qword_28144B278;
  if (os_log_type_enabled(v326, OS_LOG_TYPE_DEFAULT))
  {
LABEL_84:
    *v377 = 0;
    _os_log_impl(&dword_245A2E000, v326, OS_LOG_TYPE_DEFAULT, "@IndoorAvl, generateAvlTileFromJSON, #warning bodyFixed is not currently supported", v377, 2u);
  }

LABEL_85:

LABEL_86:
  v327 = objc_msgSend_valueForKey_(v5, v322, v323, v324, v325, @"motionTruth");

  if (!v327)
  {
    goto LABEL_91;
  }

  if (qword_28144B270 != -1)
  {
    sub_245A8EB7C();
    v332 = qword_28144B278;
    if (!os_log_type_enabled(v332, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_90;
    }

    goto LABEL_89;
  }

  v332 = qword_28144B278;
  if (os_log_type_enabled(v332, OS_LOG_TYPE_DEFAULT))
  {
LABEL_89:
    *v377 = 0;
    _os_log_impl(&dword_245A2E000, v332, OS_LOG_TYPE_DEFAULT, "@IndoorAvl, generateAvlTileFromJSON, #warning motionTruth is not currently supported", v377, 2u);
  }

LABEL_90:

LABEL_91:
  v333 = objc_msgSend_valueForKey_(v5, v328, v329, v330, v331, @"multiphoneDbm");

  if (!v333)
  {
    goto LABEL_96;
  }

  if (qword_28144B270 != -1)
  {
    sub_245A8EB7C();
    v338 = qword_28144B278;
    if (!os_log_type_enabled(v338, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_95;
    }

    goto LABEL_94;
  }

  v338 = qword_28144B278;
  if (os_log_type_enabled(v338, OS_LOG_TYPE_DEFAULT))
  {
LABEL_94:
    *v377 = 0;
    _os_log_impl(&dword_245A2E000, v338, OS_LOG_TYPE_DEFAULT, "@IndoorAvl, generateAvlTileFromJSON, #warning multiphoneDbm is not currently supported", v377, 2u);
  }

LABEL_95:

LABEL_96:
  v339 = objc_msgSend_valueForKey_(v5, v334, v335, v336, v337, @"pedomCompassMotion");

  if (!v339)
  {
    goto LABEL_101;
  }

  if (qword_28144B270 != -1)
  {
    sub_245A8EB7C();
    v344 = qword_28144B278;
    if (!os_log_type_enabled(v344, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_100;
    }

    goto LABEL_99;
  }

  v344 = qword_28144B278;
  if (os_log_type_enabled(v344, OS_LOG_TYPE_DEFAULT))
  {
LABEL_99:
    *v377 = 0;
    _os_log_impl(&dword_245A2E000, v344, OS_LOG_TYPE_DEFAULT, "@IndoorAvl, generateAvlTileFromJSON, #warning pedomCompassMotion is not currently supported", v377, 2u);
  }

LABEL_100:

LABEL_101:
  v345 = objc_msgSend_valueForKey_(v5, v340, v341, v342, v343, @"injection");

  if (!v345)
  {
    goto LABEL_106;
  }

  if (qword_28144B270 != -1)
  {
    sub_245A8EB7C();
    v350 = qword_28144B278;
    if (!os_log_type_enabled(v350, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_105;
    }

    goto LABEL_104;
  }

  v350 = qword_28144B278;
  if (os_log_type_enabled(v350, OS_LOG_TYPE_DEFAULT))
  {
LABEL_104:
    *v377 = 0;
    _os_log_impl(&dword_245A2E000, v350, OS_LOG_TYPE_DEFAULT, "@IndoorAvl, generateAvlTileFromJSON, #warning injection is not currently supported", v377, 2u);
  }

LABEL_105:

LABEL_106:
  v351 = objc_msgSend_valueForKey_(v5, v346, v347, v348, v349, @"beacon");

  if (!v351)
  {
    goto LABEL_111;
  }

  if (qword_28144B270 != -1)
  {
    sub_245A8EB7C();
    v356 = qword_28144B278;
    if (!os_log_type_enabled(v356, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_110;
    }

    goto LABEL_109;
  }

  v356 = qword_28144B278;
  if (os_log_type_enabled(v356, OS_LOG_TYPE_DEFAULT))
  {
LABEL_109:
    *v377 = 0;
    _os_log_impl(&dword_245A2E000, v356, OS_LOG_TYPE_DEFAULT, "@IndoorAvl, generateAvlTileFromJSON, #warning beacon is not currently supported", v377, 2u);
  }

LABEL_110:

LABEL_111:
  v357 = objc_msgSend_valueForKey_(v5, v352, v353, v354, v355, @"wallBehavior");

  if (!v357)
  {
    goto LABEL_116;
  }

  if (qword_28144B270 != -1)
  {
    sub_245A8EB7C();
    v362 = qword_28144B278;
    if (!os_log_type_enabled(v362, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_115;
    }

    goto LABEL_114;
  }

  v362 = qword_28144B278;
  if (os_log_type_enabled(v362, OS_LOG_TYPE_DEFAULT))
  {
LABEL_114:
    *v377 = 0;
    _os_log_impl(&dword_245A2E000, v362, OS_LOG_TYPE_DEFAULT, "@IndoorAvl, generateAvlTileFromJSON, #warning wallBehavior is not currently supported", v377, 2u);
  }

LABEL_115:

LABEL_116:
  v363 = objc_msgSend_valueForKey_(v5, v358, v359, v360, v361, @"dynamicUniverseParameters");

  if (!v363)
  {
    goto LABEL_121;
  }

  if (qword_28144B270 != -1)
  {
    sub_245A8EB7C();
    v368 = qword_28144B278;
    if (!os_log_type_enabled(v368, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_120;
    }

    goto LABEL_119;
  }

  v368 = qword_28144B278;
  if (os_log_type_enabled(v368, OS_LOG_TYPE_DEFAULT))
  {
LABEL_119:
    *v377 = 0;
    _os_log_impl(&dword_245A2E000, v368, OS_LOG_TYPE_DEFAULT, "@IndoorAvl, generateAvlTileFromJSON, #warning dynamicUniverseParameters is not currently supported", v377, 2u);
  }

LABEL_120:

LABEL_121:
  v369 = objc_msgSend_valueForKey_(v5, v364, v365, v366, v367, @"dynamicUniverseParameters");

  if (!v369)
  {
    goto LABEL_126;
  }

  if (qword_28144B270 != -1)
  {
    sub_245A8EB7C();
    v374 = qword_28144B278;
    if (!os_log_type_enabled(v374, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_125;
    }

    goto LABEL_124;
  }

  v374 = qword_28144B278;
  if (os_log_type_enabled(v374, OS_LOG_TYPE_DEFAULT))
  {
LABEL_124:
    *v377 = 0;
    _os_log_impl(&dword_245A2E000, v374, OS_LOG_TYPE_DEFAULT, "@IndoorAvl, generateAvlTileFromJSON, #warning dynamicUniverseParameters is not currently supported", v377, 2u);
  }

LABEL_125:

LABEL_126:
  v375 = objc_msgSend_valueForKey_(v5, v370, v371, v372, v373, @"altitude");

  if (v375)
  {
    if (qword_28144B270 == -1)
    {
      v376 = qword_28144B278;
      if (!os_log_type_enabled(v376, OS_LOG_TYPE_DEFAULT))
      {
LABEL_130:

        goto LABEL_131;
      }
    }

    else
    {
      sub_245A8EB7C();
      v376 = qword_28144B278;
      if (!os_log_type_enabled(v376, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_130;
      }
    }

    *v377 = 0;
    _os_log_impl(&dword_245A2E000, v376, OS_LOG_TYPE_DEFAULT, "@IndoorAvl, generateAvlTileFromJSON, #warning altitude is not currently supported", v377, 2u);
    goto LABEL_130;
  }

LABEL_131:
}

+ (BOOL)generateAvlTileFromJSON:(id)a3 atPath:(id)a4
{
  v511 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v464 = v5;
  v458 = v6;
  if (v5)
  {
    if (v6)
    {
      objc_msgSend_dataUsingEncoding_(v5, v7, v8, v9, v10, 4);
      v457 = v488 = 0;
      v463 = objc_msgSend_JSONObjectWithData_options_error_(MEMORY[0x277CCAAA0], v11, v12, v13, v14);
      v460 = 0;
      if (v460)
      {
        if (qword_28144B270 != -1)
        {
          sub_245A8EB7C();
        }

        log = qword_28144B278;
        if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
        {
          v23 = objc_msgSend_description(v460, v19, v20, v21, v22);
          v24 = v23;
          v29 = objc_msgSend_UTF8String(v23, v25, v26, v27, v28);
          v30 = v464;
          v35 = objc_msgSend_UTF8String(v464, v31, v32, v33, v34);
          *buf = 136315394;
          *&buf[4] = v29;
          *&buf[12] = 2080;
          *&buf[14] = v35;
          _os_log_impl(&dword_245A2E000, log, OS_LOG_TYPE_ERROR, "@IndoorAvl, generateAvlTileFromJSON, failed to generate, error=%s, str=\n%s\n", buf, 0x16u);
        }

        v36 = 0;
      }

      else
      {
        v37 = objc_msgSend_objectForKey_(v463, v15, v16, v17, v18, @"venues");
        v456 = v37;
        if (v37)
        {
          if (objc_msgSend_count(v37, v38, v39, v40, v41))
          {
            sub_245A327F8(buf);
            if (qword_28144B270 != -1)
            {
              sub_245A8EB7C();
            }

            v42 = qword_28144B278;
            if (os_log_type_enabled(v42, OS_LOG_TYPE_DEBUG))
            {
              v47 = objc_msgSend_count(v456, v43, v44, v45, v46);
              LODWORD(v489[0]) = 134217984;
              *(v489 + 4) = v47;
              _os_log_impl(&dword_245A2E000, v42, OS_LOG_TYPE_DEBUG, "@IndoorAvl, generateAvlTileFromJSON, adding %lu venues", v489, 0xCu);
            }

            v486 = 0u;
            v487 = 0u;
            v484 = 0u;
            v485 = 0u;
            log = v456;
            v454 = objc_msgSend_countByEnumeratingWithState_objects_count_(log, v48, v49, v50, v51, &v484, v493, 16);
            if (v454)
            {
              v455 = *v485;
              v55 = 134217984;
              do
              {
                for (i = 0; i != v454; ++i)
                {
                  if (*v485 != v455)
                  {
                    objc_enumerationMutation(log);
                  }

                  v462 = *(*(&v484 + 1) + 8 * i);
                  v56 = *v495;
                  v57 = *&buf[24];
                  if (*&buf[24] >= *v495)
                  {
                    if (*v495 == *&v495[4])
                    {
                      wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve(&buf[16]);
                      v56 = *v495;
                    }

                    *v495 = v56 + 1;
                    operator new();
                  }

                  ++*&buf[24];
                  v58 = *(*&buf[16] + 8 * v57);
                  v59 = objc_msgSend_objectForKey_(v462, v52, *&v55, v53, v54, @"exteriors");
                  v482 = 0u;
                  v483 = 0u;
                  v480 = 0u;
                  v481 = 0u;
                  obj = v59;
                  v64 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v60, v61, v62, v63, &v480, v492, 16);
                  if (v64)
                  {
                    v466 = *v481;
                    do
                    {
                      v467 = v64;
                      for (j = 0; j != v467; ++j)
                      {
                        if (*v481 != v466)
                        {
                          objc_enumerationMutation(obj);
                        }

                        v70 = *(*(&v480 + 1) + 8 * j);
                        v71 = *(v58 + 52);
                        v72 = *(v58 + 48);
                        if (v72 >= v71)
                        {
                          if (v71 == *(v58 + 56))
                          {
                            wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v58 + 40));
                            v71 = *(v58 + 52);
                          }

                          *(v58 + 52) = v71 + 1;
                          operator new();
                        }

                        v73 = *(v58 + 40);
                        *(v58 + 48) = v72 + 1;
                        v74 = *(v73 + 8 * v72);
                        v75 = objc_msgSend_objectForKey_(v70, v65, v66, v67, v68, @"latitude");
                        v468 = v70;
                        v80 = objc_msgSend_objectForKey_(v70, v76, v77, v78, v79, @"longitude");
                        if (qword_28144B270 != -1)
                        {
                          sub_245A8EB7C();
                        }

                        v81 = qword_28144B278;
                        if (os_log_type_enabled(v81, OS_LOG_TYPE_DEBUG))
                        {
                          v86 = objc_msgSend_count(v75, v82, v83, v84, v85);
                          LODWORD(v489[0]) = 134217984;
                          *(v489 + 4) = v86;
                          _os_log_impl(&dword_245A2E000, v81, OS_LOG_TYPE_DEBUG, "@IndoorAvl, generateAvlTileFromJSON, adding %lu exterior points", v489, 0xCu);
                        }

                        for (k = 0; k < objc_msgSend_count(v75, v87, v88, v89, v90); ++k)
                        {
                          v96 = objc_msgSend_objectAtIndex_(v75, v92, v93, v94, v95, k);
                          objc_msgSend_doubleValue(v96, v97, v98, v99, v100);
                          v102 = *(v74 + 24);
                          v103 = *(v74 + 16);
                          if (v102 == *(v74 + 28))
                          {
                            if (2 * v102 <= v102 + 1)
                            {
                              v104 = v102 + 1;
                            }

                            else
                            {
                              v104 = 2 * v102;
                            }

                            if (v104 <= 4)
                            {
                              v104 = 4;
                            }

                            *(v74 + 28) = v104;
                            operator new[]();
                          }

                          v105 = *(v74 + 16);
                          *(v74 + 24) = v102 + 1;
                          *(v105 + 8 * v102) = v101;

                          v110 = objc_msgSend_objectAtIndex_(v80, v106, v107, v108, v109, k);
                          objc_msgSend_doubleValue(v110, v111, v112, v113, v114);
                          v116 = *(v74 + 48);
                          v117 = *(v74 + 40);
                          if (v116 == *(v74 + 52))
                          {
                            if (2 * v116 <= v116 + 1)
                            {
                              v118 = v116 + 1;
                            }

                            else
                            {
                              v118 = 2 * v116;
                            }

                            if (v118 <= 4)
                            {
                              v118 = 4;
                            }

                            *(v74 + 52) = v118;
                            operator new[]();
                          }

                          v119 = *(v74 + 40);
                          *(v74 + 48) = v116 + 1;
                          *(v119 + 8 * v116) = v115;
                        }

                        v120 = objc_msgSend_valueForKey_(v468, v92, v93, v94, v95, @"tolerance");
                        objc_msgSend_doubleValue(v120, v121, v122, v123, v124);
                        *(v74 + 76) |= 4u;
                        *(v74 + 64) = v125;
                      }

                      v64 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v65, v66, v67, v68, &v480, v492, 16);
                    }

                    while (v64);
                  }

                  v478 = 0u;
                  v479 = 0u;
                  v477 = 0u;
                  v476 = 0u;
                  v129 = objc_msgSend_objectForKey_(v462, v126, 0.0, v127, v128, @"ids");
                  v134 = objc_msgSend_countByEnumeratingWithState_objects_count_(v129, v130, v131, v132, v133, &v476, v491, 16);
                  if (v134)
                  {
                    v135 = *v477;
                    do
                    {
                      for (m = 0; m != v134; ++m)
                      {
                        if (*v477 != v135)
                        {
                          objc_enumerationMutation(v129);
                        }

                        v137 = *(*(&v476 + 1) + 8 * m);
                        v138 = v137;
                        v143 = objc_msgSend_UTF8String(v137, v139, v140, v141, v142);
                        v144 = v143;
                        v145 = *(v58 + 28);
                        v146 = *(v58 + 24);
                        if (v146 >= v145)
                        {
                          if (v145 == *(v58 + 32))
                          {
                            v143 = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v58 + 16));
                            v145 = *(v58 + 28);
                          }

                          *(v58 + 28) = v145 + 1;
                          v148 = wireless_diagnostics::google::protobuf::internal::StringTypeHandlerBase::New(v143);
                          v149 = *(v58 + 16);
                          v150 = *(v58 + 24);
                          *(v58 + 24) = v150 + 1;
                          *(v149 + 8 * v150) = v148;
                        }

                        else
                        {
                          v147 = *(v58 + 16);
                          *(v58 + 24) = v146 + 1;
                          v148 = *(v147 + 8 * v146);
                        }

                        MEMORY[0x245D78760](v148, v144);
                        if (qword_28144B270 != -1)
                        {
                          sub_245A8EB7C();
                        }

                        v151 = qword_28144B278;
                        if (os_log_type_enabled(v151, OS_LOG_TYPE_DEBUG))
                        {
                          v152 = v137;
                          v157 = objc_msgSend_UTF8String(v137, v153, v154, v155, v156);
                          LODWORD(v489[0]) = 136315138;
                          *(v489 + 4) = v157;
                          _os_log_impl(&dword_245A2E000, v151, OS_LOG_TYPE_DEBUG, "@IndoorAvl, generateAvlTileFromJSON, added venue ID %s", v489, 0xCu);
                        }
                      }

                      v134 = objc_msgSend_countByEnumeratingWithState_objects_count_(v129, v158, v159, v160, v161, &v476, v491, 16);
                    }

                    while (v134);
                  }

                  v166 = objc_msgSend_valueForKey_(v462, v162, v163, v164, v165, @"context");
                  v171 = objc_msgSend_intValue(v166, v167, v168, v169, v170);

                  if ((v171 - 1) < 2)
                  {
                    *(v58 + 104) |= 8u;
                    *(v58 + 96) = v171;
                  }

                  v176 = objc_msgSend_objectForKey_(v462, v172, v173, v174, v175, @"tileDownloadConfiguration");
                  v181 = objc_msgSend_objectForKey_(v176, v177, v178, v179, v180, @"floorIdxsForWifiDownloadOnly");
                  *(v58 + 104) |= 4u;
                  v182 = *(v58 + 64);
                  if (!v182)
                  {
                    operator new();
                  }

                  v474 = 0u;
                  v475 = 0u;
                  v472 = 0u;
                  v473 = 0u;
                  v183 = v181;
                  v189 = objc_msgSend_countByEnumeratingWithState_objects_count_(v183, v184, v185, v186, v187, &v472, v490, 16);
                  if (v189)
                  {
                    v193 = *v473;
                    do
                    {
                      for (n = 0; n != v189; ++n)
                      {
                        if (*v473 != v193)
                        {
                          objc_enumerationMutation(v183);
                        }

                        v196 = objc_msgSend_unsignedIntValue(*(*(&v472 + 1) + 8 * n), v188, v190, v191, v192);
                        v197 = *(v182 + 24);
                        v198 = *(v182 + 16);
                        if (v197 == *(v182 + 28))
                        {
                          if (2 * v197 <= v197 + 1)
                          {
                            v199 = v197 + 1;
                          }

                          else
                          {
                            v199 = 2 * v197;
                          }

                          if (v199 <= 4)
                          {
                            v199 = 4;
                          }

                          *(v182 + 28) = v199;
                          operator new[]();
                        }

                        v195 = *(v182 + 16);
                        *(v182 + 24) = v197 + 1;
                        *(v195 + 4 * v197) = v196;
                      }

                      v189 = objc_msgSend_countByEnumeratingWithState_objects_count_(v183, v188, v190, v191, v192, &v472, v490, 16);
                    }

                    while (v189);
                  }
                }

                v454 = objc_msgSend_countByEnumeratingWithState_objects_count_(log, v52, *&v55, v53, v54, &v484, v493, 16);
              }

              while (v454);
            }

            v204 = objc_msgSend_valueForKey_(v463, v200, v201, v202, v203, @"parameterOverrides");
            v205 = v204 == 0;

            if (!v205)
            {
              v510 |= 2u;
              v210 = v496;
              if (!v496)
              {
                operator new();
              }

              v211 = objc_msgSend_objectForKeyedSubscript_(v463, v206, v207, v208, v209, @"parameterOverrides");
              objc_msgSend__setParamOverrides_fromDict_(CLAvailabilityTileParser, v212, v213, v214, v215, v210, v211);
            }

            v216 = objc_msgSend_objectForKey_(v463, v206, v207, v208, v209, @"motionActivityDebounceParameters");
            v217 = v216 == 0;

            if (!v217)
            {
              v222 = objc_msgSend_objectForKey_(v463, v218, v219, v220, v221, @"motionActivityDebounceParameters");
              v227 = objc_msgSend_valueForKey_(v222, v223, v224, v225, v226, @"nonFitnessToCyclingSeconds");
              v228 = v227 == 0;

              if (!v228)
              {
                v510 |= 0x4000u;
                v233 = v508;
                if (!v508)
                {
                  operator new();
                }

                v234 = objc_msgSend_valueForKey_(v222, v229, v230, v231, v232, @"nonFitnessToCyclingSeconds");
                v239 = objc_msgSend_unsignedIntValue(v234, v235, v236, v237, v238);
                *(v233 + 36) |= 1u;
                *(v233 + 16) = v239;
              }

              v240 = objc_msgSend_valueForKey_(v222, v229, v230, v231, v232, @"nonFitnessToRunningSeconds");
              v241 = v240 == 0;

              if (!v241)
              {
                v510 |= 0x4000u;
                v246 = v508;
                if (!v508)
                {
                  operator new();
                }

                v247 = objc_msgSend_valueForKey_(v222, v242, v243, v244, v245, @"nonFitnessToRunningSeconds");
                v252 = objc_msgSend_unsignedIntValue(v247, v248, v249, v250, v251);
                *(v246 + 36) |= 2u;
                *(v246 + 20) = v252;
              }

              v253 = objc_msgSend_valueForKey_(v222, v242, v243, v244, v245, @"runningToNonFitnessSeconds");
              v254 = v253 == 0;

              if (!v254)
              {
                v510 |= 0x4000u;
                v259 = v508;
                if (!v508)
                {
                  operator new();
                }

                v260 = objc_msgSend_valueForKey_(v222, v255, v256, v257, v258, @"runningToNonFitnessSeconds");
                v265 = objc_msgSend_unsignedIntValue(v260, v261, v262, v263, v264);
                *(v259 + 36) |= 4u;
                *(v259 + 24) = v265;
              }

              v266 = objc_msgSend_valueForKey_(v222, v255, v256, v257, v258, @"cyclingToNonFitnessSeconds");
              v267 = v266 == 0;

              if (!v267)
              {
                v510 |= 0x4000u;
                v272 = v508;
                if (!v508)
                {
                  operator new();
                }

                v273 = objc_msgSend_valueForKey_(v222, v268, v269, v270, v271, @"cyclingToNonFitnessSeconds");
                v278 = objc_msgSend_unsignedIntValue(v273, v274, v275, v276, v277);
                *(v272 + 36) |= 8u;
                *(v272 + 28) = v278;
              }
            }

            v279 = objc_msgSend_valueForKey_(v463, v218, v219, v220, v221, @"availabilityZScoreConfidenceInterval");
            v280 = v279 == 0;

            if (!v280)
            {
              v285 = objc_msgSend_valueForKey_(v463, v281, v282, v283, v284, @"availabilityZScoreConfidenceInterval");
              objc_msgSend_doubleValue(v285, v286, v287, v288, v289);
              v510 |= 4u;
              v497 = v290;
            }

            v291 = objc_msgSend_valueForKey_(v463, v281, v282, v283, v284, @"indoorPrefetchRadiusKM");
            v292 = v291 == 0;

            if (!v292)
            {
              v297 = objc_msgSend_valueForKey_(v463, v293, v294, v295, v296, @"indoorPrefetchRadiusKM");
              v302 = objc_msgSend_unsignedIntValue(v297, v298, v299, v300, v301);
              v510 |= 8u;
              v498 = v302;
            }

            v303 = objc_msgSend_valueForKey_(v463, v293, v294, v295, v296, @"regionalPrefetchRadiusKM");
            v304 = v303 == 0;

            if (!v304)
            {
              v309 = objc_msgSend_valueForKey_(v463, v305, v306, v307, v308, @"regionalPrefetchRadiusKM");
              v314 = objc_msgSend_unsignedIntValue(v309, v310, v311, v312, v313);
              v510 |= 0x10u;
              v499 = v314;
            }

            v315 = objc_msgSend_valueForKey_(v463, v305, v306, v307, v308, @"indoorPrefetchMaxFloorCount");
            v316 = v315 == 0;

            if (!v316)
            {
              v321 = objc_msgSend_valueForKey_(v463, v317, v318, v319, v320, @"indoorPrefetchMaxFloorCount");
              v326 = objc_msgSend_unsignedIntValue(v321, v322, v323, v324, v325);
              v510 |= 0x20u;
              v500 = v326;
            }

            v327 = objc_msgSend_valueForKey_(v463, v317, v318, v319, v320, @"regionalPrefetchMaxFloorCount");
            v328 = v327 == 0;

            if (!v328)
            {
              v333 = objc_msgSend_valueForKey_(v463, v329, v330, v331, v332, @"regionalPrefetchMaxFloorCount");
              v338 = objc_msgSend_unsignedIntValue(v333, v334, v335, v336, v337);
              v510 |= 0x40u;
              v501 = v338;
            }

            v339 = objc_msgSend_valueForKey_(v463, v329, v330, v331, v332, @"indoorPrefetchMaxTotalBytes");
            v340 = v339 == 0;

            if (!v340)
            {
              v345 = objc_msgSend_valueForKey_(v463, v341, v342, v343, v344, @"indoorPrefetchMaxTotalBytes");
              v350 = objc_msgSend_unsignedIntValue(v345, v346, v347, v348, v349);
              v510 |= 0x80u;
              v502 = v350;
            }

            v351 = objc_msgSend_valueForKey_(v463, v341, v342, v343, v344, @"regionalPrefetchMaxTotalBytes");
            v352 = v351 == 0;

            if (!v352)
            {
              v357 = objc_msgSend_valueForKey_(v463, v353, v354, v355, v356, @"regionalPrefetchMaxTotalBytes");
              v362 = objc_msgSend_unsignedIntValue(v357, v358, v359, v360, v361);
              v510 |= 0x100u;
              v503 = v362;
            }

            v363 = objc_msgSend_valueForKey_(v463, v353, v354, v355, v356, @"indoorLocationOfInterestMergeRadiusKM");
            v364 = v363 == 0;

            if (!v364)
            {
              v369 = objc_msgSend_valueForKey_(v463, v365, v366, v367, v368, @"indoorLocationOfInterestMergeRadiusKM");
              v374 = objc_msgSend_unsignedIntValue(v369, v370, v371, v372, v373);
              v510 |= 0x200u;
              v504 = v374;
            }

            v375 = objc_msgSend_valueForKey_(v463, v365, v366, v367, v368, @"regionalLocationOfInterestMergeRadiusKM");
            v376 = v375 == 0;

            if (!v376)
            {
              v381 = objc_msgSend_valueForKey_(v463, v377, v378, v379, v380, @"regionalLocationOfInterestMergeRadiusKM");
              v386 = objc_msgSend_unsignedIntValue(v381, v382, v383, v384, v385);
              v510 |= 0x400u;
              v505 = v386;
            }

            v387 = objc_msgSend_valueForKey_(v463, v377, v378, v379, v380, @"preferPredictionWithinNActivityCycles");
            v388 = v387 == 0;

            if (!v388)
            {
              v393 = objc_msgSend_valueForKey_(v463, v389, v390, v391, v392, @"preferPredictionWithinNActivityCycles");
              v398 = objc_msgSend_unsignedIntValue(v393, v394, v395, v396, v397);
              v510 |= 0x800u;
              v506 = v398;
            }

            v399 = objc_msgSend_valueForKey_(v463, v389, v390, v391, v392, @"indoorNumberOfDaysBeforeTileRedownload");
            v400 = v399 == 0;

            if (!v400)
            {
              v405 = objc_msgSend_valueForKey_(v463, v401, v402, v403, v404, @"indoorNumberOfDaysBeforeTileRedownload");
              objc_msgSend_floatValue(v405, v406, v407, v408, v409);
              v510 |= 0x1000u;
              v507 = v410;
            }

            v411 = objc_msgSend_valueForKey_(v463, v401, v402, v403, v404, @"regionalNumberOfDaysBeforeTileRedownload");
            v412 = v411 == 0;

            if (!v412)
            {
              v417 = objc_msgSend_valueForKey_(v463, v413, v414, v415, v416, @"regionalNumberOfDaysBeforeTileRedownload");
              objc_msgSend_floatValue(v417, v418, v419, v420, v421);
              v510 |= 0x2000u;
              v509 = v422;
            }

            v423 = objc_msgSend_path(v458, v413, v414, v415, v416);
            v424 = v423;
            v429 = objc_msgSend_UTF8String(v423, v425, v426, v427, v428);
            v430 = strlen(v429);
            if (v430 >= 0x7FFFFFFFFFFFFFF8)
            {
              sub_245A3C1B4();
            }

            v431 = v430;
            if (v430 >= 0x17)
            {
              operator new();
            }

            *(&__dst.__r_.__value_.__s + 23) = v430;
            if (v430)
            {
              memmove(&__dst, v429, v430);
            }

            __dst.__r_.__value_.__s.__data_[v431] = 0;

            if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
            {
              sub_245A3C288(&__p, __dst.__r_.__value_.__l.__data_, __dst.__r_.__value_.__l.__size_);
            }

            else
            {
              __p = __dst;
            }

            HIBYTE(v489[2]) = 16;
            strcpy(v489, ".protoToFile-tmp");
            sub_245A3C950(&__p, v489);
            if (SHIBYTE(v489[2]) < 0)
            {
              operator delete(v489[0]);
            }

            sub_245A84C60(&__p, 2, &v469);
            MEMORY[0x245D783E0](v489, v469, 0xFFFFFFFFLL);
            sub_245A7E320(buf);
            MEMORY[0x245D783F0](v489);
            sub_245A37CE8(&v469);
            sub_245A3C714(&__p, &__dst, 0);
            if (qword_28144B270 != -1)
            {
              sub_245A8EB7C();
            }

            v447 = qword_28144B278;
            if (os_log_type_enabled(v447, OS_LOG_TYPE_DEBUG))
            {
              p_dst = &__dst;
              if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
              {
                p_dst = __dst.__r_.__value_.__r.__words[0];
              }

              LODWORD(v489[0]) = 136315138;
              *(v489 + 4) = p_dst;
              _os_log_impl(&dword_245A2E000, v447, OS_LOG_TYPE_DEBUG, "@IndoorAvl, generateAvlTileFromJSON, find tile at %s", v489, 0xCu);
            }

            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__dst.__r_.__value_.__l.__data_);
            }

            sub_245A39274(buf);
            v36 = 1;
            goto LABEL_154;
          }

          if (qword_28144B270 != -1)
          {
            sub_245A8EB7C();
          }

          v432 = qword_28144B278;
          if (os_log_type_enabled(v432, OS_LOG_TYPE_ERROR))
          {
            v439 = v464;
            v444 = objc_msgSend_UTF8String(v464, v440, v441, v442, v443);
            *buf = 136315138;
            *&buf[4] = v444;
            _os_log_impl(&dword_245A2E000, v432, OS_LOG_TYPE_ERROR, "@IndoorAvl, generateAvlTileFromJSON, expected at least one venue, str=\n%s\n", buf, 0xCu);
          }
        }

        else
        {
          if (qword_28144B270 != -1)
          {
            sub_245A8EB7C();
          }

          v432 = qword_28144B278;
          if (os_log_type_enabled(v432, OS_LOG_TYPE_ERROR))
          {
            v433 = v464;
            v438 = objc_msgSend_UTF8String(v464, v434, v435, v436, v437);
            *buf = 136315138;
            *&buf[4] = v438;
            _os_log_impl(&dword_245A2E000, v432, OS_LOG_TYPE_ERROR, "@IndoorAvl, generateAvlTileFromJSON, no venues given in avl tile json??, str=\n%s\n", buf, 0xCu);
          }
        }

        v36 = 0;
        log = v456;
      }

LABEL_154:

      v445 = *MEMORY[0x277D85DE8];
      return v36;
    }

    v452 = sub_245A7B168();
    if (os_log_type_enabled(v452, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      *&buf[8] = 2082;
      *&buf[10] = "";
      *&buf[18] = 2082;
      *&buf[20] = "assert";
      *v495 = 2081;
      *&v495[2] = "path != nullptr";
      _os_log_impl(&dword_245A2E000, v452, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:@IndoorAvl, generateAvlTileFromJSON, cannot generate at nil path, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    v453 = sub_245A7B168();
    if (os_signpost_enabled(v453))
    {
      *buf = 68289539;
      *&buf[8] = 2082;
      *&buf[10] = "";
      *&buf[18] = 2082;
      *&buf[20] = "assert";
      *v495 = 2081;
      *&v495[2] = "path != nullptr";
      _os_signpost_emit_with_name_impl(&dword_245A2E000, v453, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "@IndoorAvl, generateAvlTileFromJSON, cannot generate at nil path", "{msg%{public}.0s:@IndoorAvl, generateAvlTileFromJSON, cannot generate at nil path, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    v451 = sub_245A7B168();
    if (os_log_type_enabled(v451, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      *&buf[8] = 2082;
      *&buf[10] = "";
      *&buf[18] = 2082;
      *&buf[20] = "assert";
      *v495 = 2081;
      *&v495[2] = "path != nullptr";
      _os_log_impl(&dword_245A2E000, v451, OS_LOG_TYPE_INFO, "{msg%{public}.0s:@IndoorAvl, generateAvlTileFromJSON, cannot generate at nil path, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }
  }

  else
  {
    v449 = sub_245A7B168();
    if (os_log_type_enabled(v449, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      *&buf[8] = 2082;
      *&buf[10] = "";
      *&buf[18] = 2082;
      *&buf[20] = "assert";
      *v495 = 2081;
      *&v495[2] = "jsonStr != nullptr";
      _os_log_impl(&dword_245A2E000, v449, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:@IndoorAvl, generateAvlTileFromJSON, cannot generate from nil string, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    v450 = sub_245A7B168();
    if (os_signpost_enabled(v450))
    {
      *buf = 68289539;
      *&buf[8] = 2082;
      *&buf[10] = "";
      *&buf[18] = 2082;
      *&buf[20] = "assert";
      *v495 = 2081;
      *&v495[2] = "jsonStr != nullptr";
      _os_signpost_emit_with_name_impl(&dword_245A2E000, v450, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "@IndoorAvl, generateAvlTileFromJSON, cannot generate from nil string", "{msg%{public}.0s:@IndoorAvl, generateAvlTileFromJSON, cannot generate from nil string, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    v451 = sub_245A7B168();
    if (os_log_type_enabled(v451, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      *&buf[8] = 2082;
      *&buf[10] = "";
      *&buf[18] = 2082;
      *&buf[20] = "assert";
      *v495 = 2081;
      *&v495[2] = "jsonStr != nullptr";
      _os_log_impl(&dword_245A2E000, v451, OS_LOG_TYPE_INFO, "{msg%{public}.0s:@IndoorAvl, generateAvlTileFromJSON, cannot generate from nil string, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }
  }

  result = abort_report_np();
  __break(1u);
  return result;
}

@end