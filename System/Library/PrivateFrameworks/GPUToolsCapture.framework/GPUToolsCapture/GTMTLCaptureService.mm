@interface GTMTLCaptureService
- (GTMTLCaptureService)initWithGuestApp:(GTMTLGuestAppClient *)app;
- (id)query:(id)query;
- (id)startWithDescriptor:(id)descriptor completionHandler:(id)handler;
- (id)update:(id)update;
- (unint64_t)registerObserver:(id)observer;
- (void)deregisterObserver:(unint64_t)observer;
- (void)deregisterObserversForConnection:(id)connection path:(id)path;
- (void)notifyCaptureObjectsChanged:(id)changed;
- (void)notifyCaptureProgress:(id)progress;
- (void)notifyCaptureRequest:(id)request;
- (void)notifyUnsupportedFenum:(id)fenum;
- (void)signalInterposeSemaphore;
- (void)stop;
- (void)waitForInterposeSignal;
@end

@implementation GTMTLCaptureService

- (void)notifyCaptureRequest:(id)request
{
  requestCopy = request;
  serialQueue = self->_serialQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = __44__GTMTLCaptureService_notifyCaptureRequest___block_invoke;
  v7[3] = &unk_2F2550;
  v7[4] = self;
  v8 = requestCopy;
  v6 = requestCopy;
  dispatch_async(serialQueue, v7);
}

void __44__GTMTLCaptureService_notifyCaptureRequest___block_invoke(uint64_t a1)
{
  objc_storeStrong((*(a1 + 32) + 56), *(a1 + 40));
  if ([*(*(a1 + 32) + 32) count])
  {
    v2 = *(*(a1 + 32) + 32);
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = __44__GTMTLCaptureService_notifyCaptureRequest___block_invoke_2;
    v3[3] = &unk_2F1D48;
    v4 = *(a1 + 40);
    [v2 notifyAll:v3];
  }
}

- (void)notifyUnsupportedFenum:(id)fenum
{
  fenumCopy = fenum;
  serialQueue = self->_serialQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = __46__GTMTLCaptureService_notifyUnsupportedFenum___block_invoke;
  v7[3] = &unk_2F2550;
  v7[4] = self;
  v8 = fenumCopy;
  v6 = fenumCopy;
  dispatch_async(serialQueue, v7);
}

void __46__GTMTLCaptureService_notifyUnsupportedFenum___block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 32);
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = __46__GTMTLCaptureService_notifyUnsupportedFenum___block_invoke_2;
  v2[3] = &unk_2F1D48;
  v3 = *(a1 + 40);
  [v1 notifyAll:v2];
}

- (void)notifyCaptureProgress:(id)progress
{
  progressCopy = progress;
  serialQueue = self->_serialQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = __45__GTMTLCaptureService_notifyCaptureProgress___block_invoke;
  v7[3] = &unk_2F2550;
  v7[4] = self;
  v8 = progressCopy;
  v6 = progressCopy;
  dispatch_async(serialQueue, v7);
}

void __45__GTMTLCaptureService_notifyCaptureProgress___block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 32);
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = __45__GTMTLCaptureService_notifyCaptureProgress___block_invoke_2;
  v2[3] = &unk_2F1D48;
  v3 = *(a1 + 40);
  [v1 notifyAll:v2];
}

- (void)notifyCaptureObjectsChanged:(id)changed
{
  changedCopy = changed;
  serialQueue = self->_serialQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = __51__GTMTLCaptureService_notifyCaptureObjectsChanged___block_invoke;
  v7[3] = &unk_2F2550;
  v7[4] = self;
  v8 = changedCopy;
  v6 = changedCopy;
  dispatch_async(serialQueue, v7);
}

void __51__GTMTLCaptureService_notifyCaptureObjectsChanged___block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 32);
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = __51__GTMTLCaptureService_notifyCaptureObjectsChanged___block_invoke_2;
  v2[3] = &unk_2F1D48;
  v3 = *(a1 + 40);
  [v1 notifyAll:v2];
}

- (id)query:(id)query
{
  queryCopy = query;
  v4 = [NSMutableArray alloc];
  requests = [queryCopy requests];
  v6 = [v4 initWithCapacity:{objc_msgSend(requests, "count")}];

  requestID = [queryCopy requestID];
  requests2 = [queryCopy requests];
  v8 = [requests2 count];

  if (v8)
  {
    v9 = 0;
    do
    {
      requests3 = [queryCopy requests];
      v11 = [requests3 objectAtIndexedSubscript:v9];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v12 = g_guestAppClientMTL;
        v13 = v11;
        v14 = GTMTLGuestAppClient_allCaptureObjects(v12);
        v15 = objc_opt_new();
        v38 = 0;
        v16 = [NSKeyedArchiver archivedDataWithRootObject:v14 requiringSecureCoding:1 error:&v38];
        v17 = v38;
        [v15 setData:v16];

        [v15 setError:v17];
        requestID2 = [v13 requestID];

        [v15 setRequestID:requestID2];
        [v6 setObject:v15 atIndexedSubscript:v9];
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v19 = v11;
          v14 = objc_opt_new();
          [v14 setEnablePresentDownload:dword_31F7C8 & 1];
          [v14 setPresentDownloadSize:qword_31F7C0];
          [v14 setEnableLogErrors:(dword_31F7C8 >> 1) & 1];
          [v14 setDisableHashResources:(dword_31F7C8 & 0x20) == 0];
          [v14 setWaitEventTimeout:GT_ENV];
          [v14 setMaxDownloadCommandBuffers:qword_31F7B0];
          v20 = objc_opt_new();
          v37 = 0;
          v21 = [NSKeyedArchiver archivedDataWithRootObject:v14 requiringSecureCoding:1 error:&v37];
          v22 = v37;
          [v20 setData:v21];

          [v20 setError:v22];
          requestID3 = [v19 requestID];

          [v20 setRequestID:requestID3];
          [v6 setObject:v20 atIndexedSubscript:v9];
        }

        else
        {
          v14 = objc_opt_new();
          [v14 setRequestID:{objc_msgSend(v11, "requestID")}];
          v24 = [NSError alloc];
          v39 = NSLocalizedDescriptionKey;
          v40 = @"unknown request";
          v25 = [NSDictionary dictionaryWithObjects:&v40 forKeys:&v39 count:1];
          v26 = [v24 initWithDomain:NSCocoaErrorDomain code:1 userInfo:v25];
          [v14 setError:v26];

          [v6 setObject:v14 atIndexedSubscript:v9];
        }
      }

      ++v9;
      requests4 = [queryCopy requests];
      v28 = [requests4 count];
    }

    while (v28 > v9);
  }

  v29 = objc_opt_new();
  v30 = [v6 copy];
  v36 = 0;
  v31 = [NSKeyedArchiver archivedDataWithRootObject:v30 requiringSecureCoding:1 error:&v36];
  v32 = v36;
  [v29 setData:v31];

  [v29 setError:v32];
  [v29 setRequestID:requestID];
  completionHandler = [queryCopy completionHandler];
  (completionHandler)[2](completionHandler, v29);

  return 0;
}

- (id)update:(id)update
{
  updateCopy = update;
  v4 = dispatch_group_create();
  v5 = [NSMutableArray alloc];
  requests = [updateCopy requests];
  v70 = [v5 initWithCapacity:{objc_msgSend(requests, "count")}];

  requestID = [updateCopy requestID];
  requests2 = [updateCopy requests];
  v8 = [requests2 count];

  v9 = &GSSystemRootDirectory_ptr;
  if (v8)
  {
    v10 = 0;
    v64 = v4;
    v65 = updateCopy;
    while (1)
    {
      dispatch_group_enter(v4);
      requests3 = [updateCopy requests];
      v12 = [requests3 objectAtIndexedSubscript:v10];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        break;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v28 = v12;
        configuration = [v28 configuration];
        enablePresentDownload = [configuration enablePresentDownload];
        dword_31F7C8 = dword_31F7C8 & 0xFFFFFFFE | enablePresentDownload;
        qword_31F7C0 = [configuration presentDownloadSize];
        if ([configuration enableLogErrors])
        {
          v30 = 2;
        }

        else
        {
          v30 = 0;
        }

        dword_31F7C8 = dword_31F7C8 & 0xFFFFFFFD | v30;
        if ([configuration disableHashResources])
        {
          v31 = 0;
        }

        else
        {
          v31 = 32;
        }

        dword_31F7C8 = dword_31F7C8 & 0xFFFFFFDF | v31;
        GT_ENV = [configuration waitEventTimeout];
        qword_31F7B0 = [configuration maxDownloadCommandBuffers];
        v32 = v9[401];
        v18 = objc_opt_new();
        v72 = 0;
        v33 = [NSKeyedArchiver archivedDataWithRootObject:&__kCFBooleanTrue requiringSecureCoding:1 error:&v72];
        v34 = v72;
        [v18 setData:v33];

        [v18 setError:v34];
        requestID2 = [v28 requestID];

        [v18 setRequestID:requestID2];
        [v70 setObject:v18 atIndexedSubscript:v10];
        dispatch_group_leave(v4);

        v9 = &GSSystemRootDirectory_ptr;
LABEL_38:

        goto LABEL_39;
      }

      v36 = v9[401];
      configuration = objc_opt_new();
      [configuration setRequestID:{objc_msgSend(v12, "requestID")}];
      v37 = [NSError alloc];
      v92 = NSLocalizedDescriptionKey;
      v93 = @"unknown request";
      v38 = [NSDictionary dictionaryWithObjects:&v93 forKeys:&v92 count:1];
      v39 = [v37 initWithDomain:NSCocoaErrorDomain code:1 userInfo:v38];
      [configuration setError:v39];

      [v70 setObject:configuration atIndexedSubscript:v10];
      dispatch_group_leave(v4);
LABEL_39:

      ++v10;
      requests4 = [updateCopy requests];
      v55 = [requests4 count];

      if (v55 <= v10)
      {
        goto LABEL_40;
      }
    }

    configuration = v12;
    requestID3 = [configuration requestID];
    streamRef = [configuration streamRef];
    enable = [configuration enable];
    Stream = GTTraceContext_getStream(g_ctx, streamRef);
    if (Stream)
    {
      v69 = requestID3;
      v18 = *(Stream + 16);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v66 = enable;
        v67 = v18;
        v19 = v18;
        v88 = 0u;
        v89 = 0u;
        v90 = 0u;
        v91 = 0u;
        v68 = v19;
        superlayer = [v19 superlayer];
        sublayers = [superlayer sublayers];

        v22 = [sublayers countByEnumeratingWithState:&v88 objects:v96 count:16];
        if (v22)
        {
          v23 = *v89;
          while (2)
          {
            for (i = 0; i != v22; i = i + 1)
            {
              if (*v89 != v23)
              {
                objc_enumerationMutation(sublayers);
              }

              v25 = *(*(&v88 + 1) + 8 * i);
              name = [v25 name];
              v27 = [name isEqualToString:@"gputools.overlay"];

              if (v27)
              {
                v22 = v25;
                goto LABEL_27;
              }
            }

            v22 = [sublayers countByEnumeratingWithState:&v88 objects:v96 count:16];
            if (v22)
            {
              continue;
            }

            break;
          }

LABEL_27:
          v4 = v64;
          updateCopy = v65;
          v9 = &GSSystemRootDirectory_ptr;
        }

        v47 = v68;
        if (v22 || ((v66 ^ 1) & 1) != 0)
        {
          v50 = v66;
          if (!v22)
          {
            v50 = 1;
          }

          if (v50)
          {
            v51 = v9[401];
            v49 = objc_opt_new();
            v74 = 0;
            v52 = [NSKeyedArchiver archivedDataWithRootObject:&__kCFBooleanFalse requiringSecureCoding:1 error:&v74];
            v53 = v74;
            [v49 setData:v52];

            v47 = v68;
            [v49 setError:v53];
            [v49 setRequestID:v69];
            [v70 setObject:v49 atIndexedSubscript:v10];
            dispatch_group_leave(v4);

            v9 = &GSSystemRootDirectory_ptr;
          }

          else
          {
            v75[0] = _NSConcreteStackBlock;
            v75[1] = 3221225472;
            v75[2] = __30__GTMTLCaptureService_update___block_invoke_2;
            v75[3] = &unk_2F1D20;
            v22 = v22;
            v76 = v22;
            v79 = v69;
            v77 = v70;
            v80 = v10;
            v78 = v4;
            dispatch_async(&_dispatch_main_q, v75);

            v49 = v76;
          }
        }

        else
        {
          v48 = +[CALayer layer];
          block[0] = _NSConcreteStackBlock;
          block[1] = 3221225472;
          block[2] = __30__GTMTLCaptureService_update___block_invoke;
          block[3] = &unk_2F1CF8;
          v22 = v48;
          v82 = v22;
          v83 = v68;
          v86 = v69;
          v84 = v70;
          v87 = v10;
          v85 = v4;
          dispatch_async(&_dispatch_main_q, block);

          v49 = v82;
        }

        v18 = v67;
      }

      else
      {
        v45 = v9[401];
        v22 = objc_opt_new();
        v73 = 0;
        v46 = [NSKeyedArchiver archivedDataWithRootObject:&__kCFBooleanFalse requiringSecureCoding:1 error:&v73];
        v47 = v73;
        [v22 setData:v46];

        [v22 setError:v47];
        [v22 setRequestID:v69];
        [v70 setObject:v22 atIndexedSubscript:v10];
        dispatch_group_leave(v4);
      }
    }

    else
    {
      v40 = v9[401];
      v41 = objc_opt_new();
      [v41 setData:0];
      v42 = [NSError alloc];
      v94 = NSLocalizedDescriptionKey;
      v95 = @"unknown streamRef";
      v43 = [NSDictionary dictionaryWithObjects:&v95 forKeys:&v94 count:1];
      v44 = [v42 initWithDomain:NSCocoaErrorDomain code:1 userInfo:v43];
      [v41 setError:v44];

      v18 = v41;
      [v41 setRequestID:requestID3];
      [v70 setObject:v41 atIndexedSubscript:v10];
      dispatch_group_leave(v4);
    }

    goto LABEL_38;
  }

LABEL_40:
  dispatch_group_wait(v4, 0xFFFFFFFFFFFFFFFFLL);
  v56 = v9[401];
  v57 = objc_opt_new();
  v58 = [v70 copy];
  v71 = 0;
  v59 = [NSKeyedArchiver archivedDataWithRootObject:v58 requiringSecureCoding:1 error:&v71];
  v60 = v71;
  [v57 setData:v59];

  [v57 setError:v60];
  [v57 setRequestID:requestID];
  completionHandler = [updateCopy completionHandler];
  (completionHandler)[2](completionHandler, v57);

  return 0;
}

void __30__GTMTLCaptureService_update___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setName:@"gputools.overlay"];
  [*(a1 + 40) bounds];
  [*(a1 + 32) setBounds:?];
  [*(a1 + 40) frame];
  [*(a1 + 32) setFrame:?];
  *components = xmmword_29BA50;
  v17 = unk_29BA60;
  v2 = CFPreferencesCopyValue(@"AppleHighlightColor", kCFPreferencesAnyApplication, kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
  if (v2)
  {
    v3 = v2;
    ArrayBySeparatingStrings = CFStringCreateArrayBySeparatingStrings(0, v2, @" ");
    if (ArrayBySeparatingStrings)
    {
      v5 = ArrayBySeparatingStrings;
      ValueAtIndex = CFArrayGetValueAtIndex(ArrayBySeparatingStrings, 0);
      components[0] = CFStringGetDoubleValue(ValueAtIndex);
      v7 = CFArrayGetValueAtIndex(v5, 1);
      components[1] = CFStringGetDoubleValue(v7);
      v8 = CFArrayGetValueAtIndex(v5, 2);
      *&v17 = CFStringGetDoubleValue(v8);
      CFRelease(v5);
    }

    CFRelease(v3);
  }

  DeviceRGB = CGColorSpaceCreateDeviceRGB();
  [*(a1 + 32) setBackgroundColor:{CGColorCreate(DeviceRGB, components)}];
  LODWORD(v10) = 0.5;
  [*(a1 + 32) setOpacity:v10];
  v11 = [*(a1 + 40) superlayer];
  [v11 insertSublayer:*(a1 + 32) above:*(a1 + 40)];

  v12 = objc_opt_new();
  v15 = 0;
  v13 = [NSKeyedArchiver archivedDataWithRootObject:&__kCFBooleanTrue requiringSecureCoding:1 error:&v15];
  v14 = v15;
  [v12 setData:v13];

  [v12 setError:v14];
  [v12 setRequestID:*(a1 + 64)];
  [*(a1 + 48) setObject:v12 atIndexedSubscript:*(a1 + 72)];
  dispatch_group_leave(*(a1 + 56));
}

void __30__GTMTLCaptureService_update___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) removeFromSuperlayer];
  v2 = objc_opt_new();
  v5 = 0;
  v3 = [NSKeyedArchiver archivedDataWithRootObject:&__kCFBooleanTrue requiringSecureCoding:1 error:&v5];
  v4 = v5;
  [v2 setData:v3];

  [v2 setRequestID:*(a1 + 56)];
  [*(a1 + 40) setObject:v2 atIndexedSubscript:*(a1 + 64)];
  dispatch_group_leave(*(a1 + 48));
}

- (id)startWithDescriptor:(id)descriptor completionHandler:(id)handler
{
  descriptorCopy = descriptor;
  handlerCopy = handler;
  v8 = objc_opt_new();
  streamRef = [descriptorCopy streamRef];
  Stream = GTTraceContext_getStream(g_ctx, streamRef);
  if (Stream)
  {
    v11 = *(Stream + 16);
  }

  else
  {
    v11 = 0;
  }

  [v8 setCaptureObject:v11];

  [v8 setDestination:2];
  [v8 setSessionID:{objc_msgSend(descriptorCopy, "sessionID")}];
  captureObject = [v8 captureObject];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v13 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = 6;
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v13 = 4;
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v13 = 3;
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v13 = 3;
          }

          else
          {
            v13 = 5;
          }
        }
      }
    }
  }

  [v8 setCaptureMode:v13];
  if (self->_interposeSemaphore)
  {
    triggerHitsToStart = 0;
  }

  else
  {
    triggerHitsToStart = [descriptorCopy triggerHitsToStart];
  }

  [v8 setTriggerHitsToStart:triggerHitsToStart];
  [v8 setTriggerHitsToEnd:{objc_msgSend(descriptorCopy, "triggerHitsToEnd")}];
  [v8 setSuspendAfterCapture:{objc_msgSend(descriptorCopy, "suspendAfterCapture")}];
  [v8 setIgnoreUnusedResources:{objc_msgSend(descriptorCopy, "ignoreUnusedResources")}];
  [v8 setIncludeBacktrace:{objc_msgSend(descriptorCopy, "includeBacktrace")}];
  [v8 setApiTriggeredCapture:1];
  [v8 setToolTriggeredCapture:1];
  outputURL = [descriptorCopy outputURL];
  if (outputURL)
  {
    v16 = outputURL;
    [v8 setOutputURL:outputURL];
  }

  else
  {
    v17 = +[NSFileManager defaultManager];
    temporaryDirectory = [v17 temporaryDirectory];

    v19 = +[NSProcessInfo processInfo];
    globallyUniqueString = [v19 globallyUniqueString];
    v21 = [globallyUniqueString stringByAppendingString:@".gputrace"];

    v16 = [[NSURL alloc] initFileURLWithPath:v21 isDirectory:1 relativeToURL:temporaryDirectory];
    [v8 setOutputURL:v16];
  }

  v22 = self->_timer;
  v34[0] = _NSConcreteStackBlock;
  v34[1] = 3221225472;
  v34[2] = __61__GTMTLCaptureService_startWithDescriptor_completionHandler___block_invoke;
  v34[3] = &unk_2F1CD0;
  v23 = v22;
  v35 = v23;
  v24 = v16;
  v36 = v24;
  v25 = handlerCopy;
  v37 = v25;
  [v8 setCompletionHandler:v34];
  if (([descriptorCopy isToolsCapture] & 1) != 0 || !objc_msgSend(descriptorCopy, "sessionID"))
  {
    v26 = +[CaptureMTLCaptureManager toolsCaptureManager];
  }

  else
  {
    v26 = +[CaptureMTLCaptureManager sharedCaptureManager];
  }

  v27 = v26;
  captureRequest = self->_captureRequest;
  self->_captureRequest = 0;

  v33 = 0;
  v29 = [v27 startCaptureWithDescriptor:v8 error:&v33];
  v30 = v33;
  if (v29)
  {
    dispatch_resume(self->_timer);
  }

  else
  {
    v31 = objc_opt_new();
    [v31 setError:v30];
    (*(v25 + 2))(v25, v31);
  }

  return 0;
}

void __61__GTMTLCaptureService_startWithDescriptor_completionHandler___block_invoke(uint64_t a1)
{
  dispatch_suspend(*(a1 + 32));
  v2 = objc_opt_new();
  [v2 setArchiveURL:*(a1 + 40)];
  (*(*(a1 + 48) + 16))();
}

- (void)deregisterObserver:(unint64_t)observer
{
  serialQueue = self->_serialQueue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = __42__GTMTLCaptureService_deregisterObserver___block_invoke;
  v4[3] = &unk_2F1CA8;
  v4[4] = self;
  v4[5] = observer;
  dispatch_async(serialQueue, v4);
}

- (void)deregisterObserversForConnection:(id)connection path:(id)path
{
  connectionCopy = connection;
  pathCopy = path;
  serialQueue = self->_serialQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __61__GTMTLCaptureService_deregisterObserversForConnection_path___block_invoke;
  block[3] = &unk_2F1C80;
  block[4] = self;
  v12 = connectionCopy;
  v13 = pathCopy;
  v9 = pathCopy;
  v10 = connectionCopy;
  dispatch_async(serialQueue, block);
}

- (unint64_t)registerObserver:(id)observer
{
  observerCopy = observer;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  serialQueue = self->_serialQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __40__GTMTLCaptureService_registerObserver___block_invoke;
  block[3] = &unk_2F1C58;
  v10 = observerCopy;
  v11 = &v12;
  block[4] = self;
  v6 = observerCopy;
  dispatch_sync(serialQueue, block);
  v7 = v13[3];

  _Block_object_dispose(&v12, 8);
  return v7;
}

void *__40__GTMTLCaptureService_registerObserver___block_invoke(void *a1)
{
  *(*(a1[6] + 8) + 24) = [*(a1[4] + 32) registerObserver:a1[5]];
  result = a1[4];
  if (result[7])
  {

    return [result notifyCaptureRequest:?];
  }

  return result;
}

- (void)stop
{
  v2 = +[CaptureMTLCaptureManager toolsCaptureManager];
  [v2 stopCapture];
}

- (void)waitForInterposeSignal
{
  interposeSemaphore = self->_interposeSemaphore;
  if (interposeSemaphore)
  {
    dispatch_semaphore_wait(interposeSemaphore, 0xFFFFFFFFFFFFFFFFLL);
    interposeSemaphore = self->_interposeSemaphore;
  }

  self->_interposeSemaphore = 0;
}

- (void)signalInterposeSemaphore
{
  interposeSemaphore = self->_interposeSemaphore;
  if (interposeSemaphore)
  {
    dispatch_semaphore_signal(interposeSemaphore);
  }
}

- (GTMTLCaptureService)initWithGuestApp:(GTMTLGuestAppClient *)app
{
  v18.receiver = self;
  v18.super_class = GTMTLCaptureService;
  v3 = [(GTMTLCaptureService *)&v18 init];
  if (v3)
  {
    if (s_logUsingOsLog == 1)
    {
      v4 = gt_tagged_log(16);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_debug_impl(&dword_0, v4, OS_LOG_TYPE_DEBUG, "Create Capture Service", buf, 2u);
      }
    }

    else
    {
      v5 = __stdoutp;
      v4 = [NSString stringWithFormat:@"Create Capture Service"];
      fprintf(v5, "%s\n", [v4 UTF8String]);
    }

    if ((dword_31F7C8 & 0x40) != 0)
    {
      v6 = dispatch_semaphore_create(0);
      v7 = *(v3 + 3);
      *(v3 + 3) = v6;
    }

    v8 = dispatch_queue_create("com.app.gputools.capture", 0);
    v9 = *(v3 + 5);
    *(v3 + 5) = v8;

    v10 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, *(v3 + 5));
    v11 = *(v3 + 6);
    *(v3 + 6) = v10;

    dispatch_source_set_event_handler(*(v3 + 6), &__block_literal_global_4241);
    dispatch_source_set_timer(*(v3 + 6), 0, 0x2FAF080uLL, 0);
    v12 = objc_opt_new();
    v13 = *(v3 + 4);
    *(v3 + 4) = v12;

    v14 = dispatch_queue_create("com.apple.gputools.capture-observers", 0);
    v15 = *(v3 + 8);
    *(v3 + 8) = v14;
  }

  return v3;
}

void __40__GTMTLCaptureService_initWithGuestApp___block_invoke(id a1)
{
  if ((*(boundaryTrackerInstance + 20) & 0xFFFFFFFE) == 2)
  {
    v20 = v1;
    v2 = atomic_load(&g_frameCount);
    v3 = atomic_load(&g_frameOther);
    v4 = atomic_load(&g_commitCount);
    v5 = atomic_load(&g_commitOther);
    v6 = atomic_load(&g_resourceCount);
    v7 = atomic_load(&g_resourceDownloaded);
    v8 = atomic_load(&g_GPUDataSize);
    v9 = atomic_load(&g_GPUDataDownloaded);
    v19 = objc_opt_new();
    [v19 setCaptureState:1];
    v10 = objc_opt_new();
    [v19 setStats:v10];

    v11 = [v19 stats];
    [v11 setFrameCount:v2];

    v12 = [v19 stats];
    [v12 setFrameOther:v3];

    v13 = [v19 stats];
    [v13 setCommitCount:v4];

    v14 = [v19 stats];
    [v14 setCommitOther:v5];

    v15 = [v19 stats];
    [v15 setResourceCount:v6];

    v16 = [v19 stats];
    [v16 setResourceDownloaded:v7];

    v17 = [v19 stats];
    [v17 setGPUDataSize:v8];

    v18 = [v19 stats];
    [v18 setGPUDataDownloaded:v9];

    [*g_guestAppClientMTL notifyCaptureProgress:v19];
  }
}

@end