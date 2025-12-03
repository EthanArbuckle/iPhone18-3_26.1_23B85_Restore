@interface MRDStreamCapacityManager
+ (id)sharedManager;
- (BOOL)willStartingPlaybackToOutputDevicesInterrupt:(id)interrupt;
- (MRDNowPlayingPlayerClient)bestStreamToInterrupt;
- (MRDStreamCapacityManager)init;
- (id)_willStartingPlaybackToOutputDevicesInterrupt:(id)interrupt;
- (id)allStreams;
- (id)allStreamsExcludingLocal;
- (id)canActivateStreamWithPlayerPath:(id)path;
- (id)description;
- (id)streamsActivelyUsingSlot;
- (id)streamsThatCountTowardsCapacity;
- (int64_t)activeStreamCount;
- (int64_t)maxStreamCapacity;
- (void)_handlePlaybackStateDidChange:(id)change;
- (void)interruptBestStreamIfNecessaryToActivateStreamWithPlayerPath:(id)path reason:(id)reason completion:(id)completion;
@end

@implementation MRDStreamCapacityManager

+ (id)sharedManager
{
  if (qword_100529238 != -1)
  {
    sub_1003A5B04();
  }

  v3 = qword_100529230;

  return v3;
}

- (MRDStreamCapacityManager)init
{
  v5.receiver = self;
  v5.super_class = MRDStreamCapacityManager;
  v2 = [(MRDStreamCapacityManager *)&v5 init];
  if (v2)
  {
    v3 = +[NSNotificationCenter defaultCenter];
    [v3 addObserver:v2 selector:"_handlePlaybackStateDidChange:" name:kMRMediaRemotePlayerIsPlayingDidChangeNotification object:0];
  }

  return v2;
}

- (id)description
{
  streamsActivelyUsingSlot = [(MRDStreamCapacityManager *)self streamsActivelyUsingSlot];
  v4 = [NSMutableString alloc];
  v5 = [streamsActivelyUsingSlot count];
  v6 = +[MRUserSettings currentSettings];
  if ([v6 reserveSlotForLocal])
  {
    v7 = @"external";
  }

  else
  {
    v7 = &stru_1004D2058;
  }

  v30 = [v4 initWithFormat:@"Currently playing %ld %@ streams (max = %ld).\n", v5, v7, -[MRDStreamCapacityManager maxStreamCapacity](self, "maxStreamCapacity")];

  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  obj = streamsActivelyUsingSlot;
  v31 = [obj countByEnumeratingWithState:&v37 objects:v42 count:16];
  if (v31)
  {
    v29 = *v38;
    do
    {
      for (i = 0; i != v31; i = i + 1)
      {
        if (*v38 != v29)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v37 + 1) + 8 * i);
        deviceInfo = [v9 deviceInfo];
        v11 = [NSMutableString alloc];
        v32 = v9;
        origin = [v9 origin];
        name = [deviceInfo name];
        deviceUID = [deviceInfo deviceUID];
        v15 = [v11 initWithFormat:@"origin %@ %@ (%@)", origin, name, deviceUID];

        groupedDevices = [deviceInfo groupedDevices];
        v17 = [groupedDevices count];

        if (v17)
        {
          [v15 appendString:@" + "];
        }

        v35 = 0u;
        v36 = 0u;
        v33 = 0u;
        v34 = 0u;
        groupedDevices2 = [deviceInfo groupedDevices];
        v19 = [groupedDevices2 countByEnumeratingWithState:&v33 objects:v41 count:16];
        if (v19)
        {
          v20 = v19;
          v21 = *v34;
          do
          {
            for (j = 0; j != v20; j = j + 1)
            {
              if (*v34 != v21)
              {
                objc_enumerationMutation(groupedDevices2);
              }

              v23 = *(*(&v33 + 1) + 8 * j);
              name2 = [v23 name];
              deviceUID2 = [v23 deviceUID];
              [v15 appendFormat:@"%@ (%@) + ", name2, deviceUID2];
            }

            v20 = [groupedDevices2 countByEnumeratingWithState:&v33 objects:v41 count:16];
          }

          while (v20);
        }

        activeContent = [v32 activeContent];
        [v30 appendFormat:@"%@ on %@\n", activeContent, v15];
      }

      v31 = [obj countByEnumeratingWithState:&v37 objects:v42 count:16];
    }

    while (v31);
  }

  return v30;
}

- (id)canActivateStreamWithPlayerPath:(id)path
{
  pathCopy = path;
  v5 = +[NSDate now];
  v6 = +[NSUUID UUID];
  uUIDString = [v6 UUIDString];

  v8 = [[NSMutableString alloc] initWithFormat:@"%@<%@>", @"canActivateStreamWithPlayerPath", uUIDString];
  v9 = v8;
  if (pathCopy)
  {
    [(__CFString *)v8 appendFormat:@" for %@", pathCopy];
  }

  v10 = _MRLogForCategory();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v63 = v9;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Request: %{public}@", buf, 0xCu);
  }

  v60[0] = _NSConcreteStackBlock;
  v60[1] = 3221225472;
  v60[2] = sub_100072350;
  v60[3] = &unk_1004B8410;
  v60[4] = self;
  v61 = &stru_1004B83C0;
  v11 = objc_retainBlock(v60);
  v58[0] = _NSConcreteStackBlock;
  v58[1] = 3221225472;
  v58[2] = sub_1000723CC;
  v58[3] = &unk_1004B8410;
  v58[4] = self;
  v59 = &stru_1004B83C0;
  v12 = objc_retainBlock(v58);
  if (((v11[2])(v11, pathCopy) & 1) == 0)
  {
    v16 = _MRLogForCategory();
    v21 = os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);
    if (pathCopy)
    {
      if (v21)
      {
        v18 = +[NSDate date];
        [v18 timeIntervalSinceDate:v5];
        *buf = 138544386;
        v63 = @"canActivateStreamWithPlayerPath";
        v64 = 2114;
        v65 = uUIDString;
        v66 = 2112;
        v67 = @"PlayerPath does not take up a slot thus is always allowed to activate";
        v68 = 2114;
        v69 = pathCopy;
        v70 = 2048;
        v71 = v22;
        v20 = "Response: %{public}@<%{public}@> returned <%@> for %{public}@ in %.4lf seconds";
        goto LABEL_14;
      }

LABEL_35:
      v28 = 0;
      goto LABEL_36;
    }

    if (!v21)
    {
      goto LABEL_35;
    }

    v18 = +[NSDate date];
    [v18 timeIntervalSinceDate:v5];
    *buf = 138544130;
    v63 = @"canActivateStreamWithPlayerPath";
    v64 = 2114;
    v65 = uUIDString;
    v66 = 2112;
    v67 = @"PlayerPath does not take up a slot thus is always allowed to activate";
    v68 = 2048;
    v69 = v31;
    v20 = "Response: %{public}@<%{public}@> returned <%@> in %.4lf seconds";
LABEL_32:
    v23 = v16;
    v24 = 42;
    goto LABEL_33;
  }

  remainingStreamCapacity = [(MRDStreamCapacityManager *)self remainingStreamCapacity];
  v14 = (v12[2])(v12, pathCopy);
  v15 = v14;
  if (remainingStreamCapacity >= 1)
  {
    if (v14)
    {
      v16 = _MRLogForCategory();
      v17 = os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);
      if (pathCopy)
      {
        if (v17)
        {
          v18 = +[NSDate date];
          [v18 timeIntervalSinceDate:v5];
          *buf = 138544386;
          v63 = @"canActivateStreamWithPlayerPath";
          v64 = 2114;
          v65 = uUIDString;
          v66 = 2112;
          v67 = @"PlayerPath is already active";
          v68 = 2114;
          v69 = pathCopy;
          v70 = 2048;
          v71 = v19;
          v20 = "Response: %{public}@<%{public}@> returned <%@> for %{public}@ in %.4lf seconds";
LABEL_14:
          v23 = v16;
          v24 = 52;
LABEL_33:
          _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, v20, buf, v24);
          goto LABEL_34;
        }

        goto LABEL_35;
      }

      if (!v17)
      {
        goto LABEL_35;
      }

      v18 = +[NSDate date];
      [v18 timeIntervalSinceDate:v5];
      *buf = 138544130;
      v63 = @"canActivateStreamWithPlayerPath";
      v64 = 2114;
      v65 = uUIDString;
      v66 = 2112;
      v67 = @"PlayerPath is already active";
      v68 = 2048;
      v69 = v45;
      v20 = "Response: %{public}@<%{public}@> returned <%@> in %.4lf seconds";
      goto LABEL_32;
    }

    v16 = [[NSString alloc] initWithFormat:@"Number of currently activeStreams (%ld) is less that capacity (%ld) so allowing activation", -[MRDStreamCapacityManager activeStreamCount](self, "activeStreamCount"), -[MRDStreamCapacityManager maxStreamCapacity](self, "maxStreamCapacity")];
    v18 = _MRLogForCategory();
    v32 = os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT);
    if (v16)
    {
      if (pathCopy)
      {
        if (!v32)
        {
LABEL_34:

          goto LABEL_35;
        }

        v33 = +[NSDate date];
        [v33 timeIntervalSinceDate:v5];
        *buf = 138544386;
        v63 = @"canActivateStreamWithPlayerPath";
        v64 = 2114;
        v65 = uUIDString;
        v66 = 2112;
        v67 = v16;
        v68 = 2114;
        v69 = pathCopy;
        v70 = 2048;
        v71 = v34;
        v35 = "Response: %{public}@<%{public}@> returned <%@> for %{public}@ in %.4lf seconds";
        v36 = v18;
        v37 = 52;
LABEL_58:
        _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, v35, buf, v37);

        goto LABEL_34;
      }

      if (!v32)
      {
        goto LABEL_34;
      }

      v33 = +[NSDate date];
      [v33 timeIntervalSinceDate:v5];
      *buf = 138544130;
      v63 = @"canActivateStreamWithPlayerPath";
      v64 = 2114;
      v65 = uUIDString;
      v66 = 2112;
      v67 = v16;
      v68 = 2048;
      v69 = v48;
      v35 = "Response: %{public}@<%{public}@> returned <%@> in %.4lf seconds";
    }

    else
    {
      if (!pathCopy)
      {
        if (!v32)
        {
          goto LABEL_34;
        }

        v33 = +[NSDate date];
        [v33 timeIntervalSinceDate:v5];
        *buf = 138543874;
        v63 = @"canActivateStreamWithPlayerPath";
        v64 = 2114;
        v65 = uUIDString;
        v66 = 2048;
        v67 = v56;
        v35 = "Response: %{public}@<%{public}@> returned in %.4lf seconds";
        v36 = v18;
        v37 = 32;
        goto LABEL_58;
      }

      if (!v32)
      {
        goto LABEL_34;
      }

      v33 = +[NSDate date];
      [v33 timeIntervalSinceDate:v5];
      *buf = 138544130;
      v63 = @"canActivateStreamWithPlayerPath";
      v64 = 2114;
      v65 = uUIDString;
      v66 = 2114;
      v67 = pathCopy;
      v68 = 2048;
      v69 = v47;
      v35 = "Response: %{public}@<%{public}@> returned for %{public}@ in %.4lf seconds";
    }

    v36 = v18;
    v37 = 42;
    goto LABEL_58;
  }

  v25 = [NSError alloc];
  v26 = [(MRDStreamCapacityManager *)self description];
  v27 = v26;
  if (!v15)
  {
    v28 = [v25 initWithMRError:46 description:v26];

    v38 = _MRLogForCategory();
    v16 = v38;
    if (v28)
    {
      v39 = os_log_type_enabled(v38, OS_LOG_TYPE_ERROR);
      if (pathCopy)
      {
        if (!v39)
        {
          goto LABEL_36;
        }

        goto LABEL_29;
      }

      if (!v39)
      {
        goto LABEL_36;
      }

LABEL_54:
      v40 = +[NSDate date];
      [v40 timeIntervalSinceDate:v5];
      *buf = 138544130;
      v63 = @"canActivateStreamWithPlayerPath";
      v64 = 2114;
      v65 = uUIDString;
      v66 = 2114;
      v67 = v28;
      v68 = 2048;
      v69 = v55;
      v42 = "Response: %{public}@<%{public}@> returned with error <%{public}@> in %.4lf seconds";
      v43 = v16;
      v44 = 42;
      goto LABEL_55;
    }

    v50 = os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT);
    if (pathCopy)
    {
      if (!v50)
      {
        goto LABEL_36;
      }

      goto LABEL_50;
    }

    if (!v50)
    {
      goto LABEL_36;
    }

LABEL_62:
    v40 = +[NSDate date];
    [v40 timeIntervalSinceDate:v5];
    *buf = 138543874;
    v63 = @"canActivateStreamWithPlayerPath";
    v64 = 2114;
    v65 = uUIDString;
    v66 = 2048;
    v67 = v57;
    v52 = "Response: %{public}@<%{public}@> returned in %.4lf seconds";
    v53 = v16;
    v54 = 32;
    goto LABEL_63;
  }

  v28 = [v25 initWithMRError:46 format:{@"Already above max capacity. %@", v26}];

  v29 = _MRLogForCategory();
  v16 = v29;
  if (!v28)
  {
    v49 = os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT);
    if (pathCopy)
    {
      if (!v49)
      {
        goto LABEL_36;
      }

LABEL_50:
      v40 = +[NSDate date];
      [v40 timeIntervalSinceDate:v5];
      *buf = 138544130;
      v63 = @"canActivateStreamWithPlayerPath";
      v64 = 2114;
      v65 = uUIDString;
      v66 = 2114;
      v67 = pathCopy;
      v68 = 2048;
      v69 = v51;
      v52 = "Response: %{public}@<%{public}@> returned for %{public}@ in %.4lf seconds";
      v53 = v16;
      v54 = 42;
LABEL_63:
      _os_log_impl(&_mh_execute_header, v53, OS_LOG_TYPE_DEFAULT, v52, buf, v54);
      goto LABEL_64;
    }

    if (!v49)
    {
      goto LABEL_36;
    }

    goto LABEL_62;
  }

  v30 = os_log_type_enabled(v29, OS_LOG_TYPE_ERROR);
  if (!pathCopy)
  {
    if (!v30)
    {
      goto LABEL_36;
    }

    goto LABEL_54;
  }

  if (!v30)
  {
    goto LABEL_36;
  }

LABEL_29:
  v40 = +[NSDate date];
  [v40 timeIntervalSinceDate:v5];
  *buf = 138544386;
  v63 = @"canActivateStreamWithPlayerPath";
  v64 = 2114;
  v65 = uUIDString;
  v66 = 2114;
  v67 = v28;
  v68 = 2114;
  v69 = pathCopy;
  v70 = 2048;
  v71 = v41;
  v42 = "Response: %{public}@<%{public}@> returned with error <%{public}@> for %{public}@ in %.4lf seconds";
  v43 = v16;
  v44 = 52;
LABEL_55:
  _os_log_error_impl(&_mh_execute_header, v43, OS_LOG_TYPE_ERROR, v42, buf, v44);
LABEL_64:

LABEL_36:

  return v28;
}

- (void)interruptBestStreamIfNecessaryToActivateStreamWithPlayerPath:(id)path reason:(id)reason completion:(id)completion
{
  pathCopy = path;
  reasonCopy = reason;
  completionCopy = completion;
  v11 = +[NSDate date];
  v12 = +[NSUUID UUID];
  uUIDString = [v12 UUIDString];

  v14 = [[NSMutableString alloc] initWithFormat:@"%@<%@>", @"interruptBestStreamIfNecessaryToActivateStreamWithPlayerPath", uUIDString];
  v15 = v14;
  if (pathCopy)
  {
    [v14 appendFormat:@" for %@", pathCopy];
  }

  if (reasonCopy)
  {
    [v15 appendFormat:@" because %@", reasonCopy];
  }

  v16 = _MRLogForCategory();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v49 = v15;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Request: %{public}@", buf, 0xCu);
  }

  v42[0] = _NSConcreteStackBlock;
  v42[1] = 3221225472;
  v42[2] = sub_100072898;
  v42[3] = &unk_1004B8438;
  v17 = pathCopy;
  v43 = v17;
  v44 = @"interruptBestStreamIfNecessaryToActivateStreamWithPlayerPath";
  v18 = uUIDString;
  v45 = v18;
  v19 = v11;
  v46 = v19;
  v20 = completionCopy;
  v47 = v20;
  v21 = objc_retainBlock(v42);
  v22 = [(MRDStreamCapacityManager *)self canActivateStreamWithPlayerPath:v17];
  if (v22)
  {
    bestStreamToInterrupt = [(MRDStreamCapacityManager *)self bestStreamToInterrupt];
    if (bestStreamToInterrupt)
    {
      v35 = v19;
      v36 = v18;
      v24 = [MRNowPlayingRequest alloc];
      [bestStreamToInterrupt playerPath];
      v26 = v25 = reasonCopy;
      v27 = [v24 initWithPlayerPath:v26];

      v28 = objc_alloc_init(NSMutableDictionary);
      v37 = v25;
      v29 = [[NSString alloc] initWithFormat:@"%@<%@>", @"interruptBestStreamIfNecessaryToActivateStreamWithPlayerPath", v25];
      [v28 setObject:v29 forKeyedSubscript:kMRMediaRemoteOptionRemoteControlInterfaceIdentifier];

      v30 = +[NSThread currentThread];
      threadDictionary = [v30 threadDictionary];
      v32 = [threadDictionary objectForKeyedSubscript:@"migrateRequest"];

      if (v32)
      {
        v33 = [v32 startEvent:@"SendPause" role:5];
      }

      else
      {
        v33 = 0;
      }

      v38[0] = _NSConcreteStackBlock;
      v38[1] = 3221225472;
      v38[2] = sub_100072C10;
      v38[3] = &unk_1004B8460;
      v39 = v32;
      v41 = v33;
      v40 = v21;
      v34 = v32;
      [v27 sendCommand:1 options:v28 queue:&_dispatch_main_q completion:v38];

      v18 = v36;
      reasonCopy = v37;
      v19 = v35;
    }

    else
    {
      v27 = [[NSError alloc] initWithMRError:29 description:@"Could not find a best stream to interrupt"];
      (v21[2])(v21, 0, v27);
    }
  }

  else
  {
    (v21[2])(v21, 0, 0);
  }
}

- (MRDNowPlayingPlayerClient)bestStreamToInterrupt
{
  v3 = +[NSDate date];
  v4 = +[NSUUID UUID];
  uUIDString = [v4 UUIDString];

  v6 = [[NSMutableString alloc] initWithFormat:@"%@<%@>", @"bestStreamToInterrupt", uUIDString];
  v7 = _MRLogForCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v21 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Request: %{public}@", buf, 0xCu);
  }

  allStreamsExcludingLocal = [(MRDStreamCapacityManager *)self allStreamsExcludingLocal];
  v9 = [allStreamsExcludingLocal msv_compactMap:&stru_1004B84A0];

  v10 = [v9 sortedArrayUsingComparator:&stru_1004B84E0];
  firstObject = [v10 firstObject];

  playerPath = [firstObject playerPath];

  v13 = _MRLogForCategory();
  v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
  if (playerPath)
  {
    if (!v14)
    {
      goto LABEL_9;
    }

    playerPath2 = [firstObject playerPath];
    v16 = +[NSDate date];
    [v16 timeIntervalSinceDate:v3];
    *buf = 138544130;
    v21 = @"bestStreamToInterrupt";
    v22 = 2114;
    v23 = uUIDString;
    v24 = 2112;
    v25 = playerPath2;
    v26 = 2048;
    v27 = v17;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Response: %{public}@<%{public}@> returned <%@> in %.4lf seconds", buf, 0x2Au);
  }

  else
  {
    if (!v14)
    {
      goto LABEL_9;
    }

    playerPath2 = +[NSDate date];
    [playerPath2 timeIntervalSinceDate:v3];
    *buf = 138543874;
    v21 = @"bestStreamToInterrupt";
    v22 = 2114;
    v23 = uUIDString;
    v24 = 2048;
    v25 = v18;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Response: %{public}@<%{public}@> returned in %.4lf seconds", buf, 0x20u);
  }

LABEL_9:

  return firstObject;
}

- (id)_willStartingPlaybackToOutputDevicesInterrupt:(id)interrupt
{
  interruptCopy = interrupt;
  if ([(MRDStreamCapacityManager *)self remainingStreamCapacity]< 1)
  {
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    streamsThatCountTowardsCapacity = [(MRDStreamCapacityManager *)self streamsThatCountTowardsCapacity];
    v10 = [streamsThatCountTowardsCapacity countByEnumeratingWithState:&v33 objects:v38 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v34;
      v27 = streamsThatCountTowardsCapacity;
      v28 = interruptCopy;
      v26 = *v34;
      do
      {
        for (i = 0; i != v11; i = i + 1)
        {
          if (*v34 != v12)
          {
            objc_enumerationMutation(streamsThatCountTowardsCapacity);
          }

          v14 = *(*(&v33 + 1) + 8 * i);
          if ([v14 containsActiveStream])
          {
            deviceInfo = [v14 deviceInfo];
            v29 = 0u;
            v30 = 0u;
            v31 = 0u;
            v32 = 0u;
            v16 = interruptCopy;
            v17 = [v16 countByEnumeratingWithState:&v29 objects:v37 count:16];
            if (v17)
            {
              v18 = v17;
              v19 = *v30;
              while (2)
              {
                for (j = 0; j != v18; j = j + 1)
                {
                  if (*v30 != v19)
                  {
                    objc_enumerationMutation(v16);
                  }

                  v21 = *(*(&v29 + 1) + 8 * j);
                  if ([deviceInfo containsDevice:v21])
                  {
                    v22 = [NSString alloc];
                    activeContent = [v14 activeContent];
                    v24 = [v22 initWithFormat:@"Already playing <%@> to specified device <%@>", activeContent, v21];

                    v8 = [[MSVPair alloc] initWithFirst:&__kCFBooleanFalse second:v24];
                    interruptCopy = v28;
                    goto LABEL_23;
                  }
                }

                v18 = [v16 countByEnumeratingWithState:&v29 objects:v37 count:16];
                if (v18)
                {
                  continue;
                }

                break;
              }
            }

            streamsThatCountTowardsCapacity = v27;
            interruptCopy = v28;
            v12 = v26;
          }
        }

        v11 = [streamsThatCountTowardsCapacity countByEnumeratingWithState:&v33 objects:v38 count:16];
      }

      while (v11);
    }

    v5 = [(MRDStreamCapacityManager *)self description];
    v6 = [MSVPair alloc];
    v7 = &__kCFBooleanTrue;
  }

  else
  {
    v5 = [[NSString alloc] initWithFormat:@"Number of currently activeStreams (%ld) is less that capacity (%ld).", -[MRDStreamCapacityManager activeStreamCount](self, "activeStreamCount"), -[MRDStreamCapacityManager maxStreamCapacity](self, "maxStreamCapacity")];
    v6 = [MSVPair alloc];
    v7 = &__kCFBooleanFalse;
  }

  v8 = [v6 initWithFirst:v7 second:v5];

LABEL_23:

  return v8;
}

- (BOOL)willStartingPlaybackToOutputDevicesInterrupt:(id)interrupt
{
  interruptCopy = interrupt;
  v5 = +[NSDate date];
  v6 = +[NSUUID UUID];
  uUIDString = [v6 UUIDString];

  v8 = [[NSMutableString alloc] initWithFormat:@"%@<%@>", @"willStartingPlaybackToOutputDevicesInterrupt", uUIDString];
  v9 = v8;
  if (interruptCopy)
  {
    [(__CFString *)v8 appendFormat:@" for %@", interruptCopy];
  }

  v10 = _MRLogForCategory();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v35 = v9;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Request: %{public}@", buf, 0xCu);
  }

  v11 = [(MRDStreamCapacityManager *)self _willStartingPlaybackToOutputDevicesInterrupt:interruptCopy];
  v12 = _MRLogForCategory();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    second = [v11 second];
    *buf = 138543874;
    v35 = @"willStartingPlaybackToOutputDevicesInterrupt";
    v36 = 2114;
    v37 = uUIDString;
    v38 = 2112;
    v39 = second;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Update: %{public}@<%{public}@> %@", buf, 0x20u);
  }

  first = [v11 first];
  v15 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [first BOOLValue]);

  v16 = _MRLogForCategory();
  v17 = os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);
  if (!v15)
  {
    if (interruptCopy)
    {
      if (!v17)
      {
        goto LABEL_21;
      }

      first2 = +[NSDate date];
      [first2 timeIntervalSinceDate:v5];
      *buf = 138544130;
      v35 = @"willStartingPlaybackToOutputDevicesInterrupt";
      v36 = 2114;
      v37 = uUIDString;
      v38 = 2114;
      v39 = interruptCopy;
      v40 = 2048;
      v41 = v25;
      v26 = "Response: %{public}@<%{public}@> returned for %{public}@ in %.4lf seconds";
      v27 = v16;
      v28 = 42;
    }

    else
    {
      if (!v17)
      {
        goto LABEL_21;
      }

      first2 = +[NSDate date];
      [first2 timeIntervalSinceDate:v5];
      *buf = 138543874;
      v35 = @"willStartingPlaybackToOutputDevicesInterrupt";
      v36 = 2114;
      v37 = uUIDString;
      v38 = 2048;
      v39 = v30;
      v26 = "Response: %{public}@<%{public}@> returned in %.4lf seconds";
      v27 = v16;
      v28 = 32;
    }

    _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, v26, buf, v28);
    goto LABEL_20;
  }

  if (interruptCopy)
  {
    if (v17)
    {
      first2 = [v11 first];
      v19 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [first2 BOOLValue]);
      v20 = +[NSDate date];
      [v20 timeIntervalSinceDate:v5];
      *buf = 138544386;
      v35 = @"willStartingPlaybackToOutputDevicesInterrupt";
      v36 = 2114;
      v37 = uUIDString;
      v38 = 2112;
      v39 = v19;
      v40 = 2114;
      v41 = interruptCopy;
      v42 = 2048;
      v43 = v21;
      v22 = "Response: %{public}@<%{public}@> returned <%@> for %{public}@ in %.4lf seconds";
      v23 = v16;
      v24 = 52;
LABEL_16:
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, v22, buf, v24);

LABEL_20:
    }
  }

  else if (v17)
  {
    first2 = [v11 first];
    v19 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [first2 BOOLValue]);
    v20 = +[NSDate date];
    [v20 timeIntervalSinceDate:v5];
    *buf = 138544130;
    v35 = @"willStartingPlaybackToOutputDevicesInterrupt";
    v36 = 2114;
    v37 = uUIDString;
    v38 = 2112;
    v39 = v19;
    v40 = 2048;
    v41 = v29;
    v22 = "Response: %{public}@<%{public}@> returned <%@> in %.4lf seconds";
    v23 = v16;
    v24 = 42;
    goto LABEL_16;
  }

LABEL_21:

  first3 = [v11 first];
  bOOLValue = [first3 BOOLValue];

  return bOOLValue;
}

- (int64_t)activeStreamCount
{
  streamsActivelyUsingSlot = [(MRDStreamCapacityManager *)self streamsActivelyUsingSlot];
  v3 = [streamsActivelyUsingSlot count];

  return v3;
}

- (int64_t)maxStreamCapacity
{
  v2 = +[MRUserSettings currentSettings];
  maxStreamCapacity = [v2 maxStreamCapacity];

  return maxStreamCapacity;
}

- (id)allStreams
{
  v2 = +[MRDMediaRemoteServer server];
  nowPlayingServer = [v2 nowPlayingServer];
  originClients = [nowPlayingServer originClients];
  v5 = [originClients msv_filter:&stru_1004B8520];

  return v5;
}

- (id)allStreamsExcludingLocal
{
  allStreams = [(MRDStreamCapacityManager *)self allStreams];
  v3 = [allStreams msv_filter:&stru_1004B8540];

  return v3;
}

- (id)streamsThatCountTowardsCapacity
{
  v3 = +[MRUserSettings currentSettings];
  reserveSlotForLocal = [v3 reserveSlotForLocal];

  if (reserveSlotForLocal)
  {
    allStreamsExcludingLocal = [(MRDStreamCapacityManager *)self allStreamsExcludingLocal];
  }

  else
  {
    allStreamsExcludingLocal = [(MRDStreamCapacityManager *)self allStreams];
    v6 = [allStreamsExcludingLocal msv_firstWhere:&stru_1004B8560];

    if (!v6)
    {
      v7 = +[MRDMediaRemoteServer server];
      nowPlayingServer = [v7 nowPlayingServer];
      localOriginClient = [nowPlayingServer localOriginClient];
      v10 = [allStreamsExcludingLocal arrayByAddingObject:localOriginClient];

      allStreamsExcludingLocal = v10;
    }
  }

  return allStreamsExcludingLocal;
}

- (id)streamsActivelyUsingSlot
{
  streamsThatCountTowardsCapacity = [(MRDStreamCapacityManager *)self streamsThatCountTowardsCapacity];
  v3 = [streamsThatCountTowardsCapacity msv_filter:&stru_1004B8580];

  return v3;
}

- (void)_handlePlaybackStateDidChange:(id)change
{
  changeCopy = change;
  userInfo = [changeCopy userInfo];
  v5 = MRGetPlayerPathFromUserInfo();

  origin = [v5 origin];
  isLocallyHosted = [origin isLocallyHosted];

  if (isLocallyHosted)
  {
    client = [v5 client];
    bundleIdentifier = [client bundleIdentifier];
    v10 = MRMediaRemoteCopyLocalDeviceAirPlayReceiverBundleID();
    v11 = [bundleIdentifier isEqualToString:v10];

    if (v11)
    {
      userInfo2 = [changeCopy userInfo];
      v13 = [userInfo2 objectForKeyedSubscript:kMRMediaRemoteNowPlayingApplicationIsPlayingUserInfoKey];
      bOOLValue = [v13 BOOLValue];

      if (bOOLValue)
      {
        v15 = [[NSString alloc] initWithFormat:@"%@ just started playing", v5];
        [(MRDStreamCapacityManager *)self interruptBestStreamIfNecessaryToActivateStreamWithPlayerPath:v5 reason:v15 completion:0];
      }
    }
  }
}

@end