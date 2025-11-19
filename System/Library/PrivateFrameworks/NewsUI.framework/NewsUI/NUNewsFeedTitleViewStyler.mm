@interface NUNewsFeedTitleViewStyler
- (NUNewsFeedTitleViewStyler)initWithTextAlignment:(int64_t)a3;
- (id)messageLargeFont;
- (id)messageSmallFont;
- (id)styleTextAsMessage:(id)a3 boundingSize:(CGSize)a4;
- (id)styleTextAsTitle:(id)a3 boundingSize:(CGSize)a4;
- (id)styleTitleText:(id)a3 styleType:(unint64_t)a4 boundingSize:(CGSize)a5;
- (id)titleExtraLargeFont;
- (id)titleParagraphStyleWithWrapping:(BOOL)a3;
@end

@implementation NUNewsFeedTitleViewStyler

- (NUNewsFeedTitleViewStyler)initWithTextAlignment:(int64_t)a3
{
  v8.receiver = self;
  v8.super_class = NUNewsFeedTitleViewStyler;
  v4 = [(NUNewsFeedTitleViewStyler *)&v8 init];
  if (v4)
  {
    v5 = [MEMORY[0x277D75348] nu_defaultTitleTextColor];
    textColor = v4->_textColor;
    v4->_textColor = v5;

    v4->_textAlignment = a3;
  }

  return v4;
}

- (id)styleTitleText:(id)a3 styleType:(unint64_t)a4 boundingSize:(CGSize)a5
{
  height = a5.height;
  width = a5.width;
  v9 = a3;
  if (a4)
  {
    if (a4 == 1)
    {
      v10 = [(NUNewsFeedTitleViewStyler *)self styleTextAsMessage:v9 boundingSize:width, height];
    }

    else
    {
      if (a4 != 2)
      {
        goto LABEL_8;
      }

      v10 = [objc_alloc(MEMORY[0x277CCA898]) initWithString:v9];
    }
  }

  else
  {
    v10 = [(NUNewsFeedTitleViewStyler *)self styleTextAsTitle:v9 boundingSize:width, height];
  }

  self = v10;
LABEL_8:

  return self;
}

- (id)styleTextAsMessage:(id)a3 boundingSize:(CGSize)a4
{
  width = a4.width;
  v22[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v21 = *MEMORY[0x277D740A8];
  v7 = v21;
  v8 = [(NUNewsFeedTitleViewStyler *)self messageLargeFont];
  v22[0] = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:&v21 count:1];
  [v6 sizeWithAttributes:v9];
  v11 = v10;

  v19[0] = v7;
  if (v11 <= width)
  {
    [(NUNewsFeedTitleViewStyler *)self messageLargeFont];
  }

  else
  {
    [(NUNewsFeedTitleViewStyler *)self messageSmallFont];
  }
  v12 = ;
  v20[0] = v12;
  v19[1] = *MEMORY[0x277D74118];
  v13 = [(NUNewsFeedTitleViewStyler *)self titleParagraphStyleWithWrapping:v11 > width];
  v20[1] = v13;
  v19[2] = *MEMORY[0x277D740C0];
  v14 = [(NUNewsFeedTitleViewStyler *)self textColor];
  v20[2] = v14;
  v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:v19 count:3];

  v16 = [objc_alloc(MEMORY[0x277CCA898]) initWithString:v6 attributes:v15];
  v17 = *MEMORY[0x277D85DE8];

  return v16;
}

- (id)styleTextAsTitle:(id)a3 boundingSize:(CGSize)a4
{
  v14[4] = *MEMORY[0x277D85DE8];
  v13[0] = *MEMORY[0x277D740A8];
  v5 = a3;
  v6 = [(NUNewsFeedTitleViewStyler *)self titleExtraLargeFont];
  v14[0] = v6;
  v13[1] = *MEMORY[0x277D74118];
  v7 = [(NUNewsFeedTitleViewStyler *)self titleParagraphStyleWithWrapping:0];
  v14[1] = v7;
  v13[2] = *MEMORY[0x277D740C0];
  v8 = [(NUNewsFeedTitleViewStyler *)self textColor];
  v13[3] = *MEMORY[0x277D740D0];
  v14[2] = v8;
  v14[3] = &unk_286E12E58;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:4];

  v10 = [objc_alloc(MEMORY[0x277CCA898]) initWithString:v5 attributes:v9];
  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

- (id)messageLargeFont
{
  if (messageLargeFont_onceToken != -1)
  {
    [NUNewsFeedTitleViewStyler messageLargeFont];
  }

  v3 = messageLargeFont_largeFont;

  return v3;
}

void __45__NUNewsFeedTitleViewStyler_messageLargeFont__block_invoke()
{
  v2 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76988]];
  v0 = [v2 fontWithSize:15.0];
  v1 = messageLargeFont_largeFont;
  messageLargeFont_largeFont = v0;
}

- (id)messageSmallFont
{
  if (messageSmallFont_onceToken != -1)
  {
    [NUNewsFeedTitleViewStyler messageSmallFont];
  }

  v3 = messageSmallFont_smallFont;

  return v3;
}

void __45__NUNewsFeedTitleViewStyler_messageSmallFont__block_invoke()
{
  v2 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76988]];
  v0 = [v2 fontWithSize:13.0];
  v1 = messageSmallFont_smallFont;
  messageSmallFont_smallFont = v0;
}

- (id)titleExtraLargeFont
{
  if (titleExtraLargeFont_onceToken != -1)
  {
    [NUNewsFeedTitleViewStyler titleExtraLargeFont];
  }

  v3 = titleExtraLargeFont_extraLargeFont;

  return v3;
}

uint64_t __48__NUNewsFeedTitleViewStyler_titleExtraLargeFont__block_invoke()
{
  titleExtraLargeFont_extraLargeFont = [MEMORY[0x277D74300] systemFontOfSize:29.0 weight:*MEMORY[0x277D743E8]];

  return MEMORY[0x2821F96F8]();
}

- (id)titleParagraphStyleWithWrapping:(BOOL)a3
{
  v3 = a3;
  v5 = [MEMORY[0x277D74240] defaultParagraphStyle];
  v6 = [v5 mutableCopy];

  [v6 setLineBreakMode:4];
  [v6 setAlignment:{-[NUNewsFeedTitleViewStyler textAlignment](self, "textAlignment")}];
  if (v3)
  {
    [v6 setMinimumLineHeight:20.0];
    [v6 setMaximumLineHeight:20.0];
  }

  v7 = [v6 copy];

  return v7;
}

@end