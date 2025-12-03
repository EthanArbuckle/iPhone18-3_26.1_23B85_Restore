@interface NUNewsFeedTitleViewStyler
- (NUNewsFeedTitleViewStyler)initWithTextAlignment:(int64_t)alignment;
- (id)messageLargeFont;
- (id)messageSmallFont;
- (id)styleTextAsMessage:(id)message boundingSize:(CGSize)size;
- (id)styleTextAsTitle:(id)title boundingSize:(CGSize)size;
- (id)styleTitleText:(id)text styleType:(unint64_t)type boundingSize:(CGSize)size;
- (id)titleExtraLargeFont;
- (id)titleParagraphStyleWithWrapping:(BOOL)wrapping;
@end

@implementation NUNewsFeedTitleViewStyler

- (NUNewsFeedTitleViewStyler)initWithTextAlignment:(int64_t)alignment
{
  v8.receiver = self;
  v8.super_class = NUNewsFeedTitleViewStyler;
  v4 = [(NUNewsFeedTitleViewStyler *)&v8 init];
  if (v4)
  {
    nu_defaultTitleTextColor = [MEMORY[0x277D75348] nu_defaultTitleTextColor];
    textColor = v4->_textColor;
    v4->_textColor = nu_defaultTitleTextColor;

    v4->_textAlignment = alignment;
  }

  return v4;
}

- (id)styleTitleText:(id)text styleType:(unint64_t)type boundingSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  textCopy = text;
  if (type)
  {
    if (type == 1)
    {
      height = [(NUNewsFeedTitleViewStyler *)self styleTextAsMessage:textCopy boundingSize:width, height];
    }

    else
    {
      if (type != 2)
      {
        goto LABEL_8;
      }

      height = [objc_alloc(MEMORY[0x277CCA898]) initWithString:textCopy];
    }
  }

  else
  {
    height = [(NUNewsFeedTitleViewStyler *)self styleTextAsTitle:textCopy boundingSize:width, height];
  }

  self = height;
LABEL_8:

  return self;
}

- (id)styleTextAsMessage:(id)message boundingSize:(CGSize)size
{
  width = size.width;
  v22[1] = *MEMORY[0x277D85DE8];
  messageCopy = message;
  v21 = *MEMORY[0x277D740A8];
  v7 = v21;
  messageLargeFont = [(NUNewsFeedTitleViewStyler *)self messageLargeFont];
  v22[0] = messageLargeFont;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:&v21 count:1];
  [messageCopy sizeWithAttributes:v9];
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
  width = [(NUNewsFeedTitleViewStyler *)self titleParagraphStyleWithWrapping:v11 > width];
  v20[1] = width;
  v19[2] = *MEMORY[0x277D740C0];
  textColor = [(NUNewsFeedTitleViewStyler *)self textColor];
  v20[2] = textColor;
  v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:v19 count:3];

  v16 = [objc_alloc(MEMORY[0x277CCA898]) initWithString:messageCopy attributes:v15];
  v17 = *MEMORY[0x277D85DE8];

  return v16;
}

- (id)styleTextAsTitle:(id)title boundingSize:(CGSize)size
{
  v14[4] = *MEMORY[0x277D85DE8];
  v13[0] = *MEMORY[0x277D740A8];
  titleCopy = title;
  titleExtraLargeFont = [(NUNewsFeedTitleViewStyler *)self titleExtraLargeFont];
  v14[0] = titleExtraLargeFont;
  v13[1] = *MEMORY[0x277D74118];
  v7 = [(NUNewsFeedTitleViewStyler *)self titleParagraphStyleWithWrapping:0];
  v14[1] = v7;
  v13[2] = *MEMORY[0x277D740C0];
  textColor = [(NUNewsFeedTitleViewStyler *)self textColor];
  v13[3] = *MEMORY[0x277D740D0];
  v14[2] = textColor;
  v14[3] = &unk_286E12E58;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:4];

  v10 = [objc_alloc(MEMORY[0x277CCA898]) initWithString:titleCopy attributes:v9];
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

- (id)titleParagraphStyleWithWrapping:(BOOL)wrapping
{
  wrappingCopy = wrapping;
  defaultParagraphStyle = [MEMORY[0x277D74240] defaultParagraphStyle];
  v6 = [defaultParagraphStyle mutableCopy];

  [v6 setLineBreakMode:4];
  [v6 setAlignment:{-[NUNewsFeedTitleViewStyler textAlignment](self, "textAlignment")}];
  if (wrappingCopy)
  {
    [v6 setMinimumLineHeight:20.0];
    [v6 setMaximumLineHeight:20.0];
  }

  v7 = [v6 copy];

  return v7;
}

@end