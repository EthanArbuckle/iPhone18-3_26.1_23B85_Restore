@interface JEDeresVersionTreatmentAction
- (JEDeresVersionTreatmentAction)initWithField:(id)a3 configuration:(id)a4;
- (id)performAction:(id)a3 context:(id)a4;
@end

@implementation JEDeresVersionTreatmentAction

- (JEDeresVersionTreatmentAction)initWithField:(id)a3 configuration:(id)a4
{
  v17 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v14.receiver = self;
  v14.super_class = JEDeresVersionTreatmentAction;
  v7 = [(JETreatmentAction *)&v14 initWithField:a3 configuration:v6];
  if (v7)
  {
    v8 = [v6 objectForKeyedSubscript:@"precision"];
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()) && [v8 length])
    {
      v9 = [v8 integerValue];
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

      v9 = -1;
    }

    v7->_precision = v9;
  }

  return v7;
}

- (id)performAction:(id)a3 context:(id)a4
{
  v12.receiver = self;
  v12.super_class = JEDeresVersionTreatmentAction;
  v5 = [(JETreatmentAction *)&v12 performAction:a3 context:a4];
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