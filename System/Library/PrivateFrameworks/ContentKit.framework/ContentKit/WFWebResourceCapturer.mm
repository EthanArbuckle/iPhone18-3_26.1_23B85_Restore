@interface WFWebResourceCapturer
+ (void)getImageRepresentationForWebResource:(id)a3 atSize:(CGSize)a4 coercionOptions:(id)a5 completionHandler:(id)a6;
+ (void)getPasteboardRepresentationForWebResource:(id)a3 type:(id)a4 coercionOptions:(id)a5 completionHandler:(id)a6;
+ (void)getPrintFormatterForWebResource:(id)a3 coercionOptions:(id)a4 completionHandler:(id)a5;
- (void)generatePDFForWebResource:(id)a3 includeMargin:(BOOL)a4 coercionOptions:(id)a5 completionHandler:(id)a6;
@end

@implementation WFWebResourceCapturer

- (void)generatePDFForWebResource:(id)a3 includeMargin:(BOOL)a4 coercionOptions:(id)a5 completionHandler:(id)a6
{
  v9 = a6;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __99__WFWebResourceCapturer_generatePDFForWebResource_includeMargin_coercionOptions_completionHandler___block_invoke;
  v11[3] = &unk_278347478;
  v12 = v9;
  v13 = a4;
  v10 = v9;
  [WFWebResourceCapturer getPrintFormatterForWebResource:a3 coercionOptions:a5 completionHandler:v11];
}

void __99__WFWebResourceCapturer_generatePDFForWebResource_includeMargin_coercionOptions_completionHandler___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8[1] = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v8[0] = a2;
    v5 = MEMORY[0x277CBEA60];
    v6 = a2;
    v7 = [v5 arrayWithObjects:v8 count:1];
    [WFPDFContentItem getPDFFromPrintFormatters:v7 nameIfKnown:0 matchingInputSize:1 withMargin:*(a1 + 40) startingAtPage:1 endingAtPage:0x7FFFFFFFFFFFFFFFLL completionHandler:*(a1 + 32)];
  }

  else
  {
    (*(*(a1 + 32) + 16))(*(a1 + 32), 0, a4);
    v7 = 0;
  }
}

+ (void)getImageRepresentationForWebResource:(id)a3 atSize:(CGSize)a4 coercionOptions:(id)a5 completionHandler:(id)a6
{
  height = a4.height;
  width = a4.width;
  v10 = a6;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __103__WFWebResourceCapturer_getImageRepresentationForWebResource_atSize_coercionOptions_completionHandler___block_invoke;
  v12[3] = &unk_278347450;
  v13 = v10;
  v11 = v10;
  [WFWKWebViewCapturer loadWebResource:a3 withSize:0 configuration:a5 coercionOptions:v12 completionHandler:width, height];
}

void __103__WFWebResourceCapturer_getImageRepresentationForWebResource_atSize_coercionOptions_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __103__WFWebResourceCapturer_getImageRepresentationForWebResource_atSize_coercionOptions_completionHandler___block_invoke_2;
    v4[3] = &unk_2783474A0;
    v6 = *(a1 + 32);
    v5 = v3;
    [v5 takeSnapshotWithConfiguration:0 completionHandler:v4];
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }
}

void __103__WFWebResourceCapturer_getImageRepresentationForWebResource_atSize_coercionOptions_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v8 = a2;
  if (v8)
  {
    v3 = objc_alloc(MEMORY[0x277D79FC8]);
    v4 = [MEMORY[0x277D79F18] currentDevice];
    [v4 screenScale];
    v5 = [v3 initWithPlatformImage:v8 scale:?];

    v6 = *(a1 + 40);
    v7 = [*(a1 + 32) title];
    (*(v6 + 16))(v6, v5, v7, 0);
  }

  else
  {
    (*(*(a1 + 40) + 16))();
  }
}

+ (void)getPrintFormatterForWebResource:(id)a3 coercionOptions:(id)a4 completionHandler:(id)a5
{
  v38 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = getWFContentGraphLogObject();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v37 = "+[WFWebResourceCapturer getPrintFormatterForWebResource:coercionOptions:completionHandler:]";
    _os_log_impl(&dword_21E1BD000, v10, OS_LOG_TYPE_INFO, "%s getting print formatter", buf, 0xCu);
  }

  v11 = [MEMORY[0x277D79F68] typeFromFileExtension:@"pages"];
  v35[0] = v11;
  v12 = [MEMORY[0x277D79F68] typeFromFileExtension:@"key"];
  v35[1] = v12;
  v13 = [MEMORY[0x277D79F68] typeFromFileExtension:@"numbers"];
  v35[2] = v13;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v35 count:3];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v15 = [v7 file];
    v16 = [v15 wfType];
    v17 = [v16 conformsToTypes:v14];

    if (v17)
    {
      v29 = v8;
      v18 = [v15 fileURL];
      v34 = *MEMORY[0x277CBE868];
      v19 = v34;
      v20 = [MEMORY[0x277CBEA60] arrayWithObjects:&v34 count:1];
      v21 = [v18 resourceValuesForKeys:v20 error:0];
      v22 = [v21 objectForKey:v19];
      v23 = [v22 BOOLValue];

      if (v23)
      {
        v33 = v15;
        v24 = [MEMORY[0x277CBEA60] arrayWithObjects:&v33 count:1];
        v25 = [v15 filename];
        v32 = 0;
        v26 = WFCreateArchiveWithFiles(v24, v25, @"zip", &v32);
        v27 = v32;

        if (!v26)
        {
          (*(v9 + 2))(v9, 0, 0, v27);

          v8 = v29;
          goto LABEL_11;
        }

        v28 = [WFWebResource webResourceWithFile:v26];

        v7 = v28;
      }

      v8 = v29;
    }
  }

  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __91__WFWebResourceCapturer_getPrintFormatterForWebResource_coercionOptions_completionHandler___block_invoke;
  v30[3] = &unk_278347450;
  v31 = v9;
  [WFWKWebViewCapturer loadWebResource:v7 withSize:0 configuration:v8 coercionOptions:v30 completionHandler:612.0, 792.0];
  v15 = v31;
LABEL_11:
}

void __91__WFWebResourceCapturer_getPrintFormatterForWebResource_coercionOptions_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = *(a1 + 32);
  v12 = v5;
  if (v5)
  {
    v7 = a3;
    v8 = [v12 viewPrintFormatter];
    v9 = [v8 copy];
    v10 = [v12 title];
    (*(v6 + 16))(v6, v9, v10, v7);
  }

  else
  {
    v11 = *(v6 + 16);
    v8 = a3;
    v11(v6, 0, 0, v8);
  }
}

+ (void)getPasteboardRepresentationForWebResource:(id)a3 type:(id)a4 coercionOptions:(id)a5 completionHandler:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = [MEMORY[0x277D79F68] typeFromPasteboardType:*MEMORY[0x277D7A7E8]];
  if (![v10 conformsToType:v13])
  {

    goto LABEL_5;
  }

  v14 = [getWKWebViewClass() instancesRespondToSelector:sel__getWebArchiveDataWithCompletionHandler_];

  if (!v14)
  {
LABEL_5:
    v24 = MEMORY[0x277D85DD0];
    v25 = 3221225472;
    v26 = __106__WFWebResourceCapturer_getPasteboardRepresentationForWebResource_type_coercionOptions_completionHandler___block_invoke_3;
    v27 = &unk_2783481A8;
    v15 = &v29;
    v16 = &v28;
    v28 = v10;
    v29 = v12;
    v17 = *MEMORY[0x277CBF3A8];
    v18 = *(MEMORY[0x277CBF3A8] + 8);
    v22 = v10;
    v23 = v12;
    v21 = &v24;
    goto LABEL_6;
  }

  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __106__WFWebResourceCapturer_getPasteboardRepresentationForWebResource_type_coercionOptions_completionHandler___block_invoke;
  v30[3] = &unk_2783481A8;
  v15 = &v32;
  v16 = &v31;
  v31 = v10;
  v32 = v12;
  v17 = *MEMORY[0x277CBF3A8];
  v18 = *(MEMORY[0x277CBF3A8] + 8);
  v19 = v10;
  v20 = v12;
  v21 = v30;
LABEL_6:
  [WFWKWebViewCapturer loadWebResource:v9 withSize:0 configuration:v11 coercionOptions:v21 completionHandler:v17, v18, v24, v25, v26, v27];
}

void __106__WFWebResourceCapturer_getPasteboardRepresentationForWebResource_type_coercionOptions_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __106__WFWebResourceCapturer_getPasteboardRepresentationForWebResource_type_coercionOptions_completionHandler___block_invoke_2;
    v4[3] = &unk_278349E28;
    v7 = *(a1 + 40);
    v5 = *(a1 + 32);
    v6 = v3;
    [v6 _getWebArchiveDataWithCompletionHandler:v4];
  }

  else
  {
    (*(*(a1 + 40) + 16))();
  }
}

void __106__WFWebResourceCapturer_getPasteboardRepresentationForWebResource_type_coercionOptions_completionHandler___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v13 = __106__WFWebResourceCapturer_getPasteboardRepresentationForWebResource_type_coercionOptions_completionHandler___block_invoke_4;
    v14 = &unk_278347428;
    v7 = *(a1 + 32);
    v18 = *(a1 + 40);
    v15 = *(a1 + 32);
    v16 = v5;
    v17 = v6;
    v8 = v16;
    v9 = v7;
    v10 = v12;
    if ([getWKWebViewClass() instancesRespondToSelector:sel__executeEditCommand_argument_completion_] && (objc_msgSend(getWKWebViewClass(), "instancesRespondToSelector:", sel__doAfterNextPresentationUpdateWithoutWaitingForPainting_) & 1) != 0)
    {
      v19[0] = MEMORY[0x277D85DD0];
      v19[1] = 3221225472;
      v19[2] = __WFGetPasteboardRepresentationFromWKWebView_block_invoke;
      v19[3] = &unk_278347530;
      v11 = v8;
      v20 = v11;
      v21 = v9;
      v22 = v10;
      [v11 _executeEditCommand:@"selectAll" argument:0 completion:v19];
    }

    else
    {
      v13(v10, 0);
    }
  }

  else
  {
    (*(*(a1 + 40) + 16))();
  }
}

void __106__WFWebResourceCapturer_getPasteboardRepresentationForWebResource_type_coercionOptions_completionHandler___block_invoke_4(void *a1, void *a2)
{
  v3 = a1[7];
  v4 = a1[4];
  v5 = a1[5];
  v6 = a2;
  v7 = [v5 title];
  (*(v3 + 16))(v3, v6, v4, v7, a1[6]);
}

void __106__WFWebResourceCapturer_getPasteboardRepresentationForWebResource_type_coercionOptions_completionHandler___block_invoke_2(void *a1, void *a2, void *a3)
{
  v5 = a1[5];
  v4 = a1[6];
  v6 = a1[4];
  v7 = a3;
  v8 = a2;
  v9 = [v5 title];
  (*(v4 + 16))(v4, v8, v6, v9, v7);
}

@end