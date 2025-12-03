@interface CLAvailableVenuesStateMachine
+ (double)distBetweenLatLon:(id)lon latlon1:(id)latlon1;
+ (int64_t)getLocationContextFromVenueBounds:(const void *)bounds;
- (BOOL)isVenueDisabled:(id)disabled locationId:(id)id;
- (BOOL)shouldRecompute:(id)recompute;
- (CLAvailableVenuesStateMachine)init;
- (id)computeAvailableVenues:(id)venues nearCoordinates:(id)coordinates;
- (id)computeAvailableVenues:(id)venues nearCoordinates:(id)coordinates withError:(BOOL *)error;
- (id)getNearbyLocationGroups:(id)groups withUpdatedPos:(id)pos;
- (id)getNearbyLocationGroups:(id)groups withUpdatedPos:(id)pos nearLocationsOfInterest:(id)interest;
- (id)getNearbyLocationGroupsForTile:(id)tile withUpdatedPos:(id)pos;
- (id)getNearbyLocationGroupsForTile:(id)tile withUpdatedPos:(id)pos nearLocationsOfInterest:(id)interest;
- (id)openTileParserAtPath:(id)path;
- (id)recomputeIfNecessary:(id)necessary withGlobalAvailabilityTile:(id)tile andAdditionalLOIs:(id)is;
- (void)clearLastFix;
@end

@implementation CLAvailableVenuesStateMachine

- (void)clearLastFix
{
  lastFix = self->_lastFix;
  self->_lastFix = 0;
}

- (CLAvailableVenuesStateMachine)init
{
  v8.receiver = self;
  v8.super_class = CLAvailableVenuesStateMachine;
  v2 = [(CLAvailableVenuesStateMachine *)&v8 init];
  v3 = v2;
  if (v2)
  {
    lastFix = v2->_lastFix;
    v2->_lastFix = 0;

    disabledVenues = v3->_disabledVenues;
    v3->_maxLoadRadius = 100000.0;
    v3->_disabledVenues = 0;

    availabilityTileParams = v3->_availabilityTileParams;
    v3->_availabilityTileParams = 0;
  }

  return v3;
}

+ (double)distBetweenLatLon:(id)lon latlon1:(id)latlon1
{
  v71 = *MEMORY[0x277D85DE8];
  lonCopy = lon;
  latlon1Copy = latlon1;
  v11 = latlon1Copy;
  if (!lonCopy)
  {
    v58 = sub_245A782E4();
    if (os_log_type_enabled(v58, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v64 = 0;
      v65 = 2082;
      v66 = "";
      v67 = 2082;
      v68 = "assert";
      v69 = 2081;
      v70 = "latlon0 != nullptr";
      _os_log_impl(&dword_245A2E000, v58, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:distBetweenLatLon: first coordinate must be valid!, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    v59 = sub_245A782E4();
    if (os_signpost_enabled(v59))
    {
      *buf = 68289539;
      v64 = 0;
      v65 = 2082;
      v66 = "";
      v67 = 2082;
      v68 = "assert";
      v69 = 2081;
      v70 = "latlon0 != nullptr";
      _os_signpost_emit_with_name_impl(&dword_245A2E000, v59, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "distBetweenLatLon: first coordinate must be valid!", "{msg%{public}.0s:distBetweenLatLon: first coordinate must be valid!, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    v60 = sub_245A782E4();
    if (os_log_type_enabled(v60, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v64 = 0;
      v65 = 2082;
      v66 = "";
      v67 = 2082;
      v68 = "assert";
      v69 = 2081;
      v70 = "latlon0 != nullptr";
      _os_log_impl(&dword_245A2E000, v60, OS_LOG_TYPE_INFO, "{msg%{public}.0s:distBetweenLatLon: first coordinate must be valid!, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

LABEL_17:

    abort_report_np();
    __break(1u);
  }

  if (!latlon1Copy)
  {
    v61 = sub_245A782E4();
    if (os_log_type_enabled(v61, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v64 = 0;
      v65 = 2082;
      v66 = "";
      v67 = 2082;
      v68 = "assert";
      v69 = 2081;
      v70 = "latlon1 != nullptr";
      _os_log_impl(&dword_245A2E000, v61, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:distBetweenLatLon: second coordinate must be valid!, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    v62 = sub_245A782E4();
    if (os_signpost_enabled(v62))
    {
      *buf = 68289539;
      v64 = 0;
      v65 = 2082;
      v66 = "";
      v67 = 2082;
      v68 = "assert";
      v69 = 2081;
      v70 = "latlon1 != nullptr";
      _os_signpost_emit_with_name_impl(&dword_245A2E000, v62, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "distBetweenLatLon: second coordinate must be valid!", "{msg%{public}.0s:distBetweenLatLon: second coordinate must be valid!, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    v60 = sub_245A782E4();
    if (os_log_type_enabled(v60, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v64 = 0;
      v65 = 2082;
      v66 = "";
      v67 = 2082;
      v68 = "assert";
      v69 = 2081;
      v70 = "latlon1 != nullptr";
      _os_log_impl(&dword_245A2E000, v60, OS_LOG_TYPE_INFO, "{msg%{public}.0s:distBetweenLatLon: second coordinate must be valid!, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    goto LABEL_17;
  }

  objc_msgSend_latitude(lonCopy, v7, v8, v9, v10);
  objc_msgSend_deg2rad_(CLAvailableVenuesStateMachine, v12, v13, v14, v15);
  v17 = v16;
  objc_msgSend_longitude(lonCopy, v18, v16, v19, v20);
  objc_msgSend_deg2rad_(CLAvailableVenuesStateMachine, v21, v22, v23, v24);
  v26 = v25;
  objc_msgSend_latitude(v11, v27, v25, v28, v29);
  objc_msgSend_deg2rad_(CLAvailableVenuesStateMachine, v30, v31, v32, v33);
  v35 = v34;
  objc_msgSend_longitude(v11, v36, v34, v37, v38);
  objc_msgSend_deg2rad_(CLAvailableVenuesStateMachine, v39, v40, v41, v42);
  v44 = sin((v26 - v43) * 0.5);
  v45 = v44 * v44;
  v46 = sin((v17 - v35) * 0.5);
  v47 = v46 * v46;
  v48 = cos(v17);
  v49 = cos(v35);
  v50 = asin(sqrt(v47 + v48 * v49 * v45));
  objc_msgSend_metersFromGreatCircleDistance_(CLAvailableVenuesStateMachine, v51, v50 + v50, v52, v53);
  v55 = v54;

  v56 = *MEMORY[0x277D85DE8];
  return v55;
}

- (BOOL)isVenueDisabled:(id)disabled locationId:(id)id
{
  disabledCopy = disabled;
  idCopy = id;
  disabledVenues = self->_disabledVenues;
  if (disabledVenues)
  {
    v13 = objc_msgSend_member_(disabledVenues, v7, v9, v10, v11, disabledCopy);
    if (v13)
    {
      v18 = 1;
    }

    else
    {
      v19 = objc_msgSend_member_(self->_disabledVenues, v14, v15, v16, v17, idCopy);
      v18 = v19 != 0;

      v13 = 0;
    }
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

- (id)computeAvailableVenues:(id)venues nearCoordinates:(id)coordinates
{
  venuesCopy = venues;
  coordinatesCopy = coordinates;
  v28 = 0;
  v12 = objc_msgSend_computeAvailableVenues_nearCoordinates_withError_(self, v8, v9, v10, v11, venuesCopy, coordinatesCopy, &v28);
  if (v28 == 1)
  {
    sub_245A785B8();
    v17 = objc_msgSend_computeAvailableVenues_nearCoordinates_withError_(self, v13, v14, v15, v16, venuesCopy, coordinatesCopy, &v28);

    if (v28 == 1)
    {
      sub_245A785B8();
      v12 = objc_msgSend_computeAvailableVenues_nearCoordinates_withError_(self, v18, v19, v20, v21, venuesCopy, coordinatesCopy, &v28);

      if (v28 == 1)
      {
        sub_245A785B8();
        v26 = objc_msgSend_computeAvailableVenues_nearCoordinates_withError_(self, v22, v23, v24, v25, venuesCopy, coordinatesCopy, &v28);

        if (v28 == 1)
        {
          sub_245A8E690(&v29);

          result = abort_report_np();
          __break(1u);
          return result;
        }

        v12 = v26;
      }
    }

    else
    {
      v12 = v17;
    }
  }

  return v12;
}

- (id)computeAvailableVenues:(id)venues nearCoordinates:(id)coordinates withError:(BOOL *)error
{
  v356 = *MEMORY[0x277D85DE8];
  venuesCopy = venues;
  coordinatesCopy = coordinates;
  errorCopy = error;
  *error = 0;
  v7 = objc_alloc(MEMORY[0x277CBEB18]);
  v12 = objc_msgSend_initWithCapacity_(v7, v8, v9, v10, v11, 120);
  v13 = 120;
  do
  {
    v14 = objc_alloc_init(ECEFCoordinate);
    objc_msgSend_addObject_(v12, v15, v16, v17, v18, v14);

    --v13;
  }

  while (v13);
  v19 = objc_alloc(MEMORY[0x277CBEB18]);
  v322 = objc_msgSend_initWithCapacity_(v19, v20, v21, v22, v23, 120);
  v325 = v12;
  v323 = objc_alloc_init(GeographicCoordinate);
  v329 = objc_alloc_init(ENUCoordinate);
  v312 = objc_alloc_init(ECEFCoordinate);
  v316 = objc_alloc_init(GeographicCoordinate);
  v315 = objc_msgSend_numVenuesExpected(venuesCopy, v24, v25, v26, v27);
  v317 = objc_msgSend_arrayWithCapacity_(MEMORY[0x277CBEB18], v28, v29, v30, v31, v315);
  v36 = objc_msgSend_numTotalExpectedExteriorsInVenues(venuesCopy, v32, v33, v34, v35);
  if (qword_28144B270 != -1)
  {
    sub_245A8E67C();
  }

  v37 = qword_28144B278;
  if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
  {
    *buf = 134217984;
    v348 = v36;
    _os_log_impl(&dword_245A2E000, v37, OS_LOG_TYPE_INFO, "@IndoorAvl, load, Reserving %zu entries for AvailabilityTile entries in result", buf, 0xCu);
  }

  v307 = objc_msgSend_arrayWithCapacity_(MEMORY[0x277CBEB18], v38, v39, v40, v41, v36);
  if (qword_28144B270 != -1)
  {
    sub_245A8E818();
  }

  v42 = qword_28144B278;
  if (os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
  {
    *buf = 67109120;
    LODWORD(v348) = v315;
    _os_log_impl(&dword_245A2E000, v42, OS_LOG_TYPE_INFO, "@IndoorAvl, load, iterating over %d venues in the availability tile", buf, 8u);
  }

  if (v315 >= 1)
  {
    v308 = 0;
    v306 = 0;
    v321 = 0;
    while (1)
    {
      context = objc_autoreleasePoolPush();
      sub_245A3036C(buf);
      if (objc_msgSend_tileIsOpenForIncrementalIO(venuesCopy, v47, v48, v49, v50))
      {
        if ((objc_msgSend_getNextVenueBoundsIncrementally_(venuesCopy, v51, v52, v53, v54, buf) & 1) == 0)
        {
          if (qword_28144B270 != -1)
          {
            sub_245A8E818();
          }

          v55 = qword_28144B278;
          if (os_log_type_enabled(qword_28144B278, OS_LOG_TYPE_ERROR))
          {
            *v346 = 0;
            _os_log_impl(&dword_245A2E000, v55, OS_LOG_TYPE_ERROR, "@IndoorAvl, load, failed to incrementally read venue bounds from tile", v346, 2u);
          }

          v56 = 1;
          *errorCopy = 1;
          goto LABEL_174;
        }
      }

      else
      {
        AvlTile = objc_msgSend_getAvlTile(venuesCopy, v51, v52, v53, v54);
        sub_245A827CC(AvlTile, v321, v346);
        sub_245A89074(buf, v346);
        sub_245A30368(v346);
      }

      sub_245A38948(&v350[2], ", ", __p);
      if (!v353)
      {
        if (qword_28144B270 != -1)
        {
          sub_245A8E818();
        }

        v68 = qword_28144B278;
        if (os_log_type_enabled(qword_28144B278, OS_LOG_TYPE_ERROR))
        {
          v69 = __p;
          if (v343 < 0)
          {
            v69 = __p[0];
          }

          *v346 = 136446210;
          *&v346[4] = v69;
          _os_log_impl(&dword_245A2E000, v68, OS_LOG_TYPE_ERROR, "@IndoorAvl, load, venue [%{public}s] is missing exterior", v346, 0xCu);
          v56 = 11;
        }

        else
        {
          v56 = 11;
        }

        goto LABEL_172;
      }

      v341[0] = 0;
      v341[1] = 0;
      v340 = v341;
      v339[0] = 0;
      v339[1] = 0;
      v338 = v339;
      if ((v355 & 4) != 0)
      {
        v62 = v354;
        if (!v354)
        {
          v62 = *(qword_28144B978 + 64);
        }

        sub_245A317F0(v346, v62);
        if (*&v346[24] >= 1)
        {
          v63 = 0;
          do
          {
            v64 = *(*&v346[16] + 4 * v63);
            v65 = v339[0];
LABEL_31:
            if (!v65)
            {
LABEL_35:
              operator new();
            }

            while (1)
            {
              v66 = v65;
              v67 = *(v65 + 7);
              if (v64 < v67)
              {
                v65 = *v66;
                goto LABEL_31;
              }

              if (v67 >= v64)
              {
                break;
              }

              v65 = v66[1];
              if (!v65)
              {
                goto LABEL_35;
              }
            }

            ++v63;
          }

          while (v63 < *&v346[24]);
        }

        sub_245A32198(v346);
      }

      objc_msgSend_removeAllObjects(v317, v58, v59, v60, v61);
      if (v351 < 1)
      {
        goto LABEL_163;
      }

      v74 = 0;
      v75 = 0;
      do
      {
        v76 = *(*&v350[2] + 8 * v74);
        if (*(v76 + 23) < 0)
        {
          v76 = *v76;
        }

        v77 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v70, v71, v72, v73, v76);
        if (!objc_msgSend_hasPrefix_(v77, v78, v79, v80, v81, @"G"))
        {
          if (!objc_msgSend_hasPrefix_(v77, v82, v83, v84, v85, @"L"))
          {
            if (qword_28144B270 != -1)
            {
              sub_245A8E818();
            }

            v94 = qword_28144B278;
            if (os_log_type_enabled(v94, OS_LOG_TYPE_DEFAULT))
            {
              v101 = v77;
              v106 = objc_msgSend_UTF8String(v77, v102, v103, v104, v105);
              *v346 = 136315138;
              *&v346[4] = v106;
              _os_log_impl(&dword_245A2E000, v94, OS_LOG_TYPE_DEFAULT, "#Warning Encountered invalid venue id %s in availability tile. Skipping", v346, 0xCu);
            }

            goto LABEL_62;
          }

          if (objc_msgSend_isVenueDisabled_locationId_(self, v86, v87, v88, v89, 0, v77))
          {
            if (qword_28144B270 != -1)
            {
              sub_245A8E818();
            }

            v94 = qword_28144B278;
            if (os_log_type_enabled(v94, OS_LOG_TYPE_DEBUG))
            {
              v95 = v77;
              v100 = objc_msgSend_UTF8String(v77, v96, v97, v98, v99);
              *v346 = 136315138;
              *&v346[4] = v100;
              _os_log_impl(&dword_245A2E000, v94, OS_LOG_TYPE_DEBUG, "%s in availability tile is disabled by settings", v346, 0xCu);
            }

LABEL_62:

            goto LABEL_63;
          }

          objc_msgSend_addObject_(v317, v90, v91, v92, v93, v77);
          if (v74 < v351)
          {
            if ((v355 & 4) != 0)
            {
              v116 = v339[0];
              if (v339[0])
              {
                v117 = v339;
                do
                {
                  v118 = *(v116 + 7);
                  v119 = v74 <= v118;
                  v120 = v74 > v118;
                  if (v119)
                  {
                    v117 = v116;
                  }

                  v116 = v116[v120];
                }

                while (v116);
                if (v117 != v339 && v74 >= *(v117 + 7))
                {
LABEL_77:
                  v121 = objc_msgSend_count(v317, v107, v108, v109, v110) - 1;
                  for (i = v341[0]; i; i = *v123)
                  {
                    while (1)
                    {
                      v123 = i;
                      v124 = i[4];
                      if (v121 < v124)
                      {
                        break;
                      }

                      if (v124 >= v121)
                      {
                        goto LABEL_63;
                      }

                      i = v123[1];
                      if (!i)
                      {
                        goto LABEL_83;
                      }
                    }
                  }

LABEL_83:
                  operator new();
                }
              }
            }

            else
            {
              LocationContextFromVenueBounds = objc_msgSend_getLocationContextFromVenueBounds_(CLAvailableVenuesStateMachine, v107, v108, v109, v110, buf);
              if (objc_msgSend_isRegional_(CLLocationContextUtil, v112, v113, v114, v115, LocationContextFromVenueBounds))
              {
                goto LABEL_77;
              }
            }

            goto LABEL_63;
          }

          sub_245A8E840();
          abort_report_np();
LABEL_227:
          while (2)
          {
            __break(1u);
            sub_245A8E818();
            v296 = qword_28144B278;
            if (os_log_type_enabled(v296, OS_LOG_TYPE_FAULT))
            {
              *v346 = 68289539;
              *&v346[4] = 0;
              *&v346[8] = 2082;
              *&v346[10] = "";
              *&v346[18] = 2082;
              *&v346[20] = "assert";
              *&v346[28] = 2081;
              *&v346[30] = "!std::isnan(vertexENU.x())";
              _os_log_impl(&dword_245A2E000, v296, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:vertexENU.x() must not be NaN, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v346, 0x26u);
            }

            if (qword_28144B270 == -1)
            {
              v297 = qword_28144B278;
              if (os_signpost_enabled(v297))
              {
                goto LABEL_210;
              }
            }

            else
            {
              dispatch_once(&qword_28144B270, &unk_28589FEF8);
              v297 = qword_28144B278;
              if (os_signpost_enabled(v297))
              {
LABEL_210:
                *v346 = 68289539;
                *&v346[4] = 0;
                *&v346[8] = 2082;
                *&v346[10] = "";
                *&v346[18] = 2082;
                *&v346[20] = "assert";
                *&v346[28] = 2081;
                *&v346[30] = "!std::isnan(vertexENU.x())";
                _os_signpost_emit_with_name_impl(&dword_245A2E000, v297, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "vertexENU.x() must not be NaN", "{msg%{public}.0s:vertexENU.x() must not be NaN, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v346, 0x26u);
              }
            }

            if (qword_28144B270 != -1)
            {
              dispatch_once(&qword_28144B270, &unk_28589FEF8);
            }

            v298 = qword_28144B278;
            if (os_log_type_enabled(v298, OS_LOG_TYPE_INFO))
            {
              *v346 = 68289539;
              *&v346[4] = 0;
              *&v346[8] = 2082;
              *&v346[10] = "";
              *&v346[18] = 2082;
              *&v346[20] = "assert";
              *&v346[28] = 2081;
              *&v346[30] = "!std::isnan(vertexENU.x())";
              _os_log_impl(&dword_245A2E000, v298, OS_LOG_TYPE_INFO, "{msg%{public}.0s:vertexENU.x() must not be NaN, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v346, 0x26u);
            }

LABEL_215:

            abort_report_np();
            continue;
          }
        }

        if (v75)
        {

          if (qword_28144B270 != -1)
          {
            sub_245A8E818();
          }

          v269 = qword_28144B278;
          if (!os_log_type_enabled(qword_28144B278, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_170;
          }

          v270 = __p;
          if (v343 < 0)
          {
            v270 = __p[0];
          }

          *v346 = 136446210;
          *&v346[4] = v270;
          v271 = v269;
          v272 = OS_LOG_TYPE_ERROR;
          v273 = "Multiple groups associated with venue [%{public}s].  Ignoring from availability tile";
          goto LABEL_183;
        }

        if (objc_msgSend_isVenueDisabled_locationId_(self, v82, v83, v84, v85, v77, 0))
        {
          if (qword_28144B270 != -1)
          {
            sub_245A8E818();
          }

          v274 = qword_28144B278;
          if (os_log_type_enabled(v274, OS_LOG_TYPE_DEBUG))
          {
            v275 = v77;
            v280 = objc_msgSend_UTF8String(v77, v276, v277, v278, v279);
            *v346 = 136315138;
            *&v346[4] = v280;
            _os_log_impl(&dword_245A2E000, v274, OS_LOG_TYPE_DEBUG, "%s in availability tile is disabled by settings", v346, 0xCu);
          }

LABEL_163:
          if (qword_28144B270 != -1)
          {
            sub_245A8E818();
          }

          v281 = qword_28144B278;
          if (os_log_type_enabled(qword_28144B278, OS_LOG_TYPE_DEFAULT))
          {
            v282 = __p;
            if (v343 < 0)
            {
              v282 = __p[0];
            }

            *v346 = 136315138;
            *&v346[4] = v282;
            _os_log_impl(&dword_245A2E000, v281, OS_LOG_TYPE_DEFAULT, "#Warning Cannot find location group in venue [%s]", v346, 0xCu);
          }

          v75 = 0;
          goto LABEL_170;
        }

        v75 = v77;
LABEL_63:

        ++v74;
      }

      while (v74 < v351);
      if (!v75)
      {
        goto LABEL_163;
      }

      if (objc_msgSend_count(v317, v70, v71, v72, v73) && v317)
      {
        v129 = objc_msgSend_count(v317, v125, v126, v127, v128);
        v305 = objc_msgSend_substringFromIndex_(v75, v130, v131, v132, v133, 1);

        v304 = objc_msgSend_getLocationContextFromVenueBounds_(CLAvailableVenuesStateMachine, v134, v135, v136, v137, buf);
        v308 += v129;
        if (v353)
        {
          v313 = 0;
          v314 = v352;
          v311 = &v352[v353];
          do
          {
            if (v313)
            {
              v313 = 1;
            }

            else
            {
              v142 = *(*v314 + 24);
              v319 = *v314;
              if (v142 == *(*v314 + 48))
              {
                if ((v142 & 0x80000000) != 0)
                {
                  v299 = sub_245A782E4();
                  if (os_log_type_enabled(v299, OS_LOG_TYPE_FAULT))
                  {
                    v300 = *(v319 + 48);
                    *v346 = 68289795;
                    *&v346[8] = 2082;
                    *&v346[10] = "";
                    *&v346[18] = 1026;
                    *&v346[20] = v300;
                    *&v346[24] = 2082;
                    *&v346[26] = "assert";
                    *&v346[34] = 2081;
                    *&v346[36] = "exterior.longitude_size() >= 0";
                    _os_log_impl(&dword_245A2E000, v299, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:@IndoorAvl, load, exterior longitude_size() returned a negative value?!, longitude_size:%{public}d, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v346, 0x2Cu);
                  }

                  v301 = sub_245A782E4();
                  if (os_signpost_enabled(v301))
                  {
                    v302 = *(v319 + 48);
                    *v346 = 68289795;
                    *&v346[8] = 2082;
                    *&v346[10] = "";
                    *&v346[18] = 1026;
                    *&v346[20] = v302;
                    *&v346[24] = 2082;
                    *&v346[26] = "assert";
                    *&v346[34] = 2081;
                    *&v346[36] = "exterior.longitude_size() >= 0";
                    _os_signpost_emit_with_name_impl(&dword_245A2E000, v301, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "@IndoorAvl, load, exterior longitude_size() returned a negative value?!", "{msg%{public}.0s:@IndoorAvl, load, exterior longitude_size() returned a negative value?!, longitude_size:%{public}d, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v346, 0x2Cu);
                  }

                  v298 = sub_245A782E4();
                  if (os_log_type_enabled(v298, OS_LOG_TYPE_INFO))
                  {
                    v303 = *(v319 + 48);
                    *v346 = 68289795;
                    *&v346[8] = 2082;
                    *&v346[10] = "";
                    *&v346[18] = 1026;
                    *&v346[20] = v303;
                    *&v346[24] = 2082;
                    *&v346[26] = "assert";
                    *&v346[34] = 2081;
                    *&v346[36] = "exterior.longitude_size() >= 0";
                    _os_log_impl(&dword_245A2E000, v298, OS_LOG_TYPE_INFO, "{msg%{public}.0s:@IndoorAvl, load, exterior longitude_size() returned a negative value?!, longitude_size:%{public}d, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v346, 0x2Cu);
                  }

                  goto LABEL_215;
                }

                if (objc_msgSend_count(v12, v138, v139, v140, v141) < v142)
                {
                  v147 = objc_msgSend_count(v12, v143, v144, v145, v146);
                  v148 = v142 - v147;
                  if (v142 != v147)
                  {
                    do
                    {
                      v149 = objc_alloc_init(ECEFCoordinate);
                      objc_msgSend_addObject_(v12, v150, v151, v152, v153, v149);

                      --v148;
                    }

                    while (v148);
                  }

                  if (qword_28144B270 != -1)
                  {
                    sub_245A8E818();
                  }

                  v154 = qword_28144B278;
                  if (os_log_type_enabled(qword_28144B278, OS_LOG_TYPE_FAULT))
                  {
                    *v346 = 67109120;
                    *&v346[4] = v142;
                    _os_log_impl(&dword_245A2E000, v154, OS_LOG_TYPE_FAULT, "@IndoorAvl, load, Needed to allocate additional ECEFCoordinates for the pool: total required %d", v346, 8u);
                  }
                }

                if (v142)
                {
                  v155 = 0;
                  v156 = 8 * v142;
                  do
                  {
                    objc_msgSend_setFromLatitude_longitude_andAltitude_(v323, v143, *(*(v319 + 16) + v155), *(*(v319 + 40) + v155), 0.0);
                    v161 = objc_msgSend_lastObject(v12, v157, v158, v159, v160);
                    objc_msgSend_removeLastObject(v12, v162, v163, v164, v165);
                    objc_msgSend_setFromLatLon_(v161, v166, v167, v168, v169, v323);
                    objc_msgSend_addObject_(v322, v170, v171, v172, v173, v161);

                    v155 += 8;
                  }

                  while (v156 != v155);
                }

                objc_msgSend_storeAverage_ofVertices_(CLLocationGroup, v143, v144, v145, v146, v312, v322);
                objc_msgSend_setFromECEFCoordinate_(v316, v174, v175, v176, v177, v312);
                if (objc_msgSend_count(coordinatesCopy, v178, v179, v180, v181))
                {
                  v336 = 0u;
                  v337 = 0u;
                  v334 = 0u;
                  v335 = 0u;
                  v185 = coordinatesCopy;
                  v190 = objc_msgSend_countByEnumeratingWithState_objects_count_(v185, v186, v187, v188, v189, &v334, v345, 16);
                  if (v190)
                  {
                    v191 = *v335;
LABEL_107:
                    v192 = 0;
                    while (1)
                    {
                      if (*v335 != v191)
                      {
                        objc_enumerationMutation(v185);
                      }

                      v193 = *(*(&v334 + 1) + 8 * v192);
                      objc_msgSend_distBetweenLatLon_latlon1_(CLAvailableVenuesStateMachine, v194, v195, v196, v197, v316, v193);
                      v199 = v198;
                      v200 = v198 >= self->_maxLoadRadius;

                      if (!v200)
                      {
                        break;
                      }

                      if (v190 == ++v192)
                      {
                        v190 = objc_msgSend_countByEnumeratingWithState_objects_count_(v185, v201, v202, v203, v204, &v334, v345, 16);
                        if (v190)
                        {
                          goto LABEL_107;
                        }

                        break;
                      }
                    }
                  }

                  else
                  {
                    v199 = 1.79769313e308;
                  }
                }

                else
                {
                  v199 = 0.0;
                }

                maxLoadRadius = self->_maxLoadRadius;
                v313 = v199 > maxLoadRadius;
                if (v199 > maxLoadRadius)
                {
                  v308 -= objc_msgSend_count(v317, v182, maxLoadRadius, v183, v184);
                }

                else
                {
                  v214 = [CLLocationGroup alloc];
                  v218 = objc_msgSend_initWithGroupId_locationIds_center_wifiOnlyDownloadLocIdxs_locationContext_andTolerance_(v214, v215, *(v319 + 64), v216, v217, v305, v317, v312, &v340, v304);
                  v328 = v218;
                  Vertices = objc_msgSend_getVertices(v218, v219, v220, v221, v222);
                  v332 = 0u;
                  v333 = 0u;
                  v330 = 0u;
                  v331 = 0u;
                  obj = v322;
                  v228 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v224, v225, v226, v227, &v330, v344, 16);
                  v233 = v228;
                  if (v228)
                  {
                    v327 = *v331;
                    do
                    {
                      v234 = 0;
                      do
                      {
                        if (*v331 != v327)
                        {
                          objc_enumerationMutation(obj);
                        }

                        v235 = *(*(&v330 + 1) + 8 * v234);
                        v236 = *Vertices;
                        v237 = objc_msgSend_centerLatLon(v218, v229, v230, v231, v232);
                        v242 = objc_msgSend_centerECEF(v218, v238, v239, v240, v241);
                        objc_msgSend_toBoostEnuWithLatLonOrigin_andEcefOrigin_usingENU_(v235, v243, v244, v245, v246, v237, v242, v329);
                        v250 = v236[1];
                        v249 = v236[2];
                        if (v250 >= v249)
                        {
                          v252 = *v236;
                          v253 = v250 - *v236;
                          v254 = v253 >> 4;
                          v255 = (v253 >> 4) + 1;
                          if (v255 >> 60)
                          {
                            sub_245A7B094();
                          }

                          v256 = v249 - v252;
                          if (v256 >> 3 > v255)
                          {
                            v255 = v256 >> 3;
                          }

                          if (v256 >= 0x7FFFFFFFFFFFFFF0)
                          {
                            v257 = 0xFFFFFFFFFFFFFFFLL;
                          }

                          else
                          {
                            v257 = v255;
                          }

                          if (v257)
                          {
                            if (!(v257 >> 60))
                            {
                              operator new();
                            }

                            sub_245A3C610();
                          }

                          v258 = (16 * v254);
                          *v258 = v247;
                          v258[1] = v248;
                          v251 = 16 * v254 + 16;
                          memcpy(0, v252, v253);
                          *v236 = 0;
                          v236[1] = v251;
                          v236[2] = 0;
                          if (v252)
                          {
                            operator delete(v252);
                          }

                          v12 = v325;
                        }

                        else
                        {
                          *v250 = v247;
                          v250[1] = v248;
                          v251 = (v250 + 2);
                        }

                        v236[1] = v251;

                        v259 = (*Vertices)[1];
                        v260 = *(v259 - 16);
                        v230 = *(v259 - 8);
                        v218 = v328;
                        ++v234;
                      }

                      while (v233 != v234);
                      v233 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v229, v230, v231, v232, &v330, v344, 16);
                    }

                    while (v233);
                  }

                  if (*(v319 + 48) != ((*Vertices)[1] - **Vertices) >> 4)
                  {
                    sub_245A8EA20(v346);

                    abort_report_np();
                    goto LABEL_227;
                  }

                  sub_245A31344(*Vertices);
                  objc_msgSend_addObject_(v307, v261, v262, v263, v264, v328);

                  ++v306;
                }

                objc_msgSend_addObjectsFromArray_(v12, v210, v211, v212, v213, v322);
                objc_msgSend_removeAllObjects(v322, v265, v266, v267, v268);
              }

              else
              {
                if (qword_28144B270 != -1)
                {
                  sub_245A8E818();
                }

                v205 = qword_28144B278;
                if (os_log_type_enabled(qword_28144B278, OS_LOG_TYPE_ERROR))
                {
                  v206 = __p;
                  if (v343 < 0)
                  {
                    v206 = __p[0];
                  }

                  v207 = *(v319 + 24);
                  v208 = *(v319 + 48);
                  *v346 = 136446722;
                  *&v346[4] = v206;
                  *&v346[12] = 1026;
                  *&v346[14] = v207;
                  *&v346[18] = 1026;
                  *&v346[20] = v208;
                  _os_log_impl(&dword_245A2E000, v205, OS_LOG_TYPE_ERROR, "@IndoorAvl, load, exterior polygon of venue [%{public}s] is corrupt.  %{public}d latitudes, %{public}d longitudes", v346, 0x18u);
                }

                v313 = 0;
              }
            }

            ++v314;
          }

          while (v314 != v311);
        }

        v56 = 0;
        v75 = v305;
        goto LABEL_171;
      }

      if (qword_28144B270 != -1)
      {
        sub_245A8E818();
      }

      v283 = qword_28144B278;
      if (os_log_type_enabled(qword_28144B278, OS_LOG_TYPE_DEFAULT))
      {
        v284 = __p;
        if (v343 < 0)
        {
          v284 = __p[0];
        }

        *v346 = 136315138;
        *&v346[4] = v284;
        v271 = v283;
        v272 = OS_LOG_TYPE_DEFAULT;
        v273 = "#Warning No venues associated with availability tile [%s]";
LABEL_183:
        _os_log_impl(&dword_245A2E000, v271, v272, v273, v346, 0xCu);
      }

LABEL_170:
      v56 = 11;
LABEL_171:
      sub_245A312EC(&v338, v339[0]);
      sub_245A312EC(&v340, v341[0]);

LABEL_172:
      if (v343 < 0)
      {
        operator delete(__p[0]);
      }

LABEL_174:
      sub_245A30368(buf);
      objc_autoreleasePoolPop(context);
      if (v56 != 11 && v56)
      {
        v294 = 0;
        v295 = v307;
        goto LABEL_203;
      }

      if (++v321 == v315)
      {
        goto LABEL_186;
      }
    }
  }

  v306 = 0;
  v308 = 0;
LABEL_186:
  if (objc_msgSend_tileIsOpenForIncrementalIO(venuesCopy, v43, v44, v45, v46))
  {
    sub_245A3036C(buf);
    if (qword_28144B270 != -1)
    {
      sub_245A8E818();
    }

    v285 = qword_28144B278;
    if (os_log_type_enabled(v285, OS_LOG_TYPE_INFO))
    {
      *v346 = 0;
      _os_log_impl(&dword_245A2E000, v285, OS_LOG_TYPE_INFO, "@IndoorAvl, load, make sure we have no more venue bounds to read", v346, 2u);
    }

    if (objc_msgSend_getNextVenueBoundsIncrementally_(venuesCopy, v286, v287, v288, v289, buf))
    {
      if (qword_28144B270 != -1)
      {
        sub_245A8E818();
      }

      v290 = qword_28144B278;
      if (os_log_type_enabled(v290, OS_LOG_TYPE_ERROR))
      {
        *v346 = 0;
        _os_log_impl(&dword_245A2E000, v290, OS_LOG_TYPE_ERROR, "@IndoorAvl, load, had venues left over after iterating over all venues in tile. why?", v346, 2u);
      }
    }

    sub_245A30368(buf);
  }

  if (qword_28144B270 != -1)
  {
    sub_245A8E818();
  }

  v291 = qword_28144B278;
  if (os_log_type_enabled(v291, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134218240;
    v348 = v308;
    v349 = 2048;
    *v350 = v306;
    _os_log_impl(&dword_245A2E000, v291, OS_LOG_TYPE_DEBUG, "Found %zu floors across %zu venues", buf, 0x16u);
  }

  v295 = v307;
  v294 = v307;
LABEL_203:

  v292 = *MEMORY[0x277D85DE8];

  return v294;
}

- (id)getNearbyLocationGroupsForTile:(id)tile withUpdatedPos:(id)pos
{
  v7 = objc_msgSend_getNearbyLocationGroupsForTile_withUpdatedPos_nearLocationsOfInterest_(self, a2, v4, v5, v6, tile, pos, 0);

  return v7;
}

- (id)openTileParserAtPath:(id)path
{
  v54 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  if (qword_28144B270 != -1)
  {
    sub_245A8E67C();
  }

  v4 = qword_28144B278;
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v9 = objc_msgSend_absoluteString(pathCopy, v5, v6, v7, v8);
    v10 = v9;
    v52 = 136315138;
    v53 = objc_msgSend_UTF8String(v10, v11, v12, v13, v14);
    _os_log_impl(&dword_245A2E000, v4, OS_LOG_TYPE_INFO, "Request to get nearby location groups from availability tile at %s", &v52, 0xCu);
  }

  v19 = objc_msgSend_defaultManager(MEMORY[0x277CCAA00], v15, v16, v17, v18);
  v24 = objc_msgSend_path(pathCopy, v20, v21, v22, v23);
  v29 = objc_msgSend_fileExistsAtPath_(v19, v25, v26, v27, v28, v24);

  if (v29)
  {
    v30 = [CLAvailabilityTileParser alloc];
    v35 = objc_msgSend_initWithTilePathIncrementalIO_(v30, v31, v32, v33, v34, pathCopy);
    v36 = v35;
    if (v35)
    {
      v36 = v35;
      v37 = v36;
    }

    else
    {
      if (qword_28144B270 != -1)
      {
        sub_245A8E818();
      }

      v49 = qword_28144B278;
      if (os_log_type_enabled(qword_28144B278, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v52) = 0;
        _os_log_impl(&dword_245A2E000, v49, OS_LOG_TYPE_DEFAULT, "#Warning Couldn't load availability tile - ignoring request for nearby locations", &v52, 2u);
      }

      v37 = 0;
    }
  }

  else
  {
    if (qword_28144B270 != -1)
    {
      sub_245A8E818();
    }

    v36 = qword_28144B278;
    if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
    {
      v42 = objc_msgSend_path(pathCopy, v38, v39, v40, v41);
      v43 = v42;
      v48 = objc_msgSend_UTF8String(v42, v44, v45, v46, v47);
      v52 = 136315138;
      v53 = v48;
      _os_log_impl(&dword_245A2E000, v36, OS_LOG_TYPE_INFO, "#warning, cannot find file %s on-disk", &v52, 0xCu);
    }

    v37 = 0;
  }

  v50 = *MEMORY[0x277D85DE8];

  return v37;
}

- (id)getNearbyLocationGroups:(id)groups withUpdatedPos:(id)pos
{
  v7 = objc_msgSend_getNearbyLocationGroups_withUpdatedPos_nearLocationsOfInterest_(self, a2, v4, v5, v6, groups, pos, 0);

  return v7;
}

- (id)getNearbyLocationGroups:(id)groups withUpdatedPos:(id)pos nearLocationsOfInterest:(id)interest
{
  posCopy = pos;
  interestCopy = interest;
  v15 = objc_msgSend_openTileParserAtPath_(self, v10, v11, v12, v13, groups);
  if (v15)
  {
    v19 = objc_msgSend_getNearbyLocationGroupsForTile_withUpdatedPos_nearLocationsOfInterest_(self, v14, v16, v17, v18, v15, posCopy, interestCopy);
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

- (BOOL)shouldRecompute:(id)recompute
{
  v18 = *MEMORY[0x277D85DE8];
  recomputeCopy = recompute;
  lastFix = self->_lastFix;
  if (lastFix)
  {
    objc_msgSend_distBetweenLatLon_latlon1_(CLAvailableVenuesStateMachine, v4, v6, v7, v8, lastFix, recomputeCopy);
    v11 = v10;
    if (qword_28144B270 != -1)
    {
      sub_245A8E67C();
    }

    v12 = qword_28144B278;
    if (os_log_type_enabled(qword_28144B278, OS_LOG_TYPE_DEBUG))
    {
      v16 = 134217984;
      v17 = v11;
      _os_log_impl(&dword_245A2E000, v12, OS_LOG_TYPE_DEBUG, "@IndoorAvl, load, CLAvailableVenuesStateMachine, shouldRecompute, moveDist, %lf", &v16, 0xCu);
    }

    v13 = v11 >= self->_maxLoadRadius * 0.5;
  }

  else
  {
    v13 = 1;
  }

  v14 = *MEMORY[0x277D85DE8];
  return v13;
}

- (id)getNearbyLocationGroupsForTile:(id)tile withUpdatedPos:(id)pos nearLocationsOfInterest:(id)interest
{
  v46 = *MEMORY[0x277D85DE8];
  tileCopy = tile;
  posCopy = pos;
  interestCopy = interest;
  v11 = [CLIndoorAvailabilityTileParams alloc];
  AvlTile = objc_msgSend_getAvlTile(tileCopy, v12, v13, v14, v15);
  v21 = objc_msgSend_initWithAvailabilityTile_(v11, v17, v18, v19, v20, AvlTile);
  availabilityTileParams = self->_availabilityTileParams;
  self->_availabilityTileParams = v21;

  if (self->_lastFix)
  {
    if (qword_28144B270 != -1)
    {
      sub_245A8E67C();
    }

    v23 = qword_28144B278;
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
    {
      objc_msgSend_latitude(self->_lastFix, v24, v25, v26, v27);
      v29 = v28;
      objc_msgSend_longitude(self->_lastFix, v30, v28, v31, v32);
      v42 = 134545921;
      v43 = v29;
      v44 = 2053;
      v45 = v33;
      _os_log_impl(&dword_245A2E000, v23, OS_LOG_TYPE_DEBUG, "Previous load occurred at %{sensitive}.7lf, %{sensitive}.7lf", &v42, 0x16u);
    }
  }

  else
  {
    if (qword_28144B270 != -1)
    {
      sub_245A8E67C();
    }

    v38 = qword_28144B278;
    if (os_log_type_enabled(qword_28144B278, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v42) = 0;
      _os_log_impl(&dword_245A2E000, v38, OS_LOG_TYPE_DEBUG, "No previous location stored in state, we should definitely recompute", &v42, 2u);
    }
  }

  v39 = objc_msgSend_recomputeIfNecessary_withGlobalAvailabilityTile_andAdditionalLOIs_(self, v34, v35, v36, v37, posCopy, tileCopy, interestCopy);

  v40 = *MEMORY[0x277D85DE8];

  return v39;
}

- (id)recomputeIfNecessary:(id)necessary withGlobalAvailabilityTile:(id)tile andAdditionalLOIs:(id)is
{
  v37 = *MEMORY[0x277D85DE8];
  necessaryCopy = necessary;
  tileCopy = tile;
  isCopy = is;
  v16 = isCopy;
  if (!necessaryCopy)
  {
    if (qword_28144B270 != -1)
    {
      sub_245A8E67C();
    }

    v19 = qword_28144B278;
    if (os_log_type_enabled(qword_28144B278, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v36) = 0;
      _os_log_impl(&dword_245A2E000, v19, OS_LOG_TYPE_DEBUG, "Have to recompute nearby location groups because newCoordinate was not nil?", &v36, 2u);
    }

    goto LABEL_18;
  }

  if (isCopy)
  {
    if (qword_28144B270 != -1)
    {
      sub_245A8E67C();
    }

    v17 = qword_28144B278;
    if (!os_log_type_enabled(qword_28144B278, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_17;
    }

    LOWORD(v36) = 0;
    v18 = "Have to recompute because we have locations of interest";
LABEL_16:
    _os_log_impl(&dword_245A2E000, v17, OS_LOG_TYPE_DEBUG, v18, &v36, 2u);
LABEL_17:
    objc_storeStrong(&self->_lastFix, necessary);
LABEL_18:
    v20 = objc_alloc(MEMORY[0x277CBEB18]);
    v25 = objc_msgSend_initWithArray_(v20, v21, v22, v23, v24, v16);
    v30 = v25;
    if (necessaryCopy)
    {
      objc_msgSend_addObject_(v25, v26, v27, v28, v29, necessaryCopy);
    }

    v31 = objc_msgSend_computeAvailableVenues_nearCoordinates_(self, v26, v27, v28, v29, tileCopy, v30, v36, v37);

    goto LABEL_21;
  }

  if (objc_msgSend_shouldRecompute_(self, v12, v13, v14, v15, necessaryCopy))
  {
    if (qword_28144B270 != -1)
    {
      sub_245A8E67C();
    }

    v17 = qword_28144B278;
    if (!os_log_type_enabled(qword_28144B278, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_17;
    }

    LOWORD(v36) = 0;
    v18 = "Have to recompute nearby location groups because we moved far enough away";
    goto LABEL_16;
  }

  if (qword_28144B270 != -1)
  {
    sub_245A8E67C();
  }

  v34 = qword_28144B278;
  if (os_log_type_enabled(qword_28144B278, OS_LOG_TYPE_DEBUG))
  {
    v35 = self->_lastFix == 0;
    LODWORD(v36) = 67109120;
    HIDWORD(v36) = v35;
    _os_log_impl(&dword_245A2E000, v34, OS_LOG_TYPE_DEBUG, "No need to recompute nearby location groups, (_lastFix==nil) = %d", &v36, 8u);
  }

  v31 = 0;
LABEL_21:

  v32 = *MEMORY[0x277D85DE8];

  return v31;
}

+ (int64_t)getLocationContextFromVenueBounds:(const void *)bounds
{
  if ((*(bounds + 104) & 8) != 0)
  {
    return *(bounds + 24) != 1;
  }

  v6 = *(bounds + 6);
  if (!v6)
  {
    return 0;
  }

  v7 = *(bounds + 2);
  v8 = 8 * v6;
  while (1)
  {
    if (*(*v7 + 23) < 0)
    {
      v9 = **v7;
    }

    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, v3, v4, v5);
    if ((objc_msgSend_hasPrefix_(v10, v11, v12, v13, v14, @"G") & 1) == 0)
    {
      break;
    }

    ++v7;
    v8 -= 8;
    if (!v8)
    {
      return 0;
    }
  }

  hasPrefix = objc_msgSend_hasPrefix_(v10, v15, v16, v17, v18, @"LR");

  return hasPrefix;
}

@end