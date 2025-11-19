@interface MRDStreamCapacityManager
+ (id)sharedManager;
- (BOOL)willStartingPlaybackToOutputDevicesInterrupt:(id)a3;
- (MRDNowPlayingPlayerClient)bestStreamToInterrupt;
- (MRDStreamCapacityManager)init;
- (id)_willStartingPlaybackToOutputDevicesInterrupt:(id)a3;
- (id)allStreams;
- (id)allStreamsExcludingLocal;
- (id)canActivateStreamWithPlayerPath:(id)a3;
- (id)description;
- (id)streamsActivelyUsingSlot;
- (id)streamsThatCountTowardsCapacity;
- (int64_t)activeStreamCount;
- (int64_t)maxStreamCapacity;
- (void)_handlePlaybackStateDidChange:(id)a3;
- (void)interruptBestStreamIfNecessaryToActivateStreamWithPlayerPath:(id)a3 reason:(id)a4 completion:(id)a5;
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
  v3 = [(MRDStreamCapacityManager *)self streamsActivelyUsingSlot];
  v4 = [NSMutableString alloc];
  v5 = [v3 count];
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
  obj = v3;
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
        v10 = [v9 deviceInfo];
        v11 = [NSMutableString alloc];
        v32 = v9;
        v12 = [v9 origin];
        v13 = [v10 name];
        v14 = [v10 deviceUID];
        v15 = [v11 initWithFormat:@"origin %@ %@ (%@)", v12, v13, v14];

        v16 = [v10 groupedDevices];
        v17 = [v16 count];

        if (v17)
        {
          [v15 appendString:@" + "];
        }

        v35 = 0u;
        v36 = 0u;
        v33 = 0u;
        v34 = 0u;
        v18 = [v10 groupedDevices];
        v19 = [v18 countByEnumeratingWithState:&v33 objects:v41 count:16];
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
                objc_enumerationMutation(v18);
              }

              v23 = *(*(&v33 + 1) + 8 * j);
              v24 = [v23 name];
              v25 = [v23 deviceUID];
              [v15 appendFormat:@"%@ (%@) + ", v24, v25];
            }

            v20 = [v18 countByEnumeratingWithState:&v33 objects:v41 count:16];
          }

          while (v20);
        }

        v26 = [v32 activeContent];
        [v30 appendFormat:@"%@ on %@\n", v26, v15];
      }

      v31 = [obj countByEnumeratingWithState:&v37 objects:v42 count:16];
    }

    while (v31);
  }

  return v30;
}

- (id)canActivateStreamWithPlayerPath:(id)a3
{
  v4 = a3;
  v5 = +[NSDate now];
  v6 = +[NSUUID UUID];
  v7 = [v6 UUIDString];

  v8 = [[NSMutableString alloc] initWithFormat:@"%@<%@>", @"canActivateStreamWithPlayerPath", v7];
  v9 = v8;
  if (v4)
  {
    [(__CFString *)v8 appendFormat:@" for %@", v4];
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
  if (((v11[2])(v11, v4) & 1) == 0)
  {
    v16 = _MRLogForCategory();
    v21 = os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);
    if (v4)
    {
      if (v21)
      {
        v18 = +[NSDate date];
        [v18 timeIntervalSinceDate:v5];
        *buf = 138544386;
        v63 = @"canActivateStreamWithPlayerPath";
        v64 = 2114;
        v65 = v7;
        v66 = 2112;
        v67 = @"PlayerPath does not take up a slot thus is always allowed to activate";
        v68 = 2114;
        v69 = v4;
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
    v65 = v7;
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

  v13 = [(MRDStreamCapacityManager *)self remainingStreamCapacity];
  v14 = (v12[2])(v12, v4);
  v15 = v14;
  if (v13 >= 1)
  {
    if (v14)
    {
      v16 = _MRLogForCategory();
      v17 = os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);
      if (v4)
      {
        if (v17)
        {
          v18 = +[NSDate date];
          [v18 timeIntervalSinceDate:v5];
          *buf = 138544386;
          v63 = @"canActivateStreamWithPlayerPath";
          v64 = 2114;
          v65 = v7;
          v66 = 2112;
          v67 = @"PlayerPath is already active";
          v68 = 2114;
          v69 = v4;
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
      v65 = v7;
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
      if (v4)
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
        v65 = v7;
        v66 = 2112;
        v67 = v16;
        v68 = 2114;
        v69 = v4;
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
      v65 = v7;
      v66 = 2112;
      v67 = v16;
      v68 = 2048;
      v69 = v48;
      v35 = "Response: %{public}@<%{public}@> returned <%@> in %.4lf seconds";
    }

    else
    {
      if (!v4)
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
        v65 = v7;
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
      v65 = v7;
      v66 = 2114;
      v67 = v4;
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
      if (v4)
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
      v65 = v7;
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
    if (v4)
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
    v65 = v7;
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
    if (v4)
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
      v65 = v7;
      v66 = 2114;
      v67 = v4;
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
  if (!v4)
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
  v65 = v7;
  v66 = 2114;
  v67 = v28;
  v68 = 2114;
  v69 = v4;
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

- (void)interruptBestStreamIfNecessaryToActivateStreamWithPlayerPath:(id)a3 reason:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = +[NSDate date];
  v12 = +[NSUUID UUID];
  v13 = [v12 UUIDString];

  v14 = [[NSMutableString alloc] initWithFormat:@"%@<%@>", @"interruptBestStreamIfNecessaryToActivateStreamWithPlayerPath", v13];
  v15 = v14;
  if (v8)
  {
    [v14 appendFormat:@" for %@", v8];
  }

  if (v9)
  {
    [v15 appendFormat:@" because %@", v9];
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
  v17 = v8;
  v43 = v17;
  v44 = @"interruptBestStreamIfNecessaryToActivateStreamWithPlayerPath";
  v18 = v13;
  v45 = v18;
  v19 = v11;
  v46 = v19;
  v20 = v10;
  v47 = v20;
  v21 = objc_retainBlock(v42);
  v22 = [(MRDStreamCapacityManager *)self canActivateStreamWithPlayerPath:v17];
  if (v22)
  {
    v23 = [(MRDStreamCapacityManager *)self bestStreamToInterrupt];
    if (v23)
    {
      v35 = v19;
      v36 = v18;
      v24 = [MRNowPlayingRequest alloc];
      [v23 playerPath];
      v26 = v25 = v9;
      v27 = [v24 initWithPlayerPath:v26];

      v28 = objc_alloc_init(NSMutableDictionary);
      v37 = v25;
      v29 = [[NSString alloc] initWithFormat:@"%@<%@>", @"interruptBestStreamIfNecessaryToActivateStreamWithPlayerPath", v25];
      [v28 setObject:v29 forKeyedSubscript:kMRMediaRemoteOptionRemoteControlInterfaceIdentifier];

      v30 = +[NSThread currentThread];
      v31 = [v30 threadDictionary];
      v32 = [v31 objectForKeyedSubscript:@"migrateRequest"];

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
      v9 = v37;
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
  v5 = [v4 UUIDString];

  v6 = [[NSMutableString alloc] initWithFormat:@"%@<%@>", @"bestStreamToInterrupt", v5];
  v7 = _MRLogForCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v21 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Request: %{public}@", buf, 0xCu);
  }

  v8 = [(MRDStreamCapacityManager *)self allStreamsExcludingLocal];
  v9 = [v8 msv_compactMap:&stru_1004B84A0];

  v10 = [v9 sortedArrayUsingComparator:&stru_1004B84E0];
  v11 = [v10 firstObject];

  v12 = [v11 playerPath];

  v13 = _MRLogForCategory();
  v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
  if (v12)
  {
    if (!v14)
    {
      goto LABEL_9;
    }

    v15 = [v11 playerPath];
    v16 = +[NSDate date];
    [v16 timeIntervalSinceDate:v3];
    *buf = 138544130;
    v21 = @"bestStreamToInterrupt";
    v22 = 2114;
    v23 = v5;
    v24 = 2112;
    v25 = v15;
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

    v15 = +[NSDate date];
    [v15 timeIntervalSinceDate:v3];
    *buf = 138543874;
    v21 = @"bestStreamToInterrupt";
    v22 = 2114;
    v23 = v5;
    v24 = 2048;
    v25 = v18;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Response: %{public}@<%{public}@> returned in %.4lf seconds", buf, 0x20u);
  }

LABEL_9:

  return v11;
}

- (id)_willStartingPlaybackToOutputDevicesInterrupt:(id)a3
{
  v4 = a3;
  if ([(MRDStreamCapacityManager *)self remainingStreamCapacity]< 1)
  {
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v9 = [(MRDStreamCapacityManager *)self streamsThatCountTowardsCapacity];
    v10 = [v9 countByEnumeratingWithState:&v33 objects:v38 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v34;
      v27 = v9;
      v28 = v4;
      v26 = *v34;
      do
      {
        for (i = 0; i != v11; i = i + 1)
        {
          if (*v34 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v33 + 1) + 8 * i);
          if ([v14 containsActiveStream])
          {
            v15 = [v14 deviceInfo];
            v29 = 0u;
            v30 = 0u;
            v31 = 0u;
            v32 = 0u;
            v16 = v4;
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
                  if ([v15 containsDevice:v21])
                  {
                    v22 = [NSString alloc];
                    v23 = [v14 activeContent];
                    v24 = [v22 initWithFormat:@"Already playing <%@> to specified device <%@>", v23, v21];

                    v8 = [[MSVPair alloc] initWithFirst:&__kCFBooleanFalse second:v24];
                    v4 = v28;
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

            v9 = v27;
            v4 = v28;
            v12 = v26;
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v33 objects:v38 count:16];
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

- (BOOL)willStartingPlaybackToOutputDevicesInterrupt:(id)a3
{
  v4 = a3;
  v5 = +[NSDate date];
  v6 = +[NSUUID UUID];
  v7 = [v6 UUIDString];

  v8 = [[NSMutableString alloc] initWithFormat:@"%@<%@>", @"willStartingPlaybackToOutputDevicesInterrupt", v7];
  v9 = v8;
  if (v4)
  {
    [(__CFString *)v8 appendFormat:@" for %@", v4];
  }

  v10 = _MRLogForCategory();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v35 = v9;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Request: %{public}@", buf, 0xCu);
  }

  v11 = [(MRDStreamCapacityManager *)self _willStartingPlaybackToOutputDevicesInterrupt:v4];
  v12 = _MRLogForCategory();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = [v11 second];
    *buf = 138543874;
    v35 = @"willStartingPlaybackToOutputDevicesInterrupt";
    v36 = 2114;
    v37 = v7;
    v38 = 2112;
    v39 = v13;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Update: %{public}@<%{public}@> %@", buf, 0x20u);
  }

  v14 = [v11 first];
  v15 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v14 BOOLValue]);

  v16 = _MRLogForCategory();
  v17 = os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);
  if (!v15)
  {
    if (v4)
    {
      if (!v17)
      {
        goto LABEL_21;
      }

      v18 = +[NSDate date];
      [v18 timeIntervalSinceDate:v5];
      *buf = 138544130;
      v35 = @"willStartingPlaybackToOutputDevicesInterrupt";
      v36 = 2114;
      v37 = v7;
      v38 = 2114;
      v39 = v4;
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

      v18 = +[NSDate date];
      [v18 timeIntervalSinceDate:v5];
      *buf = 138543874;
      v35 = @"willStartingPlaybackToOutputDevicesInterrupt";
      v36 = 2114;
      v37 = v7;
      v38 = 2048;
      v39 = v30;
      v26 = "Response: %{public}@<%{public}@> returned in %.4lf seconds";
      v27 = v16;
      v28 = 32;
    }

    _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, v26, buf, v28);
    goto LABEL_20;
  }

  if (v4)
  {
    if (v17)
    {
      v18 = [v11 first];
      v19 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v18 BOOLValue]);
      v20 = +[NSDate date];
      [v20 timeIntervalSinceDate:v5];
      *buf = 138544386;
      v35 = @"willStartingPlaybackToOutputDevicesInterrupt";
      v36 = 2114;
      v37 = v7;
      v38 = 2112;
      v39 = v19;
      v40 = 2114;
      v41 = v4;
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
    v18 = [v11 first];
    v19 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v18 BOOLValue]);
    v20 = +[NSDate date];
    [v20 timeIntervalSinceDate:v5];
    *buf = 138544130;
    v35 = @"willStartingPlaybackToOutputDevicesInterrupt";
    v36 = 2114;
    v37 = v7;
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

  v31 = [v11 first];
  v32 = [v31 BOOLValue];

  return v32;
}

- (int64_t)activeStreamCount
{
  v2 = [(MRDStreamCapacityManager *)self streamsActivelyUsingSlot];
  v3 = [v2 count];

  return v3;
}

- (int64_t)maxStreamCapacity
{
  v2 = +[MRUserSettings currentSettings];
  v3 = [v2 maxStreamCapacity];

  return v3;
}

- (id)allStreams
{
  v2 = +[MRDMediaRemoteServer server];
  v3 = [v2 nowPlayingServer];
  v4 = [v3 originClients];
  v5 = [v4 msv_filter:&stru_1004B8520];

  return v5;
}

- (id)allStreamsExcludingLocal
{
  v2 = [(MRDStreamCapacityManager *)self allStreams];
  v3 = [v2 msv_filter:&stru_1004B8540];

  return v3;
}

- (id)streamsThatCountTowardsCapacity
{
  v3 = +[MRUserSettings currentSettings];
  v4 = [v3 reserveSlotForLocal];

  if (v4)
  {
    v5 = [(MRDStreamCapacityManager *)self allStreamsExcludingLocal];
  }

  else
  {
    v5 = [(MRDStreamCapacityManager *)self allStreams];
    v6 = [v5 msv_firstWhere:&stru_1004B8560];

    if (!v6)
    {
      v7 = +[MRDMediaRemoteServer server];
      v8 = [v7 nowPlayingServer];
      v9 = [v8 localOriginClient];
      v10 = [v5 arrayByAddingObject:v9];

      v5 = v10;
    }
  }

  return v5;
}

- (id)streamsActivelyUsingSlot
{
  v2 = [(MRDStreamCapacityManager *)self streamsThatCountTowardsCapacity];
  v3 = [v2 msv_filter:&stru_1004B8580];

  return v3;
}

- (void)_handlePlaybackStateDidChange:(id)a3
{
  v16 = a3;
  v4 = [v16 userInfo];
  v5 = MRGetPlayerPathFromUserInfo();

  v6 = [v5 origin];
  v7 = [v6 isLocallyHosted];

  if (v7)
  {
    v8 = [v5 client];
    v9 = [v8 bundleIdentifier];
    v10 = MRMediaRemoteCopyLocalDeviceAirPlayReceiverBundleID();
    v11 = [v9 isEqualToString:v10];

    if (v11)
    {
      v12 = [v16 userInfo];
      v13 = [v12 objectForKeyedSubscript:kMRMediaRemoteNowPlayingApplicationIsPlayingUserInfoKey];
      v14 = [v13 BOOLValue];

      if (v14)
      {
        v15 = [[NSString alloc] initWithFormat:@"%@ just started playing", v5];
        [(MRDStreamCapacityManager *)self interruptBestStreamIfNecessaryToActivateStreamWithPlayerPath:v5 reason:v15 completion:0];
      }
    }
  }
}

@end