@interface PBHeadersFooters
+ (PptHeadersFootersAtom)headersFootersAtomWithHeadersFootersContainer:(id)container;
+ (id)headersFootersContainerWithSlideContainer:(id)container state:(id)state;
+ (void)addCopyOfHeaderFooterPlaceholderOfType:(int)type toDrawables:(id)drawables slideBase:(id)base headersFootersContainer:(id)container state:(id)state;
+ (void)readHeaderFooterTextFromHeadersFootersContainer:(id)container toPlaceholderShape:(id)shape;
+ (void)readHeadersFootersFromSlideContainer:(id)container toMasterSlide:(id)slide drawables:(id)drawables state:(id)state;
+ (void)readHeadersFootersFromSlideContainer:(id)container toSlide:(id)slide drawables:(id)drawables state:(id)state;
+ (void)readHeadersFootersToSlideLayout:(id)layout drawables:(id)drawables state:(id)state;
@end

@implementation PBHeadersFooters

+ (id)headersFootersContainerWithSlideContainer:(id)container state:(id)state
{
  stateCopy = state;
  v6 = [container firstChildOfType:4057];
  if (!v6)
  {
    DocumentRef = PptBinaryReader::getDocumentRef([stateCopy reader]);
    documentRoot = [stateCopy documentRoot];
    v9 = [documentRoot pbReferenceWithID:DocumentRef];

    v6 = [v9 firstChildOfType:4057];
  }

  return v6;
}

+ (PptHeadersFootersAtom)headersFootersAtomWithHeadersFootersContainer:(id)container
{
  containerCopy = container;
  {
    PptHeadersFootersAtom::PptHeadersFootersAtom(&+[PBHeadersFooters headersFootersAtomWithHeadersFootersContainer:]::srcDefaultHFAtom);
    __cxa_atexit(PptHeadersFootersAtom::~PptHeadersFootersAtom, &+[PBHeadersFooters headersFootersAtomWithHeadersFootersContainer:]::srcDefaultHFAtom, &dword_25D297000);
  }

  v4 = [containerCopy firstChildOfType:4058];
  eshObject = [v4 eshObject];

  if (eshObject)
  {
    v6 = eshObject;
  }

  else
  {
    v6 = &+[PBHeadersFooters headersFootersAtomWithHeadersFootersContainer:]::srcDefaultHFAtom;
  }

  return v6;
}

+ (void)readHeaderFooterTextFromHeadersFootersContainer:(id)container toPlaceholderShape:(id)shape
{
  containerCopy = container;
  shapeCopy = shape;
  if (shapeCopy)
  {
    v7 = [self headersFootersAtomWithHeadersFootersContainer:containerCopy];
    clientData = [shapeCopy clientData];
    placeholder = [clientData placeholder];
    type = [placeholder type];

    if (type == 4)
    {
      if (*(v7 + 52) != 1)
      {
        goto LABEL_14;
      }

      textBody = [shapeCopy textBody];
      v11 = [textBody findFirstTextRunOfClass:objc_opt_class()];

      [v11 setFormat:0xFFFFFFFFLL];
      if (*(v7 + 53) == 1)
      {
        [v11 setFormat:(*(v7 + 48) + 1)];
      }

      v13 = [PBUtils readStringWithInstance:0 fromContainer:containerCopy];
      if ([v13 length])
      {
        [v11 setText:v13];
      }

      goto LABEL_12;
    }

    if (type == 6 && *(v7 + 57) == 1)
    {
      v11 = [PBUtils readStringWithInstance:2 fromContainer:containerCopy];
      if (![v11 length])
      {
LABEL_13:

        goto LABEL_14;
      }

      textBody2 = [shapeCopy textBody];
      v13 = [textBody2 findFirstTextRunOfClass:objc_opt_class()];

      [v13 setText:v11];
LABEL_12:

      goto LABEL_13;
    }
  }

LABEL_14:
}

+ (void)addCopyOfHeaderFooterPlaceholderOfType:(int)type toDrawables:(id)drawables slideBase:(id)base headersFootersContainer:(id)container state:(id)state
{
  v10 = *&type;
  drawablesCopy = drawables;
  baseCopy = base;
  containerCopy = container;
  stateCopy = state;
  parentSlideBase = [baseCopy parentSlideBase];
  v16 = [parentSlideBase placeholderWithType:v10 placeholderTypeIndex:0 overrideIndex:1];
  if (v16)
  {
    selfCopy = self;
    v27 = containerCopy;
    v17 = objc_alloc_init(OADShape);
    v18 = objc_alloc_init(PDOfficeArtClient);
    [(OADDrawable *)v17 setClientData:v18];
    v19 = objc_alloc_init(PDPlaceholder);
    [(PDOfficeArtClient *)v18 setPlaceholder:v19];
    clientData = [v16 clientData];
    placeholder = [clientData placeholder];

    index = [placeholder index];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v23 = 0;
    }

    else
    {
      v23 = 8;
    }

    [(PDPlaceholder *)v19 setIndex:(v23 + index)];
    -[PDPlaceholder setType:](v19, "setType:", [placeholder type]);
    -[PDPlaceholder setSize:](v19, "setSize:", [placeholder size]);
    v24 = [stateCopy sourceTextBoxContainerHolderForTargetShape:v16];
    if (v24)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [stateCopy setSourceTextBoxContainerHolder:v24 forTargetShape:v17];
      }

      v25 = objc_alloc_init(OADTextBody);
      [PBTextBlock readClientTextBox:v24 textBody:v25 state:stateCopy];
      [(OADShape *)v17 setTextBody:v25];
    }

    [selfCopy readHeaderFooterTextFromHeadersFootersContainer:v27 toPlaceholderShape:v17];
    [drawablesCopy addObject:v17];

    containerCopy = v27;
  }
}

+ (void)readHeadersFootersFromSlideContainer:(id)container toMasterSlide:(id)slide drawables:(id)drawables state:(id)state
{
  containerCopy = container;
  slideCopy = slide;
  drawablesCopy = drawables;
  stateCopy = state;
  v25 = [self headersFootersContainerWithSlideContainer:0 state:?];
  v11 = [self headersFootersAtomWithHeadersFootersContainer:v25];
  [slideCopy setHeaderPlaceholderIsVisible:{PptHeadersFootersAtom::isRendered(v11, 10)}];
  [slideCopy setFooterPlaceholderIsVisible:{PptHeadersFootersAtom::isRendered(v11, 9)}];
  [slideCopy setDateTimePlaceholderIsVisible:{PptHeadersFootersAtom::isRendered(v11, 7)}];
  [slideCopy setSlideNumberPlaceholderIsVisible:{PptHeadersFootersAtom::isRendered(v11, 8)}];
  v12 = [PBProgTag binaryTagDataWithName:L"___PPT12" inProgTagsParent:containerCopy];
  v13 = v12;
  if (v12)
  {
    v14 = [v12 firstChildOfType:1060];
    Atom = ESDAtomAccess<PptRoundTripHeaderFooterDefaultsAtom>::extractAtom(v14, 0);

    if (Atom)
    {
      [slideCopy setHeaderPlaceholderIsVisible:Atom[47]];
      [slideCopy setFooterPlaceholderIsVisible:Atom[46]];
      [slideCopy setDateTimePlaceholderIsVisible:Atom[45]];
      [slideCopy setSlideNumberPlaceholderIsVisible:Atom[48]];
    }
  }

  for (i = 0; i < [drawablesCopy count]; ++i)
  {
    v17 = [drawablesCopy objectAtIndex:i];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v18 = v17;
      clientData = [v18 clientData];
      placeholder = [clientData placeholder];
      type = [placeholder type];

      if ((type & 0xFFFFFFFD) == 4)
      {
        [self readHeaderFooterTextFromHeadersFootersContainer:v25 toPlaceholderShape:v18];
      }
    }
  }
}

+ (void)readHeadersFootersToSlideLayout:(id)layout drawables:(id)drawables state:(id)state
{
  layoutCopy = layout;
  drawablesCopy = drawables;
  stateCopy = state;
  v10 = [self headersFootersContainerWithSlideContainer:0 state:stateCopy];
  [self addCopyOfHeaderFooterPlaceholderOfType:4 toDrawables:drawablesCopy slideBase:layoutCopy headersFootersContainer:v10 state:stateCopy];
  [self addCopyOfHeaderFooterPlaceholderOfType:6 toDrawables:drawablesCopy slideBase:layoutCopy headersFootersContainer:v10 state:stateCopy];
}

+ (void)readHeadersFootersFromSlideContainer:(id)container toSlide:(id)slide drawables:(id)drawables state:(id)state
{
  slideCopy = slide;
  drawablesCopy = drawables;
  stateCopy = state;
  v12 = [self headersFootersContainerWithSlideContainer:container state:stateCopy];
  v13 = [self headersFootersAtomWithHeadersFootersContainer:v12];
  if (v13[52] == 1)
  {
    [self addCopyOfHeaderFooterPlaceholderOfType:4 toDrawables:drawablesCopy slideBase:slideCopy headersFootersContainer:v12 state:stateCopy];
  }

  if (v13[57] == 1)
  {
    [self addCopyOfHeaderFooterPlaceholderOfType:6 toDrawables:drawablesCopy slideBase:slideCopy headersFootersContainer:v12 state:stateCopy];
  }

  if (v13[55] == 1)
  {
    [stateCopy setHasSlideNumberPlaceholder:1];
  }
}

@end