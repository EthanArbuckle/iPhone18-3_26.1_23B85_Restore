@interface UIImage(MailUI)
+ (id)mui_imageFromSuggestionToken:()MailUI;
+ (id)mui_imageNamed:()MailUI;
+ (id)mui_imageWithPrivateSystemSymbolName:()MailUI symbolColor:hintScale:accessibilityDescription:;
+ (id)mui_imageWithSystemSymbolName:()MailUI symbolColor:hintScale:accessibilityDescription:;
+ (uint64_t)_imageSymbolScaleFrom:()MailUI;
@end

@implementation UIImage(MailUI)

+ (id)mui_imageFromSuggestionToken:()MailUI
{
  v4 = a3;
  v5 = @"magnifyingglass";
  switch([v4 tokenKind])
  {
    case 0:
      break;
    case 2:
      v6 = MFImageGlyphSearchAttachment;
      goto LABEL_22;
    case 3:
      v6 = MFImageGlyphSearchAudio;
      goto LABEL_22;
    case 5:
    case 7:
      v6 = MFImageGlyphSearchDate;
      goto LABEL_22;
    case 6:
      v6 = MFImageGlyphSearchDocument;
      goto LABEL_22;
    case 9:
      v6 = MFImageGlyphSearchIgnore;
      goto LABEL_22;
    case 10:
    case 17:
      v6 = MFImageGlyphSearchImage;
      goto LABEL_22;
    case 11:
    case 14:
      v6 = MFImageGlyphSearchEmail;
      goto LABEL_22;
    case 12:
      v6 = MFImageGlyphSearchMailbox;
      goto LABEL_22;
    case 13:
      v6 = MFImageGlyphSearchDefaultLocation;
      goto LABEL_22;
    case 16:
    case 46:
      v6 = MFImageGlyphSearchPersonCompletion;
      goto LABEL_22;
    case 19:
      v6 = MFImageGlyphSearchReadIndicator;
      goto LABEL_22;
    case 20:
      v6 = MFImageGlyphSearchReply;
      goto LABEL_22;
    case 22:
      v6 = MFImageGlyphSearchSourceCode;
      goto LABEL_22;
    case 24:
    case 25:
    case 33:
      v6 = MFImageGlyphSearchFlag;
      goto LABEL_22;
    case 26:
    case 27:
    case 28:
    case 29:
    case 30:
    case 31:
    case 32:
      v6 = MFImageGlyphSearchFlagFilled;
      goto LABEL_22;
    case 36:
      v6 = MFImageGlyphSearchMovie;
      goto LABEL_22;
    case 37:
      v6 = MFImageGlyphSearchDefaultLink;
LABEL_22:
      v8 = *v6;

      v5 = v8;
      break;
    default:
      v7 = _ef_log_UIImage();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        [(UIImage(MailUI) *)v4 mui_imageFromSuggestionToken:v7];
      }

      break;
  }

  v9 = [self mui_imageWithSystemSymbolName:v5];

  return v9;
}

+ (id)mui_imageWithSystemSymbolName:()MailUI symbolColor:hintScale:accessibilityDescription:
{
  v19[1] = *MEMORY[0x277D85DE8];
  v8 = a4;
  v9 = MEMORY[0x277D755B8];
  v10 = MEMORY[0x277D755D0];
  v11 = a3;
  v12 = [v10 configurationWithScale:{objc_msgSend(self, "_imageSymbolScaleFrom:", a5)}];
  v13 = [v9 systemImageNamed:v11 withConfiguration:v12];

  if (v8)
  {
    v14 = MEMORY[0x277D755D0];
    v19[0] = v8;
    v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:1];
    v16 = [v14 configurationWithPaletteColors:v15];
    v17 = [v13 imageWithSymbolConfiguration:v16];

    v13 = v17;
  }

  return v13;
}

+ (id)mui_imageWithPrivateSystemSymbolName:()MailUI symbolColor:hintScale:accessibilityDescription:
{
  v17[1] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = [MEMORY[0x277D755D0] configurationWithScale:{objc_msgSend(self, "_imageSymbolScaleFrom:", a5)}];
  if (v9)
  {
    v11 = MEMORY[0x277D755D0];
    v17[0] = v9;
    v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:1];
    v13 = [v11 configurationWithPaletteColors:v12];
    v14 = [v10 configurationByApplyingConfiguration:v13];

    v10 = v14;
  }

  v15 = [MEMORY[0x277D755B8] _systemImageNamed:v8 withConfiguration:v10];

  return v15;
}

+ (uint64_t)_imageSymbolScaleFrom:()MailUI
{
  if (a3 >= 4)
  {
    return -1;
  }

  else
  {
    return a3;
  }
}

+ (id)mui_imageNamed:()MailUI
{
  v4 = MEMORY[0x277CCA8D8];
  v5 = a3;
  v6 = [v4 bundleForClass:objc_opt_class()];
  v7 = [self mui_imageNamed:v5 inBundle:v6];

  return v7;
}

+ (void)mui_imageFromSuggestionToken:()MailUI .cold.1(void *a1, NSObject *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = 134218242;
  v5 = [a1 tokenKind];
  v6 = 2112;
  v7 = a1;
  _os_log_error_impl(&dword_214A5E000, a2, OS_LOG_TYPE_ERROR, "Detected unsupported kind: %ld for token: %@", &v4, 0x16u);
}

@end