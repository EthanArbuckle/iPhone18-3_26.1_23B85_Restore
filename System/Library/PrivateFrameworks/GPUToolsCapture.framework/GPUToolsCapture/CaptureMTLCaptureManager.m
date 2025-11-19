@interface CaptureMTLCaptureManager
+ (id)toolsCaptureManager;
- (BOOL)startCaptureWithDescriptor:(id)a3 error:(id *)a4;
- (BOOL)supportsDestination:(int64_t)a3;
- (CaptureMTLCaptureManager)initWithCaptureContext:(GTTraceContext *)a3 andIsToolsManager:(BOOL)a4;
- (id)newCaptureScopeWithCommandQueue:(id)a3;
- (id)newCaptureScopeWithDevice:(id)a3;
- (void)dealloc;
- (void)setDefaultCaptureScope:(id)a3;
- (void)startCaptureWithCommandQueue:(id)a3;
- (void)startCaptureWithDevice:(id)a3;
- (void)startCaptureWithScope:(id)a3;
- (void)stopCapture;
@end

@implementation CaptureMTLCaptureManager

- (void)setDefaultCaptureScope:(id)a3
{
  v3.receiver = self;
  v3.super_class = CaptureMTLCaptureManager;
  [(CaptureMTLCaptureManager *)&v3 setDefaultCaptureScope:a3];
  +[GTMTLCaptureScopeInfo updateAll];
}

- (id)newCaptureScopeWithCommandQueue:(id)a3
{
  v27 = 0u;
  v28 = 0u;
  v26 = 0u;
  traceContext = self->_traceContext;
  v5 = a3;
  v26 = traceContext;
  *&v27 = 0;
  *(&v27 + 1) = atomic_fetch_add(&traceContext->var3, 1uLL);
  s();
  v7 = v6;
  v8 = *v6;
  *v6 = v9;
  *&v28 = v8;
  BYTE8(v28) = *(v6 + 8);
  *(&v28 + 9) = 16400;
  *(&v28 + 11) = 0;
  HIBYTE(v28) = 0;
  v10 = [CaptureMTLCaptureScope alloc];
  v11 = [v5 device];
  v12 = [(CaptureMTLCaptureScope *)v10 initWithDevice:v11 commandQueue:v5 captureContext:self->_traceContext];

  GTTraceEncoder_setStream(&v26, [(CaptureMTLCaptureScope *)v12 traceStream]);
  v13 = v27;
  *(v27 + 8) = -15733;
  v14 = BYTE9(v28);
  if (BYTE9(v28) > 0x28uLL)
  {
    v16 = *(*(&v26 + 1) + 24);
    v17 = BYTE10(v28);
    ++BYTE10(v28);
    v15 = GTTraceMemPool_allocateBytes(v16, *(&v27 + 1), v17 | 0x1800000000) + 16;
    v14 = v17;
  }

  else
  {
    v15 = (v13 + BYTE9(v28));
    BYTE9(v28) += 24;
  }

  *(v13 + 13) = v14;
  v18 = [(CaptureMTLCaptureManager *)self traceStream];
  if (v18)
  {
    var0 = v18->var0;
  }

  else
  {
    var0 = 0;
  }

  v20 = [(CaptureMTLCaptureScope *)v12 traceStream];
  if (v20)
  {
    v21 = v20->var0;
  }

  else
  {
    v21 = 0;
  }

  v22 = [v5 traceStream];

  if (v22)
  {
    v23 = *v22;
  }

  else
  {
    v23 = 0;
  }

  *v15 = var0;
  *(v15 + 1) = v21;
  *(v15 + 2) = v23;
  v24 = v27;
  *v7 = v28;
  *(v7 + 8) = BYTE8(v28);
  *(v24 + 15) |= 8u;
  return v12;
}

- (id)newCaptureScopeWithDevice:(id)a3
{
  v25 = 0u;
  v26 = 0u;
  v24 = 0u;
  traceContext = self->_traceContext;
  v5 = a3;
  v24 = traceContext;
  *&v25 = 0;
  *(&v25 + 1) = atomic_fetch_add(&traceContext->var3, 1uLL);
  s();
  v7 = v6;
  v8 = *v6;
  *v6 = v9;
  *&v26 = v8;
  BYTE8(v26) = *(v6 + 8);
  *(&v26 + 9) = 16400;
  *(&v26 + 11) = 0;
  HIBYTE(v26) = 0;
  v10 = [[CaptureMTLCaptureScope alloc] initWithDevice:v5 commandQueue:0 captureContext:self->_traceContext];
  GTTraceEncoder_setStream(&v24, [(CaptureMTLCaptureScope *)v10 traceStream]);
  v11 = v25;
  *(v25 + 8) = -15734;
  v12 = BYTE9(v26);
  if (BYTE9(v26) > 0x28uLL)
  {
    v14 = *(*(&v24 + 1) + 24);
    v15 = BYTE10(v26);
    ++BYTE10(v26);
    v13 = GTTraceMemPool_allocateBytes(v14, *(&v25 + 1), v15 | 0x1800000000) + 16;
    v12 = v15;
  }

  else
  {
    v13 = (v11 + BYTE9(v26));
    BYTE9(v26) += 24;
  }

  *(v11 + 13) = v12;
  v16 = [(CaptureMTLCaptureManager *)self traceStream];
  if (v16)
  {
    var0 = v16->var0;
  }

  else
  {
    var0 = 0;
  }

  v18 = [(CaptureMTLCaptureScope *)v10 traceStream];
  if (v18)
  {
    v19 = v18->var0;
  }

  else
  {
    v19 = 0;
  }

  v20 = [v5 traceStream];

  if (v20)
  {
    v21 = *v20;
  }

  else
  {
    v21 = 0;
  }

  *v13 = var0;
  *(v13 + 1) = v19;
  *(v13 + 2) = v21;
  v22 = v25;
  *v7 = v26;
  *(v7 + 8) = BYTE8(v26);
  *(v22 + 15) |= 8u;
  return v10;
}

- (void)stopCapture
{
  v24 = 0u;
  v25 = 0u;
  v23 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v23);
  v4 = v24;
  *(v24 + 8) = -16067;
  v5 = BYTE9(v25);
  if (BYTE9(v25) > 0x38uLL)
  {
    v7 = *(*(&v23 + 1) + 24);
    v8 = BYTE10(v25);
    ++BYTE10(v25);
    v6 = GTTraceMemPool_allocateBytes(v7, *(&v24 + 1), v8 | 0x800000000) + 16;
    v5 = v8;
  }

  else
  {
    v6 = (v4 + BYTE9(v25));
    BYTE9(v25) += 8;
  }

  *(v4 + 13) = v5;
  v9 = [(CaptureMTLCaptureManager *)self traceStream];
  if (v9)
  {
    var0 = v9->var0;
  }

  else
  {
    var0 = 0;
  }

  *v6 = var0;
  s();
  *v11 = v12;
  *(v11 + 8) = BYTE8(v25);
  *(v24 + 15) |= 8u;
  isToolManager = self->_isToolManager;
  v14 = [(CaptureMTLCaptureManager *)self traceStream];
  if (v14)
  {
    v15 = v14->var0;
  }

  else
  {
    v15 = 0;
  }

  if (isToolManager)
  {
    v16 = 4;
  }

  else
  {
    v16 = 5;
  }

  *&v17 = v16 | 0x800000000;
  *(&v17 + 1) = v15;
  v18 = *(&v24 + 1);
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  GTCaptureBoundaryTracker_handleTrigger(&v17);
}

- (void)startCaptureWithScope:(id)a3
{
  v4 = a3;
  v5 = objc_opt_new();
  [v5 setApiTriggeredCapture:1];
  [v5 setSuspendAfterCapture:1];
  [v5 setCaptureMode:4];
  [v5 setTriggerHitsToStart:1];
  [v5 setTriggerHitsToEnd:1];
  [v5 setDestination:1];
  [v5 setCaptureObject:v4];

  [(CaptureMTLCaptureManager *)self startCaptureWithDescriptor:v5 error:0];
}

- (void)startCaptureWithCommandQueue:(id)a3
{
  v4 = a3;
  v5 = objc_opt_new();
  [v5 setApiTriggeredCapture:1];
  [v5 setSuspendAfterCapture:1];
  [v5 setCaptureMode:2];
  [v5 setDestination:1];
  [v5 setCaptureObject:v4];

  [(CaptureMTLCaptureManager *)self startCaptureWithDescriptor:v5 error:0];
}

- (void)startCaptureWithDevice:(id)a3
{
  v4 = a3;
  v5 = objc_opt_new();
  [v5 setApiTriggeredCapture:1];
  [v5 setSuspendAfterCapture:1];
  [v5 setCaptureMode:0];
  [v5 setDestination:1];
  [v5 setCaptureObject:v4];

  [(CaptureMTLCaptureManager *)self startCaptureWithDescriptor:v5 error:0];
}

- (BOOL)startCaptureWithDescriptor:(id)a3 error:(id *)a4
{
  v6 = a3;
  if (!*(boundaryTrackerInstance + 20))
  {
    os_unfair_lock_lock((g_guestAppClientMTL + 24));
    v8 = *(g_guestAppClientMTL + 64);
    os_unfair_lock_unlock((g_guestAppClientMTL + 24));
    if (v8)
    {
      v9 = GTMTLGuestAppClient_getUnsupportedFenumInfo();
      v10 = [v9 asError];
      v11 = [v10 userInfo];
      ReportError(a4, MTLCaptureErrorDomain, 1, v11);

      goto LABEL_5;
    }

    v130 = 0;
    v128 = 0u;
    v129 = 0u;
    v126 = 0u;
    v127 = 0u;
    v125 = 0u;
    isToolManager = self->_isToolManager;
    v15 = v6;
    v117 = [v15 captureObject];
    if ((objc_opt_respondsToSelector() & 1) == 0 || (v16 = [v15 captureMode], v17 = v16, v16 == &dword_4 + 3))
    {
      v18 = v117;
      v19 = v18;
      if (v18)
      {
        if ([v18 conformsToProtocol:&OBJC_PROTOCOL___MTLDevice])
        {
          v17 = 0;
LABEL_20:

LABEL_21:
          v111 = 0;
          v23 = 0;
          goto LABEL_22;
        }

        if ([v19 conformsToProtocol:&OBJC_PROTOCOL___MTLCommandQueue] & 1) != 0 || (objc_msgSend(v19, "conformsToProtocol:", &OBJC_PROTOCOL___MTL4CommandQueue))
        {
          v17 = 2;
          goto LABEL_20;
        }

        if ([v19 conformsToProtocol:&OBJC_PROTOCOL___MTLCaptureScope])
        {

          if (objc_opt_respondsToSelector())
          {
            v33 = [v15 triggerHitsToStart];
          }

          else
          {
            v33 = &dword_0 + 1;
          }

          v23 = v33;
          *(&v127 + 1) = v33;
          if ((objc_opt_respondsToSelector() & 1) == 0)
          {
            v111 = &dword_0 + 1;
            *&v128 = 1;
            v17 = 4;
            goto LABEL_22;
          }

          v111 = [v15 triggerHitsToEnd];
          v17 = 4;
LABEL_90:
          *&v128 = v111;
          if (!v111)
          {
            v152 = NSLocalizedDescriptionKey;
            v153 = NSLocalizedRecoverySuggestionErrorKey;
            v155 = @"The value of triggerHitsToEnd cannot be 0.";
            v156 = @"Set triggerHitsToEnd to the amount of times the end condition needs to be met to end the capture.";
            v52 = [NSDictionary dictionaryWithObjects:&v155 forKeys:&v152 count:2];
            ReportError(a4, MTLCaptureErrorDomain, 3, v52);

            goto LABEL_141;
          }

LABEL_22:
          v110 = v23;
          if (v17 <= 3)
          {
            if (v17 < 2)
            {
              v115 = v117;
              v31 = [v115 traceStream];
              if (v31)
              {
                v32 = *v31;
              }

              else
              {
                v32 = 0;
              }

              v113 = 0;
              v114 = 0;
              v116 = 0;
              v28 = 0;
              v109 = v32;
              goto LABEL_64;
            }

            if ((v17 - 2) < 2)
            {
              v24 = [v117 conformsToProtocol:&OBJC_PROTOCOL___MTL4CommandQueue];
              v25 = v117;
              v115 = [v25 device];
              v26 = [v25 traceStream];
              if (v26)
              {
                v27 = *v26;
              }

              else
              {
                v27 = 0;
              }

              if (v24)
              {
                v37 = 0;
              }

              else
              {
                v37 = v25;
              }

              if (v24)
              {
                v38 = v25;
              }

              else
              {
                v38 = 0;
              }

              v113 = v38;
              v114 = v37;
              v109 = v27;
              *(&v125 + 1) = v27;
              v39 = [v115 traceStream];
              if (v39)
              {
                v32 = *v39;
              }

              else
              {
                v32 = 0;
              }

              v116 = 0;
              v28 = 0;
LABEL_64:
              *&v125 = v32;
              goto LABEL_99;
            }

            goto LABEL_48;
          }

          switch(v17)
          {
            case 4:
              v116 = v117;
              v115 = [v116 device];
              v114 = [v116 commandQueue];
              v34 = [v116 traceStream];
              if (v34)
              {
                v35 = *v34;
              }

              else
              {
                v35 = 0;
              }

              *&v126 = v35;
              v46 = [v115 traceStream];
              if (v46)
              {
                v47 = *v46;
              }

              else
              {
                v47 = 0;
              }

              *&v125 = v47;
              if (v114)
              {
                v48 = [v114 traceStream];
                if (v48)
                {
                  v49 = *v48;
                }

                else
                {
                  v49 = 0;
                }

                *(&v125 + 1) = v49;
              }

              v50 = [v116 traceStream];
              if (!v50)
              {
                v109 = 0;
                v113 = 0;
                goto LABEL_50;
              }

              v113 = 0;
              v28 = 0;
              break;
            case 5:
LABEL_49:
              v109 = 0;
              v114 = 0;
              v115 = 0;
              v113 = 0;
              v116 = 0;
LABEL_50:
              v28 = 0;
              goto LABEL_99;
            case 6:
              v28 = v117;
              v115 = [v28 device];
              if (objc_opt_respondsToSelector())
              {
                v29 = [v28 streamReference];
              }

              else
              {
                v29 = 0;
              }

              *(&v126 + 1) = v29;
              v42 = [v28 device];
              v43 = [v42 traceStream];
              if (v43)
              {
                v44 = *v43;
              }

              else
              {
                v44 = 0;
              }

              *&v125 = v44;

              v50 = [v28 traceStream];
              if (!v50)
              {
                v109 = 0;
                v113 = 0;
                v114 = 0;
                v116 = 0;
                goto LABEL_99;
              }

              v113 = 0;
              v114 = 0;
              v116 = 0;
              break;
            default:
LABEL_48:
              v150 = NSLocalizedDescriptionKey;
              v151 = @"Internal error: unrecognized capture mode.";
              v36 = [NSDictionary dictionaryWithObjects:&v151 forKeys:&v150 count:1];
              ReportError(a4, MTLCaptureErrorDomain, 3, v36);

              goto LABEL_49;
          }

          v109 = *v50;
LABEL_99:
          BYTE8(v129) = v17;
          if (objc_opt_respondsToSelector())
          {
            v53 = [v15 sessionID];
          }

          else
          {
            v53 = 0;
          }

          *&v127 = v53;
          if (objc_opt_respondsToSelector())
          {
            v54 = [v15 apiTriggeredCapture];
          }

          else
          {
            v54 = 1;
          }

          BYTE11(v129) = v54;
          BYTE12(v129) = isToolManager;
          if (objc_opt_respondsToSelector())
          {
            v55 = [v15 includeBacktrace];
          }

          else
          {
            v55 = 1;
          }

          BYTE14(v129) = v55;
          if (objc_opt_respondsToSelector())
          {
            v56 = [v15 ignoreUnusedResources];
          }

          else
          {
            v56 = 0;
          }

          v108 = v56;
          BYTE13(v129) = v56;
          v107 = v53;
          if ((objc_opt_respondsToSelector() & 1) == 0 || ([v15 completionHandler], v57 = objc_claimAutoreleasedReturnValue(), v58 = v57 == 0, v57, v58))
          {
            v59 = &v131;
            *&v131 = _NSConcreteStackBlock;
            *(&v131 + 1) = 3221225472;
            *&v132 = __FillGTMTLCaptureDescriptor_block_invoke_2;
            *(&v132 + 1) = &unk_2F2680;
            *&v133 = v115;
            *(&v133 + 1) = v114;
            v134 = v113;
            v135[0] = v116;
            v135[1] = v28;
            v67 = v28;
            v68 = v116;
            v112 = objc_retainBlock(&v131);
            v66 = 0;
            v62 = &v133;
            v63 = &v133 + 1;
            v64 = &v134;
            v65 = v135;
            v130 = v112;
          }

          else
          {
            v59 = &v118;
            *&v118 = _NSConcreteStackBlock;
            *(&v118 + 1) = 3221225472;
            v119 = __FillGTMTLCaptureDescriptor_block_invoke;
            *&v120 = &unk_2F2658;
            *(&v120 + 1) = v115;
            *&v121 = v114;
            *(&v121 + 1) = v113;
            *&v122 = v116;
            *(&v122 + 1) = v28;
            v123 = v15;
            v60 = v28;
            v61 = v116;
            v130 = objc_retainBlock(&v118);
            v62 = &v120 + 1;
            v63 = &v121;
            v64 = &v121 + 1;
            v65 = &v122;
            v66 = v123;
          }

          v69 = [v15 destination];
          v70 = [v15 outputURL];
          if (v69 == &dword_0 + 2)
          {
            if (![(CaptureMTLCaptureManager *)self supportsDestination:2])
            {
              v142[0] = NSLocalizedDescriptionKey;
              v84 = [NSString stringWithFormat:@"Capture Destination ‘%@’ is not supported.", @"GPU Trace Document"];
              v142[1] = NSLocalizedRecoverySuggestionErrorKey;
              v143[0] = v84;
              v143[1] = @"Capture to another destination.";
              v85 = [NSDictionary dictionaryWithObjects:v143 forKeys:v142 count:2];

              ReportError(a4, MTLCaptureErrorDomain, 3, v85);
              goto LABEL_136;
            }

            if (!v70)
            {
              v140[0] = NSLocalizedDescriptionKey;
              v86 = [NSString stringWithFormat:@"Capture Destination ‘%@’ must write to a file.", @"GPU Trace Document"];
              v140[1] = NSLocalizedRecoverySuggestionErrorKey;
              v141[0] = v86;
              v141[1] = @"Specify a valid output file path.";
              v87 = [NSDictionary dictionaryWithObjects:v141 forKeys:v140 count:2];

              ReportError(a4, MTLCaptureErrorDomain, 3, v87);
              goto LABEL_136;
            }

            v73 = [v70 pathExtension];
            v74 = [v73 isEqualToString:@"gputrace"];

            if ((v74 & 1) == 0)
            {
              v138[0] = NSLocalizedDescriptionKey;
              v88 = [v70 lastPathComponent];
              v89 = [NSString stringWithFormat:@"‘%@’ could not be used because the file name is invalid.", v88];
              v138[1] = NSLocalizedRecoverySuggestionErrorKey;
              v139[0] = v89;
              v139[1] = @"Use ‘.gputrace’ as file name extension.";
              v90 = [NSDictionary dictionaryWithObjects:v139 forKeys:v138 count:2];

              ReportError(a4, NSCocoaErrorDomain, 514, v90);
              goto LABEL_136;
            }

            v75 = +[NSFileManager defaultManager];
            v76 = [v70 URLByDeletingLastPathComponent];
            if (v76 && ([v75 createDirectoryAtURL:v76 withIntermediateDirectories:1 attributes:0 error:a4] & 1) == 0 || !objc_msgSend(v75, "createDirectoryAtURL:withIntermediateDirectories:attributes:error:", v70, 0, 0, a4))
            {

              goto LABEL_136;
            }

            v77 = v70;
            v78 = +[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", [v70 fileSystemRepresentation]);
            gputracePath = self->_gputracePath;
            self->_gputracePath = v78;

            *(&v128 + 1) = [(NSString *)self->_gputracePath UTF8String];
            *&v129 = "";
            if (objc_opt_respondsToSelector())
            {
              v80 = [v15 suspendAfterCapture];
            }

            else
            {
              v80 = 0;
            }

            BYTE9(v129) = v80;

            v132 = 0u;
            v133 = 0u;
            v131 = 0u;
            traceStream = self->_traceStream;
            GTTraceContext_pushEncoderWithStream(self->_traceContext, &v131);
            Arguments = GTTraceEncoder_allocateArguments(&v131, -15736, 24);
            v97 = [(CaptureMTLCaptureManager *)self traceStream];
            if (v97)
            {
              var0 = v97->var0;
            }

            else
            {
              var0 = 0;
            }

            if (a4)
            {
              a4 = *a4;
            }

            v99 = SaveMTLCaptureDescriptor(&v131, &v125);
            *Arguments = var0;
            *(Arguments + 1) = a4;
            Arguments[16] = v99;
            *(Arguments + 17) = 0;
            *(Arguments + 5) = 0;
            s();
            *v100 = v101;
            *(v100 + 8) = BYTE8(v133);
            *(v132 + 15) |= 8u;
            v102 = [[GTCaptureDescriptor alloc] initWithRequestID:v107];
            [v102 setTriggerHitsToStart:v110];
            [v102 setTriggerHitsToEnd:v111];
            [v102 setSuspendAfterCapture:v80];
            [v102 setIgnoreUnusedResources:v108];
            [v102 setStreamRef:v109];
            v103 = objc_opt_new();
            [v103 setCaptureState:0];
            [v103 setDescriptor:v102];
            [*g_guestAppClientMTL notifyCaptureProgress:v103];

            if (self->_isToolManager)
            {
              v104 = 4;
            }

            else
            {
              v104 = 5;
            }

            v105 = [(CaptureMTLCaptureManager *)self traceStream];
            if (v105)
            {
              v106 = v105->var0;
            }

            else
            {
              v106 = 0;
            }

            *&v118 = v104 | 0x700000000;
            *(&v118 + 1) = v106;
            v119 = *(&v132 + 1);
            v120 = 0u;
            v121 = 0u;
            v122 = 0u;
            v123 = 0;
            v124 = &v125;
            GTCaptureBoundaryTracker_handleTrigger(&v118);
            dispatch_semaphore_signal(qword_31F530);
            if (v127)
            {
              dispatch_semaphore_signal(self->_waitResponse);
            }

            if (startCaptureWithDescriptor_error__onceToken != -1)
            {
              dispatch_once(&startCaptureWithDescriptor_error__onceToken, &__block_literal_global_128);
            }
          }

          else
          {
            if (v69 != &dword_0 + 1)
            {
              v136[0] = NSLocalizedDescriptionKey;
              v136[1] = NSLocalizedRecoverySuggestionErrorKey;
              v137[0] = @"Capture Destination is not valid.";
              v137[1] = @"Capturing to a valid destination.";
              v81 = [NSDictionary dictionaryWithObjects:v137 forKeys:v136 count:2];
              ReportError(a4, MTLCaptureErrorDomain, 3, v81);

              goto LABEL_136;
            }

            if (![(CaptureMTLCaptureManager *)self supportsDestination:1])
            {
              v146[0] = NSLocalizedDescriptionKey;
              v82 = [NSString stringWithFormat:@"Capture Destination ‘%@’ is not supported.", @"Developer Tools"];
              v146[1] = NSLocalizedRecoverySuggestionErrorKey;
              v147[0] = v82;
              v147[1] = @"Capture to another destination.";
              v83 = [NSDictionary dictionaryWithObjects:v147 forKeys:v146 count:2];

              ReportError(a4, MTLCaptureErrorDomain, 3, v83);
              goto LABEL_136;
            }

            if (v70)
            {
              v144[0] = NSLocalizedDescriptionKey;
              v71 = [NSString stringWithFormat:@"Capture Destination ‘%@’ cannot write to a file.", @"Developer Tools"];
              v144[1] = NSLocalizedRecoverySuggestionErrorKey;
              v145[0] = v71;
              v145[1] = @"Don't specify an output file path.";
              v72 = [NSDictionary dictionaryWithObjects:v145 forKeys:v144 count:2];

              ReportError(a4, MTLCaptureErrorDomain, 3, v72);
LABEL_136:
              v12 = 0;
LABEL_137:

              v91 = v130;
LABEL_142:

              goto LABEL_6;
            }

            BYTE9(v129) = 1;
            GTMTLGuestAppClient_notifyCaptureRequest(&v125);
            dispatch_semaphore_wait(self->_waitResponse, 0xFFFFFFFFFFFFFFFFLL);
          }

          v12 = 1;
          goto LABEL_137;
        }

        v152 = NSLocalizedDescriptionKey;
        v40 = [NSString stringWithFormat:@"‘%@’ cannot be captured.", objc_opt_class()];
        v153 = NSLocalizedRecoverySuggestionErrorKey;
        v155 = v40;
        v156 = @"Specify an object to be captured like MTLDevice.";
        v41 = [NSDictionary dictionaryWithObjects:&v155 forKeys:&v152 count:2];

        ReportError(a4, MTLCaptureErrorDomain, 3, v41);
      }

      else
      {
        FillMissingCaptureObjectError(a4);
      }

LABEL_141:
      v91 = 0;
      v12 = 0;
      goto LABEL_142;
    }

    v20 = v16;
    v21 = v117;
    v22 = v21;
    if (!v21 && v20 != 5)
    {
      FillMissingCaptureObjectError(a4);
LABEL_140:

      goto LABEL_141;
    }

    if (v20 > 1 || [v21 conformsToProtocol:&OBJC_PROTOCOL___MTLDevice])
    {
      if ((v20 & 0xFE) == 2 && ([v22 conformsToProtocol:&OBJC_PROTOCOL___MTLCommandQueue] & 1) == 0 && !objc_msgSend(v22, "conformsToProtocol:", &OBJC_PROTOCOL___MTL4CommandQueue))
      {
        v30 = @"an MTLCommandQueue or MTL4CommandQueue";
        goto LABEL_139;
      }

      if (v20 == 6)
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v30 = @"a CAMetalLayer";
          goto LABEL_139;
        }
      }

      else if (v20 == 4)
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v30 = @"an MTLCaptureScope";
LABEL_139:
          FillCaptureObjectTypeError(a4, v30);
          goto LABEL_140;
        }
      }

      if ((v17 & 0xFFFFFFFFFFFFFFFDLL) == 0)
      {
        goto LABEL_21;
      }

      v45 = v15;
      if (objc_opt_respondsToSelector())
      {
        if (objc_opt_respondsToSelector())
        {

          v23 = [v45 triggerHitsToStart];
          *(&v127 + 1) = v23;
          v111 = [v45 triggerHitsToEnd];
          goto LABEL_90;
        }

        v51 = @"triggerHitsToEnd";
      }

      else
      {
        v51 = @"triggerHitsToStart";
      }

      v152 = NSLocalizedDescriptionKey;
      v92 = [NSString stringWithFormat:@"%@ property is not present in the descriptor.", v51];
      v155 = v92;
      v153 = NSLocalizedFailureReasonErrorKey;
      v93 = [NSString stringWithFormat:@"Selected capture mode requires the %@ property.", v51];
      v154 = NSLocalizedRecoverySuggestionErrorKey;
      v156 = v93;
      v157 = @"Ensure that your capture descriptor implements the MTLCaptureManager(InternalSPI) category.";
      v94 = [NSDictionary dictionaryWithObjects:&v155 forKeys:&v152 count:3];

      ReportError(a4, MTLCaptureErrorDomain, 3, v94);
      goto LABEL_141;
    }

    v30 = @"an MTLDevice";
    goto LABEL_139;
  }

  v148[0] = NSLocalizedDescriptionKey;
  v148[1] = NSLocalizedRecoverySuggestionErrorKey;
  v149[0] = @"Already capturing.";
  v149[1] = @"Stop running capture before starting a new one.";
  v7 = [NSDictionary dictionaryWithObjects:v149 forKeys:v148 count:2];
  ReportError(a4, MTLCaptureErrorDomain, 2, v7);

LABEL_5:
  v12 = 0;
LABEL_6:

  return v12;
}

- (BOOL)supportsDestination:(int64_t)a3
{
  if (a3 == 2)
  {
    return 1;
  }

  if (a3 == 1)
  {
    if ((dword_31F7C8 & 0x800) == 0)
    {
      return [*g_guestAppClientMTL hasObservers];
    }

    return 1;
  }

  return 0;
}

- (void)dealloc
{
  GTTraceContext_closeStream(self->_traceContext, &self->_traceStream->var0);
  v3.receiver = self;
  v3.super_class = CaptureMTLCaptureManager;
  [(CaptureMTLCaptureManager *)&v3 dealloc];
}

- (CaptureMTLCaptureManager)initWithCaptureContext:(GTTraceContext *)a3 andIsToolsManager:(BOOL)a4
{
  v6 = [(CaptureMTLCaptureManager *)self init];
  v7 = v6;
  if (v6)
  {
    v6->_traceContext = a3;
    v8 = DEVICEOBJECT(v6);
    *(v7 + 16) = GTTraceContext_openStream(a3, v8, v7);

    v25 = 0u;
    v26 = 0u;
    v24 = 0u;
    v9 = *(v7 + 16);
    GTTraceContext_pushEncoderWithStream(*(v7 + 8), &v24);
    v10 = v25;
    *(v25 + 8) = -10151;
    v11 = BYTE9(v26);
    if (BYTE9(v26) > 0x30uLL)
    {
      v13 = *(*(&v24 + 1) + 24);
      v14 = BYTE10(v26);
      ++BYTE10(v26);
      v12 = GTTraceMemPool_allocateBytes(v13, *(&v25 + 1), v14 | 0x1000000000) + 16;
      v11 = v14;
    }

    else
    {
      v12 = (v10 + BYTE9(v26));
      BYTE9(v26) += 16;
    }

    *(v10 + 13) = v11;
    v15 = [v7 traceStream];
    if (v15)
    {
      v16 = *v15;
    }

    else
    {
      v16 = 0;
    }

    v17 = [v7 traceStream];
    if (v17)
    {
      v18 = *v17;
    }

    else
    {
      v18 = 0;
    }

    *v12 = v16;
    *(v12 + 1) = v18;
    s();
    *v19 = v20;
    *(v19 + 8) = BYTE8(v26);
    *(v25 + 15) |= 8u;
    *(v7 + 32) = a4;
    v21 = dispatch_semaphore_create(0);
    v22 = *(v7 + 40);
    *(v7 + 40) = v21;
  }

  return v7;
}

+ (id)toolsCaptureManager
{
  if (toolsCaptureManager_onceToken != -1)
  {
    dispatch_once(&toolsCaptureManager_onceToken, &__block_literal_global_11976);
  }

  v3 = toolsCaptureManager_toolsCaptureManager;

  return v3;
}

void __47__CaptureMTLCaptureManager_toolsCaptureManager__block_invoke(id a1)
{
  v1 = [[CaptureMTLCaptureManager alloc] initWithCaptureContext:g_ctx andIsToolsManager:1];
  v2 = toolsCaptureManager_toolsCaptureManager;
  toolsCaptureManager_toolsCaptureManager = v1;

  _objc_release_x1(v1, v2);
}

@end