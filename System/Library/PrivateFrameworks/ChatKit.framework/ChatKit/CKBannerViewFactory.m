@interface CKBannerViewFactory
+ (id)bannerWithTitle:(id)a3 subtitleString:(id)a4 avatarImages:(id)a5 contacts:(id)a6 customImage:(id)a7 actionButtonObjects:(id)a8 forceImageCentering:(BOOL)a9 xButtonHandler:(id)aBlock;
+ (id)notDefaultTextingAppBanner;
+ (id)unexpectedlyLoggedOutBanner;
+ (id)updateAppleIDSettingsBanner;
+ (id)waitingForCloudBanner;
- (_TtC7ChatKit19CKBannerViewFactory)init;
@end

@implementation CKBannerViewFactory

+ (id)bannerWithTitle:(id)a3 subtitleString:(id)a4 avatarImages:(id)a5 contacts:(id)a6 customImage:(id)a7 actionButtonObjects:(id)a8 forceImageCentering:(BOOL)a9 xButtonHandler:(id)aBlock
{
  v16 = _Block_copy(aBlock);
  if (a3)
  {
    v30 = sub_190D56F10();
    a3 = v17;
    if (a4)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v30 = 0;
    if (a4)
    {
LABEL_3:
      v18 = sub_190D56F10();
      a4 = v19;
      if (!a5)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  v18 = 0;
  if (a5)
  {
LABEL_4:
    sub_1902188FC(0, &qword_1EAD44EB0);
    a5 = sub_190D57180();
  }

LABEL_5:
  v20 = a6;
  v21 = a7;
  v22 = a8;
  if (v20)
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
  sub_1909267E4(v30, a3, v18, a4, a5, v23, v21, v24, a9, v29);
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