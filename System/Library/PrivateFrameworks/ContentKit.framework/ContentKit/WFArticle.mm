@interface WFArticle
+ (WFArticle)articleWithTitle:(id)title author:(id)author publishedDate:(id)date body:(id)body excerpt:(id)excerpt numberOfWords:(unint64_t)words mainImageURL:(id)l URL:(id)self0;
+ (id)mainImageURLFromHTML:(id)l;
+ (id)objectWithWFSerializedRepresentation:(id)representation;
+ (id)summaryOfParagraph:(id)paragraph;
+ (unint64_t)numberOfWordsInString:(id)string;
+ (void)fetchArticleFromURL:(id)l pageHTML:(id)mL completionHandler:(id)handler;
- (BOOL)isEqual:(id)equal;
- (WFArticle)initWithCoder:(id)coder;
- (WFArticle)initWithTitle:(id)title author:(id)author publishedDate:(id)date body:(id)body excerpt:(id)excerpt numberOfWords:(unint64_t)words mainImageURL:(id)l URL:(id)self0;
- (id)wfSerializedRepresentation;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation WFArticle

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  title = [(WFArticle *)self title];
  [coderCopy encodeObject:title forKey:@"title"];

  author = [(WFArticle *)self author];
  [coderCopy encodeObject:author forKey:@"author"];

  publishedDate = [(WFArticle *)self publishedDate];
  [coderCopy encodeObject:publishedDate forKey:@"publishedDate"];

  body = [(WFArticle *)self body];
  [coderCopy encodeObject:body forKey:@"body"];

  excerpt = [(WFArticle *)self excerpt];
  [coderCopy encodeObject:excerpt forKey:@"excerpt"];

  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[WFArticle numberOfWords](self, "numberOfWords")}];
  [coderCopy encodeObject:v10 forKey:@"numberOfWords"];

  mainImageURL = [(WFArticle *)self mainImageURL];
  [coderCopy encodeObject:mainImageURL forKey:@"mainImageURL"];

  v12 = [(WFArticle *)self URL];
  [coderCopy encodeObject:v12 forKey:@"URL"];
}

- (WFArticle)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"title"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"author"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"publishedDate"];
  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"body"];
  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"excerpt"];
  v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"numberOfWords"];
  unsignedIntegerValue = [v10 unsignedIntegerValue];

  v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"mainImageURL"];
  v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"URL"];

  v14 = [(WFArticle *)self initWithTitle:v5 author:v6 publishedDate:v7 body:v8 excerpt:v9 numberOfWords:unsignedIntegerValue mainImageURL:v12 URL:v13];
  return v14;
}

- (id)wfSerializedRepresentation
{
  v24[1] = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  title = [(WFArticle *)self title];

  if (title)
  {
    title2 = [(WFArticle *)self title];
    [v3 setObject:title2 forKeyedSubscript:@"title"];
  }

  author = [(WFArticle *)self author];

  if (author)
  {
    author2 = [(WFArticle *)self author];
    [v3 setObject:author2 forKeyedSubscript:@"author"];
  }

  publishedDate = [(WFArticle *)self publishedDate];

  if (publishedDate)
  {
    publishedDate2 = [(WFArticle *)self publishedDate];
    [v3 setObject:publishedDate2 forKeyedSubscript:@"publishedDate"];
  }

  body = [(WFArticle *)self body];

  if (body)
  {
    body2 = [(WFArticle *)self body];
    [v3 setObject:body2 forKeyedSubscript:@"body"];
  }

  excerpt = [(WFArticle *)self excerpt];

  if (excerpt)
  {
    excerpt2 = [(WFArticle *)self excerpt];
    [v3 setObject:excerpt2 forKeyedSubscript:@"excerpt"];
  }

  if ([(WFArticle *)self numberOfWords])
  {
    v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[WFArticle numberOfWords](self, "numberOfWords")}];
    [v3 setObject:v14 forKeyedSubscript:@"numberOfWords"];
  }

  mainImageURL = [(WFArticle *)self mainImageURL];

  if (mainImageURL)
  {
    mainImageURL2 = [(WFArticle *)self mainImageURL];
    absoluteString = [mainImageURL2 absoluteString];
    [v3 setObject:absoluteString forKeyedSubscript:@"mainImageURL"];
  }

  v18 = [(WFArticle *)self URL];

  if (v18)
  {
    v19 = [(WFArticle *)self URL];
    absoluteString2 = [v19 absoluteString];
    [v3 setObject:absoluteString2 forKeyedSubscript:@"URL"];
  }

  v23 = @"link.contentkit.article";
  v24[0] = v3;
  v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:&v23 count:1];

  return v21;
}

- (unint64_t)hash
{
  v3 = [(WFArticle *)self URL];
  v4 = [v3 hash];
  title = [(WFArticle *)self title];
  v6 = [title hash];

  return v6 ^ v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v12 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      title = [(WFArticle *)self title];
      title2 = [(WFArticle *)v5 title];
      if (title == title2)
      {
        v11 = 0;
      }

      else
      {
        title3 = [(WFArticle *)self title];
        title4 = [(WFArticle *)v5 title];
        v10 = [title3 isEqualToString:title4];

        v11 = v10 ^ 1;
      }

      author = [(WFArticle *)self author];
      author2 = [(WFArticle *)v5 author];
      if (author == author2)
      {
        v51 = 0;
      }

      else
      {
        author3 = [(WFArticle *)self author];
        author4 = [(WFArticle *)v5 author];
        v17 = [author3 isEqualToString:author4];

        v51 = v17 ^ 1;
      }

      publishedDate = [(WFArticle *)self publishedDate];
      publishedDate2 = [(WFArticle *)v5 publishedDate];
      if (publishedDate == publishedDate2)
      {
        v50 = 0;
      }

      else
      {
        publishedDate3 = [(WFArticle *)self publishedDate];
        publishedDate4 = [(WFArticle *)v5 publishedDate];
        v22 = [publishedDate3 isEqualToDate:publishedDate4];

        v50 = v22 ^ 1;
      }

      body = [(WFArticle *)self body];
      body2 = [(WFArticle *)v5 body];
      if (body == body2)
      {
        v49 = 0;
      }

      else
      {
        body3 = [(WFArticle *)self body];
        body4 = [(WFArticle *)v5 body];
        v27 = [body3 isEqualToString:body4];

        v49 = v27 ^ 1;
      }

      excerpt = [(WFArticle *)self excerpt];
      excerpt2 = [(WFArticle *)v5 excerpt];
      if (excerpt == excerpt2)
      {
        v33 = 0;
      }

      else
      {
        excerpt3 = [(WFArticle *)self excerpt];
        excerpt4 = [(WFArticle *)v5 excerpt];
        v32 = [excerpt3 isEqualToString:excerpt4];

        v33 = v32 ^ 1;
      }

      mainImageURL = [(WFArticle *)self mainImageURL];
      mainImageURL2 = [(WFArticle *)v5 mainImageURL];
      if (mainImageURL == mainImageURL2)
      {
        v38 = 1;
      }

      else
      {
        mainImageURL3 = [(WFArticle *)self mainImageURL];
        mainImageURL4 = [(WFArticle *)v5 mainImageURL];
        v38 = [mainImageURL3 isEqual:mainImageURL4];
      }

      v39 = [(WFArticle *)self URL];
      v40 = [(WFArticle *)v5 URL];
      if (v39 == v40)
      {
        v48 = 1;
      }

      else
      {
        v41 = [(WFArticle *)self URL];
        [(WFArticle *)v5 URL];
        v42 = v33;
        v43 = v38;
        v45 = v44 = v11;
        v48 = [v41 isEqual:v45];

        v11 = v44;
        v38 = v43;
        v33 = v42;
      }

      if ((v11 | v51 | v50 | v49 | v33))
      {
        v12 = 0;
      }

      else
      {
        numberOfWords = [(WFArticle *)self numberOfWords];
        v12 = (numberOfWords == [(WFArticle *)v5 numberOfWords]) & v38 & v48;
      }
    }

    else
    {
      v12 = 0;
    }
  }

  return v12;
}

- (WFArticle)initWithTitle:(id)title author:(id)author publishedDate:(id)date body:(id)body excerpt:(id)excerpt numberOfWords:(unint64_t)words mainImageURL:(id)l URL:(id)self0
{
  titleCopy = title;
  authorCopy = author;
  dateCopy = date;
  bodyCopy = body;
  excerptCopy = excerpt;
  lCopy = l;
  rLCopy = rL;
  v39.receiver = self;
  v39.super_class = WFArticle;
  v23 = [(WFArticle *)&v39 init];
  if (v23)
  {
    v24 = [titleCopy copy];
    title = v23->_title;
    v23->_title = v24;

    v26 = [authorCopy copy];
    author = v23->_author;
    v23->_author = v26;

    v28 = [dateCopy copy];
    publishedDate = v23->_publishedDate;
    v23->_publishedDate = v28;

    v30 = [bodyCopy copy];
    body = v23->_body;
    v23->_body = v30;

    v32 = [excerptCopy copy];
    excerpt = v23->_excerpt;
    v23->_excerpt = v32;

    v23->_numberOfWords = words;
    v34 = [lCopy copy];
    mainImageURL = v23->_mainImageURL;
    v23->_mainImageURL = v34;

    v36 = [rLCopy copy];
    URL = v23->_URL;
    v23->_URL = v36;
  }

  return v23;
}

+ (id)objectWithWFSerializedRepresentation:(id)representation
{
  representationCopy = representation;
  v4 = [representationCopy wfObjectOfClass:objc_opt_class() forKey:@"link.contentkit.article"];

  v19 = [v4 wfObjectOfClass:objc_opt_class() forKey:@"title"];
  v5 = [v4 wfObjectOfClass:objc_opt_class() forKey:@"author"];
  v6 = [v4 wfObjectOfClass:objc_opt_class() forKey:@"publishedDate"];
  v7 = [v4 wfObjectOfClass:objc_opt_class() forKey:@"body"];
  v8 = [v4 wfObjectOfClass:objc_opt_class() forKey:@"excerpt"];
  v9 = [v4 wfObjectOfClass:objc_opt_class() forKey:@"numberOfWords"];
  integerValue = [v9 integerValue];

  v11 = [v4 wfObjectOfClass:objc_opt_class() forKey:@"mainImageURL"];
  v12 = [v4 wfObjectOfClass:objc_opt_class() forKey:@"URL"];
  v13 = v12;
  if (v11)
  {
    v14 = [MEMORY[0x277CBEBC0] URLWithString:v11];
    if (v13)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v14 = 0;
    if (v12)
    {
LABEL_3:
      v15 = [MEMORY[0x277CBEBC0] URLWithString:v13];
      v16 = [self articleWithTitle:v19 author:v5 publishedDate:v6 body:v7 excerpt:v8 numberOfWords:integerValue mainImageURL:v14 URL:v15];

      if (!v11)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  v16 = [self articleWithTitle:v19 author:v5 publishedDate:v6 body:v7 excerpt:v8 numberOfWords:integerValue mainImageURL:v14 URL:0];
  if (v11)
  {
LABEL_4:
  }

LABEL_5:

  return v16;
}

+ (WFArticle)articleWithTitle:(id)title author:(id)author publishedDate:(id)date body:(id)body excerpt:(id)excerpt numberOfWords:(unint64_t)words mainImageURL:(id)l URL:(id)self0
{
  rLCopy = rL;
  lCopy = l;
  excerptCopy = excerpt;
  bodyCopy = body;
  dateCopy = date;
  authorCopy = author;
  titleCopy = title;
  v24 = [[self alloc] initWithTitle:titleCopy author:authorCopy publishedDate:dateCopy body:bodyCopy excerpt:excerptCopy numberOfWords:words mainImageURL:lCopy URL:rLCopy];

  return v24;
}

+ (id)mainImageURLFromHTML:(id)l
{
  v3 = [WFRichTextContentItem normalizedHTMLDocumentFromHTML:l];
  v4 = [v3 dataUsingEncoding:4];

  Memory = htmlReadMemory([v4 bytes], objc_msgSend(v4, "length"), 0, 0, 2049);
  v6 = xmlXPathNewContext(Memory);
  RootElement = xmlDocGetRootElement(Memory);
  v8 = xmlXPathNodeEval(RootElement, "//img", v6);
  if (v8)
  {
    v9 = v8;
    p_nodeNr = &v8->nodesetval->nodeNr;
    if (p_nodeNr)
    {
      v11 = 0;
      do
      {
        if (v11 >= *p_nodeNr)
        {
          break;
        }

        Prop = xmlGetProp(*(*(p_nodeNr + 1) + 8 * v11), "src");
        if (Prop)
        {
          v13 = Prop;
          v14 = MEMORY[0x277CBEBC0];
          v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:Prop];
          v16 = [v14 URLWithString:v15];

          free(v13);
          if (v16)
          {
            goto LABEL_12;
          }
        }

        ++v11;
        p_nodeNr = &v9->nodesetval->nodeNr;
      }

      while (p_nodeNr);
      v16 = 0;
    }

    else
    {
      v16 = 0;
    }

LABEL_12:
    xmlXPathFreeObject(v9);
    xmlXPathFreeContext(v6);
    xmlFreeDoc(Memory);
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

+ (id)summaryOfParagraph:(id)paragraph
{
  paragraphCopy = paragraph;
  v4 = objc_opt_new();
  v15[0] = 0;
  v15[1] = v15;
  v15[2] = 0x2020000000;
  v15[3] = 0;
  v5 = [paragraphCopy length];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __32__WFArticle_summaryOfParagraph___block_invoke;
  v11[3] = &unk_2783490C0;
  v6 = v4;
  v12 = v6;
  v7 = paragraphCopy;
  v13 = v7;
  v14 = v15;
  [v7 enumerateSubstringsInRange:0 options:v5 usingBlock:{4, v11}];
  v8 = v13;
  v9 = v6;

  _Block_object_dispose(v15, 8);

  return v9;
}

void __32__WFArticle_summaryOfParagraph___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, _BYTE *a7)
{
  if ([*(a1 + 32) length] <= 0xC7)
  {
    v11 = *(a1 + 32);
    v12 = [*(a1 + 40) substringWithRange:{a5, a6}];
    [v11 appendString:v12];
  }

  if (++*(*(*(a1 + 48) + 8) + 24) == 3)
  {
    *a7 = 1;
  }
}

+ (unint64_t)numberOfWordsInString:(id)string
{
  stringCopy = string;
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  v4 = [stringCopy length];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __35__WFArticle_numberOfWordsInString___block_invoke;
  v7[3] = &unk_278349098;
  v7[4] = &v8;
  [stringCopy enumerateSubstringsInRange:0 options:v4 usingBlock:{3, v7}];
  v5 = v9[3];
  _Block_object_dispose(&v8, 8);

  return v5;
}

+ (void)fetchArticleFromURL:(id)l pageHTML:(id)mL completionHandler:(id)handler
{
  lCopy = l;
  mLCopy = mL;
  handlerCopy = handler;
  if (!handlerCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFArticle.m" lineNumber:84 description:{@"Invalid parameter not satisfying: %@", @"completionHandler"}];
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __60__WFArticle_fetchArticleFromURL_pageHTML_completionHandler___block_invoke;
  block[3] = &unk_278349070;
  v19 = handlerCopy;
  selfCopy = self;
  v17 = mLCopy;
  v18 = lCopy;
  v12 = lCopy;
  v13 = mLCopy;
  v14 = handlerCopy;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __60__WFArticle_fetchArticleFromURL_pageHTML_completionHandler___block_invoke(uint64_t a1)
{
  v19 = 0;
  v20 = &v19;
  v21 = 0x2050000000;
  v2 = get_SFReaderExtractorClass_softClass;
  v22 = get_SFReaderExtractorClass_softClass;
  if (!get_SFReaderExtractorClass_softClass)
  {
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __get_SFReaderExtractorClass_block_invoke;
    v18[3] = &unk_27834A178;
    v18[4] = &v19;
    __get_SFReaderExtractorClass_block_invoke(v18);
    v2 = v20[3];
  }

  v3 = v2;
  _Block_object_dispose(&v19, 8);
  v4 = objc_alloc_init(v2);
  v11 = MEMORY[0x277D85DD0];
  v12 = 3221225472;
  v13 = __60__WFArticle_fetchArticleFromURL_pageHTML_completionHandler___block_invoke_2;
  v14 = &unk_278349048;
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  v16 = v5;
  v17 = v6;
  v7 = v4;
  v15 = v7;
  v8 = _Block_copy(&v11);
  v10 = *(a1 + 32);
  v9 = *(a1 + 40);
  if (v10)
  {
    [v7 getExtractedDataForURL:v9 withData:v10 withCompletion:{v8, v11, v12, v13, v14}];
  }

  else
  {
    [v7 getExtractedDataForURL:v9 withCompletion:{v8, v11, v12, v13, v14}];
  }
}

void __60__WFArticle_fetchArticleFromURL_pageHTML_completionHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v62[1] = *MEMORY[0x277D85DE8];
  v4 = a2;
  v53 = a3;
  v5 = [v53 domain];
  v6 = get_SFReaderExtractorErrorDomain();
  if (![v5 isEqualToString:v6])
  {

    goto LABEL_5;
  }

  v7 = [v53 code];

  if (v7 != 1)
  {
LABEL_5:
    v14 = v53;
    if (!v4 || v53)
    {
      (*(*(a1 + 40) + 16))();
      goto LABEL_19;
    }

    v54 = 0;
    v55 = &v54;
    v56 = 0x2020000000;
    v15 = getNSDocumentTypeDocumentOptionSymbolLoc_ptr;
    v57 = getNSDocumentTypeDocumentOptionSymbolLoc_ptr;
    if (!getNSDocumentTypeDocumentOptionSymbolLoc_ptr)
    {
      v16 = UIFoundationLibrary_21586();
      v55[3] = dlsym(v16, "NSDocumentTypeDocumentOption");
      getNSDocumentTypeDocumentOptionSymbolLoc_ptr = v55[3];
      v15 = v55[3];
    }

    _Block_object_dispose(&v54, 8);
    if (v15)
    {
      v17 = *v15;
      v54 = 0;
      v55 = &v54;
      v56 = 0x2020000000;
      v18 = getNSHTMLTextDocumentTypeSymbolLoc_ptr_21589;
      v57 = getNSHTMLTextDocumentTypeSymbolLoc_ptr_21589;
      v58 = v17;
      if (!getNSHTMLTextDocumentTypeSymbolLoc_ptr_21589)
      {
        v19 = UIFoundationLibrary_21586();
        v55[3] = dlsym(v19, "NSHTMLTextDocumentType");
        getNSHTMLTextDocumentTypeSymbolLoc_ptr_21589 = v55[3];
        v18 = v55[3];
      }

      _Block_object_dispose(&v54, 8);
      if (v18)
      {
        v20 = *v18;
        v60[0] = v20;
        v54 = 0;
        v55 = &v54;
        v56 = 0x2020000000;
        v21 = getNSCharacterEncodingDocumentAttributeSymbolLoc_ptr_21593;
        v57 = getNSCharacterEncodingDocumentAttributeSymbolLoc_ptr_21593;
        if (!getNSCharacterEncodingDocumentAttributeSymbolLoc_ptr_21593)
        {
          v22 = UIFoundationLibrary_21586();
          v55[3] = dlsym(v22, "NSCharacterEncodingDocumentAttribute");
          getNSCharacterEncodingDocumentAttributeSymbolLoc_ptr_21593 = v55[3];
          v21 = v55[3];
        }

        _Block_object_dispose(&v54, 8);
        if (v21)
        {
          v59 = *v21;
          v60[1] = &unk_282F7A348;
          v23 = MEMORY[0x277CBEAC0];
          v24 = v59;
          v50 = [v23 dictionaryWithObjects:v60 forKeys:&v58 count:2];

          v25 = objc_alloc(MEMORY[0x277CCA898]);
          v26 = [v4 body];
          v51 = [v25 initWithData:v26 options:v50 documentAttributes:0 error:0];

          v27 = objc_alloc(MEMORY[0x277CCACA8]);
          v28 = [v4 body];
          v49 = [v27 initWithData:v28 encoding:4];

          v29 = [v4 publishedDate];
          v30 = [WFDateDetector datesInString:v29 error:0];
          v48 = [v30 firstObject];

          v31 = [v4 title];
          v32 = [v4 author];
          v33 = *(a1 + 48);
          v34 = [v51 string];
          v35 = [v33 summaryOfParagraph:v34];
          v36 = *(a1 + 48);
          v37 = [v51 string];
          v38 = [v36 numberOfWordsInString:v37];
          v39 = [v4 mainImageURL];
          v40 = [v4 url];
          v41 = [WFArticle articleWithTitle:v31 author:v32 publishedDate:v48 body:v49 excerpt:v35 numberOfWords:v38 mainImageURL:v39 URL:v40];

          (*(*(a1 + 40) + 16))();
          goto LABEL_17;
        }

        v46 = [MEMORY[0x277CCA890] currentHandler];
        v47 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSAttributedStringDocumentAttributeKey getNSCharacterEncodingDocumentAttribute(void)"];
        [v46 handleFailureInFunction:v47 file:@"WFArticle.m" lineNumber:28 description:{@"%s", dlerror()}];
      }

      else
      {
        v44 = [MEMORY[0x277CCA890] currentHandler];
        v45 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSAttributedStringDocumentAttributeKey getNSHTMLTextDocumentType(void)"];
        [v44 handleFailureInFunction:v45 file:@"WFArticle.m" lineNumber:27 description:{@"%s", dlerror()}];
      }
    }

    else
    {
      v42 = [MEMORY[0x277CCA890] currentHandler];
      v43 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSAttributedStringDocumentReadingOptionKey getNSDocumentTypeDocumentOption(void)"];
      [v42 handleFailureInFunction:v43 file:@"WFArticle.m" lineNumber:29 description:{@"%s", dlerror()}];
    }

    __break(1u);
  }

  v8 = *(a1 + 40);
  v9 = MEMORY[0x277CCA9B8];
  v10 = get_SFReaderExtractorErrorDomain();
  v61 = *MEMORY[0x277CCA450];
  v11 = WFLocalizedString(@"An article could not be extracted from the given information.");
  v62[0] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v62 forKeys:&v61 count:1];
  v13 = [v9 errorWithDomain:v10 code:1 userInfo:v12];
  (*(v8 + 16))(v8, 0, v13);

LABEL_17:
  v14 = v53;
LABEL_19:
}

@end