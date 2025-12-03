@interface IMTypingIndicatorPipelineParameter
- (IMTypingIndicatorPipelineParameter)initWithBD:(id)d idsTrustedData:(id)data;
- (IMTypingIndicatorPipelineParameter)initWithBDBasic:(id)basic idsTrustedData:(id)data;
@end

@implementation IMTypingIndicatorPipelineParameter

- (IMTypingIndicatorPipelineParameter)initWithBD:(id)d idsTrustedData:(id)data
{
  dCopy = d;
  v19.receiver = self;
  v19.super_class = IMTypingIndicatorPipelineParameter;
  v7 = [(IMTextMessagePipelineParameter *)&v19 initWithBD:dCopy idsTrustedData:data];
  if (v7)
  {
    messageSubType = [dCopy messageSubType];
    typingIndicator = [messageSubType typingIndicator];

    icon = [typingIndicator icon];
    image = [icon image];
    v18 = 0;
    v12 = [image dataUsingEncoding:0 error:&v18];
    v13 = v18;

    icon2 = [typingIndicator icon];

    if (icon2 && !v12)
    {
      v15 = IMLogHandleForCategory();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        sub_22B7DA288(v13, v15);
      }
    }

    -[IMTypingIndicatorPipelineParameter setIsFinished:](v7, "setIsFinished:", [typingIndicator isFinished]);
    if (objc_opt_respondsToSelector())
    {
      balloonPluginBundleID = [typingIndicator balloonPluginBundleID];
      [(IMTypingIndicatorPipelineParameter *)v7 setBalloonPluginBundleID:balloonPluginBundleID];
    }

    [(IMTypingIndicatorPipelineParameter *)v7 setTypingIndicatorIconData:v12];
  }

  return v7;
}

- (IMTypingIndicatorPipelineParameter)initWithBDBasic:(id)basic idsTrustedData:(id)data
{
  basicCopy = basic;
  v11.receiver = self;
  v11.super_class = IMTypingIndicatorPipelineParameter;
  v7 = [(IMTextMessagePipelineParameter *)&v11 initWithBDBasic:basicCopy idsTrustedData:data];
  if (v7)
  {
    messageSubType = [basicCopy messageSubType];
    typingIndicator = [messageSubType typingIndicator];

    -[IMTypingIndicatorPipelineParameter setIsFinished:](v7, "setIsFinished:", [typingIndicator isFinished]);
  }

  return v7;
}

@end