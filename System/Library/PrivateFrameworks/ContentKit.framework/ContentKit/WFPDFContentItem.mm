@interface WFPDFContentItem
+ (id)contentCategories;
+ (id)itemWithPrintFormatters:(id)formatters names:(id)names;
+ (id)localizedPluralTypeDescriptionWithContext:(id)context;
+ (id)localizedTypeDescriptionWithContext:(id)context;
+ (id)outputTypes;
+ (id)ownedTypes;
+ (void)getPDFFromPrintFormatters:(id)formatters nameIfKnown:(id)known matchingInputSize:(BOOL)size withMargin:(BOOL)margin startingAtPage:(int64_t)page endingAtPage:(int64_t)atPage completionHandler:(id)handler;
- (void)createImageWithFileType:(id)type colorspace:(CGColorSpace *)colorspace resolution:(double)resolution completion:(id)completion;
- (void)enumeratePagesInDocument:(id)document block:(id)block;
- (void)generateFileRepresentations:(id)representations options:(id)options forType:(id)type;
- (void)generateObjectRepresentations:(id)representations options:(id)options forClass:(Class)class;
- (void)getPDF:(id)f matchingInputSize:(BOOL)size withMargin:(BOOL)margin startingAtPage:(int64_t)page endingAtPage:(int64_t)atPage;
@end

@implementation WFPDFContentItem

+ (id)localizedPluralTypeDescriptionWithContext:(id)context
{
  contextCopy = context;
  v4 = WFLocalizedStringResourceWithKey(@"PDFs", @"PDFs");
  v5 = [contextCopy localize:v4];

  return v5;
}

+ (id)localizedTypeDescriptionWithContext:(id)context
{
  contextCopy = context;
  v4 = WFLocalizedStringResourceWithKey(@"PDF", @"PDF");
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
  v2 = MEMORY[0x277CBEB40];
  v3 = [WFObjectType typeWithClass:objc_opt_class()];
  v4 = [WFObjectType typeWithClass:objc_opt_class()];
  v5 = [v2 orderedSetWithObjects:{v3, v4, 0}];

  v6 = +[WFImageContentItem imageTypes];
  [v5 unionOrderedSet:v6];

  v7 = [WFObjectType typeWithClassName:@"PDFDocument" frameworkName:@"PDFKit" location:0];
  [v5 addObject:v7];

  return v5;
}

+ (id)ownedTypes
{
  v2 = MEMORY[0x277CBEB70];
  v3 = [WFObjectType typeWithClassName:@"UIPrintFormatter" frameworkName:@"UIKit" location:2];
  v4 = [MEMORY[0x277D79F68] typeWithUTType:*MEMORY[0x277CE1E08]];
  v5 = [v2 orderedSetWithObjects:{v3, v4, 0}];

  return v5;
}

+ (void)getPDFFromPrintFormatters:(id)formatters nameIfKnown:(id)known matchingInputSize:(BOOL)size withMargin:(BOOL)margin startingAtPage:(int64_t)page endingAtPage:(int64_t)atPage completionHandler:(id)handler
{
  formattersCopy = formatters;
  knownCopy = known;
  handlerCopy = handler;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __133__WFPDFContentItem_getPDFFromPrintFormatters_nameIfKnown_matchingInputSize_withMargin_startingAtPage_endingAtPage_completionHandler___block_invoke;
  v20[3] = &unk_278348108;
  sizeCopy = size;
  marginCopy = margin;
  v21 = formattersCopy;
  v22 = knownCopy;
  pageCopy = page;
  atPageCopy = atPage;
  v23 = handlerCopy;
  v17 = handlerCopy;
  v18 = knownCopy;
  v19 = formattersCopy;
  dispatch_async(MEMORY[0x277D85CD0], v20);
}

void __133__WFPDFContentItem_getPDFFromPrintFormatters_nameIfKnown_matchingInputSize_withMargin_startingAtPage_endingAtPage_completionHandler___block_invoke(uint64_t a1)
{
  v48 = *MEMORY[0x277D85DE8];
  v29 = [MEMORY[0x277D79F68] typeWithUTType:*MEMORY[0x277CE1E08]];
  v32 = *(a1 + 72);
  v2 = objc_alloc_init(WFPageRenderer);
  [(WFPageRenderer *)v2 setIncludeMargin:*(a1 + 73)];
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v3 = *(a1 + 32);
  v4 = [v3 countByEnumeratingWithState:&v37 objects:v47 count:16];
  if (v4)
  {
    v5 = *v38;
    v31 = v42;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v38 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v37 + 1) + 8 * i);
        getUIPrintFormatterClass_17393();
        if (objc_opt_isKindOfClass())
        {
          v8 = [(WFPageRenderer *)v2 renderer];
          v9 = [(WFPageRenderer *)v2 renderer];
          [v8 addPrintFormatter:v7 startingAtPageAtIndex:{objc_msgSend(v9, "numberOfPages")}];

          if (*(a1 + 73) == 1)
          {
            getUIViewPrintFormatterClass_17394();
            if (objc_opt_isKindOfClass())
            {
              v10 = [v7 view];
              v43 = 0;
              v44 = &v43;
              v45 = 0x2050000000;
              v11 = getWKWebViewClass_softClass_17395;
              v46 = getWKWebViewClass_softClass_17395;
              if (!getWKWebViewClass_softClass_17395)
              {
                v41[0] = MEMORY[0x277D85DD0];
                v41[1] = 3221225472;
                v42[0] = __getWKWebViewClass_block_invoke_17396;
                v42[1] = &unk_27834A178;
                v42[2] = &v43;
                __getWKWebViewClass_block_invoke_17396(v41);
                v11 = v44[3];
              }

              v12 = v11;
              _Block_object_dispose(&v43, 8);
              isKindOfClass = objc_opt_isKindOfClass();

              v32 &= isKindOfClass ^ 1;
            }
          }
        }
      }

      v4 = [v3 countByEnumeratingWithState:&v37 objects:v47 count:16];
    }

    while (v4);
  }

  if (v32)
  {
    v14 = [(WFPageRenderer *)v2 renderer];
    v15 = [v14 numberOfPages] > 0;

    v16 = *MEMORY[0x277CBF3A8];
    v17 = *(MEMORY[0x277CBF3A8] + 8);
    if (v15)
    {
      v18 = 0;
      do
      {
        [(WFPageRenderer *)v2 sizeForPageAtIndex:v18, v29, v31];
        if (v19 >= v16)
        {
          v16 = v19;
        }

        if (v20 >= v17)
        {
          v17 = v20;
        }

        v21 = [(WFPageRenderer *)v2 renderer];
        v22 = [v21 numberOfPages];

        ++v18;
      }

      while (v18 < v22);
    }

    [(WFPageRenderer *)v2 setMatchInputSize:1, v29];
    [(WFPageRenderer *)v2 setInputSize:v16, v17];
  }

  v23 = [WFFileRepresentation proposedFilenameForFile:*(a1 + 40) ofType:v29, v29];
  v24 = [WFTemporaryFileManager createTemporaryFileWithFilename:v23];

  v25 = *(a1 + 56) - 1;
  v26 = *(a1 + 64) - 1;
  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 3221225472;
  v33[2] = __133__WFPDFContentItem_getPDFFromPrintFormatters_nameIfKnown_matchingInputSize_withMargin_startingAtPage_endingAtPage_completionHandler___block_invoke_2;
  v33[3] = &unk_278349EF0;
  v34 = v24;
  v35 = v30;
  v36 = *(a1 + 48);
  v27 = v30;
  v28 = v24;
  [(WFPageRenderer *)v2 renderToPDF:v28 startingAtPage:v25 endingAtPage:v26 completionHandler:v33];
}

void __133__WFPDFContentItem_getPDFFromPrintFormatters_nameIfKnown_matchingInputSize_withMargin_startingAtPage_endingAtPage_completionHandler___block_invoke_2(void *a1)
{
  v2 = [WFFileRepresentation fileWithURL:a1[4] options:1 ofType:a1[5]];
  (*(a1[6] + 16))();
}

+ (id)itemWithPrintFormatters:(id)formatters names:(id)names
{
  namesCopy = names;
  v7 = getUIPrintFormatterClass_17393;
  formattersCopy = formatters;
  v7();
  v9 = objc_opt_new();
  v10 = [self itemWithObject:v9];

  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __50__WFPDFContentItem_itemWithPrintFormatters_names___block_invoke;
  v14[3] = &unk_27834A228;
  v15 = namesCopy;
  v11 = namesCopy;
  v12 = [formattersCopy if_map:v14];

  [v10 setObjectRepresentations:v12 forClass:getUIPrintFormatterClass_17393()];

  return v10;
}

id __50__WFPDFContentItem_itemWithPrintFormatters_names___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = a2;
  v6 = [v4 objectAtIndex:a3];
  v7 = [WFObjectRepresentation object:v5 named:v6];

  return v7;
}

- (void)enumeratePagesInDocument:(id)document block:(id)block
{
  documentCopy = document;
  blockCopy = block;
  if ([documentCopy pageCount])
  {
    v6 = 0;
    do
    {
      v7 = [documentCopy pageAtIndex:v6];
      blockCopy[2](blockCopy, v7);

      ++v6;
    }

    while (v6 < [documentCopy pageCount]);
  }
}

- (void)generateObjectRepresentations:(id)representations options:(id)options forClass:(Class)class
{
  representationsCopy = representations;
  optionsCopy = options;
  if (objc_opt_class() == class)
  {
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __67__WFPDFContentItem_generateObjectRepresentations_options_forClass___block_invoke;
    v27[3] = &unk_278348180;
    v29 = representationsCopy;
    v27[4] = self;
    v28 = optionsCopy;
    [(WFContentItem *)self getObjectRepresentation:v27 forClass:getPDFDocumentClass()];

    v13 = v29;
  }

  else if (objc_opt_class() == class)
  {
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __67__WFPDFContentItem_generateObjectRepresentations_options_forClass___block_invoke_3;
    v24[3] = &unk_278348180;
    v26 = representationsCopy;
    v24[4] = self;
    v25 = optionsCopy;
    [(WFContentItem *)self getObjectRepresentation:v24 forClass:getPDFDocumentClass()];

    v13 = v26;
  }

  else
  {
    v10 = NSStringFromClass(class);
    v11 = [@"UIPrintFormatter" isEqualToString:v10];

    if (v11)
    {
      v20[0] = MEMORY[0x277D85DD0];
      v20[1] = 3221225472;
      v20[2] = __67__WFPDFContentItem_generateObjectRepresentations_options_forClass___block_invoke_5;
      v20[3] = &unk_278349FC8;
      v21 = optionsCopy;
      selfCopy = self;
      v23 = representationsCopy;
      v12 = [MEMORY[0x277D79F68] typeWithUTType:*MEMORY[0x277CE1E08]];
      [(WFContentItem *)self getFileRepresentation:v20 forType:v12];

      v13 = v21;
    }

    else
    {
      v14 = NSStringFromClass(class);
      v15 = [@"PDFDocument" isEqualToString:v14];

      if (!v15)
      {
        v17 = [objc_opt_class() badCoercionErrorForObjectClass:class];
        (*(representationsCopy + 2))(representationsCopy, 0, v17);

        goto LABEL_10;
      }

      v18[0] = MEMORY[0x277D85DD0];
      v18[1] = 3221225472;
      v18[2] = __67__WFPDFContentItem_generateObjectRepresentations_options_forClass___block_invoke_7;
      v18[3] = &unk_278348570;
      v18[4] = self;
      v19 = representationsCopy;
      v16 = [MEMORY[0x277D79F68] typeWithUTType:*MEMORY[0x277CE1E08]];
      [(WFContentItem *)self getFileRepresentation:v18 forType:v16];

      v13 = v19;
    }
  }

LABEL_10:
}

void __67__WFPDFContentItem_generateObjectRepresentations_options_forClass___block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a2;
  v7 = a4;
  if (v6)
  {
    v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v12 = MEMORY[0x277D85DD0];
    v13 = 3221225472;
    v14 = __67__WFPDFContentItem_generateObjectRepresentations_options_forClass___block_invoke_2;
    v15 = &unk_278348158;
    v9 = *(a1 + 32);
    v16 = *(a1 + 40);
    v10 = v8;
    v17 = v10;
    [v9 enumeratePagesInDocument:v6 block:&v12];
    if (v10)
    {
      v11 = [WFObjectRepresentation objects:v10, v12, v13, v14, v15, v16];
    }

    else
    {
      v11 = 0;
    }

    (*(*(a1 + 48) + 16))();
  }

  else
  {
    (*(*(a1 + 48) + 16))();
  }
}

void __67__WFPDFContentItem_generateObjectRepresentations_options_forClass___block_invoke_3(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a2;
  v7 = a4;
  if (v6)
  {
    v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v12 = MEMORY[0x277D85DD0];
    v13 = 3221225472;
    v14 = __67__WFPDFContentItem_generateObjectRepresentations_options_forClass___block_invoke_4;
    v15 = &unk_278348158;
    v9 = *(a1 + 32);
    v16 = *(a1 + 40);
    v10 = v8;
    v17 = v10;
    [v9 enumeratePagesInDocument:v6 block:&v12];
    if (v10)
    {
      v11 = [WFObjectRepresentation objects:v10, v12, v13, v14, v15, v16];
    }

    else
    {
      v11 = 0;
    }

    (*(*(a1 + 48) + 16))();
  }

  else
  {
    (*(*(a1 + 48) + 16))();
  }
}

void __67__WFPDFContentItem_generateObjectRepresentations_options_forClass___block_invoke_5(uint64_t a1, uint64_t a2)
{
  v3 = [WFWebResource webResourceWithFile:a2];
  v4 = *(a1 + 32);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __67__WFPDFContentItem_generateObjectRepresentations_options_forClass___block_invoke_6;
  v6[3] = &unk_2783481A8;
  v5 = *(a1 + 48);
  v6[4] = *(a1 + 40);
  v7 = v5;
  [WFWKWebViewCapturer loadWebResource:v3 withSize:0 configuration:v4 coercionOptions:v6 completionHandler:*MEMORY[0x277CBF3A8], *(MEMORY[0x277CBF3A8] + 8)];
}

void __67__WFPDFContentItem_generateObjectRepresentations_options_forClass___block_invoke_7(uint64_t a1, void *a2)
{
  v18[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v5 = [v3 representationType];
    v6 = objc_alloc(getPDFDocumentClass());
    if (v5)
    {
      v7 = [v4 fileURL];
      v8 = [v6 initWithURL:v7];
    }

    else
    {
      v7 = [v4 data];
      v8 = [v6 initWithData:v7];
    }

    v9 = v8;

    v10 = *(a1 + 40);
    if (v9)
    {
      v11 = [*(a1 + 32) name];
      v12 = [WFObjectRepresentation object:v9 named:v11];
      v16 = v12;
      v13 = [MEMORY[0x277CBEA60] arrayWithObjects:&v16 count:1];
      (*(v10 + 16))(v10, v13, 0);
    }

    else
    {
      v14 = MEMORY[0x277CCA9B8];
      v15 = *MEMORY[0x277CCA050];
      v17 = *MEMORY[0x277CCA450];
      v11 = WFLocalizedString(@"The PDF was corrupt or could not be read.");
      v18[0] = v11;
      v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:&v17 count:1];
      v13 = [v14 errorWithDomain:v15 code:259 userInfo:v12];
      (*(v10 + 16))(v10, 0, v13);
    }
  }

  else
  {
    (*(*(a1 + 40) + 16))();
  }
}

void __67__WFPDFContentItem_generateObjectRepresentations_options_forClass___block_invoke_6(uint64_t a1, void *a2, void *a3)
{
  v11[1] = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [a2 viewPrintFormatter];
  v7 = *(a1 + 40);
  if (v6)
  {
    v8 = [*(a1 + 32) name];
    v9 = [WFObjectRepresentation object:v6 named:v8];
    v11[0] = v9;
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:1];
    (*(v7 + 16))(v7, v10, 0);
  }

  else
  {
    (*(v7 + 16))(*(a1 + 40), 0, v5);
  }
}

void __67__WFPDFContentItem_generateObjectRepresentations_options_forClass___block_invoke_4(uint64_t a1, void *a2)
{
  v14 = a2;
  v3 = [v14 attributedString];

  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x277CCAB48]);
    v5 = [*(a1 + 32) dictionary];
    v6 = [v5 objectForKey:@"WFCoercionOptionPDFPageHeaderText"];

    if (v6)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v7 = [objc_alloc(MEMORY[0x277CCA898]) initWithString:v6];
        [v4 appendAttributedString:v7];
      }
    }

    v8 = [v14 attributedString];
    [v4 appendAttributedString:v8];

    v9 = [*(a1 + 32) dictionary];
    v10 = [v9 objectForKey:@"WFCoercionOptionPDFPageFooterText"];

    if (v10)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v11 = [objc_alloc(MEMORY[0x277CCA898]) initWithString:v10];
        [v4 appendAttributedString:v11];
      }
    }

    v12 = *(a1 + 40);
    v13 = [v4 copy];
    [v12 addObject:v13];
  }
}

void __67__WFPDFContentItem_generateObjectRepresentations_options_forClass___block_invoke_2(uint64_t a1, void *a2)
{
  v12 = a2;
  v3 = [v12 string];

  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x277CCAB68]);
    v5 = [*(a1 + 32) dictionary];
    v6 = [v5 objectForKey:@"WFCoercionOptionPDFPageHeaderText"];

    if (v6)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [v4 appendString:v6];
      }
    }

    v7 = [v12 string];
    [v4 appendString:v7];

    v8 = [*(a1 + 32) dictionary];
    v9 = [v8 objectForKey:@"WFCoercionOptionPDFPageFooterText"];

    if (v9)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [v4 appendString:v9];
      }
    }

    v10 = *(a1 + 40);
    v11 = [v4 copy];
    [v10 addObject:v11];
  }
}

- (void)generateFileRepresentations:(id)representations options:(id)options forType:(id)type
{
  representationsCopy = representations;
  typeCopy = type;
  if ([typeCopy conformsToUTType:*MEMORY[0x277CE1E08]])
  {
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __64__WFPDFContentItem_generateFileRepresentations_options_forType___block_invoke;
    v12[3] = &unk_278349F78;
    v13 = representationsCopy;
    [(WFPDFContentItem *)self getPDF:v12 matchingInputSize:1 withMargin:1 startingAtPage:1 endingAtPage:0x7FFFFFFFFFFFFFFFLL];
  }

  else
  {
    v9 = +[WFImageContentItem imageTypes];
    v10 = [typeCopy conformsToTypes:v9];

    if (v10)
    {
      [(WFPDFContentItem *)self createImageWithFileType:typeCopy colorspace:0 resolution:representationsCopy completion:300.0];
    }

    else
    {
      v11 = [objc_opt_class() badCoercionErrorForType:typeCopy];
      (*(representationsCopy + 2))(representationsCopy, 0, v11);
    }
  }
}

void __64__WFPDFContentItem_generateFileRepresentations_options_forType___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v10[1] = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  if (a2)
  {
    v10[0] = a2;
    v5 = MEMORY[0x277CBEA60];
    v6 = a3;
    v7 = a2;
    v8 = [v5 arrayWithObjects:v10 count:1];
    (*(v3 + 16))(v3, v8, v6);
  }

  else
  {
    v9 = *(v3 + 16);
    v7 = a3;
    v9(v3, 0, v7);
    v8 = 0;
  }
}

- (void)createImageWithFileType:(id)type colorspace:(CGColorSpace *)colorspace resolution:(double)resolution completion:(id)completion
{
  typeCopy = type;
  completionCopy = completion;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __77__WFPDFContentItem_createImageWithFileType_colorspace_resolution_completion___block_invoke;
  v17[3] = &unk_278348130;
  v18 = typeCopy;
  v19 = completionCopy;
  resolutionCopy = resolution;
  colorspaceCopy = colorspace;
  v17[4] = self;
  v12 = MEMORY[0x277D79F68];
  v13 = *MEMORY[0x277CE1E08];
  v14 = typeCopy;
  v15 = completionCopy;
  v16 = [v12 typeWithUTType:v13];
  [(WFContentItem *)self getFileRepresentation:v17 forType:v16];
}

void __77__WFPDFContentItem_createImageWithFileType_colorspace_resolution_completion___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = v5;
  if (a3)
  {
    v7 = *(*(a1 + 48) + 16);
LABEL_3:
    v7();
    goto LABEL_16;
  }

  if (![v5 representationType])
  {
    v34 = [v6 data];
    v35 = CGDataProviderCreateWithCFData(v34);

    v9 = CGPDFDocumentCreateWithProvider(v35);
    CGDataProviderRelease(v35);
    if (v9)
    {
      goto LABEL_6;
    }

LABEL_18:
    v7 = *(*(a1 + 48) + 16);
    goto LABEL_3;
  }

  v8 = [v6 fileURL];
  v9 = CGPDFDocumentCreateWithURL(v8);

  if (!v9)
  {
    goto LABEL_18;
  }

LABEL_6:
  v36 = v6;
  v39 = objc_opt_new();
  NumberOfPages = CGPDFDocumentGetNumberOfPages(v9);
  if (NumberOfPages)
  {
    v11 = NumberOfPages;
    v12 = 1;
    v13 = 0x277D79000uLL;
    v37 = NumberOfPages;
    v38 = v9;
    do
    {
      Page = CGPDFDocumentGetPage(v9, v12);
      BoxRect = CGPDFPageGetBoxRect(Page, kCGPDFMediaBox);
      x = BoxRect.origin.x;
      y = BoxRect.origin.y;
      width = BoxRect.size.width;
      height = BoxRect.size.height;
      v19 = [objc_alloc(*(v13 + 3576)) initWithSize:0 opaque:*(a1 + 64) scale:1 colorspace:BoxRect.size.width hdrCapable:{BoxRect.size.height, *(a1 + 56) / 72.0}];
      v20 = v19;
      if (v19)
      {
        v21 = [v19 CGContext];
        CGContextSetRGBFillColor(v21, 1.0, 1.0, 1.0, 1.0);
        v42.origin.x = x;
        v42.origin.y = y;
        v42.size.width = width;
        v42.size.height = height;
        CGContextFillRect(v21, v42);
        CGContextSetInterpolationQuality(v21, kCGInterpolationHigh);
        CGContextSetRenderingIntent(v21, kCGRenderingIntentDefault);
        v43.origin.x = x;
        v43.origin.y = y;
        v43.size.width = width;
        v43.size.height = height;
        v22 = CGRectGetHeight(v43);
        CGContextTranslateCTM(v21, 0.0, v22);
        CGContextScaleCTM(v21, 1.0, -1.0);
        v44.origin.x = x;
        v44.origin.y = y;
        v44.size.width = width;
        v44.size.height = height;
        CGPDFPageGetDrawingTransform(&transform, Page, kCGPDFMediaBox, v44, 0, 1);
        CGContextConcatCTM(v21, &transform);
        CGContextDrawPDFPage(v21, Page);
        Image = CGBitmapContextCreateImage(v21);
        if (Image)
        {
          v24 = Image;
          if (v11 == 1)
          {
            v25 = [*(a1 + 32) name];
          }

          else
          {
            v26 = MEMORY[0x277CCACA8];
            v27 = [*(a1 + 32) name];
            v25 = [v26 stringWithFormat:@"%@-%lu", v27, v12];
          }

          v28 = [WFFileRepresentation proposedFilenameForFile:v25 ofType:*(a1 + 40)];
          v29 = [WFTemporaryFileManager createTemporaryFileWithFilename:v28];
          v30 = [*(a1 + 40) utType];
          v31 = [v30 identifier];
          v32 = CGImageDestinationCreateWithURL(v29, v31, 1uLL, 0);

          CGImageDestinationAddImage(v32, v24, 0);
          CGImageDestinationFinalize(v32);
          CFRelease(v32);
          CFRelease(v24);
          v33 = [WFFileRepresentation fileWithURL:v29 options:1];
          [v39 addObject:v33];

          v11 = v37;
          v9 = v38;
          v13 = 0x277D79000;
        }
      }

      ++v12;
    }

    while (v12 <= v11);
  }

  CGPDFDocumentRelease(v9);
  (*(*(a1 + 48) + 16))();

  v6 = v36;
LABEL_16:
}

- (void)getPDF:(id)f matchingInputSize:(BOOL)size withMargin:(BOOL)margin startingAtPage:(int64_t)page endingAtPage:(int64_t)atPage
{
  marginCopy = margin;
  sizeCopy = size;
  v12 = getUIPrintFormatterClass_17393;
  fCopy = f;
  v16 = [(WFContentItem *)self objectsForClass:v12()];
  v14 = objc_opt_class();
  name = [(WFContentItem *)self name];
  [v14 getPDFFromPrintFormatters:v16 nameIfKnown:name matchingInputSize:sizeCopy withMargin:marginCopy startingAtPage:page endingAtPage:atPage completionHandler:fCopy];
}

@end