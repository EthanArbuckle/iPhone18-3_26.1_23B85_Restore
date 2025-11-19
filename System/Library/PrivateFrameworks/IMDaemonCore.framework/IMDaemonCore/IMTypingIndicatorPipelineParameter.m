@interface IMTypingIndicatorPipelineParameter
- (IMTypingIndicatorPipelineParameter)initWithBD:(id)a3 idsTrustedData:(id)a4;
- (IMTypingIndicatorPipelineParameter)initWithBDBasic:(id)a3 idsTrustedData:(id)a4;
@end

@implementation IMTypingIndicatorPipelineParameter

- (IMTypingIndicatorPipelineParameter)initWithBD:(id)a3 idsTrustedData:(id)a4
{
  v6 = a3;
  v19.receiver = self;
  v19.super_class = IMTypingIndicatorPipelineParameter;
  v7 = [(IMTextMessagePipelineParameter *)&v19 initWithBD:v6 idsTrustedData:a4];
  if (v7)
  {
    v8 = [v6 messageSubType];
    v9 = [v8 typingIndicator];

    v10 = [v9 icon];
    v11 = [v10 image];
    v18 = 0;
    v12 = [v11 dataUsingEncoding:0 error:&v18];
    v13 = v18;

    v14 = [v9 icon];

    if (v14 && !v12)
    {
      v15 = IMLogHandleForCategory();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        sub_22B7DA288(v13, v15);
      }
    }

    -[IMTypingIndicatorPipelineParameter setIsFinished:](v7, "setIsFinished:", [v9 isFinished]);
    if (objc_opt_respondsToSelector())
    {
      v16 = [v9 balloonPluginBundleID];
      [(IMTypingIndicatorPipelineParameter *)v7 setBalloonPluginBundleID:v16];
    }

    [(IMTypingIndicatorPipelineParameter *)v7 setTypingIndicatorIconData:v12];
  }

  return v7;
}

- (IMTypingIndicatorPipelineParameter)initWithBDBasic:(id)a3 idsTrustedData:(id)a4
{
  v6 = a3;
  v11.receiver = self;
  v11.super_class = IMTypingIndicatorPipelineParameter;
  v7 = [(IMTextMessagePipelineParameter *)&v11 initWithBDBasic:v6 idsTrustedData:a4];
  if (v7)
  {
    v8 = [v6 messageSubType];
    v9 = [v8 typingIndicator];

    -[IMTypingIndicatorPipelineParameter setIsFinished:](v7, "setIsFinished:", [v9 isFinished]);
  }

  return v7;
}

@end