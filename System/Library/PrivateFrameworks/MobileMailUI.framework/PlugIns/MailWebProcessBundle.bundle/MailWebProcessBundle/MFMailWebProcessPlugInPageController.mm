@interface MFMailWebProcessPlugInPageController
- (MFMailWebProcessPlugInPageController)initWithPlugIn:(id)in contextController:(id)controller;
- (id)_webProcessDelegateProxy;
- (id)_webProcessPlugInBrowserContextController:(id)controller pasteboardDataForRange:(id)range;
- (void)attachmentController:(id)controller updateToInlineAttachment:(id)attachment;
- (void)invalidate;
@end

@implementation MFMailWebProcessPlugInPageController

- (MFMailWebProcessPlugInPageController)initWithPlugIn:(id)in contextController:(id)controller
{
  inCopy = in;
  controllerCopy = controller;
  v29.receiver = self;
  v29.super_class = MFMailWebProcessPlugInPageController;
  v8 = [(MFMailWebProcessPlugInPageController *)&v29 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_controller, controller);
    [controllerCopy _setEditingDelegate:v9];
    v10 = objc_alloc_init(MFMailWebProcessLoadDelegate);
    loadDelegate = v9->_loadDelegate;
    v9->_loadDelegate = v10;

    remoteContentProxySchemePrefix = [inCopy remoteContentProxySchemePrefix];
    [(MFMailWebProcessLoadDelegate *)v9->_loadDelegate setRemoteContentProxySchemePrefix:remoteContentProxySchemePrefix];

    remoteContentNoProxySchemePrefix = [inCopy remoteContentNoProxySchemePrefix];
    [(MFMailWebProcessLoadDelegate *)v9->_loadDelegate setRemoteContentNoProxySchemePrefix:remoteContentNoProxySchemePrefix];

    -[MFMailWebProcessLoadDelegate setIsMailPrivacyProtectionAllowed:](v9->_loadDelegate, "setIsMailPrivacyProtectionAllowed:", [inCopy isMailPrivacyProtectionAllowed]);
    v14 = [_WKRemoteObjectInterface remoteObjectInterfaceWithProtocol:&OBJC_PROTOCOL___MFMailWebProcessProxy];
    proxyInterface = v9->_proxyInterface;
    v9->_proxyInterface = v14;

    _remoteObjectRegistry = [controllerCopy _remoteObjectRegistry];
    [_remoteObjectRegistry registerExportedObject:v9->_loadDelegate interface:v9->_proxyInterface];

    v17 = objc_alloc_init(MSPDFAttachmentController);
    attachmentController = v9->_attachmentController;
    v9->_attachmentController = v17;

    [(MSPDFAttachmentController *)v9->_attachmentController setDelegate:v9];
    v19 = [_WKRemoteObjectInterface remoteObjectInterfaceWithProtocol:&OBJC_PROTOCOL___MSMailWebProcessAttachmentProxy];
    attachmentInterface = v9->_attachmentInterface;
    v9->_attachmentInterface = v19;

    _remoteObjectRegistry2 = [controllerCopy _remoteObjectRegistry];
    [_remoteObjectRegistry2 registerExportedObject:v9->_attachmentController interface:v9->_attachmentInterface];

    v22 = [_WKRemoteObjectInterface remoteObjectInterfaceWithProtocol:&OBJC_PROTOCOL___MFMailWebProcessDelegate];
    v23 = objc_opt_class();
    v24 = [NSSet setWithObjects:v23, objc_opt_class(), 0];
    [v22 setClasses:v24 forSelector:"webProcessDidFinishDocumentLoadForURL:andRequestedRemoteURLs:" argumentIndex:1 ofReply:0];

    _remoteObjectRegistry3 = [controllerCopy _remoteObjectRegistry];
    v26 = [_remoteObjectRegistry3 remoteObjectProxyWithInterface:v22];
    [(MFMailWebProcessLoadDelegate *)v9->_loadDelegate setMailDelegate:v26];

    [controllerCopy setLoadDelegate:v9->_loadDelegate];
    mailDelegate = [(MFMailWebProcessLoadDelegate *)v9->_loadDelegate mailDelegate];
    [mailDelegate webProcessDidCreateBrowserContextControllerLoadDelegate];
  }

  return v9;
}

- (void)invalidate
{
  [(WKWebProcessPlugInBrowserContextController *)self->_controller _setEditingDelegate:0];
  [(MFMailWebProcessLoadDelegate *)self->_loadDelegate setMailDelegate:0];
  _remoteObjectRegistry = [(WKWebProcessPlugInBrowserContextController *)self->_controller _remoteObjectRegistry];
  [_remoteObjectRegistry unregisterExportedObject:self->_loadDelegate interface:self->_proxyInterface];
  [_remoteObjectRegistry unregisterExportedObject:self->_attachmentController interface:self->_attachmentInterface];
}

- (id)_webProcessDelegateProxy
{
  webProcessDelegateProxy = self->_webProcessDelegateProxy;
  if (!webProcessDelegateProxy)
  {
    v4 = [_WKRemoteObjectInterface remoteObjectInterfaceWithProtocol:&OBJC_PROTOCOL___MFMailWebProcessDelegate];
    v5 = objc_opt_class();
    v6 = [NSSet setWithObjects:v5, objc_opt_class(), 0];
    [v4 setClasses:v6 forSelector:"webProcessDidFinishDocumentLoadForURL:andRequestedRemoteURLs:" argumentIndex:1 ofReply:0];

    _remoteObjectRegistry = [(WKWebProcessPlugInBrowserContextController *)self->_controller _remoteObjectRegistry];
    v8 = [_remoteObjectRegistry remoteObjectProxyWithInterface:v4];
    v9 = self->_webProcessDelegateProxy;
    self->_webProcessDelegateProxy = v8;

    webProcessDelegateProxy = self->_webProcessDelegateProxy;
  }

  return webProcessDelegateProxy;
}

- (id)_webProcessPlugInBrowserContextController:(id)controller pasteboardDataForRange:(id)range
{
  rangeCopy = range;
  frame = [rangeCopy frame];
  v6 = +[WKWebProcessPlugInScriptWorld normalWorld];
  v7 = [frame jsRangeForRangeHandle:rangeCopy inWorld:v6];
  v8 = [frame jsContextForWorld:v6];
  globalObject = [v8 globalObject];
  v18 = v7;
  v10 = [NSArray arrayWithObjects:&v18 count:1];
  v11 = [globalObject invokeMethod:@"longPressedAttachment" withArguments:v10];

  toString = [v11 toString];
  if ([toString length])
  {
    v13 = [toString dataUsingEncoding:{4, MFMailTypeIdentifiersAttachment}];
    v17 = v13;
    v14 = [NSDictionary dictionaryWithObjects:&v17 forKeys:&v16 count:1];
  }

  else
  {
    v14 = &__NSDictionary0__struct;
  }

  return v14;
}

- (void)attachmentController:(id)controller updateToInlineAttachment:(id)attachment
{
  attachmentCopy = attachment;
  contentID = [attachmentCopy contentID];
  v7 = MFCreateURLForContentID();

  currentJSContext = [(MFMailWebProcessLoadDelegate *)self->_loadDelegate currentJSContext];
  globalObject = [currentJSContext globalObject];
  contentID2 = [attachmentCopy contentID];
  absoluteString = [v7 absoluteString];
  v15[1] = absoluteString;
  additionalMarkup = [attachmentCopy additionalMarkup];
  v15[2] = additionalMarkup;
  v13 = [NSArray arrayWithObjects:v15 count:3];
  v14 = [globalObject invokeMethod:@"imageAttachmentNodeFinishedDownloading" withArguments:v13];
}

@end