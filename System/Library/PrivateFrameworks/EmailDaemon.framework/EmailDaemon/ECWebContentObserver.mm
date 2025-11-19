@interface ECWebContentObserver
- (ECWebContentObserver)initWithParser:(id)a3;
- (EDWebContentParser)parser;
- (void)baseURL:(id)a3 didRequestRemoteContentURLs:(id)a4;
- (void)logWebBundleMessage:(id)a3;
- (void)receiveDataDetectionResults:(id)a3;
- (void)requestDataDetectionResultsWithBaseURL:(id)a3;
@end

@implementation ECWebContentObserver

- (ECWebContentObserver)initWithParser:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = ECWebContentObserver;
  v5 = [(ECWebContentObserver *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_parser, v4);
  }

  return v6;
}

- (void)baseURL:(id)a3 didRequestRemoteContentURLs:(id)a4
{
  v8 = a3;
  v6 = a4;
  v7 = [(ECWebContentObserver *)self parser];
  [v7 baseURL:v8 didRequestRemoteContentURLs:v6];
}

- (void)requestDataDetectionResultsWithBaseURL:(id)a3
{
  v5 = a3;
  v4 = [(ECWebContentObserver *)self parser];
  [v4 requestDataDetectionResultsWithBaseURL:v5];
}

- (void)receiveDataDetectionResults:(id)a3
{
  v5 = a3;
  v4 = [(ECWebContentObserver *)self parser];
  [v4 receiveDataDetectionResults:v5];
}

- (void)logWebBundleMessage:(id)a3
{
  v5 = a3;
  v4 = [(ECWebContentObserver *)self parser];
  [v4 logWebBundleMessage:v5];
}

- (EDWebContentParser)parser
{
  WeakRetained = objc_loadWeakRetained(&self->_parser);

  return WeakRetained;
}

@end