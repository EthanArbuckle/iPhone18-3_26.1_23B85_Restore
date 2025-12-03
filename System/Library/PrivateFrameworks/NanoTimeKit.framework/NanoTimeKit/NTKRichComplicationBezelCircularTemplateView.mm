@interface NTKRichComplicationBezelCircularTemplateView
+ (BOOL)handlesComplicationTemplate:(id)template;
- (Class)_circularViewClassFromFromTemplate:(id)template;
@end

@implementation NTKRichComplicationBezelCircularTemplateView

- (Class)_circularViewClassFromFromTemplate:(id)template
{
  circularTemplate = [template circularTemplate];
  v4 = NTKComplicationDisplayClassForTemplateAndFamily(circularTemplate, 10);

  return v4;
}

+ (BOOL)handlesComplicationTemplate:(id)template
{
  v15 = *MEMORY[0x277D85DE8];
  templateCopy = template;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = templateCopy;
    circularTemplate = [v4 circularTemplate];
    v6 = NTKComplicationDisplayClassForTemplateAndFamily(circularTemplate, 10);

    v7 = v6 != 0;
    if (!v6)
    {
      v8 = _NTKLoggingObjectForDomain(18, "NTKLoggingDomainComplication");
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        circularTemplate2 = [v4 circularTemplate];
        v11 = 138412546;
        v12 = v4;
        v13 = 2112;
        v14 = circularTemplate2;
        _os_log_impl(&dword_22D9C5000, v8, OS_LOG_TYPE_DEFAULT, "Failed to handle template %@ because there is not associated view for the circular template: %@", &v11, 0x16u);
      }
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end