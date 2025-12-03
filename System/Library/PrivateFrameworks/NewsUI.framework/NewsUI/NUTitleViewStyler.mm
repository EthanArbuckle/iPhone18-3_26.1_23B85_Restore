@interface NUTitleViewStyler
- (NUTitleViewStyler)init;
- (NUTitleViewStyler)initWithTextColor:(id)color;
- (id)messageLargeFont;
- (id)messageParagraphStyle;
- (id)messageSmallFont;
- (id)styleTextAsMessage:(id)message boundingSize:(CGSize)size;
- (id)styleTextAsTitle:(id)title boundingSize:(CGSize)size;
- (id)styleTitleText:(id)text styleType:(unint64_t)type boundingSize:(CGSize)size;
- (id)titleLargeFont;
- (id)titleParagraphStyleWithWrapping:(BOOL)wrapping;
- (id)titleSmallFont;
@end

@implementation NUTitleViewStyler

- (NUTitleViewStyler)init
{
  nu_defaultTitleTextColor = [MEMORY[0x277D75348] nu_defaultTitleTextColor];
  v4 = [(NUTitleViewStyler *)self initWithTextColor:nu_defaultTitleTextColor];

  return v4;
}

- (NUTitleViewStyler)initWithTextColor:(id)color
{
  colorCopy = color;
  v9.receiver = self;
  v9.super_class = NUTitleViewStyler;
  v6 = [(NUTitleViewStyler *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_textColor, color);
  }

  return v7;
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
      height = [(NUTitleViewStyler *)self styleTextAsMessage:textCopy boundingSize:width, height];
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
    height = [(NUTitleViewStyler *)self styleTextAsTitle:textCopy boundingSize:width, height];
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
  messageLargeFont = [(NUTitleViewStyler *)self messageLargeFont];
  v22[0] = messageLargeFont;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:&v21 count:1];
  [messageCopy sizeWithAttributes:v9];
  v11 = v10;

  v19[0] = v7;
  if (v11 > width)
  {
    [(NUTitleViewStyler *)self messageSmallFont];
  }

  else
  {
    [(NUTitleViewStyler *)self messageLargeFont];
  }
  v12 = ;
  v20[0] = v12;
  v19[1] = *MEMORY[0x277D74118];
  messageParagraphStyle = [(NUTitleViewStyler *)self messageParagraphStyle];
  v20[1] = messageParagraphStyle;
  v19[2] = *MEMORY[0x277D740C0];
  textColor = [(NUTitleViewStyler *)self textColor];
  v20[2] = textColor;
  v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:v19 count:3];

  v16 = [objc_alloc(MEMORY[0x277CCA898]) initWithString:messageCopy attributes:v15];
  v17 = *MEMORY[0x277D85DE8];

  return v16;
}

- (id)styleTextAsTitle:(id)title boundingSize:(CGSize)size
{
  width = size.width;
  v22[1] = *MEMORY[0x277D85DE8];
  titleCopy = title;
  v21 = *MEMORY[0x277D740A8];
  v7 = v21;
  titleLargeFont = [(NUTitleViewStyler *)self titleLargeFont];
  v22[0] = titleLargeFont;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:&v21 count:1];
  [titleCopy sizeWithAttributes:v9];
  v11 = v10;

  v19[0] = v7;
  if (v11 <= width)
  {
    [(NUTitleViewStyler *)self titleLargeFont];
  }

  else
  {
    [(NUTitleViewStyler *)self titleSmallFont];
  }
  v12 = ;
  v20[0] = v12;
  v19[1] = *MEMORY[0x277D74118];
  width = [(NUTitleViewStyler *)self titleParagraphStyleWithWrapping:v11 > width];
  v20[1] = width;
  v19[2] = *MEMORY[0x277D740C0];
  textColor = [(NUTitleViewStyler *)self textColor];
  v19[3] = *MEMORY[0x277D740D0];
  v20[2] = textColor;
  v20[3] = &unk_286E12E68;
  v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:v19 count:4];

  v16 = [objc_alloc(MEMORY[0x277CCA898]) initWithString:titleCopy attributes:v15];
  v17 = *MEMORY[0x277D85DE8];

  return v16;
}

- (id)messageLargeFont
{
  if (messageLargeFont_onceToken_0 != -1)
  {
    [NUTitleViewStyler messageLargeFont];
  }

  v3 = messageLargeFont_largeFont_0;

  return v3;
}

void __37__NUTitleViewStyler_messageLargeFont__block_invoke()
{
  v2 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76988]];
  v0 = [v2 fontWithSize:15.0];
  v1 = messageLargeFont_largeFont_0;
  messageLargeFont_largeFont_0 = v0;
}

- (id)messageSmallFont
{
  if (messageSmallFont_onceToken_0 != -1)
  {
    [NUTitleViewStyler messageSmallFont];
  }

  v3 = messageSmallFont_smallFont_0;

  return v3;
}

void __37__NUTitleViewStyler_messageSmallFont__block_invoke()
{
  v2 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76988]];
  v0 = [v2 fontWithSize:13.0];
  v1 = messageSmallFont_smallFont_0;
  messageSmallFont_smallFont_0 = v0;
}

- (id)messageParagraphStyle
{
  defaultParagraphStyle = [MEMORY[0x277D74240] defaultParagraphStyle];
  v3 = [defaultParagraphStyle mutableCopy];

  [v3 setAlignment:1];
  v4 = [v3 copy];

  return v4;
}

- (id)titleLargeFont
{
  if (titleLargeFont_onceToken != -1)
  {
    [NUTitleViewStyler titleLargeFont];
  }

  v3 = titleLargeFont_largeFont;

  return v3;
}

void __35__NUTitleViewStyler_titleLargeFont__block_invoke()
{
  v10[1] = *MEMORY[0x277D85DE8];
  v0 = [MEMORY[0x277D74300] systemFontOfSize:24.0 weight:*MEMORY[0x277D743F8]];
  v1 = titleLargeFont_largeFont;
  titleLargeFont_largeFont = v0;

  v2 = [titleLargeFont_largeFont fontDescriptor];
  v9 = *MEMORY[0x277D743E0];
  v10[0] = &unk_286E12FB0;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:&v9 count:1];
  v4 = [v2 fontDescriptorByAddingAttributes:v3];

  v5 = MEMORY[0x277D74300];
  [titleLargeFont_largeFont pointSize];
  v6 = [v5 fontWithDescriptor:v2 size:?];
  v7 = titleLargeFont_largeFont;
  titleLargeFont_largeFont = v6;

  v8 = *MEMORY[0x277D85DE8];
}

- (id)titleSmallFont
{
  if (titleSmallFont_onceToken != -1)
  {
    [NUTitleViewStyler titleSmallFont];
  }

  v3 = titleSmallFont_smallFont;

  return v3;
}

void __35__NUTitleViewStyler_titleSmallFont__block_invoke()
{
  v10[1] = *MEMORY[0x277D85DE8];
  v0 = [MEMORY[0x277D74300] systemFontOfSize:17.5 weight:*MEMORY[0x277D743F8]];
  v1 = titleSmallFont_smallFont;
  titleSmallFont_smallFont = v0;

  v2 = [titleSmallFont_smallFont fontDescriptor];
  v9 = *MEMORY[0x277D743E0];
  v10[0] = &unk_286E12FB0;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:&v9 count:1];
  v4 = [v2 fontDescriptorByAddingAttributes:v3];

  v5 = MEMORY[0x277D74300];
  [titleSmallFont_smallFont pointSize];
  v6 = [v5 fontWithDescriptor:v2 size:?];
  v7 = titleSmallFont_smallFont;
  titleSmallFont_smallFont = v6;

  v8 = *MEMORY[0x277D85DE8];
}

- (id)titleParagraphStyleWithWrapping:(BOOL)wrapping
{
  wrappingCopy = wrapping;
  defaultParagraphStyle = [MEMORY[0x277D74240] defaultParagraphStyle];
  v5 = [defaultParagraphStyle mutableCopy];

  [v5 setLineBreakMode:4];
  [v5 setAlignment:1];
  if (wrappingCopy)
  {
    [v5 setMinimumLineHeight:20.0];
    [v5 setMaximumLineHeight:21.0];
  }

  v6 = [v5 copy];

  return v6;
}

@end