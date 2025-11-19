@interface MSComposeBundlePageController
- (MSComposeBundlePageController)initWithPlugIn:(id)a3 contextController:(id)a4;
- (WKWebProcessPlugIn)plugIn;
- (id)_linkGeneratorProxy;
- (id)createRichLink:(id)a3;
- (id)webProcessPlugInBrowserContextController:(id)a3 frame:(id)a4 willSendRequestForResource:(unint64_t)a5 request:(id)a6 redirectResponse:(id)a7;
- (void)changeQuoteLevelBy:(int64_t)a3 withUndoActionName:(id)a4;
- (void)enableSmartReply:(BOOL)a3;
- (void)initializeBodyField:(id)a3;
- (void)initializeGlobalObject;
- (void)insertRichLinkWithURL:(id)a3 completionHandler:(id)a4;
- (void)insertString:(id)a3;
- (void)invalidate;
- (void)performBodyFieldMethodOnPage:(id)a3 withArguments:(id)a4;
- (void)performOnPage:(id)a3;
- (void)resumePerformOnPage;
- (void)webProcessPlugInBrowserContextController:(id)a3 didFinishDocumentLoadForFrame:(id)a4;
- (void)webProcessPlugInBrowserContextController:(id)a3 globalObjectIsAvailableForFrame:(id)a4 inScriptWorld:(id)a5;
@end

@implementation MSComposeBundlePageController

- (MSComposeBundlePageController)initWithPlugIn:(id)a3 contextController:(id)a4
{
  v6 = a3;
  v7 = a4;
  v15.receiver = self;
  v15.super_class = MSComposeBundlePageController;
  v8 = [(MSComposeBundlePageController *)&v15 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_plugIn, v6);
    objc_storeStrong(&v9->_controller, a4);
    v9->_performOnPageSuspendCount = 1;
    v10 = objc_alloc_init(MEMORY[0x277CBEB18]);
    blocksToPerformOnPage = v9->_blocksToPerformOnPage;
    v9->_blocksToPerformOnPage = v10;

    [(WKWebProcessPlugInBrowserContextController *)v9->_controller setLoadDelegate:v9];
    v12 = [MEMORY[0x277D071A0] transactionWithDescription:@"Compose WebContent process transaction"];
    webContentProcessTransaction = v9->_webContentProcessTransaction;
    v9->_webContentProcessTransaction = v12;
  }

  return v9;
}

- (void)invalidate
{
  [(WKWebProcessPlugInBrowserContextController *)self->_controller setLoadDelegate:0];
  jsContext = self->_jsContext;
  self->_jsContext = 0;

  jsBodyField = self->_jsBodyField;
  self->_jsBodyField = 0;

  [(EFProcessTransaction *)self->_webContentProcessTransaction invalidate];
  webContentProcessTransaction = self->_webContentProcessTransaction;
  self->_webContentProcessTransaction = 0;
}

- (void)performOnPage:(id)a3
{
  v4 = a3;
  v7 = v4;
  if (self->_performOnPageSuspendCount)
  {
    blocksToPerformOnPage = self->_blocksToPerformOnPage;
    v6 = MEMORY[0x259C75CA0]();
    [(NSMutableArray *)blocksToPerformOnPage addObject:v6];
  }

  else
  {
    self->_performOnPageSuspendCount = 1;
    (*(v4 + 2))();
    [(MSComposeBundlePageController *)self resumePerformOnPage];
  }
}

- (void)resumePerformOnPage
{
  v2 = self->_performOnPageSuspendCount - 1;
  self->_performOnPageSuspendCount = v2;
  if (!v2)
  {
    do
    {
      v4 = [(NSMutableArray *)self->_blocksToPerformOnPage firstObject];
      if (!v4)
      {
        break;
      }

      v5 = v4;
      [(NSMutableArray *)self->_blocksToPerformOnPage removeObjectAtIndex:0];
      ++self->_performOnPageSuspendCount;
      v5[2](v5);

      v6 = self->_performOnPageSuspendCount - 1;
      self->_performOnPageSuspendCount = v6;
    }

    while (!v6);
  }
}

- (void)performBodyFieldMethodOnPage:(id)a3 withArguments:(id)a4
{
  v6 = a3;
  v7 = a4;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __76__MSComposeBundlePageController_performBodyFieldMethodOnPage_withArguments___block_invoke;
  v10[3] = &unk_27985D6A0;
  v10[4] = self;
  v11 = v6;
  v12 = v7;
  v8 = v7;
  v9 = v6;
  [(MSComposeBundlePageController *)self performOnPage:v10];
}

- (id)_linkGeneratorProxy
{
  linkGeneratorProxy = self->_linkGeneratorProxy;
  if (!linkGeneratorProxy)
  {
    v4 = [(MSComposeBundlePageController *)self controller];
    v5 = [v4 _remoteObjectRegistry];
    v6 = [MEMORY[0x277CE3898] remoteObjectInterfaceWithProtocol:&unk_2869394A8];
    v7 = [v5 remoteObjectProxyWithInterface:v6];
    v8 = self->_linkGeneratorProxy;
    self->_linkGeneratorProxy = v7;

    linkGeneratorProxy = self->_linkGeneratorProxy;
  }

  return linkGeneratorProxy;
}

- (id)createRichLink:(id)a3
{
  v18[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [MEMORY[0x277CD4640] currentContext];
  v6 = [v5 objectForKeyedSubscript:@"Promise"];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __48__MSComposeBundlePageController_createRichLink___block_invoke;
  v14[3] = &unk_27985D6F0;
  v7 = v4;
  v15 = v7;
  v16 = self;
  v8 = v5;
  v17 = v8;
  v9 = MEMORY[0x259C75CA0](v14);
  v18[0] = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:1];
  v11 = [v6 constructWithArguments:v10];

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

void __48__MSComposeBundlePageController_createRichLink___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [MEMORY[0x277CBEBC0] _lp_URLWithUserTypedString:*(a1 + 32) relativeToURL:0];
  objc_initWeak(&location, *(a1 + 40));
  v5 = [*(a1 + 40) _linkGeneratorProxy];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __48__MSComposeBundlePageController_createRichLink___block_invoke_2;
  v7[3] = &unk_27985D6C8;
  objc_copyWeak(&v10, &location);
  v8 = *(a1 + 48);
  v6 = v3;
  v9 = v6;
  [v5 createRichLinkWithURL:v4 completionHandler:v7];

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

void __48__MSComposeBundlePageController_createRichLink___block_invoke_2(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6)
{
  v24[1] = *MEMORY[0x277D85DE8];
  v11 = a2;
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  if (v11)
  {
    if (v12)
    {
      WeakRetained = objc_loadWeakRetained((a1 + 48));
      v17 = [WeakRetained observerProxy];
      [v17 composeBodyFieldAddAttachmentWithData:v12 filename:v13 mimeType:v14 uniqueID:v15];
    }

    v18 = [MEMORY[0x277CD4658] valueWithObject:v11 inContext:*(a1 + 32)];
    v19 = *(a1 + 40);
    v24[0] = v18;
    v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:1];
    v21 = [v19 callWithArguments:v20];
  }

  else
  {
    v22 = [*(a1 + 40) callWithArguments:MEMORY[0x277CBEBF8]];
  }

  v23 = *MEMORY[0x277D85DE8];
}

- (void)insertRichLinkWithURL:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __73__MSComposeBundlePageController_insertRichLinkWithURL_completionHandler___block_invoke;
  v10[3] = &unk_27985D740;
  v10[4] = self;
  v11 = v6;
  v12 = v7;
  v8 = v7;
  v9 = v6;
  [(MSComposeBundlePageController *)self performOnPage:v10];
}

void __73__MSComposeBundlePageController_insertRichLinkWithURL_completionHandler___block_invoke(id *a1)
{
  v14[1] = *MEMORY[0x277D85DE8];
  [a1[4] suspendPerformOnPage];
  v2 = *(a1[4] + 3);
  v3 = [a1[5] absoluteString];
  v14[0] = v3;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:1];
  v5 = [v2 invokeMethod:@"insertRichLink" withArguments:v4];

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __73__MSComposeBundlePageController_insertRichLinkWithURL_completionHandler___block_invoke_2;
  v11[3] = &unk_27985D718;
  v6 = a1[6];
  v11[4] = a1[4];
  v12 = v6;
  v7 = MEMORY[0x259C75CA0](v11);
  v13 = v7;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:&v13 count:1];
  v9 = [v5 invokeMethod:@"then" withArguments:v8];

  v10 = *MEMORY[0x277D85DE8];
}

uint64_t __73__MSComposeBundlePageController_insertRichLinkWithURL_completionHandler___block_invoke_2(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = *(a1 + 32);

  return [v2 resumePerformOnPage];
}

- (void)changeQuoteLevelBy:(int64_t)a3 withUndoActionName:(id)a4
{
  v10[2] = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
  v10[0] = v7;
  v10[1] = v6;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:2];
  [(MSComposeBundlePageController *)self performBodyFieldMethodOnPage:@"changeQuoteLevel" withArguments:v8];

  v9 = *MEMORY[0x277D85DE8];
}

- (void)insertString:(id)a3
{
  v7[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v7[0] = v4;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:1];
  [(MSComposeBundlePageController *)self performBodyFieldMethodOnPage:@"insertString" withArguments:v5];

  v6 = *MEMORY[0x277D85DE8];
}

- (void)enableSmartReply:(BOOL)a3
{
  v7[1] = *MEMORY[0x277D85DE8];
  self->_isSmartReplyAvailable = a3;
  v4 = [MEMORY[0x277CCABB0] numberWithBool:?];
  v7[0] = v4;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:1];
  [(MSComposeBundlePageController *)self performBodyFieldMethodOnPage:@"enableSmartReply" withArguments:v5];

  v6 = *MEMORY[0x277D85DE8];
}

- (void)webProcessPlugInBrowserContextController:(id)a3 didFinishDocumentLoadForFrame:(id)a4
{
  v8 = a3;
  v6 = a4;
  v7 = [v8 mainFrame];

  if (v7 == v6)
  {
    [(MSComposeBundlePageController *)self resumePerformOnPage];
  }
}

- (void)webProcessPlugInBrowserContextController:(id)a3 globalObjectIsAvailableForFrame:(id)a4 inScriptWorld:(id)a5
{
  v29[2] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v8 mainFrame];
  v12 = v11;
  if (v11 == v9)
  {
    v13 = [MEMORY[0x277CE3848] normalWorld];

    if (v13 == v10)
    {
      v14 = [v9 jsContextForWorld:v10];
      jsContext = self->_jsContext;
      self->_jsContext = v14;

      objc_initWeak(&location, self);
      v26[0] = MEMORY[0x277D85DD0];
      v26[1] = 3221225472;
      v26[2] = __120__MSComposeBundlePageController_webProcessPlugInBrowserContextController_globalObjectIsAvailableForFrame_inScriptWorld___block_invoke;
      v26[3] = &unk_27985D768;
      objc_copyWeak(&v27, &location);
      [(JSContext *)self->_jsContext setExceptionHandler:v26];
      v16 = [(JSContext *)self->_jsContext globalObject];
      v29[0] = @"unhandledrejection";
      v21 = MEMORY[0x277D85DD0];
      v22 = 3221225472;
      v23 = __120__MSComposeBundlePageController_webProcessPlugInBrowserContextController_globalObjectIsAvailableForFrame_inScriptWorld___block_invoke_2;
      v24 = &unk_27985D790;
      objc_copyWeak(&v25, &location);
      v17 = MEMORY[0x259C75CA0](&v21);
      v29[1] = v17;
      v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v29 count:{2, v21, v22, v23, v24}];
      v19 = [v16 invokeMethod:@"addEventListener" withArguments:v18];

      [(MSComposeBundlePageController *)self initializeGlobalObject];
      objc_destroyWeak(&v25);
      objc_destroyWeak(&v27);
      objc_destroyWeak(&location);
    }
  }

  else
  {
  }

  v20 = *MEMORY[0x277D85DE8];
}

void __120__MSComposeBundlePageController_webProcessPlugInBrowserContextController_globalObjectIsAvailableForFrame_inScriptWorld___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v25[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v24[0] = *MEMORY[0x277D25930];
  v5 = [MEMORY[0x277CCACC8] callStackSymbols];
  v25[0] = v5;
  v24[1] = *MEMORY[0x277D25938];
  v6 = [v4 objectForKeyedSubscript:@"stack"];
  v7 = [v6 toString];
  v8 = [v7 componentsSeparatedByString:@"\n"];
  v25[1] = v8;
  v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:v24 count:2];

  v9 = MEMORY[0x277CBEAD8];
  v10 = MEMORY[0x277CCACA8];
  v11 = [v4 objectForKeyedSubscript:@"sourceURL"];
  v12 = [v11 toString];
  v13 = [v4 objectForKeyedSubscript:@"line"];
  v14 = [v13 toString];
  v15 = [v4 objectForKeyedSubscript:@"column"];
  v16 = [v15 toString];
  v17 = [v4 toString];
  v18 = [v10 stringWithFormat:@"JavaScript exception: %@:%@:%@: %@", v12, v14, v16, v17];
  v19 = [v9 exceptionWithName:*MEMORY[0x277CBE648] reason:v18 userInfo:v23];

  v20 = [WeakRetained observerProxy];
  [v20 composeBodyFieldDidThrowException:v19];

  v21 = *MEMORY[0x277D85DE8];
}

void __120__MSComposeBundlePageController_webProcessPlugInBrowserContextController_globalObjectIsAvailableForFrame_inScriptWorld___block_invoke_2(uint64_t a1, void *a2)
{
  v8 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = [WeakRetained jsContext];
    v6 = [v5 exceptionHandler];
    v7 = [v8 objectForKeyedSubscript:@"reason"];
    (v6)[2](v6, v5, v7);
  }
}

- (id)webProcessPlugInBrowserContextController:(id)a3 frame:(id)a4 willSendRequestForResource:(unint64_t)a5 request:(id)a6 redirectResponse:(id)a7
{
  v7 = [(MSComposeBundlePageController *)self willSendRequest:a6, a4, a5];

  return v7;
}

- (void)initializeGlobalObject
{
  v3 = 0;
  v50[27] = *MEMORY[0x277D85DE8];
  v50[0] = "MailSupport/BodyField.js";
  v50[1] = kBodyFieldSource;
  v50[2] = kBodyFieldSourceLength;
  v50[3] = "MailSupport/BodyInputController.js";
  v50[4] = kBodyInputControllerSource;
  v50[5] = kBodyInputControllerSourceLength;
  v50[6] = "MailSupport/Constants.js";
  v50[7] = "/*\n * Copyright (c) <%= Time.now.strftime(fmt=%Y) %> Apple Inc. All rights reserved.\n */\nuse strict;const MFContentIDScheme=cid,MFHtmlIDSelectionEnd=x-apple-selection:end,MFHtmlIDSelectionStart=x-apple-selection:start,MFHtmlTemporaryEditingElement=AppleTemporaryEditingElement,MFHtmlTemporaryPresentationElement=AppleTemporaryPresentationElement,MFMailDropBannerClass=x-apple-maildropbanner,MFMailDropItemClass=x-apple-maildrop,MFHtmlIDSignature=AppleMailSignature,MFHtmlIDLineBreakAtSignature=lineBreakAtBeginningOfSignature,MFHtmlIDLineBreakAtBeginning=lineBreakAtBeginningOfMessage,MFRichLinkClass=apple-rich-link,MFLPRichLinkClassPrefix=lp-rich-link,MFMailTemporaryAttachmentWrapper=x-apple-attachment-mark,MFHtmlIDQuickReplyStyle=x-mail-quick-reply-style,HtmlClassOriginalContent=AppleOriginalContents,linkPlaceHolderClass=linkPlaceholder,MFMailBigEmojiAttribute=AppleMailBigEmoji,bigEmojiFontSize=-webkit-xxx-large,defaultEmojiFontSize=-apple-system-body,maxNumberBigEmoji=3,largeInheritedFontSize=7;";
  v50[8] = kConstantsSourceLength;
  v50[9] = "MailSupport/DocumentExtras.js";
  v50[10] = "/*\n * Copyright (c) <%= Time.now.strftime(fmt=%Y) %> Apple Inc. All rights reserved.\n */\nuse strict;Document.prototype.createBlockPlaceholder=function(){let e=this.createElement(BR);return e.className=webkit-block-placeholder,e};";
  v50[11] = kDocumentExtrasSourceLength;
  v50[12] = "MailSupport/ElementExtras.js";
  v50[13] = kElementExtrasSource;
  v50[14] = kElementExtrasSourceLength;
  v50[15] = "MailSupport/HTMLDocumentExtras.js";
  v50[16] = "/*\n * Copyright (c) <%= Time.now.strftime(fmt=%Y) %> Apple Inc. All rights reserved.\n */\nuse strict;HTMLDocument.prototype.mf_createMessageQuoteElement=function(){let e=this.createElement(BLOCKQUOTE);return e.setAttribute(TYPE,cite),e},HTMLDocument.prototype.createElementFromMarkup=function(e){let t=this.createElement(template);return t.innerHTML=e,t.content.firstChild},HTMLDocument.mf_listElements=[ul,ol,dl],HTMLDocument.mf_quickReplyElementsToHideSelector=blockquote[type=cite], #lineBreakAtBeginningOfMessage, #lineBreakAtBeginningOfSignature, .+HtmlClassOriginalContent+, #+MFHtmlIDSignature,HTMLDocument.prototype.mf_getQuickReplyStyleElement=function(){return this.querySelector(#+MFHtmlIDQuickReplyStyle)},HTMLDocument.prototype.mf_quickReplyDisplayHiddenNodes=function(e){if (!isQuickReplyEnabled)return;let t=this.mf_getQuickReplyStyleElement();if (e){if (t&&t.remove(),this.quickReplyHiddenNodes)for (let e of this.quickReplyHiddenNodes)this.body.appendChild(e)}else if (this.quickReplyHiddenNodes===undefined)(t=this.createElement(style)).setAttribute(id,MFHtmlIDQuickReplyStyle),this.head.appendChild(t),t.sheet.insertRule(HTMLDocument.mf_quickReplyElementsToHideSelector+ {display:none;});else for (let e of this.quickReplyHiddenNodes)e.remove()},HTMLDocument.prototype.mf_quickReplyClearStylesAndSaveNodesIfNeeded=function(){if (!isQuickReplyEnabled||this.quickReplyHiddenNodes!==undefined)return;let e=this.querySelectorAll(HTMLDocument.mf_quickReplyElementsToHideSelector);this.quickReplyHiddenNodes=Array.from(e);for (let t=0;t<e.length;++t){let i=e[t];for (let l=t+1;l<e.length;++l){let t=e[l];if (i.contains(t)){let e=this.quickReplyHiddenNodes.indexOf(t);e>-1&&this.quickReplyHiddenNodes.splice(e,1)}}}for (let e of this.quickReplyHiddenNodes)e.remove();let t=this.mf_getQuickReplyStyleElement();t&&t.remove()};";
  v50[17] = kHTMLDocumentExtrasSourceLength;
  v50[18] = "MailSupport/HTMLElementExtras.js";
  v50[19] = "/*\n * Copyright (c) <%= Time.now.strftime(fmt=%Y) %> Apple Inc. All rights reserved.\n */\nuse strict;HTMLElement.prototype.mf_quoteLevelDelta=function(){if (BLOCKQUOTE!==this.nodeName.toUpperCase())return 0;let t=this.getAttribute(type);if (t&&CITE===t.toUpperCase())return 1;let e=this.getAttribute(class);return e&&GMAIL_QUOTE===e.toUpperCase()?1:0};";
  v50[20] = kHTMLElementExtrasSourceLength;
  v50[21] = "MailSupport/NodeExtras.js";
  v50[22] = kNodeExtrasSource;
  v50[23] = kNodeExtrasSourceLength;
  v50[24] = "MailSupport/RangeExtras.js";
  v50[25] = "/*\n * Copyright (c) <%= Time.now.strftime(fmt=%Y) %> Apple Inc. All rights reserved.\n */\nuse strict;const blockElementNames=new Set([HTML,BODY,BR,OL,UL,TD,TH,HR,DD,DL,DT,PRE,BLOCKQUOTE,DIV,P,TR,H1,H2,H3,H4,H5,H6]),isBlockElementName=function(e){return blockElementNames.has(e)};Range.prototype.stringValue=function(){let e=this.text();return isBlockElementName(this.endContainer.nodeName)&&0===this.endOffset&&(e+=\\n),e},Range.prototype.mf_hoistRange=function(){let e,t=!1;for (e=this.startContainer;!t&&!e.mf_isBody()&&!e.mf_quoteLevelDelta();)t=!0,this.endContainer===e&&(this.startOffset||this.endOffset!==e.childNodes.length||(this.setStartBefore(e),this.setEndAfter(e),e=this.startContainer,t=!1))},Range.prototype.mf_firstNode=function(){let e;if (this.collapsed)return e;let t=this.startContainer,n=this.startOffset,i=!1;if (t instanceof Text)e=(i=n>0)?t.mf_traverseNextNodeStayingWithin():t;else{for (e=t.firstChild;n-- >0;)e=e.nextSibling;e||(e=t.mf_traverseNextSiblingStayingWithin())}return e&&!this.intersectsNode(e)&&(e=undefined),e},Range.prototype.mf_takeFocus=function(e){e===undefined&&(e=!0),e&&this.collapse(!0);let t=document.getSelection();t.removeAllRanges(),t.addRange(this)},Range.prototype.mf_lastNode=function(){let e;if (this.collapsed)return e;let t=this.endContainer,n=this.endOffset,i=!1;if (t instanceof Text)e=(i=n<t.length)?t.mf_traversePreviousNode():t;else{for (e=t.firstChild;--n>0;)e=e.nextSibling;e&&this.endOffset||(e=t.mf_traversePreviousNode())}return e&&!this.intersectsNode(e)&&(e=undefined),e};const IS_BLOCK_ELEMENT_NAME=function(e){const t=[HTML,BODY,BR,LI,OL,UL,TD,TH,HR,DD,DL,DT,PRE,BLOCKQUOTE,DIV,P,TR,H1,H2,H3,H4,H5,H6];return e&&-1!==t.indexOf(e)},isBlockLevelNode=function(e){let t=!1;return t=!!IS_BLOCK_ELEMENT_NAME(e.nodeName)};Range.prototype.mf_getBlockBoundaryParentAndNextSibling=function(e){let t,n;if (e){let e=this.mf_firstNode(),t=e&&e.mf_topmostContainingNodeWithNameInArray(HTMLDocument.mf_listElements);if (t)return{parent:t.parentNode,nextSibling:t}}else{let e=this.mf_lastNode(),t=e&&e.mf_topmostContainingNodeWithNameInArray(HTMLDocument.mf_listElements);if (t)return{parent:t.parentNode,nextSibling:t.nextSibling}}let i,s,o;if (e?(i=this.startContainer,o=this.startOffset):(i=this.endContainer,o=this.endOffset),i instanceof Text)i=(s=i).parentNode;else for (s=i.firstChild;o-- >0;s=s.nextSibling);for (e&&(s=s?s.previousSibling:i.lastChild);!t&&i;){for (;!t&&s;)isBlockLevelNode(s)?(t=i,n=e||BR===s.nodeName.toUpperCase()?s.nextSibling:s):s=e?s.previousSibling:s.nextSibling;s||(isOrContainsBlockLevelNode(i)?(t=i,n=e?t.firstChild:undefined):(s=i,i=i.parentNode))}return{parent:t,nextSibling:n}};const isOrContainsBlockLevelNode=function(e){let t,n=!1;if (IS_BLOCK_ELEMENT_NAME(e.nodeName))n=!0;else for (t=e.firstChild;!n&&t;)n=isOrContainsBlockLevelNode(t),t=t.nextSibling;return n};";
  v50[26] = kRangeExtrasSourceLength;
  do
  {
    jsContext = self->_jsContext;
    v5 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:v50[v3 + 1] length:v50[v3 + 2] encoding:4];
    v6 = MEMORY[0x277CBEBC0];
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:v50[v3]];
    v8 = [v6 URLWithString:v7];
    v9 = [(JSContext *)jsContext evaluateScript:v5 withSourceURL:v8];

    v3 += 3;
  }

  while (v3 != 27);
  [(JSContext *)self->_jsContext setObject:&unk_286936628 forKeyedSubscript:@"NSUTF8StringEncoding"];
  [(JSContext *)self->_jsContext setObject:objc_opt_class() forKeyedSubscript:@"NSURL"];
  [(JSContext *)self->_jsContext setObject:&__block_literal_global forKeyedSubscript:@"bigEmojiEnabled"];
  [(JSContext *)self->_jsContext setObject:&__block_literal_global_143 forKeyedSubscript:@"isInlineGenmojiEnabled"];
  [(JSContext *)self->_jsContext setObject:&__block_literal_global_149 forKeyedSubscript:@"canUseNamedLinks"];
  objc_initWeak(&location, self);
  v10 = [(MSComposeBundlePageController *)self observerProxy];
  v41[0] = MEMORY[0x277D85DD0];
  v41[1] = 3221225472;
  v41[2] = __55__MSComposeBundlePageController_initializeGlobalObject__block_invoke_4;
  v41[3] = &unk_27985D7D8;
  objc_copyWeak(&v42, &location);
  [v10 composeBodyFieldQuickReplyEnabled:v41];

  v11 = [(JSContext *)self->_jsContext globalObject];
  v12 = *MEMORY[0x277CD4618];
  v13 = MEMORY[0x277CBEC38];
  v49[0] = MEMORY[0x277CBEC38];
  v14 = *MEMORY[0x277CD4620];
  v48[0] = v12;
  v48[1] = v14;
  v39[0] = MEMORY[0x277D85DD0];
  v39[1] = 3221225472;
  v39[2] = __55__MSComposeBundlePageController_initializeGlobalObject__block_invoke_5;
  v39[3] = &unk_27985D800;
  objc_copyWeak(&v40, &location);
  v15 = MEMORY[0x259C75CA0](v39);
  v49[1] = v15;
  v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v49 forKeys:v48 count:2];
  [v11 defineProperty:@"isQuickReplyEnabled" descriptor:v16];

  v17 = [(MSComposeBundlePageController *)self observerProxy];
  v37[0] = MEMORY[0x277D85DD0];
  v37[1] = 3221225472;
  v37[2] = __55__MSComposeBundlePageController_initializeGlobalObject__block_invoke_6;
  v37[3] = &unk_27985D7D8;
  objc_copyWeak(&v38, &location);
  [v17 composeBodyFieldSmartReplyAvailable:v37];

  v46[1] = v14;
  v47[0] = v13;
  v46[0] = v12;
  v35[0] = MEMORY[0x277D85DD0];
  v35[1] = 3221225472;
  v35[2] = __55__MSComposeBundlePageController_initializeGlobalObject__block_invoke_7;
  v35[3] = &unk_27985D800;
  objc_copyWeak(&v36, &location);
  v18 = MEMORY[0x259C75CA0](v35);
  v47[1] = v18;
  v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v47 forKeys:v46 count:2];
  [v11 defineProperty:@"isSmartReplyEnabled" descriptor:v19];

  v20 = [(MSComposeBundlePageController *)self observerProxy];
  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 3221225472;
  v33[2] = __55__MSComposeBundlePageController_initializeGlobalObject__block_invoke_8;
  v33[3] = &unk_27985D7D8;
  objc_copyWeak(&v34, &location);
  [v20 composeBodyFieldAddLinkPreviewsEnabled:v33];

  v44[1] = v14;
  v45[0] = v13;
  v44[0] = v12;
  v28 = MEMORY[0x277D85DD0];
  v29 = 3221225472;
  v30 = __55__MSComposeBundlePageController_initializeGlobalObject__block_invoke_9;
  v31 = &unk_27985D800;
  objc_copyWeak(&v32, &location);
  v21 = MEMORY[0x259C75CA0](&v28);
  v45[1] = v21;
  v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v45 forKeys:v44 count:{2, v28, v29, v30, v31}];
  [v11 defineProperty:@"addLinkPreviewsEnabled" descriptor:v22];

  [(JSContext *)self->_jsContext setObject:@"[\\n\\r\\s]+" forKeyedSubscript:@"whitespaceRegex"];
  [(JSContext *)self->_jsContext setObject:@"(\\p{Emoji_Presentation}|\\p{Extended_Pictographic})" forKeyedSubscript:@"emojiRegex"];
  [(JSContext *)self->_jsContext setObject:@"\\p{RI}\\p{RI}|\\p{Emoji}(\\p{EMod}|️⃣?|[\uE0020-\uE007E]+\uE007F)?(‍\\p{Emoji}(\\p{EMod}|️⃣?|[\uE0020-\uE007E]+\uE007F)?)*|." forKeyedSubscript:@"stringToArrayRegex"];
  v23 = [(JSContext *)self->_jsContext objectForKeyedSubscript:@"Range"];
  v24 = [v23 objectForKeyedSubscript:@"prototype"];

  [v24 setObject:&__block_literal_global_191 forKeyedSubscript:@"text"];
  v25 = [(JSContext *)self->_jsContext objectForKeyedSubscript:@"String"];
  v26 = [v25 objectForKeyedSubscript:@"prototype"];

  [v26 setObject:&__block_literal_global_200 forKeyedSubscript:@"ef_isWebAddress"];
  [v26 setObject:&__block_literal_global_206 forKeyedSubscript:@"ef_rangeOfWebAddressContainingRange"];

  objc_destroyWeak(&v32);
  objc_destroyWeak(&v34);
  objc_destroyWeak(&v36);
  objc_destroyWeak(&v38);
  objc_destroyWeak(&v40);

  objc_destroyWeak(&v42);
  objc_destroyWeak(&location);
  v27 = *MEMORY[0x277D85DE8];
}

void __55__MSComposeBundlePageController_initializeGlobalObject__block_invoke_4(uint64_t a1, char a2)
{
  v9[1] = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  WeakRetained[48] = _os_feature_enabled_impl() & a2;
  v4 = *(WeakRetained + 3);
  v5 = [MEMORY[0x277CCABB0] numberWithBool:?];
  v9[0] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];
  v7 = [v4 invokeMethod:@"enableQuickReply" withArguments:v6];

  v8 = *MEMORY[0x277D85DE8];
}

id __55__MSComposeBundlePageController_initializeGlobalObject__block_invoke_5(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = MEMORY[0x277CD4658];
  v3 = WeakRetained[48];
  v4 = [MEMORY[0x277CD4640] currentContext];
  v5 = [v2 valueWithBool:v3 inContext:v4];

  return v5;
}

void __55__MSComposeBundlePageController_initializeGlobalObject__block_invoke_6(uint64_t a1, char a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    WeakRetained[50] = a2;
  }
}

id __55__MSComposeBundlePageController_initializeGlobalObject__block_invoke_7(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = MEMORY[0x277CD4658];
  v3 = WeakRetained[50];
  v4 = [MEMORY[0x277CD4640] currentContext];
  v5 = [v2 valueWithBool:v3 inContext:v4];

  return v5;
}

void __55__MSComposeBundlePageController_initializeGlobalObject__block_invoke_8(uint64_t a1, char a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  WeakRetained[49] = a2;
}

id __55__MSComposeBundlePageController_initializeGlobalObject__block_invoke_9(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = MEMORY[0x277CD4658];
  v3 = WeakRetained[49];
  v4 = [MEMORY[0x277CD4640] currentContext];
  v5 = [v2 valueWithBool:v3 inContext:v4];

  return v5;
}

id __55__MSComposeBundlePageController_initializeGlobalObject__block_invoke_10()
{
  v0 = MEMORY[0x277CE3840];
  v1 = [MEMORY[0x277CD4640] currentThis];
  v2 = [MEMORY[0x277CD4640] currentContext];
  v3 = [v0 rangeHandleWithJSValue:v1 inContext:v2];
  v4 = [v3 text];

  return v4;
}

uint64_t __55__MSComposeBundlePageController_initializeGlobalObject__block_invoke_11()
{
  v0 = [MEMORY[0x277CD4640] currentThis];
  v1 = [v0 toString];
  v2 = [v1 ef_isWebAddress];

  return v2;
}

uint64_t __55__MSComposeBundlePageController_initializeGlobalObject__block_invoke_12(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = [MEMORY[0x277CD4640] currentThis];
  v6 = [v5 toString];
  v7 = [v6 ef_rangeOfWebAddressContainingRange:{a2, a3}];

  return v7;
}

- (void)initializeBodyField:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v7 = MEMORY[0x277D85DD0];
  v8 = 3221225472;
  v9 = __53__MSComposeBundlePageController_initializeBodyField___block_invoke;
  v10 = &unk_27985D868;
  objc_copyWeak(&v11, &location);
  v5 = MEMORY[0x259C75CA0](&v7);
  [(JSValue *)v4 setObject:v5 forKeyedSubscript:@"_createRichLink", v7, v8, v9, v10];

  jsBodyField = self->_jsBodyField;
  self->_jsBodyField = v4;

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

id __53__MSComposeBundlePageController_initializeBodyField___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained createRichLink:v3];

  return v5;
}

- (WKWebProcessPlugIn)plugIn
{
  WeakRetained = objc_loadWeakRetained(&self->_plugIn);

  return WeakRetained;
}

@end