@interface CKAppMenuItem
+ (id)imageForIdentifier:(id)a3 traitCollection:(id)a4;
+ (id)itemWithDisplayName:(id)a3 identifier:(id)a4 accessibilityIdentifier:(id)a5 image:(id)a6;
- (CKAppMenuItem)initWithDisplayName:(id)a3 identifier:(id)a4 accessibilityIdentifier:(id)a5 image:(id)a6;
@end

@implementation CKAppMenuItem

- (CKAppMenuItem)initWithDisplayName:(id)a3 identifier:(id)a4 accessibilityIdentifier:(id)a5 image:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a6;
  v15.receiver = self;
  v15.super_class = CKAppMenuItem;
  v12 = [(CKAppMenuItem *)&v15 init];
  v13 = v12;
  if (v12)
  {
    [(CKAppMenuItem *)v12 setDisplayName:v9];
    [(CKAppMenuItem *)v13 setIdentifier:v10];
    [(CKAppMenuItem *)v13 setImage:v11];
  }

  return v13;
}

+ (id)itemWithDisplayName:(id)a3 identifier:(id)a4 accessibilityIdentifier:(id)a5 image:(id)a6
{
  v9 = a6;
  v10 = a5;
  v11 = a4;
  v12 = a3;
  v13 = [objc_alloc(objc_opt_class()) initWithDisplayName:v12 identifier:v11 accessibilityIdentifier:v10 image:v9];

  return v13;
}

+ (id)imageForIdentifier:(id)a3 traitCollection:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = +[CKBalloonPluginManager sharedInstance];
  v8 = [v7 pluginForExtensionIdentifier:v5];

  v9 = [v8 __ck_browserImageForInterfaceStyle:{objc_msgSend(v6, "userInterfaceStyle")}];
  if (!v9)
  {
    v10 = IMBalloonExtensionIDWithSuffix();
    if ([v5 isEqualToString:v10])
    {

LABEL_5:
      v13 = +[CKUIBehavior sharedBehaviors];
      v14 = [v13 appMenuAnimojiStickersIconForTraitCollection:v6];
LABEL_6:
      v9 = v14;

      goto LABEL_7;
    }

    v11 = IMBalloonExtensionIDWithSuffix();
    v12 = [v5 isEqualToString:v11];

    if (v12)
    {
      goto LABEL_5;
    }

    v16 = IMBalloonExtensionIDWithSuffix();
    v17 = [v5 isEqualToString:v16];

    if (v17)
    {
      v13 = +[CKUIBehavior sharedBehaviors];
      v14 = [v13 appMenuHashtagImagesIconForTraitCollection:v6];
      goto LABEL_6;
    }

    if ([v5 isEqualToString:@"kAppMenuEffectsItemIdentifier"])
    {
      v13 = +[CKUIBehavior sharedBehaviors];
      v14 = [v13 appMenuEffectsIconForTraitCollection:v6];
      goto LABEL_6;
    }

    v18 = IMBalloonExtensionIDWithSuffix();
    if ([v5 isEqualToString:v18])
    {

LABEL_17:
      v13 = +[CKUIBehavior sharedBehaviors];
      v14 = [v13 appMenuPhotosIconForTraitCollection:v6];
      goto LABEL_6;
    }

    v19 = [v5 isEqualToString:@"kAppMenuPhotosItemIdentifier"];

    if (v19)
    {
      goto LABEL_17;
    }

    v20 = IMBalloonExtensionIDWithSuffix();
    v21 = [v5 isEqualToString:v20];

    if (v21)
    {
      v13 = +[CKUIBehavior sharedBehaviors];
      v14 = [v13 appMenuGenmojiIconForTraitCollection:v6];
      goto LABEL_6;
    }

    if ([v5 isEqualToString:@"kAppMenuEmoji"])
    {
      v13 = +[CKUIBehavior sharedBehaviors];
      v14 = [v13 appMenuEmojiIconForTraitCollection:v6];
      goto LABEL_6;
    }

    v22 = IMBalloonExtensionIDWithSuffix();
    v23 = [v5 isEqualToString:v22];

    if (v23)
    {
      v13 = +[CKUIBehavior sharedBehaviors];
      v14 = [v13 appMenuApplePayIconForTraitCollection:v6];
      goto LABEL_6;
    }

    v24 = IMBalloonExtensionIDWithSuffix();
    v25 = [v5 isEqualToString:v24];

    if (v25)
    {
      v13 = +[CKUIBehavior sharedBehaviors];
      v14 = [v13 appMenuTapToRadarIconForTraitCollection:v6];
      goto LABEL_6;
    }

    if ([v5 isEqualToString:@"kAppMenuAudio"])
    {
      v13 = +[CKUIBehavior sharedBehaviors];
      v14 = [v13 appMenuAudioMessagesIconForTraitCollection:v6];
      goto LABEL_6;
    }

    if ([v5 isEqualToString:*MEMORY[0x1E69A6A28]])
    {
      v13 = +[CKUIBehavior sharedBehaviors];
      v14 = [v13 appMenuSendLaterMessagesIconForTraitCollection:v6];
      goto LABEL_6;
    }

    v26 = IMBalloonExtensionIDWithSuffix();
    v27 = [v5 isEqualToString:v26];

    if (v27)
    {
      v13 = +[CKUIBehavior sharedBehaviors];
      v14 = [v13 appMenuGenerativePlaygroundIconForTraitCollection:v6];
      goto LABEL_6;
    }

    v28 = IMBalloonExtensionIDWithSuffix();
    v29 = [v5 isEqualToString:v28];

    if (v29)
    {
      v13 = +[CKUIBehavior sharedBehaviors];
      v14 = [v13 appMenuPollsIconForTraitCollection:v6];
      goto LABEL_6;
    }

    v9 = 0;
  }

LABEL_7:

  return v9;
}

@end