@interface CHPostprocessingStep
+ (BOOL)shouldAdjustColumnsFromPostprocessingStepOptions:(id)options;
@end

@implementation CHPostprocessingStep

+ (BOOL)shouldAdjustColumnsFromPostprocessingStepOptions:(id)options
{
  optionsCopy = options;
  v8 = optionsCopy;
  if (optionsCopy)
  {
    v9 = objc_msgSend_objectForKey_(optionsCopy, v4, qword_1EA84C950, v5, v6, v7);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = objc_msgSend_BOOLValue(v9, v10, v11, v12, v13, v14);
    }

    else
    {
      v15 = 1;
    }

    return v15;
  }

  else
  {

    return 1;
  }
}

@end