@interface WFPageRenderer
- (CGSize)inputSize;
- (CGSize)sizeForPageAtIndex:(int64_t)a3;
- (UIPrintPageRenderer)renderer;
- (double)margin;
- (id)renderToImage;
- (void)_renderToPDF:(id)a3 startingAtPage:(int64_t)a4 endingAtPage:(int64_t)a5 completionHandler:(id)a6;
- (void)renderPDFPageIndex:(int64_t)a3 pages:(int64_t)a4 measuredIndicesByFormatter:(id)a5 drawnIndicesByFormatter:(id)a6 linkMetricsByWebView:(id)a7 y:(double)a8 paperSize:(CGSize)a9 shouldDrawPageAtIndexHandler:(id)a10 completionHandler:(id)a11;
- (void)renderToPDF:(id)a3 startingAtPage:(int64_t)a4 endingAtPage:(int64_t)a5 completionHandler:(id)a6;
- (void)updateRendererSize;
@end

@implementation WFPageRenderer

- (CGSize)inputSize
{
  width = self->_inputSize.width;
  height = self->_inputSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (double)margin
{
  v2 = [(WFPageRenderer *)self includeMargin];
  result = 0.0;
  if (v2)
  {
    return 18.0;
  }

  return result;
}

- (void)updateRendererSize
{
  if ([(WFPageRenderer *)self matchInputSize])
  {
    [(WFPageRenderer *)self inputSize];
    v4 = v3;
    v6 = v5;
  }

  else
  {
    v6 = 0x4088C00000000000;
    v4 = 0x4083200000000000;
  }

  if ([(WFPageRenderer *)self includeMargin])
  {
    v7 = 18.0;
  }

  else
  {
    v7 = 0.0;
  }

  renderer = self->_renderer;
  WFPageRendererClass = getWFPageRendererClass();
  InstanceVariable = class_getInstanceVariable(WFPageRendererClass, "_wf_inputSize");
  v16[0] = v4;
  v16[1] = v6;
  v11 = [MEMORY[0x277CCAE60] valueWithBytes:v16 objCType:"{CGSize=dd}"];
  object_setIvarWithStrongDefault(renderer, InstanceVariable, v11);

  v12 = self->_renderer;
  v13 = getWFPageRendererClass();
  v14 = class_getInstanceVariable(v13, "_wf_margin");
  v15 = [MEMORY[0x277CCABB0] numberWithDouble:v7];
  object_setIvarWithStrongDefault(v12, v14, v15);
}

- (UIPrintPageRenderer)renderer
{
  renderer = self->_renderer;
  if (!renderer)
  {
    getWFPageRendererClass();
    v4 = objc_opt_new();
    v5 = self->_renderer;
    self->_renderer = v4;

    [(WFPageRenderer *)self updateRendererSize];
    renderer = self->_renderer;
  }

  return renderer;
}

- (id)renderToImage
{
  v33 = *MEMORY[0x277D85DE8];
  v3 = [(WFPageRenderer *)self renderer];
  v4 = [v3 numberOfPages];

  v5 = [(WFPageRenderer *)self renderer];
  [v5 printableRect];
  v7 = v6;
  v9 = v8;

  v10 = 0.0;
  softLinkUIGraphicsBeginImageContextWithOptions(0, v7, v9 * v4, 0.0);
  v27 = self;
  v11 = [(WFPageRenderer *)self renderer];
  [v11 prepareForDrawingPages:{0, v4}];

  v12 = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
  v26 = v4;
  if (v4 >= 1)
  {
    v13 = 0;
    do
    {
      v30 = 0u;
      v31 = 0u;
      v28 = 0u;
      v29 = 0u;
      v14 = [(WFPageRenderer *)v27 renderer];
      v15 = [v14 printFormattersForPageAtIndex:v13];

      v16 = [v15 countByEnumeratingWithState:&v28 objects:v32 count:16];
      if (v16)
      {
        v17 = v16;
        v18 = *v29;
        do
        {
          for (i = 0; i != v17; ++i)
          {
            if (*v29 != v18)
            {
              objc_enumerationMutation(v15);
            }

            v20 = *(*(&v28 + 1) + 8 * i);
            v21 = [v12 objectForKey:v20];
            v22 = [v21 integerValue];

            [v20 drawInRect:v22 forPageAtIndex:{0.0, v10, v7, v9}];
            v23 = [MEMORY[0x277CCABB0] numberWithInteger:v22 + 1];
            [v12 setObject:v23 forKey:v20];
          }

          v17 = [v15 countByEnumeratingWithState:&v28 objects:v32 count:16];
        }

        while (v17);
      }

      v10 = v9 + v10;
      ++v13;
    }

    while (v13 != v26);
  }

  v24 = softLinkUIGraphicsGetImageFromCurrentImageContext();
  softLinkUIGraphicsEndImageContext();

  return v24;
}

- (void)renderPDFPageIndex:(int64_t)a3 pages:(int64_t)a4 measuredIndicesByFormatter:(id)a5 drawnIndicesByFormatter:(id)a6 linkMetricsByWebView:(id)a7 y:(double)a8 paperSize:(CGSize)a9 shouldDrawPageAtIndexHandler:(id)a10 completionHandler:(id)a11
{
  width = a9.width;
  height = a9.height;
  v102 = *MEMORY[0x277D85DE8];
  v18 = a5;
  v19 = a6;
  v20 = a7;
  v21 = a10;
  v22 = a11;
  v23 = [(WFPageRenderer *)self matchInputSize];
  *v24.i64 = width;
  *&v24.i64[1] = height;
  v65 = v20;
  v66 = v22;
  rect = v24;
  v64 = v19;
  if (v23)
  {
    v62 = v21;
    v71 = *MEMORY[0x277CBF3A8];
    v99 = 0u;
    v100 = 0u;
    v97 = 0u;
    v98 = 0u;
    v25 = [(WFPageRenderer *)self renderer];
    v63 = a3;
    v26 = [v25 printFormattersForPageAtIndex:a3];

    v27 = [v26 countByEnumeratingWithState:&v97 objects:v101 count:16];
    if (v27)
    {
      v28 = v27;
      v29 = *v98;
      do
      {
        for (i = 0; i != v28; ++i)
        {
          if (*v98 != v29)
          {
            objc_enumerationMutation(v26);
          }

          v31 = *(*(&v97 + 1) + 8 * i);
          v32 = [v18 objectForKey:v31];
          v33 = [v32 integerValue];

          [v31 rectForPageAtIndex:v33];
          v70 = v34;
          [v31 rectForPageAtIndex:v33];
          v35.f64[0] = v70;
          v35.f64[1] = v36;
          v37 = vbslq_s8(vceqzq_f64(v35), rect, v35);
          v71 = vbslq_s8(vcgtq_f64(v71, v37), v71, v37);
          v38 = [MEMORY[0x277CCABB0] numberWithInteger:v33 + 1];
          [v18 setObject:v38 forKey:v31];
        }

        v28 = [v26 countByEnumeratingWithState:&v97 objects:v101 count:16];
      }

      while (v28);
    }

    rect = v71;
    v39 = v63;
    v21 = v62;
  }

  else
  {
    v39 = a3;
  }

  v40 = [(WFPageRenderer *)self includeMargin];
  v41 = 0;
  if (v40)
  {
    v42 = 18.0;
  }

  else
  {
    v42 = 0.0;
  }

  v43 = rect.i64[0];
  v44 = 0;
  v45 = rect.i64[1];
  v103 = CGRectInset(*&v41, v42, v42);
  x = v103.origin.x;
  y = v103.origin.y;
  v48 = v103.size.width;
  v49 = v103.size.height;
  v50 = [(WFPageRenderer *)self renderer];
  v51 = [v50 printFormattersForPageAtIndex:v39];
  v52 = v51;
  v53 = MEMORY[0x277CBEBF8];
  if (v51)
  {
    v53 = v51;
  }

  v54 = v53;

  v55 = v21[2](v21, v39);
  v56 = v55;
  if (v55)
  {
    softLinkUIGraphicsBeginPDFPageWithInfo(0, 0.0, 0.0, *rect.i64, *&rect.i64[1]);
  }

  v84[0] = MEMORY[0x277D85DD0];
  v84[1] = 3221225472;
  v84[2] = __174__WFPageRenderer_renderPDFPageIndex_pages_measuredIndicesByFormatter_drawnIndicesByFormatter_linkMetricsByWebView_y_paperSize_shouldDrawPageAtIndexHandler_completionHandler___block_invoke;
  v84[3] = &unk_2783473C0;
  v85 = v64;
  v96 = v56;
  v87 = x;
  v88 = y;
  v89 = v48;
  v90 = v49;
  v91 = a8;
  v92 = 0;
  v93 = 0;
  v95 = rect;
  v94 = rect;
  v86 = v65;
  v72[0] = MEMORY[0x277D85DD0];
  v72[1] = 3221225472;
  v72[2] = __174__WFPageRenderer_renderPDFPageIndex_pages_measuredIndicesByFormatter_drawnIndicesByFormatter_linkMetricsByWebView_y_paperSize_shouldDrawPageAtIndexHandler_completionHandler___block_invoke_4;
  v72[3] = &unk_2783473E8;
  v78 = v39;
  v79 = a4;
  v72[4] = self;
  v73 = v18;
  v74 = v85;
  v75 = v86;
  v80 = a8;
  v81 = rect;
  v82 = width;
  v83 = height;
  v76 = v21;
  v77 = v66;
  v57 = v66;
  v58 = v21;
  v59 = v86;
  v60 = v85;
  v61 = v18;
  [v54 if_enumerateAsynchronouslyInSequence:v84 completionHandler:v72];
}

void __174__WFPageRenderer_renderPDFPageIndex_pages_measuredIndicesByFormatter_drawnIndicesByFormatter_linkMetricsByWebView_y_paperSize_shouldDrawPageAtIndexHandler_completionHandler___block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a2;
  v7 = a4;
  v8 = [*(a1 + 32) objectForKey:v6];
  v9 = [v8 integerValue];

  v10 = *(a1 + 32);
  v11 = [MEMORY[0x277CCABB0] numberWithInteger:v9 + 1];
  [v10 setObject:v11 forKey:v6];

  if (*(a1 + 136))
  {
    v12 = 0;
  }

  else
  {
    DeviceRGB = CGColorSpaceCreateDeviceRGB();
    v12 = CGBitmapContextCreate(0, 1uLL, 1uLL, 8uLL, 4uLL, DeviceRGB, 1u);
    CGColorSpaceRelease(DeviceRGB);
    softLinkUIGraphicsPushContext(v12);
  }

  v14 = [(objc_class *)getUITraitCollectionClass() currentTraitCollection];
  UITraitCollectionClass = getUITraitCollectionClass();
  v16 = [(objc_class *)getUITraitCollectionClass() traitCollectionWithUserInterfaceStyle:1];
  [(objc_class *)UITraitCollectionClass setCurrentTraitCollection:v16];

  if (*(a1 + 64) > 0.0 && *(a1 + 72) > 0.0)
  {
    [v6 drawInRect:v9 forPageAtIndex:{*(a1 + 48), *(a1 + 56)}];
  }

  [(objc_class *)getUITraitCollectionClass() setCurrentTraitCollection:v14];
  if (v12)
  {
    softLinkUIGraphicsPopContext();
    CGContextRelease(v12);
LABEL_16:
    v7[2](v7, 0);
    goto LABEL_17;
  }

  getUIViewPrintFormatterClass();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_16;
  }

  v17 = [v6 view];
  v39 = 0;
  v40 = &v39;
  v41 = 0x2050000000;
  v18 = getWKWebViewClass_softClass;
  v42 = getWKWebViewClass_softClass;
  if (!getWKWebViewClass_softClass)
  {
    v38[0] = MEMORY[0x277D85DD0];
    v38[1] = 3221225472;
    v38[2] = __getWKWebViewClass_block_invoke;
    v38[3] = &unk_27834A178;
    v38[4] = &v39;
    __getWKWebViewClass_block_invoke(v38);
    v18 = v40[3];
  }

  v19 = v18;
  _Block_object_dispose(&v39, 8);
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

    goto LABEL_16;
  }

  v20 = v17;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __174__WFPageRenderer_renderPDFPageIndex_pages_measuredIndicesByFormatter_drawnIndicesByFormatter_linkMetricsByWebView_y_paperSize_shouldDrawPageAtIndexHandler_completionHandler___block_invoke_2;
  aBlock[3] = &unk_278347370;
  v21 = *(a1 + 64);
  v32 = *(a1 + 48);
  v33 = v21;
  v34 = *(a1 + 80);
  v22 = *(a1 + 104);
  v35 = *(a1 + 88);
  v36 = v22;
  v37 = *(a1 + 120);
  v31 = v7;
  v23 = _Block_copy(aBlock);
  v24 = [*(a1 + 40) objectForKey:v20];
  if (v24)
  {
    v23[2](v23, v24);
  }

  else
  {
    v25 = *(a1 + 64);
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __174__WFPageRenderer_renderPDFPageIndex_pages_measuredIndicesByFormatter_drawnIndicesByFormatter_linkMetricsByWebView_y_paperSize_shouldDrawPageAtIndexHandler_completionHandler___block_invoke_3;
    v26[3] = &unk_278347398;
    v27 = *(a1 + 40);
    v28 = v20;
    v29 = v23;
    [WFWebViewLinkExtractor extractLinksFromWKWebView:v28 withDestinationWidth:v26 completionHandler:v25];
  }

LABEL_17:
}

uint64_t __174__WFPageRenderer_renderPDFPageIndex_pages_measuredIndicesByFormatter_drawnIndicesByFormatter_linkMetricsByWebView_y_paperSize_shouldDrawPageAtIndexHandler_completionHandler___block_invoke_4(uint64_t a1)
{
  v2 = *(a1 + 80);
  if (v2 < *(a1 + 88) - 1)
  {
    return [*(a1 + 32) renderPDFPageIndex:v2 + 1 pages:*(a1 + 96) + *(a1 + 112) measuredIndicesByFormatter:*(a1 + 120) drawnIndicesByFormatter:*(a1 + 128) linkMetricsByWebView:*(a1 + 72) y:? paperSize:? shouldDrawPageAtIndexHandler:? completionHandler:?];
  }

  v4 = *(*(a1 + 72) + 16);

  return v4();
}

void __174__WFPageRenderer_renderPDFPageIndex_pages_measuredIndicesByFormatter_drawnIndicesByFormatter_linkMetricsByWebView_y_paperSize_shouldDrawPageAtIndexHandler_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v32 = *MEMORY[0x277D85DE8];
  v3 = a2;
  CurrentContext = softLinkUIGraphicsGetCurrentContext();
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v28;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v28 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v27 + 1) + 8 * i);
        [v10 rect];
        v12 = v11;
        v14 = v13;
        v16 = v15;
        v18 = v17;
        v19 = *(a1 + 40);
        v20 = *(a1 + 48);
        v21 = *(a1 + 72);
        v22 = *(a1 + 104);
        v23 = [v10 href];
        if (v23)
        {
          v24 = v22 - (v20 + v14 - v21) - v18;
          v25 = *(a1 + 120);

          if (v18 + v24 < v25)
          {
            v26 = [v10 href];
            v33.origin.x = v12 + v19;
            v33.origin.y = v24;
            v33.size.width = v16;
            v33.size.height = v18;
            CGPDFContextSetURLForRect(CurrentContext, v26, v33);
          }
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v7);
  }

  (*(*(a1 + 32) + 16))();
}

void __174__WFPageRenderer_renderPDFPageIndex_pages_measuredIndicesByFormatter_drawnIndicesByFormatter_linkMetricsByWebView_y_paperSize_shouldDrawPageAtIndexHandler_completionHandler___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    [*(a1 + 32) setObject:v3 forKey:*(a1 + 40)];
  }

  (*(*(a1 + 48) + 16))();
}

- (void)_renderToPDF:(id)a3 startingAtPage:(int64_t)a4 endingAtPage:(int64_t)a5 completionHandler:(id)a6
{
  v10 = a6;
  v11 = [a3 path];
  v12 = [(WFPageRenderer *)self renderer];
  [v12 paperRect];
  softLinkUIGraphicsBeginPDFContextToFile(v11, 0, v13, v14, v15, v16);

  v17 = [(WFPageRenderer *)self renderer];
  v18 = [v17 numberOfPages];

  v19 = [(WFPageRenderer *)self renderer];
  [v19 prepareForDrawingPages:{0, v18}];

  v20 = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
  v21 = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
  v22 = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
  v23 = [(WFPageRenderer *)self renderer];
  [v23 paperRect];
  v25 = v24;
  v27 = v26;

  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = __77__WFPageRenderer__renderToPDF_startingAtPage_endingAtPage_completionHandler___block_invoke;
  v31[3] = &__block_descriptor_48_e8_B16__0q8l;
  v31[4] = a4;
  v31[5] = a5;
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __77__WFPageRenderer__renderToPDF_startingAtPage_endingAtPage_completionHandler___block_invoke_2;
  v29[3] = &unk_27834A5A8;
  v30 = v10;
  v28 = v10;
  [(WFPageRenderer *)self renderPDFPageIndex:0 pages:v18 measuredIndicesByFormatter:v20 drawnIndicesByFormatter:v21 linkMetricsByWebView:v22 y:v31 paperSize:0.0 shouldDrawPageAtIndexHandler:v25 completionHandler:v27, v29];
}

uint64_t __77__WFPageRenderer__renderToPDF_startingAtPage_endingAtPage_completionHandler___block_invoke_2(uint64_t a1)
{
  softLinkUIGraphicsEndPDFContext();
  v2 = *(*(a1 + 32) + 16);

  return v2();
}

- (void)renderToPDF:(id)a3 startingAtPage:(int64_t)a4 endingAtPage:(int64_t)a5 completionHandler:(id)a6
{
  v10 = a3;
  v11 = a6;
  if (renderToPDF_startingAtPage_endingAtPage_completionHandler__onceToken != -1)
  {
    dispatch_once(&renderToPDF_startingAtPage_endingAtPage_completionHandler__onceToken, &__block_literal_global_12005);
  }

  v12 = dispatch_get_global_queue(0, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __76__WFPageRenderer_renderToPDF_startingAtPage_endingAtPage_completionHandler___block_invoke_2;
  block[3] = &unk_278347328;
  block[4] = self;
  v16 = v10;
  v18 = a4;
  v19 = a5;
  v17 = v11;
  v13 = v11;
  v14 = v10;
  dispatch_async(v12, block);
}

void __76__WFPageRenderer_renderToPDF_startingAtPage_endingAtPage_completionHandler___block_invoke_2(uint64_t a1)
{
  dispatch_semaphore_wait(renderToPDF_startingAtPage_endingAtPage_completionHandler__semaphore, 0xFFFFFFFFFFFFFFFFLL);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __76__WFPageRenderer_renderToPDF_startingAtPage_endingAtPage_completionHandler___block_invoke_3;
  block[3] = &unk_278347328;
  v2 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v4 = v2;
  v6 = *(a1 + 56);
  v5 = *(a1 + 48);
  dispatch_async(MEMORY[0x277D85CD0], block);
}

intptr_t __76__WFPageRenderer_renderToPDF_startingAtPage_endingAtPage_completionHandler___block_invoke_3(uint64_t a1)
{
  [*(a1 + 32) _renderToPDF:*(a1 + 40) startingAtPage:*(a1 + 56) endingAtPage:*(a1 + 64) completionHandler:*(a1 + 48)];
  v1 = renderToPDF_startingAtPage_endingAtPage_completionHandler__semaphore;

  return dispatch_semaphore_signal(v1);
}

uint64_t __76__WFPageRenderer_renderToPDF_startingAtPage_endingAtPage_completionHandler___block_invoke()
{
  renderToPDF_startingAtPage_endingAtPage_completionHandler__semaphore = dispatch_semaphore_create(1);

  return MEMORY[0x2821F96F8]();
}

- (CGSize)sizeForPageAtIndex:(int64_t)a3
{
  v34 = *MEMORY[0x277D85DE8];
  v6 = *MEMORY[0x277CBF3A8];
  v5 = *(MEMORY[0x277CBF3A8] + 8);
  v7 = [(WFPageRenderer *)self renderer];
  [v7 paperRect];
  v9 = v8;
  v11 = v10;

  v12 = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v13 = [(WFPageRenderer *)self renderer];
  v14 = [v13 printFormattersForPageAtIndex:a3];

  v15 = [v14 countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v30;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v30 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v29 + 1) + 8 * i);
        v20 = [v12 objectForKey:v19];
        v21 = [v20 integerValue];

        [v19 rectForPageAtIndex:v21];
        if (v22 == 0.0)
        {
          v23 = v9;
        }

        else
        {
          v23 = v22;
        }

        if (v23 >= v6)
        {
          v6 = v23;
        }

        [v19 rectForPageAtIndex:v21];
        if (v24 == 0.0)
        {
          v25 = v11;
        }

        else
        {
          v25 = v24;
        }

        if (v25 >= v5)
        {
          v5 = v25;
        }

        v26 = [MEMORY[0x277CCABB0] numberWithInteger:v21 + 1];
        [v12 setObject:v26 forKey:v19];
      }

      v16 = [v14 countByEnumeratingWithState:&v29 objects:v33 count:16];
    }

    while (v16);
  }

  v27 = v6;
  v28 = v5;
  result.height = v28;
  result.width = v27;
  return result;
}

@end