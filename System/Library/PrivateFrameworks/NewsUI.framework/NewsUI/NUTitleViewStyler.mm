@interface NUTitleViewStyler
- (NUTitleViewStyler)init;
- (NUTitleViewStyler)initWithTextColor:(id)a3;
- (id)messageLargeFont;
- (id)messageParagraphStyle;
- (id)messageSmallFont;
- (id)styleTextAsMessage:(id)a3 boundingSize:(CGSize)a4;
- (id)styleTextAsTitle:(id)a3 boundingSize:(CGSize)a4;
- (id)styleTitleText:(id)a3 styleType:(unint64_t)a4 boundingSize:(CGSize)a5;
- (id)titleLargeFont;
- (id)titleParagraphStyleWithWrapping:(BOOL)a3;
- (id)titleSmallFont;
@end

@implementation NUTitleViewStyler

- (NUTitleViewStyler)init
{
  v3 = [MEMORY[0x277D75348] nu_defaultTitleTextColor];
  v4 = [(NUTitleViewStyler *)self initWithTextColor:v3];

  return v4;
}

- (NUTitleViewStyler)initWithTextColor:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = NUTitleViewStyler;
  v6 = [(NUTitleViewStyler *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_textColor, a3);
  }

  return v7;
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
      v10 = [(NUTitleViewStyler *)self styleTextAsMessage:v9 boundingSize:width, height];
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
    v10 = [(NUTitleViewStyler *)self styleTextAsTitle:v9 boundingSize:width, height];
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
  v8 = [(NUTitleViewStyler *)self messageLargeFont];
  v22[0] = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:&v21 count:1];
  [v6 sizeWithAttributes:v9];
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
  v13 = [(NUTitleViewStyler *)self messageParagraphStyle];
  v20[1] = v13;
  v19[2] = *MEMORY[0x277D740C0];
  v14 = [(NUTitleViewStyler *)self textColor];
  v20[2] = v14;
  v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:v19 count:3];

  v16 = [objc_alloc(MEMORY[0x277CCA898]) initWithString:v6 attributes:v15];
  v17 = *MEMORY[0x277D85DE8];

  return v16;
}

- (id)styleTextAsTitle:(id)a3 boundingSize:(CGSize)a4
{
  width = a4.width;
  v22[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v21 = *MEMORY[0x277D740A8];
  v7 = v21;
  v8 = [(NUTitleViewStyler *)self titleLargeFont];
  v22[0] = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:&v21 count:1];
  [v6 sizeWithAttributes:v9];
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
  v13 = [(NUTitleViewStyler *)self titleParagraphStyleWithWrapping:v11 > width];
  v20[1] = v13;
  v19[2] = *MEMORY[0x277D740C0];
  v14 = [(NUTitleViewStyler *)self textColor];
  v19[3] = *MEMORY[0x277D740D0];
  v20[2] = v14;
  v20[3] = &unk_286E12E68;
  v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:v19 count:4];

  v16 = [objc_alloc(MEMORY[0x277CCA898]) initWithString:v6 attributes:v15];
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
  v2 = [MEMORY[0x277D74240] defaultParagraphStyle];
  v3 = [v2 mutableCopy];

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

- (id)titleParagraphStyleWithWrapping:(BOOL)a3
{
  v3 = a3;
  v4 = [MEMORY[0x277D74240] defaultParagraphStyle];
  v5 = [v4 mutableCopy];

  [v5 setLineBreakMode:4];
  [v5 setAlignment:1];
  if (v3)
  {
    [v5 setMinimumLineHeight:20.0];
    [v5 setMaximumLineHeight:21.0];
  }

  v6 = [v5 copy];

  return v6;
}

@end