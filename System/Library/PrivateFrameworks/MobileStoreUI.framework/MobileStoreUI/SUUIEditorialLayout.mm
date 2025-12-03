@interface SUUIEditorialLayout
- (SUUIEditorialLayout)initWithEditorial:(id)editorial layoutCache:(id)cache;
- (double)layoutHeightForOrientation:(int64_t)orientation expanded:(BOOL)expanded;
- (id)_bodyTextLayoutRequestWithTotalWidth:(double)width;
- (id)_linkLayoutRequestWithTotalWidth:(double)width;
- (id)_titleTextLayoutRequestWithTotalWidth:(double)width;
- (id)bodyTextLayoutForOrientation:(int64_t)orientation;
- (id)linkLayoutForOrientation:(int64_t)orientation;
- (id)titleTextLayoutForOrientation:(int64_t)orientation;
- (void)enqueueLayoutRequests;
- (void)setLayoutWidth:(double)width forOrientation:(int64_t)orientation;
@end

@implementation SUUIEditorialLayout

- (SUUIEditorialLayout)initWithEditorial:(id)editorial layoutCache:(id)cache
{
  editorialCopy = editorial;
  cacheCopy = cache;
  v14.receiver = self;
  v14.super_class = SUUIEditorialLayout;
  v9 = [(SUUIEditorialLayout *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_editorial, editorial);
    objc_storeStrong(&v10->_textLayoutCache, cache);
    v11.f64[0] = NAN;
    v11.f64[1] = NAN;
    v12 = vnegq_f64(v11);
    *&v10->_landscapeLinkLayoutIndex = v12;
    v10->_landscapeTitleLayoutIndex = 0x7FFFFFFFFFFFFFFFLL;
    *&v10->_portraitLinkLayoutIndex = v12;
    v10->_portraitTitleLayoutIndex = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v10;
}

- (id)bodyTextLayoutForOrientation:(int64_t)orientation
{
  if (orientation)
  {
    if (orientation != 1)
    {
      goto LABEL_6;
    }

    landscapeTextLayoutIndex = self->_landscapeTextLayoutIndex;
  }

  else
  {
    landscapeTextLayoutIndex = self->_portraitTextLayoutIndex;
  }

  if (landscapeTextLayoutIndex == 0x7FFFFFFFFFFFFFFFLL)
  {
LABEL_6:
    v6 = 0;

    return v6;
  }

  v6 = [(SUUILayoutCache *)self->_textLayoutCache layoutForIndex:v3];

  return v6;
}

- (double)layoutHeightForOrientation:(int64_t)orientation expanded:(BOOL)expanded
{
  v7 = [(SUUIEditorialLayout *)self bodyTextLayoutForOrientation:?];
  v8 = [(SUUIEditorialLayout *)self linkLayoutForOrientation:orientation];
  v9 = [(SUUIEditorialLayout *)self titleTextLayoutForOrientation:orientation];
  v10 = v9;
  if (!v7 && !v8 && !v9)
  {
    v11 = 80.0;
    goto LABEL_18;
  }

  v19 = 0.0;
  v17 = 0u;
  v18 = 0;
  editorial = self->_editorial;
  if (editorial)
  {
    [(SUUIEditorialComponent *)editorial editorialStyle:0];
  }

  if (v7)
  {
    if (expanded || ![v7 requiresTruncation])
    {
      [v7 textSize];
    }

    else
    {
      [v7 truncatedSize];
    }

    v11 = v13;
    if (v10)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v11 = 0.0;
    if (v10)
    {
LABEL_13:
      [v10 textSize];
      v11 = v11 + v14 + v19;
    }
  }

  if (v8)
  {
    if (v7 | v10)
    {
      v11 = v11 + *(&v18 + 1);
    }

    [v8 totalSize];
    v11 = v15 + v11;
  }

LABEL_18:

  return v11;
}

- (void)enqueueLayoutRequests
{
  v41[1] = *MEMORY[0x277D85DE8];
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  if ([currentDevice userInterfaceIdiom] == 1)
  {
    v4 = self->_landscapeWidth > 0.00000011920929;
  }

  else
  {
    mainScreen = [MEMORY[0x277D759A0] mainScreen];
    [mainScreen bounds];
    v4 = v6 > 375.0 && self->_landscapeWidth > 0.00000011920929;
  }

  bodyText = [(SUUIEditorialComponent *)self->_editorial bodyText];
  if (bodyText)
  {
  }

  else
  {
    bodyAttributedText = [(SUUIEditorialComponent *)self->_editorial bodyAttributedText];

    if (!bodyAttributedText)
    {
      goto LABEL_12;
    }
  }

  textLayoutCache = self->_textLayoutCache;
  v10 = [(SUUIEditorialLayout *)self _bodyTextLayoutRequestWithTotalWidth:self->_portraitWidth];
  v41[0] = v10;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v41 count:1];
  v12 = [(SUUILayoutCache *)textLayoutCache addLayoutRequests:v11];

  self->_portraitTextLayoutIndex = v12;
  if (v4)
  {
    v13 = self->_textLayoutCache;
    v14 = [(SUUIEditorialLayout *)self _bodyTextLayoutRequestWithTotalWidth:self->_landscapeWidth];
    v40 = v14;
    v15 = [MEMORY[0x277CBEA60] arrayWithObjects:&v40 count:1];
    v16 = [(SUUILayoutCache *)v13 addLayoutRequests:v15];

    self->_landscapeTextLayoutIndex = v16;
  }

LABEL_12:
  titleText = [(SUUIEditorialComponent *)self->_editorial titleText];

  if (titleText)
  {
    v18 = self->_textLayoutCache;
    v19 = [(SUUIEditorialLayout *)self _titleTextLayoutRequestWithTotalWidth:self->_portraitWidth];
    v39 = v19;
    v20 = [MEMORY[0x277CBEA60] arrayWithObjects:&v39 count:1];
    v21 = [(SUUILayoutCache *)v18 addLayoutRequests:v20];

    self->_portraitTitleLayoutIndex = v21;
    if (v4)
    {
      v22 = self->_textLayoutCache;
      v23 = [(SUUIEditorialLayout *)self _titleTextLayoutRequestWithTotalWidth:self->_landscapeWidth];
      v38 = v23;
      v24 = [MEMORY[0x277CBEA60] arrayWithObjects:&v38 count:1];
      v25 = [(SUUILayoutCache *)v22 addLayoutRequests:v24];

      self->_landscapeTitleLayoutIndex = v25;
    }
  }

  links = [(SUUIEditorialComponent *)self->_editorial links];
  v27 = [links count];

  if (v27)
  {
    v28 = self->_textLayoutCache;
    v29 = [(SUUIEditorialLayout *)self _linkLayoutRequestWithTotalWidth:self->_portraitWidth];
    v37 = v29;
    v30 = [MEMORY[0x277CBEA60] arrayWithObjects:&v37 count:1];
    v31 = [(SUUILayoutCache *)v28 addLayoutRequests:v30];

    self->_portraitLinkLayoutIndex = v31;
    if (v4)
    {
      v32 = self->_textLayoutCache;
      v33 = [(SUUIEditorialLayout *)self _linkLayoutRequestWithTotalWidth:self->_landscapeWidth];
      v36 = v33;
      v34 = [MEMORY[0x277CBEA60] arrayWithObjects:&v36 count:1];
      v35 = [(SUUILayoutCache *)v32 addLayoutRequests:v34];

      self->_landscapeLinkLayoutIndex = v35;
    }
  }
}

- (id)linkLayoutForOrientation:(int64_t)orientation
{
  if (orientation)
  {
    if (orientation != 1)
    {
      goto LABEL_6;
    }

    landscapeLinkLayoutIndex = self->_landscapeLinkLayoutIndex;
  }

  else
  {
    landscapeLinkLayoutIndex = self->_portraitLinkLayoutIndex;
  }

  if (landscapeLinkLayoutIndex == 0x7FFFFFFFFFFFFFFFLL)
  {
LABEL_6:
    v6 = 0;

    return v6;
  }

  v6 = [(SUUILayoutCache *)self->_textLayoutCache layoutForIndex:v3];

  return v6;
}

- (void)setLayoutWidth:(double)width forOrientation:(int64_t)orientation
{
  if (orientation == 1)
  {
    v4 = 40;
  }

  else
  {
    if (orientation)
    {
      return;
    }

    v4 = 72;
  }

  *(&self->super.isa + v4) = width;
}

- (id)titleTextLayoutForOrientation:(int64_t)orientation
{
  if (orientation)
  {
    if (orientation != 1)
    {
      goto LABEL_6;
    }

    landscapeTitleLayoutIndex = self->_landscapeTitleLayoutIndex;
  }

  else
  {
    landscapeTitleLayoutIndex = self->_portraitTitleLayoutIndex;
  }

  if (landscapeTitleLayoutIndex == 0x7FFFFFFFFFFFFFFFLL)
  {
LABEL_6:
    v6 = 0;

    return v6;
  }

  v6 = [(SUUILayoutCache *)self->_textLayoutCache layoutForIndex:v3];

  return v6;
}

- (id)_bodyTextLayoutRequestWithTotalWidth:(double)width
{
  v5 = objc_alloc_init(SUUITextLayoutRequest);
  v10 = 0;
  editorial = self->_editorial;
  if (editorial)
  {
    [(SUUIEditorialComponent *)editorial editorialStyle];
    editorial = self->_editorial;
  }

  bodyAttributedText = [(SUUIEditorialComponent *)editorial bodyAttributedText];
  [(SUUITextLayoutRequest *)v5 setAttributedText:bodyAttributedText];

  [(SUUITextLayoutRequest *)v5 setFontWeight:0];
  [(SUUITextLayoutRequest *)v5 setNumberOfLines:[(SUUIEditorialComponent *)self->_editorial maximumBodyLines]];
  bodyText = [(SUUIEditorialComponent *)self->_editorial bodyText];
  [(SUUITextLayoutRequest *)v5 setText:bodyText];

  [(SUUITextLayoutRequest *)v5 setTextAlignment:SUUICTTextAlignmentForPageComponentAlignment(v11)];
  [(SUUITextLayoutRequest *)v5 setWidth:width];
  if (0.0 > 0.00000011921)
  {
    [(SUUITextLayoutRequest *)v5 setFontSize:0.0];
  }

  return v5;
}

- (id)_linkLayoutRequestWithTotalWidth:(double)width
{
  v5 = objc_alloc_init(SUUIEditorialLinkLayoutRequest);
  links = [(SUUIEditorialComponent *)self->_editorial links];
  [(SUUIEditorialLinkLayoutRequest *)v5 setLinks:links];

  [(SUUIEditorialLinkLayoutRequest *)v5 setWidth:width];

  return v5;
}

- (id)_titleTextLayoutRequestWithTotalWidth:(double)width
{
  v5 = objc_alloc_init(SUUITextLayoutRequest);
  v14 = 0;
  editorial = self->_editorial;
  if (editorial)
  {
    [(SUUIEditorialComponent *)editorial editorialStyle:0];
  }

  [(SUUITextLayoutRequest *)v5 setFontWeight:0, v14];
  titleText = [(SUUIEditorialComponent *)self->_editorial titleText];
  [(SUUITextLayoutRequest *)v5 setText:titleText];

  [(SUUITextLayoutRequest *)v5 setTextAlignment:SUUICTTextAlignmentForPageComponentAlignment(v15)];
  [(SUUITextLayoutRequest *)v5 setWidth:width];
  LODWORD(v8) = 0;
  if (0.0 <= 0.00000011921)
  {
    currentDevice = [MEMORY[0x277D75418] currentDevice];
    userInterfaceIdiom = [currentDevice userInterfaceIdiom];

    if (userInterfaceIdiom == 1)
    {
      v12 = &kSUUITextBoxLayoutTitleFontSizeIPad;
    }

    else
    {
      v12 = &kSUUITextBoxLayoutTitleFontSizeIPhone;
    }

    v9 = *v12;
  }

  else
  {
    v9 = 0.0;
  }

  [(SUUITextLayoutRequest *)v5 setFontSize:v9];

  return v5;
}

@end