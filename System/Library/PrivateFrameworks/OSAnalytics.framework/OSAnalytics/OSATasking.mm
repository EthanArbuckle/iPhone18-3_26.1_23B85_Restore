@interface OSATasking
+ (BOOL)preference:(id)a3 alreadySetInInstructions:(id)a4;
+ (BOOL)shouldApplyPreference:(id)a3 forSamplingKey:(const char *)a4;
+ (const)samplingKey;
+ (id)applyTasking:(id)a3 taskId:(id)a4 fromBlob:(id)a5;
+ (id)defaultTasking;
+ (id)getInstalledTaskIds;
+ (id)normalizeInstructions:(id)a3 forSamplingKey:(const char *)a4;
+ (id)proxyTasking:(id)a3 taskId:(id)a4 usingConfig:(id)a5 fromBlob:(id)a6;
+ (id)randomizedCRKey;
+ (void)checkTaskingRelevance;
+ (void)samplingKey;
@end

@implementation OSATasking

+ (id)proxyTasking:(id)a3 taskId:(id)a4 usingConfig:(id)a5 fromBlob:(id)a6
{
  v45[2] = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = [v12 length];
  if ((v13 != 0) != [(__CFString *)v10 isEqualToString:@"-1"])
  {
    if ([v12 length])
    {
      if (v12)
      {
        v14 = 0;
LABEL_9:
        if ([v9 isEqualToString:@"ca1"])
        {
          v17 = v12;
          v34 = 0;
          goto LABEL_13;
        }

        v35 = 0;
        v17 = [MEMORY[0x1E696AE40] propertyListWithData:v12 options:0 format:0 error:&v35];
        v18 = v35;
        v19 = v18;
        if (v14 & 1 | (v17 != 0))
        {
          v34 = v18;
LABEL_13:
          v44[0] = @"taskingID";
          v20 = v10;
          if ((v14 & 1) == 0)
          {
            goto LABEL_22;
          }

          goto LABEL_21;
        }

        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v37 = v19;
          _os_log_impl(&dword_1AE4F7000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Tasking blob was not encodable: %@", buf, 0xCu);
        }

        v21 = +[OSASystemConfiguration sharedInstance];
        v22 = [v21 appleInternal];

        if (v22)
        {
          v23 = MEMORY[0x1E696AEC0];
          v17 = [v11 identifier];
          v24 = [v23 stringWithFormat:@"/tmp/bad_%@_%@.blob", v17, v9];
          [v12 writeToFile:v24 atomically:1];
          v15 = MEMORY[0x1E695E0F8];
LABEL_27:

LABEL_30:
          goto LABEL_31;
        }

LABEL_29:
        v15 = MEMORY[0x1E695E0F8];
        goto LABEL_30;
      }
    }

    else
    {
      v16 = [(__CFString *)v10 isEqualToString:@"-1"];
      v14 = v16;
      if (v12)
      {
        goto LABEL_9;
      }

      if (v16)
      {
        v17 = 0;
        v34 = 0;
        v44[0] = @"taskingID";
        v14 = 1;
LABEL_21:
        v20 = @"-1";
LABEL_22:
        v45[0] = v20;
        v44[1] = @"proxyingDeviceTimeAtReceipt";
        v25 = MEMORY[0x1E696AD98];
        v26 = [MEMORY[0x1E695DF00] date];
        [v26 timeIntervalSinceReferenceDate];
        v27 = [v25 numberWithDouble:?];
        v45[1] = v27;
        v28 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v45 forKeys:v44 count:2];
        v24 = [v28 mutableCopy];

        if ((v14 & 1) == 0)
        {
          [v24 setObject:v17 forKeyedSubscript:@"payload"];
        }

        v29 = [v11 logPath];
        v30 = [MEMORY[0x1E696AEC0] stringWithFormat:@"tasking.%@.proxy", v9];
        v31 = [v29 stringByAppendingPathComponent:v30];

        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v37 = v31;
          _os_log_impl(&dword_1AE4F7000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "saving proxy tasking as %@", buf, 0xCu);
        }

        [v24 writeToFile:v31 atomically:1];
        v42[0] = @"action";
        v42[1] = @"taskId";
        v43[0] = @"staged";
        v43[1] = v10;
        v42[2] = @"blob";
        v43[2] = v31;
        v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v43 forKeys:v42 count:3];

        v19 = v34;
        goto LABEL_27;
      }
    }

    v19 = 0;
    goto LABEL_29;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v37 = v9;
    v38 = 2112;
    v39 = v10;
    v40 = 2048;
    v41 = [v12 length];
    _os_log_impl(&dword_1AE4F7000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "proxy %@ taskId %@ with rawblob (%lu bytes) is inconsistent", buf, 0x20u);
  }

  v15 = MEMORY[0x1E695E0F8];
LABEL_31:

  v32 = *MEMORY[0x1E69E9840];

  return v15;
}

+ (id)applyTasking:(id)a3 taskId:(id)a4 fromBlob:(id)a5
{
  v141 = *MEMORY[0x1E69E9840];
  v88 = a3;
  v7 = a4;
  v8 = a5;
  v103 = 0;
  v104 = &v103;
  v105 = 0x3032000000;
  v106 = __Block_byref_object_copy_;
  v107 = __Block_byref_object_dispose_;
  v108 = MEMORY[0x1E695E0F8];
  v87 = v8;
  v9 = [v8 length];
  v86 = v7;
  if ((v9 != 0) != [v7 isEqualToString:@"-1"])
  {
    if ([v87 length])
    {
      v85 = 0;
    }

    else
    {
      v85 = [v7 isEqualToString:@"-1"];
    }

    v14 = MEMORY[0x1E69E9C10];
    v15 = MEMORY[0x1E69E9C10];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v16 = [v87 length];
      *buf = 138413058;
      *&buf[4] = v88;
      *&buf[12] = 2112;
      *&buf[14] = v7;
      *&buf[22] = 1024;
      LODWORD(v139) = v16;
      WORD2(v139) = 1024;
      *(&v139 + 6) = v85;
      _os_log_impl(&dword_1AE4F7000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "applyTasking routing %@ id %@ length %d; untasked %d", buf, 0x22u);
    }

    if ([v88 isEqualToString:@"da3"])
    {
      v17 = MEMORY[0x1E695E0F0];
      if (v85)
      {
        v18 = 0;
        v19 = MEMORY[0x1E695E0F0];
      }

      else
      {
        v102 = 0;
        v19 = selectConfigFromBlob(v87, &v102);
        v29 = v102;
        v18 = v29;
        if (!v19)
        {
          if (v29)
          {
            v130 = @"error";
            v52 = [v29 localizedDescription];
            v131 = v52;
            v53 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v131 forKeys:&v130 count:1];
            v54 = v104[5];
            v104[5] = v53;
          }

          else
          {
            v18 = v104[5];
            v104[5] = &unk_1F241ECE8;
          }

LABEL_31:

          goto LABEL_86;
        }
      }

      v30 = +[OSATasking defaultTasking];
      if (v30)
      {
        v31 = v30;
      }

      else
      {
        v31 = v17;
      }

      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
      {
        +[OSATasking applyTasking:taskId:fromBlob:];
      }

      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
      {
        +[OSATasking applyTasking:taskId:fromBlob:];
      }

      v32 = [v31 arrayByAddingObjectsFromArray:v19];
      v33 = +[OSATasking normalizeInstructions:forSamplingKey:](OSATasking, "normalizeInstructions:forSamplingKey:", v32, +[OSATasking samplingKey]);

      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
      {
        +[OSATasking applyTasking:taskId:fromBlob:];
      }

      v133[0] = v7;
      v132[0] = @"TaskingID";
      v132[1] = @"TaskingOS";
      v34 = +[OSASystemConfiguration sharedInstance];
      v35 = [v34 buildVersion];
      v132[2] = @"TaskingPayload";
      v133[1] = v35;
      v133[2] = v33;
      v36 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v133 forKeys:v132 count:3];

      v98[0] = MEMORY[0x1E69E9820];
      v98[1] = 3221225472;
      v98[2] = __43__OSATasking_applyTasking_taskId_fromBlob___block_invoke;
      v98[3] = &unk_1E7A27208;
      v37 = v36;
      v99 = v37;
      v101 = &v103;
      v100 = v86;
      __43__OSATasking_applyTasking_taskId_fromBlob___block_invoke(v98);

      goto LABEL_31;
    }

    if ([v88 isEqualToString:@"ca1"])
    {
      *&v110 = 0;
      *(&v110 + 1) = &v110;
      *&v111 = 0x2020000000;
      BYTE8(v111) = 0;
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x3032000000;
      *&v139 = __Block_byref_object_copy_;
      *(&v139 + 1) = __Block_byref_object_dispose_;
      v140 = 0;
      v20 = +[OSASystemConfiguration sharedInstance];
      v21 = [v20 pathCATasking];
      v22 = [v21 stringByAppendingPathComponent:@"taskedConfig.json"];

      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        *v134 = 138543362;
        v135 = v22;
        _os_log_impl(&dword_1AE4F7000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "The location of the CA taskedConfig is %{public}@", v134, 0xCu);
      }

      if (v22)
      {
        if (v85)
        {
          v23 = [MEMORY[0x1E696AC08] defaultManager];
          v24 = [v23 fileExistsAtPath:v22];

          if (v24)
          {
            v25 = [MEMORY[0x1E696AC08] defaultManager];
            v26 = *&buf[8];
            obj = *(*&buf[8] + 40);
            v27 = [v25 removeItemAtPath:v22 error:&obj];
            objc_storeStrong((v26 + 40), obj);
            *(*(&v110 + 1) + 24) = v27;

            v28 = v22;
            v22 = @"untasked";
          }

          else
          {
            v128[0] = @"action";
            v128[1] = @"taskId";
            v129[0] = @"n/a";
            v129[1] = v86;
            v58 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v129 forKeys:v128 count:2];
            v28 = v104[5];
            v104[5] = v58;
          }
        }

        else
        {
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
          {
            *v134 = 138412290;
            v135 = v22;
            _os_log_impl(&dword_1AE4F7000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "saving ca1 tasking as %@", v134, 0xCu);
          }

          v92[0] = MEMORY[0x1E69E9820];
          v92[1] = 3221225472;
          v92[2] = __43__OSATasking_applyTasking_taskId_fromBlob___block_invoke_101;
          v92[3] = &unk_1E7A27230;
          v95 = &v110;
          v93 = v87;
          v22 = v22;
          v94 = v22;
          v96 = buf;
          __43__OSATasking_applyTasking_taskId_fromBlob___block_invoke_101(v92);

          v28 = v93;
        }
      }

      if (*(*(&v110 + 1) + 24) == 1)
      {
        v126[0] = @"action";
        v126[1] = @"taskId";
        v127[0] = @"saved";
        v127[1] = v86;
        v126[2] = @"blob";
        v127[2] = v22;
        v59 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v127 forKeys:v126 count:3];
        v60 = v104[5];
        v104[5] = v59;

        v124[0] = @"TaskingID";
        v124[1] = @"savedAs";
        v125[0] = v86;
        v125[1] = v22;
        v61 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v125 forKeys:v124 count:2];
        v62 = +[OSASystemConfiguration sharedInstance];
        [v62 setPrefsKey:@"CATaskingID" value:v61 forDomain:@"com.apple.OTACrashCopier" withSync:1];

        AnalyticsNotifyTaskingAvailable();
      }

      else
      {
        if (v104[5])
        {
          goto LABEL_65;
        }

        v122 = @"error";
        v63 = *(*&buf[8] + 40);
        if (v63)
        {
          v61 = [*(*&buf[8] + 40) localizedDescription];
        }

        else
        {
          v61 = @"unknown failure to apply ca1 tasking";
        }

        v123 = v61;
        v78 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v123 forKeys:&v122 count:1];
        v79 = v104[5];
        v104[5] = v78;

        if (!v63)
        {
          goto LABEL_65;
        }
      }

LABEL_65:
      _Block_object_dispose(buf, 8);

      _Block_object_dispose(&v110, 8);
      goto LABEL_86;
    }

    if (![v88 isEqualToString:@"awd"])
    {
      __assert_rtn("+[OSATasking applyTasking:taskId:fromBlob:]", "OSATasking.m", 410, "0 && Unsupported routing used in tasking");
    }

    if (v85)
    {
      v81 = 0;
      v83 = 0;
    }

    else
    {
      v91 = 0;
      v38 = selectConfigFromBlob(v87, &v91);
      v39 = v91;
      v83 = v38;
      if (!v38)
      {
        if (v39)
        {
          v114 = @"error";
          v82 = v39;
          v55 = [v39 localizedDescription];
          v115 = v55;
          v56 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v115 forKeys:&v114 count:1];
          v57 = v104[5];
          v104[5] = v56;

          goto LABEL_86;
        }

        v81 = v104[5];
        v104[5] = &unk_1F241ED60;
        goto LABEL_85;
      }

      v81 = v39;
    }

    v40 = +[OSASystemConfiguration sharedInstance];
    v41 = [v40 pathAWDTasking];
    v42 = [v41 stringByAppendingPathComponent:v88];
    v84 = [v42 stringByAppendingPathExtension:@"plist"];

    if (!v84)
    {
      goto LABEL_75;
    }

    v80 = v84;
    v43 = [MEMORY[0x1E695DEC8] arrayWithContentsOfFile:?];
    if (isConfigValid(v43))
    {
      v90 = [MEMORY[0x1E69B7BD8] sharedClient];
      v112 = 0u;
      v113 = 0u;
      v110 = 0u;
      v111 = 0u;
      v89 = v43;
      v44 = [v89 countByEnumeratingWithState:&v110 objects:buf count:16];
      if (v44)
      {
        v45 = *v111;
        v46 = 1;
        do
        {
          for (i = 0; i != v44; ++i)
          {
            if (*v111 != v45)
            {
              objc_enumerationMutation(v89);
            }

            v48 = *(*(&v110 + 1) + 8 * i);
            v49 = [v48 objectForKey:@"Key"];
            v50 = [v48 objectForKey:@"User"];
            v51 = [v48 objectForKey:@"Domain"];
            if (([v90 deletePreference:v49 forUser:v50 inDomain:v51] & 1) == 0)
            {
              v46 = 0;
              if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
              {
                *v134 = 138412546;
                v135 = v51;
                v136 = 2112;
                v137 = v49;
                _os_log_impl(&dword_1AE4F7000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Could not delete preference for domain,key: %@, %@", v134, 0x16u);
                v46 = 0;
              }
            }
          }

          v44 = [v89 countByEnumeratingWithState:&v110 objects:buf count:16];
        }

        while (v44);

        if ((v46 & 1) == 0)
        {

LABEL_75:
          v67 = &unk_1F241ED38;
          goto LABEL_83;
        }
      }

      else
      {
      }

      v64 = [MEMORY[0x1E696AC08] defaultManager];
      if ([v64 fileExistsAtPath:v80])
      {
        v109 = 0;
        v65 = [v64 removeItemAtPath:v80 error:&v109];
        v66 = v109;
        if ((v65 & 1) == 0)
        {
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
          {
            *v134 = 138412546;
            v135 = v80;
            v136 = 2112;
            v137 = v66;
            _os_log_impl(&dword_1AE4F7000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Couldn't delete file for awd task at %@: %@", v134, 0x16u);
          }

          goto LABEL_75;
        }
      }

      else
      {
        v66 = 0;
      }
    }

    else
    {
    }

    if (v85)
    {
      v120[0] = @"action";
      v120[1] = @"taskId";
      v121[0] = @"n/a";
      v121[1] = v86;
      v67 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v121 forKeys:v120 count:2];
    }

    else
    {
      if (installAwdTasking(v83, v80))
      {
        v118[0] = @"action";
        v118[1] = @"taskId";
        v119[0] = @"installed";
        v119[1] = v86;
        v118[2] = @"blob";
        v119[2] = v80;
        v68 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v119 forKeys:v118 count:3];
        v69 = v104[5];
        v104[5] = v68;

        v116[0] = @"TaskingID";
        v116[1] = @"TaskingOS";
        v117[0] = v86;
        v70 = +[OSASystemConfiguration sharedInstance];
        v71 = [v70 buildVersion];
        v117[1] = v71;
        v72 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v117 forKeys:v116 count:2];

        v73 = +[OSASystemConfiguration sharedInstance];
        [v73 setPrefsKey:@"AWDTaskingID" value:v72 forDomain:@"com.apple.OTACrashCopier" withSync:1];

        DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
        CFNotificationCenterPostNotification(DarwinNotifyCenter, @"logging tasks have changed", 0, 0, 0);
LABEL_84:

LABEL_85:
        goto LABEL_86;
      }

      v67 = &unk_1F241ED10;
    }

LABEL_83:
    v72 = v104[5];
    v104[5] = v67;
    goto LABEL_84;
  }

  v10 = v104[5];
  v104[5] = &unk_1F241ED88;

  v11 = MEMORY[0x1E69E9C10];
  v12 = MEMORY[0x1E69E9C10];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v13 = [v87 length];
    *buf = 138412802;
    *&buf[4] = v88;
    *&buf[12] = 2112;
    *&buf[14] = v7;
    *&buf[22] = 2048;
    *&v139 = v13;
    _os_log_impl(&dword_1AE4F7000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%@ taskId %@ with rawblob (%lu bytes) is inconsistent", buf, 0x20u);
  }

LABEL_86:
  v75 = v104[5];
  _Block_object_dispose(&v103, 8);

  v76 = *MEMORY[0x1E69E9840];

  return v75;
}

void __43__OSATasking_applyTasking_taskId_fromBlob___block_invoke(void *a1)
{
  v16[3] = *MEMORY[0x1E69E9840];
  v2 = +[OSASystemConfiguration sharedInstance];
  v3 = [v2 setPrefsKey:@"ScheduledTasking" value:a1[4] forDomain:@"com.apple.OTACrashCopier" withSync:1];

  if (v3)
  {
    v15[0] = @"action";
    v15[1] = @"taskId";
    v4 = a1[5];
    v16[0] = @"scheduled";
    v16[1] = v4;
    v15[2] = @"blob";
    v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"defaults://%@/%@", @"com.apple.OTACrashCopier", @"ScheduledTasking"];
    v16[2] = v5;
    v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:v15 count:3];
    v7 = *(a1[6] + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v9 = MEMORY[0x1E69E9C10];
      v10 = "Saved da3 tasking for deferred installation";
LABEL_6:
      _os_log_impl(&dword_1AE4F7000, v9, OS_LOG_TYPE_DEFAULT, v10, buf, 2u);
    }
  }

  else
  {
    v11 = *(a1[6] + 8);
    v12 = *(v11 + 40);
    *(v11 + 40) = &unk_1F241ECC0;

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v9 = MEMORY[0x1E69E9C10];
      v10 = "deferring da3 task failed";
      goto LABEL_6;
    }
  }

  v13 = *MEMORY[0x1E69E9840];
}

void __43__OSATasking_applyTasking_taskId_fromBlob___block_invoke_101(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v4 = *(a1[7] + 8);
  obj = *(v4 + 40);
  v5 = [v2 writeToFile:v3 options:1 error:&obj];
  objc_storeStrong((v4 + 40), obj);
  *(*(a1[6] + 8) + 24) = v5;
}

+ (void)checkTaskingRelevance
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = +[OSASystemConfiguration sharedInstance];
  v3 = [v2 getPrefsKey:@"ScheduledTasking" forDomain:@"com.apple.OTACrashCopier" withOptions:0];

  v4 = [v3 objectForKeyedSubscript:@"TaskingOS"];
  v5 = +[OSASystemConfiguration sharedInstance];
  v6 = [v5 buildVersion];
  v7 = [v4 isEqualToString:v6];

  if ((v7 & 1) == 0)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      v8 = +[OSASystemConfiguration sharedInstance];
      v9 = [v8 buildVersion];
      v12 = 138412546;
      v13 = v4;
      v14 = 2112;
      v15 = v9;
      _os_log_impl(&dword_1AE4F7000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "removing outdated da tasking (and restoring hotship) %@ -> %@", &v12, 0x16u);
    }

    v10 = [OSATasking applyTasking:@"da3" taskId:@"-1" fromBlob:0];
  }

  v11 = *MEMORY[0x1E69E9840];
}

+ (id)getInstalledTaskIds
{
  v2 = [MEMORY[0x1E695DF90] dictionary];
  v3 = +[OSASystemConfiguration sharedInstance];
  v4 = [v3 getPrefsKey:@"ScheduledTasking" forDomain:@"com.apple.OTACrashCopier" withOptions:0];

  if (v4)
  {
    v5 = [v4 objectForKeyedSubscript:@"TaskingID"];
    [v2 setObject:v5 forKeyedSubscript:@"da3"];
  }

  else
  {
    [v2 setObject:@"-1" forKeyedSubscript:@"da3"];
  }

  v6 = +[OSASystemConfiguration sharedInstance];
  v7 = [v6 getPrefsKey:@"AWDTaskingID" forDomain:@"com.apple.OTACrashCopier" withOptions:0];

  if (v7)
  {
    v8 = [v7 objectForKeyedSubscript:@"TaskingID"];
    [v2 setObject:v8 forKeyedSubscript:@"awd"];
  }

  else
  {
    [v2 setObject:@"-1" forKeyedSubscript:@"awd"];
  }

  v9 = +[OSASystemConfiguration sharedInstance];
  v10 = [v9 getPrefsKey:@"CATaskingID" forDomain:@"com.apple.OTACrashCopier" withOptions:0];

  if (v10)
  {
    v11 = [v10 objectForKeyedSubscript:@"TaskingID"];
    [v2 setObject:v11 forKeyedSubscript:@"ca1"];
  }

  else
  {
    [v2 setObject:@"-1" forKeyedSubscript:@"ca1"];
  }

  return v2;
}

+ (BOOL)shouldApplyPreference:(id)a3 forSamplingKey:(const char *)a4
{
  v5 = [a3 objectForKeyedSubscript:@"Sample"];
  if (!v5)
  {
    goto LABEL_6;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || [v5 count] != 2)
  {
    goto LABEL_6;
  }

  v6 = [v5 objectAtIndexedSubscript:0];
  v7 = [v6 unsignedIntegerValue];

  v8 = [v5 objectAtIndexedSubscript:1];
  v9 = [v8 unsignedIntegerValue];

  if (!v9)
  {
    goto LABEL_15;
  }

  if (v9 == 1)
  {
LABEL_6:
    v10 = 1;
    goto LABEL_7;
  }

  if (v7 >= v9)
  {
LABEL_15:
    v10 = 0;
    goto LABEL_7;
  }

  v12 = crc32(0, 0, 0);
  v13 = crc32(v12, a4, 8u);
  v14 = 0xFFFFFFFF / v9 * v7;
  v16 = v13 >= v14;
  v15 = v13 - v14;
  v16 = !v16 || v15 >= 0xFFFFFFFF / v9;
  v10 = !v16;
LABEL_7:

  return v10;
}

+ (id)defaultTasking
{
  v2 = +[OSASystemConfiguration sharedInstance];
  if ([v2 appleInternal])
  {
    v3 = @"/AppleInternal/Library/OSAnalytics/defaultTasking.plist";
  }

  else
  {
    v4 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v3 = [v4 pathForResource:@"defaultTasking" ofType:@"plist"];
  }

  v5 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithContentsOfFile:v3];

  return v5;
}

+ (const)samplingKey
{
  v2 = +[OSASystemConfiguration sharedInstance];
  v3 = [v2 crashReporterKey];

  if ([v3 hasPrefix:@"baadbaadbaaadbaaaadbaadbaadbaaadbaaaad"])
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
    {
      +[OSATasking samplingKey];
    }

    v4 = +[OSATasking randomizedCRKey];

    v3 = v4;
  }

  v5 = [v3 UTF8String];

  return v5;
}

+ (id)normalizeInstructions:(id)a3 forSamplingKey:(const char *)a4
{
  v25 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v7 = [v5 reverseObjectEnumerator];
  v8 = [v7 countByEnumeratingWithState:&v16 objects:v24 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v17;
    v11 = MEMORY[0x1E69E9C10];
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v17 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v13 = *(*(&v16 + 1) + 8 * i);
        if ([OSATasking shouldApplyPreference:v13 forSamplingKey:a4])
        {
          if ([OSATasking preference:v13 alreadySetInInstructions:v6])
          {
            if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
            {
              [(OSATasking *)v22 normalizeInstructions:v13 forSamplingKey:&v23];
            }
          }

          else
          {
            [v6 insertObject:v13 atIndex:0];
          }
        }

        else if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
        {
          [(OSATasking *)buf normalizeInstructions:v13 forSamplingKey:&v21];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v16 objects:v24 count:16];
    }

    while (v9);
  }

  v14 = *MEMORY[0x1E69E9840];

  return v6;
}

+ (BOOL)preference:(id)a3 alreadySetInInstructions:(id)a4
{
  v29 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  obj = a4;
  v6 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v6)
  {
    v7 = v6;
    v21 = 0;
    v23 = *v25;
    v19 = v5;
    do
    {
      v8 = 0;
      v20 = v7;
      do
      {
        if (*v25 != v23)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v24 + 1) + 8 * v8);
        v10 = [v5 objectForKeyedSubscript:@"User"];
        v11 = [v9 objectForKeyedSubscript:@"User"];
        if ([v10 isEqualToString:v11])
        {
          v12 = [v5 objectForKeyedSubscript:@"Domain"];
          v13 = [v9 objectForKeyedSubscript:@"Domain"];
          if ([v12 isEqualToString:v13])
          {
            v14 = [v5 objectForKeyedSubscript:@"Key"];
            v15 = [v9 objectForKeyedSubscript:@"Key"];
            v16 = [v14 isEqualToString:v15];

            v5 = v19;
            v7 = v20;
            v21 |= v16;
          }
        }

        ++v8;
      }

      while (v7 != v8);
      v7 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v7);
  }

  else
  {
    v21 = 0;
  }

  v17 = *MEMORY[0x1E69E9840];
  return v21 & 1;
}

+ (id)randomizedCRKey
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E696AEC0];
  v3 = [MEMORY[0x1E696AFB0] UUID];
  v4 = [v3 UUIDString];
  v5 = [MEMORY[0x1E695DF00] date];
  v6 = [v2 stringWithFormat:@"%@%@", v4, v5];

  *md = 0;
  v11 = 0;
  v12 = 0;
  CC_SHA1([v6 UTF8String], objc_msgSend(v6, "length"), md);
  v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x", md[0], md[1], md[2], md[3], md[4], md[5], md[6], md[7], v11, BYTE1(v11), BYTE2(v11), BYTE3(v11), BYTE4(v11), BYTE5(v11), BYTE6(v11), HIBYTE(v11), v12, BYTE1(v12), BYTE2(v12), HIBYTE(v12)];

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

+ (void)applyTasking:taskId:fromBlob:.cold.1()
{
  v7 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_1AE4F7000, MEMORY[0x1E69E9C10], v0, "defaultConfig is %{public}@", v1, v2, v3, v4, v6);
  v5 = *MEMORY[0x1E69E9840];
}

+ (void)applyTasking:taskId:fromBlob:.cold.2()
{
  v7 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_1AE4F7000, MEMORY[0x1E69E9C10], v0, "task_config is %{public}@", v1, v2, v3, v4, v6);
  v5 = *MEMORY[0x1E69E9840];
}

+ (void)applyTasking:taskId:fromBlob:.cold.3()
{
  v7 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_1AE4F7000, MEMORY[0x1E69E9C10], v0, "After normalization, combinedConfig is %{public}@", v1, v2, v3, v4, v6);
  v5 = *MEMORY[0x1E69E9840];
}

+ (void)samplingKey
{
  v2 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  _os_log_fault_impl(&dword_1AE4F7000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "samplingKey [randomizing due to failure] was %{public}@", v1, 0xCu);
  v0 = *MEMORY[0x1E69E9840];
}

+ (void)normalizeInstructions:(void *)a3 forSamplingKey:.cold.1(uint8_t *buf, uint64_t a2, void *a3)
{
  *buf = 138412290;
  *a3 = a2;
  _os_log_debug_impl(&dword_1AE4F7000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "Not applying %@ as it is sampled and this device isn't IN", buf, 0xCu);
}

+ (void)normalizeInstructions:(void *)a3 forSamplingKey:.cold.2(uint8_t *buf, uint64_t a2, void *a3)
{
  *buf = 138412290;
  *a3 = a2;
  _os_log_debug_impl(&dword_1AE4F7000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "Not applying %@ as it has already been set", buf, 0xCu);
}

@end