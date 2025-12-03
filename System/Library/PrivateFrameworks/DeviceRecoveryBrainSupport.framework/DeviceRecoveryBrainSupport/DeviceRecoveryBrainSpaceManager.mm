@interface DeviceRecoveryBrainSpaceManager
- (DeviceRecoveryBrainSpaceManager)initWithMounts:(id)mounts userDataVolumeMountPath:(id)path updateVolumeMountPath:(id)mountPath;
- (id)freeSpaceOnMainContainerTillThreshold:(id)threshold;
- (id)getContainerDeviceNodeForVolumeAtPath:(id)path outError:(id *)error;
- (id)getFreeSpaceOnContainerForVolumeMountedAtPath:(id)path error:(id *)error;
- (id)getFreeSpaceOnDeviceForUser:(id *)user;
- (void)cleanupMobileAssets;
- (void)cleanupUpdateVolume;
- (void)deleteMobileBackupSnapshots;
- (void)performAPFSPurge;
- (void)syncVolumes;
@end

@implementation DeviceRecoveryBrainSpaceManager

- (DeviceRecoveryBrainSpaceManager)initWithMounts:(id)mounts userDataVolumeMountPath:(id)path updateVolumeMountPath:(id)mountPath
{
  mountsCopy = mounts;
  pathCopy = path;
  mountPathCopy = mountPath;
  v15.receiver = self;
  v15.super_class = DeviceRecoveryBrainSpaceManager;
  v12 = [(DeviceRecoveryBrainSpaceManager *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_systemDataVolumeMountPath, mounts);
    objc_storeStrong(&v13->_userDataVolumeMountPath, path);
    objc_storeStrong(&v13->_updateVolumeMountPath, mountPath);
  }

  return v13;
}

- (id)freeSpaceOnMainContainerTillThreshold:(id)threshold
{
  thresholdCopy = threshold;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  userDataVolumeMountPath = [(DeviceRecoveryBrainSpaceManager *)selfCopy userDataVolumeMountPath];

  if (!userDataVolumeMountPath)
  {
    v32 = DRGetLogHandle();
    [DeviceRecoveryBrainSpaceManager freeSpaceOnMainContainerTillThreshold:v32];

    v33 = [NSString stringWithFormat:@"Unable to free space on container since data volume not mounted"];
    v10 = DRCreateError(@"DeviceRecoveryError", 8, v33, @"Unable to free space on container since data volume not mounted", 0, "[DeviceRecoveryBrainSpaceManager freeSpaceOnMainContainerTillThreshold:]", "/Library/Caches/com.apple.xbs/Sources/DeviceRecovery/DeviceRecoveryBrainSupport_Framework/DeviceRecoveryBrainSpaceManager.m", 0x2Cu);
    v6 = 0;

    goto LABEL_29;
  }

  v43 = 0;
  v6 = [(DeviceRecoveryBrainSpaceManager *)selfCopy getFreeSpaceOnDeviceForUser:&v43];
  v7 = v43;
  if (v7 || !v6)
  {
    v34 = DRGetLogHandle();
    [DeviceRecoveryBrainSpaceManager freeSpaceOnMainContainerTillThreshold:v34];

    v35 = [NSString stringWithFormat:@"Initial free space query failed"];
    v10 = DRCreateError(@"DeviceRecoveryError", 18, v35, @"Initial free space query failed", v7, "[DeviceRecoveryBrainSpaceManager freeSpaceOnMainContainerTillThreshold:]", "/Library/Caches/com.apple.xbs/Sources/DeviceRecovery/DeviceRecoveryBrainSupport_Framework/DeviceRecoveryBrainSpaceManager.m", 0x32u);

    goto LABEL_29;
  }

  unsignedLongLongValue = [v6 unsignedLongLongValue];
  if (unsignedLongLongValue > [thresholdCopy unsignedLongLongValue])
  {
    v9 = DRGetLogHandle();
    obj = v9;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446210;
      v45 = "[DeviceRecoveryBrainSpaceManager freeSpaceOnMainContainerTillThreshold:]";
      _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "%{public}s: Sufficient free space already exists. Nothing to do", buf, 0xCu);
    }

    v10 = 0;
    goto LABEL_28;
  }

  v11 = NSStringFromSelector("deleteMobileBackupSnapshots");
  v49[0] = v11;
  v12 = NSStringFromSelector("cleanupUpdateVolume");
  v49[1] = v12;
  v13 = NSStringFromSelector("performAPFSPurge");
  v49[2] = v13;
  v14 = NSStringFromSelector("cleanupMobileAssets");
  v49[3] = v14;
  v15 = [NSArray arrayWithObjects:v49 count:4];

  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  obj = v15;
  v10 = [obj countByEnumeratingWithState:&v39 objects:v48 count:16];
  if (!v10)
  {
    goto LABEL_27;
  }

  v16 = *v40;
  while (2)
  {
    v17 = 0;
    v18 = v6;
    do
    {
      if (*v40 != v16)
      {
        objc_enumerationMutation(obj);
      }

      v19 = *(*(&v39 + 1) + 8 * v17);
      v20 = DRGetLogHandle();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446466;
        v45 = "[DeviceRecoveryBrainSpaceManager freeSpaceOnMainContainerTillThreshold:]";
        v46 = 2114;
        v47 = v19;
        _os_log_impl(&dword_0, v20, OS_LOG_TYPE_DEFAULT, "%{public}s: Attempting to run cleanup step %{public}@", buf, 0x16u);
      }

      v21 = NSSelectorFromString(v19);
      v22 = [(DeviceRecoveryBrainSpaceManager *)selfCopy methodSignatureForSelector:v21];
      v23 = [NSInvocation invocationWithMethodSignature:v22];

      [v23 setSelector:v21];
      [v23 setTarget:selfCopy];
      [v23 invoke];
      v38 = 0;
      v6 = [(DeviceRecoveryBrainSpaceManager *)selfCopy getFreeSpaceOnDeviceForUser:&v38];
      v24 = v38;

      if (v24 || !v6)
      {
        v31 = DRGetLogHandle();
        [DeviceRecoveryBrainSpaceManager freeSpaceOnMainContainerTillThreshold:v31];

        v28 = [NSString stringWithFormat:@"Failed to query for free space after cleanup step"];
        v10 = DRCreateError(@"DeviceRecoveryError", 18, v28, @"Failed to query for free space after cleanup step", v24, "[DeviceRecoveryBrainSpaceManager freeSpaceOnMainContainerTillThreshold:]", "/Library/Caches/com.apple.xbs/Sources/DeviceRecovery/DeviceRecoveryBrainSupport_Framework/DeviceRecoveryBrainSpaceManager.m", 0x4Eu);

LABEL_26:
        goto LABEL_27;
      }

      unsignedLongLongValue2 = [v6 unsignedLongLongValue];
      if (unsignedLongLongValue2 > [thresholdCopy unsignedLongLongValue])
      {
        v28 = DRGetLogHandle();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
        {
          unsignedLongLongValue3 = [v6 unsignedLongLongValue];
          *buf = 136446466;
          v45 = "[DeviceRecoveryBrainSpaceManager freeSpaceOnMainContainerTillThreshold:]";
          v46 = 2048;
          v47 = unsignedLongLongValue3;
          _os_log_impl(&dword_0, v28, OS_LOG_TYPE_DEFAULT, "%{public}s: Sufficient free space now availaible(%llu)", buf, 0x16u);
        }

        v10 = 0;
        goto LABEL_26;
      }

      v26 = DRGetLogHandle();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        unsignedLongLongValue4 = [v6 unsignedLongLongValue];
        *buf = 136446466;
        v45 = "[DeviceRecoveryBrainSpaceManager freeSpaceOnMainContainerTillThreshold:]";
        v46 = 2048;
        v47 = unsignedLongLongValue4;
        _os_log_impl(&dword_0, v26, OS_LOG_TYPE_DEFAULT, "%{public}s: Free space is not yet sufficient(%llu). Proceeding to next cleanup step", buf, 0x16u);
      }

      v17 = v17 + 1;
      v18 = v6;
    }

    while (v10 != v17);
    v10 = [obj countByEnumeratingWithState:&v39 objects:v48 count:16];
    if (v10)
    {
      continue;
    }

    break;
  }

LABEL_27:

LABEL_28:
LABEL_29:
  objc_sync_exit(selfCopy);

  return v10;
}

- (id)getFreeSpaceOnDeviceForUser:(id *)user
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  userDataVolumeMountPath = [(DeviceRecoveryBrainSpaceManager *)selfCopy userDataVolumeMountPath];
  v48 = 0;
  v5 = [(DeviceRecoveryBrainSpaceManager *)selfCopy getContainerDeviceNodeForVolumeAtPath:userDataVolumeMountPath outError:&v48];
  v6 = v48;

  if (!v5)
  {
    v30 = DRGetLogHandle();
    [DeviceRecoveryBrainSpaceManager getFreeSpaceOnDeviceForUser:v30];

    v11 = [NSString stringWithFormat:@"Failed to determine device node for userdata volume container"];
    v19 = DRCreateError(@"DeviceRecoveryError", 1, v11, @"Failed to determine device node for userdata volume container", v6, "[DeviceRecoveryBrainSpaceManager getFreeSpaceOnDeviceForUser:]", "/Library/Caches/com.apple.xbs/Sources/DeviceRecovery/DeviceRecoveryBrainSupport_Framework/DeviceRecoveryBrainSpaceManager.m", 0x67u);
    v41 = 0;
    v42 = 0;
    v20 = 0;
    v26 = 0;
    v8 = 0;
    goto LABEL_24;
  }

  userDataVolumeMountPath2 = [(DeviceRecoveryBrainSpaceManager *)selfCopy userDataVolumeMountPath];
  v47 = 0;
  v42 = [(DeviceRecoveryBrainSpaceManager *)selfCopy getFreeSpaceOnContainerForVolumeMountedAtPath:userDataVolumeMountPath2 error:&v47];
  v8 = v47;

  if (v8)
  {
    v31 = DRGetLogHandle();
    [DeviceRecoveryBrainSpaceManager getFreeSpaceOnDeviceForUser:v31];

    v11 = [NSString stringWithFormat:@"Unable to determine free space on userdata volume"];
    v19 = DRCreateError(@"DeviceRecoveryError", 18, v11, @"Unable to determine free space on userdata volume", v8, "[DeviceRecoveryBrainSpaceManager getFreeSpaceOnDeviceForUser:]", "/Library/Caches/com.apple.xbs/Sources/DeviceRecovery/DeviceRecoveryBrainSupport_Framework/DeviceRecoveryBrainSpaceManager.m", 0x6Cu);
    v41 = 0;
    v20 = 0;
    v26 = 0;
    goto LABEL_24;
  }

  v9 = DRGetLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v50 = "[DeviceRecoveryBrainSpaceManager getFreeSpaceOnDeviceForUser:]";
    v51 = 2114;
    v52 = v42;
    _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "%{public}s: Free space on userdata volume: %{public}@ bytes", buf, 0x16u);
  }

  systemDataVolumeMountPath = [(DeviceRecoveryBrainSpaceManager *)selfCopy systemDataVolumeMountPath];
  v46 = v6;
  v11 = [(DeviceRecoveryBrainSpaceManager *)selfCopy getContainerDeviceNodeForVolumeAtPath:systemDataVolumeMountPath outError:&v46];
  v12 = v46;

  if (!v11)
  {
    v32 = DRGetLogHandle();
    [DeviceRecoveryBrainSpaceManager getFreeSpaceOnDeviceForUser:v32];

    v16 = [NSString stringWithFormat:@"Failed to determine device node for systemdata volume container"];
    v19 = DRCreateError(@"DeviceRecoveryError", 1, v16, @"Failed to determine device node for systemdata volume container", v12, "[DeviceRecoveryBrainSpaceManager getFreeSpaceOnDeviceForUser:]", "/Library/Caches/com.apple.xbs/Sources/DeviceRecovery/DeviceRecoveryBrainSupport_Framework/DeviceRecoveryBrainSpaceManager.m", 0x74u);
    v41 = 0;
    v20 = 0;
    v26 = 0;
    v8 = 0;
    goto LABEL_23;
  }

  if ([v11 isEqualToString:v5])
  {
    v13 = DRGetLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446210;
      v50 = "[DeviceRecoveryBrainSpaceManager getFreeSpaceOnDeviceForUser:]";
      _os_log_impl(&dword_0, v13, OS_LOG_TYPE_DEFAULT, "%{public}s: Space check on system data volume not required(shared container)", buf, 0xCu);
    }

    v41 = &off_33A78;
  }

  else
  {
    systemDataVolumeMountPath2 = [(DeviceRecoveryBrainSpaceManager *)selfCopy systemDataVolumeMountPath];
    v45 = 0;
    v41 = [(DeviceRecoveryBrainSpaceManager *)selfCopy getFreeSpaceOnContainerForVolumeMountedAtPath:systemDataVolumeMountPath2 error:&v45];
    v8 = v45;

    if (v8)
    {
      v39 = DRGetLogHandle();
      [DeviceRecoveryBrainSpaceManager getFreeSpaceOnDeviceForUser:v39];

      v16 = [NSString stringWithFormat:@"Unable to determine free space on systemdata volume"];
      v19 = DRCreateError(@"DeviceRecoveryError", 18, v16, @"Unable to determine free space on systemdata volume", v8, "[DeviceRecoveryBrainSpaceManager getFreeSpaceOnDeviceForUser:]", "/Library/Caches/com.apple.xbs/Sources/DeviceRecovery/DeviceRecoveryBrainSupport_Framework/DeviceRecoveryBrainSpaceManager.m", 0x80u);
      v20 = 0;
      v26 = 0;
      goto LABEL_23;
    }

    v13 = DRGetLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446466;
      v50 = "[DeviceRecoveryBrainSpaceManager getFreeSpaceOnDeviceForUser:]";
      v51 = 2114;
      v52 = v41;
      _os_log_impl(&dword_0, v13, OS_LOG_TYPE_DEFAULT, "%{public}s: Free space on systemData volume: %{public}@ bytes", buf, 0x16u);
    }
  }

  updateVolumeMountPath = [(DeviceRecoveryBrainSpaceManager *)selfCopy updateVolumeMountPath];
  v44 = v12;
  v16 = [(DeviceRecoveryBrainSpaceManager *)selfCopy getContainerDeviceNodeForVolumeAtPath:updateVolumeMountPath outError:&v44];
  v17 = v44;

  if (!v16)
  {
    v33 = DRGetLogHandle();
    [DeviceRecoveryBrainSpaceManager getFreeSpaceOnDeviceForUser:v33];

    v34 = [NSString stringWithFormat:@"Failed to determine device node for update volume container"];
    v35 = DRCreateError(@"DeviceRecoveryError", 1, v34, @"Failed to determine device node for update volume container", v17, "[DeviceRecoveryBrainSpaceManager getFreeSpaceOnDeviceForUser:]", "/Library/Caches/com.apple.xbs/Sources/DeviceRecovery/DeviceRecoveryBrainSupport_Framework/DeviceRecoveryBrainSpaceManager.m", 0x89u);
    v20 = 0;
LABEL_39:

    v26 = 0;
    v8 = 0;
    v19 = v35;
    goto LABEL_22;
  }

  if (([v16 isEqualToString:v5] & 1) != 0 || objc_msgSend(v16, "isEqualToString:", v11))
  {
    v18 = DRGetLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446210;
      v50 = "[DeviceRecoveryBrainSpaceManager getFreeSpaceOnDeviceForUser:]";
      _os_log_impl(&dword_0, v18, OS_LOG_TYPE_DEFAULT, "%{public}s: Space check for update volume not require(shared container", buf, 0xCu);
    }

    v19 = 0;
    v20 = &off_33A78;
  }

  else
  {
    updateVolumeMountPath2 = [(DeviceRecoveryBrainSpaceManager *)selfCopy updateVolumeMountPath];
    v43 = 0;
    v20 = [(DeviceRecoveryBrainSpaceManager *)selfCopy getFreeSpaceOnContainerForVolumeMountedAtPath:updateVolumeMountPath2 error:&v43];
    v19 = v43;

    v18 = DRGetLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446466;
      v50 = "[DeviceRecoveryBrainSpaceManager getFreeSpaceOnDeviceForUser:]";
      v51 = 2114;
      v52 = v20;
      _os_log_impl(&dword_0, v18, OS_LOG_TYPE_DEFAULT, "%{public}s: Free space on update volume: %{public}@ bytes", buf, 0x16u);
    }
  }

  unsignedLongLongValue = [v42 unsignedLongLongValue];
  unsignedLongLongValue2 = [v41 unsignedLongLongValue];
  v23 = __CFADD__(unsignedLongLongValue, unsignedLongLongValue2);
  v24 = &unsignedLongLongValue2[unsignedLongLongValue];
  if (v23)
  {
    v36 = DRGetLogHandle();
    [DeviceRecoveryBrainSpaceManager getFreeSpaceOnDeviceForUser:v36];

    v34 = [NSString stringWithFormat:@"Overflow while calculating total free space"];
    v37 = DRCreateError(@"DeviceRecoveryError", 18, v34, @"Overflow while calculating total free space", 0, "[DeviceRecoveryBrainSpaceManager getFreeSpaceOnDeviceForUser:]", "/Library/Caches/com.apple.xbs/Sources/DeviceRecovery/DeviceRecoveryBrainSupport_Framework/DeviceRecoveryBrainSpaceManager.m", 0x9Bu);
LABEL_38:
    v35 = v37;

    goto LABEL_39;
  }

  unsignedLongLongValue3 = [v20 unsignedLongLongValue];
  if (__CFADD__(v24, unsignedLongLongValue3))
  {
    v38 = DRGetLogHandle();
    [DeviceRecoveryBrainSpaceManager getFreeSpaceOnDeviceForUser:v38];

    v34 = [NSString stringWithFormat:@"Overflow while calculating total free space"];
    v37 = DRCreateError(@"DeviceRecoveryError", 18, v34, @"Overflow while calculating total free space", 0, "[DeviceRecoveryBrainSpaceManager getFreeSpaceOnDeviceForUser:]", "/Library/Caches/com.apple.xbs/Sources/DeviceRecovery/DeviceRecoveryBrainSupport_Framework/DeviceRecoveryBrainSpaceManager.m", 0x9Fu);
    goto LABEL_38;
  }

  v26 = [NSNumber numberWithUnsignedLongLong:&unsignedLongLongValue3[v24]];
  v8 = 0;
LABEL_22:
  v12 = v17;
LABEL_23:

  v6 = v12;
LABEL_24:

  objc_sync_exit(selfCopy);
  if (user && v19)
  {
    v27 = v19;
    *user = v19;
  }

  return v26;
}

- (void)deleteMobileBackupSnapshots
{
  v0 = __error();
  strerror(*v0);
  OUTLINED_FUNCTION_4_2();
  OUTLINED_FUNCTION_3_0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

- (void)cleanupUpdateVolume
{
  v3 = objc_autoreleasePoolPush();
  v4 = +[NSFileManager defaultManager];
  updateVolumeMountPath = [(DeviceRecoveryBrainSpaceManager *)self updateVolumeMountPath];

  if (updateVolumeMountPath)
  {
    v37 = updateVolumeMountPath;
    v38 = v3;
    updateVolumeMountPath2 = [(DeviceRecoveryBrainSpaceManager *)self updateVolumeMountPath];
    v40 = v4;
    v7 = [v4 enumeratorAtPath:updateVolumeMountPath2];

    v8 = objc_alloc_init(NSMutableArray);
    v46 = 0u;
    v47 = 0u;
    v48 = 0u;
    v49 = 0u;
    v9 = v7;
    v10 = [v9 countByEnumeratingWithState:&v46 objects:v57 count:16];
    selfCopy = self;
    if (v10)
    {
      v11 = v10;
      v12 = 0;
      v13 = *v47;
      do
      {
        for (i = 0; i != v11; i = i + 1)
        {
          if (*v47 != v13)
          {
            objc_enumerationMutation(v9);
          }

          v15 = *(*(&v46 + 1) + 8 * i);
          if (([&off_33AC0 containsObject:v15] & 1) != 0 || (objc_msgSend(v15, "hasPrefix:", @"softwareupdated.") & 1) != 0 || objc_msgSend(v15, "hasSuffix:", @"-MSUData"))
          {
            updateVolumeMountPath3 = [(DeviceRecoveryBrainSpaceManager *)self updateVolumeMountPath];
            v17 = [NSString stringWithFormat:@"/%@", v15];
            v18 = [updateVolumeMountPath3 stringByAppendingString:v17];

            [v8 addObject:v18];
            v12 = v18;
            self = selfCopy;
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v46 objects:v57 count:16];
      }

      while (v11);
    }

    else
    {
      v12 = 0;
    }

    v27 = DRGetLogHandle();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      v28 = [v8 count];
      *buf = 136446466;
      v51 = "[DeviceRecoveryBrainSpaceManager cleanupUpdateVolume]";
      v52 = 2048;
      v53 = v28;
      _os_log_impl(&dword_0, v27, OS_LOG_TYPE_DEFAULT, "%{public}s: Found %lu files/folders for deleting on the update volume", buf, 0x16u);
    }

    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    v19 = v8;
    v29 = [v19 countByEnumeratingWithState:&v42 objects:v56 count:16];
    if (v29)
    {
      v30 = v29;
      v31 = *v43;
      do
      {
        for (j = 0; j != v30; j = j + 1)
        {
          if (*v43 != v31)
          {
            objc_enumerationMutation(v19);
          }

          v33 = *(*(&v42 + 1) + 8 * j);
          v41 = 0;
          [v40 removeItemAtPath:v33 error:&v41];
          v34 = v41;
          v35 = DRGetLogHandle();
          v36 = v35;
          if (v34)
          {
            if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
            {
              *buf = 136446722;
              v51 = "[DeviceRecoveryBrainSpaceManager cleanupUpdateVolume]";
              v52 = 2114;
              v53 = v33;
              v54 = 2114;
              v55 = v34;
              _os_log_error_impl(&dword_0, v36, OS_LOG_TYPE_ERROR, "%{public}s: Failed to remove %{public}@: %{public}@", buf, 0x20u);
            }
          }

          else
          {
            if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136446466;
              v51 = "[DeviceRecoveryBrainSpaceManager cleanupUpdateVolume]";
              v52 = 2114;
              v53 = v33;
              _os_log_impl(&dword_0, v36, OS_LOG_TYPE_DEFAULT, "%{public}s: Successfully deleted %{public}@", buf, 0x16u);
            }

            v34 = v36;
          }
        }

        v30 = [v19 countByEnumeratingWithState:&v42 objects:v56 count:16];
      }

      while (v30);
    }

    self = selfCopy;
    v4 = v40;
    updateVolumeMountPath = v37;
    v3 = v38;
  }

  else
  {
    v19 = DRGetLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      [(DeviceRecoveryBrainSpaceManager *)v19 cleanupUpdateVolume:v20];
    }

    v12 = 0;
  }

  objc_autoreleasePoolPop(v3);
  if (updateVolumeMountPath)
  {
    [(DeviceRecoveryBrainSpaceManager *)self syncVolumes];
  }
}

- (void)performAPFSPurge
{
  userDataVolumeMountPath = [(DeviceRecoveryBrainSpaceManager *)self userDataVolumeMountPath];

  v4 = DRGetLogHandle();
  v5 = v4;
  if (userDataVolumeMountPath)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf[0]) = 136446210;
      *(buf + 4) = "[DeviceRecoveryBrainSpaceManager performAPFSPurge]";
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "%{public}s: Attempting to trigger APFS purge", buf, 0xCu);
    }

    v37 = 0u;
    v36 = 0u;
    v35 = 0u;
    v34 = 0u;
    v33 = 0u;
    v32 = 0u;
    v31 = 0u;
    v30 = 0u;
    v29 = 0u;
    *&buf[1] = 0u;
    buf[0] = 256;
    userDataVolumeMountPath2 = [(DeviceRecoveryBrainSpaceManager *)self userDataVolumeMountPath];
    v7 = fsctl([userDataVolumeMountPath2 fileSystemRepresentation], 0xC0A84A6EuLL, buf, 0);

    v8 = DRGetLogHandle();
    v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
    if (v7)
    {
      if (v9)
      {
        v10 = __error();
        v11 = strerror(*v10);
        v22 = 136446466;
        v23 = "[DeviceRecoveryBrainSpaceManager performAPFSPurge]";
        v24 = 2082;
        v25 = v11;
        v12 = "%{public}s: APFS purge failed: %{public}s";
        v13 = v8;
        v14 = 22;
LABEL_12:
        _os_log_impl(&dword_0, v13, OS_LOG_TYPE_DEFAULT, v12, &v22, v14);
      }
    }

    else if (v9)
    {
      v22 = 136446722;
      v23 = "[DeviceRecoveryBrainSpaceManager performAPFSPurge]";
      v24 = 2048;
      v25 = *(&v36 + 1);
      v26 = 2048;
      v27 = v37;
      v12 = "%{public}s: APFS purge completed successfully. BytesRemoved: %llu FilesRemoved: %llu";
      v13 = v8;
      v14 = 32;
      goto LABEL_12;
    }

    [(DeviceRecoveryBrainSpaceManager *)self syncVolumes];
    return;
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    [(DeviceRecoveryBrainSpaceManager *)v5 performAPFSPurge:v15];
  }
}

- (void)cleanupMobileAssets
{
  v3 = +[NSFileManager defaultManager];
  v4 = DRGetLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446210;
    v55 = "[DeviceRecoveryBrainSpaceManager cleanupMobileAssets]";
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "%{public}s: Attempting to purge MobileAssets", buf, 0xCu);
  }

  v5 = objc_alloc_init(NSMutableArray);
  userDataVolumeMountPath = [(DeviceRecoveryBrainSpaceManager *)self userDataVolumeMountPath];

  if (userDataVolumeMountPath)
  {
    systemDataVolumeMountPath = [(DeviceRecoveryBrainSpaceManager *)self systemDataVolumeMountPath];
    v8 = [NSString stringWithFormat:@"%@/%@", systemDataVolumeMountPath, @"MobileAsset/AssetsV2"];

    [v5 addObject:v8];
  }

  updateVolumeMountPath = [(DeviceRecoveryBrainSpaceManager *)self updateVolumeMountPath];

  if (updateVolumeMountPath)
  {
    updateVolumeMountPath2 = [(DeviceRecoveryBrainSpaceManager *)self updateVolumeMountPath];
    v11 = [NSString stringWithFormat:@"%@/MobileAsset/AssetsV2", updateVolumeMountPath2];

    [v5 addObject:v11];
  }

  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  obj = v5;
  v37 = [obj countByEnumeratingWithState:&v50 objects:v62 count:16];
  if (v37)
  {
    v36 = *v51;
    do
    {
      v12 = 0;
      do
      {
        if (*v51 != v36)
        {
          objc_enumerationMutation(obj);
        }

        v39 = v12;
        v13 = *(*(&v50 + 1) + 8 * v12);
        context = objc_autoreleasePoolPush();
        v14 = DRGetLogHandle();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136446466;
          v55 = "[DeviceRecoveryBrainSpaceManager cleanupMobileAssets]";
          v56 = 2114;
          v57 = v13;
          _os_log_impl(&dword_0, v14, OS_LOG_TYPE_DEFAULT, "%{public}s: Attempting to clean MA repo at %{public}@", buf, 0x16u);
        }

        v15 = [v3 enumeratorAtPath:v13];
        v16 = objc_alloc_init(NSMutableArray);
        v46 = 0u;
        v47 = 0u;
        v48 = 0u;
        v49 = 0u;
        v40 = v15;
        v17 = [v40 countByEnumeratingWithState:&v46 objects:v61 count:16];
        if (v17)
        {
          v18 = v17;
          v19 = *v47;
          do
          {
            for (i = 0; i != v18; i = i + 1)
            {
              if (*v47 != v19)
              {
                objc_enumerationMutation(v40);
              }

              v21 = *(*(&v46 + 1) + 8 * i);
              if ([v21 containsString:@"com_apple_MobileAsset_DeviceRecoveryBrain"])
              {
                v22 = DRGetLogHandle();
                if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 136446210;
                  v55 = "[DeviceRecoveryBrainSpaceManager cleanupMobileAssets]";
                  _os_log_impl(&dword_0, v22, OS_LOG_TYPE_DEFAULT, "%{public}s: NOT deleting DeviceRecoveryBrain asset", buf, 0xCu);
                }
              }

              else
              {
                v22 = [v13 stringByAppendingPathComponent:v21];
                stringByDeletingLastPathComponent = [v22 stringByDeletingLastPathComponent];
                v24 = [stringByDeletingLastPathComponent isEqualToString:v13];

                if (v24)
                {
                  [v16 addObject:v22];
                }
              }
            }

            v18 = [v40 countByEnumeratingWithState:&v46 objects:v61 count:16];
          }

          while (v18);
        }

        v44 = 0u;
        v45 = 0u;
        v42 = 0u;
        v43 = 0u;
        v25 = v16;
        v26 = [v25 countByEnumeratingWithState:&v42 objects:v60 count:16];
        if (v26)
        {
          v27 = v26;
          v28 = *v43;
          do
          {
            for (j = 0; j != v27; j = j + 1)
            {
              if (*v43 != v28)
              {
                objc_enumerationMutation(v25);
              }

              v30 = *(*(&v42 + 1) + 8 * j);
              v31 = DRGetLogHandle();
              if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 136446466;
                v55 = "[DeviceRecoveryBrainSpaceManager cleanupMobileAssets]";
                v56 = 2114;
                v57 = v30;
                _os_log_impl(&dword_0, v31, OS_LOG_TYPE_DEFAULT, "%{public}s: Attempting to delete %{public}@", buf, 0x16u);
              }

              v41 = 0;
              [v3 removeItemAtPath:v30 error:&v41];
              v32 = v41;
              v33 = DRGetLogHandle();
              v34 = v33;
              if (v32)
              {
                if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
                {
                  *buf = 136446722;
                  v55 = "[DeviceRecoveryBrainSpaceManager cleanupMobileAssets]";
                  v56 = 2114;
                  v57 = v30;
                  v58 = 2114;
                  v59 = v32;
                  _os_log_error_impl(&dword_0, v34, OS_LOG_TYPE_ERROR, "%{public}s: Failed to delete %{public}@: %{public}@", buf, 0x20u);
                }
              }

              else if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 136446466;
                v55 = "[DeviceRecoveryBrainSpaceManager cleanupMobileAssets]";
                v56 = 2114;
                v57 = v30;
                _os_log_impl(&dword_0, v34, OS_LOG_TYPE_DEFAULT, "%{public}s: Successfully deleted %{public}@", buf, 0x16u);
              }
            }

            v27 = [v25 countByEnumeratingWithState:&v42 objects:v60 count:16];
          }

          while (v27);
        }

        objc_autoreleasePoolPop(context);
        v12 = v39 + 1;
      }

      while ((v39 + 1) != v37);
      v37 = [obj countByEnumeratingWithState:&v50 objects:v62 count:16];
    }

    while (v37);
  }
}

- (void)syncVolumes
{
  v4 = 0;
  *&v2 = 136446722;
  v13 = v2;
  do
  {
    updateVolumeMountPath = [(DeviceRecoveryBrainSpaceManager *)self updateVolumeMountPath];

    if (updateVolumeMountPath)
    {
      updateVolumeMountPath2 = [(DeviceRecoveryBrainSpaceManager *)self updateVolumeMountPath];
      v7 = sync_volume_np([updateVolumeMountPath2 fileSystemRepresentation], 3);

      if (v7)
      {
        v8 = DRGetLogHandle();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          *buf = v13;
          v15 = "[DeviceRecoveryBrainSpaceManager syncVolumes]";
          v16 = 1024;
          v17 = v7;
          v18 = 1024;
          v19 = v4;
          _os_log_error_impl(&dword_0, v8, OS_LOG_TYPE_ERROR, "%{public}s: Got error(%d) from sync_volume_np update volume call attempt %d", buf, 0x18u);
        }
      }
    }

    userDataVolumeMountPath = [(DeviceRecoveryBrainSpaceManager *)self userDataVolumeMountPath];

    if (userDataVolumeMountPath)
    {
      userDataVolumeMountPath2 = [(DeviceRecoveryBrainSpaceManager *)self userDataVolumeMountPath];
      v11 = sync_volume_np([userDataVolumeMountPath2 fileSystemRepresentation], 3);

      if (v11)
      {
        v12 = DRGetLogHandle();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          *buf = v13;
          v15 = "[DeviceRecoveryBrainSpaceManager syncVolumes]";
          v16 = 1024;
          v17 = v11;
          v18 = 1024;
          v19 = v4;
          _os_log_error_impl(&dword_0, v12, OS_LOG_TYPE_ERROR, "%{public}s: Got error(%d) from sync_volume_np update volume call attempt %d", buf, 0x18u);
        }
      }
    }

    ++v4;
  }

  while (v4 != 3);
}

- (id)getFreeSpaceOnContainerForVolumeMountedAtPath:(id)path error:(id *)error
{
  pathCopy = path;
  v21 = 0;
  v22 = 0;
  v20 = 0;
  v7 = [(DeviceRecoveryBrainSpaceManager *)self getContainerDeviceNodeForVolumeAtPath:pathCopy outError:&v20];
  v8 = v20;
  v9 = DRGetLogHandle();
  v10 = v9;
  if (!v7)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [DeviceRecoveryBrainSpaceManager getFreeSpaceOnContainerForVolumeMountedAtPath:error:];
    }

    pathCopy = [NSString stringWithFormat:@"Failed to determine device node for volume at path %@", pathCopy];
    v15 = DRCreateError(@"DeviceRecoveryError", 18, pathCopy, @"Failed to determine device node for volume at path %@", v8, "[DeviceRecoveryBrainSpaceManager getFreeSpaceOnContainerForVolumeMountedAtPath:error:]", "/Library/Caches/com.apple.xbs/Sources/DeviceRecovery/DeviceRecoveryBrainSupport_Framework/DeviceRecoveryBrainSpaceManager.m", 0x198u);
    spaceInfo = 0;
    goto LABEL_8;
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v24 = "[DeviceRecoveryBrainSpaceManager getFreeSpaceOnContainerForVolumeMountedAtPath:error:]";
    v25 = 2114;
    v26 = v7;
    _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEFAULT, "%{public}s: Attempting to get free space on container %{public}@", buf, 0x16u);
  }

  [v7 fileSystemRepresentation];
  SpaceInfo = APFSContainerGetSpaceInfo();
  if (SpaceInfo)
  {
    spaceInfo = [NSString stringWithFormat:@"Unable to determine free space on container %@: %d", v7, SpaceInfo];
    v13 = DRGetLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [DeviceRecoveryBrainSpaceManager getFreeSpaceOnContainerForVolumeMountedAtPath:error:];
    }

    pathCopy = [NSString stringWithFormat:@"%@", spaceInfo];
    v15 = DRCreateError(@"DeviceRecoveryError", 18, pathCopy, @"%@", 0, "[DeviceRecoveryBrainSpaceManager getFreeSpaceOnContainerForVolumeMountedAtPath:error:]", "/Library/Caches/com.apple.xbs/Sources/DeviceRecovery/DeviceRecoveryBrainSupport_Framework/DeviceRecoveryBrainSpaceManager.m", 0x1A1u);
LABEL_8:

    v16 = 0;
    if (error && v15)
    {
      v17 = v15;
      v16 = 0;
      *error = v15;
    }

    goto LABEL_14;
  }

  v18 = DRGetLogHandle();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446722;
    v24 = "[DeviceRecoveryBrainSpaceManager getFreeSpaceOnContainerForVolumeMountedAtPath:error:]";
    v25 = 2048;
    v26 = v21;
    v27 = 2048;
    v28 = v22;
    _os_log_impl(&dword_0, v18, OS_LOG_TYPE_DEFAULT, "%{public}s: Free space on container %llu total size: %llu", buf, 0x20u);
  }

  v16 = [NSNumber numberWithUnsignedLongLong:v21];
  v15 = 0;
  spaceInfo = &stru_30AA8;
LABEL_14:

  return v16;
}

- (id)getContainerDeviceNodeForVolumeAtPath:(id)path outError:(id *)error
{
  pathCopy = path;
  if (!pathCopy)
  {
    [DeviceRecoveryBrainSpaceManager getContainerDeviceNodeForVolumeAtPath:&v14 outError:?];
    v6 = 0;
    goto LABEL_16;
  }

  v6 = [LPStaticMedia mediaForPath:pathCopy];
  if (!v6)
  {
    [(DeviceRecoveryBrainSpaceManager *)pathCopy getContainerDeviceNodeForVolumeAtPath:&v14 outError:?];
    goto LABEL_16;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    container = [v6 container];
LABEL_8:
    v8 = container;
    if (container)
    {
      goto LABEL_9;
    }

    [(DeviceRecoveryBrainSpaceManager *)pathCopy getContainerDeviceNodeForVolumeAtPath:&v14 outError:?];
LABEL_16:
    v10 = v14;

    devNodePath = 0;
    if (error && v10)
    {
      v12 = v10;
      devNodePath = 0;
      v8 = 0;
      *error = v10;
    }

    else
    {
      v8 = 0;
    }

    goto LABEL_10;
  }

  if (![v6 isWhole])
  {
    container = [v6 wholeMediaForMedia];
    goto LABEL_8;
  }

  v8 = v6;
LABEL_9:
  devNodePath = [v8 devNodePath];
  v10 = 0;
LABEL_10:

  return devNodePath;
}

- (void)freeSpaceOnMainContainerTillThreshold:(NSObject *)a1 .cold.1(NSObject *a1)
{
  if (OUTLINED_FUNCTION_6_1(a1, __stack_chk_guard))
  {
    OUTLINED_FUNCTION_2();
    OUTLINED_FUNCTION_12();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_3_0();
    _os_log_error_impl(v1, v2, v3, v4, v5, 0x3Au);
  }
}

- (void)freeSpaceOnMainContainerTillThreshold:(NSObject *)a1 .cold.2(NSObject *a1)
{
  if (OUTLINED_FUNCTION_6_1(a1, __stack_chk_guard))
  {
    OUTLINED_FUNCTION_2();
    OUTLINED_FUNCTION_12();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_3_0();
    _os_log_error_impl(v1, v2, v3, v4, v5, 0x3Au);
  }
}

- (void)freeSpaceOnMainContainerTillThreshold:(NSObject *)a1 .cold.3(NSObject *a1)
{
  if (OUTLINED_FUNCTION_6_1(a1, __stack_chk_guard))
  {
    OUTLINED_FUNCTION_2();
    OUTLINED_FUNCTION_12();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_3_0();
    _os_log_error_impl(v1, v2, v3, v4, v5, 0x3Au);
  }
}

- (void)getFreeSpaceOnDeviceForUser:(NSObject *)a1 .cold.1(NSObject *a1)
{
  if (OUTLINED_FUNCTION_6_1(a1, __stack_chk_guard))
  {
    OUTLINED_FUNCTION_2();
    OUTLINED_FUNCTION_12();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_3_0();
    _os_log_error_impl(v1, v2, v3, v4, v5, 0x3Au);
  }
}

- (void)getFreeSpaceOnDeviceForUser:(NSObject *)a1 .cold.2(NSObject *a1)
{
  if (OUTLINED_FUNCTION_6_1(a1, __stack_chk_guard))
  {
    OUTLINED_FUNCTION_2();
    OUTLINED_FUNCTION_12();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_3_0();
    _os_log_error_impl(v1, v2, v3, v4, v5, 0x3Au);
  }
}

- (void)getFreeSpaceOnDeviceForUser:(NSObject *)a1 .cold.3(NSObject *a1)
{
  if (OUTLINED_FUNCTION_6_1(a1, __stack_chk_guard))
  {
    OUTLINED_FUNCTION_2();
    OUTLINED_FUNCTION_12();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_3_0();
    _os_log_error_impl(v1, v2, v3, v4, v5, 0x3Au);
  }
}

- (void)getFreeSpaceOnDeviceForUser:(NSObject *)a1 .cold.4(NSObject *a1)
{
  if (OUTLINED_FUNCTION_6_1(a1, __stack_chk_guard))
  {
    OUTLINED_FUNCTION_2();
    OUTLINED_FUNCTION_12();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_3_0();
    _os_log_error_impl(v1, v2, v3, v4, v5, 0x3Au);
  }
}

- (void)getFreeSpaceOnDeviceForUser:(NSObject *)a1 .cold.5(NSObject *a1)
{
  if (OUTLINED_FUNCTION_6_1(a1, __stack_chk_guard))
  {
    OUTLINED_FUNCTION_2();
    OUTLINED_FUNCTION_12();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_3_0();
    _os_log_error_impl(v1, v2, v3, v4, v5, 0x3Au);
  }
}

- (void)getFreeSpaceOnDeviceForUser:(NSObject *)a1 .cold.6(NSObject *a1)
{
  if (OUTLINED_FUNCTION_6_1(a1, __stack_chk_guard))
  {
    OUTLINED_FUNCTION_2();
    OUTLINED_FUNCTION_12();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_3_0();
    _os_log_error_impl(v1, v2, v3, v4, v5, 0x3Au);
  }
}

- (void)getFreeSpaceOnDeviceForUser:(NSObject *)a1 .cold.7(NSObject *a1)
{
  if (OUTLINED_FUNCTION_6_1(a1, __stack_chk_guard))
  {
    OUTLINED_FUNCTION_2();
    OUTLINED_FUNCTION_12();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_3_0();
    _os_log_error_impl(v1, v2, v3, v4, v5, 0x3Au);
  }
}

- (void)getFreeSpaceOnContainerForVolumeMountedAtPath:error:.cold.1()
{
  v2[0] = 136447490;
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_12();
  v3 = "";
  OUTLINED_FUNCTION_4();
  v4 = 417;
  OUTLINED_FUNCTION_5_2(&dword_0, v0, v1, "%{public}s: %{public}s: AssertMacros: %{public}s, %{public}s file: %{public}s, line: %{public}d\n", v2);
}

- (void)getFreeSpaceOnContainerForVolumeMountedAtPath:error:.cold.2()
{
  v2[0] = 136447490;
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_12();
  v3 = "";
  OUTLINED_FUNCTION_4();
  v4 = 408;
  OUTLINED_FUNCTION_5_2(&dword_0, v0, v1, "%{public}s: %{public}s: AssertMacros: %{public}s, %{public}s file: %{public}s, line: %{public}d\n", v2);
}

- (uint64_t)getContainerDeviceNodeForVolumeAtPath:(uint64_t *)a3 outError:.cold.1(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v6 = DRGetLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v17[0] = 136447490;
    OUTLINED_FUNCTION_3();
    v18 = v15;
    v19 = "volumeContainer != nil";
    v20 = v15;
    OUTLINED_FUNCTION_1();
    v21 = 453;
    OUTLINED_FUNCTION_5_2(&dword_0, v6, v16, "%{public}s: %{public}s: AssertMacros: %{public}s, %{public}s file: %{public}s, line: %{public}d\n", v17);
  }

  *a2 = [NSString stringWithFormat:@"Unable to determine container for volume at path %@", a1];
  v7 = OUTLINED_FUNCTION_10_1();
  result = DRCreateError(v7, v8, v9, v10, v11, v12, v13, 0x1C5u);
  *a3 = result;
  return result;
}

- (uint64_t)getContainerDeviceNodeForVolumeAtPath:(uint64_t *)a3 outError:.cold.2(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v6 = DRGetLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v17[0] = 136447490;
    OUTLINED_FUNCTION_3();
    v18 = v15;
    v19 = "volume";
    v20 = v15;
    OUTLINED_FUNCTION_1();
    v21 = 440;
    OUTLINED_FUNCTION_5_2(&dword_0, v6, v16, "%{public}s: %{public}s: AssertMacros: %{public}s, %{public}s file: %{public}s, line: %{public}d\n", v17);
  }

  *a2 = [NSString stringWithFormat:@"Failed to determine media for volume mounted at %@", a1];
  v7 = OUTLINED_FUNCTION_10_1();
  result = DRCreateError(v7, v8, v9, v10, v11, v12, v13, 0x1B8u);
  *a3 = result;
  return result;
}

- (uint64_t)getContainerDeviceNodeForVolumeAtPath:(void *)a1 outError:(uint64_t *)a2 .cold.3(void *a1, uint64_t *a2)
{
  v4 = DRGetLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v8 = 136447490;
    v9 = "[DeviceRecoveryBrainSpaceManager getContainerDeviceNodeForVolumeAtPath:outError:]";
    v10 = 2082;
    v11 = "[DeviceRecoveryBrainSpaceManager getContainerDeviceNodeForVolumeAtPath:outError:]";
    v12 = 2082;
    v13 = "path != nil";
    v14 = 2082;
    v15 = "";
    v16 = 2082;
    v17 = "/Library/Caches/com.apple.xbs/Sources/DeviceRecovery/DeviceRecoveryBrainSupport_Framework/DeviceRecoveryBrainSpaceManager.m";
    v18 = 1026;
    v19 = 436;
    OUTLINED_FUNCTION_5_2(&dword_0, v4, v5, "%{public}s: %{public}s: AssertMacros: %{public}s, %{public}s file: %{public}s, line: %{public}d\n", &v8);
  }

  v6 = [NSString stringWithFormat:@"Invalid argument for volume path"];
  *a1 = v6;
  result = DRCreateError(@"DeviceRecoveryError", 14, v6, @"Invalid argument for volume path", 0, "[DeviceRecoveryBrainSpaceManager getContainerDeviceNodeForVolumeAtPath:outError:]", "/Library/Caches/com.apple.xbs/Sources/DeviceRecovery/DeviceRecoveryBrainSupport_Framework/DeviceRecoveryBrainSpaceManager.m", 0x1B4u);
  *a2 = result;
  return result;
}

@end