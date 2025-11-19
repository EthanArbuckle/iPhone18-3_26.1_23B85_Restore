id sub_100001528()
{
  if (qword_10000CDF8 != -1)
  {
    sub_1000036D4();
  }

  v1 = qword_10000CE00;

  return v1;
}

void sub_1000015B0(id a1)
{
  qword_10000CDF0 = [CNScheduler serialDispatchQueueSchedulerWithName:@"com.apple.contacts.colorExtraction"];

  _objc_release_x1();
}

void sub_1000016F8(uint64_t a1)
{
  v2 = [*(a1 + 32) hash];
  v3 = sub_100001528();
  v4 = v3;
  v61 = (v2 - 1);
  if ((v2 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v3))
  {
    LOWORD(buf.a) = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v4, OS_SIGNPOST_INTERVAL_BEGIN, v2, "CNImageDerivedColorFetchColors", &unk_100005D31, &buf, 2u);
  }

  spid = v2;

  v5 = [[CIImage alloc] initWithImage:*(a1 + 32)];
  v6 = *(a1 + 56);
  v65 = v5;
  v7 = [objc_opt_class() resizeImageForPerformance:v5];
  [v7 extent];
  v9 = v8;
  v11 = v10;
  v12 = [[VNImageRequestHandler alloc] initWithCIImage:v7 options:&__NSDictionary0__struct];
  v13 = objc_opt_new();
  [v13 setRevision:2];
  v14 = objc_autoreleasePoolPush();
  v74 = v13;
  v15 = [NSArray arrayWithObjects:&v74 count:1];
  v71 = 0;
  v63 = v12;
  v16 = [v12 performRequests:v15 error:&v71];
  v17 = v71;

  if (v17 || (v16 & 1) == 0)
  {
    v18 = sub_100001528();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      sub_1000036FC(v17, v18);
    }
  }

  objc_autoreleasePoolPop(v14);
  v62 = v13;
  v19 = [v13 results];
  v20 = [v19 firstObject];

  v60 = v20;
  v21 = +[CIImage imageWithCVPixelBuffer:](CIImage, "imageWithCVPixelBuffer:", [v20 pixelBuffer]);
  [v21 extent];
  memset(&buf, 0, sizeof(buf));
  CGAffineTransformMakeScale(&buf, v9 / v22, v11 / v23);
  v69 = buf;
  v24 = [v21 imageByApplyingTransform:&v69];
  v25 = +[CIFilter colorThresholdFilter];
  v59 = v24;
  [v25 setInputImage:v24];
  LODWORD(v26) = 0.5;
  [v25 setThreshold:v26];
  v27 = [v25 outputImage];
  v28 = +[CIFilter maskToAlphaFilter];
  v58 = v27;
  [v28 setInputImage:v27];
  v29 = [v28 outputImage];
  v30 = +[CIFilter sourceOutCompositingFilter];
  v64 = v7;
  [v30 setInputImage:v7];
  v56 = v29;
  [v30 setBackgroundImage:v29];
  v31 = [v30 outputImage];
  v32 = objc_autoreleasePoolPush();
  v72[0] = @"inputWidth";
  v33 = [NSNumber numberWithDouble:v9];
  v72[1] = @"inputHeight";
  v73[0] = v33;
  v34 = [NSNumber numberWithDouble:v11];
  v73[1] = v34;
  v35 = [NSDictionary dictionaryWithObjects:v73 forKeys:v72 count:2];
  v57 = v31;
  v36 = [v31 imageByApplyingFilter:@"CISmartGradient" withInputParameters:v35];

  objc_autoreleasePoolPop(v32);
  [v36 extent];
  v38 = v37;
  v40 = v39;
  v42 = v41;
  v43 = *(a1 + 40);
  if (v43)
  {
    v44 = v43;
  }

  else
  {
    v44 = [*(a1 + 56) ciContextWithHighPriority:1];
  }

  v45 = v44;
  v46 = [v36 imageByCroppingToRect:{v38, v40, 8.0, v42}];
  [v46 extent];
  v47 = [v45 createCGImage:v46 fromRect:?];
  v48 = *(a1 + 56);
  v49 = [objc_opt_class() colorsForImageRef:v47];
  if (v47)
  {
    CFRelease(v47);
  }

  v50 = sub_100001528();
  v51 = v50;
  if (v61 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v50))
  {
    LOWORD(v69.a) = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v51, OS_SIGNPOST_INTERVAL_END, spid, "CNImageDerivedColorFetchColors", &unk_100005D31, &v69, 2u);
  }

  v52 = +[CNScheduler mainThreadScheduler];
  v66[0] = _NSConcreteStackBlock;
  v66[1] = 3221225472;
  v66[2] = sub_100001CAC;
  v66[3] = &unk_100008428;
  v53 = *(a1 + 48);
  v67 = v49;
  v68 = v53;
  v54 = v49;
  [v52 performBlock:v66];
}

void sub_1000022B4(uint64_t a1, void *a2)
{
  v10 = 0.0;
  v11 = 0.0;
  v8 = 0.0;
  v9 = 0;
  v6 = 0.0;
  v7 = 0.0;
  [a2 getRed:&v8 green:&v7 blue:&v6 alpha:0];
  v3 = 0.0;
  if (*(a1 + 40))
  {
    v3 = 0.65;
  }

  v7 = v3 + v7 * 0.35;
  v8 = v3 + v8 * 0.35;
  v6 = v3 + v6 * 0.35;
  v4 = [UIColor colorWithRed:*&v6 green:*&v7 blue:*&v8 alpha:?];
  [v4 getHue:&v11 saturation:&v10 brightness:&v9 alpha:0];
  v10 = v10 * 1.6 / (v10 + 0.6);
  v5 = [UIColor colorWithHue:"colorWithHue:saturation:brightness:alpha:" saturation:v11 brightness:? alpha:?];
  [*(a1 + 32) addObject:v5];
}

void sub_1000023C4(id a1)
{
  qword_10000CE00 = os_log_create("com.apple.contacts.ui", "backgroundColor");

  _objc_release_x1();
}

id contactsBackgroundColorServiceInterface()
{
  v0 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___CNUIImageBackgroundColorAnalyzing];
  v1 = [NSSet setWithObjects:objc_opt_class(), 0];
  [v0 setClasses:v1 forSelector:"getBackgroundColorOnImageData:bitmapFormat:withReply:" argumentIndex:1 ofReply:0];

  v2 = objc_opt_class();
  v3 = [NSSet setWithObjects:v2, objc_opt_class(), 0];
  [v0 setClasses:v3 forSelector:"getBackgroundColorOnImageData:bitmapFormat:withReply:" argumentIndex:0 ofReply:1];

  return v0;
}

int main(int argc, const char **argv, const char **envp)
{
  v3 = objc_opt_new();
  v4 = +[NSXPCListener serviceListener];
  [v4 setDelegate:v3];
  [v4 resume];

  return 0;
}

void sub_100002DE8(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    objc_begin_catch(exception_object);
    JUMPOUT(0x100002D64);
  }

  _Unwind_Resume(exception_object);
}

void sub_10000320C(id a1)
{
  qword_10000CE10 = os_log_create("com.apple.contacts.ui", "actions");

  _objc_release_x1();
}

void sub_100003294(id a1)
{
  qword_10000CE20 = os_log_create("com.apple.contacts.ui", "likenesses");

  _objc_release_x1();
}

void sub_10000331C(id a1)
{
  qword_10000CE30 = os_log_create("com.apple.contacts.ui", "core-recents");

  _objc_release_x1();
}

void sub_1000033A4(id a1)
{
  qword_10000CE40 = os_log_create("com.apple.contacts.ui", "staticid");

  _objc_release_x1();
}

void sub_10000342C(id a1)
{
  qword_10000CE50 = os_log_create("com.apple.contacts.ui", "color");

  _objc_release_x1();
}

void sub_1000034B4(id a1)
{
  qword_10000CE60 = os_log_create("com.apple.contacts.ui", "contact-card");

  _objc_release_x1();
}

void sub_10000353C(id a1)
{
  qword_10000CE70 = os_log_create("com.apple.contacts.ui", "posters");

  _objc_release_x1();
}

void sub_1000035C4(id a1)
{
  qword_10000CE80 = os_log_create("com.apple.contacts.ui", "photos");

  _objc_release_x1();
}

void sub_10000364C(id a1)
{
  qword_10000CE90 = os_log_create("com.apple.contacts.ui", "memoji");

  _objc_release_x1();
}

void sub_1000036FC(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Error performing VNGenerateObjectnessBasedSaliencyImageRequest in fetchColorsForImage: %@", &v2, 0xCu);
}

void sub_100003774(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Could not create colorSpace from name '%@'; will fall back to using sRGB", &v2, 0xCu);
}