@interface GTMTLTelemetryServiceObserver
- (void)notifyStatistics:(id)statistics;
@end

@implementation GTMTLTelemetryServiceObserver

- (void)notifyStatistics:(id)statistics
{
  statisticsCopy = statistics;
  xdict = xpc_dictionary_create_empty();
  Name = sel_getName(a2);
  xpc_dictionary_set_string(xdict, "_cmd", Name);
  xpc_dictionary_set_uint64(xdict, "_port", [(GTServiceObserver *)self replyStream]);
  replyPath = [(GTServiceObserver *)self replyPath];
  xpc_dictionary_set_value(xdict, "_replyPath", replyPath);

  xpc_dictionary_set_nsobject(xdict, "statistics", statisticsCopy);
  connection = [(GTServiceObserver *)self connection];
  [connection sendMessage:xdict];
}

@end