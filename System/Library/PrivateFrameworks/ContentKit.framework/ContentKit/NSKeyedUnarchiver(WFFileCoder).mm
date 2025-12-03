@interface NSKeyedUnarchiver(WFFileCoder)
+ (id)wf_securelyUnarchiveObjectWithData:()WFFileCoder allowedClasses:completionHandler:;
- (id)wf_unarchiveRootObjectAndFinishWithAllowedClasses:()WFFileCoder;
@end

@implementation NSKeyedUnarchiver(WFFileCoder)

- (id)wf_unarchiveRootObjectAndFinishWithAllowedClasses:()WFFileCoder
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = [self decodeObjectOfClasses:a3 forKey:*MEMORY[0x277CCA308]];
  [self finishDecoding];
  error = [self error];

  if (error)
  {
    v6 = getWFWorkflowExecutionLogObject();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      error2 = [self error];
      v9 = 136315394;
      v10 = "[NSKeyedUnarchiver(WFFileCoder) wf_unarchiveRootObjectAndFinishWithAllowedClasses:]";
      v11 = 2114;
      v12 = error2;
      _os_log_impl(&dword_21E1BD000, v6, OS_LOG_TYPE_FAULT, "%s Error while unarchiving object: %{public}@", &v9, 0x16u);
    }
  }

  return v4;
}

+ (id)wf_securelyUnarchiveObjectWithData:()WFFileCoder allowedClasses:completionHandler:
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = v9;
  if (v7)
  {
    v23 = 0;
    v11 = [objc_alloc(MEMORY[0x277CCAAC8]) initForReadingFromData:v7 error:&v23];
    v12 = v23;
    v13 = [v11 decodeObjectOfClass:objc_opt_class() forKey:@"WFFileCoder"];
    [v11 setWfFileCoder:v13];

    wfFileCoder = [v11 wfFileCoder];

    if (wfFileCoder)
    {
      wfFileCoder2 = [v11 wfFileCoder];
      v19[0] = MEMORY[0x277D85DD0];
      v19[1] = 3221225472;
      v19[2] = __102__NSKeyedUnarchiver_WFFileCoder__wf_securelyUnarchiveObjectWithData_allowedClasses_completionHandler___block_invoke;
      v19[3] = &unk_278349EF0;
      v22 = v10;
      v20 = v11;
      v21 = v8;
      [wfFileCoder2 waitForFileAvailabilityWithCompletionHandler:v19];

      v16 = v22;
    }

    else
    {
      v16 = [v11 wf_unarchiveRootObjectAndFinishWithAllowedClasses:v8];
      (v10)[2](v10, v16);
    }

    wfFileCoder3 = [v11 wfFileCoder];
  }

  else
  {
    (*(v9 + 2))(v9, 0);
    wfFileCoder3 = 0;
  }

  return wfFileCoder3;
}

@end