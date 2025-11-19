@interface PMPresentationMapper
- (CGSize)pageSizeForDevice;
- (CGSize)pageSizeForDeviceIncludingMargins:(BOOL)a3;
- (CGSize)slideSize;
- (PMPresentationMapper)initWithDocument:(id)a3 archiver:(id)a4;
- (id)blipAtIndex:(unsigned int)a3;
- (id)defaultStyleSheet;
- (void)_pushEmptySlideWithMessage:(id)a3;
- (void)finishMappingWithState:(id)a3;
- (void)mapElement:(id)a3 atIndex:(unint64_t)a4 withState:(id)a5 isLastElement:(BOOL)a6;
- (void)setHtmlDocumentSizeInArchiver;
- (void)startMappingWithState:(id)a3;
@end

@implementation PMPresentationMapper

- (CGSize)slideSize
{
  v2 = [(CMMapper *)self document];
  [v2 slideSize];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

- (void)setHtmlDocumentSizeInArchiver
{
  [(PMPresentationMapper *)self pageSizeForDeviceIncludingMargins:[(CMArchiveManager *)self->super.super.mArchiver noDecorations]^ 1];
  v4 = v3;
  [(CMArchiveManager *)self->super.super.mArchiver setHTMLWidth:v5];
  mArchiver = self->super.super.mArchiver;

  [(CMArchiveManager *)mArchiver setHTMLHeight:v4];
}

- (CGSize)pageSizeForDevice
{
  [(PMPresentationMapper *)self pageSizeForDeviceIncludingMargins:0];
  result.height = v3;
  result.width = v2;
  return result;
}

- (id)defaultStyleSheet
{
  v2 = [(CMMapper *)self archiver];
  v3 = [v2 noDecorations];

  if (v3)
  {
    v4 = @"@media screen { body { margin : 0 !important; } }\n";
  }

  else
  {
    v4 = @"@media screen {\nbody {\nbackground: #ACB2BB;\n}\n}\n";
  }

  v5 = [@"body\n{\n-webkit-text-size-adjust: none\n}\n@media print {\ndiv.loading-slide {\ndisplay: none;\n}\n}\ndiv\n{\nmargin-top: 0;\nmargin-bottom: 0;\nfont-family:Arial sans-serif;\n}\n p\n{\nmargin-top:div.loading-slide\n{\noverflow:hidden;\npage-break-inside: avoid;\nmargin-top: 5px;\n}\ndiv.slide:first-of-type {\n  margin-top: 0;\n}\ndiv.loading-slide\n{\nposition: absolute;\nbackground:#BBBBBB;\n}\n"  0;\nmargin-bottom:"stringByAppendingString:"  0;\nword-wrap:v4 break-word;\n}\ntable\n{\nborder-collapse:?  collapse;\nborder-color:?  black;\nborder-style:?  solid;\nborder-width:?  thin;\n}\ntd\n{\nword-wrap:? break-word;\nfont-family:? Arial;\nvertical-align:? top;\nborder-style:?  solid;\nborder-width:?  thin;\n}\ndiv.slide\n{\nposition:?relative;\n}div.slide];;

  return v5;
}

- (PMPresentationMapper)initWithDocument:(id)a3 archiver:(id)a4
{
  v6 = a3;
  v7 = a4;
  v17.receiver = self;
  v17.super_class = PMPresentationMapper;
  v8 = [(CMDocumentMapper *)&v17 initWithDocument:v6 archiver:v7];
  v9 = v8;
  if (v8)
  {
    [(PMPresentationMapper *)v8 slideSize];
    v9->mWidth = (v10 + 0.0);
    v11 = objc_alloc_init(MEMORY[0x277CBEB18]);
    mSlideGuids = v9->mSlideGuids;
    v9->mSlideGuids = v11;

    v13 = objc_alloc_init(MEMORY[0x277CBEB18]);
    mSlideNames = v9->mSlideNames;
    v9->mSlideNames = v13;

    mResourceUrlPrefix = v9->mResourceUrlPrefix;
    v9->mResourceUrlPrefix = &stru_286EE1130;
  }

  return v9;
}

- (id)blipAtIndex:(unsigned int)a3
{
  v3 = *&a3;
  v4 = [(CMMapper *)self document];
  v5 = [v4 blips];
  v6 = [v5 blipAtIndex:v3];

  return v6;
}

- (CGSize)pageSizeForDeviceIncludingMargins:(BOOL)a3
{
  v3 = a3;
  [(PMPresentationMapper *)self slideSize];
  if (v3)
  {
    v5 = v5 + 5.0;
    v4 = v4 + -3.0;
  }

  result.height = v5;
  result.width = v4;
  return result;
}

- (void)startMappingWithState:(id)a3
{
  v30 = [(CMMapper *)self document];
  [(PMPresentationMapper *)self setHtmlDocumentSizeInArchiver];
  v4 = +[CMXmlUtils copyXhtmlDocument];
  mXhtmlDoc = self->mXhtmlDoc;
  self->mXhtmlDoc = v4;

  v6 = [(PMPresentationMapper *)self documentTitle];
  v7 = [CMXmlUtils copyHeadElementWithTitle:v6 deviceWidth:self->mWidth];

  v8 = [(PMPresentationMapper *)self defaultStyleSheet];
  v9 = [OIXMLElement elementWithType:17 stringValue:v8];

  v10 = [OIXMLAttribute attributeWithName:0x286F007F0 stringValue:0x286F07970];
  [v9 addAttribute:v10];

  [v7 addChild:v9];
  v11 = MEMORY[0x277CCACA8];
  [v30 slideSize];
  v13 = v12;
  [v30 slideSize];
  v15 = [v11 stringWithFormat:@"div.slide, div.loading-slide { width: %d height: %d;}", v13, v14];;
  v16 = [OIXMLElement elementWithType:17 stringValue:v15];

  v17 = [OIXMLAttribute attributeWithName:0x286F007F0 stringValue:0x286F07970];
  [v16 addAttribute:v17];

  [v7 addChild:v16];
  v18 = [(OIXMLDocument *)self->mXhtmlDoc rootElement];
  [v18 addChild:v7];

  v19 = [OIXMLElement elementWithType:1];
  mBodyElement = self->mBodyElement;
  self->mBodyElement = v19;

  [(CMArchiveManager *)self->super.super.mArchiver commitDataAtPath:0];
  mArchiver = self->super.super.mArchiver;
  v22 = [(OIXMLDocument *)self->mXhtmlDoc openingTagString];
  [(CMArchiveManager *)mArchiver pushText:v22 toPath:0];

  v23 = self->super.super.mArchiver;
  v24 = [(OIXMLDocument *)self->mXhtmlDoc rootElement];
  v25 = [v24 openingTagString];
  [(CMArchiveManager *)v23 pushText:v25 toPath:0];

  v26 = self->super.super.mArchiver;
  v27 = [v7 XMLString];
  [(CMArchiveManager *)v26 pushText:v27 toPath:0];

  [(CMArchiveManager *)self->super.super.mArchiver pushCssToPath:0];
  v28 = self->super.super.mArchiver;
  v29 = [(OIXMLElement *)self->mBodyElement openingTagString];
  [(CMArchiveManager *)v28 pushText:v29 toPath:0];

  if (objc_opt_respondsToSelector())
  {
    [(CMArchiveManager *)self->super.super.mArchiver setAutoCommit:0];
  }

  self->mNextCommit = 1;
  self->mCurrentSlide = 0;
  self->mHasPushedFirstSlides = 0;
}

- (void)_pushEmptySlideWithMessage:(id)a3
{
  v18 = a3;
  v4 = [OIXMLElement elementWithType:3];
  v5 = [OIXMLAttribute attributeWithName:@"style" stringValue:@"position: relative width:0; height: 0"];;
  [v4 addAttribute:v5];

  v6 = [OIXMLElement elementWithType:3];
  [(PMPresentationMapper *)self slideSize];
  [(PMPresentationMapper *)self slideSize];
  v7 = objc_alloc_init(CMStyle);
  [(CMStyle *)v7 appendOriginInfoFromPoint:0.0, 0.0];
  v8 = [OIXMLAttribute attributeWithName:@"class" stringValue:@"loading-slide"];
  [v6 addAttribute:v8];

  [(CMMapper *)self addStyleUsingGlobalCacheTo:v6 style:v7 embedStyle:1];
  [v4 addChild:v6];
  v9 = objc_alloc_init(CMStyle);

  [(PMPresentationMapper *)self slideSize];
  v11 = v10;
  [(PMPresentationMapper *)self slideSize];
  v13 = v12;
  [(CMStyle *)v9 appendPropertyForName:0x286EF5C90 stringValue:0x286EFDE70];
  [(CMStyle *)v9 appendPositionInfoFromRect:0.0, v11 * 0.5 + -30.0, v13, 60.0];
  v14 = [[CMStringProperty alloc] initWithString:0x286EF56B0];
  [(CMStyle *)v9 addProperty:v14 forKey:@"text-align"];
  [(CMStyle *)v9 appendPropertyForName:0x286EF73B0 stringWithColons:@":Arial;"];
  [(CMStyle *)v9 appendPropertyForName:0x286EF73D0 stringWithColons:@":48;"];
  v15 = [OIXMLElement elementWithType:3 stringValue:v18];
  [(CMMapper *)self addStyleUsingGlobalCacheTo:v15 style:v9 embedStyle:1];
  [v6 addChild:v15];
  mArchiver = self->super.super.mArchiver;
  v17 = [v4 XMLString];
  [(CMArchiveManager *)mArchiver pushText:v17 toPath:0];
}

- (void)mapElement:(id)a3 atIndex:(unint64_t)a4 withState:(id)a5 isLastElement:(BOOL)a6
{
  v17 = a3;
  v9 = a5;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = v17;
    [(PMPresentationMapper *)self slideSize];
    v12 = v11;
    [(PMPresentationMapper *)self slideSize];
    v14 = [[PMSlideMapper alloc] initWithPDSlide:v10 slideRect:self parent:0.0, 0.0, v12, v13];
    [(PMSlideMapper *)v14 mapAt:self->mBodyElement withState:v9];
    if (self->mCurrentSlide >= self->mNextCommit)
    {
      if (!a6)
      {
        v15 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v16 = [v15 localizedStringForKey:@"Loading…" value:&stru_286EE1130 table:@"Localizable"];
        [(PMPresentationMapper *)self _pushEmptySlideWithMessage:v16];
      }

      [(CMArchiveManager *)self->super.super.mArchiver commitDataAtPath:0];
      self->mNextCommit *= 3;
      if (!self->mHasPushedFirstSlides)
      {
        self->mHasPushedFirstSlides = 1;
      }
    }

    ++self->mCurrentSlide;
  }
}

- (void)finishMappingWithState:(id)a3
{
  if ([(CMArchiveManager *)self->super.super.mArchiver isCancelled])
  {
    v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v5 = [v4 localizedStringForKey:@"This document is only partially previewed." value:&stru_286EE1130 table:@"Localizable"];
    [(PMPresentationMapper *)self _pushEmptySlideWithMessage:v5];
  }

  mArchiver = self->super.super.mArchiver;
  v7 = [(OIXMLElement *)self->mBodyElement closingTagString];
  [(CMArchiveManager *)mArchiver pushText:v7 toPath:0];

  v8 = self->super.super.mArchiver;
  v9 = [(OIXMLDocument *)self->mXhtmlDoc rootElement];
  v10 = [v9 closingTagString];
  [(CMArchiveManager *)v8 pushText:v10 toPath:0];

  v11 = self->super.super.mArchiver;
  v12 = [(OIXMLDocument *)self->mXhtmlDoc closingTagString];
  [(CMArchiveManager *)v11 pushText:v12 toPath:0];

  [(CMArchiveManager *)self->super.super.mArchiver commitDataAtPath:0];
  v13 = self->super.super.mArchiver;

  [(CMArchiveManager *)v13 closeResourceAtPath:0];
}

@end