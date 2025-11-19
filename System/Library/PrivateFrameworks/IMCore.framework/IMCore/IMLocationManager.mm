@interface IMLocationManager
+ (Class)__CLInUseAssertionClass;
+ (Class)__CLLocationManagerClass;
+ (id)locationShifter;
+ (id)sharedInstance;
- (BOOL)_shouldSendLocation:(id)a3 timeIntervalSinceStart:(double)a4;
- (BOOL)preciseLocationAuthorized;
- (CLLocation)currentLocation;
- (IMLocationManager)init;
- (void)_errorHappend:(id)a3;
- (void)_fireCompletionHandlers;
- (void)_locationManagerTimedOut;
- (void)_locationUpdateTimerFired:(id)a3;
- (void)_startLocationUpdateTimerWithAuthorizedHandler:(id)a3 updateHandler:(id)a4;
- (void)locationManager:(id)a3 didFailWithError:(id)a4;
- (void)locationManager:(id)a3 didUpdateLocations:(id)a4;
- (void)locationManagerDidChangeAuthorization:(id)a3;
- (void)shiftedLocationWithLocation:(id)a3 completion:(id)a4;
- (void)startUpdatingCurrentLocationWithForegroundAssertionForBundleIdentifier:(id)a3 withAuthorizedHandler:(id)a4 updateHandler:(id)a5;
@end

@implementation IMLocationManager

- (IMLocationManager)init
{
  v15.receiver = self;
  v15.super_class = IMLocationManager;
  v2 = [(IMLocationManager *)&v15 init];
  if (v2)
  {
    if (qword_1EB2EA460 != -1)
    {
      sub_1A84E2BC0();
    }

    v3 = objc_opt_class();
    v6 = objc_alloc_init(objc_msgSend___CLLocationManagerClass(v3, v4, v5));
    objc_msgSend_setDelegate_(v6, v7, v2);
    objc_msgSend_setDesiredAccuracy_(v6, v8, v9, *&qword_1EB2EA458);
    locationManager = v2->_locationManager;
    v2->_locationManager = v6;
    v11 = v6;

    v12 = objc_alloc_init(MEMORY[0x1E695DF70]);
    handlers = v2->_handlers;
    v2->_handlers = v12;
  }

  return v2;
}

+ (id)sharedInstance
{
  if (qword_1ED767960 != -1)
  {
    sub_1A84E2BE8();
  }

  v3 = qword_1ED767900;

  return v3;
}

- (void)startUpdatingCurrentLocationWithForegroundAssertionForBundleIdentifier:(id)a3 withAuthorizedHandler:(id)a4 updateHandler:(id)a5
{
  v109 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v13 = v10;
  if (!v9 || !v10)
  {
    goto LABEL_40;
  }

  if (objc_msgSend_length(v8, v11, v12))
  {
    if (IMOSLoggingEnabled())
    {
      v16 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v108 = v8;
        _os_log_impl(&dword_1A823F000, v16, OS_LOG_TYPE_INFO, "IMLocationManager taking CLInUseAssertion for %@", buf, 0xCu);
      }
    }

    v17 = objc_opt_class();
    v20 = objc_msgSend___CLInUseAssertionClass(v17, v18, v19);
    v22 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v21, @"Treating %@ as a foreground process for location sending.", v8);
    v24 = objc_msgSend_newAssertionForBundleIdentifier_withReason_level_(v20, v23, v8, v22, 1);

    objc_msgSend_setInUseAssertion_(self, v25, v24);
  }

  v26 = objc_msgSend_authorizationStatus(self, v14, v15);
  if (v26)
  {
    v27 = (v26 - 3) < 2;
    v28 = IMOSLoggingEnabled();
    if (v27)
    {
      if (v28)
      {
        v31 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
        {
          v34 = objc_msgSend_locationManager(self, v32, v33);
          v37 = objc_msgSend__limitsPrecision(v34, v35, v36);
          v38 = @"NO";
          if (v37)
          {
            v38 = @"YES";
          }

          *buf = 138412290;
          v108 = v38;
          _os_log_impl(&dword_1A823F000, v31, OS_LOG_TYPE_INFO, "Starting with _limitsPrecision %@", buf, 0xCu);
        }
      }

      v39 = objc_msgSend_locationUpdateTimer(self, v29, v30);
      v40 = v39 == 0;

      if (!v40)
      {
        v43 = objc_msgSend_locationUpdateTimer(self, v41, v42);
        objc_msgSend_invalidate(v43, v44, v45);

        objc_msgSend_setLocationUpdateTimer_(self, v46, 0);
      }

      if (!objc_msgSend_firstAuthorizationCallbackArrived(self, v41, v42))
      {
        v62 = objc_msgSend_copy(v9, v47, v48);

        v61 = objc_msgSend_copy(v13, v89, v90);
        v93 = objc_msgSend_handlers(self, v91, v92);
        v94 = _Block_copy(v62);
        v105[0] = v94;
        v95 = _Block_copy(v61);
        v105[1] = v95;
        v97 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v96, v105, 2);
        objc_msgSend_addObject_(v93, v98, v97);

        goto LABEL_41;
      }

      v49 = objc_msgSend_locationManager(self, v47, v48);
      if (objc_msgSend__limitsPrecision(v49, v50, v51))
      {
        v54 = objc_msgSend_inRequestPreciseLocation(self, v52, v53);

        if ((v54 & 1) == 0)
        {
          if (IMOSLoggingEnabled())
          {
            v57 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v57, OS_LOG_TYPE_INFO))
            {
              *buf = 0;
              _os_log_impl(&dword_1A823F000, v57, OS_LOG_TYPE_INFO, "Requesting temporary full precision.", buf, 2u);
            }
          }

          objc_msgSend_setInRequestPreciseLocation_(self, v56, 1);
          objc_initWeak(buf, self);
          v60 = objc_msgSend_locationManager(self, v58, v59);
          v101[0] = MEMORY[0x1E69E9820];
          v101[1] = 3221225472;
          v101[2] = sub_1A83AAA34;
          v101[3] = &unk_1E7814220;
          objc_copyWeak(&v104, buf);
          v61 = v13;
          v102 = v61;
          v62 = v9;
          v103 = v62;
          objc_msgSend_requestTemporaryFullAccuracyAuthorizationWithPurposeKey_completion_(v60, v63, @"SendLocationDescription", v101);

          objc_destroyWeak(&v104);
          objc_destroyWeak(buf);
          goto LABEL_41;
        }
      }

      else
      {
      }

      objc_msgSend_setInRequestPreciseLocation_(self, v55, 0);
      objc_msgSend__startLocationUpdateTimerWithAuthorizedHandler_updateHandler_(self, v99, v9, v13);
    }

    else
    {
      if (v28)
      {
        v82 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v82, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_1A823F000, v82, OS_LOG_TYPE_INFO, "IMLocationManager denied when in use location authorization", buf, 2u);
        }
      }

      v83 = objc_alloc(MEMORY[0x1E695DF20]);
      v85 = objc_msgSend_initWithObjectsAndKeys_(v83, v84, @"IMLocationManager does not have location access", *MEMORY[0x1E696A578], 0);
      v86 = objc_alloc(MEMORY[0x1E696ABC0]);
      v88 = objc_msgSend_initWithDomain_code_userInfo_(v86, v87, *MEMORY[0x1E69A5F40], 42, v85);
      (v13)[2](v13, 0, v88);
    }

LABEL_40:
    v61 = v13;
    v62 = v9;
    goto LABEL_41;
  }

  if (IMOSLoggingEnabled())
  {
    v66 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v66, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1A823F000, v66, OS_LOG_TYPE_INFO, "IMLocationManager location authorization not determined, requesting when in use authorization", buf, 2u);
    }
  }

  v67 = objc_msgSend_locationManager(self, v64, v65);
  objc_msgSend_requestWhenInUseAuthorization(v67, v68, v69);

  v62 = objc_msgSend_copy(v9, v70, v71);
  v61 = objc_msgSend_copy(v13, v72, v73);

  v76 = objc_msgSend_handlers(self, v74, v75);
  v77 = _Block_copy(v62);
  v106[0] = v77;
  v78 = _Block_copy(v61);
  v106[1] = v78;
  v80 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v79, v106, 2);
  objc_msgSend_addObject_(v76, v81, v80);

LABEL_41:
  v100 = *MEMORY[0x1E69E9840];
}

- (void)_startLocationUpdateTimerWithAuthorizedHandler:(id)a3 updateHandler:(id)a4
{
  v45[2] = *MEMORY[0x1E69E9840];
  v6 = *(a3 + 2);
  v7 = a4;
  v8 = a3;
  v6();
  v11 = objc_msgSend_copy(v8, v9, v10);

  v14 = objc_msgSend_copy(v7, v12, v13);
  v17 = objc_msgSend_handlers(self, v15, v16);
  v18 = _Block_copy(v11);
  v45[0] = v18;
  v19 = _Block_copy(v14);
  v45[1] = v19;
  v21 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v20, v45, 2);
  objc_msgSend_addObject_(v17, v22, v21);

  v25 = objc_msgSend_locationUpdateTimer(self, v23, v24);
  LOBYTE(v17) = v25 == 0;

  if ((v17 & 1) == 0)
  {
    v28 = objc_msgSend_locationUpdateTimer(self, v26, v27);
    objc_msgSend_invalidate(v28, v29, v30);

    objc_msgSend_setLocationUpdateTimer_(self, v31, 0);
  }

  v32 = objc_msgSend_date(MEMORY[0x1E695DF00], v26, v27);
  objc_msgSend_setLocateStartTime_(self, v33, v32);

  v35 = objc_msgSend_scheduledTimerWithTimeInterval_target_selector_userInfo_repeats_(MEMORY[0x1E695DFF0], v34, self, sel__locationUpdateTimerFired_, 0, 1, 1.0);
  objc_msgSend_setLocationUpdateTimer_(self, v36, v35);
  v39 = objc_msgSend_locationManager(self, v37, v38);
  objc_msgSend_startUpdatingLocation(v39, v40, v41);

  if (IMOSLoggingEnabled())
  {
    v42 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
    {
      *v44 = 0;
      _os_log_impl(&dword_1A823F000, v42, OS_LOG_TYPE_INFO, "Started location update", v44, 2u);
    }
  }

  v43 = *MEMORY[0x1E69E9840];
}

- (BOOL)preciseLocationAuthorized
{
  v3 = objc_msgSend_locationManager(self, a2, v2);
  v6 = objc_msgSend_accuracyAuthorization(v3, v4, v5) == 0;

  return v6;
}

- (CLLocation)currentLocation
{
  v3 = objc_msgSend_locationManager(self, a2, v2);
  v6 = objc_msgSend_location(v3, v4, v5);

  return v6;
}

- (void)locationManager:(id)a3 didUpdateLocations:(id)a4
{
  v6 = a3;
  v7 = a4;
  v10 = objc_msgSend_lastObject(v7, v8, v9);
  if (v10)
  {
    if (IMOSLoggingEnabled())
    {
      v12 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        *v14 = 0;
        _os_log_impl(&dword_1A823F000, v12, OS_LOG_TYPE_INFO, "Location manager got updated location", v14, 2u);
      }
    }

    objc_msgSend_setLocation_(self, v11, v10);
    objc_msgSend_setError_(self, v13, 0);
  }
}

- (void)locationManager:(id)a3 didFailWithError:(id)a4
{
  v15 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (objc_msgSend_code(v7, v8, v9))
  {
    if (IMOSLoggingEnabled())
    {
      v11 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v13 = 138412290;
        v14 = v7;
        _os_log_impl(&dword_1A823F000, v11, OS_LOG_TYPE_INFO, "Location manager failed with error %@", &v13, 0xCu);
      }
    }

    objc_msgSend__errorHappend_(self, v10, v7);
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (void)_errorHappend:(id)a3
{
  v4 = a3;
  objc_msgSend_setLocation_(self, v5, 0);
  objc_msgSend_setError_(self, v6, v4);

  objc_msgSend__fireCompletionHandlers(self, v7, v8);
  v13 = objc_msgSend_locationManager(self, v9, v10);
  objc_msgSend_stopUpdatingLocation(v13, v11, v12);
}

- (void)locationManagerDidChangeAuthorization:(id)a3
{
  v53 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v7 = objc_msgSend_authorizationStatus(v4, v5, v6);
  if (IMOSLoggingEnabled())
  {
    v9 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v12 = objc_msgSend__limitsPrecision(v4, v10, v11);
      v13 = @"NO";
      if (v12)
      {
        v13 = @"YES";
      }

      *buf = 67109378;
      v50 = v7;
      v51 = 2112;
      v52 = v13;
      _os_log_impl(&dword_1A823F000, v9, OS_LOG_TYPE_INFO, "authorization status did change %u, received Coarse Location %@", buf, 0x12u);
    }
  }

  objc_msgSend_setFirstAuthorizationCallbackArrived_(self, v8, 1);
  objc_msgSend_setAuthorizationStatus_(self, v14, v7);
  v17 = objc_msgSend_handlers(self, v15, v16);
  v20 = objc_msgSend_count(v17, v18, v19) == 0;

  if (!v20)
  {
    if ((v7 - 3) > 1)
    {
      if ((v7 - 1) <= 1)
      {
        objc_msgSend__locationManagerTimedOut(self, v21, v22);
      }
    }

    else
    {
      v23 = objc_msgSend_handlers(self, v21, v22);
      v26 = objc_msgSend_copy(v23, v24, v25);

      v29 = objc_msgSend_handlers(self, v27, v28);
      objc_msgSend_removeAllObjects(v29, v30, v31);

      v46 = 0u;
      v47 = 0u;
      v44 = 0u;
      v45 = 0u;
      v32 = v26;
      v35 = objc_msgSend_countByEnumeratingWithState_objects_count_(v32, v33, &v44, v48, 16);
      if (v35)
      {
        v36 = *v45;
        do
        {
          for (i = 0; i != v35; ++i)
          {
            if (*v45 != v36)
            {
              objc_enumerationMutation(v32);
            }

            v38 = *(*(&v44 + 1) + 8 * i);
            v39 = objc_msgSend_objectAtIndexedSubscript_(v38, v34, 0, v44);
            v41 = objc_msgSend_objectAtIndexedSubscript_(v38, v40, 1);
            objc_msgSend_startUpdatingCurrentLocationWithAuthorizedHandler_updateHandler_(self, v42, v39, v41);
          }

          v35 = objc_msgSend_countByEnumeratingWithState_objects_count_(v32, v34, &v44, v48, 16);
        }

        while (v35);
      }
    }
  }

  v43 = *MEMORY[0x1E69E9840];
}

- (BOOL)_shouldSendLocation:(id)a3 timeIntervalSinceStart:(double)a4
{
  v5 = a3;
  objc_msgSend_horizontalAccuracy(v5, v6, v7);
  if (a4 <= 0.0)
  {
    v11 = 15.0;
  }

  else
  {
    v11 = a4;
  }

  if (v5)
  {
    v12 = v10 < 25.0 || v10 < 200.0 && v10 < v11 / 15.0 * 175.0 + 25.0;
    v13 = objc_msgSend_timestamp(v5, v8, v9);
    objc_msgSend_timeIntervalSinceNow(v13, v14, v15);
    v17 = v16;

    if (v17 < 0.0)
    {
      v12 &= -v17 - v11 <= 300.0;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (void)_locationUpdateTimerFired:(id)a3
{
  v4 = a3;
  v7 = objc_msgSend_locationManager(self, v5, v6);
  v10 = objc_msgSend_location(self, v8, v9);
  objc_msgSend_timeIntervalSinceReferenceDate(MEMORY[0x1E695DF00], v11, v12);
  v14 = v13;
  v17 = objc_msgSend_locateStartTime(self, v15, v16);
  objc_msgSend_timeIntervalSinceReferenceDate(v17, v18, v19);
  v21 = v14 - v20;

  if (objc_msgSend__shouldSendLocation_timeIntervalSinceStart_(self, v22, v10, v21))
  {
    if (IMOSLoggingEnabled())
    {
      v25 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1A823F000, v25, OS_LOG_TYPE_INFO, "Location update timer fired, got location with desired accuracy", buf, 2u);
      }
    }

    objc_msgSend__fireCompletionHandlers(self, v23, v24);
    objc_msgSend_stopUpdatingLocation(v7, v26, v27);
  }

  else
  {
    v28 = IMOSLoggingEnabled();
    if (v21 >= 15.0)
    {
      if (v28)
      {
        v32 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
        {
          *v34 = 0;
          _os_log_impl(&dword_1A823F000, v32, OS_LOG_TYPE_INFO, "Location update timer fired, did not get desired accuracy before timeout. Firing completion handlers", v34, 2u);
        }
      }

      objc_msgSend__locationManagerTimedOut(self, v29, v30);
    }

    else if (v28)
    {
      v31 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
      {
        *v33 = 0;
        _os_log_impl(&dword_1A823F000, v31, OS_LOG_TYPE_INFO, "Location update timer fired, desired accuracy not obtained but we have time left", v33, 2u);
      }
    }
  }
}

- (void)_locationManagerTimedOut
{
  v29 = *MEMORY[0x1E69E9840];
  v4 = objc_msgSend_locationAuthorizationDenied(self, a2, v2);
  v5 = @"IMLocationManager Timed Out";
  if (v4)
  {
    v5 = @"IMLocationManager does not have location authorization";
  }

  v6 = v5;
  if (objc_msgSend_locationAuthorizationDenied(self, v7, v8))
  {
    v9 = 42;
  }

  else
  {
    v9 = 41;
  }

  v10 = objc_alloc(MEMORY[0x1E695DF20]);
  v12 = objc_msgSend_initWithObjectsAndKeys_(v10, v11, v6, *MEMORY[0x1E696A578], 0);
  v13 = objc_alloc(MEMORY[0x1E696ABC0]);
  v15 = objc_msgSend_initWithDomain_code_userInfo_(v13, v14, *MEMORY[0x1E69A5F40], v9, v12);
  objc_msgSend_setLocation_(self, v16, 0);
  objc_msgSend_setError_(self, v17, v15);
  if (IMOSLoggingEnabled())
  {
    v20 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v28 = v6;
      _os_log_impl(&dword_1A823F000, v20, OS_LOG_TYPE_INFO, "Location manager timed out. Reason: %@", buf, 0xCu);
    }
  }

  objc_msgSend__fireCompletionHandlers(self, v18, v19);
  v23 = objc_msgSend_locationManager(self, v21, v22);
  objc_msgSend_stopUpdatingLocation(v23, v24, v25);

  v26 = *MEMORY[0x1E69E9840];
}

- (void)_fireCompletionHandlers
{
  v54 = *MEMORY[0x1E69E9840];
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v8 = objc_msgSend_location(self, v6, v7);
      v11 = objc_msgSend_error(self, v9, v10);
      v12 = v11;
      v13 = @"YES";
      if (!v8)
      {
        v13 = @"NO";
      }

      *buf = 138412546;
      v51 = v13;
      v52 = 2112;
      v53 = v11;
      _os_log_impl(&dword_1A823F000, v5, OS_LOG_TYPE_INFO, "Location manager firing completion handlers. Has valid location %@ error %@", buf, 0x16u);
    }
  }

  v14 = objc_msgSend_inUseAssertion(self, v3, v4);

  if (v14)
  {
    if (IMOSLoggingEnabled())
    {
      v19 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1A823F000, v19, OS_LOG_TYPE_INFO, "Invalidating CLInUseAssertion.", buf, 2u);
      }
    }

    v20 = objc_msgSend_inUseAssertion(self, v17, v18);
    objc_msgSend_invalidate(v20, v21, v22);

    objc_msgSend_setInUseAssertion_(self, v23, 0);
  }

  v24 = objc_msgSend_location(self, v15, v16);
  if (v24)
  {
  }

  else
  {
    v29 = objc_msgSend_error(self, v25, v26);
    v30 = v29 == 0;

    if (v30)
    {
      goto LABEL_22;
    }
  }

  v31 = objc_msgSend_locationUpdateTimer(self, v27, v28);
  v32 = v31 == 0;

  if (!v32)
  {
    v35 = objc_msgSend_locationUpdateTimer(self, v33, v34);
    objc_msgSend_invalidate(v35, v36, v37);

    objc_msgSend_setLocationUpdateTimer_(self, v38, 0);
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = sub_1A83ABD60;
  aBlock[3] = &unk_1E7814248;
  aBlock[4] = self;
  v39 = _Block_copy(aBlock);
  v42 = objc_msgSend_location(self, v40, v41);
  v43 = v42 == 0;

  if (v43)
  {
    v39[2](v39, 0);
  }

  else
  {
    v46 = objc_msgSend_location(self, v44, v45);
    objc_msgSend_shiftedLocationWithLocation_completion_(self, v47, v46, v39);
  }

LABEL_22:
  v48 = *MEMORY[0x1E69E9840];
}

+ (id)locationShifter
{
  if (qword_1EB2EA470 != -1)
  {
    sub_1A84E2BFC();
  }

  v3 = qword_1EB2EA468;

  return v3;
}

- (void)shiftedLocationWithLocation:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = objc_opt_class();
  v11 = objc_msgSend_locationShifter(v8, v9, v10);
  if (!v11)
  {
    goto LABEL_4;
  }

  v12 = v11;
  v13 = objc_opt_class();
  v16 = objc_msgSend_locationShifter(v13, v14, v15);
  v17 = objc_opt_class();
  isLocationShiftRequiredForLocation = objc_msgSend_isLocationShiftRequiredForLocation_(v17, v18, v6);

  if (isLocationShiftRequiredForLocation)
  {
    v20 = dispatch_get_global_queue(0, 0);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_1A83AC0B0;
    block[3] = &unk_1E7810190;
    block[4] = self;
    v22 = v6;
    v23 = v7;
    dispatch_async(v20, block);
  }

  else
  {
LABEL_4:
    (*(v7 + 2))(v7, v6);
  }
}

+ (Class)__CLLocationManagerClass
{
  if (qword_1EB2EA480 != -1)
  {
    sub_1A84E2C10();
  }

  v3 = qword_1EB2EA478;

  return v3;
}

+ (Class)__CLInUseAssertionClass
{
  if (qword_1EB2EA490 != -1)
  {
    sub_1A84E2C24();
  }

  v3 = qword_1EB2EA488;

  return v3;
}

@end