@interface GEOWiFiQualityTileRequester
- (void)cancel;
- (void)dataURLSession:(id)a3 didCompleteTask:(id)a4;
@end

@implementation GEOWiFiQualityTileRequester

- (void)cancel
{
  [(GEODataURLSessionTask *)self->_task cancel];
  task = self->_task;
  self->_task = 0;
}

- (void)dataURLSession:(id)a3 didCompleteTask:(id)a4
{
  v5 = a4;
  v6 = [v5 error];

  if (v6)
  {
    v7 = [v5 error];
    v8 = 0;
    v9 = 0;
  }

  else
  {
    v18 = 0;
    v19 = 0;
    v10 = [v5 didValidateEntityTagForData:&v19 entityTag:&v18];
    v9 = v19;
    v8 = v18;
    if (v10)
    {
      v7 = 0;
    }

    else
    {
      v11 = [v5 receivedData];

      if (v11)
      {
        v12 = [v5 receivedData];

        v13 = [v5 entityTag];

        v7 = 0;
        v8 = v13;
        v9 = v12;
      }

      else
      {
        v7 = [NSError GEOErrorWithCode:-8 reason:@"unexpected empty data"];
      }
    }
  }

  (*(self->_completion + 2))();
  v14 = [objc_opt_class() requestKind];
  v15 = [self->_auditToken bundleIdForNetworkAttribution];
  v16 = [v5 error];
  v17 = [v5 clientMetrics];
  [GEONetworkEventDataRecorder recordNetworkEventDataForDataRequestKind:v14 usedBackgroundURL:&__kCFBooleanFalse requestAppIdentifier:v15 appMajorVersion:0 appMinorVersion:0 error:v16 clientMetrics:v17 additionalStates:0];
}

@end