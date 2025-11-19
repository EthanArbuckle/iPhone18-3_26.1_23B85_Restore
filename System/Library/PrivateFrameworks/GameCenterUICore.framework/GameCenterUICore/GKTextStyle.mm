@interface GKTextStyle
+ (double)scaledValueFromHISpecLeading:(double)a3 forFontTextStyle:(id)a4;
+ (double)standardFontSize;
+ (double)standardLeadingForFontTextStyle:(id)a3;
+ (id)attributedString:(id)a3 byReplayingFromBaseStyle:(id)a4 systemContentSizeDidChange:(BOOL)a5;
+ (id)textStyle;
- (BOOL)isEqual:(id)a3;
- (GKTextStyle)init;
- (GKTextStyle)styleWithName:(id)a3 fallback:(id)a4 layoutMode:(int)a5;
- (SEL)fontNameRebaseSelector;
- (SEL)fontSizeRebaseSelector;
- (id)achievementLeaderboardPointsText;
- (id)achievementLeaderboardRank;
- (id)achievementValueText;
- (id)alignment:(int64_t)a3 lineBreakMode:(int64_t)a4;
- (id)attributes;
- (id)bannerMessage;
- (id)bannerShortTitle;
- (id)bannerTitle;
- (id)baseFontRebaseSelector;
- (id)body;
- (id)bold;
- (id)buttonTitle;
- (id)buyButtonTitle;
- (id)callout;
- (id)caption;
- (id)caption1;
- (id)caption2;
- (id)cellActionItem;
- (id)centered;
- (id)challengeText;
- (id)challengeTitleText;
- (id)composeFields;
- (id)composeMessage;
- (id)copy;
- (id)copyWithBaseClass:(Class)a3;
- (id)description;
- (id)detailSecondaryHeaderText;
- (id)emphasized;
- (id)emphasizedOnDarkBackground;
- (id)footnote;
- (id)friendCaptionColor;
- (id)friendColor;
- (id)gameDetailNameText;
- (id)header0;
- (id)header1;
- (id)header2;
- (id)header3;
- (id)header4;
- (id)headerViewSubText1;
- (id)headline;
- (id)info;
- (id)initEmpty;
- (id)leaderboardRankLarge;
- (id)leaderboardRankMedium;
- (id)leaderboardRankSmall;
- (id)light;
- (id)lineBreakMode:(int64_t)a3;
- (id)lineHeight:(double)a3;
- (id)localPlayerColor;
- (id)medium;
- (id)multiplayerAddText;
- (id)multiplayerFooterText;
- (id)multiplayerHeaderText;
- (id)multiplayerNameText;
- (id)multiplayerStatusText;
- (id)regular;
- (id)remoteUIDetailLabel:(int)a3;
- (id)remoteUIEditField:(int)a3;
- (id)remoteUIEditLabel:(int)a3;
- (id)remoteUILabel:(int)a3;
- (id)remoteUINickNameField:(int)a3;
- (id)remoteUINickNameLabel:(int)a3;
- (id)remoteUISectionFooter:(int)a3;
- (id)remoteUISectionHeader:(int)a3;
- (id)remoteUISelectField:(int)a3;
- (id)remoteUISelectLabel:(int)a3;
- (id)remoteUITableFooterButton:(int)a3;
- (id)remoteUITableHeaderButton:(int)a3;
- (id)remoteUITableHeaderLabel:(int)a3;
- (id)remoteUITableHeaderSubLabel:(int)a3;
- (id)removeButtonTitle;
- (id)replayOnBaseStyle:(id)a3 systemContentSizeDidChange:(BOOL)a4;
- (id)resolveFontAndLineSpacing:(double *)a3;
- (id)roundButtonTitle;
- (id)scaled:(double)a3;
- (id)scaledForM34:(double)a3 zPosition:(double)a4;
- (id)sectionCaption;
- (id)sectionCaptionSmall;
- (id)sectionHeader;
- (id)selectedBuyButtonTitle;
- (id)settingsBoldButton;
- (id)settingsButton;
- (id)settingsFooter;
- (id)settingsHeader;
- (id)settingsLabel;
- (id)settingsLinkText;
- (id)small;
- (id)smallInfo;
- (id)strong;
- (id)tabIconCaption;
- (id)tableCellSubtitle;
- (id)tableCellTitle;
- (id)tableFooterStyle;
- (id)thin;
- (id)thinNumberText;
- (id)viewBackground;
- (void)applyScaleForMesh;
- (void)applyToEditField:(id)a3;
- (void)applyToLabel:(id)a3;
- (void)setFontName:(id)a3 kitTextStyleName:(id)a4 leadingOverrideFromHISpec:(double)a5 shouldOverrideSize:(BOOL)a6 rebaseSelector:(SEL)a7;
- (void)setFontNameRebaseSelector:(SEL)a3;
- (void)setFontSize:(double)a3 rebaseSelector:(SEL)a4;
- (void)setFontSizeRebaseSelector:(SEL)a3;
- (void)setLineBreakMode:(int64_t)a3;
- (void)setMinimumLineHeight:(double)a3;
- (void)setTextAlignment:(int64_t)a3;
@end

@implementation GKTextStyle

+ (id)textStyle
{
  if (textStyle_onceToken != -1)
  {
    +[GKTextStyle textStyle];
  }

  v3 = textStyle_sBaseTextStyle;

  return v3;
}

uint64_t __24__GKTextStyle_textStyle__block_invoke()
{
  v0 = [MEMORY[0x277D75418] currentDevice];
  v1 = [v0 userInterfaceIdiom];

  if (v1 == 1 || (([MEMORY[0x277D759A0] mainScreen], v2 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v2, "bounds"), v4 = v3, v6 = v5, v2, v6 <= v4) ? (v7 = v4) : (v7 = v6), v7 <= 480.0))
  {
    v8 = [MEMORY[0x277D75418] currentDevice];
    v9 = [v8 userInterfaceIdiom];

    if (v9 != 1)
    {
      v10 = [MEMORY[0x277D759A0] mainScreen];
      [v10 bounds];
    }
  }

  textStyle_sBaseTextStyle = objc_alloc_init(objc_opt_class());

  return MEMORY[0x2821F96F8]();
}

+ (id)attributedString:(id)a3 byReplayingFromBaseStyle:(id)a4 systemContentSizeDidChange:(BOOL)a5
{
  v7 = a4;
  v8 = MEMORY[0x277CCAB48];
  v9 = a3;
  v10 = [[v8 alloc] initWithAttributedString:v9];
  v11 = [v9 length];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __84__GKTextStyle_attributedString_byReplayingFromBaseStyle_systemContentSizeDidChange___block_invoke;
  v17[3] = &unk_27967F418;
  v18 = v7;
  v20 = a5;
  v12 = v10;
  v19 = v12;
  v13 = v7;
  [v9 enumerateAttributesInRange:0 options:v11 usingBlock:{0, v17}];

  v14 = v19;
  v15 = v12;

  return v12;
}

void __84__GKTextStyle_attributedString_byReplayingFromBaseStyle_systemContentSizeDidChange___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = a2;
  v8 = [v7 objectForKeyedSubscript:@"GKRecorderAttribute"];
  v9 = v8;
  if (v8)
  {
    v10 = [v8 replayOnBaseStyle:*(a1 + 32) systemContentSizeDidChange:*(a1 + 48)];
    v11 = [v7 objectForKeyedSubscript:*MEMORY[0x277D740A8]];
    v19 = 0;
    v12 = [v10 resolveFontAndLineSpacing:&v19];
    v13 = v12;
    if (v10 != v9 || (*(a1 + 48) & 1) != 0 || ([v12 pointSize], v15 = v14, objc_msgSend(v11, "pointSize"), v15 != v16))
    {
      v17 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:v7];
      v18 = [v10 attributes];
      [v17 addEntriesFromDictionary:v18];

      [*(a1 + 40) setAttributes:v17 range:{a3, a4}];
    }
  }
}

+ (double)standardFontSize
{
  v2 = MEMORY[0x277CCACA8];
  v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ needs to implement me!", a1];
  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter/Frameworks/GameCenterUI/iOS/Framework/GKTextStyle.m"];
  v5 = [v4 lastPathComponent];
  v6 = [v2 stringWithFormat:@"%@ (NO)\n[%s (%s:%d)]", v3, "+[GKTextStyle standardFontSize]", objc_msgSend(v5, "UTF8String"), 165];

  [MEMORY[0x277CBEAD8] raise:@"GameKit Exception" format:{@"%@", v6}];
  return -1.0;
}

- (GKTextStyle)init
{
  v12.receiver = self;
  v12.super_class = GKTextStyle;
  v2 = [(GKTextStyle *)&v12 init];
  if (v2)
  {
    v3 = +[GKColorPalette sharedPalette];
    fontName = v2->_fontName;
    v2->_fontName = @"GKMagicSystemFont";

    [objc_opt_class() standardFontSize];
    v2->_fontSize = v5;
    if (sel_baseFontRebaseSelector)
    {
      v6 = sel_baseFontRebaseSelector;
      v7 = sel_baseFontRebaseSelector;
    }

    else
    {
      v6 = 0;
      v7 = 0;
    }

    v2->_fontSizeRebaseSelector = v6;
    v2->_fontNameRebaseSelector = v7;
    v8 = [(GKColorPalette *)v3 standardTextColor];
    color = v2->_color;
    v2->_color = v8;

    palette = v2->_palette;
    v2->_palette = v3;

    *&v2->_textAlignment = vdupq_n_s64(4uLL);
    v2->_needsParagraphStyle = 0;
  }

  return v2;
}

- (id)initEmpty
{
  v3.receiver = self;
  v3.super_class = GKTextStyle;
  return [(GKTextStyle *)&v3 init];
}

- (id)replayOnBaseStyle:(id)a3 systemContentSizeDidChange:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = self;
  if ([v6 isMemberOfClass:objc_opt_class()] && !v4)
  {
    goto LABEL_12;
  }

  v8 = [(GKTextStyle *)v7 fontSizeRebaseSelector];
  v9 = [(GKTextStyle *)v7 fontNameRebaseSelector];
  if (!(v8 | v9))
  {
    goto LABEL_12;
  }

  v10 = v9;
  v11 = [(GKTextStyle *)v7 copyWithBaseClass:objc_opt_class()];
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __60__GKTextStyle_replayOnBaseStyle_systemContentSizeDidChange___block_invoke;
  v25[3] = &unk_27967F440;
  v12 = v11;
  v26 = v12;
  v13 = MEMORY[0x253041B30](v25);
  v20 = MEMORY[0x277D85DD0];
  v21 = 3221225472;
  v22 = __60__GKTextStyle_replayOnBaseStyle_systemContentSizeDidChange___block_invoke_2;
  v23 = &unk_27967F440;
  v14 = v12;
  v24 = v14;
  v15 = MEMORY[0x253041B30](&v20);
  if (v8 == v10)
  {
    v17 = [v14 _gkInvokeSelector:{v8, v20, v21, v22, v23}];
    (v15)[2](v15, v17);
  }

  else
  {
    if (v10)
    {
      v16 = [v14 _gkInvokeSelector:{v10, v20, v21, v22, v23}];
      (v15)[2](v15, v16);
    }

    if (!v8)
    {
      goto LABEL_11;
    }

    v17 = [v14 _gkInvokeSelector:v8];
  }

  (v13)[2](v13, v17);

LABEL_11:
  [v14 applyScaleForMesh];
  v18 = v14;

  v7 = v18;
LABEL_12:

  return v7;
}

double __60__GKTextStyle_replayOnBaseStyle_systemContentSizeDidChange___block_invoke(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 72);
  *(*(a1 + 32) + 72) = result;
  return result;
}

void __60__GKTextStyle_replayOnBaseStyle_systemContentSizeDidChange___block_invoke_2(uint64_t a1, void *a2)
{
  v9 = a2;
  v3 = *(*(a1 + 32) + 56);
  v4 = v9[7];
  v5 = v4;
  if (v3 != v5)
  {
    objc_storeStrong((*(a1 + 32) + 56), v4);
  }

  v6 = *(*(a1 + 32) + 64);
  v7 = v9[8];
  v8 = v7;
  if (v6 != v8)
  {
    objc_storeStrong((*(a1 + 32) + 64), v7);
  }

  *(*(a1 + 32) + 8) = v9[1];
  *(*(a1 + 32) + 17) = *(v9 + 17);
}

- (id)copy
{
  v3 = objc_opt_class();

  return [(GKTextStyle *)self copyWithBaseClass:v3];
}

- (id)copyWithBaseClass:(Class)a3
{
  v4 = [[a3 alloc] initEmpty];
  if (v4)
  {
    v5 = [(NSString *)self->_fontName copy];
    v6 = *(v4 + 56);
    *(v4 + 56) = v5;

    v7 = [(NSString *)self->_UIKitFontTextStyleName copy];
    v8 = *(v4 + 64);
    *(v4 + 64) = v7;

    fontSizeRebaseSelector = self->_fontSizeRebaseSelector;
    *(v4 + 8) = self->_UIKitFontLeading;
    *(v4 + 17) = self->_overrideUIKitFontSize;
    *(v4 + 72) = self->_fontSize;
    *(v4 + 104) = fontSizeRebaseSelector;
    objc_storeStrong((v4 + 24), self->_color);
    objc_storeStrong((v4 + 48), self->_palette);
    *(v4 + 88) = self->_m34;
    *(v4 + 96) = self->_zPosition;
    *(v4 + 32) = self->_textAlignment;
    *(v4 + 40) = self->_lineBreakMode;
    *(v4 + 16) = self->_needsParagraphStyle;
    *(v4 + 80) = self->_minimumLineHeight;
  }

  return v4;
}

- (id)description
{
  v3 = [MEMORY[0x277CCAB68] string];
  [v3 appendFormat:@"<%@ %p", objc_opt_class(), self];
  fontSizeRebaseSelector = self->_fontSizeRebaseSelector;
  fontSize = self->_fontSize;
  if (fontSizeRebaseSelector)
  {
    v6 = NSStringFromSelector(fontSizeRebaseSelector);
    [v3 appendFormat:@"> %.1fpt sel:%@ font:%@", *&fontSize, v6, self->_fontName];
  }

  else
  {
    [v3 appendFormat:@"> %.1fpt sel:%@ font:%@", *&fontSize, @"<n/a>", self->_fontName];
  }

  zPosition = self->_zPosition;
  if (zPosition != 0.0)
  {
    [v3 appendFormat:@" z:%.2f m34:%g 1/m34:%.0f", *&zPosition, *&self->_m34, 1.0 / self->_m34];
  }

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v5 = a3;
  if (v5 == self)
  {
    v11 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
      v7 = [(GKTextStyle *)v6 fontName];
      if (![v7 isEqual:self->_fontName])
      {
        v11 = 0;
LABEL_18:

        goto LABEL_19;
      }

      v8 = [(GKTextStyle *)v6 color];
      color = self->_color;
      if (v8 == color || (-[GKTextStyle color](v6, "color"), v3 = objc_claimAutoreleasedReturnValue(), [v3 isEqual:self->_color]))
      {
        if ([(GKTextStyle *)v6 fontSizeRebaseSelector]== self->_fontSizeRebaseSelector && [(GKTextStyle *)v6 textAlignment]== self->_textAlignment && [(GKTextStyle *)v6 lineBreakMode]== self->_lineBreakMode)
        {
          [(GKTextStyle *)v6 minimumLineHeight];
          v10 = v12 == self->_minimumLineHeight;
          v11 = v10;
        }

        else
        {
          v10 = 0;
          v11 = 0;
        }

        if (v8 == color)
        {
          goto LABEL_17;
        }
      }

      else
      {
        v10 = 0;
      }

      v11 = v10;
LABEL_17:

      goto LABEL_18;
    }

    v11 = 0;
  }

LABEL_19:

  return v11;
}

+ (double)standardLeadingForFontTextStyle:(id)a3
{
  v3 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76918]];
  [v3 leading];
  v5 = GKRoundToScreenScale(v4);

  return v5;
}

+ (double)scaledValueFromHISpecLeading:(double)a3 forFontTextStyle:(id)a4
{
  v5 = [MEMORY[0x277D74300] preferredFontForTextStyle:a4];
  [v5 _scaledValueForValue:a3];
  v7 = GKRoundToScreenScale(v6);

  return v7;
}

- (id)resolveFontAndLineSpacing:(double *)a3
{
  v5 = self->_fontName;
  if (a3)
  {
    *a3 = 0.0;
  }

  v6 = self->_UIKitFontTextStyleName;
  if (v6)
  {
    v7 = [MEMORY[0x277D74300] preferredFontForTextStyle:v6];
    v8 = v7;
    if (self->_overrideUIKitFontSize)
    {
      v9 = [v7 fontWithSize:self->_fontSize];

      v8 = v9;
    }

    if (a3 && self->_UIKitFontLeading != 0.0)
    {
      [v8 _scaledValueForValue:?];
      *a3 = GKRoundToScreenScale(v10);
    }
  }

  else
  {
    if (v5 == @"GKMagicSystemFont")
    {
      v12 = [MEMORY[0x277D74300] systemFontOfSize:self->_fontSize];
    }

    else if (v5 == @"GKMagicBoldSystemFont" || v5 == @"GKMagicMediumSystemFontName")
    {
      v12 = [MEMORY[0x277D74300] boldSystemFontOfSize:self->_fontSize];
    }

    else if (v5 == @"GKMagicLightSystemFont")
    {
      v12 = [MEMORY[0x277D74300] _lightSystemFontOfSize:self->_fontSize];
    }

    else
    {
      fontSize = self->_fontSize;
      if (v5 == @"GKMagicThinSystemFont")
      {
        [MEMORY[0x277D74300] _thinSystemFontOfSize:fontSize];
      }

      else
      {
        [MEMORY[0x277D74300] fontWithName:v5 size:fontSize];
      }
      v12 = ;
    }

    v8 = v12;
  }

  return v8;
}

- (void)setTextAlignment:(int64_t)a3
{
  if (self->_textAlignment != a3)
  {
    self->_textAlignment = a3;
    self->_needsParagraphStyle = 1;
  }
}

- (void)setLineBreakMode:(int64_t)a3
{
  if (self->_lineBreakMode != a3)
  {
    self->_lineBreakMode = a3;
    self->_needsParagraphStyle = 1;
  }
}

- (void)setMinimumLineHeight:(double)a3
{
  if (self->_minimumLineHeight != a3)
  {
    self->_minimumLineHeight = a3;
    self->_needsParagraphStyle = 1;
  }
}

- (void)setFontSize:(double)a3 rebaseSelector:(SEL)a4
{
  self->_fontSize = a3;
  if (a4)
  {
    v4 = a4;
  }

  else
  {
    v4 = 0;
  }

  self->_fontSizeRebaseSelector = v4;
}

- (void)setFontName:(id)a3 kitTextStyleName:(id)a4 leadingOverrideFromHISpec:(double)a5 shouldOverrideSize:(BOOL)a6 rebaseSelector:(SEL)a7
{
  v15 = a3;
  v13 = a4;
  if (self->_fontName != v15)
  {
    objc_storeStrong(&self->_fontName, a3);
  }

  if (self->_UIKitFontTextStyleName != v13)
  {
    objc_storeStrong(&self->_UIKitFontTextStyleName, a4);
  }

  self->_UIKitFontLeading = a5;
  self->_overrideUIKitFontSize = a6;
  if (a7)
  {
    v14 = a7;
  }

  else
  {
    v14 = 0;
  }

  self->_fontNameRebaseSelector = v14;
}

- (id)attributes
{
  v22[3] = *MEMORY[0x277D85DE8];
  v18 = 0.0;
  v3 = [(GKTextStyle *)self resolveFontAndLineSpacing:&v18];
  if (!v3)
  {
    v4 = MEMORY[0x277CCACA8];
    v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"unknown font:%@", self->_fontName];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter/Frameworks/GameCenterUI/iOS/Framework/GKTextStyle.m"];
    v7 = [v6 lastPathComponent];
    v8 = [v4 stringWithFormat:@"%@ (font != nil)\n[%s (%s:%d)]", v5, "-[GKTextStyle attributes]", objc_msgSend(v7, "UTF8String"), 489];

    [MEMORY[0x277CBEAD8] raise:@"GameKit Exception" format:{@"%@", v8}];
  }

  if (self->_needsParagraphStyle || v18 != 0.0)
  {
    v12 = objc_alloc_init(MEMORY[0x277D74240]);
    [v12 setAlignment:self->_textAlignment];
    [v12 setLineBreakMode:self->_lineBreakMode];
    LODWORD(v13) = *"333?";
    [v12 setHyphenationFactor:v13];
    if (self->_UIKitFontLeading <= 0.0)
    {
      if (self->_minimumLineHeight > 0.0)
      {
        [v12 setMinimumLineHeight:?];
      }
    }

    else
    {
      [v12 setMinimumLineHeight:v18];
      [v12 setMaximumLineHeight:v18];
    }

    v14 = *MEMORY[0x277D740C0];
    v19[0] = *MEMORY[0x277D740A8];
    v19[1] = v14;
    color = self->_color;
    v20[0] = v3;
    v20[1] = color;
    v16 = *MEMORY[0x277D74118];
    v19[2] = @"GKRecorderAttribute";
    v19[3] = v16;
    v20[2] = self;
    v20[3] = v12;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:v19 count:4];
  }

  else
  {
    v9 = *MEMORY[0x277D740C0];
    v21[0] = *MEMORY[0x277D740A8];
    v21[1] = v9;
    v10 = self->_color;
    v22[0] = v3;
    v22[1] = v10;
    v21[2] = @"GKRecorderAttribute";
    v22[2] = self;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:v21 count:{3, v18}];
  }

  return v11;
}

- (void)applyToLabel:(id)a3
{
  v7 = 0.0;
  v4 = a3;
  v5 = [(GKTextStyle *)self resolveFontAndLineSpacing:&v7];
  [v4 setFont:v5];
  v6 = [(GKTextStyle *)self color];
  [v4 setTextColor:v6];

  [v4 setLineBreakMode:{-[GKTextStyle lineBreakMode](self, "lineBreakMode")}];
  [v4 setTextAlignment:{-[GKTextStyle textAlignment](self, "textAlignment")}];
  [v4 setLineSpacing:v7];
}

- (void)applyToEditField:(id)a3
{
  v6 = a3;
  v4 = [(GKTextStyle *)self resolveFontAndLineSpacing:0];
  [v6 setFont:v4];

  v5 = [(GKTextStyle *)self color];
  [v6 setTextColor:v5];

  [v6 setTextAlignment:{-[GKTextStyle textAlignment](self, "textAlignment")}];
}

- (id)baseFontRebaseSelector
{
  v3 = [(GKTextStyle *)self copy];
  [v3 setFontName:@"GKMagicSystemFont" rebaseSelector:a2];
  [objc_opt_class() standardFontSize];
  [v3 setFontSize:a2 rebaseSelector:?];

  return v3;
}

- (id)header0
{
  v4 = [(GKTextStyle *)self copy];
  v5 = [(GKTextStyle *)self palette];
  v6 = [v5 emphasizedTextColor];
  [v4 setColor:v6];

  [v4 setFontName:@"GKMagicBoldSystemFont" rebaseSelector:a2];
  [v4 setFontSize:a2 rebaseSelector:32.0];

  return v4;
}

- (id)header1
{
  v2 = MEMORY[0x277CCACA8];
  v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ needs to implement me!", self];
  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter/Frameworks/GameCenterUI/iOS/Framework/GKTextStyle.m"];
  v5 = [v4 lastPathComponent];
  v6 = [v2 stringWithFormat:@"%@ (NO)\n[%s (%s:%d)]", v3, "-[GKTextStyle header1]", objc_msgSend(v5, "UTF8String"), 572];

  [MEMORY[0x277CBEAD8] raise:@"GameKit Exception" format:{@"%@", v6}];
  return 0;
}

- (id)header2
{
  v2 = MEMORY[0x277CCACA8];
  v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ needs to implement me!", self];
  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter/Frameworks/GameCenterUI/iOS/Framework/GKTextStyle.m"];
  v5 = [v4 lastPathComponent];
  v6 = [v2 stringWithFormat:@"%@ (NO)\n[%s (%s:%d)]", v3, "-[GKTextStyle header2]", objc_msgSend(v5, "UTF8String"), 578];

  [MEMORY[0x277CBEAD8] raise:@"GameKit Exception" format:{@"%@", v6}];
  return 0;
}

- (id)header3
{
  v4 = [(GKTextStyle *)self copy];
  v5 = [(GKTextStyle *)self palette];
  v6 = [v5 emphasizedTextColor];
  [v4 setColor:v6];

  [v4 setFontName:@"GKMagicSystemFont" rebaseSelector:a2];
  [v4 setFontSize:a2 rebaseSelector:18.0];

  return v4;
}

- (id)header4
{
  v4 = [(GKTextStyle *)self copy];
  v5 = [(GKTextStyle *)self palette];
  v6 = [v5 emphasizedTextColor];
  [v4 setColor:v6];

  [v4 setFontName:@"GKMagicSystemFont" rebaseSelector:a2];
  [v4 setFontSize:a2 rebaseSelector:14.0];

  return v4;
}

- (id)headline
{
  v4 = [(GKTextStyle *)self copy];
  v5 = [(GKTextStyle *)self palette];
  v6 = [v5 emphasizedTextColor];
  [v4 setColor:v6];

  [v4 setTextAlignment:4];
  [v4 setFontName:@"GKMagicBoldSystemFont" kitTextStyleName:*MEMORY[0x277D76988] shouldOverrideSize:0 rebaseSelector:a2];
  [v4 setFontSize:a2 rebaseSelector:18.0];

  return v4;
}

- (id)body
{
  v4 = [(GKTextStyle *)self copy];
  v5 = [(GKTextStyle *)self palette];
  v6 = [v5 emphasizedTextColor];
  [v4 setColor:v6];

  [v4 setTextAlignment:4];
  [v4 setFontName:@"GKMagicSystemFont" kitTextStyleName:*MEMORY[0x277D76918] shouldOverrideSize:0 rebaseSelector:a2];
  [v4 setFontSize:a2 rebaseSelector:17.0];

  return v4;
}

- (id)footnote
{
  v3 = [(GKTextStyle *)self copy];
  [v3 setTextAlignment:4];
  [v3 setFontName:@"GKMagicSystemFont" kitTextStyleName:*MEMORY[0x277D76968] shouldOverrideSize:0 rebaseSelector:a2];
  [v3 setFontSize:a2 rebaseSelector:15.0];

  return v3;
}

- (id)callout
{
  v3 = [(GKTextStyle *)self copy];
  [v3 setTextAlignment:4];
  [v3 setFontName:@"GKMagicSystemFont" kitTextStyleName:*MEMORY[0x277D76920] shouldOverrideSize:0 rebaseSelector:a2];

  return v3;
}

- (id)caption1
{
  v4 = [(GKTextStyle *)self copy];
  v5 = [(GKTextStyle *)self palette];
  v6 = [v5 standardTextColor];
  [v4 setColor:v6];

  [v4 setTextAlignment:4];
  [v4 setFontName:@"GKMagicSystemFont" kitTextStyleName:*MEMORY[0x277D76938] shouldOverrideSize:0 rebaseSelector:a2];
  [v4 setFontSize:a2 rebaseSelector:13.0];

  return v4;
}

- (id)caption2
{
  v4 = [(GKTextStyle *)self copy];
  v5 = [(GKTextStyle *)self palette];
  v6 = [v5 standardTextColor];
  [v4 setColor:v6];

  [v4 setTextAlignment:4];
  [v4 setFontName:@"GKMagicSystemFont" kitTextStyleName:*MEMORY[0x277D76940] shouldOverrideSize:0 rebaseSelector:a2];
  [v4 setFontSize:a2 rebaseSelector:11.0];

  return v4;
}

- (id)bannerTitle
{
  v4 = [(GKTextStyle *)self copy];
  v5 = [(GKTextStyle *)self palette];
  v6 = [v5 emphasizedTextOnDarkBackgroundColor];
  [v4 setColor:v6];

  [v4 setTextAlignment:4];
  [v4 setLineBreakMode:4];
  [v4 setFontName:@"GKMagicBoldSystemFont" rebaseSelector:a2];
  [v4 setFontSize:a2 rebaseSelector:17.0];

  return v4;
}

- (id)bannerShortTitle
{
  v4 = [(GKTextStyle *)self copy];
  v5 = [(GKTextStyle *)self palette];
  v6 = [v5 emphasizedTextOnDarkBackgroundColor];
  [v4 setColor:v6];

  [v4 setTextAlignment:4];
  [v4 setLineBreakMode:4];
  [v4 setFontName:@"GKMagicBoldSystemFont" rebaseSelector:a2];
  [v4 setFontSize:a2 rebaseSelector:15.0];

  return v4;
}

- (id)bannerMessage
{
  v3 = [(GKTextStyle *)self header4];
  v4 = [(GKTextStyle *)self palette];
  v5 = [v4 emphasizedTextOnDarkBackgroundColor];
  [v3 setColor:v5];

  [v3 setTextAlignment:4];
  [v3 setLineBreakMode:4];

  return v3;
}

- (id)caption
{
  v4 = [(GKTextStyle *)self copy];
  [v4 setTextAlignment:4];
  v5 = [(GKTextStyle *)self palette];
  v6 = [v5 friendRequestCaptionTintColor];
  [v4 setColor:v6];

  [v4 setFontSize:a2 rebaseSelector:12.0];

  return v4;
}

- (id)roundButtonTitle
{
  v4 = [(GKTextStyle *)self copy];
  [v4 setTextAlignment:1];
  [v4 setLineBreakMode:0];
  v5 = [(GKTextStyle *)self palette];
  v6 = [v5 systemInteractionColor];
  [v4 setColor:v6];

  [v4 setFontName:@"GKMagicSystemFont" rebaseSelector:a2];
  [v4 setFontSize:a2 rebaseSelector:11.0];

  return v4;
}

- (id)buyButtonTitle
{
  v4 = [(GKTextStyle *)self copy];
  [v4 setTextAlignment:1];
  [v4 setLineBreakMode:0];
  v5 = [(GKTextStyle *)self palette];
  v6 = [v5 systemInteractionColor];
  [v4 setColor:v6];

  [v4 setFontName:@"GKMagicSystemFont" kitTextStyleName:*MEMORY[0x277D769D0] leadingOverrideFromHISpec:0 shouldOverrideSize:a2 rebaseSelector:0.0];
  [v4 setFontSize:a2 rebaseSelector:14.0];

  return v4;
}

- (id)selectedBuyButtonTitle
{
  v4 = [(GKTextStyle *)self copy];
  [v4 setTextAlignment:1];
  [v4 setLineBreakMode:0];
  v5 = [(GKTextStyle *)self palette];
  v6 = [v5 textOnDarkBackgroundColor];
  [v4 setColor:v6];

  [v4 setFontName:@"GKMagicSystemFont" kitTextStyleName:*MEMORY[0x277D769D0] leadingOverrideFromHISpec:0 shouldOverrideSize:a2 rebaseSelector:0.0];
  [v4 setFontSize:a2 rebaseSelector:14.0];

  return v4;
}

- (id)small
{
  v4 = [(GKTextStyle *)self copy];
  v5 = [(GKTextStyle *)self palette];
  v6 = [v5 emphasizedTextColor];
  [v4 setColor:v6];

  [v4 setFontSize:a2 rebaseSelector:9.0];

  return v4;
}

- (id)info
{
  v3 = [(GKTextStyle *)self copy];
  v4 = [(GKTextStyle *)self palette];
  v5 = [v4 standardTextColor];
  [v3 setColor:v5];

  return v3;
}

- (id)smallInfo
{
  v2 = MEMORY[0x277CCACA8];
  v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ needs to implement me!", self];
  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter/Frameworks/GameCenterUI/iOS/Framework/GKTextStyle.m"];
  v5 = [v4 lastPathComponent];
  v6 = [v2 stringWithFormat:@"%@ (NO)\n[%s (%s:%d)]", v3, "-[GKTextStyle smallInfo]", objc_msgSend(v5, "UTF8String"), 807];

  [MEMORY[0x277CBEAD8] raise:@"GameKit Exception" format:{@"%@", v6}];
  return 0;
}

- (id)viewBackground
{
  v3 = [(GKTextStyle *)self copy];
  v4 = [(GKTextStyle *)self palette];
  v5 = [v4 viewBackgroundColor];
  [v3 setColor:v5];

  return v3;
}

- (id)emphasized
{
  v3 = [(GKTextStyle *)self copy];
  v4 = [(GKTextStyle *)self palette];
  v5 = [v4 emphasizedTextColor];
  [v3 setColor:v5];

  return v3;
}

- (id)emphasizedOnDarkBackground
{
  v3 = [(GKTextStyle *)self copy];
  v4 = [(GKTextStyle *)self palette];
  v5 = [v4 emphasizedTextOnDarkBackgroundColor];
  [v3 setColor:v5];

  return v3;
}

- (void)applyScaleForMesh
{
  zPosition = self->_zPosition;
  if (zPosition != 0.0)
  {
    m34 = self->_m34;
    v4 = 1.0 / m34;
    v5 = m34 == 0.0;
    v6 = -400.0;
    if (!v5)
    {
      v6 = v4;
    }

    v7 = fabs(self->_fontSize * (zPosition + v6) / v6);
    if (self->_fontSizeRebaseSelector)
    {
      fontSizeRebaseSelector = self->_fontSizeRebaseSelector;
    }

    else
    {
      fontSizeRebaseSelector = 0;
    }

    [(GKTextStyle *)self setFontSize:fontSizeRebaseSelector rebaseSelector:v7];
  }
}

- (id)scaledForM34:(double)a3 zPosition:(double)a4
{
  v6 = [(GKTextStyle *)self copy];
  [v6 setM34:a3];
  [v6 setZPosition:a4];
  [v6 applyScaleForMesh];

  return v6;
}

- (id)scaled:(double)a3
{
  v5 = [(GKTextStyle *)self copy];
  v6 = v5;
  if (self->_fontSizeRebaseSelector)
  {
    fontSizeRebaseSelector = self->_fontSizeRebaseSelector;
  }

  else
  {
    fontSizeRebaseSelector = 0;
  }

  [v5 setFontSize:fontSizeRebaseSelector rebaseSelector:self->_fontSize * a3];

  return v6;
}

- (id)localPlayerColor
{
  v3 = [(GKTextStyle *)self copy];
  v4 = [(GKTextStyle *)self palette];
  v5 = [v4 localPlayerTintColor];
  [v3 setColor:v5];

  return v3;
}

- (id)friendColor
{
  v3 = [(GKTextStyle *)self copy];
  v4 = [(GKTextStyle *)self palette];
  v5 = [v4 friendTintColor];
  [v3 setColor:v5];

  return v3;
}

- (id)friendCaptionColor
{
  v3 = [(GKTextStyle *)self copy];
  v4 = [(GKTextStyle *)self palette];
  v5 = [v4 friendRequestCaptionTintColor];
  [v3 setColor:v5];

  return v3;
}

- (id)bold
{
  v3 = [(GKTextStyle *)self copy];
  [v3 setFontName:@"GKMagicBoldSystemFont" rebaseSelector:a2];

  return v3;
}

- (id)strong
{
  v3 = [(GKTextStyle *)self copy];
  [v3 setFontName:@"GKMagicBoldSystemFont" rebaseSelector:a2];

  return v3;
}

- (id)thin
{
  v3 = [(GKTextStyle *)self copy];
  [v3 setFontName:@"GKMagicLightSystemFont" rebaseSelector:a2];

  return v3;
}

- (id)regular
{
  v3 = [(GKTextStyle *)self copy];
  [v3 setFontName:@"GKMagicSystemFont" rebaseSelector:a2];

  return v3;
}

- (id)light
{
  v3 = [(GKTextStyle *)self copy];
  [v3 setFontName:@"GKMagicSystemFont" rebaseSelector:a2];

  return v3;
}

- (id)medium
{
  v3 = [(GKTextStyle *)self copy];
  [v3 setFontName:@"GKMagicMediumSystemFontName" rebaseSelector:a2];

  return v3;
}

- (id)centered
{
  v2 = [(GKTextStyle *)self copy];
  [v2 setTextAlignment:1];

  return v2;
}

- (id)composeFields
{
  v3 = [(GKTextStyle *)self copy];
  [v3 setFontName:@"GKMagicSystemFont" kitTextStyleName:*MEMORY[0x277D769D0] shouldOverrideSize:0 rebaseSelector:a2];
  [v3 setFontSize:a2 rebaseSelector:14.0];

  return v3;
}

- (id)composeMessage
{
  v3 = [(GKTextStyle *)self copy];
  [v3 setFontName:@"GKMagicSystemFont" kitTextStyleName:*MEMORY[0x277D76918] shouldOverrideSize:0 rebaseSelector:a2];
  [v3 setFontSize:a2 rebaseSelector:17.0];

  return v3;
}

- (id)headerViewSubText1
{
  v3 = [(GKTextStyle *)self copy];
  [v3 setFontName:@"GKMagicSystemFont" kitTextStyleName:*MEMORY[0x277D76968] shouldOverrideSize:0 rebaseSelector:a2];
  [v3 setFontSize:a2 rebaseSelector:15.0];

  return v3;
}

- (id)multiplayerNameText
{
  v4 = [(GKTextStyle *)self copy];
  [v4 setFontName:@"GKMagicBoldSystemFont" kitTextStyleName:*MEMORY[0x277D769D0] shouldOverrideSize:0 rebaseSelector:a2];
  [v4 setFontSize:a2 rebaseSelector:15.0];
  [v4 setTextAlignment:1];
  v5 = [(GKTextStyle *)self palette];
  v6 = [v5 emphasizedTextColor];
  [v4 setColor:v6];

  return v4;
}

- (id)multiplayerAddText
{
  v4 = [(GKTextStyle *)self copy];
  [v4 setFontName:@"GKMagicSystemFont" kitTextStyleName:*MEMORY[0x277D769D0] shouldOverrideSize:0 rebaseSelector:a2];
  [v4 setFontSize:a2 rebaseSelector:15.0];
  [v4 setTextAlignment:1];
  v5 = [(GKTextStyle *)self palette];
  v6 = [v5 systemInteractionColor];
  [v4 setColor:v6];

  return v4;
}

- (id)multiplayerStatusText
{
  v4 = [(GKTextStyle *)self copy];
  [v4 setFontName:@"GKMagicSystemFont" kitTextStyleName:*MEMORY[0x277D76968] shouldOverrideSize:1 rebaseSelector:a2];
  [v4 setFontSize:a2 rebaseSelector:11.0];
  [v4 setTextAlignment:1];
  v5 = [(GKTextStyle *)self palette];
  v6 = [v5 standardTextColor];
  [v4 setColor:v6];

  return v4;
}

- (id)multiplayerHeaderText
{
  v4 = [(GKTextStyle *)self copy];
  [v4 setFontName:@"GKMagicSystemFont" kitTextStyleName:*MEMORY[0x277D76968] shouldOverrideSize:0 rebaseSelector:a2];
  [v4 setFontSize:a2 rebaseSelector:17.0];
  [v4 setTextAlignment:1];
  v5 = [(GKTextStyle *)self palette];
  v6 = [v5 standardTextColor];
  [v4 setColor:v6];

  return v4;
}

- (id)multiplayerFooterText
{
  v4 = [(GKTextStyle *)self copy];
  [v4 setFontName:@"GKMagicSystemFont" kitTextStyleName:*MEMORY[0x277D76968] shouldOverrideSize:0 rebaseSelector:a2];
  [v4 setFontSize:a2 rebaseSelector:17.0];
  v5 = [(GKTextStyle *)self palette];
  v6 = [v5 standardTextColor];
  [v4 setColor:v6];

  return v4;
}

- (id)thinNumberText
{
  v2 = MEMORY[0x277CCACA8];
  v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ needs to implement me!", self];
  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter/Frameworks/GameCenterUI/iOS/Framework/GKTextStyle.m"];
  v5 = [v4 lastPathComponent];
  v6 = [v2 stringWithFormat:@"%@ (NO)\n[%s (%s:%d)]", v3, "-[GKTextStyle thinNumberText]", objc_msgSend(v5, "UTF8String"), 1058];

  [MEMORY[0x277CBEAD8] raise:@"GameKit Exception" format:{@"%@", v6}];
  return 0;
}

- (id)gameDetailNameText
{
  v2 = MEMORY[0x277CCACA8];
  v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ needs to implement me!", self];
  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter/Frameworks/GameCenterUI/iOS/Framework/GKTextStyle.m"];
  v5 = [v4 lastPathComponent];
  v6 = [v2 stringWithFormat:@"%@ (NO)\n[%s (%s:%d)]", v3, "-[GKTextStyle gameDetailNameText]", objc_msgSend(v5, "UTF8String"), 1064];

  [MEMORY[0x277CBEAD8] raise:@"GameKit Exception" format:{@"%@", v6}];
  return 0;
}

- (id)detailSecondaryHeaderText
{
  v2 = MEMORY[0x277CCACA8];
  v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ needs to implement me!", self];
  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter/Frameworks/GameCenterUI/iOS/Framework/GKTextStyle.m"];
  v5 = [v4 lastPathComponent];
  v6 = [v2 stringWithFormat:@"%@ (NO)\n[%s (%s:%d)]", v3, "-[GKTextStyle detailSecondaryHeaderText]", objc_msgSend(v5, "UTF8String"), 1070];

  [MEMORY[0x277CBEAD8] raise:@"GameKit Exception" format:{@"%@", v6}];
  return 0;
}

- (id)leaderboardRankSmall
{
  v3 = [(GKTextStyle *)self copy];
  [v3 setFontName:@"GKMagicSystemFont" rebaseSelector:a2];
  [v3 setFontSize:a2 rebaseSelector:14.0];

  return v3;
}

- (id)leaderboardRankMedium
{
  v3 = [(GKTextStyle *)self copy];
  [v3 setFontName:@"GKMagicSystemFont" rebaseSelector:a2];
  [v3 setFontSize:a2 rebaseSelector:22.0];

  return v3;
}

- (id)leaderboardRankLarge
{
  v3 = [(GKTextStyle *)self copy];
  [v3 setFontName:@"GKMagicLightSystemFont" rebaseSelector:a2];
  [v3 setFontSize:a2 rebaseSelector:34.0];

  return v3;
}

- (id)achievementLeaderboardRank
{
  v4 = [(GKTextStyle *)self copy];
  [v4 setFontName:@"GKMagicSystemFont" rebaseSelector:a2];
  [v4 setFontSize:a2 rebaseSelector:18.0];
  v5 = [(GKTextStyle *)self palette];
  v6 = [v5 emphasizedTextColor];
  [v4 setColor:v6];

  return v4;
}

- (id)achievementLeaderboardPointsText
{
  v3 = [(GKTextStyle *)self copy];
  [v3 setFontName:@"GKMagicBoldSystemFont" kitTextStyleName:*MEMORY[0x277D76940] shouldOverrideSize:0 rebaseSelector:a2];
  [v3 setFontSize:a2 rebaseSelector:10.0];

  return v3;
}

- (id)achievementValueText
{
  v4 = [(GKTextStyle *)self copy];
  [v4 setFontName:@"GKMagicSystemFont" kitTextStyleName:*MEMORY[0x277D76918] shouldOverrideSize:0 rebaseSelector:a2];
  [v4 setFontSize:a2 rebaseSelector:19.0];
  v5 = [(GKTextStyle *)self palette];
  v6 = [v5 emphasizedTextColor];
  [v4 setColor:v6];

  return v4;
}

- (id)sectionHeader
{
  v4 = [(GKTextStyle *)self copy];
  v5 = [(GKTextStyle *)self palette];
  v6 = [v5 emphasizedTextColor];
  [v4 setColor:v6];

  [v4 setFontName:@"GKMagicSystemFont" kitTextStyleName:*MEMORY[0x277D769D0] shouldOverrideSize:0 rebaseSelector:a2];
  [v4 setFontSize:a2 rebaseSelector:15.0];

  return v4;
}

- (id)sectionCaption
{
  v3 = [(GKTextStyle *)self copy];
  [v3 setFontName:@"GKMagicSystemFont" kitTextStyleName:*MEMORY[0x277D76940] shouldOverrideSize:0 rebaseSelector:a2];
  [v3 setFontSize:a2 rebaseSelector:11.0];

  return v3;
}

- (id)sectionCaptionSmall
{
  v2 = MEMORY[0x277CCACA8];
  v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ needs to implement me!", self];
  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter/Frameworks/GameCenterUI/iOS/Framework/GKTextStyle.m"];
  v5 = [v4 lastPathComponent];
  v6 = [v2 stringWithFormat:@"%@ (NO)\n[%s (%s:%d)]", v3, "-[GKTextStyle sectionCaptionSmall]", objc_msgSend(v5, "UTF8String"), 1163];

  [MEMORY[0x277CBEAD8] raise:@"GameKit Exception" format:{@"%@", v6}];
  return 0;
}

- (id)cellActionItem
{
  v2 = MEMORY[0x277CCACA8];
  v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ needs to implement me!", self];
  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter/Frameworks/GameCenterUI/iOS/Framework/GKTextStyle.m"];
  v5 = [v4 lastPathComponent];
  v6 = [v2 stringWithFormat:@"%@ (NO)\n[%s (%s:%d)]", v3, "-[GKTextStyle cellActionItem]", objc_msgSend(v5, "UTF8String"), 1169];

  [MEMORY[0x277CBEAD8] raise:@"GameKit Exception" format:{@"%@", v6}];
  return 0;
}

- (id)challengeText
{
  v3 = [(GKTextStyle *)self copy];
  [v3 setFontName:@"GKMagicSystemFont" kitTextStyleName:*MEMORY[0x277D76918] shouldOverrideSize:1 rebaseSelector:a2];
  v4 = [MEMORY[0x277D75418] currentDevice];
  v5 = [v4 userInterfaceIdiom];

  if (v5 != 1 || (v6 = 25.0, *MEMORY[0x277D0C258] == 1) && (_GKIsRemoteUIUsingPadIdiom & 1) == 0)
  {
    v7 = [MEMORY[0x277D75418] currentDevice];
    v8 = [v7 userInterfaceIdiom];

    v6 = 16.2;
    if (!v8)
    {
      v9 = [MEMORY[0x277D759A0] mainScreen];
      [v9 bounds];
      v11 = v10;
      v13 = v12;

      v14 = v11 < 414.0 || v13 < 736.0;
      if (!v14 || (v13 >= 414.0 ? (v15 = v11 < 736.0) : (v15 = 1), !v15))
      {
        v6 = 25.0;
      }
    }
  }

  [v3 setFontSize:a2 rebaseSelector:v6];

  return v3;
}

- (id)challengeTitleText
{
  v3 = [(GKTextStyle *)self copy];
  [v3 setFontName:@"GKMagicSystemFont" rebaseSelector:a2];
  v4 = [MEMORY[0x277D75418] currentDevice];
  v5 = [v4 userInterfaceIdiom];

  if (v5 != 1 || (v6 = 45.0, *MEMORY[0x277D0C258] == 1) && (_GKIsRemoteUIUsingPadIdiom & 1) == 0)
  {
    v7 = [MEMORY[0x277D75418] currentDevice];
    v8 = [v7 userInterfaceIdiom];

    v6 = 30.0;
    if (!v8)
    {
      v9 = [MEMORY[0x277D759A0] mainScreen];
      [v9 bounds];
      v11 = v10;
      v13 = v12;

      v14 = v11 < 414.0 || v13 < 736.0;
      if (!v14 || (v13 >= 414.0 ? (v15 = v11 < 736.0) : (v15 = 1), !v15))
      {
        v6 = 45.0;
      }
    }
  }

  [v3 setFontSize:a2 rebaseSelector:v6];

  return v3;
}

- (id)buttonTitle
{
  v3 = [(GKTextStyle *)self copy];
  v4 = [(GKTextStyle *)self palette];
  v5 = [v4 systemInteractionColor];
  [v3 setColor:v5];

  return v3;
}

- (id)tableCellTitle
{
  v4 = [(GKTextStyle *)self copy];
  v5 = [(GKTextStyle *)self palette];
  v6 = [v5 emphasizedTextColor];
  [v4 setColor:v6];

  v7 = [(GKTextStyle *)self fontName];
  [v4 setFontName:v7 kitTextStyleName:*MEMORY[0x277D76918] shouldOverrideSize:0 rebaseSelector:a2];

  [v4 setFontSize:a2 rebaseSelector:18.0];
  [v4 setTextAlignment:4];

  return v4;
}

- (id)tableCellSubtitle
{
  v4 = [(GKTextStyle *)self copy];
  v5 = [(GKTextStyle *)self palette];
  v6 = [v5 standardTextColor];
  [v4 setColor:v6];

  v7 = [(GKTextStyle *)self fontName];
  [v4 setFontName:v7 kitTextStyleName:*MEMORY[0x277D76940] shouldOverrideSize:0 rebaseSelector:a2];

  [v4 setFontSize:a2 rebaseSelector:12.0];
  [v4 setTextAlignment:4];

  return v4;
}

- (id)tableFooterStyle
{
  v4 = [(GKTextStyle *)self copy];
  v5 = [(GKTextStyle *)self palette];
  v6 = [v5 standardTextColor];
  [v4 setColor:v6];

  [v4 setFontSize:a2 rebaseSelector:18.0];
  [v4 setTextAlignment:4];

  return v4;
}

- (id)tabIconCaption
{
  v4 = [(GKTextStyle *)self copy];
  v5 = [(GKTextStyle *)self palette];
  v6 = [v5 emphasizedTextColor];
  [v4 setColor:v6];

  [v4 setFontName:@"GKMagicSystemFont" rebaseSelector:a2];
  [v4 setFontSize:a2 rebaseSelector:12.0];

  return v4;
}

- (id)removeButtonTitle
{
  v3 = [(GKTextStyle *)self copy];
  v4 = [(GKTextStyle *)self palette];
  v5 = [v4 removeItemTextColor];
  [v3 setColor:v5];

  [v3 setTextAlignment:2];

  return v3;
}

- (id)alignment:(int64_t)a3 lineBreakMode:(int64_t)a4
{
  v6 = [(GKTextStyle *)self copy];
  [v6 setTextAlignment:a3];
  [v6 setLineBreakMode:a4];

  return v6;
}

- (id)lineBreakMode:(int64_t)a3
{
  v4 = [(GKTextStyle *)self copy];
  [v4 setLineBreakMode:a3];

  return v4;
}

- (id)lineHeight:(double)a3
{
  v4 = [(GKTextStyle *)self copy];
  [v4 setMinimumLineHeight:a3];

  return v4;
}

- (id)remoteUISectionHeader:(int)a3
{
  v5 = [(GKTextStyle *)self copy];
  v6 = [(GKTextStyle *)self palette];
  v7 = [v6 emphasizedTextColor];
  [v5 setColor:v7];

  [v5 setFontName:@"GKMagicSystemFont" rebaseSelector:a2];
  [v5 setFontSize:a2 rebaseSelector:14.0];

  return v5;
}

- (id)remoteUISectionFooter:(int)a3
{
  v6 = [(GKTextStyle *)self copy];
  v7 = [(GKTextStyle *)self palette];
  v8 = [v7 emphasizedTextColor];
  [v6 setColor:v8];

  [v6 setTextAlignment:4];
  v9 = 20.0;
  v10 = 17.0;
  v11 = @"GKMagicLightSystemFont";
  if (a3 == 2)
  {
    v11 = @"GKMagicSystemFont";
    v10 = 21.0;
    v9 = 30.0;
  }

  if (a3)
  {
    v12 = v11;
  }

  else
  {
    v12 = @"GKMagicSystemFont";
  }

  if (a3)
  {
    v13 = v10;
  }

  else
  {
    v13 = 14.0;
  }

  if (a3)
  {
    v14 = v9;
  }

  else
  {
    v14 = 21.0;
  }

  [v6 setFontName:v12 rebaseSelector:{a2, 21.0, 14.0, v9, v10, 30.0}];
  [v6 setFontSize:a2 rebaseSelector:v13];
  [v6 setMinimumLineHeight:v14];

  return v6;
}

- (id)remoteUILabel:(int)a3
{
  v6 = [(GKTextStyle *)self copy];
  v7 = [(GKTextStyle *)self palette];
  v8 = [v7 emphasizedTextColor];
  [v6 setColor:v8];

  [v6 setFontName:@"GKMagicBoldSystemFont" rebaseSelector:a2];
  v9 = 18.0;
  if (a3 == 2)
  {
    v9 = 23.0;
  }

  [v6 setFontSize:a2 rebaseSelector:v9];

  return v6;
}

- (id)remoteUIDetailLabel:(int)a3
{
  v5 = [(GKTextStyle *)self copy];
  v6 = [(GKTextStyle *)self palette];
  v7 = [v6 standardTextColor];
  [v5 setColor:v7];

  [v5 setFontName:@"GKMagicSystemFont" rebaseSelector:a2];
  [v5 setFontSize:a2 rebaseSelector:12.0];

  return v5;
}

- (id)remoteUITableHeaderLabel:(int)a3
{
  v6 = [(GKTextStyle *)self copy];
  v7 = [(GKTextStyle *)self palette];
  v8 = [v7 emphasizedTextColor];
  [v6 setColor:v8];

  [v6 setFontName:@"GKMagicLightSystemFont" rebaseSelector:a2];
  if (a3 == 2)
  {
    [v6 setFontSize:a2 rebaseSelector:60.0];
    [v6 setMinimumLineHeight:71.0];
  }

  else
  {
    if (a3)
    {
      v9 = 35.0;
    }

    else
    {
      v9 = 31.0;
    }

    [v6 setFontSize:a2 rebaseSelector:v9];
  }

  [v6 setTextAlignment:1];
  [v6 setLineBreakMode:0];

  return v6;
}

- (id)remoteUITableHeaderSubLabel:(int)a3
{
  v6 = [(GKTextStyle *)self copy];
  v7 = [(GKTextStyle *)self palette];
  v8 = [v7 emphasizedTextColor];
  [v6 setColor:v8];

  [v6 setTextAlignment:1];
  [v6 setLineBreakMode:0];
  v9 = @"GKMagicLightSystemFont";
  v10 = 17.0;
  v11 = 16.0;
  if (a3 == 2)
  {
    v9 = @"GKMagicSystemFont";
    v10 = 21.0;
  }

  else
  {
    v11 = 11.0;
  }

  if (a3)
  {
    v12 = v9;
  }

  else
  {
    v12 = @"GKMagicSystemFont";
  }

  if (a3)
  {
    v13 = v10;
  }

  else
  {
    v13 = 14.0;
  }

  if (a3)
  {
    v14 = v11;
  }

  else
  {
    v14 = 11.0;
  }

  [v6 setFontName:v12 rebaseSelector:{a2, 11.0, 14.0, v10, v11, 21.0}];
  [v6 setFontSize:a2 rebaseSelector:v13];
  [v6 setMinimumLineHeight:v14];

  return v6;
}

- (id)remoteUITableFooterButton:(int)a3
{
  v6 = [(GKTextStyle *)self copy];
  v7 = [(GKTextStyle *)self palette];
  v8 = [v7 systemInteractionColor];
  [v6 setColor:v8];

  [v6 setTextAlignment:1];
  [v6 setFontName:@"GKMagicSystemFont" rebaseSelector:a2];
  v9 = 23.0;
  if (a3 == 2)
  {
    v9 = 30.0;
  }

  [v6 setFontSize:a2 rebaseSelector:v9];

  return v6;
}

- (id)remoteUITableHeaderButton:(int)a3
{
  v5 = [(GKTextStyle *)self copy];
  v6 = [(GKTextStyle *)self palette];
  v7 = [v6 systemInteractionColor];
  [v5 setColor:v7];

  [v5 setTextAlignment:1];
  [v5 setFontName:@"GKMagicSystemFont" rebaseSelector:a2];
  [v5 setFontSize:a2 rebaseSelector:14.0];

  return v5;
}

- (id)remoteUIEditField:(int)a3
{
  v5 = [(GKTextStyle *)self copy];
  v6 = [(GKTextStyle *)self palette];
  v7 = [v6 emphasizedTextColor];
  [v5 setColor:v7];

  [v5 setFontName:@"GKMagicSystemFont" rebaseSelector:a2];
  [v5 setFontSize:a2 rebaseSelector:14.0];
  [v5 setTextAlignment:4];

  return v5;
}

- (id)remoteUIEditLabel:(int)a3
{
  v5 = [(GKTextStyle *)self copy];
  v6 = [(GKTextStyle *)self palette];
  v7 = [v6 emphasizedTextColor];
  [v5 setColor:v7];

  [v5 setFontName:@"GKMagicBoldSystemFont" rebaseSelector:a2];
  [v5 setFontSize:a2 rebaseSelector:13.0];
  [v5 setTextAlignment:4];

  return v5;
}

- (id)remoteUISelectLabel:(int)a3
{
  v5 = [(GKTextStyle *)self copy];
  v6 = [(GKTextStyle *)self palette];
  v7 = [v6 emphasizedTextColor];
  [v5 setColor:v7];

  [v5 setFontName:@"GKMagicBoldSystemFont" rebaseSelector:a2];
  [v5 setFontSize:a2 rebaseSelector:13.0];
  [v5 setTextAlignment:4];

  return v5;
}

- (id)remoteUISelectField:(int)a3
{
  v5 = [(GKTextStyle *)self copy];
  v6 = [(GKTextStyle *)self palette];
  v7 = [v6 standardTextColor];
  [v5 setColor:v7];

  [v5 setFontName:@"GKMagicSystemFont" rebaseSelector:a2];
  [v5 setFontSize:a2 rebaseSelector:14.0];
  [v5 setTextAlignment:4];

  return v5;
}

- (id)remoteUINickNameField:(int)a3
{
  v6 = [(GKTextStyle *)self copy];
  v7 = [(GKTextStyle *)self palette];
  v8 = [v7 emphasizedTextColor];
  [v6 setColor:v8];

  [v6 setFontName:@"GKMagicSystemFont" rebaseSelector:a2];
  v9 = 14.0;
  if (a3 == 2)
  {
    v9 = 22.0;
  }

  [v6 setFontSize:a2 rebaseSelector:v9];
  [v6 setTextAlignment:4];

  return v6;
}

- (id)remoteUINickNameLabel:(int)a3
{
  v6 = [(GKTextStyle *)self copy];
  v7 = [(GKTextStyle *)self palette];
  v8 = [v7 emphasizedTextColor];
  [v6 setColor:v8];

  [v6 setFontName:@"GKMagicBoldSystemFont" rebaseSelector:a2];
  v9 = 14.0;
  if (a3 == 2)
  {
    v9 = 18.0;
  }

  if (!a3)
  {
    v9 = 13.0;
  }

  [v6 setFontSize:a2 rebaseSelector:v9];
  [v6 setTextAlignment:4];

  return v6;
}

- (id)settingsLinkText
{
  v3 = [(GKTextStyle *)self copy];
  v4 = [MEMORY[0x277D75348] systemBlueColor];
  [v3 setColor:v4];

  [v3 setTextAlignment:4];
  [v3 setFontSize:a2 rebaseSelector:14.0];

  return v3;
}

- (id)settingsButton
{
  v3 = [(GKTextStyle *)self copy];
  v4 = [MEMORY[0x277D75348] systemBlueColor];
  [v3 setColor:v4];

  [v3 setTextAlignment:4];
  [v3 setFontName:@"GKMagicSystemFont" rebaseSelector:a2];
  [v3 setFontSize:a2 rebaseSelector:17.0];

  return v3;
}

- (id)settingsBoldButton
{
  v3 = [(GKTextStyle *)self copy];
  v4 = [MEMORY[0x277D75348] systemBlueColor];
  [v3 setColor:v4];

  [v3 setTextAlignment:4];
  [v3 setFontName:@"GKMagicBoldSystemFont" rebaseSelector:a2];
  [v3 setFontSize:a2 rebaseSelector:17.0];

  return v3;
}

- (id)settingsLabel
{
  v4 = [(GKTextStyle *)self copy];
  v5 = [(GKTextStyle *)self palette];
  v6 = [v5 emphasizedTextColor];
  [v4 setColor:v6];

  [v4 setFontName:@"GKMagicSystemFont" rebaseSelector:a2];
  [v4 setFontSize:a2 rebaseSelector:17.0];

  return v4;
}

- (id)settingsHeader
{
  v3 = [(GKTextStyle *)self copy];
  v4 = [MEMORY[0x277D75348] secondaryLabelColor];
  [v3 setColor:v4];

  [v3 setFontName:@"GKMagicSystemFont" rebaseSelector:a2];
  [v3 setFontSize:a2 rebaseSelector:14.0];

  return v3;
}

- (id)settingsFooter
{
  v3 = [(GKTextStyle *)self copy];
  v4 = [MEMORY[0x277D75348] tertiaryLabelColor];
  [v3 setColor:v4];

  [v3 setFontName:@"GKMagicSystemFont" rebaseSelector:a2];
  [v3 setFontSize:a2 rebaseSelector:14.0];

  return v3;
}

- (GKTextStyle)styleWithName:(id)a3 fallback:(id)a4 layoutMode:(int)a5
{
  v8 = a4;
  v9 = a3;
  v10 = NSSelectorFromString(v9);
  v11 = [(NSString *)v9 stringByAppendingString:@":"];

  v12 = NSSelectorFromString(v11);
  if (objc_opt_respondsToSelector())
  {
    goto LABEL_2;
  }

  if (objc_opt_respondsToSelector())
  {
    goto LABEL_4;
  }

  if (v8)
  {
    v10 = NSSelectorFromString(v8);
    v16 = [(NSString *)v8 stringByAppendingString:@":"];
    v12 = NSSelectorFromString(v16);

    if (objc_opt_respondsToSelector())
    {
LABEL_2:
      v13 = [(GKTextStyle *)self _gkInvokeSelector:v10];
LABEL_5:
      v14 = v13;
      goto LABEL_6;
    }

    if (objc_opt_respondsToSelector())
    {
LABEL_4:
      v13 = [self v12];
      goto LABEL_5;
    }
  }

  v14 = 0;
LABEL_6:

  return v14;
}

- (SEL)fontSizeRebaseSelector
{
  if (self->_fontSizeRebaseSelector)
  {
    return self->_fontSizeRebaseSelector;
  }

  else
  {
    return 0;
  }
}

- (void)setFontSizeRebaseSelector:(SEL)a3
{
  if (a3)
  {
    v3 = a3;
  }

  else
  {
    v3 = 0;
  }

  self->_fontSizeRebaseSelector = v3;
}

- (SEL)fontNameRebaseSelector
{
  if (self->_fontNameRebaseSelector)
  {
    return self->_fontNameRebaseSelector;
  }

  else
  {
    return 0;
  }
}

- (void)setFontNameRebaseSelector:(SEL)a3
{
  if (a3)
  {
    v3 = a3;
  }

  else
  {
    v3 = 0;
  }

  self->_fontNameRebaseSelector = v3;
}

@end