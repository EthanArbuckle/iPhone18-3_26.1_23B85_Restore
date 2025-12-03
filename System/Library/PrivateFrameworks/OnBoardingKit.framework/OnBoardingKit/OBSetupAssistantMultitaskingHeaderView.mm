@interface OBSetupAssistantMultitaskingHeaderView
- (double)iconToHeaderLabelPadding;
@end

@implementation OBSetupAssistantMultitaskingHeaderView

- (double)iconToHeaderLabelPadding
{
  v3 = +[OBDevice currentDevice];
  templateType = [v3 templateType];

  if (templateType == 6)
  {
    v5 = +[OBDevice currentDevice];
    isMiniPad = [v5 isMiniPad];

    result = 16.0;
    if (isMiniPad)
    {
      return 8.0;
    }
  }

  else
  {
    v8.receiver = self;
    v8.super_class = OBSetupAssistantMultitaskingHeaderView;
    [(OBHeaderView *)&v8 iconToHeaderLabelPadding];
  }

  return result;
}

@end