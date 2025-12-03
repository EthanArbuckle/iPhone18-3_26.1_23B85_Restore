@interface BWStillImageConditionalRouterNode
+ (void)initialize;
- (BWStillImageConditionalRouterNode)initWithRoutingConfiguration:(id)configuration;
- (void)dealloc;
- (void)handleNodeError:(id)error forInput:(id)input;
- (void)renderSampleBuffer:(opaqueCMSampleBuffer *)buffer forInput:(id)input;
@end

@implementation BWStillImageConditionalRouterNode

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    FigNote_AllowInternalDefaultLogs();
    fig_note_initialize_category_with_default_work_cf();

    fig_note_initialize_category_with_default_work_cf();
  }
}

- (BWStillImageConditionalRouterNode)initWithRoutingConfiguration:(id)configuration
{
  v6.receiver = self;
  v6.super_class = BWStillImageConditionalRouterNode;
  v4 = -[BWFanOutNode initWithFanOutCount:mediaType:](&v6, sel_initWithFanOutCount_mediaType_, [configuration numberOfOutputs], 1986618469);
  if (v4)
  {
    v4->_configuration = configuration;
  }

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = BWStillImageConditionalRouterNode;
  [(BWFanOutNode *)&v3 dealloc];
}

- (void)handleNodeError:(id)error forInput:(id)input
{
  if ([(BWStillImageConditionalRouterConfiguration *)self->_configuration shouldEmitNodeErrorDecisionProvider])
  {
    v16 = 0;
    shouldEmitNodeErrorDecisionProvider = [(BWStillImageConditionalRouterConfiguration *)self->_configuration shouldEmitNodeErrorDecisionProvider];
    if (shouldEmitNodeErrorDecisionProvider[2](shouldEmitNodeErrorDecisionProvider, error, &v16))
    {
      outputs = [(BWNode *)self outputs];
      v9 = [(NSArray *)outputs objectAtIndexedSubscript:v16];
      if (dword_1EB58E380)
      {
        v15 = 0;
        v14 = 0;
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      [v9 emitNodeError:{error, v11, v12}];
    }
  }

  else
  {
    v13.receiver = self;
    v13.super_class = BWStillImageConditionalRouterNode;
    [(BWFanOutNode *)&v13 handleNodeError:error forInput:input];
  }
}

- (void)renderSampleBuffer:(opaqueCMSampleBuffer *)buffer forInput:(id)input
{
  v14 = 0;
  v6 = [(BWStillImageConditionalRouterConfiguration *)self->_configuration shouldEmitSampleBufferDecisionProvider:buffer];
  if (v6[2](v6, buffer, &v14))
  {
    outputs = [(BWNode *)self outputs];
    v8 = [(NSArray *)outputs objectAtIndexedSubscript:v14];
    if (dword_1EB58E380)
    {
      v13 = 0;
      v12 = 0;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    [v8 emitSampleBuffer:{buffer, v10, v11}];
  }
}

@end