os_log_t _rt_log_facility_prepare(uint64_t a1)
{
  result = os_log_create("com.apple.CoreRoutine", *(a1 + 8));
  *(a1 + 16) = result;
  return result;
}

id _rt_log_facility_get_os_log(dispatch_once_t *predicate)
{
  if (*predicate != -1)
  {
    dispatch_once_f(predicate, predicate, _rt_log_facility_prepare);
  }

  v2 = predicate[2];

  return v2;
}

id _RTSafeArray(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v9 = a1;
  v10 = [MEMORY[0x1E695DF70] array];
  v14 = &a9;
  v11 = v9;
  if (!v9)
  {
    goto LABEL_4;
  }

  while (v11 != 1)
  {
    [v10 addObject:?];
    do
    {
LABEL_4:
      v12 = v14++;
      v11 = *v12;
    }

    while (!*v12);
  }

  return v10;
}

id _RTMultiErrorCreate(void *a1)
{
  v44 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v23 = [a1 copy];
    v1 = [v23 flatten];
    v2 = [MEMORY[0x1E695DF70] array];
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    obj = v1;
    v3 = [obj countByEnumeratingWithState:&v32 objects:v43 count:16];
    if (v3)
    {
      v4 = v3;
      v5 = *v33;
      v6 = 0x1E695D000uLL;
      v24 = *v33;
      do
      {
        v7 = 0;
        v25 = v4;
        do
        {
          if (*v33 != v5)
          {
            objc_enumerationMutation(obj);
          }

          v8 = *(*(&v32 + 1) + 8 * v7);
          v9 = *(v6 + 3784);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v27 = v7;
            v30 = 0u;
            v31 = 0u;
            v28 = 0u;
            v29 = 0u;
            v10 = v8;
            v11 = [v10 countByEnumeratingWithState:&v28 objects:v42 count:16];
            if (v11)
            {
              v12 = v11;
              v13 = *v29;
              do
              {
                v14 = 0;
                do
                {
                  if (*v29 != v13)
                  {
                    objc_enumerationMutation(v10);
                  }

                  v15 = *(*(&v28 + 1) + 8 * v14);
                  objc_opt_class();
                  if ((objc_opt_isKindOfClass() & 1) == 0)
                  {
                    v16 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
                    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
                    {
                      *buf = 136315394;
                      v39 = "NSError * _Nonnull _RTMultiErrorCreate(NSArray *__strong _Nonnull)";
                      v40 = 1024;
                      v41 = 49;
                      _os_log_error_impl(&dword_1BF1C4000, v16, OS_LOG_TYPE_ERROR, "All parameters must be NSError or nil. (in %s:%d)", buf, 0x12u);
                    }
                  }

                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    [v2 addObject:v10];
                  }

                  ++v14;
                }

                while (v12 != v14);
                v12 = [v10 countByEnumeratingWithState:&v28 objects:v42 count:16];
              }

              while (v12);
            }

            v5 = v24;
            v4 = v25;
            v6 = 0x1E695D000;
            v7 = v27;
          }

          else
          {
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              v17 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
              if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
              {
                *buf = 136315394;
                v39 = "NSError * _Nonnull _RTMultiErrorCreate(NSArray *__strong _Nonnull)";
                v40 = 1024;
                v41 = 55;
                _os_log_error_impl(&dword_1BF1C4000, v17, OS_LOG_TYPE_ERROR, "All parameters must be NSError or nil. (in %s:%d)", buf, 0x12u);
              }
            }

            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              [v2 addObject:v8];
            }
          }

          ++v7;
        }

        while (v7 != v4);
        v4 = [obj countByEnumeratingWithState:&v32 objects:v43 count:16];
      }

      while (v4);
    }

    if ([v2 count] < 2)
    {
      v20 = [v2 firstObject];
    }

    else
    {
      v18 = MEMORY[0x1E696ABC0];
      v36[0] = *MEMORY[0x1E696A578];
      v36[1] = @"RTDetailedErrorsKey";
      v37[0] = @"Multiple errors occurred.";
      v37[1] = v2;
      v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v37 forKeys:v36 count:2];
      v20 = [v18 errorWithDomain:@"RTErrorDomain" code:9 userInfo:v19];
    }
  }

  else
  {
    v20 = 0;
  }

  v21 = *MEMORY[0x1E69E9840];

  return v20;
}

double RTCommonIsCoordinateValid(double a1, double a2)
{
  v2 = fabs(a1);
  v3 = 1.0;
  if (a2 < -180.0)
  {
    v3 = 0.0;
  }

  if (a2 > 180.0 || v2 > 90.0)
  {
    return 0.0;
  }

  else
  {
    return v3;
  }
}

void RTCommonCalculateDistanceRadius(int a1, double a2, double a3, double a4, double a5)
{
  v7 = (a2 + a4) * 0.0174532925;
  if (a3 < 0.0)
  {
    a3 = a3 + 360.0;
  }

  if (a5 < 0.0)
  {
    a5 = a5 + 360.0;
  }

  v8 = a5 - a3;
  if (v8 <= 180.0)
  {
    if (v8 < -180.0)
    {
      v8 = v8 + 360.0;
    }
  }

  else
  {
    v8 = v8 + -360.0;
  }

  v9 = v7 * 0.5;
  v10 = (a4 - a2) * 0.0174532925;
  v11 = v8;
  if (v8 < 0)
  {
    v11 = -v11;
  }

  v12 = a4 - a2;
  if (v12 < 0)
  {
    v12 = a2 - a4;
  }

  v13 = v8 * 0.0174532925;
  if (v12 > 2 || v11 > 2)
  {
    if (a1)
    {
      sin(v9);
    }

    v14 = sin(v10 * 0.5);
    v15 = v14 * v14;
    v16 = cos(a2 * 0.0174532925);
    v17 = v16 * cos(a4 * 0.0174532925);
    v18 = sin(v13 * 0.5);
    v19 = v15 + v17 * (v18 * v18);
    v20 = 1.0 - v19;
    if (v19 < 0.0)
    {
      v19 = 0.0;
    }

    if (v20 < 0.0)
    {
      v20 = 0.0;
    }

    atan2(sqrt(v19), sqrt(v20));
  }

  else
  {
    __sincos_stret(v9);
  }
}

double RTCommonGetDestinationCoordinate(double *a1, double *a2, double a3, double a4, double a5, double a6)
{
  v8 = a4 * 0.0174532925;
  v9 = a5 * 0.0174532925;
  v10 = a6 / 6378137.0;
  v11 = __sincos_stret(a3 * 0.0174532925);
  v12 = __sincos_stret(v10);
  v13 = __sincos_stret(v9);
  v14 = asin(v13.__cosval * (v11.__cosval * v12.__sinval) + v11.__sinval * v12.__cosval);
  v15 = sin(v14);
  v16 = atan2(v11.__cosval * (v13.__sinval * v12.__sinval), v12.__cosval - v11.__sinval * v15);
  *a1 = v14 / 0.0174532925;
  result = (v8 + v16) / 0.0174532925;
  *a2 = result;
  return result;
}

void RTCommonCalculateBoundingBox(double *a1, double *a2, double *a3, double *a4, double a5, double a6, double a7)
{
  if (a1 && a2 && a3)
  {
    if (a4)
    {
      v13 = a6 * 0.0174532925;
      v14 = a7 / 6378137.0;
      v15 = __sincos_stret(a5 * 0.0174532925);
      v16 = __sincos_stret(v14);
      v17 = vabdd_f64(asin(v15.__cosval * v16.__sinval + v15.__sinval * v16.__cosval) / 0.0174532925, a5);
      v18 = asin(v15.__cosval * v16.__sinval * 6.123234e-17 + v15.__sinval * v16.__cosval);
      v19 = sin(v18);
      v20 = vabdd_f64((v13 + atan2(v15.__cosval * v16.__sinval, v16.__cosval - v15.__sinval * v19)) / 0.0174532925, a6);
      *a1 = a5 - v17;
      *a3 = v17 + a5;
      *a2 = a6 - v20;
      *a4 = v20 + a6;
    }
  }
}

BOOL RTCommonConvertGeodeticToLocalFrame(double *a1, double *a2, double *a3, double a4, double a5, double a6, double a7, double a8, double a9)
{
  v9 = vabdd_f64(a4, a7);
  if (v9 <= 2.0)
  {
    v16 = (a4 + a7) * 0.5 * 0.0174532925;
    v17 = (a7 - a4) * 0.0174532925;
    v18 = 360.0;
    if (a5 < 0.0)
    {
      a5 = a5 + 360.0;
    }

    v19 = a8 + 360.0;
    if (a8 >= 0.0)
    {
      v19 = a8;
    }

    v20 = v19 - a5;
    if (v20 <= 180.0)
    {
      if (v20 >= -180.0)
      {
LABEL_10:
        v21 = v20 * 0.0174532925;
        v22 = __sincos_stret(v16);
        v23 = sqrt(v22.__sinval * -0.00669437999 * v22.__sinval + 1.0);
        *a1 = v17 * (6335439.33 / (v23 * (v23 * v23)) + a6);
        *a2 = v22.__cosval * (6378137.0 / v23 + a6) * v21;
        *a3 = a9 - a6;
        return v9 <= 2.0;
      }
    }

    else
    {
      v18 = -360.0;
    }

    v20 = v20 + v18;
    goto LABEL_10;
  }

  return v9 <= 2.0;
}

BOOL RTCommonConvertLocalFrameToGeodetic(double *a1, double *a2, double a3, double a4, double a5, double a6, double a7)
{
  v7 = fabs(a3);
  if (v7 <= 90.0)
  {
    v15 = __sincos_stret(a3 * 0.0174532925);
    v16 = sqrt(v15.__sinval * -0.00669437999 * v15.__sinval + 1.0);
    v17 = 6335439.33 / (v16 * (v16 * v16)) + a5;
    v18 = v15.__cosval * (6378137.0 / v16 + a5);
    if (v18 < 10.0)
    {
      v18 = 10.0;
    }

    *a1 = a3 + a6 / v17 * 57.2957795;
    *a2 = a4 + a7 / v18 * 57.2957795;
  }

  return v7 <= 90.0;
}

BOOL RTCommonRandomFlip(double a1)
{
  v8 = *MEMORY[0x1E69E9840];
  if (a1 < 0.0 || a1 > 1.0)
  {
    v3 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v6 = 134217984;
      v7 = a1;
      _os_log_error_impl(&dword_1BF1C4000, v3, OS_LOG_TYPE_ERROR, "RTCommonRandomFlip, invalid probability, %f, probability must be between 0 and 1", &v6, 0xCu);
    }
  }

  result = arc4random_uniform(0x7FFFFFFFu) / 2147483650.0 < a1;
  v5 = *MEMORY[0x1E69E9840];
  return result;
}

id RTErrorConnectionCreate(const char *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v22[1] = *MEMORY[0x1E69E9840];
  v10 = MEMORY[0x1E696AEC0];
  v11 = a2;
  v12 = [[v10 alloc] initWithFormat:v11 arguments:&a9];

  v13 = MEMORY[0x1E696ABC0];
  v21 = *MEMORY[0x1E696A578];
  v14 = MEMORY[0x1E696AEC0];
  v15 = NSStringFromSelector(a1);
  v16 = [v14 stringWithFormat:@"connection failure while servicing %@, %@", v15, v12];
  v22[0] = v16;
  v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:&v21 count:1];
  v18 = [v13 errorWithDomain:@"RTErrorDomain" code:8 userInfo:v17];

  v19 = *MEMORY[0x1E69E9840];

  return v18;
}

id RTErrorInvalidParameterCreate(const char *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v22[1] = *MEMORY[0x1E69E9840];
  v10 = MEMORY[0x1E696AEC0];
  v11 = a2;
  v12 = [[v10 alloc] initWithFormat:v11 arguments:&a9];

  v13 = MEMORY[0x1E696ABC0];
  v21 = *MEMORY[0x1E696A578];
  v14 = MEMORY[0x1E696AEC0];
  v15 = NSStringFromSelector(a1);
  v16 = [v14 stringWithFormat:@"invalid parameter passed to %@, %@", v15, v12];
  v22[0] = v16;
  v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:&v21 count:1];
  v18 = [v13 errorWithDomain:@"RTErrorDomain" code:7 userInfo:v17];

  v19 = *MEMORY[0x1E69E9840];

  return v18;
}

void sub_1BF1D8CB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1BF1D92A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33)
{
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose(&a33, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1BF1D9E50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41)
{
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose((v41 - 176), 8);
  _Block_object_dispose(&a41, 8);
  _Unwind_Resume(a1);
}

void sub_1BF1EC77C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  _Block_object_dispose(&a19, 8);
  _Block_object_dispose(&a25, 8);
  _Block_object_dispose(&a31, 8);
  _Block_object_dispose((v31 - 176), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__565(uint64_t a1, uint64_t a2)
{
  result = MEMORY[0x1BFB54DD0](*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

void _RTRequireInitializer(uint64_t a1, SEL aSelector)
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = NSStringFromSelector(aSelector);
  v5 = [v3 stringWithFormat:@"%@ requires the use of the initializer: %@", a1, v4];

  v6 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:v5 userInfo:0];
  objc_exception_throw(v6);
}

void log_analytics_submission(void *a1, void *a2)
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v5 = objc_opt_new();
  [v5 appendFormat:@"\n=== BEGIN analytics submission for event %@ ===\n", v3];
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = [v4 allKeys];
  v7 = [v6 sortedArrayUsingComparator:&__block_literal_global_2];

  v8 = [v7 countByEnumeratingWithState:&v16 objects:v22 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v17;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v17 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v16 + 1) + 8 * i);
        v13 = [v4 objectForKeyedSubscript:v12];
        [v5 appendFormat:@"%@ : %@\n", v12, v13];
      }

      v9 = [v7 countByEnumeratingWithState:&v16 objects:v22 count:16];
    }

    while (v9);
  }

  [v5 appendFormat:@"=== END analytics submission for event %@ ===\n", v3];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    v14 = _rt_log_facility_get_os_log(RTLogFacilityMetric);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v21 = v5;
      _os_log_impl(&dword_1BF1C4000, v14, OS_LOG_TYPE_INFO, "%@", buf, 0xCu);
    }
  }

  v15 = *MEMORY[0x1E69E9840];
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1BF201B94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_1BF211E14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__CFString *RTLinkQualityToString(uint64_t a1)
{
  if ((a1 - 1) > 3)
  {
    return @"RTLinkQualityUnknown";
  }

  else
  {
    return off_1E80B4EF0[a1 - 1];
  }
}

__double2 __sincos_stret(double a1)
{
  MEMORY[0x1EEE73570](a1);
  result.__cosval = v2;
  result.__sinval = v1;
  return result;
}