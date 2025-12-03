@interface WFRichTextContentItem
+ (BOOL)isMissingHTMLHeaderInString:(id)string;
+ (BOOL)supportedTypeMustBeDeterminedByInstance:(id)instance;
+ (id)attributesDictionaryForType:(id)type;
+ (id)contentCategories;
+ (id)documentTypeForType:(id)type;
+ (id)localizedPluralTypeDescriptionWithContext:(id)context;
+ (id)localizedTypeDescriptionWithContext:(id)context;
+ (id)normalizedHTMLDocumentFromHTML:(id)l;
+ (id)normalizedHTMLDocumentFromHTMLData:(id)data;
+ (id)outputTypes;
+ (id)ownedTypes;
+ (id)stringConversionBehavior;
+ (void)loadAttributedStringInWebViewFromHTMLFile:(id)file handler:(id)handler attributedStringOptions:(id)options documentAttributes:(id *)attributes name:(id)name coercionOptions:(id)coercionOptions;
- (BOOL)canGenerateRepresentationForType:(id)type;
- (WFFileType)preferredFileType;
- (id)attributedString;
- (id)generateFileRepresentationForType:(id)type options:(id)options error:(id *)error;
- (void)generateAttributedString:(id)string fromFile:(id)file forClass:(Class)class coercionOptions:(id)options;
- (void)generateDataRepresentation:(id)representation fromAttributedString:(id)string forType:(id)type;
- (void)generateFileRepresentations:(id)representations options:(id)options forType:(id)type;
- (void)generateObjectRepresentations:(id)representations options:(id)options forClass:(Class)class;
- (void)generateRTFDRepresentation:(id)representation fromAttributedString:(id)string forType:(id)type;
- (void)getFileRepresentationsForSerialization:(id)serialization;
- (void)getPDFFromResource:(id)resource includeMargin:(BOOL)margin options:(id)options handler:(id)handler;
@end

@implementation WFRichTextContentItem

- (void)getPDFFromResource:(id)resource includeMargin:(BOOL)margin options:(id)options handler:(id)handler
{
  marginCopy = margin;
  handlerCopy = handler;
  optionsCopy = options;
  resourceCopy = resource;
  v12 = objc_alloc_init(WFWebResourceCapturer);
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __74__WFRichTextContentItem_getPDFFromResource_includeMargin_options_handler___block_invoke;
  v15[3] = &unk_278348570;
  v16 = v12;
  v17 = handlerCopy;
  v13 = v12;
  v14 = handlerCopy;
  [(WFWebResourceCapturer *)v13 generatePDFForWebResource:resourceCopy includeMargin:marginCopy coercionOptions:optionsCopy completionHandler:v15];
}

void __74__WFRichTextContentItem_getPDFFromResource_includeMargin_options_handler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v8[1] = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v8[0] = v5;
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:1];
  }

  else
  {
    v7 = 0;
  }

  (*(*(a1 + 40) + 16))();
}

- (WFFileType)preferredFileType
{
  internalRepresentationType = [(WFContentItem *)self internalRepresentationType];
  v4 = [internalRepresentationType conformsToClass:objc_opt_class()];

  if (v4)
  {
    preferredFileType = [MEMORY[0x277D79F68] typeWithUTType:*MEMORY[0x277CE1E50]];
  }

  else
  {
    v7.receiver = self;
    v7.super_class = WFRichTextContentItem;
    preferredFileType = [(WFContentItem *)&v7 preferredFileType];
  }

  return preferredFileType;
}

- (BOOL)canGenerateRepresentationForType:(id)type
{
  typeCopy = type;
  v5 = [(WFContentItem *)self objectForClass:objc_opt_class()];
  if (!v5)
  {
    goto LABEL_10;
  }

  if ([typeCopy conformsToClass:objc_opt_class()])
  {
    v25 = 0;
    v26 = &v25;
    v27 = 0x2020000000;
    LOBYTE(v28) = 0;
    v6 = getNSLinkAttributeName();
    v7 = [v5 length];
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __58__WFRichTextContentItem_canGenerateRepresentationForType___block_invoke;
    v24[3] = &unk_278346368;
    v24[4] = &v25;
    [v5 enumerateAttribute:v6 inRange:0 options:v7 usingBlock:{0, v24}];

    v8 = *(v26 + 24);
    v9 = &v25;
LABEL_9:
    _Block_object_dispose(v9, 8);
LABEL_11:

    return v8 & 1;
  }

  if (![typeCopy conformsToClass:objc_opt_class()])
  {
LABEL_10:
    v18.receiver = self;
    v18.super_class = WFRichTextContentItem;
    v8 = [(WFGenericFileContentItem *)&v18 canGenerateRepresentationForType:typeCopy];
    goto LABEL_11;
  }

  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0;
  v30 = 0;
  v31 = &v30;
  v32 = 0x2020000000;
  v10 = getNSAttachmentAttributeNameSymbolLoc_ptr;
  v33 = getNSAttachmentAttributeNameSymbolLoc_ptr;
  if (!getNSAttachmentAttributeNameSymbolLoc_ptr)
  {
    v25 = MEMORY[0x277D85DD0];
    v26 = 3221225472;
    v27 = __getNSAttachmentAttributeNameSymbolLoc_block_invoke;
    v28 = &unk_27834A178;
    v29 = &v30;
    v11 = UIFoundationLibrary();
    v12 = dlsym(v11, "NSAttachmentAttributeName");
    *(v29[1] + 24) = v12;
    getNSAttachmentAttributeNameSymbolLoc_ptr = *(v29[1] + 24);
    v10 = v31[3];
  }

  _Block_object_dispose(&v30, 8);
  if (v10)
  {
    v13 = *v10;
    v14 = [v5 length];
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __58__WFRichTextContentItem_canGenerateRepresentationForType___block_invoke_2;
    v19[3] = &unk_278346390;
    v19[4] = &v20;
    [v5 enumerateAttribute:v13 inRange:0 options:v14 usingBlock:{0, v19}];

    v8 = *(v21 + 24);
    v9 = &v20;
    goto LABEL_9;
  }

  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSAttributedStringKey getNSAttachmentAttributeName(void)"];
  [currentHandler handleFailureInFunction:v17 file:@"WFRichTextContentItem.m" lineNumber:47 description:{@"%s", dlerror()}];

  __break(1u);
  return result;
}

uint64_t __58__WFRichTextContentItem_canGenerateRepresentationForType___block_invoke(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  if (a2)
  {
    *(*(*(result + 32) + 8) + 24) = 1;
    *a5 = 1;
  }

  return result;
}

void __58__WFRichTextContentItem_canGenerateRepresentationForType___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  v7 = MEMORY[0x277D79F68];
  v8 = [a2 fileType];
  v9 = [v7 typeWithString:v8];

  if ([v9 conformsToUTType:*MEMORY[0x277CE1DB0]])
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
    *a5 = 1;
  }
}

- (void)generateObjectRepresentations:(id)representations options:(id)options forClass:(Class)class
{
  v54[1] = *MEMORY[0x277D85DE8];
  representationsCopy = representations;
  optionsCopy = options;
  if (objc_opt_class() != class)
  {
    if (objc_opt_class() == class)
    {
      v50[0] = MEMORY[0x277D85DD0];
      v50[1] = 3221225472;
      v50[2] = __72__WFRichTextContentItem_generateObjectRepresentations_options_forClass___block_invoke_2;
      v50[3] = &unk_2783462C8;
      v51 = representationsCopy;
      [(WFContentItem *)self getObjectRepresentation:v50 forClass:objc_opt_class() options:optionsCopy];
      v20 = v51;
    }

    else
    {
      v10 = NSStringFromClass(class);
      v11 = [@"UIPrintFormatter" isEqualToString:v10];

      if (v11)
      {
        internalRepresentationType = [(WFContentItem *)self internalRepresentationType];
        v13 = [internalRepresentationType isEqualToUTType:*MEMORY[0x277CE1ED8]];

        internalRepresentationType2 = [(WFContentItem *)self internalRepresentationType];
        v15 = internalRepresentationType2;
        if (v13)
        {
          v16 = [(WFContentItem *)self fileRepresentationForType:internalRepresentationType2];

          v17 = [WFWebResource webResourceWithFile:v16];
          v48[0] = MEMORY[0x277D85DD0];
          v48[1] = 3221225472;
          v48[2] = __72__WFRichTextContentItem_generateObjectRepresentations_options_forClass___block_invoke_4;
          v48[3] = &unk_2783476C0;
          v49 = representationsCopy;
          [WFWebResourceCapturer getPrintFormatterForWebResource:v17 coercionOptions:optionsCopy completionHandler:v48];

LABEL_21:
          goto LABEL_22;
        }

        v21 = [internalRepresentationType2 isEqualToUTType:*MEMORY[0x277CE1DA0]];

        if (v21)
        {
          internalRepresentationType3 = [(WFContentItem *)self internalRepresentationType];
          v23 = [(WFContentItem *)self fileRepresentationForType:internalRepresentationType3];
          v24 = MEMORY[0x277CCACA8];
          data = [v23 data];
          v26 = [v24 wf_stringWithData:data];

          originalURL = [v23 originalURL];
          v28 = [WFWebResource webResourceWithHTMLString:v26 baseURL:originalURL];

          v46[0] = MEMORY[0x277D85DD0];
          v46[1] = 3221225472;
          v46[2] = __72__WFRichTextContentItem_generateObjectRepresentations_options_forClass___block_invoke_5;
          v46[3] = &unk_2783476C0;
          v47 = representationsCopy;
          [WFWebResourceCapturer getPrintFormatterForWebResource:v28 coercionOptions:optionsCopy completionHandler:v46];

          goto LABEL_22;
        }

        v44[0] = MEMORY[0x277D85DD0];
        v44[1] = 3221225472;
        v44[2] = __72__WFRichTextContentItem_generateObjectRepresentations_options_forClass___block_invoke_6;
        v44[3] = &unk_278349FA0;
        v44[4] = self;
        v45 = representationsCopy;
        [(WFContentItem *)self getObjectRepresentation:v44 forClass:objc_opt_class() options:optionsCopy];
        v20 = v45;
        goto LABEL_8;
      }

      if (objc_opt_class() != class)
      {
        v16 = [objc_opt_class() badCoercionErrorForObjectClass:class];
        (*(representationsCopy + 2))(representationsCopy, 0, v16);
        goto LABEL_21;
      }

      internalRepresentationType4 = [(WFContentItem *)self internalRepresentationType];
      v30 = [internalRepresentationType4 isEqualToUTType:*MEMORY[0x277CE1DA0]];

      internalRepresentationType5 = [(WFContentItem *)self internalRepresentationType];
      if ([internalRepresentationType5 isEqualToUTType:*MEMORY[0x277CE1ED8]])
      {

LABEL_17:
        internalRepresentationType6 = [(WFContentItem *)self internalRepresentationType];
        v16 = [(WFContentItem *)self fileRepresentationForType:internalRepresentationType6];

        if (v30)
        {
          v35 = MEMORY[0x277CCACA8];
          data2 = [v16 data];
          v37 = [v35 wf_stringWithData:data2];

          originalURL2 = [v16 originalURL];
          v39 = [WFWebResource webResourceWithHTMLString:v37 baseURL:originalURL2];
        }

        else
        {
          v39 = [WFWebResource webResourceWithFile:v16];
        }

        v40 = [WFObjectRepresentation object:v39];
        v54[0] = v40;
        v41 = [MEMORY[0x277CBEA60] arrayWithObjects:v54 count:1];
        (*(representationsCopy + 2))(representationsCopy, v41, 0);

        goto LABEL_21;
      }

      internalRepresentationType7 = [(WFContentItem *)self internalRepresentationType];
      v33 = [internalRepresentationType7 isEqualToUTType:*MEMORY[0x277CE1E50]] | v30;

      if (v33)
      {
        goto LABEL_17;
      }

      v42[0] = MEMORY[0x277D85DD0];
      v42[1] = 3221225472;
      v42[2] = __72__WFRichTextContentItem_generateObjectRepresentations_options_forClass___block_invoke_8;
      v42[3] = &unk_2783462C8;
      v43 = representationsCopy;
      [(WFContentItem *)self getObjectRepresentation:v42 forClass:objc_opt_class() options:optionsCopy];
      v20 = v43;
    }

LABEL_8:

    goto LABEL_22;
  }

  internalRepresentationType8 = [(WFContentItem *)self internalRepresentationType];
  v19 = [(WFContentItem *)self fileRepresentationForType:internalRepresentationType8];

  v52[0] = MEMORY[0x277D85DD0];
  v52[1] = 3221225472;
  v52[2] = __72__WFRichTextContentItem_generateObjectRepresentations_options_forClass___block_invoke;
  v52[3] = &unk_2783462C8;
  v53 = representationsCopy;
  [(WFRichTextContentItem *)self generateAttributedString:v52 fromFile:v19 forClass:class coercionOptions:optionsCopy];

LABEL_22:
}

void __72__WFRichTextContentItem_generateObjectRepresentations_options_forClass___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v11[1] = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 32);
  if (a2)
  {
    v7 = a4;
    v8 = [WFObjectRepresentation object:a2 named:a3];
    v11[0] = v8;
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:1];
    (*(v4 + 16))(v4, v9, v7);
  }

  else
  {
    v10 = *(v4 + 16);
    v8 = a4;
    v10(v4, 0, v8);
  }
}

void __72__WFRichTextContentItem_generateObjectRepresentations_options_forClass___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = objc_opt_new();
    v5 = getNSLinkAttributeName();
    v6 = [v3 length];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __72__WFRichTextContentItem_generateObjectRepresentations_options_forClass___block_invoke_3;
    v9[3] = &unk_278346340;
    v10 = v3;
    v11 = v4;
    v7 = v4;
    [v10 enumerateAttribute:v5 inRange:0 options:v6 usingBlock:{0, v9}];

    (*(*(a1 + 32) + 16))(*(a1 + 32), v7, 0, v8);
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }
}

void __72__WFRichTextContentItem_generateObjectRepresentations_options_forClass___block_invoke_4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v11[1] = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 32);
  if (a2)
  {
    v7 = a4;
    v8 = [WFObjectRepresentation object:a2 named:a3];
    v11[0] = v8;
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:1];
    (*(v4 + 16))(v4, v9, v7);
  }

  else
  {
    v10 = *(v4 + 16);
    v8 = a4;
    v10(v4, MEMORY[0x277CBEBF8], v8);
  }
}

void __72__WFRichTextContentItem_generateObjectRepresentations_options_forClass___block_invoke_5(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6[1] = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v4 = [WFObjectRepresentation object:a2 named:a3];
  v6[0] = v4;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:1];
  (*(v3 + 16))(v3, v5, 0);
}

void __72__WFRichTextContentItem_generateObjectRepresentations_options_forClass___block_invoke_6(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __72__WFRichTextContentItem_generateObjectRepresentations_options_forClass___block_invoke_7;
    block[3] = &unk_278349EF0;
    v7 = v3;
    v5 = *(a1 + 40);
    v8 = *(a1 + 32);
    v9 = v5;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }

  else
  {
    (*(*(a1 + 40) + 16))();
  }
}

void __72__WFRichTextContentItem_generateObjectRepresentations_options_forClass___block_invoke_8(uint64_t a1, void *a2)
{
  v15[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = getNSDocumentTypeDocumentAttribute();
    v14 = v4;
    v5 = getNSHTMLTextDocumentType();
    v15[0] = v5;
    v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:&v14 count:1];

    v7 = [v3 dataFromRange:0 documentAttributes:objc_msgSend(v3 error:{"length"), v6, 0}];
    v8 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v7 encoding:4];
    v9 = [WFWebResource webResourceWithHTMLString:v8 baseURL:0];
    v10 = *(a1 + 32);
    v11 = [WFObjectRepresentation object:v9];
    v13 = v11;
    v12 = [MEMORY[0x277CBEA60] arrayWithObjects:&v13 count:1];
    (*(v10 + 16))(v10, v12, 0);
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }
}

void __72__WFRichTextContentItem_generateObjectRepresentations_options_forClass___block_invoke_7(uint64_t a1)
{
  v7[1] = *MEMORY[0x277D85DE8];
  v2 = [objc_alloc(getUISimpleTextPrintFormatterClass_8126()) initWithAttributedText:*(a1 + 32)];
  v3 = *(a1 + 48);
  v4 = [*(a1 + 40) name];
  v5 = [WFObjectRepresentation object:v2 named:v4];
  v7[0] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:1];
  (*(v3 + 16))(v3, v6, 0);
}

void __72__WFRichTextContentItem_generateObjectRepresentations_options_forClass___block_invoke_3(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v16 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [MEMORY[0x277CBEBC0] URLWithString:v16];

    v16 = v7;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = *(a1 + 32);
    v9 = v16;
    v10 = [v8 attributedSubstringFromRange:{a3, a4}];
    v11 = [v10 string];
    v12 = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
    v13 = [v11 stringByTrimmingCharactersInSet:v12];

    v14 = *(a1 + 40);
    v15 = [WFObjectRepresentation object:v9 named:v13];

    [v14 addObject:v15];
  }
}

- (void)generateAttributedString:(id)string fromFile:(id)file forClass:(Class)class coercionOptions:(id)options
{
  stringCopy = string;
  fileCopy = file;
  optionsCopy = options;
  wfType = [fileCopy wfType];
  v13 = [wfType conformsToUTType:*MEMORY[0x277CE1D78]];

  if (!v13)
  {
    goto LABEL_6;
  }

  v14 = objc_alloc(MEMORY[0x277CCAA20]);
  mappedData = [fileCopy mappedData];
  v16 = [v14 initWithSerializedRepresentation:mappedData];

  filename = [fileCopy filename];
  v18 = [MEMORY[0x277D79F68] typeWithUTType:*MEMORY[0x277CE1E58]];
  v19 = [WFFileRepresentation proposedFilenameForFile:filename ofType:v18];

  v20 = [WFTemporaryFileManager proposedTemporaryFileURLForFilename:v19];
  v46 = 0;
  v21 = [v16 writeToURL:v20 options:0 originalContentsURL:0 error:&v46];
  v22 = v46;
  if (v21)
  {
    v23 = [WFFileRepresentation fileWithURL:v20 options:1];

    fileCopy = v23;
  }

  else
  {
    (*(stringCopy + 2))(stringCopy, 0, 0, v22);
  }

  if (v21)
  {
LABEL_6:
    v24 = objc_opt_class();
    wfType2 = [fileCopy wfType];
    v26 = [v24 attributesDictionaryForType:wfType2];

    wfType3 = [fileCopy wfType];
    if ([wfType3 conformsToUTType:*MEMORY[0x277CE1DA0]])
    {
    }

    else
    {
      wfType4 = [fileCopy wfType];
      v29 = [wfType4 conformsToUTType:*MEMORY[0x277CE1ED8]];

      if (!v29)
      {
        representationType = [fileCopy representationType];
        v35 = objc_alloc(MEMORY[0x277CCA898]);
        if (representationType)
        {
          fileURL = [fileCopy fileURL];
          v41 = 0;
          v42 = 0;
          v37 = &v42;
          v38 = &v41;
          v39 = [v35 initWithURL:fileURL options:v26 documentAttributes:&v42 error:&v41];
        }

        else
        {
          fileURL = [fileCopy mappedData];
          v43 = 0;
          v44 = 0;
          v37 = &v44;
          v38 = &v43;
          v39 = [v35 initWithData:fileURL options:v26 documentAttributes:&v44 error:&v43];
        }

        name2 = v39;
        v32 = *v37;
        v33 = *v38;

        name = [(WFContentItem *)self name];
        (*(stringCopy + 2))(stringCopy, name2, name, 0);

        goto LABEL_14;
      }
    }

    v30 = objc_opt_class();
    v45 = 0;
    name2 = [(WFContentItem *)self name];
    [v30 loadAttributedStringInWebViewFromHTMLFile:fileCopy handler:stringCopy attributedStringOptions:v26 documentAttributes:&v45 name:name2 coercionOptions:optionsCopy];
    v32 = v45;
    v33 = 0;
LABEL_14:
  }
}

- (void)getFileRepresentationsForSerialization:(id)serialization
{
  v17[1] = *MEMORY[0x277D85DE8];
  serializationCopy = serialization;
  v16 = @"ContinueLoadingWebContentIfExternalResourcesAreDenied";
  v17[0] = MEMORY[0x277CBEC38];
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:&v16 count:1];
  v6 = [WFCoercionOptions optionsWithDictionary:v5];

  internalRepresentationType = [(WFContentItem *)self internalRepresentationType];
  if ([internalRepresentationType conformsToUTType:*MEMORY[0x277CE1DA0]])
  {
    v8 = [MEMORY[0x277D79F68] typeFromPasteboardType:*MEMORY[0x277D7A7E8]];
  }

  else
  {
    v8 = 0;
  }

  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __64__WFRichTextContentItem_getFileRepresentationsForSerialization___block_invoke;
  v12[3] = &unk_278348540;
  v12[4] = self;
  v13 = v8;
  v14 = v6;
  v15 = serializationCopy;
  v9 = v6;
  v10 = v8;
  v11 = serializationCopy;
  [(WFContentItem *)self getFileRepresentation:v12 forType:v10 options:v9];
}

void __64__WFRichTextContentItem_getFileRepresentationsForSerialization___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = *(a1 + 32);
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __64__WFRichTextContentItem_getFileRepresentationsForSerialization___block_invoke_2;
    v8[3] = &unk_278348540;
    v12 = *(a1 + 56);
    v5 = *(a1 + 40);
    v6 = *(a1 + 32);
    v9 = v5;
    v10 = v6;
    v11 = v3;
    v7 = [MEMORY[0x277D79F68] typeWithUTType:{*MEMORY[0x277CE1E20], v8[0], 3221225472, __64__WFRichTextContentItem_getFileRepresentationsForSerialization___block_invoke_2, &unk_278348540}];
    [v4 getFileRepresentation:v8 forType:v7 options:*(a1 + 48)];
  }

  else
  {
    (*(*(a1 + 56) + 16))();
  }
}

void __64__WFRichTextContentItem_getFileRepresentationsForSerialization___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v17[2] = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = *MEMORY[0x277CE1E50];
    if ([*(a1 + 32) conformsToUTType:*MEMORY[0x277CE1E50]])
    {
      v8 = *(a1 + 56);
      v17[0] = *(a1 + 48);
      v17[1] = v5;
      v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:2];
      (*(v8 + 16))(v8, v9, 0);
    }

    else
    {
      v10 = *(a1 + 40);
      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 3221225472;
      v12[2] = __64__WFRichTextContentItem_getFileRepresentationsForSerialization___block_invoke_3;
      v12[3] = &unk_278348540;
      v16 = *(a1 + 56);
      v13 = *(a1 + 48);
      v14 = v5;
      v15 = v6;
      v11 = [MEMORY[0x277D79F68] typeWithUTType:v7];
      [v10 getFileRepresentation:v12 forType:v11];
    }
  }

  else
  {
    (*(*(a1 + 56) + 16))();
  }
}

void __64__WFRichTextContentItem_getFileRepresentationsForSerialization___block_invoke_3(void *a1, uint64_t a2)
{
  v3 = a1[7];
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:{a1[4], a1[5], a2, 0}];
  (*(v3 + 16))(v3, v4, a1[6]);
}

- (void)generateFileRepresentations:(id)representations options:(id)options forType:(id)type
{
  representationsCopy = representations;
  optionsCopy = options;
  typeCopy = type;
  if ([typeCopy isEqualToUTType:*MEMORY[0x277CE1E08]])
  {
    dictionary = [optionsCopy dictionary];
    v12 = [dictionary objectForKey:@"WFCoercionOptionPDFIncludeMargin"];
    bOOLValue = [v12 BOOLValue];

    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = __69__WFRichTextContentItem_generateFileRepresentations_options_forType___block_invoke;
    v29[3] = &unk_2783462A0;
    v31 = representationsCopy;
    v29[4] = self;
    v32 = bOOLValue;
    v30 = optionsCopy;
    [(WFContentItem *)self getObjectRepresentation:v29 forClass:objc_opt_class() options:v30];

    v14 = v31;
LABEL_8:

    goto LABEL_9;
  }

  if (![typeCopy conformsToUTType:*MEMORY[0x277CE1DB0]])
  {
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __69__WFRichTextContentItem_generateFileRepresentations_options_forType___block_invoke_15;
    v23[3] = &unk_2783462F0;
    v26 = representationsCopy;
    v24 = typeCopy;
    selfCopy = self;
    [(WFContentItem *)self getObjectRepresentation:v23 forClass:objc_opt_class() options:optionsCopy];

    v14 = v26;
    goto LABEL_8;
  }

  internalRepresentationType = [(WFContentItem *)self internalRepresentationType];
  v16 = [internalRepresentationType isEqualToUTType:*MEMORY[0x277CE1ED8]];

  if (!v16)
  {
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __69__WFRichTextContentItem_generateFileRepresentations_options_forType___block_invoke_2;
    v27[3] = &unk_2783462C8;
    v28 = representationsCopy;
    [(WFContentItem *)self getObjectRepresentation:v27 forClass:objc_opt_class() options:optionsCopy];
    v14 = v28;
    goto LABEL_8;
  }

  internalRepresentationType2 = [(WFContentItem *)self internalRepresentationType];
  v18 = [(WFContentItem *)self fileRepresentationForType:internalRepresentationType2];

  v19 = [WFWebArchive alloc];
  mappedData = [v18 mappedData];
  v21 = [(WFWebArchive *)v19 initWithData:mappedData];

  containedImageFiles = [(WFWebArchive *)v21 containedImageFiles];
  (*(representationsCopy + 2))(representationsCopy, containedImageFiles, 0);

LABEL_9:
}

uint64_t __69__WFRichTextContentItem_generateFileRepresentations_options_forType___block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    return [*(a1 + 32) getPDFFromResource:a2 includeMargin:*(a1 + 56) options:*(a1 + 40) handler:*(a1 + 48)];
  }

  else
  {
    return (*(*(a1 + 48) + 16))();
  }
}

void __69__WFRichTextContentItem_generateFileRepresentations_options_forType___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v14 = *MEMORY[0x277D85DE8];
  v6 = a4;
  if (a2)
  {
    v7 = *(a1 + 32);
    v8 = [a2 containedImageFiles];
    (*(v7 + 16))(v7, v8, v6);
  }

  else
  {
    v9 = getWFContentGraphLogObject();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = 136315394;
      v11 = "[WFRichTextContentItem generateFileRepresentations:options:forType:]_block_invoke_2";
      v12 = 2112;
      v13 = v6;
      _os_log_impl(&dword_21E1BD000, v9, OS_LOG_TYPE_ERROR, "%s Failed to coerce to NSAttributedString with error %@", &v10, 0x16u);
    }

    (*(*(a1 + 32) + 16))();
  }
}

void __69__WFRichTextContentItem_generateFileRepresentations_options_forType___block_invoke_15(uint64_t a1, void *a2, void *a3, void *a4)
{
  v9 = a2;
  v7 = a3;
  v8 = a4;
  if (v9)
  {
    if (([*(a1 + 32) conformsToUTType:*MEMORY[0x277CE1E58]] & 1) != 0 || objc_msgSend(*(a1 + 32), "conformsToUTType:", *MEMORY[0x277CE1D78]))
    {
      [*(a1 + 40) generateRTFDRepresentation:*(a1 + 48) fromAttributedString:v9 forType:*(a1 + 32)];
    }

    else
    {
      [*(a1 + 40) generateDataRepresentation:*(a1 + 48) fromAttributedString:v9 forType:*(a1 + 32)];
    }
  }

  else
  {
    (*(*(a1 + 48) + 16))();
  }
}

- (id)generateFileRepresentationForType:(id)type options:(id)options error:(id *)error
{
  v6 = MEMORY[0x277D79F68];
  v7 = *MEMORY[0x277D7A7E8];
  typeCopy = type;
  v9 = [v6 typeFromPasteboardType:v7];
  LODWORD(v7) = [typeCopy conformsToType:v9];

  if (v7 && (-[WFContentItem internalRepresentationType](self, "internalRepresentationType"), v10 = objc_claimAutoreleasedReturnValue(), v11 = [v10 conformsToUTType:*MEMORY[0x277CE1DA0]], v10, v11))
  {
    internalRepresentationType = [(WFContentItem *)self internalRepresentationType];
    v13 = [(WFContentItem *)self fileRepresentationForType:internalRepresentationType];
    v14 = [WFWebResource alloc];
    mappedData = [v13 mappedData];
    originalURL = [v13 originalURL];
    mIMEType = [internalRepresentationType MIMEType];
    wfName = [v13 wfName];
    v19 = [(WFWebResource *)v14 initWithData:mappedData URL:originalURL MIMEType:mIMEType textEncodingName:@"UTF-8" frameName:wfName];

    v20 = [[WFWebArchive alloc] initWithMainResource:v19 subresources:0 subframeArchives:0];
    data = [(WFWebArchive *)v20 data];
    wfName2 = [v13 wfName];
    v23 = [WFFileRepresentation fileWithData:data ofType:v9 proposedFilename:wfName2];
  }

  else
  {
    v23 = 0;
  }

  return v23;
}

- (void)generateDataRepresentation:(id)representation fromAttributedString:(id)string forType:(id)type
{
  v18[1] = *MEMORY[0x277D85DE8];
  representationCopy = representation;
  typeCopy = type;
  stringCopy = string;
  v11 = [objc_opt_class() attributesDictionaryForType:typeCopy];
  v17 = 0;
  v12 = [stringCopy dataFromRange:0 documentAttributes:objc_msgSend(stringCopy error:{"length"), v11, &v17}];

  v13 = v17;
  name = [(WFContentItem *)self name];
  v15 = [WFFileRepresentation fileWithData:v12 ofType:typeCopy proposedFilename:name];

  if (v15)
  {
    v18[0] = v15;
    v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:1];
    representationCopy[2](representationCopy, v16, 0);
  }

  else
  {
    (representationCopy)[2](representationCopy, 0, v13);
  }
}

- (void)generateRTFDRepresentation:(id)representation fromAttributedString:(id)string forType:(id)type
{
  v28[1] = *MEMORY[0x277D85DE8];
  representationCopy = representation;
  typeCopy = type;
  stringCopy = string;
  v11 = [objc_opt_class() attributesDictionaryForType:typeCopy];
  v26 = 0;
  v12 = [stringCopy fileWrapperFromRange:0 documentAttributes:objc_msgSend(stringCopy error:{"length"), v11, &v26}];

  v13 = v26;
  if (v12)
  {
    if ([typeCopy conformsToUTType:*MEMORY[0x277CE1D78]])
    {
      serializedRepresentation = [v12 serializedRepresentation];
      name = [(WFContentItem *)self name];
      v16 = [WFFileRepresentation fileWithData:serializedRepresentation ofType:typeCopy proposedFilename:name];

      if (v16)
      {
        v28[0] = v16;
        v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v28 count:1];
        representationCopy[2](representationCopy, v17, 0);
      }

      else
      {
        representationCopy[2](representationCopy, 0, 0);
      }
    }

    else
    {
      name2 = [(WFContentItem *)self name];
      v19 = [WFFileRepresentation proposedFilenameForFile:name2 ofType:typeCopy];
      v20 = [WFTemporaryFileManager proposedTemporaryFileURLForFilename:v19];

      v25 = v13;
      LOBYTE(name2) = [v12 writeToURL:v20 options:0 originalContentsURL:0 error:&v25];
      v21 = v25;

      if (name2)
      {
        name3 = [(WFContentItem *)self name];
        v23 = [WFFileRepresentation fileWithURL:v20 options:1 ofType:typeCopy proposedFilename:name3];
        v27 = v23;
        v24 = [MEMORY[0x277CBEA60] arrayWithObjects:&v27 count:1];
        representationCopy[2](representationCopy, v24, 0);
      }

      else
      {
        (representationCopy)[2](representationCopy, 0, v21);
      }

      v13 = v21;
    }
  }

  else
  {
    (representationCopy)[2](representationCopy, 0, v13);
  }
}

- (id)attributedString
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = [WFObjectType typeWithClass:objc_opt_class()];
  v11 = 0;
  v4 = [(WFContentItem *)self getRepresentationsForType:v3 error:&v11];
  v5 = v11;
  firstObject = [v4 firstObject];
  object = [firstObject object];

  if (object)
  {
    v8 = 1;
  }

  else
  {
    v8 = v5 == 0;
  }

  if (!v8)
  {
    v9 = getWFContentGraphLogObject();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v13 = "[WFRichTextContentItem attributedString]";
      v14 = 2112;
      v15 = v5;
      _os_log_impl(&dword_21E1BD000, v9, OS_LOG_TYPE_ERROR, "%s Error getting attributed string from rich text content item: %@", buf, 0x16u);
    }
  }

  return object;
}

+ (id)localizedPluralTypeDescriptionWithContext:(id)context
{
  contextCopy = context;
  v4 = WFLocalizedStringResourceWithKey(@"Rich text (plural)", @"Rich Text");
  v5 = [contextCopy localize:v4];

  return v5;
}

+ (id)localizedTypeDescriptionWithContext:(id)context
{
  contextCopy = context;
  v4 = WFLocalizedStringResourceWithKey(@"Rich text (singular)", @"Rich Text");
  v5 = [contextCopy localize:v4];

  return v5;
}

+ (id)contentCategories
{
  v4[1] = *MEMORY[0x277D85DE8];
  v4[0] = @"Documents";
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:1];

  return v2;
}

+ (id)outputTypes
{
  v2 = MEMORY[0x277CBEB70];
  v3 = [WFObjectType typeWithClass:objc_opt_class()];
  v4 = [MEMORY[0x277D79F68] typeWithUTType:*MEMORY[0x277CE1E20]];
  v5 = [MEMORY[0x277D79F68] typeWithUTType:*MEMORY[0x277CE1DB0]];
  v6 = [MEMORY[0x277D79F68] typeWithUTType:*MEMORY[0x277CE1E08]];
  v7 = [WFObjectType typeWithClassName:@"UIPrintFormatter" frameworkName:@"UIKit" location:2];
  v8 = [WFObjectType typeWithClass:objc_opt_class()];
  v9 = [v2 orderedSetWithObjects:{v3, v4, v5, v6, v7, v8, 0}];

  return v9;
}

+ (id)ownedTypes
{
  v2 = MEMORY[0x277CBEB70];
  v3 = [WFObjectType typeWithClass:objc_opt_class()];
  v4 = [MEMORY[0x277D79F68] typeWithUTType:*MEMORY[0x277CE1E50]];
  v5 = [MEMORY[0x277D79F68] typeWithUTType:*MEMORY[0x277CE1E58]];
  v6 = [MEMORY[0x277D79F68] typeWithUTType:*MEMORY[0x277CE1D78]];
  v7 = [MEMORY[0x277D79F68] typeWithUTType:*MEMORY[0x277CE1DA0]];
  v8 = [MEMORY[0x277D79F68] typeFromPasteboardType:*MEMORY[0x277D7A7E8]];
  v9 = [v2 orderedSetWithObjects:{v3, v4, v5, v6, v7, v8, 0}];

  return v9;
}

+ (id)stringConversionBehavior
{
  v2 = WFLocalizedStringWithKey(@"Text - Default Name", @"Text");
  v3 = [WFContentItemStringConversionBehavior coercingToStringWithDescription:v2];

  return v3;
}

+ (BOOL)supportedTypeMustBeDeterminedByInstance:(id)instance
{
  instanceCopy = instance;
  if ([instanceCopy conformsToClass:objc_opt_class()] & 1) != 0 || (objc_msgSend(instanceCopy, "conformsToClass:", objc_opt_class()) & 1) != 0 || (objc_msgSend(instanceCopy, "conformsToUTType:", *MEMORY[0x277CE1E20]))
  {
    v5 = 1;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = &OBJC_METACLASS___WFRichTextContentItem;
    v5 = objc_msgSendSuper2(&v7, sel_supportedTypeMustBeDeterminedByInstance_, instanceCopy);
  }

  return v5;
}

+ (id)normalizedHTMLDocumentFromHTMLData:(id)data
{
  dataCopy = data;
  v5 = [MEMORY[0x277CCACA8] if_stringWithData:dataCopy];
  if ([self isMissingHTMLHeaderInString:v5])
  {
    v6 = [MEMORY[0x277CCACA8] stringEncodingForData:dataCopy encodingOptions:0 convertedString:0 usedLossyConversion:0];
    v7 = objc_opt_new();
    htmlHeader = [self htmlHeader];
    v9 = [htmlHeader dataUsingEncoding:v6];
    [v7 appendData:v9];

    [v7 appendData:dataCopy];
    htmlFooter = [self htmlFooter];
    v11 = [htmlFooter dataUsingEncoding:v6];
    [v7 appendData:v11];
  }

  else
  {
    v7 = dataCopy;
  }

  return v7;
}

+ (BOOL)isMissingHTMLHeaderInString:(id)string
{
  if (string)
  {
    lowercaseString = [string lowercaseString];
    v4 = [lowercaseString containsString:@"<html"] ^ 1;
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  return v4;
}

+ (id)normalizedHTMLDocumentFromHTML:(id)l
{
  lCopy = l;
  if ([self isMissingHTMLHeaderInString:lCopy])
  {
    htmlHeader = [self htmlHeader];
    v6 = [htmlHeader stringByAppendingString:lCopy];
    htmlFooter = [self htmlFooter];
    v8 = [v6 stringByAppendingString:htmlFooter];
  }

  else
  {
    v8 = lCopy;
  }

  return v8;
}

+ (void)loadAttributedStringInWebViewFromHTMLFile:(id)file handler:(id)handler attributedStringOptions:(id)options documentAttributes:(id *)attributes name:(id)name coercionOptions:(id)coercionOptions
{
  v29 = *MEMORY[0x277D85DE8];
  fileCopy = file;
  handlerCopy = handler;
  nameCopy = name;
  coercionOptionsCopy = coercionOptions;
  v15 = getWFWorkflowExecutionLogObject();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    v26 = "+[WFRichTextContentItem loadAttributedStringInWebViewFromHTMLFile:handler:attributedStringOptions:documentAttributes:name:coercionOptions:]";
    v27 = 2112;
    v28 = fileCopy;
    _os_log_impl(&dword_21E1BD000, v15, OS_LOG_TYPE_DEBUG, "%s Transforming HTML file %@ to NSAttributedString via WKWebView.", buf, 0x16u);
  }

  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __139__WFRichTextContentItem_loadAttributedStringInWebViewFromHTMLFile_handler_attributedStringOptions_documentAttributes_name_coercionOptions___block_invoke;
  v20[3] = &unk_2783474E0;
  v21 = fileCopy;
  v22 = coercionOptionsCopy;
  v23 = nameCopy;
  v24 = handlerCopy;
  v16 = nameCopy;
  v17 = handlerCopy;
  v18 = coercionOptionsCopy;
  v19 = fileCopy;
  dispatch_async(MEMORY[0x277D85CD0], v20);
}

void __139__WFRichTextContentItem_loadAttributedStringInWebViewFromHTMLFile_handler_attributedStringOptions_documentAttributes_name_coercionOptions___block_invoke(uint64_t a1)
{
  v2 = [WFWebResource webResourceWithFile:*(a1 + 32)];
  v11 = 0;
  v12 = &v11;
  v13 = 0x2050000000;
  v3 = getWKWebViewConfigurationClass_softClass;
  v14 = getWKWebViewConfigurationClass_softClass;
  if (!getWKWebViewConfigurationClass_softClass)
  {
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __getWKWebViewConfigurationClass_block_invoke;
    v10[3] = &unk_27834A178;
    v10[4] = &v11;
    __getWKWebViewConfigurationClass_block_invoke(v10);
    v3 = v12[3];
  }

  v4 = v3;
  _Block_object_dispose(&v11, 8);
  v5 = objc_opt_new();
  [v5 _setAllowsJavaScriptMarkup:0];
  v6 = *(a1 + 40);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __139__WFRichTextContentItem_loadAttributedStringInWebViewFromHTMLFile_handler_attributedStringOptions_documentAttributes_name_coercionOptions___block_invoke_2;
  v7[3] = &unk_2783481A8;
  v9 = *(a1 + 56);
  v8 = *(a1 + 48);
  [WFWKWebViewCapturer loadWebResource:v2 withSize:v5 configuration:v6 coercionOptions:v7 completionHandler:*MEMORY[0x277CBF3A8], *(MEMORY[0x277CBF3A8] + 8)];
}

void __139__WFRichTextContentItem_loadAttributedStringInWebViewFromHTMLFile_handler_attributedStringOptions_documentAttributes_name_coercionOptions___block_invoke_2(uint64_t a1, void *a2)
{
  if (a2)
  {
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __139__WFRichTextContentItem_loadAttributedStringInWebViewFromHTMLFile_handler_attributedStringOptions_documentAttributes_name_coercionOptions___block_invoke_3;
    v5[3] = &unk_278346318;
    v7 = *(a1 + 40);
    v6 = *(a1 + 32);
    [a2 _getContentsAsAttributedStringWithCompletionHandler:v5];
  }

  else
  {
    v4 = *(*(a1 + 40) + 16);

    v4();
  }
}

+ (id)attributesDictionaryForType:(id)type
{
  typeCopy = type;
  v5 = [self documentTypeForType:typeCopy];
  v6 = getNSPlainTextDocumentType();
  if ([v5 isEqualToString:v6])
  {
    v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:4];
  }

  else
  {
    v7 = 0;
  }

  v8 = MEMORY[0x277CBEAC0];
  v9 = getNSDocumentTypeDocumentAttribute();
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v10 = getNSCharacterEncodingDocumentAttributeSymbolLoc_ptr;
  v19 = getNSCharacterEncodingDocumentAttributeSymbolLoc_ptr;
  if (!getNSCharacterEncodingDocumentAttributeSymbolLoc_ptr)
  {
    v11 = UIFoundationLibrary();
    v17[3] = dlsym(v11, "NSCharacterEncodingDocumentAttribute");
    getNSCharacterEncodingDocumentAttributeSymbolLoc_ptr = v17[3];
    v10 = v17[3];
  }

  _Block_object_dispose(&v16, 8);
  if (v10)
  {
    v12 = [v8 dictionaryWithObjectsAndKeys:{v5, v9, v7, *v10, 0}];

    return v12;
  }

  else
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSAttributedStringDocumentAttributeKey getNSCharacterEncodingDocumentAttribute(void)"];
    [currentHandler handleFailureInFunction:v15 file:@"WFRichTextContentItem.m" lineNumber:48 description:{@"%s", dlerror()}];

    __break(1u);
  }

  return result;
}

+ (id)documentTypeForType:(id)type
{
  typeCopy = type;
  if ([typeCopy isEqualToUTType:*MEMORY[0x277CE1E50]])
  {
    v16 = 0;
    v17 = &v16;
    v18 = 0x2020000000;
    v4 = getNSRTFTextDocumentTypeSymbolLoc_ptr;
    v19 = getNSRTFTextDocumentTypeSymbolLoc_ptr;
    if (!getNSRTFTextDocumentTypeSymbolLoc_ptr)
    {
      v12 = MEMORY[0x277D85DD0];
      v13 = 3221225472;
      v14 = __getNSRTFTextDocumentTypeSymbolLoc_block_invoke;
      v15 = &unk_27834A178;
      v5 = UIFoundationLibrary();
      v17[3] = dlsym(v5, "NSRTFTextDocumentType");
      getNSRTFTextDocumentTypeSymbolLoc_ptr = v17[3];
      v4 = v17[3];
    }

    _Block_object_dispose(&v16, 8);
    if (!v4)
    {
      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSAttributedStringDocumentType getNSRTFTextDocumentType(void)"];
      [currentHandler handleFailureInFunction:v7 file:@"WFRichTextContentItem.m" lineNumber:53 description:{@"%s", dlerror(), v12, v13, v14, v15}];
LABEL_24:

      __break(1u);
      return result;
    }

LABEL_11:
    v9 = *v4;
LABEL_12:
    v10 = v9;
    goto LABEL_13;
  }

  if (([typeCopy isEqualToUTType:*MEMORY[0x277CE1E58]] & 1) != 0 || objc_msgSend(typeCopy, "isEqualToUTType:", *MEMORY[0x277CE1D78]))
  {
    v16 = 0;
    v17 = &v16;
    v18 = 0x2020000000;
    v4 = getNSRTFDTextDocumentTypeSymbolLoc_ptr;
    v19 = getNSRTFDTextDocumentTypeSymbolLoc_ptr;
    if (!getNSRTFDTextDocumentTypeSymbolLoc_ptr)
    {
      v12 = MEMORY[0x277D85DD0];
      v13 = 3221225472;
      v14 = __getNSRTFDTextDocumentTypeSymbolLoc_block_invoke;
      v15 = &unk_27834A178;
      v8 = UIFoundationLibrary();
      v17[3] = dlsym(v8, "NSRTFDTextDocumentType");
      getNSRTFDTextDocumentTypeSymbolLoc_ptr = v17[3];
      v4 = v17[3];
    }

    _Block_object_dispose(&v16, 8);
    if (!v4)
    {
      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSAttributedStringDocumentType getNSRTFDTextDocumentType(void)"];
      [currentHandler handleFailureInFunction:v7 file:@"WFRichTextContentItem.m" lineNumber:52 description:{@"%s", dlerror(), v12, v13, v14, v15}];
      goto LABEL_24;
    }

    goto LABEL_11;
  }

  if ([typeCopy isEqualToUTType:*MEMORY[0x277CE1DA0]])
  {
    v9 = getNSHTMLTextDocumentType();
    goto LABEL_12;
  }

  if ([typeCopy conformsToUTType:*MEMORY[0x277CE1E20]])
  {
    v9 = getNSPlainTextDocumentType();
    goto LABEL_12;
  }

  if ([typeCopy isEqualToUTType:*MEMORY[0x277CE1ED8]])
  {
    v10 = @"NSWebArchive";
  }

  else
  {
    v10 = 0;
  }

LABEL_13:

  return v10;
}

@end