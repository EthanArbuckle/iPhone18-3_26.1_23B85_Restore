@interface FSKitDiskArbHelper
+ (id)waitForPreviousTasksToComplete:(id)complete client:(id)client;
+ (int)DAMountFSKitVolume:(id)volume deviceName:(id)name mountPoint:(id)point volumeName:(id)volumeName auditToken:(id *)token mountOptions:(id)options;
+ (int)DAMountUserFSVolume:(id)volume deviceName:(id)name mountPoint:(id)point volumeName:(id)volumeName auditToken:(id *)token mountOptions:(id)options;
+ (int)DAMountUserFSVolume:(id)volume deviceName:(id)name mountPoint:(id)point volumeName:(id)volumeName mountOptions:(id)options;
@end

@implementation FSKitDiskArbHelper

+ (id)waitForPreviousTasksToComplete:(id)complete client:(id)client
{
  completeCopy = complete;
  clientCopy = client;
  v32 = 0;
  v33 = &v32;
  v34 = 0x3032000000;
  v35 = __Block_byref_object_copy__5;
  v36 = __Block_byref_object_dispose__5;
  v37 = objc_opt_new();
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = __Block_byref_object_copy__5;
  v30 = __Block_byref_object_dispose__5;
  v31 = 0;
  v24[0] = 0;
  v24[1] = v24;
  v24[2] = 0x2020000000;
  v25 = 0;
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __60__FSKitDiskArbHelper_waitForPreviousTasksToComplete_client___block_invoke;
  v21[3] = &unk_278FED228;
  v7 = completeCopy;
  v22 = v7;
  v23 = &v32;
  [clientCopy currentTasksSync:v21];
  if ([v33[5] count])
  {
    v8 = dispatch_group_create();
    dispatch_group_enter(v8);
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __60__FSKitDiskArbHelper_waitForPreviousTasksToComplete_client___block_invoke_3;
    aBlock[3] = &unk_278FEE038;
    v17 = v7;
    v19 = &v32;
    v20 = v24;
    v9 = v8;
    v18 = v9;
    v10 = _Block_copy(aBlock);
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __60__FSKitDiskArbHelper_waitForPreviousTasksToComplete_client___block_invoke_5;
    v15[3] = &unk_278FECF30;
    v15[4] = &v26;
    [clientCopy setTaskUpdateHandler:v10 replyHandler:v15];
    v11 = dispatch_time(0, 5000000000);
    dispatch_group_wait(v9, v11);
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __60__FSKitDiskArbHelper_waitForPreviousTasksToComplete_client___block_invoke_6;
    v14[3] = &unk_278FECF30;
    v14[4] = &v26;
    [clientCopy setTaskUpdateHandler:0 replyHandler:v14];
    v12 = v27[5];
  }

  else
  {
    v12 = 0;
  }

  _Block_object_dispose(v24, 8);
  _Block_object_dispose(&v26, 8);

  _Block_object_dispose(&v32, 8);

  return v12;
}

void __60__FSKitDiskArbHelper_waitForPreviousTasksToComplete_client___block_invoke(uint64_t a1, void *a2)
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __60__FSKitDiskArbHelper_waitForPreviousTasksToComplete_client___block_invoke_2;
  v6[3] = &unk_278FEE010;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v7 = v4;
  v8 = v5;
  [a2 enumerateObjectsUsingBlock:v6];
}

void __60__FSKitDiskArbHelper_waitForPreviousTasksToComplete_client___block_invoke_2(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = [v7 taskResource];
  v4 = [v3 getResourceID];
  v5 = [*(a1 + 32) getResourceID];
  v6 = [v4 isEqualToString:v5];

  if (v6)
  {
    [*(*(*(a1 + 40) + 8) + 40) addObject:v7];
  }
}

void __60__FSKitDiskArbHelper_waitForPreviousTasksToComplete_client___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if ([v5 taskState] == 3)
  {
    v7 = [v5 taskResource];
    v8 = [v7 getResourceID];
    v9 = [*(a1 + 32) getResourceID];
    v10 = [v8 isEqualToString:v9];

    if (v10)
    {
      v19 = 0;
      v20 = &v19;
      v21 = 0x3032000000;
      v22 = __Block_byref_object_copy__5;
      v23 = __Block_byref_object_dispose__5;
      v24 = 0;
      v11 = *(*(*(a1 + 48) + 8) + 40);
      v13 = MEMORY[0x277D85DD0];
      v14 = 3221225472;
      v15 = __60__FSKitDiskArbHelper_waitForPreviousTasksToComplete_client___block_invoke_4;
      v16 = &unk_278FEE010;
      v17 = v5;
      v18 = &v19;
      [v11 enumerateObjectsUsingBlock:&v13];
      if (v20[5])
      {
        [*(*(*(a1 + 48) + 8) + 40) removeObject:{v13, v14, v15, v16}];
      }

      _Block_object_dispose(&v19, 8);
    }
  }

  v12 = *(*(*(a1 + 48) + 8) + 40);
  objc_sync_enter(v12);
  if ((*(*(*(a1 + 56) + 8) + 24) & 1) == 0 && ![*(*(*(a1 + 48) + 8) + 40) count])
  {
    dispatch_group_leave(*(a1 + 40));
    *(*(*(a1 + 56) + 8) + 24) = 1;
  }

  objc_sync_exit(v12);
}

void __60__FSKitDiskArbHelper_waitForPreviousTasksToComplete_client___block_invoke_4(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v10 = a2;
  v7 = [v10 taskID];
  v8 = [*(a1 + 32) taskID];
  v9 = [v7 isEqual:v8];

  if (v9)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    *a4 = 1;
  }
}

void __60__FSKitDiskArbHelper_waitForPreviousTasksToComplete_client___block_invoke_5(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    v6 = v4;
    v5 = [v4 description];
    NSLog(&cfstr_ErrorSettingUp.isa, [v5 UTF8String]);

    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
    v4 = v6;
  }
}

void __60__FSKitDiskArbHelper_waitForPreviousTasksToComplete_client___block_invoke_6(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    v6 = v4;
    v5 = [v4 description];
    NSLog(&cfstr_ErrorSettingUp.isa, [v5 UTF8String]);

    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
    v4 = v6;
  }
}

+ (int)DAMountFSKitVolume:(id)volume deviceName:(id)name mountPoint:(id)point volumeName:(id)volumeName auditToken:(id *)token mountOptions:(id)options
{
  v97 = *MEMORY[0x277D85DE8];
  volumeCopy = volume;
  nameCopy = name;
  pointCopy = point;
  volumeNameCopy = volumeName;
  optionsCopy = options;
  v17 = fskit_std_log();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136316418;
    *&buf[4] = "+[FSKitDiskArbHelper DAMountFSKitVolume:deviceName:mountPoint:volumeName:auditToken:mountOptions:]";
    *&buf[12] = 2112;
    *&buf[14] = volumeCopy;
    *&buf[22] = 2112;
    v93 = nameCopy;
    *v94 = 2112;
    *&v94[2] = pointCopy;
    *&v94[10] = 2112;
    *&v94[12] = volumeNameCopy;
    v95 = 2112;
    v96 = optionsCopy;
    _os_log_debug_impl(&dword_24A929000, v17, OS_LOG_TYPE_DEBUG, "%s:start:fsShortName(%@):deviceName(%@):mountPoint(%@):volumeName(%@):mountOptionString(%@)", buf, 0x3Eu);
  }

  v18 = +[FSClient sharedInstance];
  v58 = objc_opt_new();
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v93 = __Block_byref_object_copy__5;
  *v94 = __Block_byref_object_dispose__5;
  *&v94[8] = 0;
  v19 = [optionsCopy containsString:@"rdonly"];
  if ([volumeCopy isEqualToString:@"passthroughfs"])
  {
    v20 = [MEMORY[0x277CBEBC0] fileURLWithPath:nameCopy];
    v21 = [FSPathURLResource secureResourceWithURL:v20 readonly:v19];
  }

  else
  {
    v21 = [FSBlockDeviceResource proxyResourceForBSDName:nameCopy isWritable:v19 ^ 1];
  }

  v22 = [FSKitDiskArbHelper waitForPreviousTasksToComplete:v21 client:v18];
  v23 = *(*&buf[8] + 40);
  *(*&buf[8] + 40) = v22;

  v24 = *(*&buf[8] + 40);
  if (v24)
  {
    code = [v24 code];
  }

  else
  {
    v83 = 0;
    v84 = &v83;
    v85 = 0x3032000000;
    v86 = __Block_byref_object_copy__5;
    v87 = __Block_byref_object_dispose__5;
    v88 = 0;
    getFileProviderID = [self getFileProviderID];
    v55 = [MEMORY[0x277D23DA8] newClientForProvider:?];
    v26 = dispatch_group_create();
    dispatch_group_enter(v26);
    v79[0] = MEMORY[0x277D85DD0];
    v79[1] = 3221225472;
    v79[2] = __98__FSKitDiskArbHelper_DAMountFSKitVolume_deviceName_mountPoint_volumeName_auditToken_mountOptions___block_invoke;
    v79[3] = &unk_278FEE060;
    v81 = buf;
    v82 = &v83;
    v27 = v26;
    v80 = v27;
    v28 = *&token->var0[4];
    *v89 = *token->var0;
    *&v89[16] = v28;
    [v18 loadResource:v21 shortName:volumeCopy options:v58 auditToken:v89 replyHandler:v79];
    v29 = dispatch_time(0, 20000000000);
    if (dispatch_group_wait(v27, v29))
    {
      v30 = fs_errorForPOSIXError(60);
      v31 = *(*&buf[8] + 40);
      *(*&buf[8] + 40) = v30;

      v32 = fskit_std_log();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        [FSKitDiskArbHelper DAMountFSKitVolume:nameCopy deviceName:&buf[8] mountPoint:? volumeName:? auditToken:? mountOptions:?];
      }
    }

    v33 = *(*&buf[8] + 40);
    if (v33)
    {
      code = [v33 code];
    }

    else
    {
      v75 = 0;
      v76 = &v75;
      v77 = 0x2020000000;
      v78 = 0;
      v34 = v84[5];
      v61[0] = MEMORY[0x277D85DD0];
      v61[1] = 3221225472;
      v61[2] = __98__FSKitDiskArbHelper_DAMountFSKitVolume_deviceName_mountPoint_volumeName_auditToken_mountOptions___block_invoke_24;
      v61[3] = &unk_278FEE0B0;
      v62 = optionsCopy;
      v53 = v18;
      v63 = v53;
      v35 = volumeCopy;
      v36 = *&token->var0[4];
      v72 = *token->var0;
      v73 = v36;
      v64 = v35;
      v70 = buf;
      v37 = nameCopy;
      v65 = v37;
      v66 = v55;
      v67 = getFileProviderID;
      v68 = 0;
      v74 = 4096;
      v69 = pointCopy;
      v71 = &v75;
      [v34 enumerateObjectsUsingBlock:v61];
      if (!v76[3])
      {
        v52 = v37;
        v38 = objc_opt_new();
        v39 = dispatch_group_create();
        dispatch_group_enter(v39);
        v59[0] = MEMORY[0x277D85DD0];
        v59[1] = 3221225472;
        v59[2] = __98__FSKitDiskArbHelper_DAMountFSKitVolume_deviceName_mountPoint_volumeName_auditToken_mountOptions___block_invoke_32;
        v59[3] = &unk_278FECF08;
        v60 = v39;
        v40 = *token->var0;
        v41 = *&token->var0[4];
        v42 = v60;
        *v89 = v40;
        *&v89[16] = v41;
        [v53 unloadResource:v21 shortName:v35 options:v38 auditToken:v89 replyHandler:v59];
        v43 = dispatch_time(0, 20000000000);
        if (dispatch_group_wait(v42, v43))
        {
          v44 = fs_errorForPOSIXError(60);
          v45 = *(*&buf[8] + 40);
          *(*&buf[8] + 40) = v44;

          v46 = fskit_std_log();
          if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
          {
            getResourceID = [v21 getResourceID];
            v51 = *(*&buf[8] + 40);
            *v89 = 136315906;
            *&v89[4] = "+[FSKitDiskArbHelper DAMountFSKitVolume:deviceName:mountPoint:volumeName:auditToken:mountOptions:]";
            *&v89[12] = 2112;
            *&v89[14] = v52;
            *&v89[22] = 2112;
            *&v89[24] = getResourceID;
            v90 = 2112;
            v91 = v51;
            _os_log_error_impl(&dword_24A929000, v46, OS_LOG_TYPE_ERROR, "%s: %@ failed to unloadResource (%@) error (%@)", v89, 0x2Au);
          }
        }
      }

      v47 = *(*&buf[8] + 40);
      if (v47)
      {
        code = [v47 code];
      }

      else
      {
        code = 0;
      }

      _Block_object_dispose(&v75, 8);
    }

    _Block_object_dispose(&v83, 8);
  }

  _Block_object_dispose(buf, 8);
  v48 = *MEMORY[0x277D85DE8];
  return code;
}

void __98__FSKitDiskArbHelper_DAMountFSKitVolume_deviceName_mountPoint_volumeName_auditToken_mountOptions___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = a3;
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
  if (v7)
  {
    v8 = fskit_std_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      __98__FSKitDiskArbHelper_DAMountFSKitVolume_deviceName_mountPoint_volumeName_auditToken_mountOptions___block_invoke_cold_1();
    }
  }

  else
  {
    objc_storeStrong((*(*(a1 + 48) + 8) + 40), a2);
  }

  dispatch_group_leave(*(a1 + 32));
}

void __98__FSKitDiskArbHelper_DAMountFSKitVolume_deviceName_mountPoint_volumeName_auditToken_mountOptions___block_invoke_24(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v74 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = objc_opt_new();
  v8 = *(a1 + 32);
  if (v8 && [v8 length])
  {
    v9 = [FSTaskOption option:@"o" value:*(a1 + 32)];
    [v7 addOption:v9];
  }

  v10 = fskit_std_log();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    __98__FSKitDiskArbHelper_DAMountFSKitVolume_deviceName_mountPoint_volumeName_auditToken_mountOptions___block_invoke_24_cold_1(v6, (a1 + 32));
  }

  v11 = dispatch_group_create();
  dispatch_group_enter(v11);
  v12 = *(a1 + 40);
  v13 = [v6 volumeID];
  v15 = a1 + 96;
  v14 = *(a1 + 96);
  v16 = *(a1 + 48);
  v67[0] = MEMORY[0x277D85DD0];
  v67[1] = 3221225472;
  v67[2] = __98__FSKitDiskArbHelper_DAMountFSKitVolume_deviceName_mountPoint_volumeName_auditToken_mountOptions___block_invoke_29;
  v67[3] = &unk_278FEE088;
  v70 = v14;
  v17 = v6;
  v68 = v17;
  v18 = v11;
  v69 = v18;
  v19 = *(a1 + 128);
  *buf = *(a1 + 112);
  *&buf[16] = v19;
  [v12 activateVolume:v13 shortName:v16 options:v7 auditToken:buf replyHandler:v67];

  v20 = dispatch_time(0, 20000000000);
  if (dispatch_group_wait(v18, v20))
  {
    v21 = fs_errorForPOSIXError(60);
    v22 = *(*v15 + 8);
    v23 = *(v22 + 40);
    *(v22 + 40) = v21;
  }

  if (*(*(*v15 + 8) + 40))
  {
    v24 = fskit_std_log();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      __98__FSKitDiskArbHelper_DAMountFSKitVolume_deviceName_mountPoint_volumeName_auditToken_mountOptions___block_invoke_24_cold_2(a1, a1 + 96);
    }

    *a4 = 1;
  }

  else
  {
    v62 = v7;
    v25 = a4;
    v26 = [v17 volumeID];
    v27 = [v26 description];

    v28 = *(a1 + 64);
    v29 = *(a1 + 48);
    v30 = [v17 volumeName];
    v31 = [v30 string];
    v32 = *(a1 + 72);
    v33 = *(a1 + 80);
    v34 = *(a1 + 88);
    v35 = *(a1 + 144);
    v36 = *(a1 + 32);
    v37 = *(a1 + 128);
    *buf = *(a1 + 112);
    *&buf[16] = v37;
    v63 = v27;
    v38 = [v28 mountVolume:v27 fileSystem:v29 displayName:v31 provider:v32 domainError:v33 on:v34 how:v35 options:v36 auditToken:buf];
    v39 = *(*(a1 + 96) + 8);
    v40 = *(v39 + 40);
    *(v39 + 40) = v38;

    if (*(*(*(a1 + 96) + 8) + 40))
    {
      v61 = v25;
      v41 = fskit_std_log();
      if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
      {
        __98__FSKitDiskArbHelper_DAMountFSKitVolume_deviceName_mountPoint_volumeName_auditToken_mountOptions___block_invoke_24_cold_3(a1, a1 + 96);
      }

      dispatch_group_enter(v18);
      v42 = *(a1 + 40);
      v43 = [v17 volumeID];
      v44 = *(a1 + 48);
      v64[0] = MEMORY[0x277D85DD0];
      v64[1] = 3221225472;
      v64[2] = __98__FSKitDiskArbHelper_DAMountFSKitVolume_deviceName_mountPoint_volumeName_auditToken_mountOptions___block_invoke_30;
      v64[3] = &unk_278FECEE0;
      v45 = v17;
      v65 = v45;
      v46 = v18;
      v66 = v46;
      v47 = *(a1 + 128);
      *buf = *(a1 + 112);
      *&buf[16] = v47;
      [v42 deactivateVolume:v43 shortName:v44 numericOptions:2 auditToken:buf replyHandler:v64];

      v48 = dispatch_time(0, 20000000000);
      v49 = dispatch_group_wait(v46, v48);
      v50 = v25;
      v7 = v62;
      if (v49)
      {
        v51 = fs_errorForPOSIXError(60);
        v52 = *(*v15 + 8);
        v53 = *(v52 + 40);
        *(v52 + 40) = v51;

        v54 = fskit_std_log();
        if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
        {
          v58 = *(a1 + 56);
          v59 = [v45 volumeID];
          v60 = *(*(*(a1 + 96) + 8) + 40);
          *buf = 136315906;
          *&buf[4] = "+[FSKitDiskArbHelper DAMountFSKitVolume:deviceName:mountPoint:volumeName:auditToken:mountOptions:]_block_invoke";
          *&buf[12] = 2112;
          *&buf[14] = v58;
          *&buf[22] = 2112;
          *&buf[24] = v59;
          v72 = 2112;
          v73 = v60;
          _os_log_error_impl(&dword_24A929000, v54, OS_LOG_TYPE_ERROR, "%s: %@ failed to deactivateVolume (%@) error (%@)", buf, 0x2Au);

          v50 = v61;
        }
      }

      *v50 = 1;

      v55 = v65;
      v56 = v63;
    }

    else
    {
      ++*(*(*(a1 + 104) + 8) + 24);
      v55 = fskit_std_log();
      if (os_log_type_enabled(v55, OS_LOG_TYPE_INFO))
      {
        *buf = 136315394;
        *&buf[4] = "+[FSKitDiskArbHelper DAMountFSKitVolume:deviceName:mountPoint:volumeName:auditToken:mountOptions:]_block_invoke";
        *&buf[12] = 2112;
        v56 = v63;
        *&buf[14] = v63;
        _os_log_impl(&dword_24A929000, v55, OS_LOG_TYPE_INFO, "%s: Mounted %@ successfully.", buf, 0x16u);
      }

      else
      {
        v56 = v63;
      }

      v7 = v62;
    }
  }

  v57 = *MEMORY[0x277D85DE8];
}

void __98__FSKitDiskArbHelper_DAMountFSKitVolume_deviceName_mountPoint_volumeName_auditToken_mountOptions___block_invoke_29(uint64_t a1, void *a2)
{
  v4 = a2;
  objc_storeStrong((*(*(a1 + 48) + 8) + 40), a2);
  v5 = fskit_std_log();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG);
  if (v4)
  {
    if (v6)
    {
      __98__FSKitDiskArbHelper_DAMountFSKitVolume_deviceName_mountPoint_volumeName_auditToken_mountOptions___block_invoke_cold_1();
    }
  }

  else if (v6)
  {
    __98__FSKitDiskArbHelper_DAMountFSKitVolume_deviceName_mountPoint_volumeName_auditToken_mountOptions___block_invoke_29_cold_2(a1);
  }

  dispatch_group_leave(*(a1 + 40));
}

void __98__FSKitDiskArbHelper_DAMountFSKitVolume_deviceName_mountPoint_volumeName_auditToken_mountOptions___block_invoke_30(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = fskit_std_log();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG);
  if (v3)
  {
    if (v5)
    {
      __98__FSKitDiskArbHelper_DAMountFSKitVolume_deviceName_mountPoint_volumeName_auditToken_mountOptions___block_invoke_cold_1();
    }
  }

  else if (v5)
  {
    __98__FSKitDiskArbHelper_DAMountFSKitVolume_deviceName_mountPoint_volumeName_auditToken_mountOptions___block_invoke_30_cold_2(a1);
  }

  dispatch_group_leave(*(a1 + 40));
}

void __98__FSKitDiskArbHelper_DAMountFSKitVolume_deviceName_mountPoint_volumeName_auditToken_mountOptions___block_invoke_32(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = fskit_std_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      __98__FSKitDiskArbHelper_DAMountFSKitVolume_deviceName_mountPoint_volumeName_auditToken_mountOptions___block_invoke_cold_1();
    }
  }

  dispatch_group_leave(*(a1 + 32));
}

+ (int)DAMountUserFSVolume:(id)volume deviceName:(id)name mountPoint:(id)point volumeName:(id)volumeName mountOptions:(id)options
{
  volumeCopy = volume;
  nameCopy = name;
  pointCopy = point;
  volumeNameCopy = volumeName;
  optionsCopy = options;
  v17 = +[FSAuditToken token];
  v18 = v17;
  if (v17)
  {
    [v17 audit_token];
  }

  else
  {
    memset(v21, 0, sizeof(v21));
  }

  v19 = [self DAMountUserFSVolume:volumeCopy deviceName:nameCopy mountPoint:pointCopy volumeName:volumeNameCopy auditToken:v21 mountOptions:optionsCopy];

  return v19;
}

+ (int)DAMountUserFSVolume:(id)volume deviceName:(id)name mountPoint:(id)point volumeName:(id)volumeName auditToken:(id *)token mountOptions:(id)options
{
  v72 = *MEMORY[0x277D85DE8];
  volumeCopy = volume;
  nameCopy = name;
  pointCopy = point;
  volumeNameCopy = volumeName;
  optionsCopy = options;
  if (![volumeCopy hasSuffix:@"_fskit"])
  {
    v53 = objc_autoreleasePoolPush();
    v22 = +[stolenUSBLocalStorageClient newManager];
    v62 = [MEMORY[0x277D23DA8] newClientForProvider:@"com.apple.filesystems.UserFS.FileProvider"];
    v67 = 0;
    v56 = v22;
    self = [v22 loadVolumes:nameCopy ofType:volumeCopy withError:&v67];
    v23 = v67;
    selfCopy = self;
    if (v23)
    {
      v24 = v23;
      v25 = fskit_std_log();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        +[FSKitDiskArbHelper DAMountUserFSVolume:deviceName:mountPoint:volumeName:auditToken:mountOptions:];
      }

      v26 = v53;
    }

    else
    {
      if (!self)
      {
        v26 = v53;
        goto LABEL_8;
      }

      v65 = 0u;
      v66 = 0u;
      v63 = 0u;
      v64 = 0u;
      obj = self;
      v61 = [obj countByEnumeratingWithState:&v63 objects:v71 count:16];
      if (v61)
      {
        v59 = pointCopy;
        v60 = optionsCopy;
        v58 = volumeCopy;
        v51 = nameCopy;
        v29 = 0;
        v24 = 0;
        v57 = *v64;
        v55 = *MEMORY[0x277CCA5B8];
        while (2)
        {
          for (i = 0; i != v61; ++i)
          {
            v31 = v24;
            v32 = v29;
            if (*v64 != v57)
            {
              objc_enumerationMutation(obj);
            }

            v29 = *(*(&v63 + 1) + 8 * i);

            v33 = [v29 objectForKey:@"UUID"];
            v34 = [v29 objectForKey:@"name"];
            if (volumeNameCopy && ([volumeNameCopy isEqual:v34] & 1) == 0)
            {
              v35 = fskit_std_log();
              if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
              {
                *buf = 138412802;
                *&buf[4] = v51;
                *&buf[12] = 2112;
                *&buf[14] = volumeNameCopy;
                *&buf[22] = 2112;
                *&buf[24] = v34;
                _os_log_impl(&dword_24A929000, v35, OS_LOG_TYPE_INFO, "%@: got 2 different names from probe and userfs: p->%@  u->%@", buf, 0x20u);
              }

              if ([v34 isEqual:@"Untitled"])
              {
                v36 = volumeNameCopy;

                v34 = v36;
              }
            }

            v37 = [v29 objectForKeyedSubscript:@"how"];
            intValue = [v37 intValue];

            if ([v60 containsString:@"rdonly"])
            {
              v39 = intValue | 0x800;
            }

            else
            {
              v39 = intValue;
            }

            v40 = [v29 objectForKeyedSubscript:@"errorForDomain"];

            if (v40)
            {
              v41 = [v29 objectForKeyedSubscript:@"errorForDomain"];
              integerValue = [v41 integerValue];

              if (integerValue != -1000)
              {
                v50 = fskit_std_log();
                if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
                {
                  *buf = 134217984;
                  *&buf[4] = integerValue;
                  _os_log_error_impl(&dword_24A929000, v50, OS_LOG_TYPE_ERROR, "unsupported error code for domain: %ld", buf, 0xCu);
                }

                v24 = [MEMORY[0x277CCA9B8] errorWithDomain:v55 code:22 userInfo:0];

                v49 = obj;
                obj = v29;
                goto LABEL_47;
              }

              v43 = [MEMORY[0x277CCA9B8] errorWithDomain:v55 code:80 userInfo:0];
            }

            else
            {
              v43 = 0;
            }

            v44 = fskit_std_log();
            if (os_log_type_enabled(v44, OS_LOG_TYPE_INFO))
            {
              *buf = 138413058;
              *&buf[4] = v33;
              *&buf[12] = 2112;
              *&buf[14] = v34;
              *&buf[22] = 2112;
              *&buf[24] = v43;
              v69 = 1024;
              v70 = v39;
              _os_log_impl(&dword_24A929000, v44, OS_LOG_TYPE_INFO, "%@ mounting with name %@, error %@, and how 0x%x.", buf, 0x26u);
            }

            v45 = *&token->var0[4];
            *buf = *token->var0;
            *&buf[16] = v45;
            v24 = [v62 mountVolume:v33 fileSystem:v58 displayName:v34 provider:@"com.apple.filesystems.UserFS.FileProvider" domainError:v43 on:v59 how:v39 options:0 auditToken:buf];

            v46 = fskit_std_log();
            v47 = v46;
            if (v24)
            {
              if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412546;
                *&buf[4] = v51;
                *&buf[12] = 2112;
                *&buf[14] = v24;
                _os_log_error_impl(&dword_24A929000, v47, OS_LOG_TYPE_ERROR, "%@ mount failed with %@", buf, 0x16u);
              }

              v47 = [v56 forgetVolume:v33 withFlags:0];
              if (v47)
              {
                v48 = fskit_std_log();
                if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
                {
                  *buf = 138412546;
                  *&buf[4] = v34;
                  *&buf[12] = 2112;
                  *&buf[14] = v47;
                  _os_log_error_impl(&dword_24A929000, v48, OS_LOG_TYPE_ERROR, "unload for volume %@ failed with %@", buf, 0x16u);
                }
              }
            }

            else if (os_log_type_enabled(v46, OS_LOG_TYPE_INFO))
            {
              *buf = 138412290;
              *&buf[4] = v33;
              _os_log_impl(&dword_24A929000, v47, OS_LOG_TYPE_INFO, "Mounted %@ successfully.", buf, 0xCu);
            }
          }

          v61 = [obj countByEnumeratingWithState:&v63 objects:v71 count:16];
          if (v61)
          {
            continue;
          }

          break;
        }

        v49 = v29;
LABEL_47:
        nameCopy = v51;
        v26 = v53;

        volumeCopy = v58;
        pointCopy = v59;
        optionsCopy = v60;
      }

      else
      {
        v24 = 0;
        v26 = v53;
      }

      if (!v24)
      {
        LODWORD(self) = 0;
        goto LABEL_8;
      }
    }

    LODWORD(self) = [v24 code];

LABEL_8:
    objc_autoreleasePoolPop(v26);

    goto LABEL_9;
  }

  v19 = [MEMORY[0x277CCA900] characterSetWithCharactersInString:@"_"];
  v20 = [volumeCopy substringToIndex:{objc_msgSend(volumeCopy, "rangeOfCharacterFromSet:", v19)}];

  v21 = *&token->var0[4];
  *buf = *token->var0;
  *&buf[16] = v21;
  LODWORD(self) = [self DAMountFSKitVolume:v20 deviceName:nameCopy mountPoint:pointCopy volumeName:volumeNameCopy auditToken:buf mountOptions:optionsCopy];
  volumeCopy = v20;
LABEL_9:

  v27 = *MEMORY[0x277D85DE8];
  return self;
}

+ (void)DAMountFSKitVolume:(uint64_t)a1 deviceName:(uint64_t)a2 mountPoint:volumeName:auditToken:mountOptions:.cold.1(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v8 = *(*a2 + 40);
  OUTLINED_FUNCTION_6_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x20u);
  v7 = *MEMORY[0x277D85DE8];
}

void __98__FSKitDiskArbHelper_DAMountFSKitVolume_deviceName_mountPoint_volumeName_auditToken_mountOptions___block_invoke_cold_1()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_24A929000, v0, v1, "%s:error:%@", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x277D85DE8];
}

void __98__FSKitDiskArbHelper_DAMountFSKitVolume_deviceName_mountPoint_volumeName_auditToken_mountOptions___block_invoke_24_cold_1(void *a1, uint64_t *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = [a1 volumeName];
  v5 = [v4 string];
  v12 = [a1 volumeID];
  v13 = *a2;
  OUTLINED_FUNCTION_5_0();
  _os_log_debug_impl(v6, v7, v8, v9, v10, 0x2Au);

  v11 = *MEMORY[0x277D85DE8];
}

void __98__FSKitDiskArbHelper_DAMountFSKitVolume_deviceName_mountPoint_volumeName_auditToken_mountOptions___block_invoke_24_cold_2(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_5_1(a1, a2, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_3_3();
  OUTLINED_FUNCTION_6_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x20u);
  v7 = *MEMORY[0x277D85DE8];
}

void __98__FSKitDiskArbHelper_DAMountFSKitVolume_deviceName_mountPoint_volumeName_auditToken_mountOptions___block_invoke_24_cold_3(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_5_1(a1, a2, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_3_3();
  OUTLINED_FUNCTION_6_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x20u);
  v7 = *MEMORY[0x277D85DE8];
}

void __98__FSKitDiskArbHelper_DAMountFSKitVolume_deviceName_mountPoint_volumeName_auditToken_mountOptions___block_invoke_29_cold_2(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [*(a1 + 32) volumeID];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_5_0();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

void __98__FSKitDiskArbHelper_DAMountFSKitVolume_deviceName_mountPoint_volumeName_auditToken_mountOptions___block_invoke_30_cold_2(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [*(a1 + 32) volumeID];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_5_0();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

+ (void)DAMountUserFSVolume:deviceName:mountPoint:volumeName:auditToken:mountOptions:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_6_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

@end