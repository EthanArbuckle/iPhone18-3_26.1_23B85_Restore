@interface NTKWidgetTemplateComplicationController
+ (BOOL)_acceptsComplicationType:(unint64_t)a3 family:(int64_t)a4 forDevice:(id)a5;
- (NTKWidgetTemplateComplicationController)initWithComplication:(id)a3 variant:(id)a4 device:(id)a5;
- (void)addDisplayWrapper:(id)a3;
@end

@implementation NTKWidgetTemplateComplicationController

- (NTKWidgetTemplateComplicationController)initWithComplication:(id)a3 variant:(id)a4 device:(id)a5
{
  v9 = a3;
  v10 = a4;
  v15.receiver = self;
  v15.super_class = NTKWidgetTemplateComplicationController;
  v11 = [(NTKComplicationController *)&v15 initWithComplication:v9 variant:v10 device:a5];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_variant, a4);
    if ([v9 complicationType] != 56)
    {
      v13 = _NTKLoggingObjectForDomain(47, "NTKLoggingDomainWidget");
      if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
      {
        [NTKWidgetTemplateComplicationController initWithComplication:v9 variant:v13 device:?];
      }
    }

    objc_storeStrong(&v12->_widgetComplication, a3);
  }

  return v12;
}

+ (BOOL)_acceptsComplicationType:(unint64_t)a3 family:(int64_t)a4 forDevice:(id)a5
{
  v6 = [a5 isRunningNapiliGMOrLater] ^ 1;
  if (a3 == 56)
  {
    return v6;
  }

  else
  {
    return 0;
  }
}

- (void)addDisplayWrapper:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = NTKWidgetTemplateComplicationController;
  [(NTKComplicationController *)&v10 addDisplayWrapper:v4];
  v5 = [(NTKComplicationController *)self device];
  v6 = [NTKCompanionWidgetComplicationManager instanceForDevice:v5];
  v7 = [(NTKWidgetComplication *)self->_widgetComplication descriptor];
  v8 = [v6 sampleTemplateForWidget:v7 family:{-[NTKComplicationController complicationFamily](self, "complicationFamily")}];

  [v8 finalize];
  if (!v8)
  {
    v9 = _NTKLoggingObjectForDomain(47, "NTKLoggingDomainWidget");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [(NTKWidgetTemplateComplicationController *)&self->_widgetComplication addDisplayWrapper:v9];
    }
  }

  [v4 setComplicationTemplate:v8 reason:0 animation:0];
}

- (void)initWithComplication:(uint64_t)a1 variant:(NSObject *)a2 device:.cold.1(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v4 = 138412290;
  v5 = objc_opt_class();
  v3 = v5;
  _os_log_fault_impl(&dword_22D9C5000, a2, OS_LOG_TYPE_FAULT, "NTKWidgetComplicationController created with a complication of unsupported class %@", &v4, 0xCu);
}

- (void)addDisplayWrapper:(id *)a1 .cold.1(id *a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = [*a1 descriptor];
  v4 = 138412290;
  v5 = v3;
  _os_log_error_impl(&dword_22D9C5000, a2, OS_LOG_TYPE_ERROR, "Unable to find sample template for %@", &v4, 0xCu);
}

@end