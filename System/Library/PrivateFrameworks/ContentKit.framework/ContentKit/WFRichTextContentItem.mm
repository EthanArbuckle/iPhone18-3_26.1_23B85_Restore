@interface WFRichTextContentItem
+ (BOOL)isMissingHTMLHeaderInString:(id)a3;
+ (BOOL)supportedTypeMustBeDeterminedByInstance:(id)a3;
+ (id)attributesDictionaryForType:(id)a3;
+ (id)contentCategories;
+ (id)documentTypeForType:(id)a3;
+ (id)localizedPluralTypeDescriptionWithContext:(id)a3;
+ (id)localizedTypeDescriptionWithContext:(id)a3;
+ (id)normalizedHTMLDocumentFromHTML:(id)a3;
+ (id)normalizedHTMLDocumentFromHTMLData:(id)a3;
+ (id)outputTypes;
+ (id)ownedTypes;
+ (id)stringConversionBehavior;
+ (void)loadAttributedStringInWebViewFromHTMLFile:(id)a3 handler:(id)a4 attributedStringOptions:(id)a5 documentAttributes:(id *)a6 name:(id)a7 coercionOptions:(id)a8;
- (BOOL)canGenerateRepresentationForType:(id)a3;
- (WFFileType)preferredFileType;
- (id)attributedString;
- (id)generateFileRepresentationForType:(id)a3 options:(id)a4 error:(id *)a5;
- (void)generateAttributedString:(id)a3 fromFile:(id)a4 forClass:(Class)a5 coercionOptions:(id)a6;
- (void)generateDataRepresentation:(id)a3 fromAttributedString:(id)a4 forType:(id)a5;
- (void)generateFileRepresentations:(id)a3 options:(id)a4 forType:(id)a5;
- (void)generateObjectRepresentations:(id)a3 options:(id)a4 forClass:(Class)a5;
- (void)generateRTFDRepresentation:(id)a3 fromAttributedString:(id)a4 forType:(id)a5;
- (void)getFileRepresentationsForSerialization:(id)a3;
- (void)getPDFFromResource:(id)a3 includeMargin:(BOOL)a4 options:(id)a5 handler:(id)a6;
@end

@implementation WFRichTextContentItem

- (void)getPDFFromResource:(id)a3 includeMargin:(BOOL)a4 options:(id)a5 handler:(id)a6
{
  v7 = a4;
  v9 = a6;
  v10 = a5;
  v11 = a3;
  v12 = objc_alloc_init(WFWebResourceCapturer);
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __74__WFRichTextContentItem_getPDFFromResource_includeMargin_options_handler___block_invoke;
  v15[3] = &unk_278348570;
  v16 = v12;
  v17 = v9;
  v13 = v12;
  v14 = v9;
  [(WFWebResourceCapturer *)v13 generatePDFForWebResource:v11 includeMargin:v7 coercionOptions:v10 completionHandler:v15];
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
  v3 = [(WFContentItem *)self internalRepresentationType];
  v4 = [v3 conformsToClass:objc_opt_class()];

  if (v4)
  {
    v5 = [MEMORY[0x277D79F68] typeWithUTType:*MEMORY[0x277CE1E50]];
  }

  else
  {
    v7.receiver = self;
    v7.super_class = WFRichTextContentItem;
    v5 = [(WFContentItem *)&v7 preferredFileType];
  }

  return v5;
}

- (BOOL)canGenerateRepresentationForType:(id)a3
{
  v4 = a3;
  v5 = [(WFContentItem *)self objectForClass:objc_opt_class()];
  if (!v5)
  {
    goto LABEL_10;
  }

  if ([v4 conformsToClass:objc_opt_class()])
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

  if (![v4 conformsToClass:objc_opt_class()])
  {
LABEL_10:
    v18.receiver = self;
    v18.super_class = WFRichTextContentItem;
    v8 = [(WFGenericFileContentItem *)&v18 canGenerateRepresentationForType:v4];
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

  v16 = [MEMORY[0x277CCA890] currentHandler];
  v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSAttributedStringKey getNSAttachmentAttributeName(void)"];
  [v16 handleFailureInFunction:v17 file:@"WFRichTextContentItem.m" lineNumber:47 description:{@"%s", dlerror()}];

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

- (void)generateObjectRepresentations:(id)a3 options:(id)a4 forClass:(Class)a5
{
  v54[1] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  if (objc_opt_class() != a5)
  {
    if (objc_opt_class() == a5)
    {
      v50[0] = MEMORY[0x277D85DD0];
      v50[1] = 3221225472;
      v50[2] = __72__WFRichTextContentItem_generateObjectRepresentations_options_forClass___block_invoke_2;
      v50[3] = &unk_2783462C8;
      v51 = v8;
      [(WFContentItem *)self getObjectRepresentation:v50 forClass:objc_opt_class() options:v9];
      v20 = v51;
    }

    else
    {
      v10 = NSStringFromClass(a5);
      v11 = [@"UIPrintFormatter" isEqualToString:v10];

      if (v11)
      {
        v12 = [(WFContentItem *)self internalRepresentationType];
        v13 = [v12 isEqualToUTType:*MEMORY[0x277CE1ED8]];

        v14 = [(WFContentItem *)self internalRepresentationType];
        v15 = v14;
        if (v13)
        {
          v16 = [(WFContentItem *)self fileRepresentationForType:v14];

          v17 = [WFWebResource webResourceWithFile:v16];
          v48[0] = MEMORY[0x277D85DD0];
          v48[1] = 3221225472;
          v48[2] = __72__WFRichTextContentItem_generateObjectRepresentations_options_forClass___block_invoke_4;
          v48[3] = &unk_2783476C0;
          v49 = v8;
          [WFWebResourceCapturer getPrintFormatterForWebResource:v17 coercionOptions:v9 completionHandler:v48];

LABEL_21:
          goto LABEL_22;
        }

        v21 = [v14 isEqualToUTType:*MEMORY[0x277CE1DA0]];

        if (v21)
        {
          v22 = [(WFContentItem *)self internalRepresentationType];
          v23 = [(WFContentItem *)self fileRepresentationForType:v22];
          v24 = MEMORY[0x277CCACA8];
          v25 = [v23 data];
          v26 = [v24 wf_stringWithData:v25];

          v27 = [v23 originalURL];
          v28 = [WFWebResource webResourceWithHTMLString:v26 baseURL:v27];

          v46[0] = MEMORY[0x277D85DD0];
          v46[1] = 3221225472;
          v46[2] = __72__WFRichTextContentItem_generateObjectRepresentations_options_forClass___block_invoke_5;
          v46[3] = &unk_2783476C0;
          v47 = v8;
          [WFWebResourceCapturer getPrintFormatterForWebResource:v28 coercionOptions:v9 completionHandler:v46];

          goto LABEL_22;
        }

        v44[0] = MEMORY[0x277D85DD0];
        v44[1] = 3221225472;
        v44[2] = __72__WFRichTextContentItem_generateObjectRepresentations_options_forClass___block_invoke_6;
        v44[3] = &unk_278349FA0;
        v44[4] = self;
        v45 = v8;
        [(WFContentItem *)self getObjectRepresentation:v44 forClass:objc_opt_class() options:v9];
        v20 = v45;
        goto LABEL_8;
      }

      if (objc_opt_class() != a5)
      {
        v16 = [objc_opt_class() badCoercionErrorForObjectClass:a5];
        (*(v8 + 2))(v8, 0, v16);
        goto LABEL_21;
      }

      v29 = [(WFContentItem *)self internalRepresentationType];
      v30 = [v29 isEqualToUTType:*MEMORY[0x277CE1DA0]];

      v31 = [(WFContentItem *)self internalRepresentationType];
      if ([v31 isEqualToUTType:*MEMORY[0x277CE1ED8]])
      {

LABEL_17:
        v34 = [(WFContentItem *)self internalRepresentationType];
        v16 = [(WFContentItem *)self fileRepresentationForType:v34];

        if (v30)
        {
          v35 = MEMORY[0x277CCACA8];
          v36 = [v16 data];
          v37 = [v35 wf_stringWithData:v36];

          v38 = [v16 originalURL];
          v39 = [WFWebResource webResourceWithHTMLString:v37 baseURL:v38];
        }

        else
        {
          v39 = [WFWebResource webResourceWithFile:v16];
        }

        v40 = [WFObjectRepresentation object:v39];
        v54[0] = v40;
        v41 = [MEMORY[0x277CBEA60] arrayWithObjects:v54 count:1];
        (*(v8 + 2))(v8, v41, 0);

        goto LABEL_21;
      }

      v32 = [(WFContentItem *)self internalRepresentationType];
      v33 = [v32 isEqualToUTType:*MEMORY[0x277CE1E50]] | v30;

      if (v33)
      {
        goto LABEL_17;
      }

      v42[0] = MEMORY[0x277D85DD0];
      v42[1] = 3221225472;
      v42[2] = __72__WFRichTextContentItem_generateObjectRepresentations_options_forClass___block_invoke_8;
      v42[3] = &unk_2783462C8;
      v43 = v8;
      [(WFContentItem *)self getObjectRepresentation:v42 forClass:objc_opt_class() options:v9];
      v20 = v43;
    }

LABEL_8:

    goto LABEL_22;
  }

  v18 = [(WFContentItem *)self internalRepresentationType];
  v19 = [(WFContentItem *)self fileRepresentationForType:v18];

  v52[0] = MEMORY[0x277D85DD0];
  v52[1] = 3221225472;
  v52[2] = __72__WFRichTextContentItem_generateObjectRepresentations_options_forClass___block_invoke;
  v52[3] = &unk_2783462C8;
  v53 = v8;
  [(WFRichTextContentItem *)self generateAttributedString:v52 fromFile:v19 forClass:a5 coercionOptions:v9];

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

- (void)generateAttributedString:(id)a3 fromFile:(id)a4 forClass:(Class)a5 coercionOptions:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a6;
  v12 = [v10 wfType];
  v13 = [v12 conformsToUTType:*MEMORY[0x277CE1D78]];

  if (!v13)
  {
    goto LABEL_6;
  }

  v14 = objc_alloc(MEMORY[0x277CCAA20]);
  v15 = [v10 mappedData];
  v16 = [v14 initWithSerializedRepresentation:v15];

  v17 = [v10 filename];
  v18 = [MEMORY[0x277D79F68] typeWithUTType:*MEMORY[0x277CE1E58]];
  v19 = [WFFileRepresentation proposedFilenameForFile:v17 ofType:v18];

  v20 = [WFTemporaryFileManager proposedTemporaryFileURLForFilename:v19];
  v46 = 0;
  v21 = [v16 writeToURL:v20 options:0 originalContentsURL:0 error:&v46];
  v22 = v46;
  if (v21)
  {
    v23 = [WFFileRepresentation fileWithURL:v20 options:1];

    v10 = v23;
  }

  else
  {
    (*(v9 + 2))(v9, 0, 0, v22);
  }

  if (v21)
  {
LABEL_6:
    v24 = objc_opt_class();
    v25 = [v10 wfType];
    v26 = [v24 attributesDictionaryForType:v25];

    v27 = [v10 wfType];
    if ([v27 conformsToUTType:*MEMORY[0x277CE1DA0]])
    {
    }

    else
    {
      v28 = [v10 wfType];
      v29 = [v28 conformsToUTType:*MEMORY[0x277CE1ED8]];

      if (!v29)
      {
        v34 = [v10 representationType];
        v35 = objc_alloc(MEMORY[0x277CCA898]);
        if (v34)
        {
          v36 = [v10 fileURL];
          v41 = 0;
          v42 = 0;
          v37 = &v42;
          v38 = &v41;
          v39 = [v35 initWithURL:v36 options:v26 documentAttributes:&v42 error:&v41];
        }

        else
        {
          v36 = [v10 mappedData];
          v43 = 0;
          v44 = 0;
          v37 = &v44;
          v38 = &v43;
          v39 = [v35 initWithData:v36 options:v26 documentAttributes:&v44 error:&v43];
        }

        v31 = v39;
        v32 = *v37;
        v33 = *v38;

        v40 = [(WFContentItem *)self name];
        (*(v9 + 2))(v9, v31, v40, 0);

        goto LABEL_14;
      }
    }

    v30 = objc_opt_class();
    v45 = 0;
    v31 = [(WFContentItem *)self name];
    [v30 loadAttributedStringInWebViewFromHTMLFile:v10 handler:v9 attributedStringOptions:v26 documentAttributes:&v45 name:v31 coercionOptions:v11];
    v32 = v45;
    v33 = 0;
LABEL_14:
  }
}

- (void)getFileRepresentationsForSerialization:(id)a3
{
  v17[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v16 = @"ContinueLoadingWebContentIfExternalResourcesAreDenied";
  v17[0] = MEMORY[0x277CBEC38];
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:&v16 count:1];
  v6 = [WFCoercionOptions optionsWithDictionary:v5];

  v7 = [(WFContentItem *)self internalRepresentationType];
  if ([v7 conformsToUTType:*MEMORY[0x277CE1DA0]])
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
  v15 = v4;
  v9 = v6;
  v10 = v8;
  v11 = v4;
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

- (void)generateFileRepresentations:(id)a3 options:(id)a4 forType:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([v10 isEqualToUTType:*MEMORY[0x277CE1E08]])
  {
    v11 = [v9 dictionary];
    v12 = [v11 objectForKey:@"WFCoercionOptionPDFIncludeMargin"];
    v13 = [v12 BOOLValue];

    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = __69__WFRichTextContentItem_generateFileRepresentations_options_forType___block_invoke;
    v29[3] = &unk_2783462A0;
    v31 = v8;
    v29[4] = self;
    v32 = v13;
    v30 = v9;
    [(WFContentItem *)self getObjectRepresentation:v29 forClass:objc_opt_class() options:v30];

    v14 = v31;
LABEL_8:

    goto LABEL_9;
  }

  if (![v10 conformsToUTType:*MEMORY[0x277CE1DB0]])
  {
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __69__WFRichTextContentItem_generateFileRepresentations_options_forType___block_invoke_15;
    v23[3] = &unk_2783462F0;
    v26 = v8;
    v24 = v10;
    v25 = self;
    [(WFContentItem *)self getObjectRepresentation:v23 forClass:objc_opt_class() options:v9];

    v14 = v26;
    goto LABEL_8;
  }

  v15 = [(WFContentItem *)self internalRepresentationType];
  v16 = [v15 isEqualToUTType:*MEMORY[0x277CE1ED8]];

  if (!v16)
  {
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __69__WFRichTextContentItem_generateFileRepresentations_options_forType___block_invoke_2;
    v27[3] = &unk_2783462C8;
    v28 = v8;
    [(WFContentItem *)self getObjectRepresentation:v27 forClass:objc_opt_class() options:v9];
    v14 = v28;
    goto LABEL_8;
  }

  v17 = [(WFContentItem *)self internalRepresentationType];
  v18 = [(WFContentItem *)self fileRepresentationForType:v17];

  v19 = [WFWebArchive alloc];
  v20 = [v18 mappedData];
  v21 = [(WFWebArchive *)v19 initWithData:v20];

  v22 = [(WFWebArchive *)v21 containedImageFiles];
  (*(v8 + 2))(v8, v22, 0);

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

- (id)generateFileRepresentationForType:(id)a3 options:(id)a4 error:(id *)a5
{
  v6 = MEMORY[0x277D79F68];
  v7 = *MEMORY[0x277D7A7E8];
  v8 = a3;
  v9 = [v6 typeFromPasteboardType:v7];
  LODWORD(v7) = [v8 conformsToType:v9];

  if (v7 && (-[WFContentItem internalRepresentationType](self, "internalRepresentationType"), v10 = objc_claimAutoreleasedReturnValue(), v11 = [v10 conformsToUTType:*MEMORY[0x277CE1DA0]], v10, v11))
  {
    v12 = [(WFContentItem *)self internalRepresentationType];
    v13 = [(WFContentItem *)self fileRepresentationForType:v12];
    v14 = [WFWebResource alloc];
    v15 = [v13 mappedData];
    v16 = [v13 originalURL];
    v17 = [v12 MIMEType];
    v18 = [v13 wfName];
    v19 = [(WFWebResource *)v14 initWithData:v15 URL:v16 MIMEType:v17 textEncodingName:@"UTF-8" frameName:v18];

    v20 = [[WFWebArchive alloc] initWithMainResource:v19 subresources:0 subframeArchives:0];
    v21 = [(WFWebArchive *)v20 data];
    v22 = [v13 wfName];
    v23 = [WFFileRepresentation fileWithData:v21 ofType:v9 proposedFilename:v22];
  }

  else
  {
    v23 = 0;
  }

  return v23;
}

- (void)generateDataRepresentation:(id)a3 fromAttributedString:(id)a4 forType:(id)a5
{
  v18[1] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a5;
  v10 = a4;
  v11 = [objc_opt_class() attributesDictionaryForType:v9];
  v17 = 0;
  v12 = [v10 dataFromRange:0 documentAttributes:objc_msgSend(v10 error:{"length"), v11, &v17}];

  v13 = v17;
  v14 = [(WFContentItem *)self name];
  v15 = [WFFileRepresentation fileWithData:v12 ofType:v9 proposedFilename:v14];

  if (v15)
  {
    v18[0] = v15;
    v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:1];
    v8[2](v8, v16, 0);
  }

  else
  {
    (v8)[2](v8, 0, v13);
  }
}

- (void)generateRTFDRepresentation:(id)a3 fromAttributedString:(id)a4 forType:(id)a5
{
  v28[1] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a5;
  v10 = a4;
  v11 = [objc_opt_class() attributesDictionaryForType:v9];
  v26 = 0;
  v12 = [v10 fileWrapperFromRange:0 documentAttributes:objc_msgSend(v10 error:{"length"), v11, &v26}];

  v13 = v26;
  if (v12)
  {
    if ([v9 conformsToUTType:*MEMORY[0x277CE1D78]])
    {
      v14 = [v12 serializedRepresentation];
      v15 = [(WFContentItem *)self name];
      v16 = [WFFileRepresentation fileWithData:v14 ofType:v9 proposedFilename:v15];

      if (v16)
      {
        v28[0] = v16;
        v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v28 count:1];
        v8[2](v8, v17, 0);
      }

      else
      {
        v8[2](v8, 0, 0);
      }
    }

    else
    {
      v18 = [(WFContentItem *)self name];
      v19 = [WFFileRepresentation proposedFilenameForFile:v18 ofType:v9];
      v20 = [WFTemporaryFileManager proposedTemporaryFileURLForFilename:v19];

      v25 = v13;
      LOBYTE(v18) = [v12 writeToURL:v20 options:0 originalContentsURL:0 error:&v25];
      v21 = v25;

      if (v18)
      {
        v22 = [(WFContentItem *)self name];
        v23 = [WFFileRepresentation fileWithURL:v20 options:1 ofType:v9 proposedFilename:v22];
        v27 = v23;
        v24 = [MEMORY[0x277CBEA60] arrayWithObjects:&v27 count:1];
        v8[2](v8, v24, 0);
      }

      else
      {
        (v8)[2](v8, 0, v21);
      }

      v13 = v21;
    }
  }

  else
  {
    (v8)[2](v8, 0, v13);
  }
}

- (id)attributedString
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = [WFObjectType typeWithClass:objc_opt_class()];
  v11 = 0;
  v4 = [(WFContentItem *)self getRepresentationsForType:v3 error:&v11];
  v5 = v11;
  v6 = [v4 firstObject];
  v7 = [v6 object];

  if (v7)
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

  return v7;
}

+ (id)localizedPluralTypeDescriptionWithContext:(id)a3
{
  v3 = a3;
  v4 = WFLocalizedStringResourceWithKey(@"Rich text (plural)", @"Rich Text");
  v5 = [v3 localize:v4];

  return v5;
}

+ (id)localizedTypeDescriptionWithContext:(id)a3
{
  v3 = a3;
  v4 = WFLocalizedStringResourceWithKey(@"Rich text (singular)", @"Rich Text");
  v5 = [v3 localize:v4];

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

+ (BOOL)supportedTypeMustBeDeterminedByInstance:(id)a3
{
  v4 = a3;
  if ([v4 conformsToClass:objc_opt_class()] & 1) != 0 || (objc_msgSend(v4, "conformsToClass:", objc_opt_class()) & 1) != 0 || (objc_msgSend(v4, "conformsToUTType:", *MEMORY[0x277CE1E20]))
  {
    v5 = 1;
  }

  else
  {
    v7.receiver = a1;
    v7.super_class = &OBJC_METACLASS___WFRichTextContentItem;
    v5 = objc_msgSendSuper2(&v7, sel_supportedTypeMustBeDeterminedByInstance_, v4);
  }

  return v5;
}

+ (id)normalizedHTMLDocumentFromHTMLData:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277CCACA8] if_stringWithData:v4];
  if ([a1 isMissingHTMLHeaderInString:v5])
  {
    v6 = [MEMORY[0x277CCACA8] stringEncodingForData:v4 encodingOptions:0 convertedString:0 usedLossyConversion:0];
    v7 = objc_opt_new();
    v8 = [a1 htmlHeader];
    v9 = [v8 dataUsingEncoding:v6];
    [v7 appendData:v9];

    [v7 appendData:v4];
    v10 = [a1 htmlFooter];
    v11 = [v10 dataUsingEncoding:v6];
    [v7 appendData:v11];
  }

  else
  {
    v7 = v4;
  }

  return v7;
}

+ (BOOL)isMissingHTMLHeaderInString:(id)a3
{
  if (a3)
  {
    v3 = [a3 lowercaseString];
    v4 = [v3 containsString:@"<html"] ^ 1;
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  return v4;
}

+ (id)normalizedHTMLDocumentFromHTML:(id)a3
{
  v4 = a3;
  if ([a1 isMissingHTMLHeaderInString:v4])
  {
    v5 = [a1 htmlHeader];
    v6 = [v5 stringByAppendingString:v4];
    v7 = [a1 htmlFooter];
    v8 = [v6 stringByAppendingString:v7];
  }

  else
  {
    v8 = v4;
  }

  return v8;
}

+ (void)loadAttributedStringInWebViewFromHTMLFile:(id)a3 handler:(id)a4 attributedStringOptions:(id)a5 documentAttributes:(id *)a6 name:(id)a7 coercionOptions:(id)a8
{
  v29 = *MEMORY[0x277D85DE8];
  v11 = a3;
  v12 = a4;
  v13 = a7;
  v14 = a8;
  v15 = getWFWorkflowExecutionLogObject();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    v26 = "+[WFRichTextContentItem loadAttributedStringInWebViewFromHTMLFile:handler:attributedStringOptions:documentAttributes:name:coercionOptions:]";
    v27 = 2112;
    v28 = v11;
    _os_log_impl(&dword_21E1BD000, v15, OS_LOG_TYPE_DEBUG, "%s Transforming HTML file %@ to NSAttributedString via WKWebView.", buf, 0x16u);
  }

  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __139__WFRichTextContentItem_loadAttributedStringInWebViewFromHTMLFile_handler_attributedStringOptions_documentAttributes_name_coercionOptions___block_invoke;
  v20[3] = &unk_2783474E0;
  v21 = v11;
  v22 = v14;
  v23 = v13;
  v24 = v12;
  v16 = v13;
  v17 = v12;
  v18 = v14;
  v19 = v11;
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

+ (id)attributesDictionaryForType:(id)a3
{
  v4 = a3;
  v5 = [a1 documentTypeForType:v4];
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
    v14 = [MEMORY[0x277CCA890] currentHandler];
    v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSAttributedStringDocumentAttributeKey getNSCharacterEncodingDocumentAttribute(void)"];
    [v14 handleFailureInFunction:v15 file:@"WFRichTextContentItem.m" lineNumber:48 description:{@"%s", dlerror()}];

    __break(1u);
  }

  return result;
}

+ (id)documentTypeForType:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToUTType:*MEMORY[0x277CE1E50]])
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
      v6 = [MEMORY[0x277CCA890] currentHandler];
      v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSAttributedStringDocumentType getNSRTFTextDocumentType(void)"];
      [v6 handleFailureInFunction:v7 file:@"WFRichTextContentItem.m" lineNumber:53 description:{@"%s", dlerror(), v12, v13, v14, v15}];
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

  if (([v3 isEqualToUTType:*MEMORY[0x277CE1E58]] & 1) != 0 || objc_msgSend(v3, "isEqualToUTType:", *MEMORY[0x277CE1D78]))
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
      v6 = [MEMORY[0x277CCA890] currentHandler];
      v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSAttributedStringDocumentType getNSRTFDTextDocumentType(void)"];
      [v6 handleFailureInFunction:v7 file:@"WFRichTextContentItem.m" lineNumber:52 description:{@"%s", dlerror(), v12, v13, v14, v15}];
      goto LABEL_24;
    }

    goto LABEL_11;
  }

  if ([v3 isEqualToUTType:*MEMORY[0x277CE1DA0]])
  {
    v9 = getNSHTMLTextDocumentType();
    goto LABEL_12;
  }

  if ([v3 conformsToUTType:*MEMORY[0x277CE1E20]])
  {
    v9 = getNSPlainTextDocumentType();
    goto LABEL_12;
  }

  if ([v3 isEqualToUTType:*MEMORY[0x277CE1ED8]])
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