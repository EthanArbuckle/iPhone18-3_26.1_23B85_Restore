@interface NoteHTMLEditorView
+ (id)baseHTMLString;
- (BOOL)_webView:(id)a3 focusShouldStartInputSession:(id)a4;
- (BOOL)_webView:(id)a3 performDataInteractionOperationWithItemProviders:(id)a4;
- (BOOL)canPerformAction:(SEL)a3 withSender:(id)a4;
- (BOOL)isFirstResponder;
- (ICSelectorDelayer)updateContentDelayer;
- (NoteHTMLEditorView)initWithCoder:(id)a3;
- (NoteHTMLEditorView)initWithFrame:(CGRect)a3;
- (NoteHTMLEditorViewActionDelegate)actionDelegate;
- (NoteHTMLEditorViewDelegate)delegate;
- (NoteHTMLEditorViewLayoutDelegate)layoutDelegate;
- (UIViewPrintFormatter)viewPrintFormatter;
- (WebArchive)webArchive;
- (double)textZoomFactor;
- (id)attachmentInfoDictionaryForAttachmentPresentation:(id)a3;
- (id)contextMenuConfigurationForElement:(id)a3 presentation:(id)a4;
- (id)jsonStringFromDictionaryOrArray:(id)a3;
- (id)targetForAction:(SEL)a3 withSender:(id)a4;
- (id)webViewConfiguration;
- (int64_t)_webView:(id)a3 dataOwnerForDragSession:(id)a4;
- (int64_t)_webView:(id)a3 dataOwnerForDropSession:(id)a4;
- (void)_webView:(id)a3 contextMenuConfigurationForElement:(id)a4 completionHandler:(id)a5;
- (void)_webView:(id)a3 didInsertAttachment:(id)a4 withSource:(id)a5;
- (void)_webView:(id)a3 didStartInputSession:(id)a4;
- (void)adoptEditableState;
- (void)buildMenuWithBuilder:(id)a3;
- (void)copyNoteHTMLToPasteboard;
- (void)didReceiveScriptMessage:(id)a3;
- (void)didUpdateFocusInContext:(id)a3 withAnimationCoordinator:(id)a4;
- (void)getRectForSelectionWithCompletion:(id)a3;
- (void)insertBulletedList:(id)a3;
- (void)insertDashedList:(id)a3;
- (void)insertHTMLString:(id)a3;
- (void)insertImage:(id)a3;
- (void)insertLinkWithURL:(id)a3 title:(id)a4;
- (void)insertLinksWithURLs:(id)a3 titles:(id)a4;
- (void)insertOrderedList:(id)a3;
- (void)loadAttachmentContentForURLSchemeTask:(id)a3;
- (void)removeScriptHandlers;
- (void)removeStyle:(id)a3;
- (void)replaceContentIDs:(id)a3;
- (void)replaceSelectionWithAttachmentPresentation:(id)a3;
- (void)scrollSelectionToVisible:(BOOL)a3;
- (void)scrollViewDidScroll:(id)a3;
- (void)setEditable:(BOOL)a3;
- (void)setEditing:(BOOL)a3;
- (void)setEnableAttachments:(BOOL)a3;
- (void)setEnableShiftNewlinesInSmartLists:(BOOL)a3;
- (void)setEnableSmartLists:(BOOL)a3;
- (void)setHtmlString:(id)a3 attachments:(id)a4;
- (void)setSelectionToEnd;
- (void)setSelectionToStart;
- (void)setSourceURLForAttachmentIdentifier:(id)a3;
- (void)setTextZoomFactor:(double)a3;
- (void)setupWebView;
- (void)startEditing;
- (void)stopEditingWithCompletion:(id)a3;
- (void)undoablyRemoveAttachmentPresentations:(id)a3 undoManager:(id)a4;
- (void)undoablyReplaceSelectionWithAttachmentPresentations:(id)a3 undoManager:(id)a4;
- (void)updateContent;
- (void)updateDataDetectors;
- (void)updateDataOwnerForCopyAndPaste;
- (void)updateWebViewEditability;
- (void)webView:(id)a3 decidePolicyForNavigationAction:(id)a4 decisionHandler:(id)a5;
- (void)webView:(id)a3 didFinishNavigation:(id)a4;
- (void)webViewWebContentProcessDidTerminate:(id)a3;
@end

@implementation NoteHTMLEditorView

+ (id)baseHTMLString
{
  v2 = MEMORY[0x1E696AEC0];
  v3 = _noteStyleSheet();
  v4 = [v2 stringWithFormat:@"<!DOCTYPE html><html>    <head>        <meta name=viewport content=initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0 />        <style>            %@        </style>    </head>    <body id=editor>    </body></html>", v3];

  return v4;
}

- (NoteHTMLEditorView)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = NoteHTMLEditorView;
  v3 = [(NoteHTMLEditorView *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(NoteHTMLEditorView *)v3 setupWebView];
  }

  return v4;
}

- (NoteHTMLEditorView)initWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = NoteHTMLEditorView;
  v3 = [(NoteHTMLEditorView *)&v6 initWithCoder:a3];
  v4 = v3;
  if (v3)
  {
    [(NoteHTMLEditorView *)v3 setupWebView];
  }

  return v4;
}

- (void)removeScriptHandlers
{
  v4 = [(NoteHTMLEditorView *)self webView];
  v2 = [v4 configuration];
  v3 = [v2 userContentController];
  [v3 removeAllScriptMessageHandlers];
}

- (void)setupWebView
{
  v62[4] = *MEMORY[0x1E69E9840];
  v3 = [NoteWKWebView alloc];
  [(NoteHTMLEditorView *)self bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = [(NoteHTMLEditorView *)self webViewConfiguration];
  v13 = [(NoteWKWebView *)v3 initWithFrame:v12 configuration:v5, v7, v9, v11];
  [(NoteHTMLEditorView *)self setWebView:v13];

  v14 = [(NoteHTMLEditorView *)self webView];
  [v14 setTranslatesAutoresizingMaskIntoConstraints:0];

  v15 = [MEMORY[0x1E69DC888] clearColor];
  v16 = [(NoteHTMLEditorView *)self webView];
  [v16 setBackgroundColor:v15];

  v17 = [(NoteHTMLEditorView *)self webView];
  [v17 setOpaque:0];

  v18 = [(NoteHTMLEditorView *)self webView];
  [v18 setAllowsLinkPreview:1];

  v19 = [(NoteHTMLEditorView *)self webView];
  v20 = [v19 scrollView];
  [v20 setShowsHorizontalScrollIndicator:0];

  v21 = [(NoteHTMLEditorView *)self webView];
  v22 = [v21 scrollView];
  [v22 setAlwaysBounceHorizontal:0];

  v23 = [(NoteHTMLEditorView *)self webView];
  v24 = [v23 scrollView];
  [v24 setDirectionalLockEnabled:1];

  v25 = [(NoteHTMLEditorView *)self webView];
  [v25 _setInputDelegate:self];

  v26 = [(NoteHTMLEditorView *)self webView];
  [v26 setUIDelegate:self];

  v27 = [(NoteHTMLEditorView *)self webView];
  [v27 setNavigationDelegate:self];

  v28 = [(NoteHTMLEditorView *)self webView];
  [v28 setNoteHTMLEditorView:self];

  v29 = [(NoteHTMLEditorView *)self webView];
  [(NoteHTMLEditorView *)self addSubview:v29];

  v30 = MEMORY[0x1E696AD68];
  v31 = [MEMORY[0x1E695DFF8] URLWithString:@"about:blank"];
  v32 = [v30 requestWithURL:v31];

  [v32 _setNonAppInitiated:1];
  v33 = [(NoteHTMLEditorView *)self webView];
  v34 = MEMORY[0x1E696AEC0];
  v35 = _noteStyleSheet();
  v36 = [v34 stringWithFormat:@"<!DOCTYPE html><html>    <head>        <meta name=viewport content=initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0 />        <style>            %@        </style>    </head>    <body id=editor>    </body></html>", v35];
  v61 = v32;
  v37 = [v33 loadSimulatedRequest:v32 responseHTMLString:v36];

  if ([MEMORY[0x1E69DC938] ic_isVision])
  {
    v38 = [(NoteHTMLEditorView *)self safeAreaLayoutGuide];
  }

  else
  {
    v38 = self;
  }

  v39 = v38;
  v50 = v38;
  v52 = MEMORY[0x1E696ACD8];
  v60 = [(NoteHTMLEditorView *)self webView];
  v58 = [v60 leadingAnchor];
  v59 = [(NoteHTMLEditorView *)self safeAreaLayoutGuide];
  v57 = [v59 leadingAnchor];
  v56 = [v58 constraintEqualToAnchor:v57];
  v62[0] = v56;
  v55 = [(NoteHTMLEditorView *)self webView];
  v53 = [v55 trailingAnchor];
  v54 = [(NoteHTMLEditorView *)self safeAreaLayoutGuide];
  v51 = [v54 trailingAnchor];
  v40 = [v53 constraintEqualToAnchor:v51];
  v62[1] = v40;
  v41 = [(NoteHTMLEditorView *)self webView];
  v42 = [v41 topAnchor];
  v43 = [(NoteHTMLEditorView *)v39 topAnchor];
  v44 = [v42 constraintEqualToAnchor:v43];
  v62[2] = v44;
  v45 = [(NoteHTMLEditorView *)self webView];
  v46 = [v45 bottomAnchor];
  v47 = [(NoteHTMLEditorView *)v39 bottomAnchor];
  v48 = [v46 constraintEqualToAnchor:v47];
  v62[3] = v48;
  v49 = [MEMORY[0x1E695DEC8] arrayWithObjects:v62 count:4];
  [v52 activateConstraints:v49];
}

- (id)webViewConfiguration
{
  v34[2] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E69853A8]);
  [v3 _setGroupIdentifier:@"com.apple.mobilenotes.text"];
  v4 = *MEMORY[0x1E69874A0];
  v34[0] = *MEMORY[0x1E69874A8];
  v34[1] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v34 count:2];
  [v3 _setAdditionalSupportedImageTypes:v5];

  [v3 _setAllowsJavaScriptMarkup:0];
  v6 = [MEMORY[0x1E69853B8] nonPersistentDataStore];
  [v3 setWebsiteDataStore:v6];

  [v3 _setAllowUniversalAccessFromFileURLs:0];
  [v3 _setAttachmentElementEnabled:1];
  [v3 _setColorFilterEnabled:1];
  [v3 _setRespectsImageOrientation:1];
  [v3 _setNeedsStorageAccessFromFileURLsQuirk:0];
  [v3 _setInvisibleAutoplayNotPermitted:1];
  [v3 _setApplePayEnabled:0];
  [v3 _setAllowsMetaRefresh:0];
  [v3 setAllowsInlinePredictions:1];
  [v3 setIgnoresViewportScaleLimits:0];
  [v3 setSupportsAdaptiveImageGlyph:1];
  [v3 setWritingToolsBehavior:1];
  v7 = objc_alloc_init(MEMORY[0x1E6985338]);
  [v3 setPreferences:v7];

  v8 = [v3 preferences];
  [v8 setJavaScriptCanOpenWindowsAutomatically:0];

  v9 = [v3 preferences];
  [v9 _setColorFilterEnabled:1];

  v10 = [v3 preferences];
  [v10 _setJavaScriptCanAccessClipboard:1];

  v11 = [v3 preferences];
  [v11 _setEditableLinkBehavior:3];

  v12 = [[NoteHTMLEditorViewURLSchemeHandler alloc] initWithNoteHMLEditorView:self];
  [(NoteHTMLEditorView *)self setUrlSchemeHandler:v12];

  v13 = [[NoteHTMLEditorViewScriptMessageHandler alloc] initWithNoteHMLEditorView:self];
  [(NoteHTMLEditorView *)self setScriptMessageHandler:v13];

  v14 = [(NoteHTMLEditorView *)self urlSchemeHandler];
  [v3 setURLSchemeHandler:v14 forURLScheme:@"cid"];

  v15 = [objc_alloc(MEMORY[0x1E6985358]) initWithSource:&cfstr_VarNotewkwebvi injectionTime:1 forMainFrameOnly:1];
  v16 = [v3 userContentController];
  [v16 addUserScript:v15];

  v17 = [v3 userContentController];
  v18 = [(NoteHTMLEditorView *)self scriptMessageHandler];
  [v17 addScriptMessageHandler:v18 name:@"textDidChange"];

  v19 = [v3 userContentController];
  v20 = [(NoteHTMLEditorView *)self scriptMessageHandler];
  [v19 addScriptMessageHandler:v20 name:@"attachmentsDidChange"];

  v21 = [v3 userContentController];
  v22 = [(NoteHTMLEditorView *)self scriptMessageHandler];
  [v21 addScriptMessageHandler:v22 name:@"titleDidChange"];

  v23 = [v3 userContentController];
  v24 = [(NoteHTMLEditorView *)self scriptMessageHandler];
  [v23 addScriptMessageHandler:v24 name:@"selectionDidChange"];

  v25 = [v3 userContentController];
  v26 = [(NoteHTMLEditorView *)self scriptMessageHandler];
  [v25 addScriptMessageHandler:v26 name:@"clickedAttachment"];

  v27 = [v3 userContentController];
  v28 = [(NoteHTMLEditorView *)self scriptMessageHandler];
  [v27 addScriptMessageHandler:v28 name:@"doubleClickedAttachment"];

  v29 = [v3 userContentController];
  v30 = [(NoteHTMLEditorView *)self scriptMessageHandler];
  [v29 addScriptMessageHandler:v30 name:@"editorDidBlur"];

  v31 = [v3 userContentController];
  v32 = [(NoteHTMLEditorView *)self scriptMessageHandler];
  [v31 addScriptMessageHandler:v32 name:@"anchorTouchesDidEnd"];

  return v3;
}

- (UIViewPrintFormatter)viewPrintFormatter
{
  v2 = [(NoteHTMLEditorView *)self webView];
  v3 = [v2 viewPrintFormatter];

  return v3;
}

- (WebArchive)webArchive
{
  v52 = *MEMORY[0x1E69E9840];
  v3 = [(NoteHTMLEditorView *)self htmlString];
  v4 = [v3 dataUsingEncoding:4];

  v5 = objc_alloc(MEMORY[0x1E69E2F80]);
  v6 = [MEMORY[0x1E695DFF8] URLWithString:@"file:///index.html"];
  v38 = v4;
  v37 = [v5 initWithData:v4 URL:v6 MIMEType:@"text/html" textEncodingName:@"utf-8" frameName:0];

  v7 = objc_alloc(MEMORY[0x1E695DF70]);
  v8 = [(NoteHTMLEditorView *)self attachmentContentIDs];
  v42 = [v7 initWithCapacity:{objc_msgSend(v8, "count")}];

  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  obj = [(NoteHTMLEditorView *)self attachmentContentIDs];
  v9 = [obj countByEnumeratingWithState:&v47 objects:v51 count:16];
  if (v9)
  {
    v10 = v9;
    v43 = *v48;
    v39 = *MEMORY[0x1E6982D60];
    v40 = *MEMORY[0x1E696A250];
    v11 = 0x1E6982000uLL;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v48 != v43)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v47 + 1) + 8 * i);
        v14 = [MEMORY[0x1E696AEC0] ic_newURLForContentID:v13 percentEscaped:0];
        v15 = [(NoteHTMLEditorView *)self delegate];
        v16 = objc_opt_respondsToSelector();

        if (v16)
        {
          v17 = [(NoteHTMLEditorView *)self delegate];
          v18 = [v17 noteHTMLEditorView:self fileURLForAttachmentWithContentID:v13];

          if (v18)
          {
            v19 = *(v11 + 3136);
            [v18 pathExtension];
            v21 = v20 = v11;
            v22 = [v19 typeWithFilenameExtension:v21];
            v23 = [v22 identifier];

            if (v23)
            {
              v24 = [*(v20 + 3136) typeWithIdentifier:v23];
              v25 = [v24 preferredMIMEType];
            }

            else
            {
              v25 = [v39 preferredMIMEType];
            }

            v29 = [MEMORY[0x1E695DEF0] dataWithContentsOfURL:v18];
            v31 = objc_alloc(MEMORY[0x1E69E2F80]);
            v32 = v29;
            v33 = v14;
            v34 = v25;
            goto LABEL_18;
          }
        }

        v26 = [(NoteHTMLEditorView *)self delegate];
        v27 = objc_opt_respondsToSelector();

        if ((v27 & 1) == 0 || (-[NoteHTMLEditorView delegate](self, "delegate"), v28 = objc_claimAutoreleasedReturnValue(), [v28 noteHTMLEditorView:self attachmentPresentationForContentID:v13], v23 = objc_claimAutoreleasedReturnValue(), v28, !v23))
        {
          v18 = [MEMORY[0x1E696ABC0] errorWithDomain:v40 code:4 userInfo:0];
          v30 = 0;
          goto LABEL_20;
        }

        v45 = 0;
        v46 = 0;
        v44 = 0;
        [v23 getPresentationData:&v46 mimeType:&v45 error:&v44];
        v25 = v46;
        v29 = v45;
        v18 = v44;
        v30 = 0;
        if (v25 && v29)
        {
          v31 = objc_alloc(MEMORY[0x1E69E2F80]);
          v32 = v25;
          v33 = v14;
          v34 = v29;
LABEL_18:
          v30 = [v31 initWithData:v32 URL:v33 MIMEType:v34 textEncodingName:0 frameName:0];
        }

        v11 = 0x1E6982000;
LABEL_20:

        if (v30)
        {
          [v42 addObject:v30];
        }
      }

      v10 = [obj countByEnumeratingWithState:&v47 objects:v51 count:16];
    }

    while (v10);
  }

  v35 = [objc_alloc(MEMORY[0x1E69E2F30]) initWithMainResource:v37 subresources:v42 subframeArchives:0];

  return v35;
}

- (double)textZoomFactor
{
  v2 = [(NoteHTMLEditorView *)self webView];
  [v2 _textZoomFactor];
  v4 = v3;

  return v4;
}

- (void)setTextZoomFactor:(double)a3
{
  v4 = [(NoteHTMLEditorView *)self webView];
  [v4 _setTextZoomFactor:a3];
}

- (ICSelectorDelayer)updateContentDelayer
{
  updateContentDelayer = self->_updateContentDelayer;
  if (!updateContentDelayer)
  {
    v4 = [objc_alloc(MEMORY[0x1E69B7AB0]) initWithTarget:self selector:sel_updateContent delay:1 waitToFireUntilRequestsStop:1 callOnMainThread:0.01];
    v5 = self->_updateContentDelayer;
    self->_updateContentDelayer = v4;

    updateContentDelayer = self->_updateContentDelayer;
  }

  return updateContentDelayer;
}

- (void)setHtmlString:(id)a3 attachments:(id)a4
{
  v75 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [(NoteHTMLEditorView *)self webView];
  v9 = [v8 isLoading];

  if (v9)
  {
    [(NoteHTMLEditorView *)self setHtmlStringToLoad:v6];
    [(NoteHTMLEditorView *)self setAttachmentsToLoad:v7];
    v10 = [v7 valueForKeyPath:@"cidURL.resourceSpecifier"];
    [(NoteHTMLEditorView *)self setAttachmentContentIDs:v10];

    -[NoteHTMLEditorView setHasAttachments:](self, "setHasAttachments:", [v7 count] != 0);
    goto LABEL_56;
  }

  htmlString = self->_htmlString;
  if (!htmlString || -[NSString isEqualToString:](htmlString, "isEqualToString:", &stru_1F4F94F00) || ([v6 isEqualToString:self->_htmlString] & 1) == 0)
  {
    v56 = self;
    [(NoteHTMLEditorView *)self updateDataOwnerForCopyAndPaste];
    v55 = v6;
    v53 = [v6 ic_htmlStringEscapingQuotesAndLineBreaks];
    v12 = 0x1E695D000uLL;
    v62 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(v7, "count")}];
    v70 = 0u;
    v71 = 0u;
    v72 = 0u;
    v73 = 0u;
    v54 = v7;
    obj = v7;
    v63 = [obj countByEnumeratingWithState:&v70 objects:v74 count:16];
    if (!v63)
    {
      goto LABEL_50;
    }

    v13 = *v71;
    v61 = *MEMORY[0x1E6982D60];
    v65 = *MEMORY[0x1E6982E30];
    v58 = *MEMORY[0x1E695DB50];
    v59 = *v71;
    while (1)
    {
      for (i = 0; i != v63; ++i)
      {
        if (*v71 != v13)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v70 + 1) + 8 * i);
        v16 = objc_alloc_init(*(v12 + 3984));
        url = [v15 fileURL];
        v17 = [(__CFURL *)url pathExtension];
        v18 = [v15 mimeType];
        if ([v18 length])
        {
          v19 = [MEMORY[0x1E6982C40] typeWithMIMEType:v18];
          v20 = [v19 identifier];
        }

        else
        {
          v20 = 0;
        }

        v66 = v17;
        if ([v17 length])
        {
          v21 = [MEMORY[0x1E6982C40] typeWithFilenameExtension:v17];
          v22 = [v21 identifier];

          if (v22)
          {
            goto LABEL_24;
          }
        }

        else
        {
          v22 = 0;
        }

        if (v20)
        {
          v23 = [MEMORY[0x1E6982C40] typeWithIdentifier:v20];
          v24 = [v23 isEqual:v61];

          if (v24 && (v25 = CGImageSourceCreateWithURL(url, 0)) != 0)
          {
            v26 = v25;
            v27 = CGImageSourceGetType(v25);
            v22 = v27;
            if (v27)
            {
              v28 = v27;
            }

            CFRelease(v26);
          }

          else
          {
            v22 = 0;
          }

          goto LABEL_28;
        }

LABEL_24:
        if (!v20)
        {
          if (!v22)
          {
            goto LABEL_37;
          }

          goto LABEL_31;
        }

LABEL_28:
        v29 = [MEMORY[0x1E6982C40] typeWithIdentifier:v20];
        v64 = v29;
        if ([v29 conformsToType:v65])
        {

LABEL_36:
          [v16 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"image"];
          goto LABEL_46;
        }

        if (!v22)
        {

          v22 = 0;
          goto LABEL_37;
        }

LABEL_31:
        v30 = [MEMORY[0x1E6982C40] typeWithIdentifier:v22];
        v31 = [v30 conformsToType:v65];

        if (v20)
        {

          if (v31)
          {
            goto LABEL_36;
          }
        }

        else if (v31)
        {
          goto LABEL_36;
        }

LABEL_37:
        v69 = 0;
        [(__CFURL *)url getResourceValue:&v69 forKey:v58 error:0];
        v32 = v69;
        v33 = [v15 fileURL];
        v34 = [v33 lastPathComponent];
        v35 = [v34 stringByReplacingOccurrencesOfString:@" withString:@"\];

        if (v22)
        {
          v36 = v22;
        }

        else if (v20)
        {
          v36 = v20;
        }

        else
        {
          v36 = [v61 identifier];
        }

        v37 = v36;
        if ([v32 longLongValue] < 1)
        {
          v38 = &stru_1F4F94F00;
        }

        else
        {
          v38 = [MEMORY[0x1E696AAF0] stringFromByteCount:objc_msgSend(v32 countStyle:{"longLongValue"), 0}];
        }

        [v16 setObject:MEMORY[0x1E695E110] forKeyedSubscript:@"image"];
        [v16 setObject:v35 forKeyedSubscript:@"title"];
        [v16 setObject:v38 forKeyedSubscript:@"subtitle"];
        [v16 setObject:v37 forKeyedSubscript:@"type"];

        v12 = 0x1E695D000;
        v13 = v59;
LABEL_46:
        v39 = [v15 cidURL];
        v40 = [v39 absoluteString];

        if (v40)
        {
          [v62 setObject:v16 forKeyedSubscript:v40];
        }
      }

      v63 = [obj countByEnumeratingWithState:&v70 objects:v74 count:16];
      if (!v63)
      {
LABEL_50:

        v41 = v56;
        v42 = [(NoteHTMLEditorView *)v56 jsonStringFromDictionaryOrArray:v62];
        objc_storeStrong(&v56->_htmlString, a3);
        if (v53)
        {
          v43 = v53;
        }

        else
        {
          v43 = &stru_1F4F94F00;
        }

        v44 = [obj valueForKeyPath:@"cidURL.resourceSpecifier"];
        [(NoteHTMLEditorView *)v56 setAttachmentContentIDs:v44];

        -[NoteHTMLEditorView setHasAttachments:](v56, "setHasAttachments:", [obj count] != 0);
        [(NoteHTMLEditorView *)v56 setEnableSmartLists:+[ICTextStyle autoListInsertionEnabled]];
        v45 = [(NoteHTMLEditorView *)v56 delegate];
        v46 = objc_opt_respondsToSelector();

        if (v46)
        {
          v47 = [(NoteHTMLEditorView *)v56 delegate];
          v48 = [v47 allowsAttachmentsInNoteHTMLEditorView:v56];

          v41 = v56;
          [(NoteHTMLEditorView *)v56 setEnableAttachments:v48];
        }

        v49 = [(NoteHTMLEditorView *)v41 webView];
        v50 = [v49 findInteraction];
        [v50 dismissFindNavigator];

        v51 = [(NoteHTMLEditorView *)v41 webView];
        v52 = [MEMORY[0x1E696AEC0] stringWithFormat:@"notewkwebview.setHTMLContentWithAttachmentInfos(%@, %@)", v43, v42];;
        v68[0] = MEMORY[0x1E69E9820];
        v68[1] = 3221225472;
        v68[2] = __48__NoteHTMLEditorView_setHtmlString_attachments___block_invoke;
        v68[3] = &unk_1E846BC70;
        v68[4] = v41;
        [v51 evaluateJavaScript:v52 completionHandler:v68];

        v7 = v54;
        v6 = v55;
        break;
      }
    }
  }

LABEL_56:
}

uint64_t __48__NoteHTMLEditorView_setHtmlString_attachments___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) isInsideSiriSnippet])
  {
    v2 = [*(a1 + 32) webView];
    [v2 _doAfterNextPresentationUpdate:&__block_literal_global_50];
  }

  [*(a1 + 32) updateDataDetectors];
  v3 = *(a1 + 32);

  return [v3 updateWebViewEditability];
}

void __48__NoteHTMLEditorView_setHtmlString_attachments___block_invoke_2()
{
  v0 = [MEMORY[0x1E696AD88] defaultCenter];
  [v0 postNotificationName:@"SiriNoteTextViewSizeDidChangeNotification" object:0];
}

- (void)setEnableAttachments:(BOOL)a3
{
  v3 = a3;
  v6 = [(NoteHTMLEditorView *)self webView];
  v4 = @"false";
  if (v3)
  {
    v4 = @"true";
  }

  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"setEnableAttachments(%@)", v4];;
  [v6 ic_evaluateJavaScript:v5];
}

- (void)setEnableSmartLists:(BOOL)a3
{
  v3 = a3;
  v6 = [(NoteHTMLEditorView *)self webView];
  v4 = @"false";
  if (v3)
  {
    v4 = @"true";
  }

  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"setEnableSmartLists(%@)", v4];;
  [v6 ic_evaluateJavaScript:v5];
}

- (void)setEnableShiftNewlinesInSmartLists:(BOOL)a3
{
  v3 = a3;
  v6 = [(NoteHTMLEditorView *)self webView];
  v4 = @"false";
  if (v3)
  {
    v4 = @"true";
  }

  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"setEnableShiftNewLinesInSmartLists(%@)", v4];;
  [v6 ic_evaluateJavaScript:v5];
}

- (void)insertHTMLString:(id)a3
{
  v6 = [a3 ic_htmlStringEscapingQuotesAndLineBreaks];
  v4 = [(NoteHTMLEditorView *)self webView];
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"notewkwebview.insertHTML(\"%@\"", v6];
  [v4 ic_evaluateJavaScript:v5];
}

- (void)insertLinkWithURL:(id)a3 title:(id)a4
{
  v6 = a4;
  v7 = [a3 absoluteString];
  v8 = [v7 ic_htmlStringEscapingQuotesAndLineBreaks];

  v9 = [v6 ic_htmlStringEscapingQuotesAndLineBreaks];

  v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"notewkwebview.insertLink(%@, %@)", v8, v9];;
  v11 = [(NoteHTMLEditorView *)self webView];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __46__NoteHTMLEditorView_insertLinkWithURL_title___block_invoke;
  v12[3] = &unk_1E846BC70;
  v12[4] = self;
  [v11 evaluateJavaScript:v10 completionHandler:v12];
}

- (void)insertLinksWithURLs:(id)a3 titles:(id)a4
{
  v6 = a4;
  v7 = [a3 valueForKey:@"absoluteString"];
  v8 = [(NoteHTMLEditorView *)self jsonStringFromDictionaryOrArray:v7];
  v9 = [(NoteHTMLEditorView *)self jsonStringFromDictionaryOrArray:v6];

  v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"notewkwebview.insertLinks(%@, %@)", v8, v9];;
  v11 = [(NoteHTMLEditorView *)self webView];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __49__NoteHTMLEditorView_insertLinksWithURLs_titles___block_invoke;
  v12[3] = &unk_1E846BC70;
  v12[4] = self;
  [v11 evaluateJavaScript:v10 completionHandler:v12];
}

- (void)copyNoteHTMLToPasteboard
{
  v2 = [(NoteHTMLEditorView *)self webView];
  [v2 ic_evaluateJavaScript:@"notewkwebview.copyNoteHTMLToPasteboard()"];
}

- (id)attachmentInfoDictionaryForAttachmentPresentation:(id)a3
{
  v3 = a3;
  v4 = [MEMORY[0x1E695DF90] dictionary];
  v5 = [v3 filename];
  v6 = [v5 pathExtension];

  v7 = [v3 mimeType];
  if ([v7 length])
  {
    v8 = [MEMORY[0x1E6982C40] typeWithMIMEType:v7];
    v9 = [v8 identifier];
  }

  else
  {
    v9 = 0;
  }

  if ([v6 length])
  {
    v10 = [MEMORY[0x1E6982C40] typeWithFilenameExtension:v6];
    v11 = [v10 identifier];
  }

  else
  {
    v11 = 0;
  }

  v12 = [v3 contentIDURL];
  v13 = [v12 absoluteString];
  [v4 setObject:v13 forKeyedSubscript:@"contentIDURL"];

  v14 = MEMORY[0x1E6982E30];
  if (!v9)
  {
    if (v11)
    {
LABEL_13:
      v15 = [MEMORY[0x1E6982C40] typeWithIdentifier:v11];
      v16 = [v15 conformsToType:*v14];

      if (v9)
      {

        if (v16)
        {
          goto LABEL_15;
        }
      }

      else if (v16)
      {
        goto LABEL_15;
      }

      v26 = v6;
      v17 = 0;
LABEL_20:
      v18 = [v3 dataSizeNumber];
      v19 = [v3 filename];
      v20 = [v19 lastPathComponent];
      v21 = [v20 stringByReplacingOccurrencesOfString:@" withString:@"\];

      if (v17)
      {
        if (v9)
        {
          v22 = v9;
        }

        else
        {
          v22 = [*MEMORY[0x1E6982D60] identifier];
        }
      }

      else
      {
        v22 = v11;
      }

      v23 = v22;
      if ([v18 longLongValue] < 1)
      {
        v24 = &stru_1F4F94F00;
      }

      else
      {
        v24 = [MEMORY[0x1E696AAF0] stringFromByteCount:objc_msgSend(v18 countStyle:{"longLongValue"), 0}];
      }

      [v4 setObject:MEMORY[0x1E695E110] forKeyedSubscript:@"image"];
      [v4 setObject:v21 forKeyedSubscript:@"title"];
      [v4 setObject:v24 forKeyedSubscript:@"subtitle"];
      [v4 setObject:v23 forKeyedSubscript:@"type"];

      v6 = v26;
      goto LABEL_29;
    }

    v26 = v6;
LABEL_19:
    v17 = 1;
    goto LABEL_20;
  }

  v12 = [MEMORY[0x1E6982C40] typeWithIdentifier:v9];
  if (![v12 conformsToType:*v14])
  {
    if (v11)
    {
      goto LABEL_13;
    }

    v26 = v6;

    goto LABEL_19;
  }

LABEL_15:
  [v4 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"image"];
LABEL_29:

  return v4;
}

- (id)jsonStringFromDictionaryOrArray:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    v9 = 0;
    v4 = [MEMORY[0x1E696ACB0] dataWithJSONObject:v3 options:0 error:&v9];
    v5 = v9;
    if (v5)
    {
      v6 = os_log_create("com.apple.notes", "HTML");
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        [NoteHTMLEditorView jsonStringFromDictionaryOrArray:];
      }
    }

    v7 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:v4 encoding:4];
  }

  else
  {
    v4 = os_log_create("com.apple.notes", "HTML");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      [(NoteHTMLEditorView *)v3 jsonStringFromDictionaryOrArray:v4];
    }

    v7 = 0;
    v5 = 0;
  }

  return v7;
}

- (void)replaceSelectionWithAttachmentPresentation:(id)a3
{
  v7 = [(NoteHTMLEditorView *)self attachmentInfoDictionaryForAttachmentPresentation:a3];
  v4 = [(NoteHTMLEditorView *)self jsonStringFromDictionaryOrArray:v7];
  v5 = [(NoteHTMLEditorView *)self webView];
  v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"notewkwebview.insertAttachment(%@)", v4];;
  [v5 ic_evaluateJavaScript:v6];
}

- (void)undoablyReplaceSelectionWithAttachmentPresentations:(id)a3 undoManager:(id)a4
{
  v24 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v6, "count")}];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v9 = v6;
  v10 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v20;
    do
    {
      v13 = 0;
      do
      {
        if (*v20 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = [(NoteHTMLEditorView *)self attachmentInfoDictionaryForAttachmentPresentation:*(*(&v19 + 1) + 8 * v13)];
        if (v14)
        {
          [v8 addObject:v14];
        }

        ++v13;
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v11);
  }

  v15 = [v7 prepareWithInvocationTarget:self];
  [v15 undoablyRemoveAttachmentPresentations:v9 undoManager:v7];

  v16 = [(NoteHTMLEditorView *)self jsonStringFromDictionaryOrArray:v8];
  v17 = [(NoteHTMLEditorView *)self webView];
  v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"notewkwebview.insertAttachments(%@)", v16];;
  [v17 ic_evaluateJavaScript:v18];
}

- (void)undoablyRemoveAttachmentPresentations:(id)a3 undoManager:(id)a4
{
  v24 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v6, "count")}];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v9 = v6;
  v10 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v20;
    do
    {
      v13 = 0;
      do
      {
        if (*v20 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = [(NoteHTMLEditorView *)self attachmentInfoDictionaryForAttachmentPresentation:*(*(&v19 + 1) + 8 * v13)];
        if (v14)
        {
          [v8 addObject:v14];
        }

        ++v13;
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v11);
  }

  v15 = [v7 prepareWithInvocationTarget:self];
  [v15 undoablyReplaceSelectionWithAttachmentPresentations:v9 undoManager:v7];

  v16 = [(NoteHTMLEditorView *)self jsonStringFromDictionaryOrArray:v8];
  v17 = [(NoteHTMLEditorView *)self webView];
  v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"notewkwebview.removeAttachments(%@)", v16];;
  [v17 ic_evaluateJavaScript:v18];
}

- (void)replaceContentIDs:(id)a3
{
  v4 = a3;
  v5 = [(NoteHTMLEditorView *)self jsonStringFromDictionaryOrArray:v4];
  v6 = [(NoteHTMLEditorView *)self attachmentContentIDs];
  v7 = [v6 copy];

  v8 = MEMORY[0x1E695DF70];
  v9 = [(NoteHTMLEditorView *)self attachmentContentIDs];
  v10 = [v8 arrayWithArray:v9];

  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __40__NoteHTMLEditorView_replaceContentIDs___block_invoke;
  v17[3] = &unk_1E846BC98;
  v18 = v10;
  v11 = v10;
  [v4 enumerateKeysAndObjectsUsingBlock:v17];

  [(NoteHTMLEditorView *)self setAttachmentContentIDs:v11];
  v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"notewkwebview.replaceAttachmentContentIDs(%@)", v5];;
  v13 = [(NoteHTMLEditorView *)self webView];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __40__NoteHTMLEditorView_replaceContentIDs___block_invoke_2;
  v15[3] = &unk_1E846BCC0;
  v15[4] = self;
  v16 = v7;
  v14 = v7;
  [v13 evaluateJavaScript:v12 completionHandler:v15];
}

void __40__NoteHTMLEditorView_replaceContentIDs___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = MEMORY[0x1E695DFF8];
  v6 = a3;
  v15 = [v5 URLWithString:a2];
  v7 = [MEMORY[0x1E695DFF8] URLWithString:v6];

  v8 = [v15 resourceSpecifier];
  v9 = [v7 resourceSpecifier];
  v10 = v9;
  if (v8)
  {
    v11 = v9 == 0;
  }

  else
  {
    v11 = 1;
  }

  if (!v11)
  {
    v12 = [v15 scheme];
    if ([v12 isEqualToString:@"cid"])
    {
      v13 = [v7 scheme];
      v14 = [v13 isEqualToString:@"cid"];

      if (v14)
      {
        [*(a1 + 32) removeObjectAtIndex:{objc_msgSend(*(a1 + 32), "indexOfObject:", v8)}];
        [*(a1 + 32) addObject:v10];
      }
    }

    else
    {
    }
  }
}

void __40__NoteHTMLEditorView_replaceContentIDs___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (v4)
  {
    v5 = os_log_create("com.apple.notes", "HTML");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __40__NoteHTMLEditorView_replaceContentIDs___block_invoke_2_cold_1();
    }

    [*(a1 + 32) setAttachmentContentIDs:*(a1 + 40)];
  }
}

- (void)setSourceURLForAttachmentIdentifier:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = [v4 firstObject];
  v6 = ICDynamicCast();

  v7 = [MEMORY[0x1E695DFF8] URLWithString:v6];
  objc_opt_class();
  v8 = [v4 lastObject];
  v9 = ICDynamicCast();

  if (v7)
  {
    v10 = v9 == 0;
  }

  else
  {
    v10 = 1;
  }

  if (v10)
  {
    v12 = os_log_create("com.apple.notes", "HTML");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [NoteHTMLEditorView setSourceURLForAttachmentIdentifier:v12];
    }
  }

  else
  {
    v11 = [(NoteHTMLEditorView *)self attachmentContentIDs];
    v23 = [v11 copy];

    v12 = [(NoteHTMLEditorView *)self jsonStringFromDictionaryOrArray:v4];
    v13 = MEMORY[0x1E695DF70];
    v14 = [(NoteHTMLEditorView *)self attachmentContentIDs];
    v15 = [v13 arrayWithArray:v14];

    v16 = [v7 resourceSpecifier];
    v17 = v16;
    if (v16)
    {
      v18 = [v7 scheme];
      v19 = [v18 isEqualToString:@"cid"];

      if (v19)
      {
        [v15 addObject:v17];
      }
    }

    [(NoteHTMLEditorView *)self setAttachmentContentIDs:v15];
    v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"notewkwebview.setSourceURLForAttachmentIdentifier(%@)", v12];;
    v21 = [(NoteHTMLEditorView *)self webView];
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __58__NoteHTMLEditorView_setSourceURLForAttachmentIdentifier___block_invoke;
    v24[3] = &unk_1E846BCC0;
    v24[4] = self;
    v25 = v23;
    v22 = v23;
    [v21 evaluateJavaScript:v20 completionHandler:v24];
  }
}

void __58__NoteHTMLEditorView_setSourceURLForAttachmentIdentifier___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (v4)
  {
    v5 = os_log_create("com.apple.notes", "HTML");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __58__NoteHTMLEditorView_setSourceURLForAttachmentIdentifier___block_invoke_cold_1();
    }

    [*(a1 + 32) setAttachmentContentIDs:*(a1 + 40)];
  }
}

- (void)buildMenuWithBuilder:(id)a3
{
  v12[1] = *MEMORY[0x1E69E9840];
  v11.receiver = self;
  v11.super_class = NoteHTMLEditorView;
  v3 = a3;
  [(NoteHTMLEditorView *)&v11 buildMenuWithBuilder:v3];
  v4 = __ICLocalizedFrameworkStringWithDefaultValue_impl(@"INSERT_PHOTO", @"Insert Photo", @"Localizable", 1);
  v5 = MEMORY[0x1E69DC8B0];
  v6 = [MEMORY[0x1E69DCAB8] systemImageNamed:{@"camera", v11.receiver, v11.super_class}];
  v7 = [v5 commandWithTitle:v4 image:v6 action:sel_insertImage_ propertyList:0];

  v8 = MEMORY[0x1E69DCC60];
  v12[0] = v7;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:1];
  v10 = [v8 menuWithTitle:&stru_1F4F94F00 image:0 identifier:0 options:1 children:v9];

  [v3 insertChildMenu:v10 atEndOfMenuForIdentifier:*MEMORY[0x1E69DE190]];
  [v3 replaceChildrenOfMenuForIdentifier:*MEMORY[0x1E69DE208] fromChildrenBlock:&__block_literal_global_240];
}

id __43__NoteHTMLEditorView_buildMenuWithBuilder___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E69DC8B0];
  v3 = a2;
  v4 = __ICLocalizedFrameworkString_impl(@"Strikethrough", @"Strikethrough", 0, 1);
  v5 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"strikethrough"];
  v6 = [v2 commandWithTitle:v4 image:v5 action:sel_strikethrough_ propertyList:0];

  v7 = [v3 arrayByAddingObject:v6];

  return v7;
}

- (void)updateDataDetectors
{
  v3 = [(NoteHTMLEditorView *)self isEditing];
  v4 = [(NoteHTMLEditorView *)self webView];
  v5 = v4;
  if (v3)
  {
    [v4 _removeDataDetectedLinks:0];
  }

  else
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __41__NoteHTMLEditorView_updateDataDetectors__block_invoke;
    v6[3] = &unk_1E8468BA0;
    v6[4] = self;
    [v4 _detectDataWithTypes:-1 completionHandler:v6];
  }
}

void __41__NoteHTMLEditorView_updateDataDetectors__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) webView];
  [v1 ic_evaluateJavaScript:@"notewkwebview.updateAnchorListeners();"];
}

- (void)setEditable:(BOOL)a3
{
  self->_editable = a3;
  v4 = [(NoteHTMLEditorView *)self webView];
  v5 = [v4 isLoading];

  if ((v5 & 1) == 0)
  {

    [(NoteHTMLEditorView *)self adoptEditableState];
  }
}

- (void)setEditing:(BOOL)a3
{
  self->_editing = a3;
  [(NoteHTMLEditorView *)self updateDataDetectors];

  [(NoteHTMLEditorView *)self updateWebViewEditability];
}

- (void)updateWebViewEditability
{
  if (self->_editing)
  {
    v3 = 1;
  }

  else
  {
    v4 = [(NoteHTMLEditorView *)self webView];
    v5 = [v4 findInteraction];
    v3 = [v5 isFindNavigatorVisible];
  }

  v6 = [(NoteHTMLEditorView *)self webView];
  v7 = [v6 _isEditable];

  if (v3 != v7)
  {
    v8 = [(NoteHTMLEditorView *)self webView];
    [v8 _setEditable:v3];
  }
}

- (void)adoptEditableState
{
  v3 = [(NoteHTMLEditorView *)self isEditable];
  v4 = [(NoteHTMLEditorView *)self webView];
  v6 = v4;
  if (v3)
  {
    v5 = @"notewkwebview.enableEditor()";
  }

  else
  {
    v5 = @"notewkwebview.disableEditor()";
  }

  [v4 ic_evaluateJavaScript:v5];
}

- (void)startEditing
{
  v3 = [(NoteHTMLEditorView *)self webView];
  v4 = [v3 isLoading];

  if (v4)
  {

    [(NoteHTMLEditorView *)self setStartEditingAfterLoad:1];
  }

  else
  {
    [(NoteHTMLEditorView *)self setEditing:1];
    v5 = [(NoteHTMLEditorView *)self webView];
    [v5 ic_evaluateJavaScript:@"notewkwebview.startEditing()"];
  }
}

- (void)stopEditingWithCompletion:(id)a3
{
  v4 = a3;
  [(NoteHTMLEditorView *)self setEditing:0];
  v5 = [(NoteHTMLEditorView *)self webView];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __48__NoteHTMLEditorView_stopEditingWithCompletion___block_invoke;
  v7[3] = &unk_1E846BD08;
  v8 = @"notewkwebview.stopEditing()";
  v9 = v4;
  v6 = v4;
  [v5 evaluateJavaScript:@"notewkwebview.stopEditing()" completionHandler:v7];
}

void __48__NoteHTMLEditorView_stopEditingWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = os_log_create("com.apple.notes", "HTML");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __48__NoteHTMLEditorView_stopEditingWithCompletion___block_invoke_cold_1();
    }
  }

  v8 = *(a1 + 40);
  if (v8)
  {
    (*(v8 + 16))(v8, v6 == 0);
  }
}

- (void)updateContent
{
  if ([(NoteHTMLEditorView *)self updatingContent])
  {
    v7 = [(NoteHTMLEditorView *)self updateContentDelayer];
    [v7 requestFire];
  }

  else
  {
    v3 = [(NoteHTMLEditorView *)self delegate];
    v4 = objc_opt_respondsToSelector();

    if (v4)
    {
      v5 = [(NoteHTMLEditorView *)self delegate];
      [v5 noteHTMLEditorViewWillChange:self];
    }

    [(NoteHTMLEditorView *)self setUpdatingContent:1];
    objc_initWeak(&location, self);
    v6 = [(NoteHTMLEditorView *)self webView];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __35__NoteHTMLEditorView_updateContent__block_invoke;
    v8[3] = &unk_1E846BD30;
    objc_copyWeak(&v9, &location);
    v8[4] = self;
    [v6 evaluateJavaScript:@"getHTMLContentAndAttachmentContentIDURLs();" completionHandler:v8];

    objc_destroyWeak(&v9);
    objc_destroyWeak(&location);
  }
}

void __35__NoteHTMLEditorView_updateContent__block_invoke(uint64_t a1, void *a2)
{
  v41 = *MEMORY[0x1E69E9840];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    objc_opt_class();
    v5 = ICDynamicCast();
    objc_opt_class();
    v6 = [v5 objectForKeyedSubscript:@"htmlContent"];
    v7 = ICDynamicCast();

    objc_opt_class();
    v8 = [v5 objectForKeyedSubscript:@"attachmentContentIDURLs"];
    v9 = ICDynamicCast();

    if (v9)
    {
      v29 = v7;
      v30 = v5;
      v31 = a1;
      v32 = WeakRetained;
      v33 = v3;
      v10 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v9, "count")}];
      v34 = 0u;
      v35 = 0u;
      v36 = 0u;
      v37 = 0u;
      v28 = v9;
      v11 = v9;
      v12 = [v11 countByEnumeratingWithState:&v34 objects:v40 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = *v35;
        do
        {
          v15 = 0;
          do
          {
            if (*v35 != v14)
            {
              objc_enumerationMutation(v11);
            }

            v16 = *(*(&v34 + 1) + 8 * v15);
            v17 = [objc_alloc(MEMORY[0x1E695DFF8]) initWithString:v16];
            v18 = [v17 resourceSpecifier];
            if (v18)
            {
              [v10 addObject:v18];
            }

            else
            {
              v19 = os_log_create("com.apple.notes", "UI");
              if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
              {
                *buf = 138412290;
                v39 = v16;
                _os_log_debug_impl(&dword_1D4171000, v19, OS_LOG_TYPE_DEBUG, "couldn't convert content ID URL string %@ to URL", buf, 0xCu);
              }
            }

            ++v15;
          }

          while (v13 != v15);
          v13 = [v11 countByEnumeratingWithState:&v34 objects:v40 count:16];
        }

        while (v13);
      }

      WeakRetained = v32;
      [v32 setAttachmentContentIDs:v10];
      [v32 setHasAttachments:{objc_msgSend(v10, "count") != 0}];
      v3 = v33;
      v5 = v30;
      a1 = v31;
      if ([v11 count])
      {
        v20 = [*(v31 + 32) delegate];
        v21 = objc_opt_respondsToSelector();

        if (v21)
        {
          v22 = [*(v31 + 32) delegate];
          v23 = [v22 noteHTMLEditorView:*(v31 + 32) updateAttachments:v11];

          if ([v23 count])
          {
            [*(v31 + 32) replaceContentIDs:v23];
          }
        }
      }

      v9 = v28;
      v7 = v29;
    }

    if (v7)
    {
      v24 = [v7 isEqualToString:WeakRetained[59]];
      objc_storeStrong(WeakRetained + 59, v7);
      if ((v24 & 1) == 0)
      {
        v25 = [WeakRetained delegate];
        v26 = objc_opt_respondsToSelector();

        if (v26)
        {
          v27 = [WeakRetained delegate];
          [v27 noteHTMLEditorViewDidChange:*(a1 + 32)];
        }
      }
    }

    [WeakRetained setUpdatingContent:{0, v28}];
  }
}

- (void)insertImage:(id)a3
{
  v4 = [(NoteHTMLEditorView *)self actionDelegate];
  [v4 insertImageInNoteHTMLEditorView:self];
}

- (void)insertBulletedList:(id)a3
{
  v3 = [(NoteHTMLEditorView *)self webView];
  [v3 ic_evaluateJavaScript:@"notewkwebview.insertBulletedList();"];
}

- (void)insertDashedList:(id)a3
{
  v3 = [(NoteHTMLEditorView *)self webView];
  [v3 ic_evaluateJavaScript:@"notewkwebview.insertDashedList();"];
}

- (void)insertOrderedList:(id)a3
{
  v3 = [(NoteHTMLEditorView *)self webView];
  [v3 ic_evaluateJavaScript:@"notewkwebview.insertNumberedList();"];
}

- (void)removeStyle:(id)a3
{
  v3 = [(NoteHTMLEditorView *)self webView];
  [v3 ic_evaluateJavaScript:@"notewkwebview.removeStyle();"];
}

- (void)scrollSelectionToVisible:(BOOL)a3
{
  v3 = [(NoteHTMLEditorView *)self webView];
  [v3 ic_evaluateJavaScript:@"notewkwebview.scrollSelectionToVisible()"];
}

- (void)getRectForSelectionWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(NoteHTMLEditorView *)self webView];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __56__NoteHTMLEditorView_getRectForSelectionWithCompletion___block_invoke;
  v7[3] = &unk_1E846BD58;
  v8 = v4;
  v6 = v4;
  [v5 evaluateJavaScript:@"notewkwebview.getSelectionRects()" completionHandler:v7];
}

void __56__NoteHTMLEditorView_getRectForSelectionWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v38 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  objc_opt_class();
  v7 = ICDynamicCast();
  v8 = v7;
  v32 = a1;
  if (v6)
  {
    v9 = os_log_create("com.apple.notes", "HTML");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      __56__NoteHTMLEditorView_getRectForSelectionWithCompletion___block_invoke_cold_1();
    }

    x = *MEMORY[0x1E695F058];
    y = *(MEMORY[0x1E695F058] + 8);
    width = *(MEMORY[0x1E695F058] + 16);
    height = *(MEMORY[0x1E695F058] + 24);
  }

  else
  {
    x = *MEMORY[0x1E695F050];
    y = *(MEMORY[0x1E695F050] + 8);
    width = *(MEMORY[0x1E695F050] + 16);
    height = *(MEMORY[0x1E695F050] + 24);
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v14 = [v7 countByEnumeratingWithState:&v33 objects:v37 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v34;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v34 != v16)
          {
            objc_enumerationMutation(v8);
          }

          v18 = *(*(&v33 + 1) + 8 * i);
          if ([v18 count] == 4)
          {
            v19 = [v18 objectAtIndexedSubscript:0];
            [v19 doubleValue];
            v21 = v20;
            v22 = [v18 objectAtIndexedSubscript:1];
            [v22 doubleValue];
            v24 = v23;
            v25 = [v18 objectAtIndexedSubscript:2];
            [v25 doubleValue];
            v27 = v26;
            v28 = [v18 objectAtIndexedSubscript:3];
            [v28 doubleValue];
            v30 = v29;

            v39.origin.x = x;
            v39.origin.y = y;
            v39.size.width = width;
            v39.size.height = height;
            v41.origin.x = v21;
            v41.origin.y = v24;
            v41.size.width = v27;
            v41.size.height = v30;
            v40 = CGRectUnion(v39, v41);
            x = v40.origin.x;
            y = v40.origin.y;
            width = v40.size.width;
            height = v40.size.height;
          }
        }

        v15 = [v8 countByEnumeratingWithState:&v33 objects:v37 count:16];
      }

      while (v15);
    }
  }

  v31 = *(v32 + 32);
  if (v31)
  {
    (*(v31 + 16))(v31, v6, x, y, width, height);
  }
}

- (void)setSelectionToStart
{
  v3 = [(NoteHTMLEditorView *)self webView];
  v4 = [v3 isLoading];

  if ((v4 & 1) == 0)
  {
    v5 = [(NoteHTMLEditorView *)self webView];
    [v5 ic_evaluateJavaScript:@"notewkwebview.setSelectionToStart();"];
  }
}

- (void)setSelectionToEnd
{
  v3 = [(NoteHTMLEditorView *)self webView];
  v4 = [v3 isLoading];

  if (v4)
  {

    [(NoteHTMLEditorView *)self setSetSelectionToEndAfterLoad:1];
  }

  else
  {
    v5 = [(NoteHTMLEditorView *)self webView];
    [v5 ic_evaluateJavaScript:@"notewkwebview.setSelectionToEnd();"];
  }
}

- (BOOL)isFirstResponder
{
  v2 = [(NoteHTMLEditorView *)self webView];
  v3 = [v2 isFirstResponder];

  return v3;
}

- (BOOL)canPerformAction:(SEL)a3 withSender:(id)a4
{
  v6 = a4;
  if (sel_insertImage_ == a3)
  {
    if ([(NoteHTMLEditorView *)self isEditing])
    {
      v8 = [(NoteHTMLEditorView *)self actionDelegate];
      v7 = [v8 canInsertImagesInNoteHTMLEditorView:self];

      goto LABEL_9;
    }

LABEL_8:
    v7 = 0;
    goto LABEL_9;
  }

  if (sel_strikethrough_ == a3)
  {
    if ([(NoteHTMLEditorView *)self isEditing])
    {
      v7 = [(NoteHTMLEditorView *)self selectionLength]> 0;
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  v10.receiver = self;
  v10.super_class = NoteHTMLEditorView;
  v7 = [(NoteHTMLEditorView *)&v10 canPerformAction:a3 withSender:v6];
LABEL_9:

  return v7;
}

- (id)targetForAction:(SEL)a3 withSender:(id)a4
{
  v6 = a4;
  if ([(NoteHTMLEditorView *)self canPerformAction:a3 withSender:v6])
  {
    v7 = self;
  }

  else
  {
    v10.receiver = self;
    v10.super_class = NoteHTMLEditorView;
    v7 = [(NoteHTMLEditorView *)&v10 targetForAction:a3 withSender:v6];
  }

  v8 = v7;

  return v8;
}

- (void)didUpdateFocusInContext:(id)a3 withAnimationCoordinator:(id)a4
{
  v5 = [a3 nextFocusedItem];
  v6 = [v5 isEqual:self];

  if (v6)
  {

    [(NoteHTMLEditorView *)self startEditing];
  }
}

- (void)scrollViewDidScroll:(id)a3
{
  v4 = a3;
  [v4 contentOffset];
  if (v3 != 0.0)
  {
    [v4 contentOffset];
    [v4 setContentOffset:0.0];
  }
}

- (BOOL)_webView:(id)a3 focusShouldStartInputSession:(id)a4
{
  v5 = a4;
  v6 = [(NoteHTMLEditorView *)self delegate];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v8 = [(NoteHTMLEditorView *)self delegate];
    v9 = [v8 noteHTMLEditorViewShouldBeginEditing:self isUserInitiated:{objc_msgSend(v5, "isUserInitiated")}];
  }

  else
  {
    v9 = [(NoteHTMLEditorView *)self isEditable];
  }

  return v9;
}

- (void)_webView:(id)a3 didStartInputSession:(id)a4
{
  [a4 setAccessoryViewShouldNotShow:1];
  [(NoteHTMLEditorView *)self setEditing:1];
  v5 = [(NoteHTMLEditorView *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(NoteHTMLEditorView *)self delegate];
    [v7 noteHTMLEditorViewDidBeginEditing:self];
  }
}

- (int64_t)_webView:(id)a3 dataOwnerForDragSession:(id)a4
{
  v5 = [(NoteHTMLEditorView *)self delegate:a3];
  v6 = objc_opt_respondsToSelector();

  if ((v6 & 1) == 0)
  {
    return 1;
  }

  v7 = [(NoteHTMLEditorView *)self delegate];
  v8 = [v7 isNoteManagedForNoteHTMLEditorView:self];

  if (v8)
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

- (int64_t)_webView:(id)a3 dataOwnerForDropSession:(id)a4
{
  v5 = [(NoteHTMLEditorView *)self delegate:a3];
  v6 = objc_opt_respondsToSelector();

  if ((v6 & 1) == 0)
  {
    return 1;
  }

  v7 = [(NoteHTMLEditorView *)self delegate];
  v8 = [v7 isNoteManagedForNoteHTMLEditorView:self];

  if (v8)
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

- (BOOL)_webView:(id)a3 performDataInteractionOperationWithItemProviders:(id)a4
{
  v5 = a4;
  v6 = [(NoteHTMLEditorView *)self delegate];
  v7 = objc_opt_respondsToSelector();

  if ((v7 & 1) == 0 || (-[NoteHTMLEditorView delegate](self, "delegate"), v8 = objc_claimAutoreleasedReturnValue(), v9 = [v8 noteHTMLEditorView:self canAddAttachmentItemProviders:v5], v8, v9)) && (-[NoteHTMLEditorView delegate](self, "delegate"), v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_opt_respondsToSelector(), v10, (v11))
  {
    v12 = [(NoteHTMLEditorView *)self delegate];
    [v12 noteHTMLEditorView:self addAttachmentItemProviders:v5];

    v13 = 1;
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (void)_webView:(id)a3 didInsertAttachment:(id)a4 withSource:(id)a5
{
  v43 = *MEMORY[0x1E69E9840];
  v7 = a4;
  v8 = a5;
  if ([v8 length])
  {
    v9 = [MEMORY[0x1E695DFF8] URLWithString:v8];
  }

  else
  {
    v9 = 0;
  }

  v10 = [v9 scheme];
  v11 = [v10 isEqualToString:@"cid"];

  if (v11)
  {
    v12 = [v9 resourceSpecifier];
    v13 = [(NoteHTMLEditorView *)self delegate];
    v14 = [v13 noteHTMLEditorView:self attachmentPresentationForContentID:v12];

    if (v14)
    {
      v15 = objc_alloc(MEMORY[0x1E696AC38]);
      v16 = [v14 dataFileURL];
      v36 = 0;
      v17 = [v15 initWithURL:v16 options:0 error:&v36];
      v18 = v36;

      if (v18 || !v17)
      {
        v20 = os_log_create("com.apple.notes", "HTML");
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          v32 = [v14 dataFileURL];
          *buf = 138412802;
          v38 = v12;
          v39 = 2112;
          v40 = v32;
          v41 = 2112;
          v42 = v18;
          _os_log_error_impl(&dword_1D4171000, v20, OS_LOG_TYPE_ERROR, "Could not create file wrapper for content ID %@ and URL: %@ – %@", buf, 0x20u);
        }
      }

      else
      {
        v19 = [v14 mimeType];
        v33[0] = MEMORY[0x1E69E9820];
        v33[1] = 3221225472;
        v33[2] = __62__NoteHTMLEditorView__webView_didInsertAttachment_withSource___block_invoke;
        v33[3] = &unk_1E846BD80;
        v34 = v14;
        v35 = v12;
        [v7 setFileWrapper:v17 contentType:v19 completion:v33];

        v20 = v34;
      }
    }

    goto LABEL_16;
  }

  v21 = [(NoteHTMLEditorView *)self delegate];
  v22 = objc_opt_respondsToSelector();

  if (v22)
  {
    v23 = [(NoteHTMLEditorView *)self delegate];
    v24 = [v7 info];
    v25 = [v24 fileWrapper];
    v26 = [v7 info];
    v27 = [v26 contentType];
    v12 = [v23 noteHTMLEditorView:self createAttachmentPresentationWithFileWrapper:v25 mimeType:v27];

    v28 = [v12 contentIDURL];
    v29 = [v28 absoluteString];

    v30 = [v7 uniqueIdentifier];
    v31 = [MEMORY[0x1E695DEC8] arrayWithObjects:{v29, v30, 0}];
    [(NoteHTMLEditorView *)self performSelector:sel_setSourceURLForAttachmentIdentifier_ withObject:v31 afterDelay:0.0];

LABEL_16:
  }
}

void __62__NoteHTMLEditorView__webView_didInsertAttachment_withSource___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = os_log_create("com.apple.notes", "HTML");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __62__NoteHTMLEditorView__webView_didInsertAttachment_withSource___block_invoke_cold_1(a1, v3, v4);
    }
  }
}

- (void)_webView:(id)a3 contextMenuConfigurationForElement:(id)a4 completionHandler:(id)a5
{
  v18 = a4;
  v7 = a5;
  v8 = [v18 _activatedElementInfo];
  if ([v8 type] == 1)
  {
    v9 = [v8 imageURL];
  }

  else if ([v8 type] == 2)
  {
    v10 = MEMORY[0x1E695DFF8];
    v11 = [v8 ID];
    v9 = [v10 URLWithString:v11];
  }

  else
  {
    v9 = 0;
  }

  v12 = [v9 scheme];
  v13 = [v12 isEqualToString:@"cid"];

  if (v13)
  {
    v14 = [v9 resourceSpecifier];
  }

  else
  {
    v14 = 0;
  }

  v15 = [(NoteHTMLEditorView *)self delegate];
  v16 = [v15 noteHTMLEditorView:self attachmentPresentationForContentID:v14];

  if (v16)
  {
    v17 = [(NoteHTMLEditorView *)self contextMenuConfigurationForElement:v18 presentation:v16];
    v7[2](v7, v17);
  }

  else
  {
    v7[2](v7, 0);
  }
}

- (void)webView:(id)a3 decidePolicyForNavigationAction:(id)a4 decisionHandler:(id)a5
{
  v16 = a4;
  v7 = a5;
  v8 = [v16 request];
  v9 = [v8 URL];

  v10 = [v9 absoluteString];
  if ([v10 isEqualToString:@"about:blank"])
  {
    v11 = [v16 navigationType];

    if (v11 == -1)
    {
      v12 = 1;
      goto LABEL_9;
    }
  }

  else
  {
  }

  if (([(NoteHTMLEditorView *)self performActionForDataDetectedInURL:v9]& 1) == 0)
  {
    v13 = [(NoteHTMLEditorView *)self delegate];
    v14 = objc_opt_respondsToSelector();

    if (v14)
    {
      v15 = [(NoteHTMLEditorView *)self delegate];
      [v15 noteHTMLEditorView:self openURL:v9];
    }
  }

  v12 = 0;
LABEL_9:
  v7[2](v7, v12);
}

- (void)webView:(id)a3 didFinishNavigation:(id)a4
{
  v5 = [(NoteHTMLEditorView *)self htmlStringToLoad:a3];

  if (v5)
  {
    v6 = [(NoteHTMLEditorView *)self htmlStringToLoad];
    v7 = [(NoteHTMLEditorView *)self attachmentsToLoad];
    [(NoteHTMLEditorView *)self setHtmlStringToLoad:0];
    [(NoteHTMLEditorView *)self setAttachmentsToLoad:0];
    [(NoteHTMLEditorView *)self setHtmlString:v6 attachments:v7];
  }

  [(NoteHTMLEditorView *)self adoptEditableState];
  v8 = [(NoteHTMLEditorView *)self webView];
  v9 = [v8 scrollView];
  [v9 setDelegate:self];

  [(NoteHTMLEditorView *)self setEnableShiftNewlinesInSmartLists:0];
  if ([(NoteHTMLEditorView *)self setSelectionToEndAfterLoad])
  {
    [(NoteHTMLEditorView *)self setSetSelectionToEndAfterLoad:0];
    [(NoteHTMLEditorView *)self setSelectionToEnd];
  }

  if ([(NoteHTMLEditorView *)self startEditingAfterLoad])
  {
    [(NoteHTMLEditorView *)self setStartEditingAfterLoad:0];

    [(NoteHTMLEditorView *)self startEditing];
  }
}

- (void)webViewWebContentProcessDidTerminate:(id)a3
{
  htmlString = self->_htmlString;
  self->_htmlString = 0;

  [(NoteHTMLEditorView *)self setAttachmentContentIDs:0];
  v5 = [(NoteHTMLEditorView *)self webView];
  [v5 removeFromSuperview];

  [(NoteHTMLEditorView *)self setupWebView];
  v6 = [(NoteHTMLEditorView *)self delegate];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v8 = [(NoteHTMLEditorView *)self delegate];
    [v8 noteHTMLEditorViewNeedsContentReload:self];
  }
}

- (void)didReceiveScriptMessage:(id)a3
{
  v59 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 name];
  v6 = [v5 isEqualToString:@"textDidChange"];

  if (!v6)
  {
    v8 = [v4 name];
    v9 = [v8 isEqualToString:@"attachmentsDidChange"];

    if (v9)
    {
      objc_opt_class();
      v10 = [v4 body];
      v11 = ICDynamicCast();

      objc_opt_class();
      v12 = [v4 body];
      v13 = ICDynamicCast();

      if (v13)
      {
        -[NoteHTMLEditorView setHasAttachments:](self, "setHasAttachments:", [v13 BOOLValue]);
      }

      if (v11)
      {
        v48 = v13;
        v50 = v4;
        v14 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v11, "count")}];
        v52 = 0u;
        v53 = 0u;
        v54 = 0u;
        v55 = 0u;
        v49 = v11;
        v15 = v11;
        v16 = [v15 countByEnumeratingWithState:&v52 objects:v58 count:16];
        if (v16)
        {
          v17 = v16;
          v18 = *v53;
          do
          {
            v19 = 0;
            do
            {
              if (*v53 != v18)
              {
                objc_enumerationMutation(v15);
              }

              v20 = *(*(&v52 + 1) + 8 * v19);
              v21 = [objc_alloc(MEMORY[0x1E695DFF8]) initWithString:v20];
              v22 = [v21 resourceSpecifier];
              if (v22)
              {
                [v14 addObject:v22];
              }

              else
              {
                v23 = os_log_create("com.apple.notes", "UI");
                if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
                {
                  *buf = 138412290;
                  v57 = v20;
                  _os_log_debug_impl(&dword_1D4171000, v23, OS_LOG_TYPE_DEBUG, "couldn't convert content ID URL string %@ to URL", buf, 0xCu);
                }
              }

              ++v19;
            }

            while (v17 != v19);
            v17 = [v15 countByEnumeratingWithState:&v52 objects:v58 count:16];
          }

          while (v17);
        }

        [(NoteHTMLEditorView *)self setAttachmentContentIDs:v14];
        -[NoteHTMLEditorView setHasAttachments:](self, "setHasAttachments:", [v14 count] != 0);

        v4 = v50;
        v13 = v48;
        v11 = v49;
      }

      else
      {
        v37 = [(NoteHTMLEditorView *)self updateContentDelayer];
        [v37 requestFire];
      }
    }

    else
    {
      v24 = [v4 name];
      v25 = [v24 isEqualToString:@"titleDidChange"];

      if (v25)
      {
        objc_opt_class();
        v26 = [v4 body];
        v27 = ICDynamicCast();

        v28 = [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet];
        v29 = [v27 stringByTrimmingCharactersInSet:v28];

        v7 = [v29 stringByReplacingOccurrencesOfString:@" " withString:@" "];

        [(NoteHTMLEditorView *)self setTitle:v7];
        goto LABEL_3;
      }

      v30 = [v4 name];
      v31 = [v30 isEqualToString:@"selectionDidChange"];

      if (!v31)
      {
        v38 = [v4 name];
        v39 = [v38 isEqualToString:@"editorDidBlur"];

        if (v39)
        {
          [(NoteHTMLEditorView *)self setEditing:0];
          v7 = [(NoteHTMLEditorView *)self delegate];
          [v7 noteHTMLEditorViewDidEndEditing:self];
        }

        else
        {
          v40 = [v4 name];
          v41 = [v40 isEqualToString:@"anchorTouchesDidEnd"];

          if (v41)
          {
            v42 = dispatch_time(0, 250000000);
            block[0] = MEMORY[0x1E69E9820];
            block[1] = 3221225472;
            block[2] = __46__NoteHTMLEditorView_didReceiveScriptMessage___block_invoke;
            block[3] = &unk_1E8468BA0;
            block[4] = self;
            dispatch_after(v42, MEMORY[0x1E69E96A0], block);
            goto LABEL_27;
          }

          v43 = [v4 name];
          v44 = [v43 isEqualToString:@"clickedAttachment"];

          if (!v44)
          {
            goto LABEL_27;
          }

          objc_opt_class();
          v45 = [v4 body];
          v7 = ICDynamicCast();

          v46 = [v7 scheme];
          v47 = [v46 lowercaseString];
          [v47 isEqualToString:@"cid"];
        }

        goto LABEL_3;
      }

      objc_opt_class();
      v32 = [v4 body];
      v11 = ICDynamicCast();

      objc_opt_class();
      v33 = [v11 objectForKeyedSubscript:@"selectionLength"];
      v13 = ICDynamicCast();

      v34 = [v13 integerValue];
      objc_opt_class();
      v35 = [v11 objectForKeyedSubscript:@"listStyle"];
      v36 = ICDynamicCast();

      [(NoteHTMLEditorView *)self setSelectionLength:v34];
      -[NoteHTMLEditorView setListStyle:](self, "setListStyle:", [v36 characterAtIndex:0]);
    }

    goto LABEL_27;
  }

  v7 = [(NoteHTMLEditorView *)self updateContentDelayer];
  [v7 requestFire];
LABEL_3:

LABEL_27:
}

- (void)loadAttachmentContentForURLSchemeTask:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v5 = MEMORY[0x1E696AAE0];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __60__NoteHTMLEditorView_loadAttachmentContentForURLSchemeTask___block_invoke;
  v12[3] = &unk_1E846A288;
  objc_copyWeak(&v14, &location);
  v6 = v4;
  v13 = v6;
  v7 = [v5 blockOperationWithBlock:v12];
  v8 = [v6 request];
  v9 = [v8 URL];
  v10 = [v9 absoluteString];
  [v7 setName:v10];

  v11 = [MEMORY[0x1E696ADC8] mainQueue];
  [v11 addOperation:v7];

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

void __60__NoteHTMLEditorView_loadAttachmentContentForURLSchemeTask___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [*(a1 + 32) request];
  v4 = [v3 URL];
  v5 = [v4 scheme];
  v6 = [v5 lowercaseString];
  v7 = [v6 isEqualToString:@"cid"];

  if (v7)
  {
    v8 = [*(a1 + 32) request];
    v9 = [v8 URL];
    v10 = [v9 resourceSpecifier];

    v11 = [WeakRetained delegate];
    LOBYTE(v9) = objc_opt_respondsToSelector();

    if ((v9 & 1) != 0 && ([WeakRetained delegate], v12 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v12, "noteHTMLEditorView:fileURLForAttachmentWithContentID:", WeakRetained, v10), v13 = objc_claimAutoreleasedReturnValue(), v12, v13))
    {
      v14 = MEMORY[0x1E6982C40];
      v15 = [v13 pathExtension];
      v16 = [v14 typeWithFilenameExtension:v15];
      v17 = [v16 identifier];

      if (v17)
      {
        v18 = [MEMORY[0x1E6982C40] typeWithIdentifier:v17];
        v19 = [v18 preferredMIMEType];
      }

      else
      {
        v19 = [*MEMORY[0x1E6982D60] preferredMIMEType];
      }

      v31 = [MEMORY[0x1E695DEF0] dataWithContentsOfURL:v13];
      v32 = objc_alloc(MEMORY[0x1E696AF70]);
      v33 = [*(a1 + 32) request];
      v34 = [v33 URL];
      v35 = [v32 initWithURL:v34 MIMEType:v19 expectedContentLength:objc_msgSend(v31 textEncodingName:{"length"), 0}];

      [*(a1 + 32) didReceiveResponse:v35];
      [*(a1 + 32) didReceiveData:v31];
      [*(a1 + 32) didFinish];

      v20 = 0;
    }

    else
    {
      v21 = [WeakRetained delegate];
      v22 = objc_opt_respondsToSelector();

      if ((v22 & 1) != 0 && ([WeakRetained delegate], v23 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v23, "noteHTMLEditorView:attachmentPresentationForContentID:", WeakRetained, v10), v24 = objc_claimAutoreleasedReturnValue(), v23, v24))
      {
        v37 = 0;
        v38 = 0;
        v36 = 0;
        [v24 getPresentationData:&v38 mimeType:&v37 error:&v36];
        v25 = v38;
        v26 = v37;
        v20 = v36;
        v27 = objc_alloc(MEMORY[0x1E696AF70]);
        v28 = [*(a1 + 32) request];
        v29 = [v28 URL];
        v30 = [v27 initWithURL:v29 MIMEType:v26 expectedContentLength:objc_msgSend(v25 textEncodingName:{"length"), 0}];

        [*(a1 + 32) didReceiveResponse:v30];
        [*(a1 + 32) didReceiveData:v25];
        [*(a1 + 32) didFinish];
      }

      else
      {
        v20 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A978] code:-1100 userInfo:0];
        [*(a1 + 32) didFailWithError:v20];
      }
    }
  }

  else
  {
    v20 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A978] code:-1002 userInfo:0];
    [*(a1 + 32) didFailWithError:v20];
  }
}

- (id)contextMenuConfigurationForElement:(id)a3 presentation:(id)a4
{
  v6 = a4;
  v7 = [a3 _activatedElementInfo];
  v8 = MEMORY[0x1E69DC8D8];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __70__NoteHTMLEditorView_contextMenuConfigurationForElement_presentation___block_invoke_2;
  v13[3] = &unk_1E846BE18;
  v14 = v6;
  v15 = v7;
  v16 = self;
  v9 = v7;
  v10 = v6;
  v11 = [v8 configurationWithIdentifier:0 previewProvider:&__block_literal_global_345 actionProvider:v13];

  return v11;
}

id __70__NoteHTMLEditorView_contextMenuConfigurationForElement_presentation___block_invoke_2(uint64_t a1)
{
  v2 = [MEMORY[0x1E695DF70] array];
  v3 = MEMORY[0x1E69DC628];
  v4 = __ICLocalizedFrameworkString_impl(@"Copy", @"Copy", 0, 1);
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __70__NoteHTMLEditorView_contextMenuConfigurationForElement_presentation___block_invoke_3;
  v20[3] = &unk_1E846BDC8;
  v21 = *(a1 + 32);
  v5 = [v3 ic_actionWithTitle:v4 imageName:@"doc.on.doc" handler:v20];

  [v2 addObject:v5];
  v6 = MEMORY[0x1E69DC628];
  v7 = __ICLocalizedFrameworkString_impl(@"Share", @"Share", 0, 1);
  v13 = MEMORY[0x1E69E9820];
  v14 = 3221225472;
  v15 = __70__NoteHTMLEditorView_contextMenuConfigurationForElement_presentation___block_invoke_4;
  v16 = &unk_1E846BDF0;
  v8 = *(a1 + 40);
  v9 = *(a1 + 48);
  v17 = v8;
  v18 = v9;
  v19 = *(a1 + 32);
  v10 = [v6 ic_actionWithTitle:v7 imageName:@"square.and.arrow.up" handler:&v13];

  [v2 addObject:{v10, v13, v14, v15, v16}];
  v11 = [MEMORY[0x1E69DCC60] menuWithTitle:&stru_1F4F94F00 image:0 identifier:0 options:0 children:v2];

  return v11;
}

void __70__NoteHTMLEditorView_contextMenuConfigurationForElement_presentation___block_invoke_3(uint64_t a1)
{
  v14[1] = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) mimeType];
  if (v2)
  {
    v3 = MEMORY[0x1E6982C40];
    v4 = [*(a1 + 32) mimeType];
    v5 = [v3 typeWithMIMEType:v4];
    v6 = [v5 identifier];
  }

  else
  {
    v6 = [*MEMORY[0x1E6982D60] identifier];
  }

  v7 = MEMORY[0x1E695DEF0];
  v8 = [*(a1 + 32) dataFileURL];
  v9 = [v7 dataWithContentsOfURL:v8];

  v10 = [objc_alloc(MEMORY[0x1E696ACA0]) initWithItem:v9 typeIdentifier:v6];
  v11 = [*(a1 + 32) filename];
  [v10 setSuggestedName:v11];

  [v10 setPreferredPresentationStyle:2];
  v12 = [MEMORY[0x1E69DCD50] generalPasteboard];
  v14[0] = v10;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];
  [v12 setItemProviders:v13];
}

void __70__NoteHTMLEditorView_contextMenuConfigurationForElement_presentation___block_invoke_4(id *a1)
{
  [a1[4] boundingRect];
  MidX = CGRectGetMidX(v8);
  [a1[4] boundingRect];
  MidY = CGRectGetMidY(v9);
  v6 = [a1[5] actionDelegate];
  v4 = a1[5];
  v5 = [a1[6] contentID];
  [v6 noteHTMLEditorView:v4 showShareSheetForAttachment:v5 atPoint:{MidX, MidY}];
}

- (void)updateDataOwnerForCopyAndPaste
{
  v3 = [(NoteHTMLEditorView *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(NoteHTMLEditorView *)self delegate];
    v6 = [v5 isNoteManagedForNoteHTMLEditorView:self];

    if (v6)
    {
      v7 = 2;
    }

    else
    {
      v7 = 1;
    }
  }

  else
  {
    v7 = 1;
  }

  [(NoteHTMLEditorView *)self _setDataOwnerForCopy:v7];
  [(NoteHTMLEditorView *)self _setDataOwnerForPaste:v7];
  v8 = [(NoteHTMLEditorView *)self webView];
  [v8 _setDataOwnerForCopy:v7];

  v9 = [(NoteHTMLEditorView *)self webView];
  [v9 _setDataOwnerForPaste:v7];
}

- (NoteHTMLEditorViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (NoteHTMLEditorViewActionDelegate)actionDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_actionDelegate);

  return WeakRetained;
}

- (NoteHTMLEditorViewLayoutDelegate)layoutDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_layoutDelegate);

  return WeakRetained;
}

- (void)jsonStringFromDictionaryOrArray:(void *)a1 .cold.1(void *a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = [a1 className];
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(&dword_1D4171000, a2, OS_LOG_TYPE_ERROR, "Trying to convert an object to JSON which is not an array or dictionary, class: %@", v4, 0xCu);
}

void __62__NoteHTMLEditorView__webView_didInsertAttachment_withSource___block_invoke_cold_1(uint64_t a1, void *a2, NSObject *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v6 = [*(a1 + 32) mimeType];
  v7 = *(a1 + 40);
  v8 = [a2 localizedDescription];
  v9 = 138412802;
  v10 = v6;
  v11 = 2112;
  v12 = v7;
  v13 = 2112;
  v14 = v8;
  _os_log_error_impl(&dword_1D4171000, a3, OS_LOG_TYPE_ERROR, "Could not set file wrapper with mime type %@ for attachment %@ – %@", &v9, 0x20u);
}

@end