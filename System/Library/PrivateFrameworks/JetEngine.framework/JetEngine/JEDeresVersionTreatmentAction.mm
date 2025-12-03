@interface JEDeresVersionTreatmentAction
- (JEDeresVersionTreatmentAction)initWithField:(id)field configuration:(id)configuration;
- (id)performAction:(id)action context:(id)context;
@end

@implementation JEDeresVersionTreatmentAction

- (JEDeresVersionTreatmentAction)initWithField:(id)field configuration:(id)configuration
{
  v17 = *MEMORY[0x1E69E9840];
  configurationCopy = configuration;
  v14.receiver = self;
  v14.super_class = JEDeresVersionTreatmentAction;
  v7 = [(JETreatmentAction *)&v14 initWithField:field configuration:configurationCopy];
  if (v7)
  {
    v8 = [configurationCopy objectForKeyedSubscript:@"precision"];
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()) && [v8 length])
    {
      integerValue = [v8 integerValue];
    }

    else
    {
      v10 = JEMetricsOSLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v11 = objc_opt_class();
        v12 = NSStringFromClass(v11);
        *buf = 138412290;
        v16 = v12;
        _os_log_impl(&dword_1AB012000, v10, OS_LOG_TYPE_ERROR, "JetEngine: Deres version precision is unsupported %@", buf, 0xCu);
      }

      integerValue = -1;
    }

    v7->_precision = integerValue;
  }

  return v7;
}

- (id)performAction:(id)action context:(id)context
{
  v12.receiver = self;
  v12.super_class = JEDeresVersionTreatmentAction;
  v5 = [(JETreatmentAction *)&v12 performAction:action context:context];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  if (!v6)
  {
    v10 = 0;
    goto LABEL_12;
  }

  v7 = [v6 componentsSeparatedByString:@"."];
  v8 = [v7 count];
  if (!self)
  {
    if (v8)
    {
      goto LABEL_7;
    }

LABEL_10:
    v10 = v6;
    goto LABEL_11;
  }

  if (v8 <= self->_precision)
  {
    goto LABEL_10;
  }

LABEL_7:
  v9 = [v7 subarrayWithRange:0];
  v10 = [v9 componentsJoinedByString:@"."];

LABEL_11:
LABEL_12:

  return v10;
}

@end