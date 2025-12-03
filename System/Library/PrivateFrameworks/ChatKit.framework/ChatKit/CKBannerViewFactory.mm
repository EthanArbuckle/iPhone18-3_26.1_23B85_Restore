@interface CKBannerViewFactory
+ (id)bannerWithTitle:(id)title subtitleString:(id)string avatarImages:(id)images contacts:(id)contacts customImage:(id)image actionButtonObjects:(id)objects forceImageCentering:(BOOL)centering xButtonHandler:(id)aBlock;
+ (id)notDefaultTextingAppBanner;
+ (id)unexpectedlyLoggedOutBanner;
+ (id)updateAppleIDSettingsBanner;
+ (id)waitingForCloudBanner;
- (_TtC7ChatKit19CKBannerViewFactory)init;
@end

@implementation CKBannerViewFactory

+ (id)bannerWithTitle:(id)title subtitleString:(id)string avatarImages:(id)images contacts:(id)contacts customImage:(id)image actionButtonObjects:(id)objects forceImageCentering:(BOOL)centering xButtonHandler:(id)aBlock
{
  v16 = _Block_copy(aBlock);
  if (title)
  {
    v30 = sub_190D56F10();
    title = v17;
    if (string)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v30 = 0;
    if (string)
    {
LABEL_3:
      v18 = sub_190D56F10();
      string = v19;
      if (!images)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  v18 = 0;
  if (images)
  {
LABEL_4:
    sub_1902188FC(0, &qword_1EAD44EB0);
    images = sub_190D57180();
  }

LABEL_5:
  contactsCopy = contacts;
  imageCopy = image;
  objectsCopy = objects;
  if (contactsCopy)
  {
    sub_1902188FC(0, &qword_1EAD44E40);
    v23 = sub_190D57180();
  }

  else
  {
    v23 = 0;
  }

  sub_1902188FC(0, &unk_1EAD45008);
  v24 = sub_190D57180();

  if (v16)
  {
    v25 = swift_allocObject();
    *(v25 + 16) = v16;
    v16 = sub_190841A8C;
  }

  else
  {
    v25 = 0;
  }

  *&v29 = v16;
  *(&v29 + 1) = v25;
  sub_1909267E4(v30, title, v18, string, images, v23, imageCopy, v24, centering, v29);
  v27 = v26;
  sub_19022123C(v16);

  return v27;
}

+ (id)unexpectedlyLoggedOutBanner
{
  sub_190927110();

  return v2;
}

+ (id)updateAppleIDSettingsBanner
{
  sub_190927C38();

  return v2;
}

+ (id)waitingForCloudBanner
{
  sub_190928648();

  return v2;
}

+ (id)notDefaultTextingAppBanner
{
  sub_190929058();

  return v2;
}

- (_TtC7ChatKit19CKBannerViewFactory)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for CKBannerViewFactory();
  return [(CKBannerViewFactory *)&v3 init];
}

@end