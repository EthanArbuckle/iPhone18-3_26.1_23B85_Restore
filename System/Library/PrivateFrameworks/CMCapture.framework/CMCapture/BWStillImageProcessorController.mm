@interface BWStillImageProcessorController
+ (void)initialize;
- (BOOL)supportsExternalMemoryResource;
- (BWStillImageProcessorController)initWithName:(id)a3 type:(unint64_t)a4 configuration:(id)a5;
- (CMIExternalMemoryDescriptor)externalMemoryDescriptor;
- (CMIExternalMemoryResource)externalMemoryResource;
- (int)enqueueInputForProcessing:(id)a3 delegate:(id)a4;
- (void)_completeCurrentRequestAndInitiateNextRequest;
- (void)_prepare;
- (void)_process;
- (void)_updateStateIfNeeded;
- (void)cancelProcessing;
- (void)dealloc;
- (void)purgeResources;
- (void)setExternalMemoryResource:(id)a3;
@end

@implementation BWStillImageProcessorController

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    FigNote_AllowInternalDefaultLogs();
    fig_note_initialize_category_with_default_work_cf();

    fig_note_initialize_category_with_default_work_cf();
  }
}

- (BWStillImageProcessorController)initWithName:(id)a3 type:(unint64_t)a4 configuration:(id)a5
{
  v13.receiver = self;
  v13.super_class = BWStillImageProcessorController;
  v8 = [(BWStillImageProcessorController *)&v13 init];
  if (v8)
  {
    v8->_name = a3;
    v8->_type = a4;
    v8->_configuration = a5;
    if (([objc_opt_class() usesCustomProcessingFlow] & 1) == 0)
    {
      v9 = [FigStateMachine indexForState:16];
      v10 = [FigStateMachine alloc];
      v11 = -[FigStateMachine initWithLabel:stateCount:initialState:owner:](v10, "initWithLabel:stateCount:initialState:owner:", [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ state machine", -[BWStillImageProcessorController name](v8, "name")], v9, 1, v8);
      [(FigStateMachine *)v11 setPerformsAtomicStateTransitions:0];
      [(FigStateMachine *)v11 setLabel:@"Idle" forState:1];
      [(FigStateMachine *)v11 setLabel:@"Ready" forState:2];
      [(FigStateMachine *)v11 setLabel:@"Waiting" forState:4];
      [(FigStateMachine *)v11 setLabel:@"Processing" forState:8];
      [(FigStateMachine *)v11 whenTransitioningToStates:1 callHandler:&__block_literal_global_0];
      [(FigStateMachine *)v11 whenTransitioningToStates:2 callHandler:&__block_literal_global_333];
      [(FigStateMachine *)v11 whenTransitioningToState:4 callHandler:&__block_literal_global_335];
      [(FigStateMachine *)v11 whenTransitioningToState:8 callHandler:&__block_literal_global_337];
      v8->_stateMachine = v11;
      v8->_requestQueue = objc_alloc_init(MEMORY[0x1E695DF70]);
    }
  }

  return v8;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = BWStillImageProcessorController;
  [(BWStillImageProcessorController *)&v3 dealloc];
}

- (void)purgeResources
{
  v2 = objc_opt_class();

  [v2 usesCustomProcessingFlow];
}

- (BOOL)supportsExternalMemoryResource
{
  [(BWStillImageProcessorController *)self metalImageBufferProcessor];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0;
  }

  v3 = [(BWStillImageProcessorController *)self metalImageBufferProcessor];

  return [(MetalImageBufferProcessor *)v3 supportsExternalMemoryResource];
}

- (CMIExternalMemoryDescriptor)externalMemoryDescriptor
{
  [(BWStillImageProcessorController *)self metalImageBufferProcessor];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0;
  }

  v3 = [(BWStillImageProcessorController *)self metalImageBufferProcessor];

  return [(MetalImageBufferProcessor *)v3 externalMemoryDescriptorForConfiguration:0];
}

- (void)setExternalMemoryResource:(id)a3
{
  [(BWStillImageProcessorController *)self metalImageBufferProcessor];
  if (objc_opt_respondsToSelector())
  {
    v5 = [(BWStillImageProcessorController *)self metalImageBufferProcessor];

    [(MetalImageBufferProcessor *)v5 setExternalMemoryResource:a3];
  }
}

- (CMIExternalMemoryResource)externalMemoryResource
{
  [(BWStillImageProcessorController *)self metalImageBufferProcessor];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0;
  }

  v3 = [(BWStillImageProcessorController *)self metalImageBufferProcessor];

  return [(MetalImageBufferProcessor *)v3 externalMemoryResource];
}

- (void)_updateStateIfNeeded
{
  currentRequest = self->_currentRequest;
  v4 = [(FigStateMachine *)self->_stateMachine currentState];
  if (currentRequest)
  {
    if (v4 == 2)
    {
      v5 = 4;
    }

    else if (v4 == 4)
    {
      if ([(BWStillImageProcessorControllerRequest *)currentRequest readyForProcessing])
      {
        v5 = 8;
      }

      else
      {
        v5 = 4;
      }
    }

    else
    {
      v5 = 2;
    }
  }

  else
  {
    v5 = 1;
  }

  if (v5 != [(FigStateMachine *)self->_stateMachine currentState])
  {
    stateMachine = self->_stateMachine;

    [(FigStateMachine *)stateMachine transitionToState:v5];
  }
}

- (void)_completeCurrentRequestAndInitiateNextRequest
{
  v3 = [(BWStillImageProcessorControllerRequest *)self->_currentRequest delegate];
  v4 = [(BWStillImageProcessorControllerRequest *)self->_currentRequest input];
  v5 = [(BWStillImageProcessorControllerRequest *)self->_currentRequest err];
  v6 = [(BWStillImageProcessorControllerRequest *)self->_currentRequest outputType];
  v7 = [(BWStillImageProcessorControllerRequest *)self->_currentRequest outputFrame];
  if (v7)
  {
    v8 = CFRetain(v7);
    if (!v6)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v8 = 0;
    if (!v6)
    {
      goto LABEL_8;
    }
  }

  if (!v5 && !v8)
  {
    v14 = 0;
    v13 = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();

    self->_currentRequest = 0;
    goto LABEL_14;
  }

LABEL_8:

  self->_currentRequest = 0;
  if (!v6)
  {
    if (!v8)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

LABEL_14:
  [(BWStillImageProcessorController *)self _updateStateIfNeeded:v11];
  [(BWStillImageProcessorControllerDelegate *)v3 processorController:self didFinishProcessingSampleBuffer:v8 type:v6 processorInput:v4 err:v5];
  if (v8)
  {
LABEL_10:
    CFRelease(v8);
  }

LABEL_11:
  [(BWStillImageProcessorControllerDelegate *)v3 processorController:self didFinishProcessingInput:v4 err:v5];

  v10 = [(NSMutableArray *)self->_requestQueue firstObject];
  self->_currentRequest = v10;
  if (v10)
  {
    [(NSMutableArray *)self->_requestQueue removeObjectAtIndex:0];
    [(BWStillImageProcessorControllerInput *)[(BWStillImageProcessorControllerRequest *)self->_currentRequest input] setDelegate:self];
  }

  self->_hasPendingRequests = [(NSMutableArray *)self->_requestQueue count]!= 0;
}

- (void)_prepare
{
  [(BWStillImageProcessorControllerRequest *)self->_currentRequest setErr:[(BWStillImageProcessorController *)self prepare]];
  if ([(BWStillImageProcessorControllerRequest *)self->_currentRequest err])
  {

    [(BWStillImageProcessorController *)self reset];
  }
}

- (int)enqueueInputForProcessing:(id)a3 delegate:(id)a4
{
  v12 = 0;
  if (([objc_opt_class() usesCustomProcessingFlow] & 1) == 0)
  {
    if (-[BWStillImageProcessorControllerConfiguration sensorConfigurationsByPortType](self->_configuration, "sensorConfigurationsByPortType") && !-[NSDictionary objectForKeyedSubscript:](-[BWStillImageProcessorControllerConfiguration sensorConfigurationsByPortType](self->_configuration, "sensorConfigurationsByPortType"), "objectForKeyedSubscript:", [a3 portType]))
    {
      v12 = -12780;
      FrameworkRadarComponent = FigCaptureGetFrameworkRadarComponent();
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
      [a3 portType];
      v11 = _os_log_send_and_compose_impl();
      FigCapturePleaseFileRadar(FrameworkRadarComponent, v11, 0, 0, "/Library/Caches/com.apple.xbs/Sources/CameraCapture/CMCapture/Sources/Graph/Base/BWStillImageProcessorController.m", 409, @"LastShownDate:BWStillImageProcessorController.m:409", @"LastShownBuild:BWStillImageProcessorController.m:409", 0);
      free(v11);
    }

    else
    {
      v7 = [(BWStillImageProcessorController *)self requestForInput:a3 delegate:a4 errOut:&v12];
      if (!v12)
      {
        [(NSMutableArray *)self->_requestQueue addObject:v7];
        if ([(FigStateMachine *)self->_stateMachine currentState]== 1)
        {
          [(FigStateMachine *)self->_stateMachine transitionToState:2];
        }
      }
    }
  }

  return v12;
}

- (void)cancelProcessing
{
  if (([objc_opt_class() usesCustomProcessingFlow] & 1) == 0)
  {
    [(NSMutableArray *)self->_requestQueue removeAllObjects];
    if ([(FigStateMachine *)self->_stateMachine currentState]!= 8)
    {
      [(BWStillImageProcessorControllerRequest *)self->_currentRequest setErr:4294950490];
      [(BWStillImageProcessorController *)self _completeCurrentRequestAndInitiateNextRequest];

      [(BWStillImageProcessorController *)self _updateStateIfNeeded];
    }
  }
}

- (void)_process
{
  if (![(BWStillImageProcessorControllerRequest *)self->_currentRequest err])
  {
    v3 = objc_autoreleasePoolPush();
    [(BWStillImageProcessorControllerRequest *)self->_currentRequest setErr:[(BWStillImageProcessorController *)self process]];
    objc_autoreleasePoolPop(v3);
    currentRequest = self->_currentRequest;

    [(BWStillImageProcessorControllerRequest *)currentRequest err];
  }
}

@end