@interface GTMTLTelemetryServiceReplyStream
- (GTMTLTelemetryServiceReplyStream)initWithObserver:(id)observer;
- (void)notifyStatistics_:(id)statistics_ replyConnection:(id)connection;
@end

@implementation GTMTLTelemetryServiceReplyStream

- (GTMTLTelemetryServiceReplyStream)initWithObserver:(id)observer
{
  observerCopy = observer;
  v6 = [GTServiceProperties protocolMethods:&unk_2860EF8F8];
  v9.receiver = self;
  v9.super_class = GTMTLTelemetryServiceReplyStream;
  v7 = [(GTXPCDispatcher *)&v9 initWithProtocolMethods:v6];

  if (v7)
  {
    objc_storeStrong(&v7->_observer, observer);
  }

  return v7;
}

- (void)notifyStatistics_:(id)statistics_ replyConnection:(id)connection
{
  v4 = MEMORY[0x277CBEB98];
  statistics_Copy = statistics_;
  v6 = [v4 alloc];
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  v11 = objc_opt_class();
  v12 = objc_opt_class();
  v13 = objc_opt_class();
  v14 = objc_opt_class();
  v16 = [v6 initWithObjects:{v7, v8, v9, v10, v11, v12, v13, v14, objc_opt_class(), 0}];
  nsobject_classes = xpc_dictionary_get_nsobject_classes(statistics_Copy, "statistics", v16);

  [(GTMTLTelemetryServiceObserver *)self->_observer notifyStatistics:nsobject_classes];
}

@end