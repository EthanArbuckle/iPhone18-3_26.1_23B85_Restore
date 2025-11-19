@interface TabDocumentViewForPageTest
- ($3E8622391F623B53F6251319F3599675)currentGeometry;
- (void)setFixedWebViewSize:(CGSize)a3 completionHandler:(id)a4;
@end

@implementation TabDocumentViewForPageTest

- ($3E8622391F623B53F6251319F3599675)currentGeometry
{
  p_fixedWebViewSize = &self->_fixedWebViewSize;
  if (self->_fixedWebViewSize.width == *MEMORY[0x277CBF3A8] && self->_fixedWebViewSize.height == *(MEMORY[0x277CBF3A8] + 8))
  {
    v16.receiver = self;
    v16.super_class = TabDocumentViewForPageTest;
    return [($3E8622391F623B53F6251319F3599675 *)&v16 currentGeometry];
  }

  else
  {
    *&retstr->var7.bottom = 0u;
    *&retstr->var8 = 0u;
    retstr->var6 = 0u;
    *&retstr->var7.top = 0u;
    retstr->var4 = 0u;
    retstr->var5 = 0u;
    *&retstr->var3.var1.top = 0u;
    *&retstr->var3.var1.bottom = 0u;
    *&retstr->var3.var0.top = 0u;
    *&retstr->var3.var0.bottom = 0u;
    *&retstr->var2.top = 0u;
    *&retstr->var2.bottom = 0u;
    *&retstr->var1.top = 0u;
    *&retstr->var1.bottom = 0u;
    [(TabDocumentViewForPageTest *)self bounds];
    x = v17.origin.x;
    y = v17.origin.y;
    width = v17.size.width;
    height = v17.size.height;
    v10 = p_fixedWebViewSize->width;
    v11 = p_fixedWebViewSize->height;
    v12 = CGRectGetMidX(v17) - v10 * 0.5;
    v18.origin.x = x;
    v18.origin.y = y;
    v18.size.width = width;
    v18.size.height = height;
    MidY = CGRectGetMidY(v18);
    retstr->var0.origin.x = v12;
    retstr->var0.origin.y = MidY - v11 * 0.5;
    retstr->var0.size.width = v10;
    retstr->var0.size.height = v11;
    size = retstr->var0.size;
    retstr->var4 = size;
    retstr->var5 = size;
    retstr->var6 = size;
    retstr->var9 = v10;
  }

  return result;
}

- (void)setFixedWebViewSize:(CGSize)a3 completionHandler:(id)a4
{
  height = a3.height;
  width = a3.width;
  v36 = *MEMORY[0x277D85DE8];
  v7 = a4;
  v8 = [(TabDocumentView *)self webView];
  [v8 frame];
  v10 = v9;
  v12 = v11;

  if (v10 != width || v12 != height)
  {
    self->_fixedWebViewSize.width = width;
    self->_fixedWebViewSize.height = height;
    v14 = [(TabDocumentView *)self webView];
    [(TabDocumentView *)self applyGeometryToWebView:v14];

    v15 = WBS_LOG_CHANNEL_PREFIXTest();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = v15;
      v17 = [(TabDocumentView *)self webView];
      [v17 frame];
      v19 = v18;
      v20 = [(TabDocumentView *)self webView];
      [v20 frame];
      v22 = v21;
      v23 = [(TabDocumentView *)self webView];
      [v23 frame];
      v25 = v24;
      v26 = [(TabDocumentView *)self webView];
      [v26 frame];
      v28 = 134218752;
      v29 = v19;
      v30 = 2048;
      v31 = v22;
      v32 = 2048;
      v33 = v25;
      v34 = 2048;
      v35 = v27;
      _os_log_impl(&dword_215819000, v16, OS_LOG_TYPE_INFO, "WebView frame for Page Test is (%.0f-%.0f, %.0fx%.0f)", &v28, 0x2Au);
    }
  }

  v7[2](v7, 0);
}

@end