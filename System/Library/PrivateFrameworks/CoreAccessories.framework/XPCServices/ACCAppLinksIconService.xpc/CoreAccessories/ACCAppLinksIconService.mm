@interface ACCAppLinksIconService
+ (id)iconImageFromUnmaskedImage:(id)a3;
- (void)_getIconDataForBundleID:(id)a3 forIconSize:(double)a4 withReply:(id)a5;
- (void)getIconDataForBundleID:(id)a3 forIconSize:(double)a4 withReply:(id)a5;
@end

@implementation ACCAppLinksIconService

+ (id)iconImageFromUnmaskedImage:(id)a3
{
  v3 = a3;
  v4 = [IFImage alloc];
  v5 = [v3 CGImage];
  [v3 scale];
  v6 = [v4 initWithCGImage:v5 scale:?];
  v7 = [ISIcon alloc];
  v23 = v6;
  v8 = [NSArray arrayWithObjects:&v23 count:1];
  v9 = [v7 initWithImages:v8];

  v10 = [ISImageDescriptor alloc];
  [v3 size];
  v12 = v11;
  v14 = v13;
  [v3 scale];
  v16 = [v10 initWithSize:v12 scale:{v14, v15}];
  [v16 setShape:1];
  v17 = [v9 imageForImageDescriptor:v16];
  v18 = v17;
  if (v17)
  {
    v19 = [v17 CGImage];
    [v18 scale];
    v20 = [UIImage imageWithCGImage:v19 scale:0 orientation:?];
  }

  else
  {
    v20 = v3;
  }

  v21 = v20;

  return v21;
}

- (void)getIconDataForBundleID:(id)a3 forIconSize:(double)a4 withReply:(id)a5
{
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = __71__ACCAppLinksIconService_getIconDataForBundleID_forIconSize_withReply___block_invoke;
  v9[3] = &unk_1000042A0;
  v9[4] = self;
  v10 = a3;
  v12 = a4;
  v11 = a5;
  v7 = v11;
  v8 = v10;
  dispatch_sync(&_dispatch_main_q, v9);
}

- (void)_getIconDataForBundleID:(id)a3 forIconSize:(double)a4 withReply:(id)a5
{
  v7 = a5;
  v8 = a3;
  v9 = [[ISIcon alloc] initWithBundleIdentifier:v8];

  if (!v9)
  {
    v29 = 0;
    v16 = 0;
    v14 = 0;
    v11 = 0;
    goto LABEL_14;
  }

  v10 = [[ISImageDescriptor alloc] initWithSize:a4 scale:{a4, 1.2}];
  v11 = v10;
  if (!v10)
  {
    v29 = 0;
    v16 = 0;
    v14 = 0;
    goto LABEL_14;
  }

  v34 = v10;
  v12 = [NSArray arrayWithObjects:&v34 count:1];
  [v9 prepareImagesForImageDescriptors:v12];

  v13 = [v9 imageForImageDescriptor:v11];
  v14 = v13;
  if (!v13 || ![v13 CGImage])
  {
    v29 = 0;
    v16 = 0;
LABEL_14:
    v28 = 0;
    goto LABEL_9;
  }

  v15 = +[UIImage imageWithCGImage:](UIImage, "imageWithCGImage:", [v14 CGImage]);
  v16 = v15;
  if (!v15)
  {
    v29 = 0;
    goto LABEL_14;
  }

  [v15 size];
  v30 = v18;
  size = v17;
  [v16 size];
  v20 = a4 / v19;
  v21 = +[UIScreen mainScreen];
  [v21 scale];
  v23 = v20 / v22;
  [v16 size];
  v25 = a4 / v24;
  v26 = +[UIScreen mainScreen];
  [v26 scale];
  CGAffineTransformMakeScale(&v33, v23, v25 / v27);
  sizea = vmlaq_n_f64(vmulq_n_f64(*&v33.c, v30), *&v33.a, size);

  UIGraphicsBeginImageContextWithOptions(sizea, 1, 0.0);
  [v16 drawInRect:{CGPointZero.x, CGPointZero.y, sizea}];
  v28 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();
  if (!v28)
  {
    v29 = 0;
    goto LABEL_9;
  }

  v29 = [ACCAppLinksIconService iconImageFromUnmaskedImage:v28];

  if (!v29)
  {
    goto LABEL_14;
  }

  v28 = UIImagePNGRepresentation(v29);
LABEL_9:
  v7[2](v7, v28);
}

@end