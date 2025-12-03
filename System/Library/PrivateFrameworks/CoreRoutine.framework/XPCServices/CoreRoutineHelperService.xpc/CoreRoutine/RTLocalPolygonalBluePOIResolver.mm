@interface RTLocalPolygonalBluePOIResolver
- (double)computeOverlapForLocation:(id)location withGEOBluePOIAOIPolygon:(id)polygon distanceToAOIBoundary:(id *)boundary;
- (id)inferLocalPolygonalBluePOIsWithReferenceLocation:(id)location queryTime:(id)time distanceToNearestAOILowerBound:(id *)bound error:(id *)error;
- (polygon<boost::geometry::model::point<double,)polygonFromGEOBluePOIAOIPolygon:()boost:()true :()true geometry:()std:()std:()std:(std:(RTLocalPolygonalBluePOIResolver *)self :(SEL)a3 allocator> *__return_ptr)retstr :(id)a4 allocator :vector :vector :cs::spherical_equatorial<boost::geometry::degree>>;
@end

@implementation RTLocalPolygonalBluePOIResolver

- (polygon<boost::geometry::model::point<double,)polygonFromGEOBluePOIAOIPolygon:()boost:()true :()true geometry:()std:()std:()std:(std:(RTLocalPolygonalBluePOIResolver *)self :(SEL)a3 allocator> *__return_ptr)retstr :(id)a4 allocator :vector :vector :cs::spherical_equatorial<boost::geometry::degree>>
{
  v76 = a4;
  v5 = 0;
  v6 = 0;
  *&retstr->var0.var0 = 0u;
  *&retstr->var0.var2 = 0u;
  *&retstr->var1.var1 = 0u;
  while ([v76 pointCount] > v6)
  {
    points = [v76 points];
    v8 = *([v76 points] + v5);
    *&v77[0] = *&points[v5 + 8];
    *(&v77[0] + 1) = v8;
    sub_100006C8C(retstr, v77);
    ++v6;
    v5 += 16;
  }

  holes = [v76 holes];
  v10 = [holes count];

  if (v10)
  {
    holes2 = [v76 holes];
    sub_10002BD3C(&retstr->var1, [holes2 count]);

    for (i = 0; ; ++i)
    {
      holes3 = [v76 holes];
      v14 = [holes3 count];

      if (v14 <= i)
      {
        break;
      }

      holes4 = [v76 holes];
      v16 = [holes4 objectAtIndexedSubscript:i];

      v17 = 0;
      for (j = 0; [v16 pointCount] > j; ++j)
      {
        points2 = [v16 points];
        v20 = *([v16 points] + v17);
        v21 = retstr->var1.var0 + 24 * i;
        *&v77[0] = *&points2[v17 + 8];
        *(&v77[0] + 1) = v20;
        sub_100006C8C(v21, v77);
        v17 += 16;
      }
    }
  }

  var0 = retstr->var0.var0;
  var1 = retstr->var0.var1;
  v24 = var1 - retstr->var0.var0;
  if (v24 >= 0x21)
  {
    v25 = *var0;
    v26 = var0[1];
    if (!sub_10000B2C4(*var0, v26, *(var1 - 2), *(var1 - 1)))
    {
      *v77 = v25;
      *(v77 + 1) = v26;
      sub_100006C8C(retstr, v77);
      var0 = retstr->var0.var0;
      var1 = retstr->var0.var1;
      v24 = var1 - retstr->var0.var0;
    }

    if (v24 >= 0x40)
    {
      v27 = var0 + 2;
      if (v27 != var1)
      {
        v28 = 0;
        v29 = 0.0;
        do
        {
          v30 = *(v27 - 2);
          v31 = *v27;
          if (v30 != *v27)
          {
            if ((*&v30 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*&v31 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
            {
              goto LABEL_22;
            }

            v33 = fabs(v30);
            v34 = fabs(v31);
            v35 = vabdd_f64(v30, v31);
            if (v33 >= v34)
            {
              v36 = v33;
            }

            else
            {
              v36 = v34;
            }

            if (v36 < 1.0)
            {
              v36 = 1.0;
            }

            if (v35 > v36 * 2.22044605e-16)
            {
LABEL_22:
              v29 = v29 + sub_10000A33C(v27 - 2, v27);
              v28 += sub_10000A5E4(v27 - 2, v27);
            }
          }

          v27 += 2;
        }

        while (v27 != var1);
        if (v28)
        {
          v37 = ((v28 >> 1) + 1);
          v38 = fabs(v29);
          v39 = -v38;
          v40 = -(v38 - v37 * 6.28318531);
          v41 = -(v39 + v37 * 6.28318531);
          if (v29 <= 0.0)
          {
            v29 = v40;
          }

          else
          {
            v29 = v41;
          }
        }

        if (v29 < 0.0)
        {
          v43 = retstr->var0.var0;
          v42 = retstr->var0.var1;
          if (retstr->var0.var0 != v42)
          {
            v44 = v42 - 16;
            if (v44 > v43)
            {
              v45 = v43 + 16;
              do
              {
                v46 = *(v45 - 1);
                *(v45 - 1) = *v44;
                *v44 = v46;
                v44 -= 16;
                v47 = v45 >= v44;
                v45 += 16;
              }

              while (!v47);
            }
          }
        }
      }
    }
  }

  v48 = retstr->var1.var0;
  for (k = retstr->var1.var1; v48 != k; v48 += 3)
  {
    v50 = *v48;
    v51 = v48[1];
    v52 = v51 - *v48;
    if (v52 >= 0x21)
    {
      v53 = *v50;
      v54 = v50[1];
      if (!sub_10000B2C4(*v50, v54, *(v51 - 2), *(v51 - 1)))
      {
        *v77 = v53;
        *(v77 + 1) = v54;
        sub_100006C8C(v48, v77);
        v50 = *v48;
        v51 = v48[1];
        v52 = v51 - *v48;
      }

      v55 = v50 + 2;
      if (v52 >= 0x40 && v55 != v51)
      {
        v57 = 0;
        v58 = 0.0;
        do
        {
          v59 = *(v55 - 2);
          v60 = *v55;
          if (v59 != *v55)
          {
            if ((*&v59 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*&v60 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
            {
              goto LABEL_58;
            }

            v62 = fabs(v59);
            v63 = fabs(v60);
            v64 = vabdd_f64(v59, v60);
            if (v62 >= v63)
            {
              v65 = v62;
            }

            else
            {
              v65 = v63;
            }

            if (v65 < 1.0)
            {
              v65 = 1.0;
            }

            if (v64 > v65 * 2.22044605e-16)
            {
LABEL_58:
              v58 = v58 + sub_10000A33C(v55 - 2, v55);
              v57 += sub_10000A5E4(v55 - 2, v55);
            }
          }

          v55 += 2;
        }

        while (v55 != v51);
        if (v57)
        {
          v66 = (v57 >> 1) + 1;
          v67 = fabs(v58);
          v68 = -v67;
          v69 = -(v67 - v66 * 6.28318531);
          if (v58 <= 0.0)
          {
            v58 = v69;
          }

          else
          {
            v58 = -(v68 + v66 * 6.28318531);
          }
        }

        if (v58 > 0.0)
        {
          v71 = *v48;
          v70 = v48[1];
          if (*v48 != v70)
          {
            v72 = v70 - 2;
            if (v72 > v71)
            {
              v73 = v71 + 16;
              do
              {
                v74 = *(v73 - 16);
                *(v73 - 16) = *v72;
                *v72 = v74;
                v72 -= 2;
                v47 = v73 >= v72;
                v73 += 16;
              }

              while (!v47);
            }
          }
        }
      }
    }
  }

  return result;
}

- (double)computeOverlapForLocation:(id)location withGEOBluePOIAOIPolygon:(id)polygon distanceToAOIBoundary:(id *)boundary
{
  locationCopy = location;
  polygonCopy = polygon;
  v66 = polygonCopy;
  v67 = locationCopy;
  [locationCopy longitude];
  v11 = v10;
  [locationCopy latitude];
  v78[0] = v11;
  v78[1] = v12;
  [(RTLocalPolygonalBluePOIResolver *)self polygonFromGEOBluePOIAOIPolygon:polygonCopy];
  v72[0] = 0;
  v72[1] = 0;
  v73 = 0;
  if (sub_10000B6C4(&v74, v72))
  {
    v13 = sub_100016D60(v78, &v74);
    v14 = v74;
    v15 = v75;
    if ((v13 & 0x80000000) == 0)
    {
      if (v74 == v75)
      {
        v16 = 500.0;
      }

      else if (v74 + 16 == v75)
      {
        *buf = *v74;
        *&buf[16] = *buf;
        v32 = sub_10002DD78(v78, buf, &buf[16]);
        v33 = asin(sqrt(v32));
        v16 = fmin((v33 + v33) * 6378135.0, 500.0);
      }

      else
      {
        v16 = 500.0;
        do
        {
          v17 = v14 + 4;
          *buf = *v14;
          v18 = *(v14 + 1);
          v14 += 2;
          *&buf[16] = v18;
          v19 = sub_10002DD78(v78, buf, &buf[16]);
          v20 = asin(sqrt(v19));
          v21 = (v20 + v20) * 6378135.0;
          if (v21 < v16)
          {
            v16 = v21;
          }
        }

        while (v17 != v15);
      }

      v35 = v76;
      for (i = v77; v35 != i; v35 += 3)
      {
        v36 = *v35;
        v37 = v35[1];
        if (*v35 != v37)
        {
          if (v36 + 1 == v37)
          {
            *buf = *v36;
            *&buf[16] = *buf;
            v43 = sub_10002DD78(v78, buf, &buf[16]);
            v44 = asin(sqrt(v43));
            v45 = (v44 + v44) * 6378135.0;
            if (v45 < v16)
            {
              v16 = v45;
            }
          }

          else
          {
            do
            {
              v38 = v36 + 2;
              *buf = *v36;
              v39 = v36[1];
              ++v36;
              *&buf[16] = v39;
              v40 = sub_10002DD78(v78, buf, &buf[16]);
              v41 = asin(sqrt(v40));
              v42 = (v41 + v41) * 6378135.0;
              if (v42 < v16)
              {
                v16 = v42;
              }
            }

            while (v38 != v37);
          }
        }
      }

      goto LABEL_82;
    }

    if (v74 == v75)
    {
      for (j = v76; ; j += 3)
      {
        if (j == v77)
        {
          v69 = &off_1000A9018;
          *buf = "/AppleInternal/Library/BuildRoots/4~CAohugBgcvY2d3fQkChIpRuDUti1iqMghFcjgVY/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/usr/local/include/boost/geometry/algorithms/detail/throw_on_empty_input.hpp";
          *&buf[8] = "void boost::geometry::detail::throw_on_empty_input(const Geometry &) [Geometry = boost::geometry::model::polygon<boost::geometry::model::point<double, 2, boost::geometry::cs::spherical_equatorial<boost::geometry::degree>>>]";
          *&buf[16] = 54;
          sub_10002D554(buf);
        }

        if (*j != j[1])
        {
          break;
        }
      }
    }

    if ((v75 - v74) < 0x40)
    {
      goto LABEL_23;
    }

    memset(buf, 0, 17);
    if (v74 + 16 != v75)
    {
      do
      {
        if (!sub_100016EF0(v78, v14, v14 + 2, buf))
        {
          break;
        }

        v24 = v14 + 4;
        v14 += 2;
      }

      while (v24 != v15);
      if ((buf[16] & 1) == 0)
      {
        if (*&buf[8] && *&buf[12] && *&buf[8] >= 1)
        {
          if (!(*buf + *&buf[4]))
          {
            goto LABEL_22;
          }
        }

        else if (!*buf)
        {
          goto LABEL_22;
        }
      }

      v50 = v76;
      v51 = v77;
      v47 = 0.0;
      while (v50 != v51)
      {
        v53 = *v50;
        v52 = v50[1];
        if ((v52 - *v50) >= 0x40)
        {
          memset(buf, 0, 17);
          if (v53 + 2 != v52)
          {
            do
            {
              if (!sub_100016EF0(v78, v53, v53 + 2, buf))
              {
                break;
              }

              v54 = v53 + 4;
              v53 += 2;
            }

            while (v54 != v52);
            if ((buf[16] & 1) == 0)
            {
              if (*&buf[8] && *&buf[12] && *&buf[8] >= 1)
              {
                if (*buf + *&buf[4])
                {
                  goto LABEL_69;
                }
              }

              else if (*buf)
              {
LABEL_69:
                v14 = *v50;
                v55 = v50[1];
                if (v55 == *v50)
                {
                  goto LABEL_81;
                }

                v25 = v14 + 2;
                v26 = *v50;
                if (v14 + 2 == v55)
                {
                  goto LABEL_78;
                }

                v56 = sub_10002DD78(v78, v26, v14 + 2);
                if (v14 + 4 == v55)
                {
                  goto LABEL_31;
                }

                v57 = v56;
                while (1)
                {
                  v29 = v25 + 2;
                  v58 = sub_10002DD78(v78, v25, v25 + 2);
                  if (v58 == 0.0)
                  {
                    goto LABEL_79;
                  }

                  if (v58 < v57)
                  {
                    v57 = v58;
                    v14 = v25;
                  }

                  v59 = v25 + 4;
                  v25 += 2;
                  if (v59 == v55)
                  {
                    goto LABEL_31;
                  }
                }
              }
            }
          }
        }

        v50 += 3;
      }

      goto LABEL_81;
    }

LABEL_22:
    v14 = v74;
    v15 = v75;
LABEL_23:
    if (v15 == v14)
    {
      v47 = 0.0;
    }

    else
    {
      v25 = v14 + 2;
      v26 = v14;
      if (v14 + 2 == v15)
      {
LABEL_78:
        sub_10002DD78(v78, v26, v14);
        v29 = v14;
      }

      else
      {
        v27 = sub_10002DD78(v78, v14, v14 + 2);
        if (v14 + 4 == v15)
        {
LABEL_31:
          v29 = v14 + 2;
        }

        else
        {
          v28 = v27;
          while (1)
          {
            v29 = v25 + 2;
            v30 = sub_10002DD78(v78, v25, v25 + 2);
            if (v30 == 0.0)
            {
              break;
            }

            if (v30 < v28)
            {
              v28 = v30;
              v14 = v25;
            }

            v31 = v25 + 4;
            v25 += 2;
            if (v31 == v15)
            {
              goto LABEL_31;
            }
          }

LABEL_79:
          v14 = v25;
        }
      }

      v60 = sub_10002DD78(v78, v14, v29);
      v61 = asin(sqrt(v60));
      v47 = v61 + v61;
    }

LABEL_81:
    v16 = v47 * 6378135.0;
LABEL_82:
    v62 = sub_100001394();
    if (os_log_type_enabled(v62, OS_LOG_TYPE_INFO))
    {
      v63 = @"NO";
      if (v13 >= 0)
      {
        v63 = @"YES";
      }

      *buf = 134218242;
      *&buf[4] = v16;
      *&buf[12] = 2112;
      *&buf[14] = v63;
      _os_log_impl(&_mh_execute_header, v62, OS_LOG_TYPE_INFO, "Distance to AOI boundary: %.21f, isInsideAOI: %@", buf, 0x16u);
    }

    polygonCopy = v66;
    locationCopy = v67;
    if (boundary)
    {
      *boundary = [NSNumber numberWithDouble:v16];
    }

    [v67 horizontalUncertainty];
    if (v64 > 0.0)
    {
      v71 = v64;
      v69 = 36;
      v70 = xmmword_100092550;
      memset(v68, 0, sizeof(v68));
      LOBYTE(__p) = 0;
      sub_1000013E8(v78, v68, &v71);
    }

    v23 = 0.9999;
    goto LABEL_91;
  }

  v22 = sub_100001394();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
  {
    if (v73 >= 0)
    {
      v48 = v72;
    }

    else
    {
      v48 = v72[0];
    }

    v49 = [NSString stringWithUTF8String:v48];
    *buf = 138412290;
    *&buf[4] = v49;
    _os_log_fault_impl(&_mh_execute_header, v22, OS_LOG_TYPE_FAULT, "Invalid polygon: %@", buf, 0xCu);
  }

  v23 = 0.0;
LABEL_91:
  if (SHIBYTE(v73) < 0)
  {
    operator delete(v72[0]);
  }

  *buf = &v76;
  sub_10000B008(buf);
  if (v74)
  {
    v75 = v74;
    operator delete(v74);
  }

  return v23;
}

- (id)inferLocalPolygonalBluePOIsWithReferenceLocation:(id)location queryTime:(id)time distanceToNearestAOILowerBound:(id *)bound error:(id *)error
{
  locationCopy = location;
  v54 = objc_opt_new();
  v9 = [GEOLocation alloc];
  [locationCopy latitude];
  v11 = v10;
  [locationCopy longitude];
  v52 = [v9 initWithLatitude:v11 longitude:v12];
  [locationCopy horizontalUncertainty];
  v14 = 500.0;
  if (v13 < 500.0)
  {
    v13 = 500.0;
  }

  [v52 setHorizontalAccuracy:{v13, bound}];
  v15 = dispatch_semaphore_create(0);
  v81 = 0;
  v82 = &v81;
  v83 = 0x3032000000;
  v84 = sub_100001220;
  v85 = sub_10002D458;
  v86 = 0;
  v75 = 0;
  v76 = &v75;
  v77 = 0x3032000000;
  v78 = sub_100001220;
  v79 = sub_10002D458;
  v80 = 0;
  v16 = dispatch_get_global_queue(0, 0);
  v71[0] = _NSConcreteStackBlock;
  v71[1] = 3221225472;
  v71[2] = sub_10002D460;
  v71[3] = &unk_1000A8E70;
  v73 = &v81;
  v74 = &v75;
  dsema = v15;
  v72 = dsema;
  [GEOGeographicMetadataRequester fetchBluePOIAOITilesForLocation:v52 responseQueue:v16 responseBlock:v71];

  v50 = +[NSDate now];
  v17 = dispatch_time(0, 10000000000);
  if (!dispatch_semaphore_wait(dsema, v17))
  {
    goto LABEL_8;
  }

  v18 = +[NSDate now];
  [v18 timeIntervalSinceDate:v50];
  v20 = v19;
  v21 = sub_100001394();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_FAULT))
  {
    v46 = [NSNumber numberWithDouble:v20];
    *buf = 138412290;
    v92 = v46;
    _os_log_fault_impl(&_mh_execute_header, v21, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung! hangDuration, %@", buf, 0xCu);
  }

  v89 = NSLocalizedDescriptionKey;
  v90 = @"semaphore wait timeout";
  v22 = [NSDictionary dictionaryWithObjects:&v90 forKeys:&v89 count:1];
  obj = [NSError errorWithDomain:RTErrorDomain code:15 userInfo:v22];

  if (obj)
  {
    objc_storeStrong(v76 + 5, obj);
  }

  else
  {
LABEL_8:
    obj = 0;
  }

  if (v76[5])
  {
    v23 = sub_100001394();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v47 = v76[5];
      *buf = 138412290;
      v92 = v47;
      _os_log_error_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "fetchAOIError, %@", buf, 0xCu);
    }

    *error = v76[5];
    goto LABEL_38;
  }

  v24 = [RTBluePOITileParser alloc];
  v25 = objc_opt_new();
  v26 = objc_opt_new();
  v57 = [(RTBluePOITileParser *)v24 initWithFileManager:v25 wkbParser:v26];

  v69 = 0u;
  v70 = 0u;
  v67 = 0u;
  v68 = 0u;
  v55 = v82[5];
  v27 = [v55 countByEnumeratingWithState:&v67 objects:v88 count:16];
  if (!v27)
  {
    goto LABEL_35;
  }

  v56 = *v68;
  v14 = 500.0;
  do
  {
    v58 = v27;
    for (i = 0; i != v58; i = i + 1)
    {
      if (*v68 != v56)
      {
        objc_enumerationMutation(v55);
      }

      v29 = *(*(&v67 + 1) + 8 * i);
      aoiData = [v29 aoiData];
      v66 = 0;
      v60 = [(RTBluePOITileParser *)v57 loadProtobufPOIMetadata:aoiData outError:&v66];
      v59 = v66;

      v31 = sub_100001394();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
      {
        v32 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v60 muid]);
        *buf = 138412290;
        v92 = v32;
        _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_INFO, "muid, %@", buf, 0xCu);
      }

      if (([v60 filtered] & 1) == 0)
      {
        v64 = 0u;
        v65 = 0u;
        v62 = 0u;
        v63 = 0u;
        polygons = [v29 polygons];
        v34 = [polygons countByEnumeratingWithState:&v62 objects:v87 count:16];
        if (!v34)
        {
          goto LABEL_32;
        }

        v35 = *v63;
        v36 = 0.0;
        do
        {
          for (j = 0; j != v34; j = j + 1)
          {
            if (*v63 != v35)
            {
              objc_enumerationMutation(polygons);
            }

            v38 = *(*(&v62 + 1) + 8 * j);
            v39 = [NSNumber numberWithDouble:500.0];
            v61 = v39;
            [(RTLocalPolygonalBluePOIResolver *)self computeOverlapForLocation:locationCopy withGEOBluePOIAOIPolygon:v38 distanceToAOIBoundary:&v61];
            v41 = v40;
            v42 = v61;

            [v42 doubleValue];
            if (v14 >= v43)
            {
              v14 = v43;
            }

            v36 = v36 + v41;
          }

          v34 = [polygons countByEnumeratingWithState:&v62 objects:v87 count:16];
        }

        while (v34);

        if (v36 >= 0.15)
        {
          polygons = [NSNumber numberWithDouble:fmin(v36, 0.9999)];
          v44 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v60 muid]);
          [v54 setObject:polygons forKeyedSubscript:v44];

LABEL_32:
        }
      }
    }

    v27 = [v55 countByEnumeratingWithState:&v67 objects:v88 count:16];
  }

  while (v27);
LABEL_35:

  if (v49)
  {
    *v49 = [NSNumber numberWithDouble:v14];
  }

LABEL_38:
  _Block_object_dispose(&v75, 8);

  _Block_object_dispose(&v81, 8);

  return v54;
}

@end