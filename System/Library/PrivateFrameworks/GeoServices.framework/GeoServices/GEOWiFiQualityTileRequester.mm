@interface GEOWiFiQualityTileRequester
- (void)cancel;
- (void)dataURLSession:(id)session didCompleteTask:(id)task;
@end

@implementation GEOWiFiQualityTileRequester

- (void)cancel
{
  [(GEODataURLSessionTask *)self->_task cancel];
  task = self->_task;
  self->_task = 0;
}

- (void)dataURLSession:(id)session didCompleteTask:(id)task
{
  taskCopy = task;
  error = [taskCopy error];

  if (error)
  {
    error2 = [taskCopy error];
    v8 = 0;
    v9 = 0;
  }

  else
  {
    v18 = 0;
    v19 = 0;
    v10 = [taskCopy didValidateEntityTagForData:&v19 entityTag:&v18];
    v9 = v19;
    v8 = v18;
    if (v10)
    {
      error2 = 0;
    }

    else
    {
      receivedData = [taskCopy receivedData];

      if (receivedData)
      {
        receivedData2 = [taskCopy receivedData];

        entityTag = [taskCopy entityTag];

        error2 = 0;
        v8 = entityTag;
        v9 = receivedData2;
      }

      else
      {
        error2 = [NSError GEOErrorWithCode:-8 reason:@"unexpected empty data"];
      }
    }
  }

  (*(self->_completion + 2))();
  requestKind = [objc_opt_class() requestKind];
  bundleIdForNetworkAttribution = [self->_auditToken bundleIdForNetworkAttribution];
  error3 = [taskCopy error];
  clientMetrics = [taskCopy clientMetrics];
  [GEONetworkEventDataRecorder recordNetworkEventDataForDataRequestKind:requestKind usedBackgroundURL:&__kCFBooleanFalse requestAppIdentifier:bundleIdForNetworkAttribution appMajorVersion:0 appMinorVersion:0 error:error3 clientMetrics:clientMetrics additionalStates:0];
}

@end