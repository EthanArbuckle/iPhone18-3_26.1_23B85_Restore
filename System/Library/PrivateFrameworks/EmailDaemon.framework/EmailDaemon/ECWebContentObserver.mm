@interface ECWebContentObserver
- (ECWebContentObserver)initWithParser:(id)parser;
- (EDWebContentParser)parser;
- (void)baseURL:(id)l didRequestRemoteContentURLs:(id)ls;
- (void)logWebBundleMessage:(id)message;
- (void)receiveDataDetectionResults:(id)results;
- (void)requestDataDetectionResultsWithBaseURL:(id)l;
@end

@implementation ECWebContentObserver

- (ECWebContentObserver)initWithParser:(id)parser
{
  parserCopy = parser;
  v8.receiver = self;
  v8.super_class = ECWebContentObserver;
  v5 = [(ECWebContentObserver *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_parser, parserCopy);
  }

  return v6;
}

- (void)baseURL:(id)l didRequestRemoteContentURLs:(id)ls
{
  lCopy = l;
  lsCopy = ls;
  parser = [(ECWebContentObserver *)self parser];
  [parser baseURL:lCopy didRequestRemoteContentURLs:lsCopy];
}

- (void)requestDataDetectionResultsWithBaseURL:(id)l
{
  lCopy = l;
  parser = [(ECWebContentObserver *)self parser];
  [parser requestDataDetectionResultsWithBaseURL:lCopy];
}

- (void)receiveDataDetectionResults:(id)results
{
  resultsCopy = results;
  parser = [(ECWebContentObserver *)self parser];
  [parser receiveDataDetectionResults:resultsCopy];
}

- (void)logWebBundleMessage:(id)message
{
  messageCopy = message;
  parser = [(ECWebContentObserver *)self parser];
  [parser logWebBundleMessage:messageCopy];
}

- (EDWebContentParser)parser
{
  WeakRetained = objc_loadWeakRetained(&self->_parser);

  return WeakRetained;
}

@end