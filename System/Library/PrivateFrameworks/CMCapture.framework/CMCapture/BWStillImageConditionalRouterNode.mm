@interface BWStillImageConditionalRouterNode
+ (void)initialize;
- (BWStillImageConditionalRouterNode)initWithRoutingConfiguration:(id)a3;
- (void)dealloc;
- (void)handleNodeError:(id)a3 forInput:(id)a4;
- (void)renderSampleBuffer:(opaqueCMSampleBuffer *)a3 forInput:(id)a4;
@end

@implementation BWStillImageConditionalRouterNode

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    FigNote_AllowInternalDefaultLogs();
    fig_note_initialize_category_with_default_work_cf();

    fig_note_initialize_category_with_default_work_cf();
  }
}

- (BWStillImageConditionalRouterNode)initWithRoutingConfiguration:(id)a3
{
  v6.receiver = self;
  v6.super_class = BWStillImageConditionalRouterNode;
  v4 = -[BWFanOutNode initWithFanOutCount:mediaType:](&v6, sel_initWithFanOutCount_mediaType_, [a3 numberOfOutputs], 1986618469);
  if (v4)
  {
    v4->_configuration = a3;
  }

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = BWStillImageConditionalRouterNode;
  [(BWFanOutNode *)&v3 dealloc];
}

- (void)handleNodeError:(id)a3 forInput:(id)a4
{
  if ([(BWStillImageConditionalRouterConfiguration *)self->_configuration shouldEmitNodeErrorDecisionProvider])
  {
    v16 = 0;
    v7 = [(BWStillImageConditionalRouterConfiguration *)self->_configuration shouldEmitNodeErrorDecisionProvider];
    if (v7[2](v7, a3, &v16))
    {
      v8 = [(BWNode *)self outputs];
      v9 = [(NSArray *)v8 objectAtIndexedSubscript:v16];
      if (dword_1EB58E380)
      {
        v15 = 0;
        v14 = 0;
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      [v9 emitNodeError:{a3, v11, v12}];
    }
  }

  else
  {
    v13.receiver = self;
    v13.super_class = BWStillImageConditionalRouterNode;
    [(BWFanOutNode *)&v13 handleNodeError:a3 forInput:a4];
  }
}

- (void)renderSampleBuffer:(opaqueCMSampleBuffer *)a3 forInput:(id)a4
{
  v14 = 0;
  v6 = [(BWStillImageConditionalRouterConfiguration *)self->_configuration shouldEmitSampleBufferDecisionProvider:a3];
  if (v6[2](v6, a3, &v14))
  {
    v7 = [(BWNode *)self outputs];
    v8 = [(NSArray *)v7 objectAtIndexedSubscript:v14];
    if (dword_1EB58E380)
    {
      v13 = 0;
      v12 = 0;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    [v8 emitSampleBuffer:{a3, v10, v11}];
  }
}

@end