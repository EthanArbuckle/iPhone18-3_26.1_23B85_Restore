@interface NoteHTMLEditorView
+ (id)baseHTMLString;
- (BOOL)_webView:(id)view focusShouldStartInputSession:(id)session;
- (BOOL)_webView:(id)view performDataInteractionOperationWithItemProviders:(id)providers;
- (BOOL)canPerformAction:(SEL)action withSender:(id)sender;
- (BOOL)isFirstResponder;
- (ICSelectorDelayer)updateContentDelayer;
- (NoteHTMLEditorView)initWithCoder:(id)coder;
- (NoteHTMLEditorView)initWithFrame:(CGRect)frame;
- (NoteHTMLEditorViewActionDelegate)actionDelegate;
- (NoteHTMLEditorViewDelegate)delegate;
- (NoteHTMLEditorViewLayoutDelegate)layoutDelegate;
- (UIViewPrintFormatter)viewPrintFormatter;
- (WebArchive)webArchive;
- (double)textZoomFactor;
- (id)attachmentInfoDictionaryForAttachmentPresentation:(id)presentation;
- (id)contextMenuConfigurationForElement:(id)element presentation:(id)presentation;
- (id)jsonStringFromDictionaryOrArray:(id)array;
- (id)targetForAction:(SEL)action withSender:(id)sender;
- (id)webViewConfiguration;
- (int64_t)_webView:(id)view dataOwnerForDragSession:(id)session;
- (int64_t)_webView:(id)view dataOwnerForDropSession:(id)session;
- (void)_webView:(id)view contextMenuConfigurationForElement:(id)element completionHandler:(id)handler;
- (void)_webView:(id)view didInsertAttachment:(id)attachment withSource:(id)source;
- (void)_webView:(id)view didStartInputSession:(id)session;
- (void)adoptEditableState;
- (void)buildMenuWithBuilder:(id)builder;
- (void)copyNoteHTMLToPasteboard;
- (void)didReceiveScriptMessage:(id)message;
- (void)didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator;
- (void)getRectForSelectionWithCompletion:(id)completion;
- (void)insertBulletedList:(id)list;
- (void)insertDashedList:(id)list;
- (void)insertHTMLString:(id)string;
- (void)insertImage:(id)image;
- (void)insertLinkWithURL:(id)l title:(id)title;
- (void)insertLinksWithURLs:(id)ls titles:(id)titles;
- (void)insertOrderedList:(id)list;
- (void)loadAttachmentContentForURLSchemeTask:(id)task;
- (void)removeScriptHandlers;
- (void)removeStyle:(id)style;
- (void)replaceContentIDs:(id)ds;
- (void)replaceSelectionWithAttachmentPresentation:(id)presentation;
- (void)scrollSelectionToVisible:(BOOL)visible;
- (void)scrollViewDidScroll:(id)scroll;
- (void)setEditable:(BOOL)editable;
- (void)setEditing:(BOOL)editing;
- (void)setEnableAttachments:(BOOL)attachments;
- (void)setEnableShiftNewlinesInSmartLists:(BOOL)lists;
- (void)setEnableSmartLists:(BOOL)lists;
- (void)setHtmlString:(id)string attachments:(id)attachments;
- (void)setSelectionToEnd;
- (void)setSelectionToStart;
- (void)setSourceURLForAttachmentIdentifier:(id)identifier;
- (void)setTextZoomFactor:(double)factor;
- (void)setupWebView;
- (void)startEditing;
- (void)stopEditingWithCompletion:(id)completion;
- (void)undoablyRemoveAttachmentPresentations:(id)presentations undoManager:(id)manager;
- (void)undoablyReplaceSelectionWithAttachmentPresentations:(id)presentations undoManager:(id)manager;
- (void)updateContent;
- (void)updateDataDetectors;
- (void)updateDataOwnerForCopyAndPaste;
- (void)updateWebViewEditability;
- (void)webView:(id)view decidePolicyForNavigationAction:(id)action decisionHandler:(id)handler;
- (void)webView:(id)view didFinishNavigation:(id)navigation;
- (void)webViewWebContentProcessDidTerminate:(id)terminate;
@end

@implementation NoteHTMLEditorView

+ (id)baseHTMLString
{
  v2 = MEMORY[0x1E696AEC0];
  v3 = _noteStyleSheet();
  v4 = [v2 stringWithFormat:@"<!DOCTYPE html><html>    <head>        <meta name=viewport content=initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0 />        <style>            %@        </style>    </head>    <body id=editor>    </body></html>", v3];

  return v4;
}

- (NoteHTMLEditorView)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = NoteHTMLEditorView;
  v3 = [(NoteHTMLEditorView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(NoteHTMLEditorView *)v3 setupWebView];
  }

  return v4;
}

- (NoteHTMLEditorView)initWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = NoteHTMLEditorView;
  v3 = [(NoteHTMLEditorView *)&v6 initWithCoder:coder];
  v4 = v3;
  if (v3)
  {
    [(NoteHTMLEditorView *)v3 setupWebView];
  }

  return v4;
}

- (void)removeScriptHandlers
{
  webView = [(NoteHTMLEditorView *)self webView];
  configuration = [webView configuration];
  userContentController = [configuration userContentController];
  [userContentController removeAllScriptMessageHandlers];
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
  webViewConfiguration = [(NoteHTMLEditorView *)self webViewConfiguration];
  v13 = [(NoteWKWebView *)v3 initWithFrame:webViewConfiguration configuration:v5, v7, v9, v11];
  [(NoteHTMLEditorView *)self setWebView:v13];

  webView = [(NoteHTMLEditorView *)self webView];
  [webView setTranslatesAutoresizingMaskIntoConstraints:0];

  clearColor = [MEMORY[0x1E69DC888] clearColor];
  webView2 = [(NoteHTMLEditorView *)self webView];
  [webView2 setBackgroundColor:clearColor];

  webView3 = [(NoteHTMLEditorView *)self webView];
  [webView3 setOpaque:0];

  webView4 = [(NoteHTMLEditorView *)self webView];
  [webView4 setAllowsLinkPreview:1];

  webView5 = [(NoteHTMLEditorView *)self webView];
  scrollView = [webView5 scrollView];
  [scrollView setShowsHorizontalScrollIndicator:0];

  webView6 = [(NoteHTMLEditorView *)self webView];
  scrollView2 = [webView6 scrollView];
  [scrollView2 setAlwaysBounceHorizontal:0];

  webView7 = [(NoteHTMLEditorView *)self webView];
  scrollView3 = [webView7 scrollView];
  [scrollView3 setDirectionalLockEnabled:1];

  webView8 = [(NoteHTMLEditorView *)self webView];
  [webView8 _setInputDelegate:self];

  webView9 = [(NoteHTMLEditorView *)self webView];
  [webView9 setUIDelegate:self];

  webView10 = [(NoteHTMLEditorView *)self webView];
  [webView10 setNavigationDelegate:self];

  webView11 = [(NoteHTMLEditorView *)self webView];
  [webView11 setNoteHTMLEditorView:self];

  webView12 = [(NoteHTMLEditorView *)self webView];
  [(NoteHTMLEditorView *)self addSubview:webView12];

  v30 = MEMORY[0x1E696AD68];
  v31 = [MEMORY[0x1E695DFF8] URLWithString:@"about:blank"];
  v32 = [v30 requestWithURL:v31];

  [v32 _setNonAppInitiated:1];
  webView13 = [(NoteHTMLEditorView *)self webView];
  v34 = MEMORY[0x1E696AEC0];
  v35 = _noteStyleSheet();
  v36 = [v34 stringWithFormat:@"<!DOCTYPE html><html>    <head>        <meta name=viewport content=initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0 />        <style>            %@        </style>    </head>    <body id=editor>    </body></html>", v35];
  v61 = v32;
  v37 = [webView13 loadSimulatedRequest:v32 responseHTMLString:v36];

  if ([MEMORY[0x1E69DC938] ic_isVision])
  {
    selfCopy = [(NoteHTMLEditorView *)self safeAreaLayoutGuide];
  }

  else
  {
    selfCopy = self;
  }

  v39 = selfCopy;
  v50 = selfCopy;
  v52 = MEMORY[0x1E696ACD8];
  webView14 = [(NoteHTMLEditorView *)self webView];
  leadingAnchor = [webView14 leadingAnchor];
  safeAreaLayoutGuide = [(NoteHTMLEditorView *)self safeAreaLayoutGuide];
  leadingAnchor2 = [safeAreaLayoutGuide leadingAnchor];
  v56 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v62[0] = v56;
  webView15 = [(NoteHTMLEditorView *)self webView];
  trailingAnchor = [webView15 trailingAnchor];
  safeAreaLayoutGuide2 = [(NoteHTMLEditorView *)self safeAreaLayoutGuide];
  trailingAnchor2 = [safeAreaLayoutGuide2 trailingAnchor];
  v40 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v62[1] = v40;
  webView16 = [(NoteHTMLEditorView *)self webView];
  topAnchor = [webView16 topAnchor];
  topAnchor2 = [(NoteHTMLEditorView *)v39 topAnchor];
  v44 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v62[2] = v44;
  webView17 = [(NoteHTMLEditorView *)self webView];
  bottomAnchor = [webView17 bottomAnchor];
  bottomAnchor2 = [(NoteHTMLEditorView *)v39 bottomAnchor];
  v48 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
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
  nonPersistentDataStore = [MEMORY[0x1E69853B8] nonPersistentDataStore];
  [v3 setWebsiteDataStore:nonPersistentDataStore];

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

  preferences = [v3 preferences];
  [preferences setJavaScriptCanOpenWindowsAutomatically:0];

  preferences2 = [v3 preferences];
  [preferences2 _setColorFilterEnabled:1];

  preferences3 = [v3 preferences];
  [preferences3 _setJavaScriptCanAccessClipboard:1];

  preferences4 = [v3 preferences];
  [preferences4 _setEditableLinkBehavior:3];

  v12 = [[NoteHTMLEditorViewURLSchemeHandler alloc] initWithNoteHMLEditorView:self];
  [(NoteHTMLEditorView *)self setUrlSchemeHandler:v12];

  v13 = [[NoteHTMLEditorViewScriptMessageHandler alloc] initWithNoteHMLEditorView:self];
  [(NoteHTMLEditorView *)self setScriptMessageHandler:v13];

  urlSchemeHandler = [(NoteHTMLEditorView *)self urlSchemeHandler];
  [v3 setURLSchemeHandler:urlSchemeHandler forURLScheme:@"cid"];

  v15 = [objc_alloc(MEMORY[0x1E6985358]) initWithSource:&cfstr_VarNotewkwebvi injectionTime:1 forMainFrameOnly:1];
  userContentController = [v3 userContentController];
  [userContentController addUserScript:v15];

  userContentController2 = [v3 userContentController];
  scriptMessageHandler = [(NoteHTMLEditorView *)self scriptMessageHandler];
  [userContentController2 addScriptMessageHandler:scriptMessageHandler name:@"textDidChange"];

  userContentController3 = [v3 userContentController];
  scriptMessageHandler2 = [(NoteHTMLEditorView *)self scriptMessageHandler];
  [userContentController3 addScriptMessageHandler:scriptMessageHandler2 name:@"attachmentsDidChange"];

  userContentController4 = [v3 userContentController];
  scriptMessageHandler3 = [(NoteHTMLEditorView *)self scriptMessageHandler];
  [userContentController4 addScriptMessageHandler:scriptMessageHandler3 name:@"titleDidChange"];

  userContentController5 = [v3 userContentController];
  scriptMessageHandler4 = [(NoteHTMLEditorView *)self scriptMessageHandler];
  [userContentController5 addScriptMessageHandler:scriptMessageHandler4 name:@"selectionDidChange"];

  userContentController6 = [v3 userContentController];
  scriptMessageHandler5 = [(NoteHTMLEditorView *)self scriptMessageHandler];
  [userContentController6 addScriptMessageHandler:scriptMessageHandler5 name:@"clickedAttachment"];

  userContentController7 = [v3 userContentController];
  scriptMessageHandler6 = [(NoteHTMLEditorView *)self scriptMessageHandler];
  [userContentController7 addScriptMessageHandler:scriptMessageHandler6 name:@"doubleClickedAttachment"];

  userContentController8 = [v3 userContentController];
  scriptMessageHandler7 = [(NoteHTMLEditorView *)self scriptMessageHandler];
  [userContentController8 addScriptMessageHandler:scriptMessageHandler7 name:@"editorDidBlur"];

  userContentController9 = [v3 userContentController];
  scriptMessageHandler8 = [(NoteHTMLEditorView *)self scriptMessageHandler];
  [userContentController9 addScriptMessageHandler:scriptMessageHandler8 name:@"anchorTouchesDidEnd"];

  return v3;
}

- (UIViewPrintFormatter)viewPrintFormatter
{
  webView = [(NoteHTMLEditorView *)self webView];
  viewPrintFormatter = [webView viewPrintFormatter];

  return viewPrintFormatter;
}

- (WebArchive)webArchive
{
  v52 = *MEMORY[0x1E69E9840];
  htmlString = [(NoteHTMLEditorView *)self htmlString];
  v4 = [htmlString dataUsingEncoding:4];

  v5 = objc_alloc(MEMORY[0x1E69E2F80]);
  v6 = [MEMORY[0x1E695DFF8] URLWithString:@"file:///index.html"];
  v38 = v4;
  v37 = [v5 initWithData:v4 URL:v6 MIMEType:@"text/html" textEncodingName:@"utf-8" frameName:0];

  v7 = objc_alloc(MEMORY[0x1E695DF70]);
  attachmentContentIDs = [(NoteHTMLEditorView *)self attachmentContentIDs];
  v42 = [v7 initWithCapacity:{objc_msgSend(attachmentContentIDs, "count")}];

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
        delegate = [(NoteHTMLEditorView *)self delegate];
        v16 = objc_opt_respondsToSelector();

        if (v16)
        {
          delegate2 = [(NoteHTMLEditorView *)self delegate];
          v18 = [delegate2 noteHTMLEditorView:self fileURLForAttachmentWithContentID:v13];

          if (v18)
          {
            v19 = *(v11 + 3136);
            [v18 pathExtension];
            v21 = v20 = v11;
            v22 = [v19 typeWithFilenameExtension:v21];
            identifier = [v22 identifier];

            if (identifier)
            {
              v24 = [*(v20 + 3136) typeWithIdentifier:identifier];
              preferredMIMEType = [v24 preferredMIMEType];
            }

            else
            {
              preferredMIMEType = [v39 preferredMIMEType];
            }

            v29 = [MEMORY[0x1E695DEF0] dataWithContentsOfURL:v18];
            v31 = objc_alloc(MEMORY[0x1E69E2F80]);
            v32 = v29;
            v33 = v14;
            v34 = preferredMIMEType;
            goto LABEL_18;
          }
        }

        delegate3 = [(NoteHTMLEditorView *)self delegate];
        v27 = objc_opt_respondsToSelector();

        if ((v27 & 1) == 0 || (-[NoteHTMLEditorView delegate](self, "delegate"), v28 = objc_claimAutoreleasedReturnValue(), [v28 noteHTMLEditorView:self attachmentPresentationForContentID:v13], identifier = objc_claimAutoreleasedReturnValue(), v28, !identifier))
        {
          v18 = [MEMORY[0x1E696ABC0] errorWithDomain:v40 code:4 userInfo:0];
          v30 = 0;
          goto LABEL_20;
        }

        v45 = 0;
        v46 = 0;
        v44 = 0;
        [identifier getPresentationData:&v46 mimeType:&v45 error:&v44];
        preferredMIMEType = v46;
        v29 = v45;
        v18 = v44;
        v30 = 0;
        if (preferredMIMEType && v29)
        {
          v31 = objc_alloc(MEMORY[0x1E69E2F80]);
          v32 = preferredMIMEType;
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
  webView = [(NoteHTMLEditorView *)self webView];
  [webView _textZoomFactor];
  v4 = v3;

  return v4;
}

- (void)setTextZoomFactor:(double)factor
{
  webView = [(NoteHTMLEditorView *)self webView];
  [webView _setTextZoomFactor:factor];
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

- (void)setHtmlString:(id)string attachments:(id)attachments
{
  v75 = *MEMORY[0x1E69E9840];
  stringCopy = string;
  attachmentsCopy = attachments;
  webView = [(NoteHTMLEditorView *)self webView];
  isLoading = [webView isLoading];

  if (isLoading)
  {
    [(NoteHTMLEditorView *)self setHtmlStringToLoad:stringCopy];
    [(NoteHTMLEditorView *)self setAttachmentsToLoad:attachmentsCopy];
    v10 = [attachmentsCopy valueForKeyPath:@"cidURL.resourceSpecifier"];
    [(NoteHTMLEditorView *)self setAttachmentContentIDs:v10];

    -[NoteHTMLEditorView setHasAttachments:](self, "setHasAttachments:", [attachmentsCopy count] != 0);
    goto LABEL_56;
  }

  htmlString = self->_htmlString;
  if (!htmlString || -[NSString isEqualToString:](htmlString, "isEqualToString:", &stru_1F4F94F00) || ([stringCopy isEqualToString:self->_htmlString] & 1) == 0)
  {
    selfCopy = self;
    [(NoteHTMLEditorView *)self updateDataOwnerForCopyAndPaste];
    v55 = stringCopy;
    ic_htmlStringEscapingQuotesAndLineBreaks = [stringCopy ic_htmlStringEscapingQuotesAndLineBreaks];
    v12 = 0x1E695D000uLL;
    v62 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(attachmentsCopy, "count")}];
    v70 = 0u;
    v71 = 0u;
    v72 = 0u;
    v73 = 0u;
    v54 = attachmentsCopy;
    obj = attachmentsCopy;
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
        pathExtension = [(__CFURL *)url pathExtension];
        mimeType = [v15 mimeType];
        if ([mimeType length])
        {
          v19 = [MEMORY[0x1E6982C40] typeWithMIMEType:mimeType];
          identifier = [v19 identifier];
        }

        else
        {
          identifier = 0;
        }

        v66 = pathExtension;
        if ([pathExtension length])
        {
          v21 = [MEMORY[0x1E6982C40] typeWithFilenameExtension:pathExtension];
          identifier2 = [v21 identifier];

          if (identifier2)
          {
            goto LABEL_24;
          }
        }

        else
        {
          identifier2 = 0;
        }

        if (identifier)
        {
          v23 = [MEMORY[0x1E6982C40] typeWithIdentifier:identifier];
          v24 = [v23 isEqual:v61];

          if (v24 && (v25 = CGImageSourceCreateWithURL(url, 0)) != 0)
          {
            v26 = v25;
            v27 = CGImageSourceGetType(v25);
            identifier2 = v27;
            if (v27)
            {
              v28 = v27;
            }

            CFRelease(v26);
          }

          else
          {
            identifier2 = 0;
          }

          goto LABEL_28;
        }

LABEL_24:
        if (!identifier)
        {
          if (!identifier2)
          {
            goto LABEL_37;
          }

          goto LABEL_31;
        }

LABEL_28:
        v29 = [MEMORY[0x1E6982C40] typeWithIdentifier:identifier];
        v64 = v29;
        if ([v29 conformsToType:v65])
        {

LABEL_36:
          [v16 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"image"];
          goto LABEL_46;
        }

        if (!identifier2)
        {

          identifier2 = 0;
          goto LABEL_37;
        }

LABEL_31:
        v30 = [MEMORY[0x1E6982C40] typeWithIdentifier:identifier2];
        v31 = [v30 conformsToType:v65];

        if (identifier)
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
        fileURL = [v15 fileURL];
        lastPathComponent = [fileURL lastPathComponent];
        v35 = [lastPathComponent stringByReplacingOccurrencesOfString:@" withString:@"\];

        if (identifier2)
        {
          identifier3 = identifier2;
        }

        else if (identifier)
        {
          identifier3 = identifier;
        }

        else
        {
          identifier3 = [v61 identifier];
        }

        v37 = identifier3;
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
        cidURL = [v15 cidURL];
        absoluteString = [cidURL absoluteString];

        if (absoluteString)
        {
          [v62 setObject:v16 forKeyedSubscript:absoluteString];
        }
      }

      v63 = [obj countByEnumeratingWithState:&v70 objects:v74 count:16];
      if (!v63)
      {
LABEL_50:

        v41 = selfCopy;
        v42 = [(NoteHTMLEditorView *)selfCopy jsonStringFromDictionaryOrArray:v62];
        objc_storeStrong(&selfCopy->_htmlString, string);
        if (ic_htmlStringEscapingQuotesAndLineBreaks)
        {
          v43 = ic_htmlStringEscapingQuotesAndLineBreaks;
        }

        else
        {
          v43 = &stru_1F4F94F00;
        }

        v44 = [obj valueForKeyPath:@"cidURL.resourceSpecifier"];
        [(NoteHTMLEditorView *)selfCopy setAttachmentContentIDs:v44];

        -[NoteHTMLEditorView setHasAttachments:](selfCopy, "setHasAttachments:", [obj count] != 0);
        [(NoteHTMLEditorView *)selfCopy setEnableSmartLists:+[ICTextStyle autoListInsertionEnabled]];
        delegate = [(NoteHTMLEditorView *)selfCopy delegate];
        v46 = objc_opt_respondsToSelector();

        if (v46)
        {
          delegate2 = [(NoteHTMLEditorView *)selfCopy delegate];
          v48 = [delegate2 allowsAttachmentsInNoteHTMLEditorView:selfCopy];

          v41 = selfCopy;
          [(NoteHTMLEditorView *)selfCopy setEnableAttachments:v48];
        }

        webView2 = [(NoteHTMLEditorView *)v41 webView];
        findInteraction = [webView2 findInteraction];
        [findInteraction dismissFindNavigator];

        webView3 = [(NoteHTMLEditorView *)v41 webView];
        v52 = [MEMORY[0x1E696AEC0] stringWithFormat:@"notewkwebview.setHTMLContentWithAttachmentInfos(%@, %@)", v43, v42];;
        v68[0] = MEMORY[0x1E69E9820];
        v68[1] = 3221225472;
        v68[2] = __48__NoteHTMLEditorView_setHtmlString_attachments___block_invoke;
        v68[3] = &unk_1E846BC70;
        v68[4] = v41;
        [webView3 evaluateJavaScript:v52 completionHandler:v68];

        attachmentsCopy = v54;
        stringCopy = v55;
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

- (void)setEnableAttachments:(BOOL)attachments
{
  attachmentsCopy = attachments;
  webView = [(NoteHTMLEditorView *)self webView];
  v4 = @"false";
  if (attachmentsCopy)
  {
    v4 = @"true";
  }

  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"setEnableAttachments(%@)", v4];;
  [webView ic_evaluateJavaScript:v5];
}

- (void)setEnableSmartLists:(BOOL)lists
{
  listsCopy = lists;
  webView = [(NoteHTMLEditorView *)self webView];
  v4 = @"false";
  if (listsCopy)
  {
    v4 = @"true";
  }

  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"setEnableSmartLists(%@)", v4];;
  [webView ic_evaluateJavaScript:v5];
}

- (void)setEnableShiftNewlinesInSmartLists:(BOOL)lists
{
  listsCopy = lists;
  webView = [(NoteHTMLEditorView *)self webView];
  v4 = @"false";
  if (listsCopy)
  {
    v4 = @"true";
  }

  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"setEnableShiftNewLinesInSmartLists(%@)", v4];;
  [webView ic_evaluateJavaScript:v5];
}

- (void)insertHTMLString:(id)string
{
  ic_htmlStringEscapingQuotesAndLineBreaks = [string ic_htmlStringEscapingQuotesAndLineBreaks];
  webView = [(NoteHTMLEditorView *)self webView];
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"notewkwebview.insertHTML(\"%@\"", ic_htmlStringEscapingQuotesAndLineBreaks];
  [webView ic_evaluateJavaScript:v5];
}

- (void)insertLinkWithURL:(id)l title:(id)title
{
  titleCopy = title;
  absoluteString = [l absoluteString];
  ic_htmlStringEscapingQuotesAndLineBreaks = [absoluteString ic_htmlStringEscapingQuotesAndLineBreaks];

  ic_htmlStringEscapingQuotesAndLineBreaks2 = [titleCopy ic_htmlStringEscapingQuotesAndLineBreaks];

  v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"notewkwebview.insertLink(%@, %@)", ic_htmlStringEscapingQuotesAndLineBreaks, ic_htmlStringEscapingQuotesAndLineBreaks2];;
  webView = [(NoteHTMLEditorView *)self webView];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __46__NoteHTMLEditorView_insertLinkWithURL_title___block_invoke;
  v12[3] = &unk_1E846BC70;
  v12[4] = self;
  [webView evaluateJavaScript:v10 completionHandler:v12];
}

- (void)insertLinksWithURLs:(id)ls titles:(id)titles
{
  titlesCopy = titles;
  v7 = [ls valueForKey:@"absoluteString"];
  v8 = [(NoteHTMLEditorView *)self jsonStringFromDictionaryOrArray:v7];
  v9 = [(NoteHTMLEditorView *)self jsonStringFromDictionaryOrArray:titlesCopy];

  v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"notewkwebview.insertLinks(%@, %@)", v8, v9];;
  webView = [(NoteHTMLEditorView *)self webView];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __49__NoteHTMLEditorView_insertLinksWithURLs_titles___block_invoke;
  v12[3] = &unk_1E846BC70;
  v12[4] = self;
  [webView evaluateJavaScript:v10 completionHandler:v12];
}

- (void)copyNoteHTMLToPasteboard
{
  webView = [(NoteHTMLEditorView *)self webView];
  [webView ic_evaluateJavaScript:@"notewkwebview.copyNoteHTMLToPasteboard()"];
}

- (id)attachmentInfoDictionaryForAttachmentPresentation:(id)presentation
{
  presentationCopy = presentation;
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  filename = [presentationCopy filename];
  pathExtension = [filename pathExtension];

  mimeType = [presentationCopy mimeType];
  if ([mimeType length])
  {
    v8 = [MEMORY[0x1E6982C40] typeWithMIMEType:mimeType];
    identifier = [v8 identifier];
  }

  else
  {
    identifier = 0;
  }

  if ([pathExtension length])
  {
    v10 = [MEMORY[0x1E6982C40] typeWithFilenameExtension:pathExtension];
    identifier2 = [v10 identifier];
  }

  else
  {
    identifier2 = 0;
  }

  contentIDURL = [presentationCopy contentIDURL];
  absoluteString = [contentIDURL absoluteString];
  [dictionary setObject:absoluteString forKeyedSubscript:@"contentIDURL"];

  v14 = MEMORY[0x1E6982E30];
  if (!identifier)
  {
    if (identifier2)
    {
LABEL_13:
      v15 = [MEMORY[0x1E6982C40] typeWithIdentifier:identifier2];
      v16 = [v15 conformsToType:*v14];

      if (identifier)
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

      v26 = pathExtension;
      v17 = 0;
LABEL_20:
      dataSizeNumber = [presentationCopy dataSizeNumber];
      filename2 = [presentationCopy filename];
      lastPathComponent = [filename2 lastPathComponent];
      v21 = [lastPathComponent stringByReplacingOccurrencesOfString:@" withString:@"\];

      if (v17)
      {
        if (identifier)
        {
          identifier3 = identifier;
        }

        else
        {
          identifier3 = [*MEMORY[0x1E6982D60] identifier];
        }
      }

      else
      {
        identifier3 = identifier2;
      }

      v23 = identifier3;
      if ([dataSizeNumber longLongValue] < 1)
      {
        v24 = &stru_1F4F94F00;
      }

      else
      {
        v24 = [MEMORY[0x1E696AAF0] stringFromByteCount:objc_msgSend(dataSizeNumber countStyle:{"longLongValue"), 0}];
      }

      [dictionary setObject:MEMORY[0x1E695E110] forKeyedSubscript:@"image"];
      [dictionary setObject:v21 forKeyedSubscript:@"title"];
      [dictionary setObject:v24 forKeyedSubscript:@"subtitle"];
      [dictionary setObject:v23 forKeyedSubscript:@"type"];

      pathExtension = v26;
      goto LABEL_29;
    }

    v26 = pathExtension;
LABEL_19:
    v17 = 1;
    goto LABEL_20;
  }

  contentIDURL = [MEMORY[0x1E6982C40] typeWithIdentifier:identifier];
  if (![contentIDURL conformsToType:*v14])
  {
    if (identifier2)
    {
      goto LABEL_13;
    }

    v26 = pathExtension;

    goto LABEL_19;
  }

LABEL_15:
  [dictionary setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"image"];
LABEL_29:

  return dictionary;
}

- (id)jsonStringFromDictionaryOrArray:(id)array
{
  arrayCopy = array;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    v9 = 0;
    v4 = [MEMORY[0x1E696ACB0] dataWithJSONObject:arrayCopy options:0 error:&v9];
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
      [(NoteHTMLEditorView *)arrayCopy jsonStringFromDictionaryOrArray:v4];
    }

    v7 = 0;
    v5 = 0;
  }

  return v7;
}

- (void)replaceSelectionWithAttachmentPresentation:(id)presentation
{
  v7 = [(NoteHTMLEditorView *)self attachmentInfoDictionaryForAttachmentPresentation:presentation];
  v4 = [(NoteHTMLEditorView *)self jsonStringFromDictionaryOrArray:v7];
  webView = [(NoteHTMLEditorView *)self webView];
  v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"notewkwebview.insertAttachment(%@)", v4];;
  [webView ic_evaluateJavaScript:v6];
}

- (void)undoablyReplaceSelectionWithAttachmentPresentations:(id)presentations undoManager:(id)manager
{
  v24 = *MEMORY[0x1E69E9840];
  presentationsCopy = presentations;
  managerCopy = manager;
  v8 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(presentationsCopy, "count")}];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v9 = presentationsCopy;
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

  v15 = [managerCopy prepareWithInvocationTarget:self];
  [v15 undoablyRemoveAttachmentPresentations:v9 undoManager:managerCopy];

  v16 = [(NoteHTMLEditorView *)self jsonStringFromDictionaryOrArray:v8];
  webView = [(NoteHTMLEditorView *)self webView];
  v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"notewkwebview.insertAttachments(%@)", v16];;
  [webView ic_evaluateJavaScript:v18];
}

- (void)undoablyRemoveAttachmentPresentations:(id)presentations undoManager:(id)manager
{
  v24 = *MEMORY[0x1E69E9840];
  presentationsCopy = presentations;
  managerCopy = manager;
  v8 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(presentationsCopy, "count")}];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v9 = presentationsCopy;
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

  v15 = [managerCopy prepareWithInvocationTarget:self];
  [v15 undoablyReplaceSelectionWithAttachmentPresentations:v9 undoManager:managerCopy];

  v16 = [(NoteHTMLEditorView *)self jsonStringFromDictionaryOrArray:v8];
  webView = [(NoteHTMLEditorView *)self webView];
  v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"notewkwebview.removeAttachments(%@)", v16];;
  [webView ic_evaluateJavaScript:v18];
}

- (void)replaceContentIDs:(id)ds
{
  dsCopy = ds;
  v5 = [(NoteHTMLEditorView *)self jsonStringFromDictionaryOrArray:dsCopy];
  attachmentContentIDs = [(NoteHTMLEditorView *)self attachmentContentIDs];
  v7 = [attachmentContentIDs copy];

  v8 = MEMORY[0x1E695DF70];
  attachmentContentIDs2 = [(NoteHTMLEditorView *)self attachmentContentIDs];
  v10 = [v8 arrayWithArray:attachmentContentIDs2];

  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __40__NoteHTMLEditorView_replaceContentIDs___block_invoke;
  v17[3] = &unk_1E846BC98;
  v18 = v10;
  v11 = v10;
  [dsCopy enumerateKeysAndObjectsUsingBlock:v17];

  [(NoteHTMLEditorView *)self setAttachmentContentIDs:v11];
  v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"notewkwebview.replaceAttachmentContentIDs(%@)", v5];;
  webView = [(NoteHTMLEditorView *)self webView];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __40__NoteHTMLEditorView_replaceContentIDs___block_invoke_2;
  v15[3] = &unk_1E846BCC0;
  v15[4] = self;
  v16 = v7;
  v14 = v7;
  [webView evaluateJavaScript:v12 completionHandler:v15];
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

- (void)setSourceURLForAttachmentIdentifier:(id)identifier
{
  identifierCopy = identifier;
  objc_opt_class();
  firstObject = [identifierCopy firstObject];
  v6 = ICDynamicCast();

  v7 = [MEMORY[0x1E695DFF8] URLWithString:v6];
  objc_opt_class();
  lastObject = [identifierCopy lastObject];
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
    attachmentContentIDs = [(NoteHTMLEditorView *)self attachmentContentIDs];
    v23 = [attachmentContentIDs copy];

    v12 = [(NoteHTMLEditorView *)self jsonStringFromDictionaryOrArray:identifierCopy];
    v13 = MEMORY[0x1E695DF70];
    attachmentContentIDs2 = [(NoteHTMLEditorView *)self attachmentContentIDs];
    v15 = [v13 arrayWithArray:attachmentContentIDs2];

    resourceSpecifier = [v7 resourceSpecifier];
    v17 = resourceSpecifier;
    if (resourceSpecifier)
    {
      scheme = [v7 scheme];
      v19 = [scheme isEqualToString:@"cid"];

      if (v19)
      {
        [v15 addObject:v17];
      }
    }

    [(NoteHTMLEditorView *)self setAttachmentContentIDs:v15];
    v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"notewkwebview.setSourceURLForAttachmentIdentifier(%@)", v12];;
    webView = [(NoteHTMLEditorView *)self webView];
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __58__NoteHTMLEditorView_setSourceURLForAttachmentIdentifier___block_invoke;
    v24[3] = &unk_1E846BCC0;
    v24[4] = self;
    v25 = v23;
    v22 = v23;
    [webView evaluateJavaScript:v20 completionHandler:v24];
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

- (void)buildMenuWithBuilder:(id)builder
{
  v12[1] = *MEMORY[0x1E69E9840];
  v11.receiver = self;
  v11.super_class = NoteHTMLEditorView;
  builderCopy = builder;
  [(NoteHTMLEditorView *)&v11 buildMenuWithBuilder:builderCopy];
  v4 = __ICLocalizedFrameworkStringWithDefaultValue_impl(@"INSERT_PHOTO", @"Insert Photo", @"Localizable", 1);
  v5 = MEMORY[0x1E69DC8B0];
  v6 = [MEMORY[0x1E69DCAB8] systemImageNamed:{@"camera", v11.receiver, v11.super_class}];
  v7 = [v5 commandWithTitle:v4 image:v6 action:sel_insertImage_ propertyList:0];

  v8 = MEMORY[0x1E69DCC60];
  v12[0] = v7;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:1];
  v10 = [v8 menuWithTitle:&stru_1F4F94F00 image:0 identifier:0 options:1 children:v9];

  [builderCopy insertChildMenu:v10 atEndOfMenuForIdentifier:*MEMORY[0x1E69DE190]];
  [builderCopy replaceChildrenOfMenuForIdentifier:*MEMORY[0x1E69DE208] fromChildrenBlock:&__block_literal_global_240];
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
  isEditing = [(NoteHTMLEditorView *)self isEditing];
  webView = [(NoteHTMLEditorView *)self webView];
  v5 = webView;
  if (isEditing)
  {
    [webView _removeDataDetectedLinks:0];
  }

  else
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __41__NoteHTMLEditorView_updateDataDetectors__block_invoke;
    v6[3] = &unk_1E8468BA0;
    v6[4] = self;
    [webView _detectDataWithTypes:-1 completionHandler:v6];
  }
}

void __41__NoteHTMLEditorView_updateDataDetectors__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) webView];
  [v1 ic_evaluateJavaScript:@"notewkwebview.updateAnchorListeners();"];
}

- (void)setEditable:(BOOL)editable
{
  self->_editable = editable;
  webView = [(NoteHTMLEditorView *)self webView];
  isLoading = [webView isLoading];

  if ((isLoading & 1) == 0)
  {

    [(NoteHTMLEditorView *)self adoptEditableState];
  }
}

- (void)setEditing:(BOOL)editing
{
  self->_editing = editing;
  [(NoteHTMLEditorView *)self updateDataDetectors];

  [(NoteHTMLEditorView *)self updateWebViewEditability];
}

- (void)updateWebViewEditability
{
  if (self->_editing)
  {
    isFindNavigatorVisible = 1;
  }

  else
  {
    webView = [(NoteHTMLEditorView *)self webView];
    findInteraction = [webView findInteraction];
    isFindNavigatorVisible = [findInteraction isFindNavigatorVisible];
  }

  webView2 = [(NoteHTMLEditorView *)self webView];
  _isEditable = [webView2 _isEditable];

  if (isFindNavigatorVisible != _isEditable)
  {
    webView3 = [(NoteHTMLEditorView *)self webView];
    [webView3 _setEditable:isFindNavigatorVisible];
  }
}

- (void)adoptEditableState
{
  isEditable = [(NoteHTMLEditorView *)self isEditable];
  webView = [(NoteHTMLEditorView *)self webView];
  v6 = webView;
  if (isEditable)
  {
    v5 = @"notewkwebview.enableEditor()";
  }

  else
  {
    v5 = @"notewkwebview.disableEditor()";
  }

  [webView ic_evaluateJavaScript:v5];
}

- (void)startEditing
{
  webView = [(NoteHTMLEditorView *)self webView];
  isLoading = [webView isLoading];

  if (isLoading)
  {

    [(NoteHTMLEditorView *)self setStartEditingAfterLoad:1];
  }

  else
  {
    [(NoteHTMLEditorView *)self setEditing:1];
    webView2 = [(NoteHTMLEditorView *)self webView];
    [webView2 ic_evaluateJavaScript:@"notewkwebview.startEditing()"];
  }
}

- (void)stopEditingWithCompletion:(id)completion
{
  completionCopy = completion;
  [(NoteHTMLEditorView *)self setEditing:0];
  webView = [(NoteHTMLEditorView *)self webView];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __48__NoteHTMLEditorView_stopEditingWithCompletion___block_invoke;
  v7[3] = &unk_1E846BD08;
  v8 = @"notewkwebview.stopEditing()";
  v9 = completionCopy;
  v6 = completionCopy;
  [webView evaluateJavaScript:@"notewkwebview.stopEditing()" completionHandler:v7];
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
    updateContentDelayer = [(NoteHTMLEditorView *)self updateContentDelayer];
    [updateContentDelayer requestFire];
  }

  else
  {
    delegate = [(NoteHTMLEditorView *)self delegate];
    v4 = objc_opt_respondsToSelector();

    if (v4)
    {
      delegate2 = [(NoteHTMLEditorView *)self delegate];
      [delegate2 noteHTMLEditorViewWillChange:self];
    }

    [(NoteHTMLEditorView *)self setUpdatingContent:1];
    objc_initWeak(&location, self);
    webView = [(NoteHTMLEditorView *)self webView];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __35__NoteHTMLEditorView_updateContent__block_invoke;
    v8[3] = &unk_1E846BD30;
    objc_copyWeak(&v9, &location);
    v8[4] = self;
    [webView evaluateJavaScript:@"getHTMLContentAndAttachmentContentIDURLs();" completionHandler:v8];

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

- (void)insertImage:(id)image
{
  actionDelegate = [(NoteHTMLEditorView *)self actionDelegate];
  [actionDelegate insertImageInNoteHTMLEditorView:self];
}

- (void)insertBulletedList:(id)list
{
  webView = [(NoteHTMLEditorView *)self webView];
  [webView ic_evaluateJavaScript:@"notewkwebview.insertBulletedList();"];
}

- (void)insertDashedList:(id)list
{
  webView = [(NoteHTMLEditorView *)self webView];
  [webView ic_evaluateJavaScript:@"notewkwebview.insertDashedList();"];
}

- (void)insertOrderedList:(id)list
{
  webView = [(NoteHTMLEditorView *)self webView];
  [webView ic_evaluateJavaScript:@"notewkwebview.insertNumberedList();"];
}

- (void)removeStyle:(id)style
{
  webView = [(NoteHTMLEditorView *)self webView];
  [webView ic_evaluateJavaScript:@"notewkwebview.removeStyle();"];
}

- (void)scrollSelectionToVisible:(BOOL)visible
{
  webView = [(NoteHTMLEditorView *)self webView];
  [webView ic_evaluateJavaScript:@"notewkwebview.scrollSelectionToVisible()"];
}

- (void)getRectForSelectionWithCompletion:(id)completion
{
  completionCopy = completion;
  webView = [(NoteHTMLEditorView *)self webView];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __56__NoteHTMLEditorView_getRectForSelectionWithCompletion___block_invoke;
  v7[3] = &unk_1E846BD58;
  v8 = completionCopy;
  v6 = completionCopy;
  [webView evaluateJavaScript:@"notewkwebview.getSelectionRects()" completionHandler:v7];
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
  webView = [(NoteHTMLEditorView *)self webView];
  isLoading = [webView isLoading];

  if ((isLoading & 1) == 0)
  {
    webView2 = [(NoteHTMLEditorView *)self webView];
    [webView2 ic_evaluateJavaScript:@"notewkwebview.setSelectionToStart();"];
  }
}

- (void)setSelectionToEnd
{
  webView = [(NoteHTMLEditorView *)self webView];
  isLoading = [webView isLoading];

  if (isLoading)
  {

    [(NoteHTMLEditorView *)self setSetSelectionToEndAfterLoad:1];
  }

  else
  {
    webView2 = [(NoteHTMLEditorView *)self webView];
    [webView2 ic_evaluateJavaScript:@"notewkwebview.setSelectionToEnd();"];
  }
}

- (BOOL)isFirstResponder
{
  webView = [(NoteHTMLEditorView *)self webView];
  isFirstResponder = [webView isFirstResponder];

  return isFirstResponder;
}

- (BOOL)canPerformAction:(SEL)action withSender:(id)sender
{
  senderCopy = sender;
  if (sel_insertImage_ == action)
  {
    if ([(NoteHTMLEditorView *)self isEditing])
    {
      actionDelegate = [(NoteHTMLEditorView *)self actionDelegate];
      v7 = [actionDelegate canInsertImagesInNoteHTMLEditorView:self];

      goto LABEL_9;
    }

LABEL_8:
    v7 = 0;
    goto LABEL_9;
  }

  if (sel_strikethrough_ == action)
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
  v7 = [(NoteHTMLEditorView *)&v10 canPerformAction:action withSender:senderCopy];
LABEL_9:

  return v7;
}

- (id)targetForAction:(SEL)action withSender:(id)sender
{
  senderCopy = sender;
  if ([(NoteHTMLEditorView *)self canPerformAction:action withSender:senderCopy])
  {
    selfCopy = self;
  }

  else
  {
    v10.receiver = self;
    v10.super_class = NoteHTMLEditorView;
    selfCopy = [(NoteHTMLEditorView *)&v10 targetForAction:action withSender:senderCopy];
  }

  v8 = selfCopy;

  return v8;
}

- (void)didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator
{
  nextFocusedItem = [context nextFocusedItem];
  v6 = [nextFocusedItem isEqual:self];

  if (v6)
  {

    [(NoteHTMLEditorView *)self startEditing];
  }
}

- (void)scrollViewDidScroll:(id)scroll
{
  scrollCopy = scroll;
  [scrollCopy contentOffset];
  if (v3 != 0.0)
  {
    [scrollCopy contentOffset];
    [scrollCopy setContentOffset:0.0];
  }
}

- (BOOL)_webView:(id)view focusShouldStartInputSession:(id)session
{
  sessionCopy = session;
  delegate = [(NoteHTMLEditorView *)self delegate];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    delegate2 = [(NoteHTMLEditorView *)self delegate];
    isEditable = [delegate2 noteHTMLEditorViewShouldBeginEditing:self isUserInitiated:{objc_msgSend(sessionCopy, "isUserInitiated")}];
  }

  else
  {
    isEditable = [(NoteHTMLEditorView *)self isEditable];
  }

  return isEditable;
}

- (void)_webView:(id)view didStartInputSession:(id)session
{
  [session setAccessoryViewShouldNotShow:1];
  [(NoteHTMLEditorView *)self setEditing:1];
  delegate = [(NoteHTMLEditorView *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    delegate2 = [(NoteHTMLEditorView *)self delegate];
    [delegate2 noteHTMLEditorViewDidBeginEditing:self];
  }
}

- (int64_t)_webView:(id)view dataOwnerForDragSession:(id)session
{
  v5 = [(NoteHTMLEditorView *)self delegate:view];
  v6 = objc_opt_respondsToSelector();

  if ((v6 & 1) == 0)
  {
    return 1;
  }

  delegate = [(NoteHTMLEditorView *)self delegate];
  v8 = [delegate isNoteManagedForNoteHTMLEditorView:self];

  if (v8)
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

- (int64_t)_webView:(id)view dataOwnerForDropSession:(id)session
{
  v5 = [(NoteHTMLEditorView *)self delegate:view];
  v6 = objc_opt_respondsToSelector();

  if ((v6 & 1) == 0)
  {
    return 1;
  }

  delegate = [(NoteHTMLEditorView *)self delegate];
  v8 = [delegate isNoteManagedForNoteHTMLEditorView:self];

  if (v8)
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

- (BOOL)_webView:(id)view performDataInteractionOperationWithItemProviders:(id)providers
{
  providersCopy = providers;
  delegate = [(NoteHTMLEditorView *)self delegate];
  v7 = objc_opt_respondsToSelector();

  if ((v7 & 1) == 0 || (-[NoteHTMLEditorView delegate](self, "delegate"), v8 = objc_claimAutoreleasedReturnValue(), v9 = [v8 noteHTMLEditorView:self canAddAttachmentItemProviders:providersCopy], v8, v9)) && (-[NoteHTMLEditorView delegate](self, "delegate"), v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_opt_respondsToSelector(), v10, (v11))
  {
    delegate2 = [(NoteHTMLEditorView *)self delegate];
    [delegate2 noteHTMLEditorView:self addAttachmentItemProviders:providersCopy];

    v13 = 1;
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (void)_webView:(id)view didInsertAttachment:(id)attachment withSource:(id)source
{
  v43 = *MEMORY[0x1E69E9840];
  attachmentCopy = attachment;
  sourceCopy = source;
  if ([sourceCopy length])
  {
    v9 = [MEMORY[0x1E695DFF8] URLWithString:sourceCopy];
  }

  else
  {
    v9 = 0;
  }

  scheme = [v9 scheme];
  v11 = [scheme isEqualToString:@"cid"];

  if (v11)
  {
    resourceSpecifier = [v9 resourceSpecifier];
    delegate = [(NoteHTMLEditorView *)self delegate];
    v14 = [delegate noteHTMLEditorView:self attachmentPresentationForContentID:resourceSpecifier];

    if (v14)
    {
      v15 = objc_alloc(MEMORY[0x1E696AC38]);
      dataFileURL = [v14 dataFileURL];
      v36 = 0;
      v17 = [v15 initWithURL:dataFileURL options:0 error:&v36];
      v18 = v36;

      if (v18 || !v17)
      {
        v20 = os_log_create("com.apple.notes", "HTML");
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          dataFileURL2 = [v14 dataFileURL];
          *buf = 138412802;
          v38 = resourceSpecifier;
          v39 = 2112;
          v40 = dataFileURL2;
          v41 = 2112;
          v42 = v18;
          _os_log_error_impl(&dword_1D4171000, v20, OS_LOG_TYPE_ERROR, "Could not create file wrapper for content ID %@ and URL: %@ – %@", buf, 0x20u);
        }
      }

      else
      {
        mimeType = [v14 mimeType];
        v33[0] = MEMORY[0x1E69E9820];
        v33[1] = 3221225472;
        v33[2] = __62__NoteHTMLEditorView__webView_didInsertAttachment_withSource___block_invoke;
        v33[3] = &unk_1E846BD80;
        v34 = v14;
        v35 = resourceSpecifier;
        [attachmentCopy setFileWrapper:v17 contentType:mimeType completion:v33];

        v20 = v34;
      }
    }

    goto LABEL_16;
  }

  delegate2 = [(NoteHTMLEditorView *)self delegate];
  v22 = objc_opt_respondsToSelector();

  if (v22)
  {
    delegate3 = [(NoteHTMLEditorView *)self delegate];
    info = [attachmentCopy info];
    fileWrapper = [info fileWrapper];
    info2 = [attachmentCopy info];
    contentType = [info2 contentType];
    resourceSpecifier = [delegate3 noteHTMLEditorView:self createAttachmentPresentationWithFileWrapper:fileWrapper mimeType:contentType];

    contentIDURL = [resourceSpecifier contentIDURL];
    absoluteString = [contentIDURL absoluteString];

    uniqueIdentifier = [attachmentCopy uniqueIdentifier];
    v31 = [MEMORY[0x1E695DEC8] arrayWithObjects:{absoluteString, uniqueIdentifier, 0}];
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

- (void)_webView:(id)view contextMenuConfigurationForElement:(id)element completionHandler:(id)handler
{
  elementCopy = element;
  handlerCopy = handler;
  _activatedElementInfo = [elementCopy _activatedElementInfo];
  if ([_activatedElementInfo type] == 1)
  {
    imageURL = [_activatedElementInfo imageURL];
  }

  else if ([_activatedElementInfo type] == 2)
  {
    v10 = MEMORY[0x1E695DFF8];
    v11 = [_activatedElementInfo ID];
    imageURL = [v10 URLWithString:v11];
  }

  else
  {
    imageURL = 0;
  }

  scheme = [imageURL scheme];
  v13 = [scheme isEqualToString:@"cid"];

  if (v13)
  {
    resourceSpecifier = [imageURL resourceSpecifier];
  }

  else
  {
    resourceSpecifier = 0;
  }

  delegate = [(NoteHTMLEditorView *)self delegate];
  v16 = [delegate noteHTMLEditorView:self attachmentPresentationForContentID:resourceSpecifier];

  if (v16)
  {
    v17 = [(NoteHTMLEditorView *)self contextMenuConfigurationForElement:elementCopy presentation:v16];
    handlerCopy[2](handlerCopy, v17);
  }

  else
  {
    handlerCopy[2](handlerCopy, 0);
  }
}

- (void)webView:(id)view decidePolicyForNavigationAction:(id)action decisionHandler:(id)handler
{
  actionCopy = action;
  handlerCopy = handler;
  request = [actionCopy request];
  v9 = [request URL];

  absoluteString = [v9 absoluteString];
  if ([absoluteString isEqualToString:@"about:blank"])
  {
    navigationType = [actionCopy navigationType];

    if (navigationType == -1)
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
    delegate = [(NoteHTMLEditorView *)self delegate];
    v14 = objc_opt_respondsToSelector();

    if (v14)
    {
      delegate2 = [(NoteHTMLEditorView *)self delegate];
      [delegate2 noteHTMLEditorView:self openURL:v9];
    }
  }

  v12 = 0;
LABEL_9:
  handlerCopy[2](handlerCopy, v12);
}

- (void)webView:(id)view didFinishNavigation:(id)navigation
{
  v5 = [(NoteHTMLEditorView *)self htmlStringToLoad:view];

  if (v5)
  {
    htmlStringToLoad = [(NoteHTMLEditorView *)self htmlStringToLoad];
    attachmentsToLoad = [(NoteHTMLEditorView *)self attachmentsToLoad];
    [(NoteHTMLEditorView *)self setHtmlStringToLoad:0];
    [(NoteHTMLEditorView *)self setAttachmentsToLoad:0];
    [(NoteHTMLEditorView *)self setHtmlString:htmlStringToLoad attachments:attachmentsToLoad];
  }

  [(NoteHTMLEditorView *)self adoptEditableState];
  webView = [(NoteHTMLEditorView *)self webView];
  scrollView = [webView scrollView];
  [scrollView setDelegate:self];

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

- (void)webViewWebContentProcessDidTerminate:(id)terminate
{
  htmlString = self->_htmlString;
  self->_htmlString = 0;

  [(NoteHTMLEditorView *)self setAttachmentContentIDs:0];
  webView = [(NoteHTMLEditorView *)self webView];
  [webView removeFromSuperview];

  [(NoteHTMLEditorView *)self setupWebView];
  delegate = [(NoteHTMLEditorView *)self delegate];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    delegate2 = [(NoteHTMLEditorView *)self delegate];
    [delegate2 noteHTMLEditorViewNeedsContentReload:self];
  }
}

- (void)didReceiveScriptMessage:(id)message
{
  v59 = *MEMORY[0x1E69E9840];
  messageCopy = message;
  name = [messageCopy name];
  v6 = [name isEqualToString:@"textDidChange"];

  if (!v6)
  {
    name2 = [messageCopy name];
    v9 = [name2 isEqualToString:@"attachmentsDidChange"];

    if (v9)
    {
      objc_opt_class();
      body = [messageCopy body];
      v11 = ICDynamicCast();

      objc_opt_class();
      body2 = [messageCopy body];
      v13 = ICDynamicCast();

      if (v13)
      {
        -[NoteHTMLEditorView setHasAttachments:](self, "setHasAttachments:", [v13 BOOLValue]);
      }

      if (v11)
      {
        v48 = v13;
        v50 = messageCopy;
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
              resourceSpecifier = [v21 resourceSpecifier];
              if (resourceSpecifier)
              {
                [v14 addObject:resourceSpecifier];
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

        messageCopy = v50;
        v13 = v48;
        v11 = v49;
      }

      else
      {
        updateContentDelayer = [(NoteHTMLEditorView *)self updateContentDelayer];
        [updateContentDelayer requestFire];
      }
    }

    else
    {
      name3 = [messageCopy name];
      v25 = [name3 isEqualToString:@"titleDidChange"];

      if (v25)
      {
        objc_opt_class();
        body3 = [messageCopy body];
        v27 = ICDynamicCast();

        whitespaceAndNewlineCharacterSet = [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet];
        v29 = [v27 stringByTrimmingCharactersInSet:whitespaceAndNewlineCharacterSet];

        delegate = [v29 stringByReplacingOccurrencesOfString:@" " withString:@" "];

        [(NoteHTMLEditorView *)self setTitle:delegate];
        goto LABEL_3;
      }

      name4 = [messageCopy name];
      v31 = [name4 isEqualToString:@"selectionDidChange"];

      if (!v31)
      {
        name5 = [messageCopy name];
        v39 = [name5 isEqualToString:@"editorDidBlur"];

        if (v39)
        {
          [(NoteHTMLEditorView *)self setEditing:0];
          delegate = [(NoteHTMLEditorView *)self delegate];
          [delegate noteHTMLEditorViewDidEndEditing:self];
        }

        else
        {
          name6 = [messageCopy name];
          v41 = [name6 isEqualToString:@"anchorTouchesDidEnd"];

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

          name7 = [messageCopy name];
          v44 = [name7 isEqualToString:@"clickedAttachment"];

          if (!v44)
          {
            goto LABEL_27;
          }

          objc_opt_class();
          body4 = [messageCopy body];
          delegate = ICDynamicCast();

          scheme = [delegate scheme];
          lowercaseString = [scheme lowercaseString];
          [lowercaseString isEqualToString:@"cid"];
        }

        goto LABEL_3;
      }

      objc_opt_class();
      body5 = [messageCopy body];
      v11 = ICDynamicCast();

      objc_opt_class();
      v33 = [v11 objectForKeyedSubscript:@"selectionLength"];
      v13 = ICDynamicCast();

      integerValue = [v13 integerValue];
      objc_opt_class();
      v35 = [v11 objectForKeyedSubscript:@"listStyle"];
      v36 = ICDynamicCast();

      [(NoteHTMLEditorView *)self setSelectionLength:integerValue];
      -[NoteHTMLEditorView setListStyle:](self, "setListStyle:", [v36 characterAtIndex:0]);
    }

    goto LABEL_27;
  }

  delegate = [(NoteHTMLEditorView *)self updateContentDelayer];
  [delegate requestFire];
LABEL_3:

LABEL_27:
}

- (void)loadAttachmentContentForURLSchemeTask:(id)task
{
  taskCopy = task;
  objc_initWeak(&location, self);
  v5 = MEMORY[0x1E696AAE0];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __60__NoteHTMLEditorView_loadAttachmentContentForURLSchemeTask___block_invoke;
  v12[3] = &unk_1E846A288;
  objc_copyWeak(&v14, &location);
  v6 = taskCopy;
  v13 = v6;
  v7 = [v5 blockOperationWithBlock:v12];
  request = [v6 request];
  v9 = [request URL];
  absoluteString = [v9 absoluteString];
  [v7 setName:absoluteString];

  mainQueue = [MEMORY[0x1E696ADC8] mainQueue];
  [mainQueue addOperation:v7];

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

- (id)contextMenuConfigurationForElement:(id)element presentation:(id)presentation
{
  presentationCopy = presentation;
  _activatedElementInfo = [element _activatedElementInfo];
  v8 = MEMORY[0x1E69DC8D8];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __70__NoteHTMLEditorView_contextMenuConfigurationForElement_presentation___block_invoke_2;
  v13[3] = &unk_1E846BE18;
  v14 = presentationCopy;
  v15 = _activatedElementInfo;
  selfCopy = self;
  v9 = _activatedElementInfo;
  v10 = presentationCopy;
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
  delegate = [(NoteHTMLEditorView *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    delegate2 = [(NoteHTMLEditorView *)self delegate];
    v6 = [delegate2 isNoteManagedForNoteHTMLEditorView:self];

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
  webView = [(NoteHTMLEditorView *)self webView];
  [webView _setDataOwnerForCopy:v7];

  webView2 = [(NoteHTMLEditorView *)self webView];
  [webView2 _setDataOwnerForPaste:v7];
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