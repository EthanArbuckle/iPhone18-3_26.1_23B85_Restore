@interface CLIndoorCommonHooks
+ (id)filterLocationGroups:(id)groups isRegionalSupported:(BOOL)supported;
+ (id)nearestVenues:()time_point<std:(std:()std:(1000000000>>>)std :(id)a4 ratio<1 :(id)a5 chrono:(double)chrono :(const NearestVenueSettings *)a7 duration<long)long :(BOOL)a8 chrono::steady_clock availableVenues:latestPosition:availabilityZScoreConfidenceInterval:settings:isAllowedMultipleVenues:;
@end

@implementation CLIndoorCommonHooks

+ (id)nearestVenues:()time_point<std:(std:()std:(1000000000>>>)std :(id)a4 ratio<1 :(id)a5 chrono:(double)chrono :(const NearestVenueSettings *)a7 duration<long)long :(BOOL)a8 chrono::steady_clock availableVenues:latestPosition:availabilityZScoreConfidenceInterval:settings:isAllowedMultipleVenues:
{
  v137 = *MEMORY[0x277D85DE8];
  v120 = a4;
  v119 = a5;
  if (a7->var0)
  {
    v17 = a7->var0;
    goto LABEL_45;
  }

  if (!a7->var2 && (objc_msgSend_isStaleFix_(v119, v13, v14, v15, v16, std.var0.__rep_) & 1) != 0)
  {
    v17 = 0;
    goto LABEL_45;
  }

  v121 = a7;
  v118 = objc_msgSend_filterLocationGroups_isRegionalSupported_(CLIndoorCommonHooks, v13, v14, v15, v16, v120, a7->var3);
  if (objc_msgSend_count(v118, v18, v19, v20, v21))
  {
    var2 = a7->var2;
    if (var2 || (var2 = v119) != 0)
    {
      objc_msgSend_gpsLocation(var2, v22, v23, v24, v25);
    }

    else
    {
      memset(v134, 0, 156);
    }

    v27 = [GeographicCoordinate alloc];
    v29 = objc_msgSend_initWithLatitude_longitude_andAltitude_(v27, v28, *(v134 + 4), *(v134 + 12), 0.0);
    v34 = objc_msgSend_fromLatLon_(ECEFCoordinate, v30, v31, v32, v33, v29);

    v35 = *(&v134[1] + 4) * chrono;
    if (a8)
    {
      v36 = objc_alloc(MEMORY[0x277CBEB58]);
      v41 = objc_msgSend_count(v118, v37, v38, v39, v40);
      v17 = objc_msgSend_initWithCapacity_(v36, v42, v43, v44, v45, v41);
      v124 = 0u;
      v125 = 0u;
      v122 = 0u;
      v123 = 0u;
      v46 = v118;
      v52 = objc_msgSend_countByEnumeratingWithState_objects_count_(v46, v47, v48, v49, v50, &v122, v135, 16);
      if (v52)
      {
        v56 = *v123;
        do
        {
          for (i = 0; i != v52; ++i)
          {
            if (*v123 != v56)
            {
              objc_enumerationMutation(v46);
            }

            v58 = *(*(&v122 + 1) + 8 * i);
            v59 = objc_msgSend_groupId(v58, v51, v53, v54, v55);
            v64 = objc_msgSend_stringByAppendingString_(@"G", v60, v61, v62, v63, v59);

            if ((objc_msgSend_containsObject_(v17, v65, v66, v67, v68, v64) & 1) == 0)
            {
              objc_msgSend_distance_(v58, v69, v70, v71, v72, v34);
              v74 = v73;
              objc_msgSend_tolerance(v58, v75, v73, v76, v77);
              v81 = v74 - v35 - v80;
              var1 = v121->var1;
              if (v81 < var1)
              {
                objc_msgSend_addObject_(v17, v78, v81, var1, v79, v64);
              }
            }
          }

          v52 = objc_msgSend_countByEnumeratingWithState_objects_count_(v46, v51, v53, v54, v55, &v122, v135, 16);
        }

        while (v52);
      }

      goto LABEL_43;
    }

    __p[0] = 0;
    __p[1] = 0;
    v133 = 0;
    v128 = 0u;
    v129 = 0u;
    v130 = 0u;
    v131 = 0u;
    v83 = v118;
    v89 = objc_msgSend_countByEnumeratingWithState_objects_count_(v83, v84, v85, v86, v87, &v128, v136, 16);
    if (v89)
    {
      v93 = *v129;
      v94 = INFINITY;
      do
      {
        for (j = 0; j != v89; ++j)
        {
          if (*v129 != v93)
          {
            objc_enumerationMutation(v83);
          }

          v96 = *(*(&v128 + 1) + 8 * j);
          objc_msgSend_distance_(v96, v88, v90, v91, v92, v34);
          v97 = v90;
          if (v90 < v94)
          {
            objc_msgSend_tolerance(v96, v88, v90, v91, v92);
            v90 = v35 + v98;
            if (v97 <= v90)
            {
              v99 = objc_msgSend_groupId(v96, v88, v90, v91, v92);
              v100 = v99;
              v105 = objc_msgSend_UTF8String(v99, v101, v102, v103, v104);
              MEMORY[0x245D78760](__p, v105);

              v94 = v97;
            }
          }
        }

        v89 = objc_msgSend_countByEnumeratingWithState_objects_count_(v83, v88, v90, v91, v92, &v128, v136, 16);
      }

      while (v89);
    }

    v106 = HIBYTE(v133);
    if (v133 < 0)
    {
      v106 = __p[1];
    }

    if (v106)
    {
      std::operator+<char>();
      if (SHIBYTE(v133) < 0)
      {
        operator delete(__p[0]);
      }

      *__p = v126;
      v133 = v127;
      v110 = MEMORY[0x277CBEB98];
      if (v127 >= 0)
      {
        objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v107, *&v126, v108, v109, __p);
      }

      else
      {
        objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v107, *&v126, v108, v109, v126);
      }
      v111 = ;
      v17 = objc_msgSend_setWithObject_(v110, v112, v113, v114, v115, v111);

      if ((v133 & 0x8000000000000000) == 0)
      {
        goto LABEL_43;
      }
    }

    else
    {
      v17 = 0;
      if ((v133 & 0x8000000000000000) == 0)
      {
        goto LABEL_43;
      }
    }

    operator delete(__p[0]);
LABEL_43:

    goto LABEL_44;
  }

  v17 = 0;
LABEL_44:

LABEL_45:
  v116 = *MEMORY[0x277D85DE8];

  return v17;
}

+ (id)filterLocationGroups:(id)groups isRegionalSupported:(BOOL)supported
{
  supportedCopy = supported;
  v45 = *MEMORY[0x277D85DE8];
  groupsCopy = groups;
  v10 = groupsCopy;
  if (supportedCopy)
  {
    v11 = objc_msgSend_copy(groupsCopy, v6, v7, v8, v9);
  }

  else
  {
    v11 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v12 = v10;
    v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v13, v14, v15, v16, &v40, v44, 16);
    if (v17)
    {
      v18 = *v41;
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v41 != v18)
          {
            objc_enumerationMutation(v12);
          }

          v20 = *(*(&v40 + 1) + 8 * i);
          v25 = objc_msgSend_locationContext(v20, v21, v22, v23, v24, v40);
          if ((objc_msgSend_isRegional_(CLLocationContextUtil, v26, v27, v28, v29, v25) & 1) == 0)
          {
            objc_msgSend_addObject_(v11, v30, v31, v32, v33, v20);
          }
        }

        v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v34, v35, v36, v37, &v40, v44, 16);
      }

      while (v17);
    }
  }

  v38 = *MEMORY[0x277D85DE8];

  return v11;
}

@end