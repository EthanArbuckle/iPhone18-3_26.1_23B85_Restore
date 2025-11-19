@interface NTKRichComplicationBezelCircularTemplateView
+ (BOOL)handlesComplicationTemplate:(id)a3;
- (Class)_circularViewClassFromFromTemplate:(id)a3;
@end

@implementation NTKRichComplicationBezelCircularTemplateView

- (Class)_circularViewClassFromFromTemplate:(id)a3
{
  v3 = [a3 circularTemplate];
  v4 = NTKComplicationDisplayClassForTemplateAndFamily(v3, 10);

  return v4;
}

+ (BOOL)handlesComplicationTemplate:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
    v5 = [v4 circularTemplate];
    v6 = NTKComplicationDisplayClassForTemplateAndFamily(v5, 10);

    v7 = v6 != 0;
    if (!v6)
    {
      v8 = _NTKLoggingObjectForDomain(18, "NTKLoggingDomainComplication");
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = [v4 circularTemplate];
        v11 = 138412546;
        v12 = v4;
        v13 = 2112;
        v14 = v9;
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