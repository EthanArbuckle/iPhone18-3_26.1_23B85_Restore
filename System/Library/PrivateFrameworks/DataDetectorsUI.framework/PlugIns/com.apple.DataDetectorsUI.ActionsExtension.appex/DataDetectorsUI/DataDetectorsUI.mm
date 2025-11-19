id sub_100001C48(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5 | v6)
  {
    v7 = v6;
    v8 = [MKMapView alloc];
    [*(a1 + 32) bounds];
    v9 = [v8 initWithFrame:?];
    [v9 setShowsAttribution:1];
    [v9 _setShowsAppleLogo:0];
    [v9 setAutoresizingMask:18];
    v10 = objc_alloc_init(MKPointAnnotation);
    if (v7)
    {
      if (!v5)
      {
        [v7 coordinate];
        v13 = [[CLLocation alloc] initWithLatitude:v11 longitude:v12];
        v14 = [CLCircularRegion alloc];
        [v13 coordinate];
        v15 = [v14 initWithCenter:@"DDInternalConversion" radius:? identifier:?];
        v5 = [[CLPlacemark alloc] initWithLocation:v13 addressDictionary:0 region:v15 areasOfInterest:0];
      }
    }

    else
    {
      v7 = [v5 _geoMapItem];
    }

    v18 = [v5 location];
    [v18 coordinate];
    [v10 setCoordinate:?];

    [v9 addAnnotation:v10];
    if (v7)
    {
      v19 = [[MKMapItem alloc] initWithGeoMapItem:v7 isPlaceHolderPlace:0];
      if (v19)
      {
        [*(a1 + 32) bounds];
        v22 = [MKMapCamera cameraLookingAtMapItem:v19 forViewSize:1 allowPitch:v20, v21];
        if (v22)
        {
          v23 = v22;
          [v22 centerCoordinateDistance];
          [v23 setCenterCoordinateDistance:v24 * 3.0];
          [v9 setCamera:v23 animated:0];
LABEL_26:

          [*(a1 + 32) addSubview:v9];
          [*(a1 + 40) removeFromSuperview];

          goto LABEL_27;
        }
      }
    }

    else
    {
      v19 = 0;
    }

    v23 = [v7 displayMapRegion];
    if (v23)
    {
      GEOMapRectForMapRegion();
      v47 = MKMapRectInset(v46, v46.size.width * -3.0, v46.size.height * -3.0);
      [v9 setVisibleMapRect:0 animated:{v47.origin.x, v47.origin.y, v47.size.width, v47.size.height}];
    }

    else
    {
      v25 = v5;
      v26 = [v25 region];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v27 = v26;
      }

      else
      {
        v43 = v25;
        v28 = [v25 location];
        [v28 horizontalAccuracy];
        if (v29 >= 0.0)
        {
          [v28 horizontalAccuracy];
        }

        [v28 verticalAccuracy];
        if (v30 >= 0.0)
        {
          [v28 verticalAccuracy];
        }

        v31 = [CLCircularRegion alloc];
        [v28 coordinate];
        v27 = [v31 initWithCenter:@"DDInternalConversion" radius:? identifier:?];

        v25 = v43;
      }

      [v27 center];
      v33 = v32;
      v35 = v34;
      [v27 radius];
      v37 = v36 * 6.0;
      [v27 radius];
      v39 = v38 * 6.0;
      v45.latitude = v33;
      v45.longitude = v35;
      v48 = MKCoordinateRegionMakeWithDistance(v45, v37, v39);
      [v9 setRegion:0 animated:{v48.center.latitude, v48.center.longitude, v48.span.latitudeDelta, v48.span.longitudeDelta}];
    }

    goto LABEL_26;
  }

  if ((*(a1 + 64) & 1) != 0 || ![*(a1 + 48) length])
  {
    v16 = DDLocalizedString();
    [NSString stringWithFormat:v16, v42];
  }

  else
  {
    v16 = DDLocalizedString();
    [NSString stringWithFormat:v16, *(a1 + 48)];
  }
  v17 = ;
  [*(a1 + 40) setText:v17];

  [*(a1 + 40) setNumberOfLines:{objc_msgSend(*(a1 + 40), "numberOfLines") + 1}];
LABEL_27:
  v40 = *(a1 + 56);

  return [v40 invalidate];
}

void sub_1000020BC(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138412290;
      v11 = v6;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Map Preview: geocoderHandler error '%@'", &v10, 0xCu);
    }

    (*(a1[5] + 16))();
  }

  else
  {
    v7 = a1[5];
    v8 = [v5 firstObject];
    (*(v7 + 16))(v7, 0, v8);
  }

  v9 = a1[4];
  (*(a1[6] + 16))();
}

void sub_1000021EC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v5)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Map Preview: RECEIVED user loc", buf, 2u);
    }

    [v5 verticalAccuracy];
    if (v8 >= 0.0)
    {
      [v5 horizontalAccuracy];
      if (v9 >= 0.0)
      {
        [v5 coordinate];
        v12 = [[GEOLocation alloc] initWithGEOCoordinate:{v10, v11}];
        [*(a1 + 32) setDeviceLocation:v12];
      }
    }
  }

  else if (v6 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Map Preview: NOT RECEIVED user loc", buf, 2u);
  }

  if ([*(a1 + 40) length] >= 2)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v13 = [*(a1 + 32) displayRegion];
      v14 = *(a1 + 40);
      *buf = 138412546;
      v19 = v13;
      v20 = 2112;
      v21 = v14;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Map Preview: Updating Locale from %@ to %@", buf, 0x16u);
    }

    [*(a1 + 32) setDisplayRegion:*(a1 + 40)];
  }

  v15 = [*(a1 + 48) ticketForForwardGeocodeString:*(a1 + 56) maxResults:1 traits:*(a1 + 32)];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_100002460;
  v16[3] = &unk_1000083D8;
  v17 = *(a1 + 64);
  [v15 submitWithRefinedHandler:v16 networkActivity:0];
}

void sub_100002460(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100002558;
  v14[3] = &unk_1000083B0;
  v15 = v7;
  v16 = v8;
  v10 = *(a1 + 32);
  v17 = v9;
  v18 = v10;
  v11 = v9;
  v12 = v8;
  v13 = v7;
  dispatch_async(&_dispatch_main_q, v14);
}

void sub_100002558(uint64_t a1)
{
  v2 = (a1 + 32);
  if ([*(a1 + 32) count] || (v2 = (a1 + 40), objc_msgSend(*(a1 + 40), "count")))
  {
    v3 = *v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = *(a1 + 48);
  v5 = v3;
  (*(*(a1 + 56) + 16))();
}

uint64_t sub_1000025DC(void *a1, void *a2)
{
  v3 = a1[5];
  v4 = [a2 firstObject];
  (*(v3 + 16))(v3, v4, 0);

  v5 = a1[4];
  v6 = *(a1[6] + 16);

  return v6();
}

void sub_100002C9C(id a1)
{
  v1 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  attr = dispatch_queue_attr_make_with_qos_class(v1, QOS_CLASS_USER_INTERACTIVE, 0);

  v2 = dispatch_queue_create("com.apple.DataDetectorsUI.ActionsExtension.callerid", attr);
  v3 = qword_10000CCF8;
  qword_10000CCF8 = v2;
}

void sub_100002D20(id *a1)
{
  v2 = a1[4];
  v13 = a1[5];
  v3 = [NSArray arrayWithObjects:&v13 count:1];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100002E60;
  v10[3] = &unk_100008468;
  v4 = a1[4];
  v5 = a1[5];
  v6 = a1[6];
  v7 = a1[7];
  *&v8 = v6;
  *(&v8 + 1) = v7;
  *&v9 = v4;
  *(&v9 + 1) = v5;
  v11 = v9;
  v12 = v8;
  [v2 updateCacheWithDestinationIDs:v3 completion:v10];
}

void sub_100002E60(id *a1)
{
  v2 = dispatch_get_global_queue(33, 0);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100002F60;
  v9[3] = &unk_100008468;
  v3 = a1[4];
  v4 = a1[5];
  v5 = a1[6];
  v6 = a1[7];
  *&v7 = v5;
  *(&v7 + 1) = v6;
  *&v8 = v3;
  *(&v8 + 1) = v4;
  v10 = v8;
  v11 = v7;
  dispatch_async(v2, v9);
}

void sub_100002F60(uint64_t a1)
{
  v2 = [*(a1 + 32) metadataForDestinationID:*(a1 + 40)];
  if (v2)
  {
    v3 = [v2 metadataForProvider:objc_opt_class()];
    if (![v3 length])
    {
      v11 = 0;
      v10 = 0;
LABEL_19:

      goto LABEL_20;
    }

    v4 = [NSCharacterSet characterSetWithCharactersInString:@":：᠄"];
    v5 = [v3 rangeOfCharacterFromSet:v4];
    if (v5 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v7 = 0;
      v8 = 0;
      if ([0 count] < 2)
      {
LABEL_5:
        v9 = +[NSCharacterSet whitespaceAndNewlineCharacterSet];
        v10 = [v3 stringByTrimmingCharactersInSet:v9];
        v11 = 0;
        goto LABEL_17;
      }
    }

    else
    {
      v7 = [v3 substringWithRange:{v5, v6}];
      v8 = [v3 componentsSeparatedByString:v7];
      if ([v8 count] < 2)
      {
        goto LABEL_5;
      }
    }

    v20 = v4;
    v12 = [v8 subarrayWithRange:{1, objc_msgSend(v8, "count") - 1}];
    v13 = [v12 componentsJoinedByString:v7];
    v14 = +[NSCharacterSet whitespaceAndNewlineCharacterSet];
    v10 = [v13 stringByTrimmingCharactersInSet:v14];

    if (![v10 length])
    {
      v11 = 0;
      v4 = v20;
LABEL_18:

      goto LABEL_19;
    }

    v15 = [v8 firstObject];
    v16 = +[NSCharacterSet whitespaceAndNewlineCharacterSet];
    v9 = [v15 stringByTrimmingCharactersInSet:v16];

    if ([v9 length])
    {
      v9 = v9;
      if ([v9 length])
      {
        v17 = DDLocalizedString();
        v11 = [NSString stringWithFormat:v17, v9];
      }

      else
      {
        v11 = 0;
      }

      v4 = v20;
    }

    else
    {
      v11 = 0;
      v4 = v20;
    }

LABEL_17:

    goto LABEL_18;
  }

  v11 = 0;
  v10 = 0;
LABEL_20:
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000329C;
  block[3] = &unk_100008468;
  v22 = *(a1 + 48);
  v23 = v10;
  v24 = *(a1 + 56);
  v25 = v11;
  v18 = v11;
  v19 = v10;
  dispatch_async(&_dispatch_main_q, block);
}

id sub_10000329C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) length];
  v4 = 40;
  if (!v3)
  {
    v4 = 48;
  }

  v5 = *(a1 + v4);
  if ([*(a1 + 56) length])
  {
    v6 = *(a1 + 56);
  }

  else
  {
    v6 = 0;
  }

  return [v2 updateContactWithTitle:v5 subtitle:v6 image:0 person:0];
}

void sub_100003470(uint64_t a1)
{
  [CLLocationManager setDefaultEffectiveBundleIdentifier:@"com.apple.Maps"];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100003538;
  v4[3] = &unk_100008508;
  v3 = *(a1 + 32);
  v2 = v3.i64[0];
  v5 = vextq_s8(v3, v3, 8uLL);
  v6 = *(a1 + 48);
  [v2 createViewControllerWithCompletionHandler:v4];
}

void sub_100003538(uint64_t a1, void *a2)
{
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100003680;
  v9[3] = &unk_1000084B8;
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v10 = v3;
  v11 = v4;
  v12 = v5;
  v13 = *(a1 + 48);
  v6 = objc_retainBlock(v9);
  if (+[NSThread isMainThread])
  {
    (v6[2])(v6);
  }

  else
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000037CC;
    block[3] = &unk_1000084E0;
    v8 = v6;
    dispatch_sync(&_dispatch_main_q, block);
  }
}

void sub_100003680(uint64_t a1, __n128 a2, __n128 a3)
{
  if (*(a1 + 32))
  {
    objc_storeStrong((*(a1 + 40) + 8), *(a1 + 48));
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100003778;
    block[3] = &unk_100008490;
    v7 = *(a1 + 32);
    v5 = v7.i64[0];
    v9 = vextq_s8(v7, v7, 8uLL);
    v10 = *(a1 + 56);
    dispatch_async(&_dispatch_main_q, block);
  }

  else
  {
    v6 = *(*(a1 + 56) + 16);
    a2.n128_u64[0] = 0;
    a3.n128_u64[0] = 0;

    v6(a2, a3);
  }
}

uint64_t sub_100003778(uint64_t a1)
{
  [*(a1 + 32) addViewController:*(a1 + 40)];
  v2 = *(a1 + 48);
  [*(a1 + 40) preferredContentSize];
  v3 = *(v2 + 16);

  return v3(v2, 1);
}

void sub_100003C3C(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 count])
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100003D20;
    block[3] = &unk_100008490;
    block[4] = *(a1 + 32);
    v5 = v3;
    v6 = *(a1 + 40);
    dispatch_async(&_dispatch_main_q, block);
  }

  else
  {
    (*(*(a1 + 40) + 16))();
  }
}

uint64_t sub_100003D20(void *a1)
{
  [*(a1[4] + 8) setFlights:a1[5]];
  v2 = *(a1[4] + 8);
  v3 = *(a1[6] + 16);

  return v3();
}