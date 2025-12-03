@interface GKTextStyle
+ (double)scaledValueFromHISpecLeading:(double)leading forFontTextStyle:(id)style;
+ (double)standardFontSize;
+ (double)standardLeadingForFontTextStyle:(id)style;
+ (id)attributedString:(id)string byReplayingFromBaseStyle:(id)style systemContentSizeDidChange:(BOOL)change;
+ (id)textStyle;
- (BOOL)isEqual:(id)equal;
- (GKTextStyle)init;
- (GKTextStyle)styleWithName:(id)name fallback:(id)fallback layoutMode:(int)mode;
- (SEL)fontNameRebaseSelector;
- (SEL)fontSizeRebaseSelector;
- (id)achievementLeaderboardPointsText;
- (id)achievementLeaderboardRank;
- (id)achievementValueText;
- (id)alignment:(int64_t)alignment lineBreakMode:(int64_t)mode;
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
- (id)copyWithBaseClass:(Class)class;
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
- (id)lineBreakMode:(int64_t)mode;
- (id)lineHeight:(double)height;
- (id)localPlayerColor;
- (id)medium;
- (id)multiplayerAddText;
- (id)multiplayerFooterText;
- (id)multiplayerHeaderText;
- (id)multiplayerNameText;
- (id)multiplayerStatusText;
- (id)regular;
- (id)remoteUIDetailLabel:(int)label;
- (id)remoteUIEditField:(int)field;
- (id)remoteUIEditLabel:(int)label;
- (id)remoteUILabel:(int)label;
- (id)remoteUINickNameField:(int)field;
- (id)remoteUINickNameLabel:(int)label;
- (id)remoteUISectionFooter:(int)footer;
- (id)remoteUISectionHeader:(int)header;
- (id)remoteUISelectField:(int)field;
- (id)remoteUISelectLabel:(int)label;
- (id)remoteUITableFooterButton:(int)button;
- (id)remoteUITableHeaderButton:(int)button;
- (id)remoteUITableHeaderLabel:(int)label;
- (id)remoteUITableHeaderSubLabel:(int)label;
- (id)removeButtonTitle;
- (id)replayOnBaseStyle:(id)style systemContentSizeDidChange:(BOOL)change;
- (id)resolveFontAndLineSpacing:(double *)spacing;
- (id)roundButtonTitle;
- (id)scaled:(double)scaled;
- (id)scaledForM34:(double)m34 zPosition:(double)position;
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
- (void)applyToEditField:(id)field;
- (void)applyToLabel:(id)label;
- (void)setFontName:(id)name kitTextStyleName:(id)styleName leadingOverrideFromHISpec:(double)spec shouldOverrideSize:(BOOL)size rebaseSelector:(SEL)selector;
- (void)setFontNameRebaseSelector:(SEL)selector;
- (void)setFontSize:(double)size rebaseSelector:(SEL)selector;
- (void)setFontSizeRebaseSelector:(SEL)selector;
- (void)setLineBreakMode:(int64_t)mode;
- (void)setMinimumLineHeight:(double)height;
- (void)setTextAlignment:(int64_t)alignment;
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

+ (id)attributedString:(id)string byReplayingFromBaseStyle:(id)style systemContentSizeDidChange:(BOOL)change
{
  styleCopy = style;
  v8 = MEMORY[0x277CCAB48];
  stringCopy = string;
  v10 = [[v8 alloc] initWithAttributedString:stringCopy];
  v11 = [stringCopy length];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __84__GKTextStyle_attributedString_byReplayingFromBaseStyle_systemContentSizeDidChange___block_invoke;
  v17[3] = &unk_27967F418;
  v18 = styleCopy;
  changeCopy = change;
  v12 = v10;
  v19 = v12;
  v13 = styleCopy;
  [stringCopy enumerateAttributesInRange:0 options:v11 usingBlock:{0, v17}];

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
  v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ needs to implement me!", self];
  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter/Frameworks/GameCenterUI/iOS/Framework/GKTextStyle.m"];
  lastPathComponent = [v4 lastPathComponent];
  v6 = [v2 stringWithFormat:@"%@ (NO)\n[%s (%s:%d)]", v3, "+[GKTextStyle standardFontSize]", objc_msgSend(lastPathComponent, "UTF8String"), 165];

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
    standardTextColor = [(GKColorPalette *)v3 standardTextColor];
    color = v2->_color;
    v2->_color = standardTextColor;

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

- (id)replayOnBaseStyle:(id)style systemContentSizeDidChange:(BOOL)change
{
  changeCopy = change;
  styleCopy = style;
  selfCopy = self;
  if ([styleCopy isMemberOfClass:objc_opt_class()] && !changeCopy)
  {
    goto LABEL_12;
  }

  fontSizeRebaseSelector = [(GKTextStyle *)selfCopy fontSizeRebaseSelector];
  fontNameRebaseSelector = [(GKTextStyle *)selfCopy fontNameRebaseSelector];
  if (!(fontSizeRebaseSelector | fontNameRebaseSelector))
  {
    goto LABEL_12;
  }

  v10 = fontNameRebaseSelector;
  v11 = [(GKTextStyle *)selfCopy copyWithBaseClass:objc_opt_class()];
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
  if (fontSizeRebaseSelector == v10)
  {
    v17 = [v14 _gkInvokeSelector:{fontSizeRebaseSelector, v20, v21, v22, v23}];
    (v15)[2](v15, v17);
  }

  else
  {
    if (v10)
    {
      v16 = [v14 _gkInvokeSelector:{v10, v20, v21, v22, v23}];
      (v15)[2](v15, v16);
    }

    if (!fontSizeRebaseSelector)
    {
      goto LABEL_11;
    }

    v17 = [v14 _gkInvokeSelector:fontSizeRebaseSelector];
  }

  (v13)[2](v13, v17);

LABEL_11:
  [v14 applyScaleForMesh];
  v18 = v14;

  selfCopy = v18;
LABEL_12:

  return selfCopy;
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

- (id)copyWithBaseClass:(Class)class
{
  initEmpty = [[class alloc] initEmpty];
  if (initEmpty)
  {
    v5 = [(NSString *)self->_fontName copy];
    v6 = *(initEmpty + 56);
    *(initEmpty + 56) = v5;

    v7 = [(NSString *)self->_UIKitFontTextStyleName copy];
    v8 = *(initEmpty + 64);
    *(initEmpty + 64) = v7;

    fontSizeRebaseSelector = self->_fontSizeRebaseSelector;
    *(initEmpty + 8) = self->_UIKitFontLeading;
    *(initEmpty + 17) = self->_overrideUIKitFontSize;
    *(initEmpty + 72) = self->_fontSize;
    *(initEmpty + 104) = fontSizeRebaseSelector;
    objc_storeStrong((initEmpty + 24), self->_color);
    objc_storeStrong((initEmpty + 48), self->_palette);
    *(initEmpty + 88) = self->_m34;
    *(initEmpty + 96) = self->_zPosition;
    *(initEmpty + 32) = self->_textAlignment;
    *(initEmpty + 40) = self->_lineBreakMode;
    *(initEmpty + 16) = self->_needsParagraphStyle;
    *(initEmpty + 80) = self->_minimumLineHeight;
  }

  return initEmpty;
}

- (id)description
{
  string = [MEMORY[0x277CCAB68] string];
  [string appendFormat:@"<%@ %p", objc_opt_class(), self];
  fontSizeRebaseSelector = self->_fontSizeRebaseSelector;
  fontSize = self->_fontSize;
  if (fontSizeRebaseSelector)
  {
    v6 = NSStringFromSelector(fontSizeRebaseSelector);
    [string appendFormat:@"> %.1fpt sel:%@ font:%@", *&fontSize, v6, self->_fontName];
  }

  else
  {
    [string appendFormat:@"> %.1fpt sel:%@ font:%@", *&fontSize, @"<n/a>", self->_fontName];
  }

  zPosition = self->_zPosition;
  if (zPosition != 0.0)
  {
    [string appendFormat:@" z:%.2f m34:%g 1/m34:%.0f", *&zPosition, *&self->_m34, 1.0 / self->_m34];
  }

  return string;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v11 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = equalCopy;
      fontName = [(GKTextStyle *)v6 fontName];
      if (![fontName isEqual:self->_fontName])
      {
        v11 = 0;
LABEL_18:

        goto LABEL_19;
      }

      color = [(GKTextStyle *)v6 color];
      color = self->_color;
      if (color == color || (-[GKTextStyle color](v6, "color"), v3 = objc_claimAutoreleasedReturnValue(), [v3 isEqual:self->_color]))
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

        if (color == color)
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

+ (double)standardLeadingForFontTextStyle:(id)style
{
  v3 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76918]];
  [v3 leading];
  v5 = GKRoundToScreenScale(v4);

  return v5;
}

+ (double)scaledValueFromHISpecLeading:(double)leading forFontTextStyle:(id)style
{
  v5 = [MEMORY[0x277D74300] preferredFontForTextStyle:style];
  [v5 _scaledValueForValue:leading];
  v7 = GKRoundToScreenScale(v6);

  return v7;
}

- (id)resolveFontAndLineSpacing:(double *)spacing
{
  v5 = self->_fontName;
  if (spacing)
  {
    *spacing = 0.0;
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

    if (spacing && self->_UIKitFontLeading != 0.0)
    {
      [v8 _scaledValueForValue:?];
      *spacing = GKRoundToScreenScale(v10);
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

- (void)setTextAlignment:(int64_t)alignment
{
  if (self->_textAlignment != alignment)
  {
    self->_textAlignment = alignment;
    self->_needsParagraphStyle = 1;
  }
}

- (void)setLineBreakMode:(int64_t)mode
{
  if (self->_lineBreakMode != mode)
  {
    self->_lineBreakMode = mode;
    self->_needsParagraphStyle = 1;
  }
}

- (void)setMinimumLineHeight:(double)height
{
  if (self->_minimumLineHeight != height)
  {
    self->_minimumLineHeight = height;
    self->_needsParagraphStyle = 1;
  }
}

- (void)setFontSize:(double)size rebaseSelector:(SEL)selector
{
  self->_fontSize = size;
  if (selector)
  {
    selectorCopy = selector;
  }

  else
  {
    selectorCopy = 0;
  }

  self->_fontSizeRebaseSelector = selectorCopy;
}

- (void)setFontName:(id)name kitTextStyleName:(id)styleName leadingOverrideFromHISpec:(double)spec shouldOverrideSize:(BOOL)size rebaseSelector:(SEL)selector
{
  nameCopy = name;
  styleNameCopy = styleName;
  if (self->_fontName != nameCopy)
  {
    objc_storeStrong(&self->_fontName, name);
  }

  if (self->_UIKitFontTextStyleName != styleNameCopy)
  {
    objc_storeStrong(&self->_UIKitFontTextStyleName, styleName);
  }

  self->_UIKitFontLeading = spec;
  self->_overrideUIKitFontSize = size;
  if (selector)
  {
    selectorCopy = selector;
  }

  else
  {
    selectorCopy = 0;
  }

  self->_fontNameRebaseSelector = selectorCopy;
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
    lastPathComponent = [v6 lastPathComponent];
    v8 = [v4 stringWithFormat:@"%@ (font != nil)\n[%s (%s:%d)]", v5, "-[GKTextStyle attributes]", objc_msgSend(lastPathComponent, "UTF8String"), 489];

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

- (void)applyToLabel:(id)label
{
  v7 = 0.0;
  labelCopy = label;
  v5 = [(GKTextStyle *)self resolveFontAndLineSpacing:&v7];
  [labelCopy setFont:v5];
  color = [(GKTextStyle *)self color];
  [labelCopy setTextColor:color];

  [labelCopy setLineBreakMode:{-[GKTextStyle lineBreakMode](self, "lineBreakMode")}];
  [labelCopy setTextAlignment:{-[GKTextStyle textAlignment](self, "textAlignment")}];
  [labelCopy setLineSpacing:v7];
}

- (void)applyToEditField:(id)field
{
  fieldCopy = field;
  v4 = [(GKTextStyle *)self resolveFontAndLineSpacing:0];
  [fieldCopy setFont:v4];

  color = [(GKTextStyle *)self color];
  [fieldCopy setTextColor:color];

  [fieldCopy setTextAlignment:{-[GKTextStyle textAlignment](self, "textAlignment")}];
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
  palette = [(GKTextStyle *)self palette];
  emphasizedTextColor = [palette emphasizedTextColor];
  [v4 setColor:emphasizedTextColor];

  [v4 setFontName:@"GKMagicBoldSystemFont" rebaseSelector:a2];
  [v4 setFontSize:a2 rebaseSelector:32.0];

  return v4;
}

- (id)header1
{
  v2 = MEMORY[0x277CCACA8];
  v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ needs to implement me!", self];
  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter/Frameworks/GameCenterUI/iOS/Framework/GKTextStyle.m"];
  lastPathComponent = [v4 lastPathComponent];
  v6 = [v2 stringWithFormat:@"%@ (NO)\n[%s (%s:%d)]", v3, "-[GKTextStyle header1]", objc_msgSend(lastPathComponent, "UTF8String"), 572];

  [MEMORY[0x277CBEAD8] raise:@"GameKit Exception" format:{@"%@", v6}];
  return 0;
}

- (id)header2
{
  v2 = MEMORY[0x277CCACA8];
  v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ needs to implement me!", self];
  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter/Frameworks/GameCenterUI/iOS/Framework/GKTextStyle.m"];
  lastPathComponent = [v4 lastPathComponent];
  v6 = [v2 stringWithFormat:@"%@ (NO)\n[%s (%s:%d)]", v3, "-[GKTextStyle header2]", objc_msgSend(lastPathComponent, "UTF8String"), 578];

  [MEMORY[0x277CBEAD8] raise:@"GameKit Exception" format:{@"%@", v6}];
  return 0;
}

- (id)header3
{
  v4 = [(GKTextStyle *)self copy];
  palette = [(GKTextStyle *)self palette];
  emphasizedTextColor = [palette emphasizedTextColor];
  [v4 setColor:emphasizedTextColor];

  [v4 setFontName:@"GKMagicSystemFont" rebaseSelector:a2];
  [v4 setFontSize:a2 rebaseSelector:18.0];

  return v4;
}

- (id)header4
{
  v4 = [(GKTextStyle *)self copy];
  palette = [(GKTextStyle *)self palette];
  emphasizedTextColor = [palette emphasizedTextColor];
  [v4 setColor:emphasizedTextColor];

  [v4 setFontName:@"GKMagicSystemFont" rebaseSelector:a2];
  [v4 setFontSize:a2 rebaseSelector:14.0];

  return v4;
}

- (id)headline
{
  v4 = [(GKTextStyle *)self copy];
  palette = [(GKTextStyle *)self palette];
  emphasizedTextColor = [palette emphasizedTextColor];
  [v4 setColor:emphasizedTextColor];

  [v4 setTextAlignment:4];
  [v4 setFontName:@"GKMagicBoldSystemFont" kitTextStyleName:*MEMORY[0x277D76988] shouldOverrideSize:0 rebaseSelector:a2];
  [v4 setFontSize:a2 rebaseSelector:18.0];

  return v4;
}

- (id)body
{
  v4 = [(GKTextStyle *)self copy];
  palette = [(GKTextStyle *)self palette];
  emphasizedTextColor = [palette emphasizedTextColor];
  [v4 setColor:emphasizedTextColor];

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
  palette = [(GKTextStyle *)self palette];
  standardTextColor = [palette standardTextColor];
  [v4 setColor:standardTextColor];

  [v4 setTextAlignment:4];
  [v4 setFontName:@"GKMagicSystemFont" kitTextStyleName:*MEMORY[0x277D76938] shouldOverrideSize:0 rebaseSelector:a2];
  [v4 setFontSize:a2 rebaseSelector:13.0];

  return v4;
}

- (id)caption2
{
  v4 = [(GKTextStyle *)self copy];
  palette = [(GKTextStyle *)self palette];
  standardTextColor = [palette standardTextColor];
  [v4 setColor:standardTextColor];

  [v4 setTextAlignment:4];
  [v4 setFontName:@"GKMagicSystemFont" kitTextStyleName:*MEMORY[0x277D76940] shouldOverrideSize:0 rebaseSelector:a2];
  [v4 setFontSize:a2 rebaseSelector:11.0];

  return v4;
}

- (id)bannerTitle
{
  v4 = [(GKTextStyle *)self copy];
  palette = [(GKTextStyle *)self palette];
  emphasizedTextOnDarkBackgroundColor = [palette emphasizedTextOnDarkBackgroundColor];
  [v4 setColor:emphasizedTextOnDarkBackgroundColor];

  [v4 setTextAlignment:4];
  [v4 setLineBreakMode:4];
  [v4 setFontName:@"GKMagicBoldSystemFont" rebaseSelector:a2];
  [v4 setFontSize:a2 rebaseSelector:17.0];

  return v4;
}

- (id)bannerShortTitle
{
  v4 = [(GKTextStyle *)self copy];
  palette = [(GKTextStyle *)self palette];
  emphasizedTextOnDarkBackgroundColor = [palette emphasizedTextOnDarkBackgroundColor];
  [v4 setColor:emphasizedTextOnDarkBackgroundColor];

  [v4 setTextAlignment:4];
  [v4 setLineBreakMode:4];
  [v4 setFontName:@"GKMagicBoldSystemFont" rebaseSelector:a2];
  [v4 setFontSize:a2 rebaseSelector:15.0];

  return v4;
}

- (id)bannerMessage
{
  header4 = [(GKTextStyle *)self header4];
  palette = [(GKTextStyle *)self palette];
  emphasizedTextOnDarkBackgroundColor = [palette emphasizedTextOnDarkBackgroundColor];
  [header4 setColor:emphasizedTextOnDarkBackgroundColor];

  [header4 setTextAlignment:4];
  [header4 setLineBreakMode:4];

  return header4;
}

- (id)caption
{
  v4 = [(GKTextStyle *)self copy];
  [v4 setTextAlignment:4];
  palette = [(GKTextStyle *)self palette];
  friendRequestCaptionTintColor = [palette friendRequestCaptionTintColor];
  [v4 setColor:friendRequestCaptionTintColor];

  [v4 setFontSize:a2 rebaseSelector:12.0];

  return v4;
}

- (id)roundButtonTitle
{
  v4 = [(GKTextStyle *)self copy];
  [v4 setTextAlignment:1];
  [v4 setLineBreakMode:0];
  palette = [(GKTextStyle *)self palette];
  systemInteractionColor = [palette systemInteractionColor];
  [v4 setColor:systemInteractionColor];

  [v4 setFontName:@"GKMagicSystemFont" rebaseSelector:a2];
  [v4 setFontSize:a2 rebaseSelector:11.0];

  return v4;
}

- (id)buyButtonTitle
{
  v4 = [(GKTextStyle *)self copy];
  [v4 setTextAlignment:1];
  [v4 setLineBreakMode:0];
  palette = [(GKTextStyle *)self palette];
  systemInteractionColor = [palette systemInteractionColor];
  [v4 setColor:systemInteractionColor];

  [v4 setFontName:@"GKMagicSystemFont" kitTextStyleName:*MEMORY[0x277D769D0] leadingOverrideFromHISpec:0 shouldOverrideSize:a2 rebaseSelector:0.0];
  [v4 setFontSize:a2 rebaseSelector:14.0];

  return v4;
}

- (id)selectedBuyButtonTitle
{
  v4 = [(GKTextStyle *)self copy];
  [v4 setTextAlignment:1];
  [v4 setLineBreakMode:0];
  palette = [(GKTextStyle *)self palette];
  textOnDarkBackgroundColor = [palette textOnDarkBackgroundColor];
  [v4 setColor:textOnDarkBackgroundColor];

  [v4 setFontName:@"GKMagicSystemFont" kitTextStyleName:*MEMORY[0x277D769D0] leadingOverrideFromHISpec:0 shouldOverrideSize:a2 rebaseSelector:0.0];
  [v4 setFontSize:a2 rebaseSelector:14.0];

  return v4;
}

- (id)small
{
  v4 = [(GKTextStyle *)self copy];
  palette = [(GKTextStyle *)self palette];
  emphasizedTextColor = [palette emphasizedTextColor];
  [v4 setColor:emphasizedTextColor];

  [v4 setFontSize:a2 rebaseSelector:9.0];

  return v4;
}

- (id)info
{
  v3 = [(GKTextStyle *)self copy];
  palette = [(GKTextStyle *)self palette];
  standardTextColor = [palette standardTextColor];
  [v3 setColor:standardTextColor];

  return v3;
}

- (id)smallInfo
{
  v2 = MEMORY[0x277CCACA8];
  v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ needs to implement me!", self];
  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter/Frameworks/GameCenterUI/iOS/Framework/GKTextStyle.m"];
  lastPathComponent = [v4 lastPathComponent];
  v6 = [v2 stringWithFormat:@"%@ (NO)\n[%s (%s:%d)]", v3, "-[GKTextStyle smallInfo]", objc_msgSend(lastPathComponent, "UTF8String"), 807];

  [MEMORY[0x277CBEAD8] raise:@"GameKit Exception" format:{@"%@", v6}];
  return 0;
}

- (id)viewBackground
{
  v3 = [(GKTextStyle *)self copy];
  palette = [(GKTextStyle *)self palette];
  viewBackgroundColor = [palette viewBackgroundColor];
  [v3 setColor:viewBackgroundColor];

  return v3;
}

- (id)emphasized
{
  v3 = [(GKTextStyle *)self copy];
  palette = [(GKTextStyle *)self palette];
  emphasizedTextColor = [palette emphasizedTextColor];
  [v3 setColor:emphasizedTextColor];

  return v3;
}

- (id)emphasizedOnDarkBackground
{
  v3 = [(GKTextStyle *)self copy];
  palette = [(GKTextStyle *)self palette];
  emphasizedTextOnDarkBackgroundColor = [palette emphasizedTextOnDarkBackgroundColor];
  [v3 setColor:emphasizedTextOnDarkBackgroundColor];

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

- (id)scaledForM34:(double)m34 zPosition:(double)position
{
  v6 = [(GKTextStyle *)self copy];
  [v6 setM34:m34];
  [v6 setZPosition:position];
  [v6 applyScaleForMesh];

  return v6;
}

- (id)scaled:(double)scaled
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

  [v5 setFontSize:fontSizeRebaseSelector rebaseSelector:self->_fontSize * scaled];

  return v6;
}

- (id)localPlayerColor
{
  v3 = [(GKTextStyle *)self copy];
  palette = [(GKTextStyle *)self palette];
  localPlayerTintColor = [palette localPlayerTintColor];
  [v3 setColor:localPlayerTintColor];

  return v3;
}

- (id)friendColor
{
  v3 = [(GKTextStyle *)self copy];
  palette = [(GKTextStyle *)self palette];
  friendTintColor = [palette friendTintColor];
  [v3 setColor:friendTintColor];

  return v3;
}

- (id)friendCaptionColor
{
  v3 = [(GKTextStyle *)self copy];
  palette = [(GKTextStyle *)self palette];
  friendRequestCaptionTintColor = [palette friendRequestCaptionTintColor];
  [v3 setColor:friendRequestCaptionTintColor];

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
  palette = [(GKTextStyle *)self palette];
  emphasizedTextColor = [palette emphasizedTextColor];
  [v4 setColor:emphasizedTextColor];

  return v4;
}

- (id)multiplayerAddText
{
  v4 = [(GKTextStyle *)self copy];
  [v4 setFontName:@"GKMagicSystemFont" kitTextStyleName:*MEMORY[0x277D769D0] shouldOverrideSize:0 rebaseSelector:a2];
  [v4 setFontSize:a2 rebaseSelector:15.0];
  [v4 setTextAlignment:1];
  palette = [(GKTextStyle *)self palette];
  systemInteractionColor = [palette systemInteractionColor];
  [v4 setColor:systemInteractionColor];

  return v4;
}

- (id)multiplayerStatusText
{
  v4 = [(GKTextStyle *)self copy];
  [v4 setFontName:@"GKMagicSystemFont" kitTextStyleName:*MEMORY[0x277D76968] shouldOverrideSize:1 rebaseSelector:a2];
  [v4 setFontSize:a2 rebaseSelector:11.0];
  [v4 setTextAlignment:1];
  palette = [(GKTextStyle *)self palette];
  standardTextColor = [palette standardTextColor];
  [v4 setColor:standardTextColor];

  return v4;
}

- (id)multiplayerHeaderText
{
  v4 = [(GKTextStyle *)self copy];
  [v4 setFontName:@"GKMagicSystemFont" kitTextStyleName:*MEMORY[0x277D76968] shouldOverrideSize:0 rebaseSelector:a2];
  [v4 setFontSize:a2 rebaseSelector:17.0];
  [v4 setTextAlignment:1];
  palette = [(GKTextStyle *)self palette];
  standardTextColor = [palette standardTextColor];
  [v4 setColor:standardTextColor];

  return v4;
}

- (id)multiplayerFooterText
{
  v4 = [(GKTextStyle *)self copy];
  [v4 setFontName:@"GKMagicSystemFont" kitTextStyleName:*MEMORY[0x277D76968] shouldOverrideSize:0 rebaseSelector:a2];
  [v4 setFontSize:a2 rebaseSelector:17.0];
  palette = [(GKTextStyle *)self palette];
  standardTextColor = [palette standardTextColor];
  [v4 setColor:standardTextColor];

  return v4;
}

- (id)thinNumberText
{
  v2 = MEMORY[0x277CCACA8];
  v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ needs to implement me!", self];
  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter/Frameworks/GameCenterUI/iOS/Framework/GKTextStyle.m"];
  lastPathComponent = [v4 lastPathComponent];
  1058 = [v2 stringWithFormat:@"%@ (NO)\n[%s (%s:%d)]", v3, "-[GKTextStyle thinNumberText]", objc_msgSend(lastPathComponent, "UTF8String"), 1058];

  [MEMORY[0x277CBEAD8] raise:@"GameKit Exception" format:{@"%@", 1058}];
  return 0;
}

- (id)gameDetailNameText
{
  v2 = MEMORY[0x277CCACA8];
  v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ needs to implement me!", self];
  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter/Frameworks/GameCenterUI/iOS/Framework/GKTextStyle.m"];
  lastPathComponent = [v4 lastPathComponent];
  1064 = [v2 stringWithFormat:@"%@ (NO)\n[%s (%s:%d)]", v3, "-[GKTextStyle gameDetailNameText]", objc_msgSend(lastPathComponent, "UTF8String"), 1064];

  [MEMORY[0x277CBEAD8] raise:@"GameKit Exception" format:{@"%@", 1064}];
  return 0;
}

- (id)detailSecondaryHeaderText
{
  v2 = MEMORY[0x277CCACA8];
  v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ needs to implement me!", self];
  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter/Frameworks/GameCenterUI/iOS/Framework/GKTextStyle.m"];
  lastPathComponent = [v4 lastPathComponent];
  1070 = [v2 stringWithFormat:@"%@ (NO)\n[%s (%s:%d)]", v3, "-[GKTextStyle detailSecondaryHeaderText]", objc_msgSend(lastPathComponent, "UTF8String"), 1070];

  [MEMORY[0x277CBEAD8] raise:@"GameKit Exception" format:{@"%@", 1070}];
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
  palette = [(GKTextStyle *)self palette];
  emphasizedTextColor = [palette emphasizedTextColor];
  [v4 setColor:emphasizedTextColor];

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
  palette = [(GKTextStyle *)self palette];
  emphasizedTextColor = [palette emphasizedTextColor];
  [v4 setColor:emphasizedTextColor];

  return v4;
}

- (id)sectionHeader
{
  v4 = [(GKTextStyle *)self copy];
  palette = [(GKTextStyle *)self palette];
  emphasizedTextColor = [palette emphasizedTextColor];
  [v4 setColor:emphasizedTextColor];

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
  lastPathComponent = [v4 lastPathComponent];
  1163 = [v2 stringWithFormat:@"%@ (NO)\n[%s (%s:%d)]", v3, "-[GKTextStyle sectionCaptionSmall]", objc_msgSend(lastPathComponent, "UTF8String"), 1163];

  [MEMORY[0x277CBEAD8] raise:@"GameKit Exception" format:{@"%@", 1163}];
  return 0;
}

- (id)cellActionItem
{
  v2 = MEMORY[0x277CCACA8];
  v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ needs to implement me!", self];
  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter/Frameworks/GameCenterUI/iOS/Framework/GKTextStyle.m"];
  lastPathComponent = [v4 lastPathComponent];
  1169 = [v2 stringWithFormat:@"%@ (NO)\n[%s (%s:%d)]", v3, "-[GKTextStyle cellActionItem]", objc_msgSend(lastPathComponent, "UTF8String"), 1169];

  [MEMORY[0x277CBEAD8] raise:@"GameKit Exception" format:{@"%@", 1169}];
  return 0;
}

- (id)challengeText
{
  v3 = [(GKTextStyle *)self copy];
  [v3 setFontName:@"GKMagicSystemFont" kitTextStyleName:*MEMORY[0x277D76918] shouldOverrideSize:1 rebaseSelector:a2];
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  if (userInterfaceIdiom != 1 || (v6 = 25.0, *MEMORY[0x277D0C258] == 1) && (_GKIsRemoteUIUsingPadIdiom & 1) == 0)
  {
    currentDevice2 = [MEMORY[0x277D75418] currentDevice];
    userInterfaceIdiom2 = [currentDevice2 userInterfaceIdiom];

    v6 = 16.2;
    if (!userInterfaceIdiom2)
    {
      mainScreen = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen bounds];
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
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  if (userInterfaceIdiom != 1 || (v6 = 45.0, *MEMORY[0x277D0C258] == 1) && (_GKIsRemoteUIUsingPadIdiom & 1) == 0)
  {
    currentDevice2 = [MEMORY[0x277D75418] currentDevice];
    userInterfaceIdiom2 = [currentDevice2 userInterfaceIdiom];

    v6 = 30.0;
    if (!userInterfaceIdiom2)
    {
      mainScreen = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen bounds];
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
  palette = [(GKTextStyle *)self palette];
  systemInteractionColor = [palette systemInteractionColor];
  [v3 setColor:systemInteractionColor];

  return v3;
}

- (id)tableCellTitle
{
  v4 = [(GKTextStyle *)self copy];
  palette = [(GKTextStyle *)self palette];
  emphasizedTextColor = [palette emphasizedTextColor];
  [v4 setColor:emphasizedTextColor];

  fontName = [(GKTextStyle *)self fontName];
  [v4 setFontName:fontName kitTextStyleName:*MEMORY[0x277D76918] shouldOverrideSize:0 rebaseSelector:a2];

  [v4 setFontSize:a2 rebaseSelector:18.0];
  [v4 setTextAlignment:4];

  return v4;
}

- (id)tableCellSubtitle
{
  v4 = [(GKTextStyle *)self copy];
  palette = [(GKTextStyle *)self palette];
  standardTextColor = [palette standardTextColor];
  [v4 setColor:standardTextColor];

  fontName = [(GKTextStyle *)self fontName];
  [v4 setFontName:fontName kitTextStyleName:*MEMORY[0x277D76940] shouldOverrideSize:0 rebaseSelector:a2];

  [v4 setFontSize:a2 rebaseSelector:12.0];
  [v4 setTextAlignment:4];

  return v4;
}

- (id)tableFooterStyle
{
  v4 = [(GKTextStyle *)self copy];
  palette = [(GKTextStyle *)self palette];
  standardTextColor = [palette standardTextColor];
  [v4 setColor:standardTextColor];

  [v4 setFontSize:a2 rebaseSelector:18.0];
  [v4 setTextAlignment:4];

  return v4;
}

- (id)tabIconCaption
{
  v4 = [(GKTextStyle *)self copy];
  palette = [(GKTextStyle *)self palette];
  emphasizedTextColor = [palette emphasizedTextColor];
  [v4 setColor:emphasizedTextColor];

  [v4 setFontName:@"GKMagicSystemFont" rebaseSelector:a2];
  [v4 setFontSize:a2 rebaseSelector:12.0];

  return v4;
}

- (id)removeButtonTitle
{
  v3 = [(GKTextStyle *)self copy];
  palette = [(GKTextStyle *)self palette];
  removeItemTextColor = [palette removeItemTextColor];
  [v3 setColor:removeItemTextColor];

  [v3 setTextAlignment:2];

  return v3;
}

- (id)alignment:(int64_t)alignment lineBreakMode:(int64_t)mode
{
  v6 = [(GKTextStyle *)self copy];
  [v6 setTextAlignment:alignment];
  [v6 setLineBreakMode:mode];

  return v6;
}

- (id)lineBreakMode:(int64_t)mode
{
  v4 = [(GKTextStyle *)self copy];
  [v4 setLineBreakMode:mode];

  return v4;
}

- (id)lineHeight:(double)height
{
  v4 = [(GKTextStyle *)self copy];
  [v4 setMinimumLineHeight:height];

  return v4;
}

- (id)remoteUISectionHeader:(int)header
{
  v5 = [(GKTextStyle *)self copy];
  palette = [(GKTextStyle *)self palette];
  emphasizedTextColor = [palette emphasizedTextColor];
  [v5 setColor:emphasizedTextColor];

  [v5 setFontName:@"GKMagicSystemFont" rebaseSelector:a2];
  [v5 setFontSize:a2 rebaseSelector:14.0];

  return v5;
}

- (id)remoteUISectionFooter:(int)footer
{
  v6 = [(GKTextStyle *)self copy];
  palette = [(GKTextStyle *)self palette];
  emphasizedTextColor = [palette emphasizedTextColor];
  [v6 setColor:emphasizedTextColor];

  [v6 setTextAlignment:4];
  v9 = 20.0;
  v10 = 17.0;
  v11 = @"GKMagicLightSystemFont";
  if (footer == 2)
  {
    v11 = @"GKMagicSystemFont";
    v10 = 21.0;
    v9 = 30.0;
  }

  if (footer)
  {
    v12 = v11;
  }

  else
  {
    v12 = @"GKMagicSystemFont";
  }

  if (footer)
  {
    v13 = v10;
  }

  else
  {
    v13 = 14.0;
  }

  if (footer)
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

- (id)remoteUILabel:(int)label
{
  v6 = [(GKTextStyle *)self copy];
  palette = [(GKTextStyle *)self palette];
  emphasizedTextColor = [palette emphasizedTextColor];
  [v6 setColor:emphasizedTextColor];

  [v6 setFontName:@"GKMagicBoldSystemFont" rebaseSelector:a2];
  v9 = 18.0;
  if (label == 2)
  {
    v9 = 23.0;
  }

  [v6 setFontSize:a2 rebaseSelector:v9];

  return v6;
}

- (id)remoteUIDetailLabel:(int)label
{
  v5 = [(GKTextStyle *)self copy];
  palette = [(GKTextStyle *)self palette];
  standardTextColor = [palette standardTextColor];
  [v5 setColor:standardTextColor];

  [v5 setFontName:@"GKMagicSystemFont" rebaseSelector:a2];
  [v5 setFontSize:a2 rebaseSelector:12.0];

  return v5;
}

- (id)remoteUITableHeaderLabel:(int)label
{
  v6 = [(GKTextStyle *)self copy];
  palette = [(GKTextStyle *)self palette];
  emphasizedTextColor = [palette emphasizedTextColor];
  [v6 setColor:emphasizedTextColor];

  [v6 setFontName:@"GKMagicLightSystemFont" rebaseSelector:a2];
  if (label == 2)
  {
    [v6 setFontSize:a2 rebaseSelector:60.0];
    [v6 setMinimumLineHeight:71.0];
  }

  else
  {
    if (label)
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

- (id)remoteUITableHeaderSubLabel:(int)label
{
  v6 = [(GKTextStyle *)self copy];
  palette = [(GKTextStyle *)self palette];
  emphasizedTextColor = [palette emphasizedTextColor];
  [v6 setColor:emphasizedTextColor];

  [v6 setTextAlignment:1];
  [v6 setLineBreakMode:0];
  v9 = @"GKMagicLightSystemFont";
  v10 = 17.0;
  v11 = 16.0;
  if (label == 2)
  {
    v9 = @"GKMagicSystemFont";
    v10 = 21.0;
  }

  else
  {
    v11 = 11.0;
  }

  if (label)
  {
    v12 = v9;
  }

  else
  {
    v12 = @"GKMagicSystemFont";
  }

  if (label)
  {
    v13 = v10;
  }

  else
  {
    v13 = 14.0;
  }

  if (label)
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

- (id)remoteUITableFooterButton:(int)button
{
  v6 = [(GKTextStyle *)self copy];
  palette = [(GKTextStyle *)self palette];
  systemInteractionColor = [palette systemInteractionColor];
  [v6 setColor:systemInteractionColor];

  [v6 setTextAlignment:1];
  [v6 setFontName:@"GKMagicSystemFont" rebaseSelector:a2];
  v9 = 23.0;
  if (button == 2)
  {
    v9 = 30.0;
  }

  [v6 setFontSize:a2 rebaseSelector:v9];

  return v6;
}

- (id)remoteUITableHeaderButton:(int)button
{
  v5 = [(GKTextStyle *)self copy];
  palette = [(GKTextStyle *)self palette];
  systemInteractionColor = [palette systemInteractionColor];
  [v5 setColor:systemInteractionColor];

  [v5 setTextAlignment:1];
  [v5 setFontName:@"GKMagicSystemFont" rebaseSelector:a2];
  [v5 setFontSize:a2 rebaseSelector:14.0];

  return v5;
}

- (id)remoteUIEditField:(int)field
{
  v5 = [(GKTextStyle *)self copy];
  palette = [(GKTextStyle *)self palette];
  emphasizedTextColor = [palette emphasizedTextColor];
  [v5 setColor:emphasizedTextColor];

  [v5 setFontName:@"GKMagicSystemFont" rebaseSelector:a2];
  [v5 setFontSize:a2 rebaseSelector:14.0];
  [v5 setTextAlignment:4];

  return v5;
}

- (id)remoteUIEditLabel:(int)label
{
  v5 = [(GKTextStyle *)self copy];
  palette = [(GKTextStyle *)self palette];
  emphasizedTextColor = [palette emphasizedTextColor];
  [v5 setColor:emphasizedTextColor];

  [v5 setFontName:@"GKMagicBoldSystemFont" rebaseSelector:a2];
  [v5 setFontSize:a2 rebaseSelector:13.0];
  [v5 setTextAlignment:4];

  return v5;
}

- (id)remoteUISelectLabel:(int)label
{
  v5 = [(GKTextStyle *)self copy];
  palette = [(GKTextStyle *)self palette];
  emphasizedTextColor = [palette emphasizedTextColor];
  [v5 setColor:emphasizedTextColor];

  [v5 setFontName:@"GKMagicBoldSystemFont" rebaseSelector:a2];
  [v5 setFontSize:a2 rebaseSelector:13.0];
  [v5 setTextAlignment:4];

  return v5;
}

- (id)remoteUISelectField:(int)field
{
  v5 = [(GKTextStyle *)self copy];
  palette = [(GKTextStyle *)self palette];
  standardTextColor = [palette standardTextColor];
  [v5 setColor:standardTextColor];

  [v5 setFontName:@"GKMagicSystemFont" rebaseSelector:a2];
  [v5 setFontSize:a2 rebaseSelector:14.0];
  [v5 setTextAlignment:4];

  return v5;
}

- (id)remoteUINickNameField:(int)field
{
  v6 = [(GKTextStyle *)self copy];
  palette = [(GKTextStyle *)self palette];
  emphasizedTextColor = [palette emphasizedTextColor];
  [v6 setColor:emphasizedTextColor];

  [v6 setFontName:@"GKMagicSystemFont" rebaseSelector:a2];
  v9 = 14.0;
  if (field == 2)
  {
    v9 = 22.0;
  }

  [v6 setFontSize:a2 rebaseSelector:v9];
  [v6 setTextAlignment:4];

  return v6;
}

- (id)remoteUINickNameLabel:(int)label
{
  v6 = [(GKTextStyle *)self copy];
  palette = [(GKTextStyle *)self palette];
  emphasizedTextColor = [palette emphasizedTextColor];
  [v6 setColor:emphasizedTextColor];

  [v6 setFontName:@"GKMagicBoldSystemFont" rebaseSelector:a2];
  v9 = 14.0;
  if (label == 2)
  {
    v9 = 18.0;
  }

  if (!label)
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
  systemBlueColor = [MEMORY[0x277D75348] systemBlueColor];
  [v3 setColor:systemBlueColor];

  [v3 setTextAlignment:4];
  [v3 setFontSize:a2 rebaseSelector:14.0];

  return v3;
}

- (id)settingsButton
{
  v3 = [(GKTextStyle *)self copy];
  systemBlueColor = [MEMORY[0x277D75348] systemBlueColor];
  [v3 setColor:systemBlueColor];

  [v3 setTextAlignment:4];
  [v3 setFontName:@"GKMagicSystemFont" rebaseSelector:a2];
  [v3 setFontSize:a2 rebaseSelector:17.0];

  return v3;
}

- (id)settingsBoldButton
{
  v3 = [(GKTextStyle *)self copy];
  systemBlueColor = [MEMORY[0x277D75348] systemBlueColor];
  [v3 setColor:systemBlueColor];

  [v3 setTextAlignment:4];
  [v3 setFontName:@"GKMagicBoldSystemFont" rebaseSelector:a2];
  [v3 setFontSize:a2 rebaseSelector:17.0];

  return v3;
}

- (id)settingsLabel
{
  v4 = [(GKTextStyle *)self copy];
  palette = [(GKTextStyle *)self palette];
  emphasizedTextColor = [palette emphasizedTextColor];
  [v4 setColor:emphasizedTextColor];

  [v4 setFontName:@"GKMagicSystemFont" rebaseSelector:a2];
  [v4 setFontSize:a2 rebaseSelector:17.0];

  return v4;
}

- (id)settingsHeader
{
  v3 = [(GKTextStyle *)self copy];
  secondaryLabelColor = [MEMORY[0x277D75348] secondaryLabelColor];
  [v3 setColor:secondaryLabelColor];

  [v3 setFontName:@"GKMagicSystemFont" rebaseSelector:a2];
  [v3 setFontSize:a2 rebaseSelector:14.0];

  return v3;
}

- (id)settingsFooter
{
  v3 = [(GKTextStyle *)self copy];
  tertiaryLabelColor = [MEMORY[0x277D75348] tertiaryLabelColor];
  [v3 setColor:tertiaryLabelColor];

  [v3 setFontName:@"GKMagicSystemFont" rebaseSelector:a2];
  [v3 setFontSize:a2 rebaseSelector:14.0];

  return v3;
}

- (GKTextStyle)styleWithName:(id)name fallback:(id)fallback layoutMode:(int)mode
{
  fallbackCopy = fallback;
  nameCopy = name;
  v10 = NSSelectorFromString(nameCopy);
  v11 = [(NSString *)nameCopy stringByAppendingString:@":"];

  v12 = NSSelectorFromString(v11);
  if (objc_opt_respondsToSelector())
  {
    goto LABEL_2;
  }

  if (objc_opt_respondsToSelector())
  {
    goto LABEL_4;
  }

  if (fallbackCopy)
  {
    v10 = NSSelectorFromString(fallbackCopy);
    v16 = [(NSString *)fallbackCopy stringByAppendingString:@":"];
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

- (void)setFontSizeRebaseSelector:(SEL)selector
{
  if (selector)
  {
    selectorCopy = selector;
  }

  else
  {
    selectorCopy = 0;
  }

  self->_fontSizeRebaseSelector = selectorCopy;
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

- (void)setFontNameRebaseSelector:(SEL)selector
{
  if (selector)
  {
    selectorCopy = selector;
  }

  else
  {
    selectorCopy = 0;
  }

  self->_fontNameRebaseSelector = selectorCopy;
}

@end