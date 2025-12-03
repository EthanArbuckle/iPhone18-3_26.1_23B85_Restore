@interface GTMTLCaptureServiceObserver
- (void)notifyCaptureObjectsChanged:(id)changed;
- (void)notifyCaptureProgress:(id)progress;
- (void)notifyCaptureRequest:(id)request;
- (void)notifyUnsupportedFenum:(id)fenum;
@end

@implementation GTMTLCaptureServiceObserver

- (void)notifyCaptureProgress:(id)progress
{
  progressCopy = progress;
  xdict = xpc_dictionary_create_empty();
  Name = sel_getName(a2);
  xpc_dictionary_set_string(xdict, "_cmd", Name);
  xpc_dictionary_set_uint64(xdict, "_port", [(GTServiceObserver *)self replyStream]);
  replyPath = [(GTServiceObserver *)self replyPath];
  xpc_dictionary_set_value(xdict, "_replyPath", replyPath);

  xpc_dictionary_set_nsobject(xdict, "progress", progressCopy);
  connection = [(GTServiceObserver *)self connection];
  [connection sendMessage:xdict];
}

- (void)notifyUnsupportedFenum:(id)fenum
{
  fenumCopy = fenum;
  xdict = xpc_dictionary_create_empty();
  Name = sel_getName(a2);
  xpc_dictionary_set_string(xdict, "_cmd", Name);
  xpc_dictionary_set_uint64(xdict, "_port", [(GTServiceObserver *)self replyStream]);
  replyPath = [(GTServiceObserver *)self replyPath];
  xpc_dictionary_set_value(xdict, "_replyPath", replyPath);

  xpc_dictionary_set_nsobject(xdict, "info", fenumCopy);
  connection = [(GTServiceObserver *)self connection];
  [connection sendMessage:xdict];
}

- (void)notifyCaptureObjectsChanged:(id)changed
{
  changedCopy = changed;
  xdict = xpc_dictionary_create_empty();
  Name = sel_getName(a2);
  xpc_dictionary_set_string(xdict, "_cmd", Name);
  xpc_dictionary_set_uint64(xdict, "_port", [(GTServiceObserver *)self replyStream]);
  replyPath = [(GTServiceObserver *)self replyPath];
  xpc_dictionary_set_value(xdict, "_replyPath", replyPath);

  xpc_dictionary_set_nsobject(xdict, "captureObjects", changedCopy);
  connection = [(GTServiceObserver *)self connection];
  [connection sendMessage:xdict];
}

- (void)notifyCaptureRequest:(id)request
{
  requestCopy = request;
  xdict = xpc_dictionary_create_empty();
  Name = sel_getName(a2);
  xpc_dictionary_set_string(xdict, "_cmd", Name);
  xpc_dictionary_set_uint64(xdict, "_port", [(GTServiceObserver *)self replyStream]);
  replyPath = [(GTServiceObserver *)self replyPath];
  xpc_dictionary_set_value(xdict, "_replyPath", replyPath);

  xpc_dictionary_set_nsobject(xdict, "descriptor", requestCopy);
  connection = [(GTServiceObserver *)self connection];
  [connection sendMessage:xdict];
}

@end