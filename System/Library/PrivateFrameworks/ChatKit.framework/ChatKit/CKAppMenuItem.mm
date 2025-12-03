@interface CKAppMenuItem
+ (id)imageForIdentifier:(id)identifier traitCollection:(id)collection;
+ (id)itemWithDisplayName:(id)name identifier:(id)identifier accessibilityIdentifier:(id)accessibilityIdentifier image:(id)image;
- (CKAppMenuItem)initWithDisplayName:(id)name identifier:(id)identifier accessibilityIdentifier:(id)accessibilityIdentifier image:(id)image;
@end

@implementation CKAppMenuItem

- (CKAppMenuItem)initWithDisplayName:(id)name identifier:(id)identifier accessibilityIdentifier:(id)accessibilityIdentifier image:(id)image
{
  nameCopy = name;
  identifierCopy = identifier;
  imageCopy = image;
  v15.receiver = self;
  v15.super_class = CKAppMenuItem;
  v12 = [(CKAppMenuItem *)&v15 init];
  v13 = v12;
  if (v12)
  {
    [(CKAppMenuItem *)v12 setDisplayName:nameCopy];
    [(CKAppMenuItem *)v13 setIdentifier:identifierCopy];
    [(CKAppMenuItem *)v13 setImage:imageCopy];
  }

  return v13;
}

+ (id)itemWithDisplayName:(id)name identifier:(id)identifier accessibilityIdentifier:(id)accessibilityIdentifier image:(id)image
{
  imageCopy = image;
  accessibilityIdentifierCopy = accessibilityIdentifier;
  identifierCopy = identifier;
  nameCopy = name;
  v13 = [objc_alloc(objc_opt_class()) initWithDisplayName:nameCopy identifier:identifierCopy accessibilityIdentifier:accessibilityIdentifierCopy image:imageCopy];

  return v13;
}

+ (id)imageForIdentifier:(id)identifier traitCollection:(id)collection
{
  identifierCopy = identifier;
  collectionCopy = collection;
  v7 = +[CKBalloonPluginManager sharedInstance];
  v8 = [v7 pluginForExtensionIdentifier:identifierCopy];

  v9 = [v8 __ck_browserImageForInterfaceStyle:{objc_msgSend(collectionCopy, "userInterfaceStyle")}];
  if (!v9)
  {
    v10 = IMBalloonExtensionIDWithSuffix();
    if ([identifierCopy isEqualToString:v10])
    {

LABEL_5:
      v13 = +[CKUIBehavior sharedBehaviors];
      v14 = [v13 appMenuAnimojiStickersIconForTraitCollection:collectionCopy];
LABEL_6:
      v9 = v14;

      goto LABEL_7;
    }

    v11 = IMBalloonExtensionIDWithSuffix();
    v12 = [identifierCopy isEqualToString:v11];

    if (v12)
    {
      goto LABEL_5;
    }

    v16 = IMBalloonExtensionIDWithSuffix();
    v17 = [identifierCopy isEqualToString:v16];

    if (v17)
    {
      v13 = +[CKUIBehavior sharedBehaviors];
      v14 = [v13 appMenuHashtagImagesIconForTraitCollection:collectionCopy];
      goto LABEL_6;
    }

    if ([identifierCopy isEqualToString:@"kAppMenuEffectsItemIdentifier"])
    {
      v13 = +[CKUIBehavior sharedBehaviors];
      v14 = [v13 appMenuEffectsIconForTraitCollection:collectionCopy];
      goto LABEL_6;
    }

    v18 = IMBalloonExtensionIDWithSuffix();
    if ([identifierCopy isEqualToString:v18])
    {

LABEL_17:
      v13 = +[CKUIBehavior sharedBehaviors];
      v14 = [v13 appMenuPhotosIconForTraitCollection:collectionCopy];
      goto LABEL_6;
    }

    v19 = [identifierCopy isEqualToString:@"kAppMenuPhotosItemIdentifier"];

    if (v19)
    {
      goto LABEL_17;
    }

    v20 = IMBalloonExtensionIDWithSuffix();
    v21 = [identifierCopy isEqualToString:v20];

    if (v21)
    {
      v13 = +[CKUIBehavior sharedBehaviors];
      v14 = [v13 appMenuGenmojiIconForTraitCollection:collectionCopy];
      goto LABEL_6;
    }

    if ([identifierCopy isEqualToString:@"kAppMenuEmoji"])
    {
      v13 = +[CKUIBehavior sharedBehaviors];
      v14 = [v13 appMenuEmojiIconForTraitCollection:collectionCopy];
      goto LABEL_6;
    }

    v22 = IMBalloonExtensionIDWithSuffix();
    v23 = [identifierCopy isEqualToString:v22];

    if (v23)
    {
      v13 = +[CKUIBehavior sharedBehaviors];
      v14 = [v13 appMenuApplePayIconForTraitCollection:collectionCopy];
      goto LABEL_6;
    }

    v24 = IMBalloonExtensionIDWithSuffix();
    v25 = [identifierCopy isEqualToString:v24];

    if (v25)
    {
      v13 = +[CKUIBehavior sharedBehaviors];
      v14 = [v13 appMenuTapToRadarIconForTraitCollection:collectionCopy];
      goto LABEL_6;
    }

    if ([identifierCopy isEqualToString:@"kAppMenuAudio"])
    {
      v13 = +[CKUIBehavior sharedBehaviors];
      v14 = [v13 appMenuAudioMessagesIconForTraitCollection:collectionCopy];
      goto LABEL_6;
    }

    if ([identifierCopy isEqualToString:*MEMORY[0x1E69A6A28]])
    {
      v13 = +[CKUIBehavior sharedBehaviors];
      v14 = [v13 appMenuSendLaterMessagesIconForTraitCollection:collectionCopy];
      goto LABEL_6;
    }

    v26 = IMBalloonExtensionIDWithSuffix();
    v27 = [identifierCopy isEqualToString:v26];

    if (v27)
    {
      v13 = +[CKUIBehavior sharedBehaviors];
      v14 = [v13 appMenuGenerativePlaygroundIconForTraitCollection:collectionCopy];
      goto LABEL_6;
    }

    v28 = IMBalloonExtensionIDWithSuffix();
    v29 = [identifierCopy isEqualToString:v28];

    if (v29)
    {
      v13 = +[CKUIBehavior sharedBehaviors];
      v14 = [v13 appMenuPollsIconForTraitCollection:collectionCopy];
      goto LABEL_6;
    }

    v9 = 0;
  }

LABEL_7:

  return v9;
}

@end