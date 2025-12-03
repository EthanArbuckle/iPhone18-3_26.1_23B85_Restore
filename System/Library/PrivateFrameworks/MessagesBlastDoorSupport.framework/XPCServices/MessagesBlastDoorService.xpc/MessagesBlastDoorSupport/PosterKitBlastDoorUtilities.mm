@interface PosterKitBlastDoorUtilities
+ (id)archiverWithFileManager:(id)manager;
+ (id)discreteColorsContentStyleForContentStyle:(id)style;
+ (id)gradientContentStyleForContentStyle:(id)style;
+ (id)loadConfiguredPropertiesFromPosterConfiguration:(id)configuration error:(id *)error;
+ (id)serverPathFromPath:(id)path;
+ (id)systemTimeFontConfigurationFromTimeFontConfiguration:(id)configuration;
+ (id)vibrantMaterialContentStyleForContentStyle:(id)style;
+ (id)vibrantMonochromeContentStyleForContentStyle:(id)style;
@end

@implementation PosterKitBlastDoorUtilities

+ (id)serverPathFromPath:(id)path
{
  pathCopy = path;
  v9 = 0;
  v10 = &v9;
  v11 = 0x2050000000;
  v4 = qword_1000FE160;
  v12 = qword_1000FE160;
  if (!qword_1000FE160)
  {
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_100010D28;
    v8[3] = &unk_1000F0B70;
    v8[4] = &v9;
    sub_100010D28(v8);
    v4 = v10[3];
  }

  v5 = v4;
  _Block_object_dispose(&v9, 8);
  if (objc_opt_isKindOfClass())
  {
    v6 = pathCopy;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (id)archiverWithFileManager:(id)manager
{
  managerCopy = manager;
  v9 = 0;
  v10 = &v9;
  v11 = 0x2050000000;
  v4 = qword_1000FE170;
  v12 = qword_1000FE170;
  if (!qword_1000FE170)
  {
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_100010EE0;
    v8[3] = &unk_1000F0B70;
    v8[4] = &v9;
    sub_100010EE0(v8);
    v4 = v10[3];
  }

  v5 = v4;
  _Block_object_dispose(&v9, 8);
  v6 = [[v4 alloc] initWithFileManager:managerCopy];

  return v6;
}

+ (id)loadConfiguredPropertiesFromPosterConfiguration:(id)configuration error:(id *)error
{
  configurationCopy = configuration;
  sub_1000103CC();
  v6 = [configurationCopy pr_loadConfiguredPropertiesWithError:error];

  return v6;
}

+ (id)systemTimeFontConfigurationFromTimeFontConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v9 = 0;
  v10 = &v9;
  v11 = 0x2050000000;
  v4 = qword_1000FE188;
  v12 = qword_1000FE188;
  if (!qword_1000FE188)
  {
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_10001110C;
    v8[3] = &unk_1000F0B70;
    v8[4] = &v9;
    sub_10001110C(v8);
    v4 = v10[3];
  }

  v5 = v4;
  _Block_object_dispose(&v9, 8);
  if (objc_opt_isKindOfClass())
  {
    v6 = configurationCopy;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (id)discreteColorsContentStyleForContentStyle:(id)style
{
  styleCopy = style;
  v9 = 0;
  v10 = &v9;
  v11 = 0x2050000000;
  v4 = qword_1000FE190;
  v12 = qword_1000FE190;
  if (!qword_1000FE190)
  {
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_100011164;
    v8[3] = &unk_1000F0B70;
    v8[4] = &v9;
    sub_100011164(v8);
    v4 = v10[3];
  }

  v5 = v4;
  _Block_object_dispose(&v9, 8);
  if (objc_opt_isKindOfClass())
  {
    v6 = styleCopy;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (id)gradientContentStyleForContentStyle:(id)style
{
  styleCopy = style;
  v9 = 0;
  v10 = &v9;
  v11 = 0x2050000000;
  v4 = qword_1000FE198;
  v12 = qword_1000FE198;
  if (!qword_1000FE198)
  {
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_1000111BC;
    v8[3] = &unk_1000F0B70;
    v8[4] = &v9;
    sub_1000111BC(v8);
    v4 = v10[3];
  }

  v5 = v4;
  _Block_object_dispose(&v9, 8);
  if (objc_opt_isKindOfClass())
  {
    v6 = styleCopy;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (id)vibrantMaterialContentStyleForContentStyle:(id)style
{
  styleCopy = style;
  v9 = 0;
  v10 = &v9;
  v11 = 0x2050000000;
  v4 = qword_1000FE1A0;
  v12 = qword_1000FE1A0;
  if (!qword_1000FE1A0)
  {
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_100011214;
    v8[3] = &unk_1000F0B70;
    v8[4] = &v9;
    sub_100011214(v8);
    v4 = v10[3];
  }

  v5 = v4;
  _Block_object_dispose(&v9, 8);
  if (objc_opt_isKindOfClass())
  {
    v6 = styleCopy;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (id)vibrantMonochromeContentStyleForContentStyle:(id)style
{
  styleCopy = style;
  v9 = 0;
  v10 = &v9;
  v11 = 0x2050000000;
  v4 = qword_1000FE1A8;
  v12 = qword_1000FE1A8;
  if (!qword_1000FE1A8)
  {
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_10001126C;
    v8[3] = &unk_1000F0B70;
    v8[4] = &v9;
    sub_10001126C(v8);
    v4 = v10[3];
  }

  v5 = v4;
  _Block_object_dispose(&v9, 8);
  if (objc_opt_isKindOfClass())
  {
    v6 = styleCopy;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end