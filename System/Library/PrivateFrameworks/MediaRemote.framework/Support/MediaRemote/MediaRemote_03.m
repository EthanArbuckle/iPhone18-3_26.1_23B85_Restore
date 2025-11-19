void sub_100066EB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *(a1 + 40);
  v8 = *(v7 + 16);
  v9 = *(a1 + 32);
  v8(v7, a4, a5);
}

void sub_100066F50(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x2Au);
}

void sub_100067148(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 8) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_10006722C(uint64_t a1)
{
  [*(*(a1 + 32) + 8) addObject:*(a1 + 40)];
  v2 = dispatch_time(0, 60000000000);
  v3 = *(*(a1 + 32) + 16);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000672F4;
  v6[3] = &unk_1004B68F0;
  v4 = *(a1 + 40);
  v5 = *(a1 + 32);
  v7 = v4;
  v8 = v5;
  dispatch_after(v2, v3, v6);
}

id sub_1000672F4(uint64_t a1)
{
  v2 = _MRLogForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v5 = 138543362;
    v6 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Purging command: %{public}@", &v5, 0xCu);
  }

  return [*(*(a1 + 40) + 8) removeObject:*(a1 + 32)];
}

void sub_100067E1C(uint64_t a1)
{
  if (*(a1 + 48))
  {
    v2 = *(*(a1 + 32) + 8);
    if (!v2)
    {
      v3 = objc_alloc_init(NSMutableDictionary);
      v4 = *(a1 + 32);
      v5 = *(v4 + 8);
      *(v4 + 8) = v3;

      v2 = *(*(a1 + 32) + 8);
    }

    v6 = [v2 objectForKeyedSubscript:*(a1 + 40)];

    if (!v6)
    {
      v8 = [*(a1 + 48) copy];
      v7 = objc_retainBlock(v8);
      [*(*(a1 + 32) + 8) setObject:v7 forKeyedSubscript:*(a1 + 40)];
    }
  }
}

void sub_100068098(void *a1)
{
  v2 = [*(a1[4] + 8) objectForKeyedSubscript:a1[5]];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_1000692EC(uint64_t a1, void *a2, void *a3)
{
  v11 = a3;
  v5 = *(a1 + 32);
  v6 = a2;
  v7 = [v5 electedPlayer];
  v8 = [v7 client];
  v9 = [v8 bundleIdentifierHierarchy];
  v10 = [v9 containsObject:v6];

  if (v10)
  {
    [*(a1 + 40) unionSet:v11];
  }
}

void sub_10006A6FC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v6 = WeakRetained;
    [WeakRetained setNowPlayingActivityAssertionEndTimer:0];
    v2 = [v6 hasNowPlayingAssertion];
    v3 = [v6 activityController];
    v4 = v3;
    if (v2)
    {
      v5 = [v6 combinedSuppressedBundleIdentifiers];
      [v4 updateNowPlayingActivityState:1 suppressedBundleIdentifiers:v5];
    }

    else
    {
      [v3 endNowPlayingActivity];
    }

    WeakRetained = v6;
  }
}

void sub_10006A85C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) electedPlayer];
  LOBYTE(v2) = MREqualPlayerPaths();

  if ((v2 & 1) == 0)
  {
    [*(a1 + 40) setElectedPlayer:*(a1 + 32)];
    v4 = [*(a1 + 40) activityController];
    v5 = [v4 nowPlayingActivityIdentifier];

    if (v5)
    {
      v6 = [*(a1 + 40) _preferredStateForPlayerPath:*(a1 + 32)];
      v7 = [*(a1 + 40) activityController];
      v8 = [*(a1 + 40) combinedSuppressedBundleIdentifiers];
      [v7 updateNowPlayingActivityState:v6 suppressedBundleIdentifiers:v8];

      [*(a1 + 40) _clearPendingPreferredStateForPlayerPath:*(a1 + 32)];
    }

    v9 = +[MRDMediaRemoteServer server];
    v10 = [v9 MRUIClient];

    if (v10)
    {
      v11 = _MRLogForCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        sub_1003A5920(v11, v12, v13, v14, v15, v16, v17, v18);
      }

      v19 = +[MRUserSettings currentSettings];
      [v19 nowPlayingUIWakingPlayerEventAssertionDuration];
      [v10 takeAssertion:6 forReason:@"MediaRemoteUIProcessElectedPlayerChange" duration:?];
    }
  }
}

void sub_10006AA7C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [*(a1 + 40) electedPlayer];
  v3 = v2;
  if (v1 == v2)
  {
  }

  else
  {
    v4 = [v1 isEqual:v2];

    if (!v4)
    {
      return;
    }
  }

  v5 = +[MRDMediaRemoteServer server];
  v6 = [v5 MRUIClient];

  if (v6)
  {
    v7 = _MRLogForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      sub_1003A5958(v7, v8, v9, v10, v11, v12, v13, v14);
    }

    v15 = +[MRUserSettings currentSettings];
    [v15 nowPlayingUIWakingPlayerEventAssertionDuration];
    [v6 takeAssertion:6 forReason:@"MediaRemoteUIProcessElectedPlayerIsPlayingChange" duration:?];
  }
}

void sub_10006AC24(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [*(a1 + 40) electedPlayer];
  v3 = v2;
  if (v1 == v2)
  {
  }

  else
  {
    v4 = [v1 isEqual:v2];

    if (!v4)
    {
      return;
    }
  }

  v5 = +[MRDMediaRemoteServer server];
  v6 = [v5 MRUIClient];

  if (v6)
  {
    v7 = _MRLogForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      sub_1003A5990(v7, v8, v9, v10, v11, v12, v13, v14);
    }

    v15 = +[MRUserSettings currentSettings];
    [v15 nowPlayingUIWakingPlayerEventAssertionDuration];
    [v6 takeAssertion:6 forReason:@"MediaRemoteUIProcessElectedPlayerPlaybackQueueChange" duration:?];
  }
}

void sub_10006B234(uint64_t a1)
{
  v3 = [*(a1 + 40) activityController];
  v2 = [v3 currentActivitiesInfo];
  [*(a1 + 32) setUiActivitiesInfo:v2];
}

void sub_10006B414(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 2u);
}

void sub_10006B7A4(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(*(a1 + 32) + 8);
  IOHIDEventSystemClientDispatchEvent();
  v4 = *(a1 + 40);

  CFRelease(v4);
}

void sub_10006BB44(uint64_t a1)
{
  v1 = [*(a1 + 32) userState];
  v2 = [v1 dsid];
  v3 = [v2 stringValue];
  memset(v57, 0, sizeof(v57));
  CC_SHA1_Init(v57);
  v4 = v3;
  CC_SHA1_Update(v57, [v4 UTF8String], objc_msgSend(v4, "length"));

  memset(&v58[8], 0, 64);
  *v58 = 4001;
  CC_SHA1_Final(&v58[8], v57);
  v59[0] = *v58;
  v59[1] = *&v58[16];
  v59[2] = *&v58[32];
  v59[3] = *&v58[48];
  v60 = *&v58[64];
  if (*v58 > 3999)
  {
    if (*v58 > 4255)
    {
      if (*v58 == 4256)
      {
        v45 = v59 + 8;
        v46 = malloc_type_calloc(0x40uLL, 1uLL, 0x100004077774924uLL);
        v47 = v46;
        for (i = 0; i != 64; i += 2)
        {
          v49 = *v45++;
          v50 = &v46[i];
          *v50 = a0123456789abcd_0[v49 >> 4];
          v50[1] = a0123456789abcd_0[v49 & 0xF];
        }

        v17 = [NSString alloc];
        v18 = v47;
        v19 = 64;
      }

      else
      {
        if (*v58 != 4512)
        {
          goto LABEL_48;
        }

        v24 = v59 + 8;
        v25 = malloc_type_calloc(0x80uLL, 1uLL, 0x100004077774924uLL);
        v26 = v25;
        for (j = 0; j != 128; j += 2)
        {
          v28 = *v24++;
          v29 = &v25[j];
          *v29 = a0123456789abcd_0[v28 >> 4];
          v29[1] = a0123456789abcd_0[v28 & 0xF];
        }

        v17 = [NSString alloc];
        v18 = v26;
        v19 = 128;
      }
    }

    else if (*v58 == 4000)
    {
      v35 = v59 + 8;
      v36 = malloc_type_calloc(0x20uLL, 1uLL, 0x100004077774924uLL);
      v37 = v36;
      for (k = 0; k != 32; k += 2)
      {
        v39 = *v35++;
        v40 = &v36[k];
        *v40 = a0123456789abcd_0[v39 >> 4];
        v40[1] = a0123456789abcd_0[v39 & 0xF];
      }

      v17 = [NSString alloc];
      v18 = v37;
      v19 = 32;
    }

    else
    {
      if (*v58 != 4001)
      {
        goto LABEL_48;
      }

      v11 = v59 + 8;
      v12 = malloc_type_calloc(0x28uLL, 1uLL, 0x100004077774924uLL);
      v13 = v12;
      for (m = 0; m != 40; m += 2)
      {
        v15 = *v11++;
        v16 = &v12[m];
        *v16 = a0123456789abcd_0[v15 >> 4];
        v16[1] = a0123456789abcd_0[v15 & 0xF];
      }

      v17 = [NSString alloc];
      v18 = v13;
      v19 = 40;
    }
  }

  else
  {
    if (*v58 <= 2999)
    {
      if (*v58 == 1000)
      {
        v30 = *(&v59[0] + 1);
        if (*(&v59[0] + 1))
        {
          v31 = &v62;
          quot = *(&v59[0] + 1);
          do
          {
            v33 = lldiv(quot, 10);
            quot = v33.quot;
            if (v33.rem >= 0)
            {
              LOBYTE(v34) = v33.rem;
            }

            else
            {
              v34 = -v33.rem;
            }

            *v31-- = v34 + 48;
          }

          while (v33.quot);
          if (v30 < 0)
          {
            *v31 = 45;
          }

          else
          {
            ++v31;
          }

          v9 = &v63 - v31;
          v10 = v31;
          goto LABEL_52;
        }

LABEL_49:
        v52 = @"0";
        goto LABEL_47;
      }

      if (*v58 == 2000)
      {
        v5 = DWORD2(v59[0]);
        if (DWORD2(v59[0]))
        {
          v6 = 0;
          do
          {
            v7 = ldiv(v5, 10);
            v5 = v7.quot;
            if (v7.rem >= 0)
            {
              LOBYTE(v8) = v7.rem;
            }

            else
            {
              v8 = -v7.rem;
            }

            *(&v62 + v6--) = v8 + 48;
          }

          while (v7.quot);
          v9 = -v6;
          v10 = &v63 + v6;
LABEL_52:
          v51 = CFStringCreateWithBytes(0, v10, v9, 0x8000100u, 0);
          goto LABEL_46;
        }

        goto LABEL_49;
      }

LABEL_48:
      v55 = [NSAssertionHandler currentHandler:4001];
      v56 = [NSString stringWithUTF8String:"NSString * _Nonnull _MSVHashGetDigest(MSVHash)"];
      [v55 handleFailureInFunction:v56 file:@"MSVHasher+Algorithms.h" lineNumber:356 description:@"Cannot obtain digest from unknown hasher algorithm"];

      v52 = &stru_1004D2058;
      goto LABEL_47;
    }

    if (*v58 == 3000)
    {
      LODWORD(v61[0]) = bswap32(DWORD2(v59[0]));
      v41 = malloc_type_calloc(8uLL, 1uLL, 0x100004077774924uLL);
      v42 = 0;
      v43 = v41 + 1;
      do
      {
        v44 = *(v61 + v42);
        *(v43 - 1) = a0123456789abcd_0[v44 >> 4];
        *v43 = a0123456789abcd_0[v44 & 0xF];
        v43 += 2;
        ++v42;
      }

      while (v42 != 4);
      v17 = [NSString alloc];
      v18 = v41;
      v19 = 8;
    }

    else
    {
      if (*v58 != 3001)
      {
        goto LABEL_48;
      }

      v61[0] = bswap64(*(&v59[0] + 1));
      v20 = malloc_type_calloc(0x10uLL, 1uLL, 0x100004077774924uLL);
      v21 = 0;
      v22 = v20 + 1;
      do
      {
        v23 = *(v61 + v21);
        *(v22 - 1) = a0123456789abcd_0[v23 >> 4];
        *v22 = a0123456789abcd_0[v23 & 0xF];
        v22 += 2;
        ++v21;
      }

      while (v21 != 8);
      v17 = [NSString alloc];
      v18 = v20;
      v19 = 16;
    }
  }

  v51 = [v17 initWithBytesNoCopy:v18 length:v19 encoding:4 freeWhenDone:{1, 4001, *v57}];
LABEL_46:
  v52 = v51;
LABEL_47:

  v53 = [(__CFString *)v52 substringToIndex:7];
  v54 = qword_100529208;
  qword_100529208 = v53;
}

void sub_10006CA7C(id a1)
{
  v3 = +[MRSharedSettings currentSettings];
  if ([v3 supportGroupSession])
  {
    v1 = objc_alloc_init(MRDMusicUserStateCenter);
  }

  else
  {
    v1 = 0;
  }

  v2 = qword_100529218;
  qword_100529218 = v1;
}

uint64_t sub_10006DF18(uint64_t a1, void *a2)
{
  v3 = [a2 dsid];
  v4 = [v3 stringValue];
  v5 = v4;
  if (v4 == *(a1 + 32))
  {
    v6 = 1;
  }

  else
  {
    v6 = [v4 isEqual:?];
  }

  return v6;
}

void sub_10006DF88(uint64_t a1)
{
  os_unfair_lock_lock((*(a1 + 32) + 12));
  v2 = [*(a1 + 32) finishedWaitingForCloudStateDSIDs];
  [v2 addObject:*(a1 + 40)];

  v3 = [*(a1 + 32) dsidToPendingCompletionMap];
  v4 = [v3 objectForKeyedSubscript:*(a1 + 40)];

  v5 = [*(a1 + 32) dsidToPendingCompletionMap];
  [v5 setObject:0 forKeyedSubscript:*(a1 + 40)];

  if (v4)
  {
    v6 = MRGroupSessionSubsystemGetNotificationQueue();
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10006E0A8;
    block[3] = &unk_1004B6D08;
    v8 = v4;
    dispatch_async(v6, block);
  }

  os_unfair_lock_unlock((*(a1 + 32) + 12));
}

void sub_10006E0A8(uint64_t a1)
{
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v1 = *(a1 + 32);
  v2 = [v1 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v10;
    v5 = MRGroupSessionError;
    do
    {
      v6 = 0;
      do
      {
        if (*v10 != v4)
        {
          objc_enumerationMutation(v1);
        }

        v7 = *(*(&v9 + 1) + 8 * v6);
        v8 = [NSError msv_errorWithDomain:v5 code:4 debugDescription:@"No identity found for dsid.", v9];
        (*(v7 + 16))(v7, 0, v8);

        v6 = v6 + 1;
      }

      while (v3 != v6);
      v3 = [v1 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v3);
  }
}

void sub_10006F414(uint64_t a1)
{
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(a1 + 40);
        (*(*(*(&v8 + 1) + 8 * v6) + 16))(*(*(&v8 + 1) + 8 * v6));
        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }
}

void sub_1000704FC(uint64_t a1)
{
  v2 = [[ICMediaUserStateCenter alloc] initLazily];
  v3 = qword_100529220;
  qword_100529220 = v2;

  v4 = +[ICPrivacyInfo sharedPrivacyInfo];
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_1000707C0;
  v19[3] = &unk_1004B8360;
  v19[4] = *(a1 + 32);
  v5 = [v4 beginObservingPrivacyAcknowledgementForIdentifier:ICPrivacyIdentifierMusic handler:v19];
  [*(a1 + 32) setPrivacyObserver:v5];

  v6 = [MRDMediaUserState alloc];
  v7 = [qword_100529220 activeUserState];
  v8 = [(MRDMediaUserState *)v6 initWithUserState:v7];

  v9 = _MRLogForCategory();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [(MRDMediaUserState *)v8 userIdentity];
    v11 = [(MRDMediaUserState *)v8 isFullSubscriber];
    v12 = [(MRDMediaUserState *)v8 isMinor];
    v13 = [(MRDMediaUserState *)v8 identitySupportsCollaboration];
    v14 = [(MRDMediaUserState *)v8 hasAcceptedPrivacyAcknowledgement];
    v15 = [(MRDMediaUserState *)v8 groupSessionsSupportedForAccountRegion];
    v16 = [(MRDMediaUserState *)v8 hasAcceptedDisplayNameAcknowledgement];
    *buf = 138413826;
    v21 = v10;
    v22 = 1024;
    v23 = v11;
    v24 = 1024;
    v25 = v12;
    v26 = 1024;
    v27 = v13;
    v28 = 1024;
    v29 = v14;
    v30 = 1024;
    v31 = v15;
    v32 = 1024;
    v33 = v16;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "[MRDMusicUserStateCenter] IC cached state (active): i=%@, s=%{BOOL}u, m=%{BOOL}u, sc=%{BOOL}u, p=%{BOOL}u, r=%{BOOL}u, dna=%{BOOL}u", buf, 0x30u);
  }

  os_unfair_lock_lock((*(a1 + 32) + 12));
  *(*(a1 + 32) + 8) = 1;
  os_unfair_lock_unlock((*(a1 + 32) + 12));
  v17 = MRGroupSessionSubsystemGetNotificationQueue();
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_1000707C8;
  v18[3] = &unk_1004B6D08;
  v18[4] = *(a1 + 32);
  dispatch_async(v17, v18);
}

void sub_1000707C8(uint64_t a1)
{
  v2 = +[NSNotificationCenter defaultCenter];
  [v2 postNotificationName:@"MRDMusicUserStateCenterCloudStateDidUpdateNotification" object:*(a1 + 32) userInfo:0];
}

void sub_1000709B0(uint64_t a1)
{
  v2 = +[NSNotificationCenter defaultCenter];
  [v2 postNotificationName:@"MRDMusicUserStateCenterLocalStateDidUpdateNotification" object:*(a1 + 32) userInfo:0];
}

void sub_100070B70(uint64_t a1)
{
  v2 = [*(a1 + 32) localActiveUserState];
  v3 = _MRLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [v2 userIdentity];
    v6 = 138413826;
    v7 = v4;
    v8 = 1024;
    v9 = [v2 isFullSubscriber];
    v10 = 1024;
    v11 = [v2 isMinor];
    v12 = 1024;
    v13 = [v2 identitySupportsCollaboration];
    v14 = 1024;
    v15 = [v2 hasAcceptedPrivacyAcknowledgement];
    v16 = 1024;
    v17 = [v2 groupSessionsSupportedForAccountRegion];
    v18 = 1024;
    v19 = [v2 hasAcceptedDisplayNameAcknowledgement];
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[MRDMusicUserStateCenter] Cloud state changed (active): i=%@, s=%{BOOL}u, m=%{BOOL}u, sc=%{BOOL}u, p=%{BOOL}u, r=%{BOOL}u, dna=%{BOOL}u", &v6, 0x30u);
  }

  v5 = +[NSNotificationCenter defaultCenter];
  [v5 postNotificationName:@"MRDMusicUserStateCenterCloudStateDidUpdateNotification" object:*(a1 + 32) userInfo:0];
}

_DWORD *sub_100070DB4(_DWORD *result, char *__src, size_t __n)
{
  if (__src)
  {
    v3 = __n;
    v4 = __src;
    v5 = result;
    v6 = result[1];
    v7 = *result + __n;
    v9 = __n > 0xF || v7 > 0xF;
    *result = v7;
    result[1] = v6 | v9;
    v10 = result[10];
    if (v10 + __n <= 0xF)
    {
      result = memcpy(result + v10 + 24, __src, __n);
      LODWORD(v11) = v5[10] + v3;
LABEL_18:
      v5[10] = v11;
      return result;
    }

    v12 = &__src[__n];
    if (v10)
    {
      result = memcpy(result + v10 + 24, __src, (16 - v10));
      HIDWORD(v13) = v5[2] - 2048144777 * v5[6];
      LODWORD(v13) = HIDWORD(v13);
      v14 = -1640531535 * (v13 >> 19);
      HIDWORD(v13) = v5[3] - 2048144777 * v5[7];
      LODWORD(v13) = HIDWORD(v13);
      v5[2] = v14;
      v5[3] = -1640531535 * (v13 >> 19);
      v15 = v5[9];
      HIDWORD(v13) = v5[4] - 2048144777 * v5[8];
      LODWORD(v13) = HIDWORD(v13);
      v5[4] = -1640531535 * (v13 >> 19);
      HIDWORD(v13) = v5[5] - 2048144777 * v15;
      LODWORD(v13) = HIDWORD(v13);
      v5[5] = -1640531535 * (v13 >> 19);
      v4 += (16 - v5[10]);
      v5[10] = 0;
    }

    if (v4 <= v12 - 16)
    {
      v16 = v5[2];
      v17 = v5[3];
      v18 = v5[4];
      v19 = v5[5];
      do
      {
        HIDWORD(v20) = v16 - 2048144777 * *v4;
        LODWORD(v20) = HIDWORD(v20);
        v16 = -1640531535 * (v20 >> 19);
        HIDWORD(v20) = v17 - 2048144777 * *(v4 + 1);
        LODWORD(v20) = HIDWORD(v20);
        v17 = -1640531535 * (v20 >> 19);
        HIDWORD(v20) = v18 - 2048144777 * *(v4 + 2);
        LODWORD(v20) = HIDWORD(v20);
        v18 = -1640531535 * (v20 >> 19);
        HIDWORD(v20) = v19 - 2048144777 * *(v4 + 3);
        LODWORD(v20) = HIDWORD(v20);
        v19 = -1640531535 * (v20 >> 19);
        v4 += 16;
      }

      while (v4 <= v12 - 16);
      v5[2] = v16;
      v5[3] = v17;
      v5[4] = v18;
      v5[5] = v19;
    }

    if (v4 < v12)
    {
      v11 = v12 - v4;
      result = memcpy(v5 + 6, v4, v11);
      goto LABEL_18;
    }
  }

  return result;
}

char *sub_100070F58(char *result, char *__src, size_t __n)
{
  if (__src)
  {
    v3 = __n;
    v4 = __src;
    v5 = result;
    *result += __n;
    v6 = *(result + 18);
    if (v6 + __n <= 0x1F)
    {
      result = memcpy(&result[v6 + 40], __src, __n);
      LODWORD(v7) = *(v5 + 18) + v3;
LABEL_12:
      *(v5 + 18) = v7;
      return result;
    }

    v8 = &__src[__n];
    if (v6)
    {
      result = memcpy(&result[v6 + 40], __src, (32 - v6));
      v9 = __ROR8__(*(v5 + 2) - 0x3D4D51C2D82B14B1 * *(v5 + 6), 33);
      *(v5 + 1) = 0x9E3779B185EBCA87 * __ROR8__(*(v5 + 1) - 0x3D4D51C2D82B14B1 * *(v5 + 5), 33);
      *(v5 + 2) = 0x9E3779B185EBCA87 * v9;
      v10 = 0x9E3779B185EBCA87 * __ROR8__(*(v5 + 4) - 0x3D4D51C2D82B14B1 * *(v5 + 8), 33);
      *(v5 + 3) = 0x9E3779B185EBCA87 * __ROR8__(*(v5 + 3) - 0x3D4D51C2D82B14B1 * *(v5 + 7), 33);
      *(v5 + 4) = v10;
      v4 += (32 - *(v5 + 18));
      *(v5 + 18) = 0;
    }

    if (v4 + 32 <= v8)
    {
      v11 = *(v5 + 1);
      v12 = *(v5 + 2);
      v14 = *(v5 + 3);
      v13 = *(v5 + 4);
      do
      {
        v11 = 0x9E3779B185EBCA87 * __ROR8__(v11 - 0x3D4D51C2D82B14B1 * *v4, 33);
        v12 = 0x9E3779B185EBCA87 * __ROR8__(v12 - 0x3D4D51C2D82B14B1 * *(v4 + 1), 33);
        v14 = 0x9E3779B185EBCA87 * __ROR8__(v14 - 0x3D4D51C2D82B14B1 * *(v4 + 2), 33);
        v13 = 0x9E3779B185EBCA87 * __ROR8__(v13 - 0x3D4D51C2D82B14B1 * *(v4 + 3), 33);
        v4 += 32;
      }

      while (v4 <= v8 - 32);
      *(v5 + 1) = v11;
      *(v5 + 2) = v12;
      *(v5 + 3) = v14;
      *(v5 + 4) = v13;
    }

    if (v4 < v8)
    {
      v7 = v8 - v4;
      result = memcpy(v5 + 40, v4, v7);
      goto LABEL_12;
    }
  }

  return result;
}

uint64_t sub_1000710F0(uint64_t a1)
{
  if (*(a1 + 4))
  {
    v1 = vaddvq_s32(vorrq_s8(vshlq_u32(*(a1 + 8), xmmword_10044E7D0), vshlq_u32(*(a1 + 8), xmmword_10044E7C0)));
  }

  else
  {
    v1 = *(a1 + 16) + 374761393;
  }

  v2 = *a1 + v1;
  v3 = (a1 + 24);
  v4 = *(a1 + 40) & 0xF;
  if ((*(a1 + 40) & 0xFu) >= 4)
  {
    do
    {
      v5 = *v3++;
      HIDWORD(v6) = v2 - 1028477379 * v5;
      LODWORD(v6) = HIDWORD(v6);
      v2 = 668265263 * (v6 >> 15);
      v4 -= 4;
    }

    while (v4 > 3);
  }

  for (; v4; --v4)
  {
    v7 = *v3;
    v3 = (v3 + 1);
    HIDWORD(v8) = v2 + 374761393 * v7;
    LODWORD(v8) = HIDWORD(v8);
    v2 = -1640531535 * (v8 >> 21);
  }

  v9 = -1028477379 * ((-2048144777 * (v2 ^ (v2 >> 15))) ^ ((-2048144777 * (v2 ^ (v2 >> 15))) >> 13));
  return v9 ^ HIWORD(v9);
}

unint64_t sub_1000711C0(void *a1)
{
  if (*a1 < 0x20uLL)
  {
    v1 = a1[3] + 0x27D4EB2F165667C5;
  }

  else
  {
    v1 = 0x9E3779B185EBCA87 * ((0x9E3779B185EBCA87 * ((0x9E3779B185EBCA87 * ((0x9E3779B185EBCA87 * ((__ROR8__(a1[2], 57) + __ROR8__(a1[1], 63) + __ROR8__(a1[3], 52) + __ROR8__(a1[4], 46)) ^ (0x9E3779B185EBCA87 * __ROR8__(0xC2B2AE3D27D4EB4FLL * a1[1], 33))) - 0x7A1435883D4D519DLL) ^ (0x9E3779B185EBCA87 * __ROR8__(0xC2B2AE3D27D4EB4FLL * a1[2], 33))) - 0x7A1435883D4D519DLL) ^ (0x9E3779B185EBCA87 * __ROR8__(0xC2B2AE3D27D4EB4FLL * a1[3], 33))) - 0x7A1435883D4D519DLL) ^ (0x9E3779B185EBCA87 * __ROR8__(0xC2B2AE3D27D4EB4FLL * a1[4], 33))) - 0x7A1435883D4D519DLL;
  }

  v2 = v1 + *a1;
  v3 = a1 + 5;
  v4 = *a1 & 0x1FLL;
  if (v4 >= 8)
  {
    do
    {
      v5 = *v3++;
      v2 = 0x85EBCA77C2B2AE63 - 0x61C8864E7A143579 * __ROR8__((0x9E3779B185EBCA87 * __ROR8__(0xC2B2AE3D27D4EB4FLL * v5, 33)) ^ v2, 37);
      v4 -= 8;
    }

    while (v4 > 7);
  }

  if (v4 >= 4)
  {
    v6 = *v3;
    v3 = (v3 + 4);
    v2 = 0x165667B19E3779F9 - 0x3D4D51C2D82B14B1 * __ROR8__((0x9E3779B185EBCA87 * v6) ^ v2, 41);
    v4 -= 4;
  }

  for (; v4; --v4)
  {
    v7 = *v3;
    v3 = (v3 + 1);
    v2 = 0x9E3779B185EBCA87 * __ROR8__((0x27D4EB2F165667C5 * v7) ^ v2, 53);
  }

  v8 = 0x165667B19E3779F9 * ((0xC2B2AE3D27D4EB4FLL * (v2 ^ (v2 >> 33))) ^ ((0xC2B2AE3D27D4EB4FLL * (v2 ^ (v2 >> 33))) >> 29));
  return v8 ^ HIDWORD(v8);
}

void sub_100071384(id a1)
{
  v1 = objc_alloc_init(MRDStreamCapacityManager);
  v2 = qword_100529230;
  qword_100529230 = v1;
}

BOOL sub_100072270(id a1, NSArray *a2, MROrigin *a3)
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10007230C;
  v6[3] = &unk_1004B83E8;
  v7 = a3;
  v4 = v7;
  LOBYTE(a2) = [(NSArray *)a2 mr_any:v6];

  return a2;
}

id sub_10007230C(uint64_t a1, void *a2)
{
  v3 = [a2 origin];
  v4 = [v3 isEqual:*(a1 + 32)];

  return v4;
}

uint64_t sub_100072350(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = a2;
  v5 = [v3 streamsThatCountTowardsCapacity];
  v6 = [v4 origin];

  v7 = (*(v2 + 16))(v2, v5, v6);
  return v7;
}

uint64_t sub_1000723CC(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = a2;
  v5 = [v3 streamsActivelyUsingSlot];
  v6 = [v4 origin];

  v7 = (*(v2 + 16))(v2, v5, v6);
  return v7;
}

void sub_100072898(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = a1[4];
  v8 = _MRLogForCategory();
  v9 = v8;
  if (v5 && !v6)
  {
    v10 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
    if (v7)
    {
      if (!v10)
      {
        goto LABEL_22;
      }

      v12 = a1[5];
      v11 = a1[6];
      v13 = a1[4];
      v14 = +[NSDate date];
      [v14 timeIntervalSinceDate:a1[7]];
      v36 = 138544386;
      v37 = v12;
      v38 = 2114;
      v39 = v11;
      v40 = 2112;
      v41 = v5;
      v42 = 2114;
      v43 = v13;
      v44 = 2048;
      v45 = v15;
      v16 = "Response: %{public}@<%{public}@> returned <%@> for %{public}@ in %.4lf seconds";
      v17 = v9;
      v18 = 52;
      goto LABEL_16;
    }

    if (!v10)
    {
      goto LABEL_22;
    }

    v29 = a1[5];
    v30 = a1[6];
    v14 = +[NSDate date];
    [v14 timeIntervalSinceDate:a1[7]];
    v36 = 138544130;
    v37 = v29;
    v38 = 2114;
    v39 = v30;
    v40 = 2112;
    v41 = v5;
    v42 = 2048;
    v43 = v31;
    v16 = "Response: %{public}@<%{public}@> returned <%@> in %.4lf seconds";
    goto LABEL_15;
  }

  if (v6)
  {
    v19 = os_log_type_enabled(v8, OS_LOG_TYPE_ERROR);
    if (v7)
    {
      if (!v19)
      {
        goto LABEL_22;
      }

      v21 = a1[5];
      v20 = a1[6];
      v22 = a1[4];
      v14 = +[NSDate date];
      [v14 timeIntervalSinceDate:a1[7]];
      v36 = 138544386;
      v37 = v21;
      v38 = 2114;
      v39 = v20;
      v40 = 2114;
      v41 = v6;
      v42 = 2114;
      v43 = v22;
      v44 = 2048;
      v45 = v23;
      _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Response: %{public}@<%{public}@> returned with error <%{public}@> for %{public}@ in %.4lf seconds", &v36, 0x34u);
      goto LABEL_17;
    }

    if (v19)
    {
      sub_1003A5B18(a1, v6, v9);
    }
  }

  else
  {
    v24 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
    if (v7)
    {
      if (!v24)
      {
        goto LABEL_22;
      }

      v26 = a1[5];
      v25 = a1[6];
      v27 = a1[4];
      v14 = +[NSDate date];
      [v14 timeIntervalSinceDate:a1[7]];
      v36 = 138544130;
      v37 = v26;
      v38 = 2114;
      v39 = v25;
      v40 = 2114;
      v41 = v27;
      v42 = 2048;
      v43 = v28;
      v16 = "Response: %{public}@<%{public}@> returned for %{public}@ in %.4lf seconds";
LABEL_15:
      v17 = v9;
      v18 = 42;
LABEL_16:
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, v16, &v36, v18);
LABEL_17:

      goto LABEL_22;
    }

    if (v24)
    {
      v32 = a1[5];
      v33 = a1[6];
      v14 = +[NSDate date];
      [v14 timeIntervalSinceDate:a1[7]];
      v36 = 138543874;
      v37 = v32;
      v38 = 2114;
      v39 = v33;
      v40 = 2048;
      v41 = v34;
      v16 = "Response: %{public}@<%{public}@> returned in %.4lf seconds";
      v17 = v9;
      v18 = 32;
      goto LABEL_16;
    }
  }

LABEL_22:

  v35 = a1[8];
  if (v35)
  {
    (*(v35 + 16))(v35, v5);
  }
}

void sub_100072C10(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v4 playerPath];
  v6 = [v5 description];
  [v3 addEventOutput:v6 withKey:@"playerPath" toEventID:*(a1 + 48)];

  v7 = *(a1 + 32);
  v8 = *(a1 + 48);
  v9 = [v4 error];
  [v7 endEventWithID:v8 error:v9];

  v10 = *(a1 + 40);
  v12 = [v4 playerPath];
  v11 = [v4 error];

  (*(v10 + 16))(v10, v12, v11);
}

MRDNowPlayingPlayerClient *__cdecl sub_100072FD0(id a1, MRDNowPlayingOriginClient *a2)
{
  v2 = [(MRDNowPlayingOriginClient *)a2 activeNowPlayingClient];
  v3 = [v2 activePlayerClient];

  return v3;
}

int64_t sub_100073020(id a1, MRDNowPlayingPlayerClient *a2, MRDNowPlayingPlayerClient *a3)
{
  v4 = a3;
  v5 = [(MRDNowPlayingPlayerClient *)a2 lastPlayingDate];
  v6 = [(MRDNowPlayingPlayerClient *)v4 lastPlayingDate];

  v7 = [v5 compare:v6];
  return v7;
}

BOOL sub_100073954(id a1, MRDNowPlayingOriginClient *a2)
{
  v2 = [(MRDNowPlayingOriginClient *)a2 origin];
  v3 = [v2 isHosted];

  return v3;
}

BOOL sub_1000739E4(id a1, MRDNowPlayingOriginClient *a2)
{
  v2 = [(MRDNowPlayingOriginClient *)a2 deviceInfo];
  v3 = [v2 containsLocalDevice];

  return v3 ^ 1;
}

BOOL sub_100073B18(id a1, MRDNowPlayingOriginClient *a2)
{
  v2 = [(MRDNowPlayingOriginClient *)a2 deviceInfo];
  v3 = [v2 routingContextID];
  v4 = +[MRDMediaRemoteServer server];
  v5 = [v4 nowPlayingServer];
  v6 = [v5 localOriginClient];
  v7 = [v6 deviceInfo];
  v8 = [v7 routingContextID];
  v9 = [v3 isEqualToString:v8];

  return v9;
}

__CFString *sub_100073EB4(uint64_t a1)
{
  if ((a1 - 1) > 3)
  {
    v2 = 0;
  }

  else
  {
    v2 = *off_1004B8760[a1 - 1];
  }

  return v2;
}

BOOL sub_100074078(id a1, MRAVOutputDevice *a2)
{
  v2 = a2;
  if ([(MRAVOutputDevice *)v2 deviceType]== 1 || [(MRAVOutputDevice *)v2 deviceType]== 3)
  {
    v3 = [(MRAVOutputDevice *)v2 isSystemCaptureDevice]^ 1;
  }

  else
  {
    LOBYTE(v3) = 0;
  }

  return v3;
}

void sub_1000745F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100074614(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained handlePillTap];
}

id *sub_10007495C(id *result, uint64_t a2)
{
  if (a2 == 1)
  {
    return [result[4] handlePillTap];
  }

  return result;
}

void sub_1000753A8(uint64_t a1, void *a2)
{
  v3 = a2;
  v10 = MREndpointConnectionReasonUserInfoKey;
  v11 = @"intelligentRoutingRecommendationValidator";
  v4 = [NSDictionary dictionaryWithObjects:&v11 forKeys:&v10 count:1];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000754C8;
  v7[3] = &unk_1004B8690;
  v5 = *(a1 + 40);
  v7[4] = *(a1 + 32);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  [v6 connectToExternalDeviceWithUserInfo:v4 completion:v7];
}

void sub_1000754C8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  objc_sync_enter(v4);
  if (v3)
  {
    v5 = _MRLogForCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 40);
      v6 = *(a1 + 48);
      v8 = [*(a1 + 32) activeSystemEndpoint];
      v13 = 138413058;
      v14 = v7;
      v15 = 2112;
      v16 = v6;
      v17 = 2112;
      v18 = v3;
      v19 = 2112;
      v20 = v8;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[MRDRRC].RBAM Failed to connect to active system endpoint %@<%@> with error %@. Reset to %@.", &v13, 0x2Au);
    }
  }

  else
  {
    v9 = _MRLogForCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v11 = *(a1 + 40);
      v10 = *(a1 + 48);
      v12 = [*(a1 + 32) activeSystemEndpoint];
      v13 = 138412802;
      v14 = v11;
      v15 = 2112;
      v16 = v10;
      v17 = 2112;
      v18 = v12;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "[MRDRRC].RBAM Setting active system endpoint to %@<%@> (old value: %@)", &v13, 0x20u);
    }

    [*(a1 + 32) setActiveSystemEndpoint:*(a1 + 40)];
  }

  objc_sync_exit(v4);
}

void sub_100075E28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_100075E58(uint64_t a1, void *a2)
{
  if (a2)
  {
    [*(a1 + 32) setSortByIsVideoRoute:{objc_msgSend(a2, "isVideoApp")}];
  }

  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  return [v3 _presentRoutePickerWithConfiguration:v4];
}

void sub_10007600C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  _Block_object_dispose((v15 - 64), 8);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100076048(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setMediaControls:0];
  [WeakRetained reevaluatePillsWithReason:@"media controls dismissed"];
}

id *sub_100076158(id *result, uint64_t a2)
{
  if ((a2 - 3) <= 1)
  {
    return [result[4] reevaluatePillsWithReason:@"banner dismissed"];
  }

  return result;
}

void sub_10007629C(uint64_t a1)
{
  sub_1000762F4();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("MPMediaControlsConfiguration");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_100529240 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    sub_1003A5BFC();
    sub_1000762F4();
  }
}

void sub_1000762F4()
{
  v1[0] = 0;
  if (!qword_100529248)
  {
    v1[1] = _NSConcreteStackBlock;
    v1[2] = 3221225472;
    v1[3] = sub_1000763F0;
    v1[4] = &unk_1004B82A0;
    v1[5] = v1;
    v2 = off_1004B8748;
    v3 = 0;
    qword_100529248 = _sl_dlopen();
  }

  v0 = v1[0];
  if (!qword_100529248)
  {
    v0 = abort_report_np();
    goto LABEL_7;
  }

  if (v1[0])
  {
LABEL_7:
    free(v0);
  }
}

uint64_t sub_1000763F0(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_100529248 = result;
  return result;
}

MRDNowPlayingPlayerClient *sub_100076464(uint64_t a1)
{
  sub_1000762F4();
  result = objc_getClass("MPMediaControls");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_100529250 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = sub_1003A5C24();
    return [(MRDNowPlayingPlayerClient *)v3 initWithPlayerPath:v4, v5];
  }

  return result;
}

void sub_1000769CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000769E4(uint64_t a1)
{
  v2 = objc_alloc_init(NSMutableDictionary);
  v3 = *(*(a1 + 32) + 72);
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_100076D20;
  v25[3] = &unk_1004B87A8;
  v4 = v2;
  v26 = v4;
  [v3 enumerateKeysAndObjectsUsingBlock:v25];
  v5 = *(a1 + 32);
  v6 = *(*(*(a1 + 40) + 8) + 40);
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  [v6 appendFormat:@"%@ %p {\n", v8, *(a1 + 32)];

  [*(*(*(a1 + 40) + 8) + 40) appendFormat:@"  playerPath = %@\n", *(*(a1 + 32) + 8)];
  v9 = *(*(*(a1 + 40) + 8) + 40);
  v10 = [*(*(a1 + 32) + 8) player];
  [v9 appendFormat:@"  player = %@\n", v10];

  v11 = *(*(*(a1 + 40) + 8) + 40);
  if ([*(a1 + 32) canBeNowPlayingPlayer])
  {
    v12 = @"YES";
  }

  else
  {
    v12 = @"NO";
  }

  [v11 appendFormat:@"  canBeNowPlayingPlayer = %@\n", v12];
  if (*(*(a1 + 32) + 88))
  {
    v13 = @"YES";
  }

  else
  {
    v13 = @"NO";
  }

  [*(*(*(a1 + 40) + 8) + 40) appendFormat:@"  transaction = %@\n", v13];
  [*(*(*(a1 + 40) + 8) + 40) appendFormat:@"  playbackState = %@\n", *(*(a1 + 32) + 56)];
  [*(*(*(a1 + 40) + 8) + 40) appendFormat:@"  inferredPlaybackState = %@\n", *(*(a1 + 32) + 64)];
  [*(*(*(a1 + 40) + 8) + 40) appendFormat:@"  playbackStateHistory = %@\n", v4];
  if (*(*(a1 + 32) + 80))
  {
    v14 = @"YES";
  }

  else
  {
    v14 = @"NO";
  }

  [*(*(*(a1 + 40) + 8) + 40) appendFormat:@"  pictureInPictureEnabled = %@\n", v14];
  v15 = *(a1 + 32);
  v16 = *(*(*(a1 + 40) + 8) + 40);
  if (*(v15 + 16))
  {
    [v16 appendFormat:@"  supportedCommands = %@\n", *(v15 + 16)];
  }

  else
  {
    v17 = *(v15 + 24);
    StringRepresentation = MRDataCreateStringRepresentation();
    [v16 appendFormat:@"  supportedCommands = %@\n", StringRepresentation];
  }

  v19 = *(*(*(a1 + 40) + 8) + 40);
  v20 = *(*(a1 + 32) + 40);
  v21 = MRPlaybackQueueCapabilitiesCopyDescription();
  [v19 appendFormat:@"  capabilities = %@\n", v21];

  v22 = *(*(*(a1 + 40) + 8) + 40);
  v23 = *(*(a1 + 32) + 32);
  v24 = MRCreateIndentedDebugDescriptionFromObject();
  [v22 appendFormat:@"  playbackQueue = %@\n", v24];

  [*(*(*(a1 + 40) + 8) + 40) appendFormat:@"  subscriptionController = %@\n", *(*(a1 + 32) + 128)];
  if (*(*(a1 + 32) + 136))
  {
    [*(*(*(a1 + 40) + 8) + 40) appendFormat:@"  participantDataSource = %@\n", *(*(a1 + 32) + 136)];
  }

  [*(*(*(a1 + 40) + 8) + 40) appendFormat:@"}"];
}

void sub_100076D20(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  [a2 intValue];
  v6 = MRMediaRemoteCopyPlaybackStateDescription();
  [v4 setObject:v5 forKeyedSubscript:v6];
}

void sub_100076E84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100076E9C(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 24) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_100076F80(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 16);
  v3 = _MRLogForCategory();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
  if (v2)
  {
    if (v4)
    {
      v5 = *(a1 + 32);
      v6 = *(a1 + 40);
      v8 = *(v5 + 8);
      v7 = *(v5 + 16);
      v14 = 138544130;
      v15 = v8;
      v16 = 2114;
      v17 = @"supportedCommands";
      v18 = 2112;
      v19 = v7;
      v20 = 2112;
      v21 = v6;
      v9 = "Set: %{public}@ setting %{public}@ from <%@> to <%@>";
      v10 = v3;
      v11 = 42;
LABEL_6:
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, v9, &v14, v11);
    }
  }

  else if (v4)
  {
    v12 = *(a1 + 40);
    v13 = *(*(a1 + 32) + 8);
    v14 = 138543874;
    v15 = v13;
    v16 = 2114;
    v17 = @"supportedCommands";
    v18 = 2112;
    v19 = v12;
    v9 = "Set: %{public}@ setting %{public}@ to <%@>";
    v10 = v3;
    v11 = 32;
    goto LABEL_6;
  }

  objc_storeStrong((*(a1 + 32) + 16), *(a1 + 40));
}

void sub_100077170(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(*(a1 + 32) + 24);
  if (v3 != v2 && ([v3 isEqualToData:?] & 1) == 0)
  {
    [*(a1 + 32) _onQueue_pushState];
    v4 = *(a1 + 32);
    v5 = *(v4 + 16);
    *(v4 + 16) = 0;

    v6 = [*(a1 + 40) copy];
    v7 = *(a1 + 32);
    v8 = *(v7 + 24);
    *(v7 + 24) = v6;

    v9 = [*(a1 + 32) supportedRemoteControlCommands];
    [*(a1 + 32) _onQueue_supportedCommandsDidChange:*(*(a1 + 32) + 24)];
    [*(a1 + 32) _onQueue_popState];
  }
}

id sub_1000772C0(uint64_t a1)
{
  v2 = _MRLogForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(*(a1 + 32) + 8);
    v4 = [*(a1 + 40) minimalReadableDescription];
    v28 = 138543874;
    v29 = v3;
    v30 = 2114;
    v31 = @"playbackQueue";
    v32 = 2112;
    v33 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Set: %{public}@ setting %{public}@ to <%@>", &v28, 0x20u);
  }

  v5 = _MRLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(*(a1 + 32) + 8);
    v7 = [*(a1 + 40) contentItemWithOffset:0];
    v28 = 138543874;
    v29 = v6;
    v30 = 2114;
    v31 = @"nowPlayingItem";
    v32 = 2112;
    v33 = v7;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Set: %{public}@ setting %{public}@ to <%@>", &v28, 0x20u);
  }

  v8 = [*(*(a1 + 32) + 32) playbackQueue];
  [v8 contentItemWithOffset:0];
  v9 = MRContentItemCopyMinimalReadableDescription();

  v10 = _MRLogForCategory();
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
  if (v9)
  {
    if (v11)
    {
      v12 = *(a1 + 32);
      v13 = *(v12 + 8);
      v14 = [*(v12 + 32) playbackQueue];
      [v14 contentItemWithOffset:0];
      v15 = MRContentItemCopyMinimalReadableDescription();
      [*(a1 + 40) contentItemWithOffset:0];
      v16 = MRContentItemCopyMinimalReadableDescription();
      v28 = 138544130;
      v29 = v13;
      v30 = 2114;
      v31 = @"nowPlayingItem";
      v32 = 2112;
      v33 = v15;
      v34 = 2112;
      v35 = v16;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Set: %{public}@ setting %{public}@ from <%@> to <%@>", &v28, 0x2Au);
    }
  }

  else if (v11)
  {
    v17 = *(*(a1 + 32) + 8);
    [*(a1 + 40) contentItemWithOffset:0];
    v18 = MRContentItemCopyMinimalReadableDescription();
    v28 = 138543874;
    v29 = v17;
    v30 = 2114;
    v31 = @"nowPlayingItem";
    v32 = 2112;
    v33 = v18;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Set: %{public}@ setting %{public}@ to <%@>", &v28, 0x20u);
  }

  v19 = [*(a1 + 40) contentItemWithOffset:0];
  v20 = [*(*(a1 + 32) + 32) playbackQueue];
  v21 = [v20 contentItemWithOffset:0];
  if (v19 == v21)
  {
    v22 = 0;
  }

  else
  {
    v22 = [v19 isEqual:v21] ^ 1;
  }

  [*(a1 + 32) _onQueue_pushState];
  v23 = *(a1 + 40);
  if (v23)
  {
    v24 = [[MRDPlaybackQueue alloc] initWithPlaybackQueue:*(a1 + 40)];
  }

  else
  {
    v24 = 0;
  }

  objc_storeStrong((*(a1 + 32) + 32), v24);
  if (v23)
  {
  }

  v25 = *(a1 + 32);
  v26 = [v25[4] playbackQueue];
  [v25 _onQueue_playbackQueueDidChange:v26 nowPlayingItemChanged:v22];

  return [*(a1 + 32) _onQueue_popState];
}

id sub_100077710(uint64_t a1)
{
  result = [*(*(a1 + 32) + 64) playbackState];
  if (result != *(a1 + 40))
  {
    [*(a1 + 32) _onQueue_pushState];
    [*(*(a1 + 32) + 64) playbackState];
    v3 = MRMediaRemoteCopyPlaybackStateDescription();

    v4 = _MRLogForCategory();
    v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
    if (v3)
    {
      if (v5)
      {
        v6 = *(a1 + 32);
        v7 = *(v6 + 8);
        [*(v6 + 64) playbackState];
        v8 = MRMediaRemoteCopyPlaybackStateDescription();
        v9 = *(a1 + 40);
        v10 = MRMediaRemoteCopyPlaybackStateDescription();
        v19 = 138544130;
        v20 = v7;
        v21 = 2114;
        v22 = @"inferred playback state";
        v23 = 2112;
        v24 = v8;
        v25 = 2112;
        v26 = v10;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Set: %{public}@ setting %{public}@ from <%@> to <%@>", &v19, 0x2Au);

LABEL_7:
      }
    }

    else if (v5)
    {
      v11 = *(*(a1 + 32) + 8);
      v12 = *(a1 + 40);
      v8 = MRMediaRemoteCopyPlaybackStateDescription();
      v19 = 138543874;
      v20 = v11;
      v21 = 2114;
      v22 = @"inferred playback state";
      v23 = 2112;
      v24 = v8;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Set: %{public}@ setting %{public}@ to <%@>", &v19, 0x20u);
      goto LABEL_7;
    }

    v13 = [MRDNowPlayingPlayerClientPlaybackState alloc];
    v14 = *(a1 + 40);
    v15 = +[NSDate date];
    v16 = [(MRDNowPlayingPlayerClientPlaybackState *)v13 initWithPlaybackState:v14 date:v15];
    v17 = *(a1 + 32);
    v18 = *(v17 + 64);
    *(v17 + 64) = v16;

    return [*(a1 + 32) _onQueue_popState];
  }

  return result;
}

void sub_1000779FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_100077AD0(uint64_t a1)
{
  result = [*(*(a1 + 32) + 56) playbackState];
  if (result != *(a1 + 48))
  {
    [*(a1 + 32) _onQueue_pushState];
    [*(*(a1 + 32) + 56) playbackState];
    v3 = MRMediaRemoteCopyPlaybackStateDescription();

    v4 = _MRLogForCategory();
    v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
    if (v3)
    {
      if (v5)
      {
        v6 = *(a1 + 32);
        v7 = *(v6 + 8);
        [*(v6 + 56) playbackState];
        v8 = MRMediaRemoteCopyPlaybackStateDescription();
        v9 = *(a1 + 48);
        v10 = MRMediaRemoteCopyPlaybackStateDescription();
        v16 = 138544130;
        v17 = v7;
        v18 = 2114;
        v19 = @"playback state";
        v20 = 2112;
        v21 = v8;
        v22 = 2112;
        v23 = v10;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Set: %{public}@ setting %{public}@ from <%@> to <%@>", &v16, 0x2Au);

LABEL_7:
      }
    }

    else if (v5)
    {
      v11 = *(*(a1 + 32) + 8);
      v12 = *(a1 + 48);
      v8 = MRMediaRemoteCopyPlaybackStateDescription();
      v16 = 138543874;
      v17 = v11;
      v18 = 2114;
      v19 = @"playback state";
      v20 = 2112;
      v21 = v8;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Set: %{public}@ setting %{public}@ to <%@>", &v16, 0x20u);
      goto LABEL_7;
    }

    v13 = [[MRDNowPlayingPlayerClientPlaybackState alloc] initWithPlaybackState:*(a1 + 48) date:*(a1 + 40)];
    v14 = *(a1 + 32);
    v15 = *(v14 + 56);
    *(v14 + 56) = v13;

    return [*(a1 + 32) _onQueue_popState];
  }

  return result;
}

void sub_100077D50(uint64_t a1)
{
  v2 = [*(a1 + 40) copy];
  v3 = *(a1 + 32);
  v4 = *(v3 + 120);
  *(v3 + 120) = v2;
}

unsigned __int8 *sub_100077E0C(uint64_t a1)
{
  result = *(a1 + 32);
  if (result[81] != *(a1 + 40))
  {
    [result _onQueue_pushState];
    *(*(a1 + 32) + 81) = *(a1 + 40);
    v3 = *(a1 + 32);

    return [v3 _onQueue_popState];
  }

  return result;
}

void sub_100077F60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100078120(uint64_t a1)
{
  v5 = [*(a1 + 32) _onQueue_playbackState];
  v2 = [v5 date];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

id sub_1000781FC(uint64_t a1)
{
  v2 = *(a1 + 40);
  result = *(*(a1 + 32) + 40);
  if (result != v2)
  {
    v4 = MRPlaybackQueueCapabilitiesCopyDescription();

    v5 = _MRLogForCategory();
    v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
    if (v4)
    {
      if (v6)
      {
        v7 = *(a1 + 32);
        v8 = *(v7 + 8);
        v9 = *(v7 + 40);
        v10 = MRPlaybackQueueCapabilitiesCopyDescription();
        v11 = *(a1 + 40);
        v12 = MRPlaybackQueueCapabilitiesCopyDescription();
        v15 = 138544130;
        v16 = v8;
        v17 = 2114;
        v18 = @"playbackQueueCapabilities";
        v19 = 2112;
        v20 = v10;
        v21 = 2112;
        v22 = v12;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Set: %{public}@ setting %{public}@ from <%@> to <%@>", &v15, 0x2Au);

LABEL_7:
      }
    }

    else if (v6)
    {
      v13 = *(a1 + 40);
      v14 = *(*(a1 + 32) + 8);
      v10 = MRPlaybackQueueCapabilitiesCopyDescription();
      v15 = 138543874;
      v16 = v14;
      v17 = 2114;
      v18 = @"playbackQueueCapabilities";
      v19 = 2112;
      v20 = v10;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Set: %{public}@ setting %{public}@ to <%@>", &v15, 0x20u);
      goto LABEL_7;
    }

    *(*(a1 + 32) + 40) = *(a1 + 40);
    return [*(a1 + 32) _onQueue_playbackQueueCapabilitiesDidChange:*(*(a1 + 32) + 40)];
  }

  return result;
}

void sub_100078494(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000784AC(uint64_t a1)
{
  v2 = [[MRNowPlayingState alloc] initWithPlayerPath:*(*(a1 + 32) + 8)];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = [*(a1 + 32) supportedRemoteControlCommands];
  v6 = [v5 copy];
  [*(*(*(a1 + 40) + 8) + 40) setSupportedCommands:v6];

  v7 = [*(*(a1 + 32) + 32) playbackQueue];
  v8 = [v7 copy];
  [*(*(*(a1 + 40) + 8) + 40) setPlaybackQueue:v8];

  [*(*(*(a1 + 40) + 8) + 40) setPlaybackQueueCapabilities:*(*(a1 + 32) + 40)];
  v9 = [*(*(a1 + 32) + 8) client];
  v10 = [v9 displayName];
  v11 = [v10 copy];
  [*(*(*(a1 + 40) + 8) + 40) setDisplayName:v11];

  v13 = [*(a1 + 32) _onQueue_playbackState];
  [*(*(*(a1 + 40) + 8) + 40) setPlaybackState:{objc_msgSend(v13, "playbackState")}];
  v12 = [v13 date];
  [v12 timeIntervalSinceReferenceDate];
  [*(*(*(a1 + 40) + 8) + 40) setPlaybackStateTimestamp:?];
}

id sub_1000787D0(uint64_t a1)
{
  [*(a1 + 32) _onQueue_pushState];
  v2 = [*(a1 + 40) player];
  v3 = [v2 copy];
  [*(*(a1 + 32) + 8) setPlayer:v3];

  v4 = *(a1 + 32);

  return [v4 _onQueue_popState];
}

id sub_1000788BC(uint64_t a1)
{
  [*(a1 + 32) _onQueue_pushState];
  *(*(a1 + 32) + 80) = *(a1 + 40);
  v2 = *(a1 + 32);

  return [v2 _onQueue_popState];
}

void sub_10007899C(uint64_t a1)
{
  v2 = [*(a1 + 40) copy];
  [*(*(a1 + 32) + 8) setClient:v2];
}

id sub_100078A8C(uint64_t a1)
{
  [*(a1 + 32) _onQueue_pushState];
  v2 = [*(*(a1 + 32) + 8) player];
  [v2 mergeFrom:*(a1 + 40)];

  v3 = *(a1 + 32);

  return [v3 _onQueue_popState];
}

id sub_100079090(uint64_t a1)
{
  [*(*(a1 + 32) + 32) clearArtworkForContentItems:*(a1 + 40)];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);

  return [v2 _onQueue_playbackQueueContentItemsArtworkDidChange:v3];
}

void sub_1000791C4(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 72);
  v6 = [NSNumber numberWithUnsignedInt:*(a1 + 48)];
  v3 = [v2 objectForKeyedSubscript:v6];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void sub_10007931C(uint64_t a1)
{
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = [*(*(a1 + 32) + 72) allValues];
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v8 + 1) + 8 * i);
        [v7 playbackState];
        if (*(a1 + 48) == MRMediaRemotePlaybackStateIsAdvancing())
        {
          [*(a1 + 40) addObject:v7];
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }
}

void sub_100079578(uint64_t a1)
{
  v2 = *(a1 + 32);
  v6 = [v2[9] allValues];
  v3 = [v2 _sortSnapshots:v6];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void sub_1000797C8(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 32);
  if (v3)
  {
    v4 = *(a1 + 72);
    v5 = *(a1 + 40);
    v6 = *(a1 + 48);
    v7 = *(*(a1 + 64) + 8);
    obj = *(v7 + 40);
    v8 = [v3 createPlaybackQueueForRequest:v5 cachingPolicy:v4 playerPath:v6 partiallyCachedItems:&obj capabilities:*(v2 + 40)];
    objc_storeStrong((v7 + 40), obj);
    v9 = *(*(a1 + 56) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;
  }

  else
  {
    v11 = [[MRPlaybackQueue alloc] initWithContentItems:&__NSArray0__struct];
    v12 = *(*(a1 + 56) + 8);
    v13 = *(v12 + 40);
    *(v12 + 40) = v11;
  }
}

void sub_100079934(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 112);
  if (!v2)
  {
    v3 = +[NSMapTable strongToStrongObjectsMapTable];
    v4 = *(a1 + 32);
    v5 = *(v4 + 112);
    *(v4 + 112) = v3;

    v2 = *(*(a1 + 32) + 112);
  }

  v6 = v2;
  v7 = [*(a1 + 40) identifier];
  [v6 setObject:*(a1 + 40) forKey:v7];
  objc_initWeak(&location, *(a1 + 32));
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = sub_10003500C;
  v21 = sub_1000359BC;
  v22 = 0;
  v8 = +[NSNotificationCenter defaultCenter];
  v9 = *(a1 + 40);
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100079B2C;
  v13[3] = &unk_1004B8900;
  objc_copyWeak(&v16, &location);
  v10 = v7;
  v14 = v10;
  v15 = &v17;
  v11 = [v8 addObserverForName:@"MRDMusicHandoffSessionDidFinishNotification" object:v9 queue:0 usingBlock:v13];
  v12 = v18[5];
  v18[5] = v11;

  objc_destroyWeak(&v16);
  _Block_object_dispose(&v17, 8);

  objc_destroyWeak(&location);
}

void sub_100079AFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  objc_destroyWeak((v8 + 48));
  _Block_object_dispose(va, 8);
  objc_destroyWeak((v9 - 72));
  _Unwind_Resume(a1);
}

void sub_100079B2C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = WeakRetained[12];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100079BEC;
    block[3] = &unk_1004B78D8;
    v8 = WeakRetained;
    v5 = *(a1 + 32);
    v6 = *(a1 + 40);
    v9 = v5;
    v10 = v6;
    dispatch_sync(v4, block);
  }
}

void sub_100079BEC(void *a1)
{
  [*(a1[4] + 112) removeObjectForKey:a1[5]];
  v2 = +[NSNotificationCenter defaultCenter];
  [v2 removeObserver:*(*(a1[6] + 8) + 40)];
}

void sub_100079D90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100079DA8(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 112);
  v6 = [*(a1 + 40) sessionIdentifier];
  v3 = [v2 objectForKey:v6];
  v4 = *(*(a1 + 48) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void sub_100079F90(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 152));
  [WeakRetained nowPlayingPlayerClient:*(a1 + 32) playbackQueueParticipantsDidChange:*(a1 + 40)];
}

void sub_10007AB04(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10007AB40(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _MRLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138543362;
    v7 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[MRDRemoteControlNetworkService] Bluetooth address changed to %{public}@", &v6, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setLastKnownBluetoothAddress:v3];
  [WeakRetained _txtDataChanged];
}

void sub_10007AC1C(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _initializeBonjourServiceWithDeviceInfo:v3];
}

void sub_10007B304(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = dispatch_time(0, 30000000000);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10007B3C8;
  v6[3] = &unk_1004B68F0;
  v6[4] = *(a1 + 32);
  v7 = v3;
  v5 = v3;
  dispatch_after(v4, &_dispatch_main_q, v6);
}

void sub_10007C270(uint64_t a1, int a2)
{
  v3 = *(a1 + 32);
  if (a2)
  {
    v12 = [v3[8] remoteObjectProxy];
    [v12 hostedExternalDeviceConnectionStateDidChange:*(a1 + 48) withError:*(a1 + 40)];
  }

  else
  {
    v4 = v3;
    objc_sync_enter(v4);
    v5 = +[MRUserSettings currentSettings];
    v6 = [v5 verboseHostedExternalDeviceClientLogging];

    if (v6)
    {
      v7 = MRLogCategoryConnections();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8 = *(a1 + 48);
        v9 = MRExternalDeviceConnectionStateCopyDescription();
        v11 = *(a1 + 32);
        v10 = *(a1 + 40);
        *buf = 138412802;
        v14 = v9;
        v15 = 2112;
        v16 = v10;
        v17 = 2112;
        v18 = v11;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "[HostedExternalDeviceClient] Caching connectionState %@ %@ for %@", buf, 0x20u);
      }
    }

    [*(*(a1 + 32) + 104) setConnectionState:*(a1 + 48)];
    [*(*(a1 + 32) + 104) setConnectionStateError:*(a1 + 40)];
    objc_sync_exit(v4);
  }
}

void sub_10007C4D0(uint64_t a1, int a2)
{
  v3 = *(a1 + 32);
  if (a2)
  {
    v10 = [v3[8] remoteObjectProxy];
    [v10 hostedExternalDeviceDeviceInfoDidChange:*(a1 + 40)];
  }

  else
  {
    v4 = v3;
    objc_sync_enter(v4);
    v5 = +[MRUserSettings currentSettings];
    v6 = [v5 verboseHostedExternalDeviceClientLogging];

    if (v6)
    {
      v7 = MRLogCategoryConnections();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v9 = *(a1 + 32);
        v8 = *(a1 + 40);
        *buf = 138412546;
        v12 = v8;
        v13 = 2112;
        v14 = v9;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "[HostedExternalDeviceClient] Caching deviceInfo %@ for %@", buf, 0x16u);
      }
    }

    [*(*(a1 + 32) + 104) setDeviceInfo:*(a1 + 40)];
    objc_sync_exit(v4);
  }
}

void sub_10007C724(void *a1, int a2)
{
  if (a2)
  {
    v9 = [*(a1[4] + 64) remoteObjectProxy];
    [v9 hostedExternalDeviceDidReceiveCustomData:a1[5] withName:a1[6]];
  }

  else
  {
    v3 = +[MRUserSettings currentSettings];
    v4 = [v3 verboseHostedExternalDeviceClientLogging];

    if (v4)
    {
      v5 = MRLogCategoryConnections();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v7 = a1[5];
        v6 = a1[6];
        v8 = a1[4];
        *buf = 138412802;
        v11 = v7;
        v12 = 2112;
        v13 = v6;
        v14 = 2112;
        v15 = v8;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[HostedExternalDeviceClient] Caching customData %@ %@ for %@", buf, 0x20u);
      }
    }
  }
}

void sub_10007C91C(uint64_t a1, int a2)
{
  v3 = *(a1 + 32);
  if (a2)
  {
    v10 = [v3[8] remoteObjectProxy];
    [v10 hostedExternalDeviceEndpointDidChange:*(a1 + 40)];
  }

  else
  {
    v4 = v3;
    objc_sync_enter(v4);
    v5 = +[MRUserSettings currentSettings];
    v6 = [v5 verboseHostedExternalDeviceClientLogging];

    if (v6)
    {
      v7 = MRLogCategoryConnections();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v9 = *(a1 + 32);
        v8 = *(a1 + 40);
        *buf = 138412546;
        v12 = v8;
        v13 = 2112;
        v14 = v9;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "[HostedExternalDeviceClient] Caching endpoint %@ for %@", buf, 0x16u);
      }
    }

    [*(*(a1 + 32) + 104) setEndpoint:*(a1 + 40)];
    objc_sync_exit(v4);
  }
}

void sub_10007CB54(uint64_t a1, int a2)
{
  v3 = *(a1 + 32);
  if (a2)
  {
    v18 = [v3[8] remoteObjectProxy];
    [v18 hostedExternalDeviceVolumeCapabilitiesDidChange:*(a1 + 48) forOutputDevice:*(a1 + 40)];
  }

  else
  {
    v4 = v3;
    objc_sync_enter(v4);
    v5 = +[MRUserSettings currentSettings];
    v6 = [v5 verboseHostedExternalDeviceClientLogging];

    if (v6)
    {
      v7 = MRLogCategoryConnections();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8 = *(a1 + 48);
        v9 = MRMediaRemotePickedRouteVolumeControlCapabilitiesCopyDescription();
        v11 = *(a1 + 32);
        v10 = *(a1 + 40);
        *buf = 138412802;
        v20 = v9;
        v21 = 2112;
        v22 = v10;
        v23 = 2112;
        v24 = v11;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "[HostedExternalDeviceClient] Caching volumeCapabilities %@ outputDevice %@ for %@", buf, 0x20u);
      }
    }

    if (*(a1 + 40))
    {
      v12 = [*(*(a1 + 32) + 104) outputDeviceVolumeCapabilities];
      v13 = v12 == 0;

      if (v13)
      {
        v14 = objc_alloc_init(NSMutableDictionary);
        [*(*(a1 + 32) + 104) setOutputDeviceVolumeCapabilities:v14];
      }

      v15 = [NSNumber numberWithUnsignedInt:*(a1 + 48)];
      v16 = [*(*(a1 + 32) + 104) outputDeviceVolumeCapabilities];
      v17 = [*(a1 + 40) uid];
      [v16 setObject:v15 forKeyedSubscript:v17];
    }

    else
    {
      v15 = [NSNumber numberWithUnsignedInt:*(a1 + 48)];
      [*(*(a1 + 32) + 104) setVolumeCapabilities:v15];
    }

    objc_sync_exit(v4);
  }
}

void sub_10007CE78(uint64_t a1, int a2)
{
  v3 = *(a1 + 32);
  if (a2)
  {
    v4 = [v3[8] remoteObjectProxy];
    LODWORD(v5) = *(a1 + 48);
    v21 = v4;
    [v4 hostedExternalDeviceVolumeDidChange:*(a1 + 40) forOutputDevice:v5];
  }

  else
  {
    v6 = v3;
    objc_sync_enter(v6);
    v7 = +[MRUserSettings currentSettings];
    v8 = [v7 verboseHostedExternalDeviceClientLogging];

    if (v8)
    {
      v10 = MRLogCategoryConnections();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v11 = *(a1 + 48);
        v13 = *(a1 + 32);
        v12 = *(a1 + 40);
        *buf = 134218498;
        v23 = v11;
        v24 = 2112;
        v25 = v12;
        v26 = 2112;
        v27 = v13;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "[HostedExternalDeviceClient] Caching volume %lf outputDevice %@ for %@", buf, 0x20u);
      }
    }

    if (*(a1 + 40))
    {
      v14 = [*(*(a1 + 32) + 104) outputDeviceVolume];
      v15 = v14 == 0;

      if (v15)
      {
        v17 = objc_alloc_init(NSMutableDictionary);
        [*(*(a1 + 32) + 104) setOutputDeviceVolume:v17];
      }

      LODWORD(v16) = *(a1 + 48);
      v18 = [NSNumber numberWithFloat:v16];
      v19 = [*(*(a1 + 32) + 104) outputDeviceVolume];
      v20 = [*(a1 + 40) uid];
      [v19 setObject:v18 forKeyedSubscript:v20];
    }

    else
    {
      LODWORD(v9) = *(a1 + 48);
      v18 = [NSNumber numberWithFloat:v9];
      [*(*(a1 + 32) + 104) setVolume:v18];
    }

    objc_sync_exit(v6);
  }
}

void sub_10007D188(uint64_t a1, int a2)
{
  v3 = *(a1 + 32);
  if (a2)
  {
    v17 = [v3[8] remoteObjectProxy];
    [v17 hostedExternalDeviceIsMutedDidChange:*(a1 + 48) forOutputDevice:*(a1 + 40)];
  }

  else
  {
    v4 = v3;
    objc_sync_enter(v4);
    v5 = +[MRUserSettings currentSettings];
    v6 = [v5 verboseHostedExternalDeviceClientLogging];

    if (v6)
    {
      v7 = MRLogCategoryConnections();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8 = *(a1 + 48);
        v10 = *(a1 + 32);
        v9 = *(a1 + 40);
        *buf = 67109634;
        v19 = v8;
        v20 = 2112;
        v21 = v9;
        v22 = 2112;
        v23 = v10;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "[HostedExternalDeviceClient] Caching isMuted %u outputDevice %@ for %@", buf, 0x1Cu);
      }
    }

    if (*(a1 + 40))
    {
      v11 = [*(*(a1 + 32) + 104) outputDeviceMute];
      v12 = v11 == 0;

      if (v12)
      {
        v13 = objc_alloc_init(NSMutableDictionary);
        [*(*(a1 + 32) + 104) setOutputDeviceMute:v13];
      }

      v14 = [NSNumber numberWithBool:*(a1 + 48)];
      v15 = [*(*(a1 + 32) + 104) outputDeviceMute];
      v16 = [*(a1 + 40) uid];
      [v15 setObject:v14 forKeyedSubscript:v16];
    }

    else
    {
      v14 = [NSNumber numberWithBool:*(a1 + 48)];
      [*(*(a1 + 32) + 104) setIsMuted:v14];
    }

    objc_sync_exit(v4);
  }
}

void sub_10007D48C(uint64_t a1, int a2)
{
  v3 = *(a1 + 32);
  if (a2)
  {
    v14 = [v3[8] remoteObjectProxy];
    [v14 hostedExternalDeviceDidAddOutputDevice:*(a1 + 40)];
  }

  else
  {
    v4 = v3;
    objc_sync_enter(v4);
    v5 = +[MRUserSettings currentSettings];
    v6 = [v5 verboseHostedExternalDeviceClientLogging];

    if (v6)
    {
      v7 = MRLogCategoryConnections();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v9 = *(a1 + 32);
        v8 = *(a1 + 40);
        *buf = 138412546;
        v16 = v8;
        v17 = 2112;
        v18 = v9;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "[HostedExternalDeviceClient] Caching didAddOutputDevice %@ for %@", buf, 0x16u);
      }
    }

    v10 = [*(*(a1 + 32) + 104) outputDeviceModifications];
    v11 = v10 == 0;

    if (v11)
    {
      v12 = objc_alloc_init(MRDAVHostedExternalDevicePendingClientStateOutputDeviceModifications);
      [*(*(a1 + 32) + 104) setOutputDeviceModifications:v12];
    }

    v13 = [*(*(a1 + 32) + 104) outputDeviceModifications];
    [v13 addOutputDevice:*(a1 + 40)];

    objc_sync_exit(v4);
  }
}

void sub_10007D714(uint64_t a1, int a2)
{
  v3 = *(a1 + 32);
  if (a2)
  {
    v14 = [v3[8] remoteObjectProxy];
    [v14 hostedExternalDeviceDidChangeOutputDevice:*(a1 + 40)];
  }

  else
  {
    v4 = v3;
    objc_sync_enter(v4);
    v5 = +[MRUserSettings currentSettings];
    v6 = [v5 verboseHostedExternalDeviceClientLogging];

    if (v6)
    {
      v7 = MRLogCategoryConnections();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v9 = *(a1 + 32);
        v8 = *(a1 + 40);
        *buf = 138412546;
        v16 = v8;
        v17 = 2112;
        v18 = v9;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "[HostedExternalDeviceClient] Caching didChangeOutputDevice %@ for %@", buf, 0x16u);
      }
    }

    v10 = [*(*(a1 + 32) + 104) outputDeviceModifications];
    v11 = v10 == 0;

    if (v11)
    {
      v12 = objc_alloc_init(MRDAVHostedExternalDevicePendingClientStateOutputDeviceModifications);
      [*(*(a1 + 32) + 104) setOutputDeviceModifications:v12];
    }

    v13 = [*(*(a1 + 32) + 104) outputDeviceModifications];
    [v13 changeOutputDevice:*(a1 + 40)];

    objc_sync_exit(v4);
  }
}

void sub_10007D99C(uint64_t a1, int a2)
{
  v3 = *(a1 + 32);
  if (a2)
  {
    v14 = [v3[8] remoteObjectProxy];
    [v14 hostedExternalDeviceDidRemoveOutputDevice:*(a1 + 40)];
  }

  else
  {
    v4 = v3;
    objc_sync_enter(v4);
    v5 = +[MRUserSettings currentSettings];
    v6 = [v5 verboseHostedExternalDeviceClientLogging];

    if (v6)
    {
      v7 = MRLogCategoryConnections();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v9 = *(a1 + 32);
        v8 = *(a1 + 40);
        *buf = 138412546;
        v16 = v8;
        v17 = 2112;
        v18 = v9;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "[HostedExternalDeviceClient] Caching didRemoveOutputDevice %@ for %@", buf, 0x16u);
      }
    }

    v10 = [*(*(a1 + 32) + 104) outputDeviceModifications];
    v11 = v10 == 0;

    if (v11)
    {
      v12 = objc_alloc_init(MRDAVHostedExternalDevicePendingClientStateOutputDeviceModifications);
      [*(*(a1 + 32) + 104) setOutputDeviceModifications:v12];
    }

    v13 = [*(*(a1 + 32) + 104) outputDeviceModifications];
    [v13 removeOutputDevice:*(a1 + 40)];

    objc_sync_exit(v4);
  }
}

void sub_10007DC48(void *a1, int a2)
{
  v3 = a1[4];
  if (a2)
  {
    v16 = [v3[8] remoteObjectProxy];
    [v16 discoveryOutputDevicesChanged:a1[5] forConfiguration:a1[6]];
  }

  else
  {
    v4 = v3;
    objc_sync_enter(v4);
    v5 = +[MRUserSettings currentSettings];
    v6 = [v5 verboseHostedExternalDeviceClientLogging];

    if (v6)
    {
      v7 = MRLogCategoryConnections();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v9 = a1[5];
        v8 = a1[6];
        v10 = a1[4];
        *buf = 138412802;
        v18 = v9;
        v19 = 2112;
        v20 = v8;
        v21 = 2112;
        v22 = v10;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "[HostedExternalDeviceClient] Caching discoverySessionOutputDevicesChanged %@ configuration %@ for %@", buf, 0x20u);
      }
    }

    v11 = [*(a1[4] + 104) discoverySessionConfigurationsResults];
    v12 = v11 == 0;

    if (v12)
    {
      v13 = objc_alloc_init(NSMutableDictionary);
      [*(a1[4] + 104) setDiscoverySessionConfigurationsResults:v13];
    }

    v14 = a1[5];
    v15 = [*(a1[4] + 104) discoverySessionConfigurationsResults];
    [v15 setObject:v14 forKeyedSubscript:a1[6]];

    objc_sync_exit(v4);
  }
}

void sub_10007EABC(uint64_t a1, void *a2, void *a3)
{
  v4 = *(*(a1 + 32) + 64);
  v5 = a3;
  v6 = a2;
  v7 = [v4 remoteObjectProxy];
  [v7 discoveryOutputDevicesChanged:v5 forConfiguration:v6];
}

void sub_10007EB3C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = [a3 unsignedIntValue];
  v7 = [*(a1 + 32) endpoint];
  v8 = [v7 outputDevices];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10007EC48;
  v12[3] = &unk_1004B8A40;
  v13 = v5;
  v9 = v5;
  v10 = [v8 msv_firstWhere:v12];

  v11 = [*(*(a1 + 40) + 64) remoteObjectProxy];
  [v11 hostedExternalDeviceVolumeCapabilitiesDidChange:v6 forOutputDevice:v10];
}

id sub_10007EC48(uint64_t a1, void *a2)
{
  v3 = [a2 uid];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

void sub_10007EC8C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  [a3 floatValue];
  v7 = v6;
  v8 = [*(a1 + 32) endpoint];
  v9 = [v8 outputDevices];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_10007EDA0;
  v14[3] = &unk_1004B8A40;
  v15 = v5;
  v10 = v5;
  v11 = [v9 msv_firstWhere:v14];

  v12 = [*(*(a1 + 40) + 64) remoteObjectProxy];
  LODWORD(v13) = v7;
  [v12 hostedExternalDeviceVolumeDidChange:v11 forOutputDevice:v13];
}

id sub_10007EDA0(uint64_t a1, void *a2)
{
  v3 = [a2 uid];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

void sub_10007EDE4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = [a3 BOOLValue];
  v7 = [*(a1 + 32) endpoint];
  v8 = [v7 outputDevices];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10007EEF0;
  v12[3] = &unk_1004B8A40;
  v13 = v5;
  v9 = v5;
  v10 = [v8 msv_firstWhere:v12];

  v11 = [*(*(a1 + 40) + 64) remoteObjectProxy];
  [v11 hostedExternalDeviceIsMutedDidChange:v6 forOutputDevice:v10];
}

id sub_10007EEF0(uint64_t a1, void *a2)
{
  v3 = [a2 uid];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

void sub_10007F358(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  [a3 unsignedIntValue];
  v6 = MRMediaRemotePickedRouteVolumeControlCapabilitiesCopyDescription();
  [*(a1 + 32) setObject:v6 forKeyedSubscript:v5];
}

void sub_10007F924(id a1)
{
  v1 = [MRDIDSService alloc];
  v4 = +[IDSService mr_sharedIDSService];
  v2 = [(MRDIDSService *)v1 initWithService:v4];
  v3 = qword_100529258;
  qword_100529258 = v2;
}

void sub_100080AA4(uint64_t a1)
{
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100080BCC;
  v9[3] = &unk_1004B8B78;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  v6 = *(a1 + 64);
  *&v7 = v5;
  *(&v7 + 1) = v6;
  *&v8 = v3;
  *(&v8 + 1) = v4;
  v10 = v8;
  v11 = v7;
  v12 = *(a1 + 72);
  v13 = *(a1 + 80);
  v14 = *(a1 + 88);
  [v2 enumerateObjectsUsingBlock:v9];
}

void sub_100080BF0(uint64_t a1)
{
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100080D00;
  v9[3] = &unk_1004B8BC8;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  v6 = *(a1 + 64);
  *&v7 = v5;
  *(&v7 + 1) = v6;
  *&v8 = v3;
  *(&v8 + 1) = v4;
  v10 = v8;
  v11 = v7;
  v12 = *(a1 + 72);
  v13 = *(a1 + 80);
  [v2 enumerateObjectsUsingBlock:v9];
}

void sub_1000812FC(id a1)
{
  v1 = objc_alloc_init(MRDNowPlayingDataSource);
  v2 = qword_100529268;
  qword_100529268 = v1;
}

id sub_1000816DC(uint64_t a1)
{
  v2 = objc_alloc_init(NSMutableDictionary);
  v3 = [NSNumber numberWithInteger:*(a1 + 32)];
  [v2 setObject:v3 forKeyedSubscript:@"reason"];

  v4 = *(a1 + 32);
  if (v4 > 7)
  {
    v5 = @"?";
  }

  else
  {
    v5 = off_1004B8C70[v4];
  }

  [v2 setObject:v5 forKeyedSubscript:@"reasonString"];
  v6 = [NSNumber numberWithBool:*(a1 + 40)];
  [v2 setObject:v6 forKeyedSubscript:@"wasPopped"];

  return v2;
}

void sub_100081A68(uint64_t a1)
{
  v2 = +[NSNotificationCenter defaultCenter];
  [v2 postNotificationName:@"MRDMusicHandoffSessionDidStartNotification" object:*(a1 + 32) userInfo:0];
}

void sub_100081B6C(uint64_t a1)
{
  v2 = [[NSError alloc] initWithMRError:184];
  v3 = +[NSNotificationCenter defaultCenter];
  v4 = *(a1 + 32);
  v6 = @"MRDMusicHandoffSessionErrorKey";
  v7 = v2;
  v5 = [NSDictionary dictionaryWithObjects:&v7 forKeys:&v6 count:1];
  [v3 postNotificationName:@"MRDMusicHandoffSessionDidFinishNotification" object:v4 userInfo:v5];
}

void sub_100081DF4(uint64_t a1)
{
  v2 = +[NSNotificationCenter defaultCenter];
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  v6 = @"MRDMusicHandoffSessionEventKey";
  v7 = v3;
  v5 = [NSDictionary dictionaryWithObjects:&v7 forKeys:&v6 count:1];
  [v2 postNotificationName:@"MRDMusicHandoffSessionDidFinishNotification" object:v4 userInfo:v5];
}

void sub_100081EB4(uint64_t a1)
{
  v2 = +[NSNotificationCenter defaultCenter];
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  v6 = @"MRDMusicHandoffSessionEventKey";
  v7 = v3;
  v5 = [NSDictionary dictionaryWithObjects:&v7 forKeys:&v6 count:1];
  [v2 postNotificationName:@"MRDMusicHandoffSessionDidFinishNotification" object:v4 userInfo:v5];
}

void sub_100081F74(uint64_t a1)
{
  v2 = +[NSNotificationCenter defaultCenter];
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  v6 = @"MRDMusicHandoffSessionEventKey";
  v7 = v3;
  v5 = [NSDictionary dictionaryWithObjects:&v7 forKeys:&v6 count:1];
  [v2 postNotificationName:@"MRDMusicHandoffSessionDidStartNotification" object:v4 userInfo:v5];
}

void sub_1000829F0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v8 + 32));
  objc_destroyWeak((v7 + 32));
  objc_destroyWeak((v6 + 32));
  objc_destroyWeak((v5 + 32));
  objc_destroyWeak((v4 + 32));
  objc_destroyWeak((v3 + 32));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v9 - 112));
  _Unwind_Resume(a1);
}

void sub_100082A9C(uint64_t a1, void *a2, uint64_t a3, void *a4, void *a5)
{
  v9 = a2;
  v10 = a4;
  v11 = a5;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v13 = WeakRetained;
  if (WeakRetained)
  {
    v14 = [WeakRetained createDelocalizedPlayerPath:v9];
    v15 = [v10 mutableCopy];
    [v15 setObject:&__kCFBooleanTrue forKeyedSubscript:kMRMediaRemoteOptionIsRedirectingCommand];
    v16 = +[MRUserSettings currentSettings];
    v17 = [v16 verboseOriginForwarderLogging];

    if (v17)
    {
      v18 = _MRLogForCategory();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v25 = v13;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "[MRDOriginForwarder] %@ forwarding command", buf, 0xCu);
      }
    }

    v19 = [[MRDRemoteControlCommand alloc] initWithCommandType:a3 playerPath:v14 unresolvedPlayerPath:v14 senderAppDisplayID:0 options:v15];
    v20 = +[MRDMediaRemoteServer server];
    v21 = [v20 remoteControlServer];
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_100082CFC;
    v22[3] = &unk_1004B7888;
    v23 = v11;
    [v21 sendRemoteControlCommand:v19 completion:v22];
  }

  else
  {
    v14 = [[MRCommandResult alloc] initWithWithSendError:6 description:@"OriginForwarder does not exisit"];
    (*(v11 + 2))(v11, v14);
  }
}

void sub_100082D0C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    v9 = [WeakRetained createDelocalizedPlayerPath:a3];
    v10 = +[MRUserSettings currentSettings];
    v11 = [v10 verboseOriginForwarderLogging];

    if (v11)
    {
      v12 = _MRLogForCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v16 = v8;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "[MRDOriginForwarder] %@ forwarding playbackQueueRequest", buf, 0xCu);
      }
    }

    v14 = v6;
    MRMediaRemoteRequestNowPlayingPlaybackQueueForPlayerSync();
  }

  else
  {
    v13 = [[NSError alloc] initWithMRError:123];
    (*(v6 + 2))(v6, 0, v13);
  }
}

void sub_100082EDC(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v11 = WeakRetained;
  if (WeakRetained)
  {
    v12 = [WeakRetained createDelocalizedPlayerPath:v8];
    v13 = +[MRUserSettings currentSettings];
    v14 = [v13 verboseOriginForwarderLogging];

    if (v14)
    {
      v15 = _MRLogForCategory();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v18 = v11;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "[MRDOriginForwarder] %@ forwarding playbackSessionRequest", buf, 0xCu);
      }
    }

    v16 = v9;
    MRMediaRemotePlaybackSessionRequestWithResponse();
  }

  else
  {
    v12 = [[NSError alloc] initWithMRError:123];
    (*(v9 + 2))(v9, 0, v12);
  }
}

void sub_1000830C8(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v14 = WeakRetained;
  if (WeakRetained)
  {
    v15 = [WeakRetained createDelocalizedPlayerPath:v11];
    v16 = +[MRUserSettings currentSettings];
    v17 = [v16 verboseOriginForwarderLogging];

    if (v17)
    {
      v18 = _MRLogForCategory();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v21 = v14;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "[MRDOriginForwarder] %@ forwarding playbackSessionMigrationRequest", buf, 0xCu);
      }
    }

    v19 = v12;
    MRMediaRemoteSendPlaybackSession();
  }

  else
  {
    v15 = [[NSError alloc] initWithMRError:123];
    (*(v12 + 2))(v12, 0, v15);
  }
}

void sub_1000832C8(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v11 = WeakRetained;
  if (WeakRetained)
  {
    v12 = [WeakRetained createDelocalizedPlayerPath:v8];
    v13 = v9;
    MRMediaRemoteSendPlaybackSessionMigrateBegin();
  }

  else
  {
    v12 = [[NSError alloc] initWithMRError:123];
    (*(v9 + 2))(v9, 0, v12);
  }
}

void sub_100083408(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v7 = a5;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v9 = WeakRetained;
  if (WeakRetained)
  {
    v10 = [WeakRetained createDelocalizedPlayerPath:a4];
    v12 = v7;
    MRMediaRemoteSendPlaybackSessionMigrateEnd();
  }

  else
  {
    v11 = [[NSError alloc] initWithMRError:123];
    (*(v7 + 2))(v7, v11);
  }
}

void sub_100083538(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6)
{
  v11 = a2;
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v17 = WeakRetained;
  if (WeakRetained)
  {
    v18 = [WeakRetained createDelocalizedPlayerPath:v14];
    v19 = v15;
    MRMediaRemoteSendPlaybackSessionMigrateFinalize();
  }

  else
  {
    v18 = [[NSError alloc] initWithMRError:123];
    (*(v15 + 2))(v15, 0, v18);
  }
}

void sub_1000836A8(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v14 = WeakRetained;
  if (WeakRetained)
  {
    v15 = [WeakRetained createDelocalizedPlayerPath:v11];
    v16 = v12;
    MRMediaRemoteSendPlaybackSessionMigratePost();
  }

  else
  {
    v15 = [[NSError alloc] initWithMRError:123];
    (*(v12 + 2))(v12, 0, v15);
  }
}

uint64_t sub_1000867C8(uint64_t a1, void *a2)
{
  if ([a2 isMediaRemoteDaemon])
  {
    v3 = +[MRMediaRemoteServiceClient sharedServiceClient];
    v4 = [v3 notificationClient];
    v5 = [v4 notificationQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000868A4;
    block[3] = &unk_1004B79A0;
    v8 = *(a1 + 32);
    dispatch_async(v5, block);
  }

  return 0;
}

void sub_1000868A4(uint64_t a1)
{
  v2 = qos_class_self();
  v3 = dispatch_get_global_queue(v2, 0);
  v4 = *(a1 + 32);
  MRMediaRemoteNowPlayingPing();
}

void sub_100087330(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a20, 8);
  _Block_object_dispose(&a27, 8);
  _Unwind_Resume(a1);
}

void sub_10008735C(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a2;
  v7 = a4;
  v8 = *(*(*(a1 + 48) + 8) + 40);
  if ([v6 count])
  {
    v9 = *(a1 + 64);
    if (v9 <= 2)
    {
      if (v9 == 1)
      {
        v10 = +[AVOutputContext sharedAudioPresentationOutputContext];
      }

      else
      {
        if (v9 != 2)
        {
          goto LABEL_17;
        }

        v10 = +[AVOutputContext sharedSystemAudioContext];
      }
    }

    else
    {
      switch(v9)
      {
        case 3:
          v10 = +[AVOutputContext sharedSystemScreenContext];
          break;
        case 4:
          v10 = +[AVOutputContext iTunesAudioContext];
          break;
        case 5:
          v10 = +[AVOutputContext auxiliaryOutputContext];
          break;
        default:
          goto LABEL_17;
      }
    }

    v11 = v10;
    if (v10)
    {
      v12 = *(a1 + 64);
LABEL_20:
      v14 = [v6 firstObject];
      v15 = [v14 avOutputDevice];
      v16 = _MRLogForCategory();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        if (v12 > 5)
        {
          v17 = @"<Unknown>";
        }

        else
        {
          v17 = off_1004B8F40[v12];
        }

        v21 = 138543874;
        v22 = v15;
        v23 = 2114;
        v24 = v11;
        v25 = 2114;
        v26 = v17;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "[ODDSRouting] Found output device: %{public}@ - setting on context %{public}@ (%{public}@)", &v21, 0x20u);
      }

      [v11 setOutputDevice:v15 options:*(a1 + 32)];
      goto LABEL_26;
    }

LABEL_17:
    v13 = _MRLogForCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v21) = 0;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "[ODDSRouting] No output context strictly matches compatible context type. Using system audio context.", &v21, 2u);
    }

    v11 = +[AVOutputContext sharedSystemAudioContext];
    v12 = 2;
    goto LABEL_20;
  }

  v11 = _MRLogForCategory();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    sub_1003A5D84(a1, v7, v11);
  }

LABEL_26:

  v18 = *(*(*(a1 + 56) + 8) + 40);
  v19 = v18;
  if (v18)
  {
    v20 = *(*(*(a1 + 48) + 8) + 40) == 0;
  }

  else
  {
    v20 = 1;
  }

  if (!v20)
  {
    [v18[6] removeObject:?];
  }
}

void sub_100087958(_Unwind_Exception *a1)
{
  objc_destroyWeak((v3 + 32));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v4 - 88));
  _Unwind_Resume(a1);
}

void sub_100087998(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v11 = WeakRetained[1];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_100087AA8;
  v16[3] = &unk_1004B6BB0;
  v17 = WeakRetained;
  v18 = v8;
  v19 = v7;
  v20 = v9;
  v12 = v9;
  v13 = v7;
  v14 = v8;
  v15 = WeakRetained;
  dispatch_async(v11, v16);
}

uint64_t sub_100087AA8(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = [*(a1 + 40) objectForKeyedSubscript:RPOptionSenderID];
    v4 = [*(a1 + 40) objectForKeyedSubscript:@"destination"];
    v5 = [*(a1 + 40) objectForKeyedSubscript:@"destinationGroupUID"];
    v6 = [*(a1 + 40) objectForKeyedSubscript:@"session"];
    v7 = [*(a1 + 48) name];
    [v2 _onWorkerQueue_connectRemoteControlChannelForSource:v3 destination:v4 destinationGroupUID:v5 session:v6 name:v7];
  }

  v8 = *(*(a1 + 56) + 16);

  return v8();
}

void sub_100087BB0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v6 = WeakRetained;
  if (WeakRetained)
  {
    v7 = WeakRetained[1];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_100087C74;
    v8[3] = &unk_1004B68F0;
    v9 = v4;
    v10 = v6;
    dispatch_async(v7, v8);
  }
}

void sub_100087C74(uint64_t a1)
{
  v2 = [*(a1 + 32) objectForKeyedSubscript:RPOptionSenderID];
  v3 = [*(a1 + 32) objectForKeyedSubscript:@"destination"];
  v4 = [*(a1 + 32) objectForKeyedSubscript:@"destinationGroupUID"];
  v5 = [*(a1 + 32) objectForKeyedSubscript:@"session"];
  v6 = [[NSError alloc] initWithMRError:104 description:@"MRDRapportRemoteControlService received disconect event"];
  v7 = *(a1 + 40);
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100087DE4;
  v12[3] = &unk_1004B8FA0;
  v13 = v2;
  v14 = v3;
  v15 = v4;
  v16 = v5;
  v8 = v5;
  v9 = v4;
  v10 = v3;
  v11 = v2;
  [v7 _onWorkerQueue_disconnectRemoteControlChannelsWithError:v6 predicate:v12];
}

uint64_t sub_100087DE4(void *a1, void *a2)
{
  v3 = a2;
  v4 = [v3 sourceUID];
  v5 = v4;
  if (v4 == a1[4] || [v4 isEqual:?])
  {
    v6 = [v3 destinationOutputDeviceUID];
    v7 = v6;
    if (v6 == a1[5] || [v6 isEqual:?])
    {
      v8 = [v3 destinationGroupUID];
      v9 = v8;
      if (v8 == a1[6] || [v8 isEqual:?])
      {
        v10 = [v3 sessionUID];
        v11 = v10;
        if (v10 == a1[7])
        {
          v12 = 1;
        }

        else
        {
          v12 = [v10 isEqual:?];
        }
      }

      else
      {
        v12 = 0;
      }
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

void sub_100087EF0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v6 = WeakRetained;
  if (WeakRetained)
  {
    v7 = WeakRetained[1];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_100087FB4;
    v8[3] = &unk_1004B68F0;
    v9 = v4;
    v10 = v6;
    dispatch_async(v7, v8);
  }
}

void sub_100087FB4(uint64_t a1)
{
  v2 = [*(a1 + 32) objectForKeyedSubscript:RPOptionSenderID];
  v3 = [*(a1 + 32) objectForKeyedSubscript:@"destination"];
  v4 = [*(a1 + 32) objectForKeyedSubscript:@"destinationGroupUID"];
  v5 = [*(a1 + 32) objectForKeyedSubscript:@"session"];
  v6 = [[NSError alloc] initWithMRError:104 description:@"MRDRapportRemoteControlService received reset event"];
  v7 = *(a1 + 40);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000880F0;
  v9[3] = &unk_1004B8FF0;
  v10 = v2;
  v8 = v2;
  [v7 _onWorkerQueue_disconnectRemoteControlChannelsWithError:v6 predicate:v9];
}

uint64_t sub_1000880F0(uint64_t a1, void *a2)
{
  v3 = [a2 sourceUID];
  v4 = v3;
  if (v3 == *(a1 + 32))
  {
    v5 = 1;
  }

  else
  {
    v5 = [v3 isEqual:?];
  }

  return v5;
}

void sub_10008818C(id a1)
{
  v1 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.mediaremote"];
  v2 = qword_100529278;
  qword_100529278 = v1;
}

uint64_t sub_1000882E8(void *a1, void *a2)
{
  v3 = a2;
  v4 = [v3 sessionUID];
  v5 = v4;
  if (v4 == a1[4] || [v4 isEqual:?])
  {
    v6 = [v3 destinationOutputDeviceUID];
    v7 = v6;
    if (v6 == a1[5] || [v6 isEqual:?])
    {
      v8 = [v3 sourceUID];
      v9 = v8;
      if (v8 == a1[6])
      {
        v10 = 1;
      }

      else
      {
        v10 = [v8 isEqual:?];
      }
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

void sub_10008879C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, id location)
{
  objc_destroyWeak(&a22);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000887E0(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 8);
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = WeakRetained[1];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000888F0;
    block[3] = &unk_1004B77E8;
    v12 = WeakRetained;
    v5 = a1[4];
    v6 = a1[5];
    v7 = a1[6];
    v8 = a1[7];
    *&v9 = v7;
    *(&v9 + 1) = v8;
    *&v10 = v5;
    *(&v10 + 1) = v6;
    v13 = v10;
    v14 = v9;
    dispatch_async(v4, block);
  }
}

void sub_1000888F0(uint64_t a1)
{
  v2 = [*(a1 + 32) _connectionForSource:*(a1 + 40) destination:*(a1 + 48) session:*(a1 + 56)];

  if (v2)
  {
    v3 = objc_alloc_init(NSMutableDictionary);
    [v3 setObject:*(a1 + 56) forKeyedSubscript:@"session"];
    [v3 setObject:*(a1 + 48) forKeyedSubscript:@"destination"];
    [v3 setObject:*(a1 + 64) forKeyedSubscript:@"destinationGroupUID"];
    [*(*(a1 + 32) + 24) sendEvent:@"com.apple.mediaremote.remotecontrol.disconnect" destination:*(a1 + 40) userInfo:v3];
  }
}

uint64_t sub_100088AFC(void *a1, void *a2)
{
  v3 = a2;
  v4 = [v3 sourceUID];
  v5 = v4;
  if (v4 == a1[4] || [v4 isEqual:?])
  {
    v6 = [v3 destinationOutputDeviceUID];
    v7 = v6;
    if (v6 == a1[5] || [v6 isEqual:?])
    {
      v8 = [v3 sessionUID];
      v9 = v8;
      if (v8 == a1[6])
      {
        v10 = 1;
      }

      else
      {
        v10 = [v8 isEqual:?];
      }
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

uint64_t sub_100089AF8(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 ase];
  v5 = [v4 containsOutputDeviceWithUID:v3];

  return v5 ^ 1;
}

id sub_100089C00(id a1, HMHome *a2)
{
  v2 = [(HMHome *)a2 currentUser];
  v3 = [v2 uniqueIdentifier];
  v4 = [v3 UUIDString];

  return v4;
}

id sub_10008A070(id a1, HMHome *a2)
{
  v2 = [(HMHome *)a2 currentUser];
  v3 = [v2 uniqueIdentifier];
  v4 = [v3 UUIDString];

  return v4;
}

void sub_10008A1B4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (!v6)
  {
    v8 = [v5 destination];
    v9 = [v8 endpoint];

    v10 = [NSSet setWithArray:*(a1 + 40)];
    v11 = [v9 resolvedOutputDevices];
    v12 = [v11 msv_compactMap:&stru_1004B9168];
    v13 = [NSSet setWithArray:v12];

    if ([v10 isEqualToSet:v13])
    {
      [v5 playbackState];
      if (!MRMediaRemotePlaybackStateIsAdvancing())
      {
LABEL_13:
        dispatch_group_leave(*(a1 + 32));

        goto LABEL_14;
      }

      v14 = *(a1 + 56);
      objc_sync_enter(v14);
      if (![*(a1 + 56) count])
      {
        v15 = [*(a1 + 64) queue];
        v18 = _NSConcreteStackBlock;
        v19 = 3221225472;
        v20 = sub_10008A470;
        v21 = &unk_1004B68F0;
        v16 = *(a1 + 72);
        v22 = *(a1 + 64);
        v23 = v16;
        dispatch_async(v15, &v18);
      }

      [*(a1 + 56) addObject:{*(a1 + 72), v18, v19, v20, v21, v22}];
      objc_sync_exit(v14);
    }

    else
    {
      v14 = _MRLogForCategory();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v17 = *(a1 + 48);
        *buf = 138412802;
        v25 = v10;
        v26 = 2112;
        v27 = v13;
        v28 = 2112;
        v29 = v17;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "[ProximityController] Topology mismatch: recommended does not match response - recommended: (%@), response: (%@) skipping %@", buf, 0x20u);
      }
    }

    goto LABEL_13;
  }

  v7 = _MRLogForCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    sub_1003A5E24(v6, v7);
  }

  dispatch_group_leave(*(a1 + 32));
LABEL_14:
}

void sub_10008A484(uint64_t a1)
{
  v2 = +[MRUserSettings currentSettings];
  v3 = [v2 supportManyRecommendationsPlatters];

  if (v3)
  {
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_10008A564;
    v7[3] = &unk_1004B90C8;
    v4 = *(a1 + 32);
    v8 = *(a1 + 40);
    v5 = [v4 msv_filter:v7];
    v6 = [*(a1 + 48) uiController];
    [v6 acquireRouteRecommendationAssertionForIdentifiers:v5];
  }
}

id sub_10008A828(uint64_t a1)
{
  v2 = _MRLogForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    sub_1003A5E9C(a1, v2);
  }

  v3 = [*(a1 + 32) displayMonitor];
  v4 = [v3 displayOn];

  if ((v4 & 1) == 0)
  {
    v5 = _MRLogForCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[ProximityController] Asking to clear nearby devices because screen is off.", v7, 2u);
    }

    [*(a1 + 32) setHasTriggered:0];
  }

  result = [*(a1 + 32) shouldRun];
  if (result)
  {
    return [*(a1 + 32) _onQueue_reevaluateRemoteControlState];
  }

  return result;
}

void sub_10008AAC0(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) setAse:a2];
  v3 = [*(a1 + 32) queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10008AB5C;
  block[3] = &unk_1004B6D08;
  block[4] = *(a1 + 32);
  dispatch_async(v3, block);
}

void sub_10008ACB0(id a1)
{
  v1 = +[MRUserSettings currentSettings];
  v2 = [v1 supportMultiplayerHost];

  if (v2)
  {
    v3 = [[MRDAVOutputContextManager alloc] _init];
    v4 = qword_100529288;
    qword_100529288 = v3;
  }
}

void sub_10008B2B4(uint64_t a1)
{
  v2 = [*(a1 + 32) _onSerialQueue_outputContexts];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_10008B4A4(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 8) allValues];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_10008B5D8(uint64_t a1, void *a2)
{
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = [a2 allValues];
  v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(a1 + 32) registerCommunicationChannelForOutputContext:*(*(&v8 + 1) + 8 * v7)];
        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

uint64_t sub_10008B6D0(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 8);
  (*(*(a1 + 40) + 16))();
  v3 = *(*(a1 + 32) + 24);
  (*(*(a1 + 40) + 16))();
  v4 = *(*(a1 + 32) + 16);
  v5 = *(*(a1 + 40) + 16);

  return v5();
}

void sub_10008BAD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10008BB00(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 8) allValues];
  v58[0] = _NSConcreteStackBlock;
  v58[1] = 3221225472;
  v58[2] = sub_10008C038;
  v58[3] = &unk_1004B9290;
  v3 = (a1 + 40);
  v59 = *(a1 + 40);
  v4 = [v2 msv_filter:v58];

  v5 = [v4 firstObject];
  v6 = *(*(a1 + 56) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  if (*(a1 + 64) == 1)
  {
    v56[0] = _NSConcreteStackBlock;
    v56[1] = 3221225472;
    v56[2] = sub_10008C1A8;
    v56[3] = &unk_1004B9290;
    v57 = *(a1 + 40);
    v8 = [v4 msv_filter:v56];

    v9 = [v8 firstObject];
    v10 = *(*(a1 + 56) + 8);
    v11 = *(v10 + 40);
    *(v10 + 40) = v9;

    v4 = v8;
  }

  if (!*(*(*(a1 + 56) + 8) + 40))
  {
    v54 = 0u;
    v55 = 0u;
    v52 = 0u;
    v53 = 0u;
    v12 = *v3;
    v13 = [v12 countByEnumeratingWithState:&v52 objects:v64 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v53;
      while (2)
      {
        for (i = 0; i != v14; i = i + 1)
        {
          if (*v53 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = [*(*(a1 + 32) + 16) objectForKeyedSubscript:*(*(&v52 + 1) + 8 * i)];
          if (v17)
          {
            v27 = *(*(a1 + 56) + 8);
            v28 = *(v27 + 40);
            *(v27 + 40) = v17;

            goto LABEL_25;
          }
        }

        v14 = [v12 countByEnumeratingWithState:&v52 objects:v64 count:16];
        if (v14)
        {
          continue;
        }

        break;
      }
    }

    v18 = [*(*(a1 + 32) + 24) allValues];
    v50[0] = _NSConcreteStackBlock;
    v50[1] = 3221225472;
    v50[2] = sub_10008C318;
    v50[3] = &unk_1004B92B8;
    v19 = *(a1 + 40);
    v50[4] = *(a1 + 32);
    v51 = v19;
    v20 = [v18 msv_firstWhere:v50];

    v21 = [*(a1 + 32) activeOutputContexts];
    v49 = [v21 copy];

    v22 = [*(a1 + 32) inactiveOutputContexts];
    v23 = [v22 copy];

    v24 = [*(a1 + 32) reservedOutputContexts];
    v25 = [v24 copy];

    v26 = [v20 contextID];
    if (v26)
    {
      [*(*(a1 + 32) + 24) removeObjectForKey:v26];
    }

    else
    {
      v29 = +[AVOutputContext addSharedAudioOutputContext];
      if (v29)
      {
        v30 = [[MRAVConcreteOutputContext alloc] initWithAVOutputContext:v29 type:5];

        [*(a1 + 32) registerOutputContext:v30];
        v31 = _MRLogForCategory();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
        {
          v32 = *v3;
          *buf = 138543618;
          v61 = v30;
          v62 = 2114;
          v63 = v32;
          _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "[MRDAVOutputContextManager] Created new outputContext %{public}@ for: %{public}@", buf, 0x16u);
        }
      }

      else
      {
        v31 = _MRLogForCategory();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
        {
          sub_1003A5FB0((a1 + 40), v31, v33, v34, v35, v36, v37, v38);
        }

        v30 = v20;
      }

      v20 = v30;
    }

    [*(*(a1 + 32) + 16) setObject:v20 forKeyedSubscript:*(a1 + 48)];
    if (*(a1 + 65) == 1)
    {
      v39 = *(a1 + 32);
      [objc_opt_class() _notifyLocalDeviceDidChangeOutputContext];
    }

    v40 = *(*(a1 + 56) + 8);
    v41 = *(v40 + 40);
    *(v40 + 40) = v20;
    v42 = v20;

    v43 = *(a1 + 32);
    v44 = objc_opt_class();
    v45 = *(*(*(a1 + 56) + 8) + 40);
    v46 = [*(a1 + 32) activeOutputContexts];
    v47 = [*(a1 + 32) inactiveOutputContexts];
    v48 = [*(a1 + 32) reservedOutputContexts];
    [v44 logAndVerifyActiveSnapshot:v49 inactiveSnapshot:v23 reservedSnapshot:v25 outputContext:v45 currentActiveContexts:v46 currentInactiveContexts:v47 currentReservedContexts:v48];
  }

LABEL_25:
}

id sub_10008C038(uint64_t a1, void *a2)
{
  v3 = [a2 outputDevices];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10008C0E0;
  v6[3] = &unk_1004B8A40;
  v7 = *(a1 + 32);
  v4 = [v3 mr_any:v6];

  return v4;
}

id sub_10008C0E0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) allObjects];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10008C19C;
  v8[3] = &unk_1004B90C8;
  v9 = v3;
  v5 = v3;
  v6 = [v4 mr_any:v8];

  return v6;
}

id sub_10008C1A8(uint64_t a1, void *a2)
{
  v3 = [a2 outputDevices];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10008C250;
  v6[3] = &unk_1004B8A40;
  v7 = *(a1 + 32);
  v4 = [v3 mr_all:v6];

  return v4;
}

id sub_10008C250(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) allObjects];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10008C30C;
  v8[3] = &unk_1004B90C8;
  v9 = v3;
  v5 = v3;
  v6 = [v4 mr_any:v8];

  return v6;
}

uint64_t sub_10008C318(uint64_t a1, void *a2)
{
  v3 = a2;
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = *(*(a1 + 32) + 40);
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    while (2)
    {
      v8 = 0;
      do
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        if ([*(*(&v12 + 1) + 8 * v8) isOutputContextInUse:{v3, v12}])
        {
          v10 = _MRLogForCategory();
          if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
          {
            sub_1003A6020(v3, a1);
          }

          v9 = 0;
          goto LABEL_13;
        }

        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v9 = 1;
LABEL_13:

  return v9;
}

void sub_10008C660(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 16);
  v37[0] = _NSConcreteStackBlock;
  v37[1] = 3221225472;
  v37[2] = sub_10008CB00;
  v37[3] = &unk_1004B9308;
  v38 = *(a1 + 40);
  v3 = [v2 msv_firstWhere:v37];
  if (v3)
  {
    v4 = v3;
    v5 = _MRLogForCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [v4 first];
      v7 = [v4 second];
      *buf = 138412546;
      v40 = v6;
      v41 = 2112;
      v42 = v7;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[MRDAVOutputContextManager] ReserveOutputContext: OutputContext already reserved for another outputDevice: %@ %@", buf, 0x16u);
    }

    *(*(*(a1 + 56) + 8) + 24) = 0;
    v8 = v38;
  }

  else
  {

    v9 = *(*(a1 + 32) + 16);
    v35[0] = _NSConcreteStackBlock;
    v35[1] = 3221225472;
    v35[2] = sub_10008CB64;
    v35[3] = &unk_1004B9308;
    v36 = *(a1 + 48);
    v10 = [v9 msv_firstWhere:v35];
    if (v10)
    {
      v11 = v10;
      v12 = _MRLogForCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = [v11 second];
        *buf = 138412290;
        v40 = v13;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "[MRDAVOutputContextManager] ReserveOutputContext: OutputContext already reserved %@", buf, 0xCu);
      }

      *(*(*(a1 + 56) + 8) + 24) = 0;
      v8 = v36;
    }

    else
    {

      v14 = [*(a1 + 32) activeOutputContexts];
      v8 = [v14 copy];

      v15 = [*(a1 + 32) inactiveOutputContexts];
      v16 = [v15 copy];

      v17 = [*(a1 + 32) reservedOutputContexts];
      v18 = [v17 copy];

      v19 = *(*(a1 + 32) + 8);
      v20 = [*(a1 + 40) contextID];
      v21 = [v19 objectForKeyedSubscript:v20];

      if (v21)
      {
        v22 = _MRLogForCategory();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "[MRDAVOutputContextManager] ReserveOutputContext: Reserving activeOutputContext", buf, 2u);
        }

        [*(*(a1 + 32) + 16) setObject:v21 forKeyedSubscript:*(a1 + 48)];
      }

      v23 = *(*(a1 + 32) + 24);
      v24 = [*(a1 + 40) contextID];
      v25 = [v23 objectForKeyedSubscript:v24];

      if (v25)
      {
        v26 = *(*(a1 + 32) + 24);
        v27 = [*(a1 + 40) contextID];
        [v26 removeObjectForKey:v27];

        [*(*(a1 + 32) + 16) setObject:v25 forKeyedSubscript:*(a1 + 48)];
        v28 = _MRLogForCategory();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "[MRDAVOutputContextManager] ReserveOutputContext: Reserving inactiveOutputContext", buf, 2u);
        }
      }

      if (*(*(*(a1 + 56) + 8) + 24) == 1)
      {
        v29 = *(a1 + 32);
        v30 = objc_opt_class();
        v31 = *(a1 + 40);
        v32 = [*(a1 + 32) activeOutputContexts];
        v33 = [*(a1 + 32) inactiveOutputContexts];
        v34 = [*(a1 + 32) reservedOutputContexts];
        [v30 logAndVerifyActiveSnapshot:v8 inactiveSnapshot:v16 reservedSnapshot:v18 outputContext:v31 currentActiveContexts:v32 currentInactiveContexts:v33 currentReservedContexts:v34];
      }
    }
  }
}

id sub_10008CB00(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = [a3 contextID];
  v5 = [*(a1 + 32) contextID];
  v6 = [v4 isEqualToString:v5];

  return v6;
}

MRAVConcreteOutputContext *__cdecl sub_10008D1F8(id a1, AVOutputContext *a2)
{
  v2 = a2;
  v3 = [[MRAVConcreteOutputContext alloc] initWithAVOutputContext:v2 type:5];

  return v3;
}

id sub_10008D254(uint64_t a1)
{
  v2 = +[MRDSettings currentSettings];
  v3 = [v2 verboseOutputContextManagerLogging];

  if (v3)
  {
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_10008D3D8;
    v9[3] = &unk_1004B9370;
    v10 = *(a1 + 32);
    v4 = objc_retainBlock(v9);
    v5 = [*(*(a1 + 40) + 8) allValues];
    (v4[2])(v4, v5, @"activeOutputContext");

    v6 = [*(*(a1 + 40) + 24) allValues];
    (v4[2])(v4, v6, @"inactiveOutputContext");

    v7 = [*(*(a1 + 40) + 16) allValues];
    (v4[2])(v4, v7, @"reservedOutputContext");
  }

  [*(a1 + 40) _onSerialQueue_unregisterFromAllOutputContextNotifications];
  [*(*(a1 + 40) + 8) removeAllObjects];
  [*(*(a1 + 40) + 24) removeAllObjects];
  [*(*(a1 + 40) + 16) removeAllObjects];
  return [*(a1 + 40) _onSerialQueue_reloadOutputContexts:*(a1 + 32)];
}

void sub_10008D3D8(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  obj = v4;
  v20 = [v4 countByEnumeratingWithState:&v28 objects:v39 count:16];
  if (v20)
  {
    v18 = *v29;
    do
    {
      v6 = 0;
      do
      {
        if (*v29 != v18)
        {
          objc_enumerationMutation(obj);
        }

        v21 = v6;
        v7 = *(*(&v28 + 1) + 8 * v6);
        v24 = 0u;
        v25 = 0u;
        v26 = 0u;
        v27 = 0u;
        v8 = *(a1 + 32);
        v9 = [v8 countByEnumeratingWithState:&v24 objects:v38 count:16];
        if (v9)
        {
          v10 = v9;
          v11 = *v25;
          do
          {
            v12 = 0;
            do
            {
              if (*v25 != v11)
              {
                objc_enumerationMutation(v8);
              }

              v13 = *(*(&v24 + 1) + 8 * v12);
              v14 = [v7 avOutputContext];
              v15 = [v13 avOutputContext];

              if (v14 == v15)
              {
                v16 = _MRLogForCategory();
                if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
                {
                  *buf = 138412802;
                  v33 = v5;
                  v34 = 2112;
                  v35 = v7;
                  v36 = 2112;
                  v37 = v13;
                  _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "[MRDAVOutputContextManager] Duplicate AVOutputContext instance in %@ and allSharedAudioOutputContexts after mediaserverd death: %@ vs %@", buf, 0x20u);
                }

                block[0] = _NSConcreteStackBlock;
                block[1] = 3221225472;
                block[2] = sub_10008D6BC;
                block[3] = &unk_1004B6D08;
                v23 = v5;
                if (qword_100529298 != -1)
                {
                  dispatch_once(&qword_100529298, block);
                }
              }

              v12 = v12 + 1;
            }

            while (v10 != v12);
            v10 = [v8 countByEnumeratingWithState:&v24 objects:v38 count:16];
          }

          while (v10);
        }

        v6 = v21 + 1;
      }

      while ((v21 + 1) != v20);
      v20 = [obj countByEnumeratingWithState:&v28 objects:v39 count:16];
    }

    while (v20);
  }
}

void sub_10008D6BC(uint64_t a1)
{
  v1 = MSVAutoBugCaptureDomainMediaRemote;
  v2 = [NSString stringWithFormat:@"Duplicate %@", *(a1 + 32)];
  [MSVAutoBugCapture snapshotWithDomain:v1 type:@"OutputContext" subType:@"OutputContextManager" context:v2 triggerThresholdValues:0 events:0 completion:0];
}

void sub_10008D954(uint64_t a1)
{
  v2 = [*(a1 + 32) _onSerialQueue_outputContexts];
  v3 = (a1 + 40);
  v4 = [v2 containsObject:*(a1 + 40)];

  if (v4)
  {
    v5 = *(a1 + 32);
    v6 = *(a1 + 40);

    [v5 _onSerialQueue_processOutputContext:v6];
  }

  else
  {
    v7 = _MRLogForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_1003A6098(v3, v7, v8, v9, v10, v11, v12, v13);
    }
  }
}

id sub_10008E004(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = [a3 contextID];
  v5 = [*(a1 + 32) contextID];
  v6 = [v4 isEqualToString:v5];

  return v6;
}

BOOL sub_10008EB6C(uint64_t a1, uint64_t a2)
{
  v2 = [*(a1 + 32) objectForKey:a2];
  v3 = v2 == 0;

  return v3;
}

BOOL sub_10008EBA8(uint64_t a1, uint64_t a2)
{
  v2 = [*(a1 + 32) objectForKey:a2];
  v3 = v2 == 0;

  return v3;
}

BOOL sub_10008EBE4(uint64_t a1, uint64_t a2)
{
  v2 = [*(a1 + 32) objectForKey:a2];
  v3 = v2 == 0;

  return v3;
}

BOOL sub_10008EC20(uint64_t a1, uint64_t a2)
{
  v2 = [*(a1 + 32) objectForKey:a2];
  v3 = v2 == 0;

  return v3;
}

BOOL sub_10008EC5C(uint64_t a1, uint64_t a2)
{
  v2 = [*(a1 + 32) objectForKey:a2];
  v3 = v2 == 0;

  return v3;
}

BOOL sub_10008EC98(uint64_t a1, uint64_t a2)
{
  v2 = [*(a1 + 32) objectForKey:a2];
  v3 = v2 == 0;

  return v3;
}

NSString *__cdecl sub_10008ECD4(id a1, NSString *a2, MRAVConcreteOutputContext *a3)
{
  v4 = a2;
  v5 = [(MRAVConcreteOutputContext *)a3 contextID];
  v6 = [NSString stringWithFormat:@"%@ : %@", v4, v5];

  return v6;
}

NSString *__cdecl sub_10008ED5C(id a1, NSString *a2, MRAVConcreteOutputContext *a3)
{
  v4 = a2;
  v5 = [(MRAVConcreteOutputContext *)a3 contextID];
  v6 = [NSString stringWithFormat:@"%@ : %@", v4, v5];

  return v6;
}

void sub_10008EEB0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void sub_10008EECC(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_debug_impl(a1, log, OS_LOG_TYPE_DEBUG, a4, va, 0x16u);
}

void sub_10008FB88(uint64_t a1)
{
  v2 = [*(a1 + 32) active];
  v3 = *(a1 + 32);
  if (v2)
  {
    [v3 _restartTimer:*(a1 + 48)];
    v4 = *(a1 + 40);
    v6 = [*(a1 + 32) pairingData];
    (*(v4 + 16))(v4, v6, 0);
  }

  else
  {
    [v3 setActive:1];
    objc_initWeak(&location, *(a1 + 32));
    if (*(a1 + 48) >= 1)
    {
      [*(a1 + 32) _restartTimer:?];
    }

    v5 = *(a1 + 32);
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_10008FCF4;
    v7[3] = &unk_1004B9498;
    objc_copyWeak(&v9, &location);
    v8 = *(a1 + 40);
    [v5 _activateDiscoveryWithCompletion:v7];

    objc_destroyWeak(&v9);
    objc_destroyWeak(&location);
  }
}

void sub_10008FCF4(uint64_t a1, void *a2)
{
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = WeakRetained;
  v5 = *(a1 + 32);
  if (v6)
  {
    (*(v5 + 16))(*(a1 + 32), 0);
  }

  else
  {
    [WeakRetained _activatePairingServerWithCompletion:v5];
  }
}

void sub_100090100(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_100090124(uint64_t a1)
{
  v2 = _MRLogForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    sub_1003A631C(a1, v2, v3, v4, v5, v6, v7, v8);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained invalidate];
}

void sub_10009037C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  objc_destroyWeak((v14 + 40));
  objc_destroyWeak((v15 + 40));
  _Block_object_dispose(va, 8);
  objc_destroyWeak((v16 - 72));
  _Unwind_Resume(a1);
}

void sub_1000903C0(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v6 = *(*(a1 + 32) + 8);
  if (*(v6 + 24) == 1)
  {
    *(v6 + 24) = 0;
  }

  else if (a2 == 1)
  {
    v7 = _MRLogForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138412290;
      v10 = v5;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "[MRDRemoteDisplayPairingServer] Successfully entered session with %@, end pairing", &v9, 0xCu);
    }

    WeakRetained = objc_loadWeakRetained((a1 + 40));
    [WeakRetained _invalidate];
  }
}

void sub_1000904B8(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (v3)
  {
    v5 = _MRLogForCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_1003A638C(v3, v5, v6, v7, v8, v9, v10, v11);
    }

    [WeakRetained _invalidate];
  }

  (*(*(a1 + 32) + 16))();
}

void sub_1000906EC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_100090710(id a1)
{
  v1 = _MRLogForCategory();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "[MRDRemoteDisplayPairingServer] pairingServer interrupted.", v2, 2u);
  }
}

void sub_10009077C(id a1)
{
  v1 = _MRLogForCategory();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "[MRDRemoteDisplayPairingServer] pairingServer invalidated.", v2, 2u);
  }
}

void sub_1000907E8(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = _MRLogForCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1003A63F8(v3, v4, v5, v6, v7, v8, v9, v10);
    }

    (*(*(a1 + 32) + 16))();
  }

  else
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v12 = [WeakRetained pairingServer];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_100090928;
    v13[3] = &unk_1004B9578;
    objc_copyWeak(&v15, (a1 + 40));
    v14 = *(a1 + 32);
    [v12 startPairingServerWithCompletion:v13];

    objc_destroyWeak(&v15);
  }
}

void sub_100090928(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v9 = _MRLogForCategory();
  v10 = v9;
  if (!v6 || v7)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_1003A6464(v7, v6, v10);
    }

    [WeakRetained _invalidate];
    v11 = *(*(a1 + 32) + 16);
  }

  else
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138412290;
      v13 = v6;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "[MRDRemoteDisplayPairingServer] Started pairingServer with pairingInfo: %@", &v12, 0xCu);
    }

    objc_storeStrong(WeakRetained + 6, a2);
    v11 = *(*(a1 + 32) + 16);
  }

  v11();
}

void sub_100090CC4(uint64_t a1)
{
  v2 = +[NSNotificationCenter defaultCenter];
  [v2 addObserver:*(a1 + 32) selector:"handleDeviceInfoDidChange:" name:kMRDeviceInfoDidChangeNotification object:0];

  v7 = +[MRDMediaRemoteServer server];
  v3 = [v7 nowPlayingServer];
  v4 = [*(a1 + 32) origin];
  v5 = [v3 originClientForOrigin:v4];
  v6 = [v5 deviceInfo];
  [*(a1 + 32) setDeviceInfo:v6];
}

void sub_1000912EC(uint64_t a1)
{
  v2 = [*(a1 + 32) outputContext];
  v3 = [v2 concreteOutputDevices];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000913AC;
  v5[3] = &unk_1004B9608;
  v5[4] = *(a1 + 32);
  v4 = [v3 msv_filter:v5];

  [*(a1 + 32) publishToOutputDevices:v4];
}

void sub_100092758(uint64_t a1)
{
  v2 = [*(a1 + 32) activeTopologyChangeIdentifiers];
  [v2 addObject:*(a1 + 40)];
}

void sub_100092884(uint64_t a1)
{
  v2 = [*(a1 + 32) activeTopologyChangeIdentifiers];
  v3 = [v2 containsObject:*(a1 + 40)];

  if (v3)
  {
    v4 = [*(a1 + 32) activeTopologyChangeIdentifiers];
    [v4 removeObject:*(a1 + 40)];

    v5 = [*(a1 + 32) activeTopologyChangeIdentifiers];
    v6 = [v5 count];

    if (!v6)
    {
      v7 = [NSString stringWithFormat:@"alltopologyChangesFinished-%@", *(a1 + 40)];
      [*(a1 + 32) eventuallyMaybeCommitLocalDeviceForReason:v7];
    }
  }
}

id sub_1000930D8(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 deviceUID];
  v5 = [v3 containsUID:v4];

  return v5;
}

void sub_1000932B8(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = v2[3];
  if (v3)
  {
    [v3 invalidate];
    v4 = *(a1 + 32);
    v5 = *(v4 + 24);
    *(v4 + 24) = 0;

    v2 = *(a1 + 32);
  }

  objc_initWeak(&location, v2);
  v6 = [MSVTimer alloc];
  v7 = *(*(a1 + 32) + 16);
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1000933EC;
  v11[3] = &unk_1004B9630;
  objc_copyWeak(&v13, &location);
  v12 = *(a1 + 40);
  v8 = [v6 initWithInterval:0 repeats:v7 queue:v11 block:8.0];
  v9 = *(a1 + 32);
  v10 = *(v9 + 24);
  *(v9 + 24) = v8;

  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);
}

void sub_1000933C8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1000933EC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _maybeCommitLocalDeviceWithReason:*(a1 + 32)];
}

void sub_100093B74(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  if (v3)
  {
    v5 = [*(a1 + 32) commitErrorCount] + 1;
    [v4 setCommitErrorCount:v5];
    if (v5 <= 2)
    {
      v6 = dispatch_time(0, 5000000000 * [*(a1 + 32) commitErrorCount]);
      v7 = *(a1 + 32);
      v8 = *(v7 + 16);
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100093C60;
      block[3] = &unk_1004B6D08;
      block[4] = v7;
      dispatch_after(v6, v8, block);
    }
  }

  else
  {
    [*(a1 + 32) setCommitErrorCount:0];
  }
}

void sub_100093C60(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [[NSString alloc] initWithFormat:@"Retry-%lu", objc_msgSend(v1, "commitErrorCount")];
  [v1 eventuallyMaybeCommitLocalDeviceForReason:v2];
}

id *sub_100093F34(id *result, int a2)
{
  if (a2)
  {
    v2 = result;
    [result[4] _electLocalDeviceAsClusterLeaderWithReason:result[5]];
    v3 = v2[4];
    v4 = v2[5];

    return [v3 _maybeCommitLocalDeviceWithReason:v4];
  }

  return result;
}

BOOL sub_10009429C(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 deviceUID];
  v5 = [v3 outputDeviceForUID:v4];

  if (v5)
  {
    v6 = [v5 clusterComposition];
    v7 = [v6 msv_filter:&stru_1004B9670];
    if ([v7 count])
    {
      v8 = 1;
    }

    else
    {
      v9 = [v5 configuredClusterSize];
      v8 = v9 == [v6 count];
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

void sub_10009436C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = *(a1 + 32);
    v8 = [v7 discoverClusterLeaderErrorCount] + 1;
    [v7 setDiscoverClusterLeaderErrorCount:v8];
    if (v8 <= 9)
    {
      v9 = dispatch_time(0, 5000000000 * [*(a1 + 32) discoverClusterLeaderErrorCount]);
      v10 = *(a1 + 32);
      v11 = *(v10 + 16);
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100094610;
      block[3] = &unk_1004B6D08;
      block[4] = v10;
      dispatch_after(v9, v11, block);
    }
  }

  else
  {
    v12 = [*(a1 + 40) deviceUID];
    v13 = [v5 outputDeviceForUID:v12];

    v14 = [v13 clusterComposition];
    v20 = _NSConcreteStackBlock;
    v21 = 3221225472;
    v22 = sub_100094694;
    v23 = &unk_1004B96C0;
    v24 = *(a1 + 40);
    v15 = [v14 msv_filter:&v20];

    v16 = [v15 msv_filter:{&stru_1004B96E0, v20, v21, v22, v23}];
    v17 = [v16 firstObject];
    if (v17)
    {
      v18 = _MRLogForCategory();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v19 = *(a1 + 48);
        *buf = 138412546;
        v27 = v19;
        v28 = 2112;
        v29 = v17;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "[LocalDeviceCommitManager] Not electing localDevice as clusterLeader %@ because buddy already clusterLeader: %@", buf, 0x16u);
      }
    }

    [*(a1 + 32) setDiscoverClusterLeaderErrorCount:0];
  }

  (*(*(a1 + 56) + 16))();
}

void sub_100094610(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [[NSString alloc] initWithFormat:@"Retry-%lu", objc_msgSend(v1, "discoverClusterLeaderErrorCount")];
  [v1 eventuallyMaybeElectLocalDeviceAsClusterLeaderWithReason:v2];
}

uint64_t sub_100094694(uint64_t a1, void *a2)
{
  v3 = [a2 uid];
  v4 = [*(a1 + 32) deviceUID];
  v5 = [v3 isEqualToString:v4];

  return v5 ^ 1;
}

void sub_100094CE8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _MRLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [v3 bundleIdentifier];
    *buf = 138412290;
    v15 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Requesting client %@ to begin loading browsable content", buf, 0xCu);
  }

  v6 = *(a1 + 32);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100094E38;
  v10[3] = &unk_1004B7508;
  v11 = v3;
  v7 = v6;
  v8 = *(a1 + 40);
  v12 = v7;
  v13 = v8;
  v9 = v3;
  [v9 relayXPCMessage:v6 andReply:1 resultCallback:v10];
}

void sub_100094E38(id *a1)
{
  v2 = MRCreateClientErrorFromXPCMessage();
  v3 = _MRLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [a1[4] bundleIdentifier];
    *v7 = 138412546;
    *&v7[4] = v4;
    v8 = 2112;
    v9 = v2;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Client %@ finished loading browsable content with error: %@", v7, 0x16u);
  }

  *v7 = 0;
  data = xpc_dictionary_get_data(a1[5], "MRXPC_INDEXPATH_DATA_KEY", v7);
  if (data)
  {
    v6 = *v7 >> 3;
  }

  else
  {
    v6 = 0;
  }

  [a1[6] _handleBrowsableContentDidFinishLoadingFromClient:a1[4] indexPath:data withError:{v6, v2}];
}

void sub_100095644(void *a1, uint64_t a2)
{
  if (a2)
  {
    v3 = _MRLogForCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = a1[6];
      v7 = 138543362;
      v8 = v4;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Failed to launch application with bundle ID %{public}@. Dropping initiate playback message.", &v7, 0xCu);
    }
  }

  else
  {
    v5 = a1[5];
    v6 = *(a1[4] + 8);

    [v6 addObject:v5];
  }
}

void sub_100095CD8(void *a1, uint64_t a2)
{
  if (a2)
  {
    v3 = _MRLogForCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v5 = a1[5];
      v4 = a1[6];
      v8 = 138412546;
      v9 = v4;
      v10 = 2114;
      v11 = v5;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Failed to launch %@ for relayable browsable content message %{public}@.", &v8, 0x16u);
    }
  }

  else
  {
    v6 = a1[5];
    v7 = *(a1[4] + 16);

    [v7 addObject:v6];
  }
}

void sub_100096870(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x1Cu);
}

uint64_t sub_1000969A4(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

id sub_1000970A0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_alloc_init(NSMutableArray);
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = *(a1 + 32);
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v12 + 1) + 8 * i);
        if (([v3 containsOutputDeviceWithUID:{v10, v12}] & 1) == 0)
        {
          [v4 addObject:v10];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  return v4;
}

id sub_1000971E0(uint64_t a1, void *a2)
{
  v15 = a2;
  v16 = objc_alloc_init(NSMutableArray);
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v3 = [v15 outputDevices];
  v4 = [v3 countByEnumeratingWithState:&v21 objects:v26 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v22;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v22 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v21 + 1) + 8 * i);
        v17 = 0u;
        v18 = 0u;
        v19 = 0u;
        v20 = 0u;
        v9 = *(a1 + 32);
        v10 = [v9 countByEnumeratingWithState:&v17 objects:v25 count:16];
        if (v10)
        {
          v11 = v10;
          v12 = *v18;
          while (2)
          {
            for (j = 0; j != v11; j = j + 1)
            {
              if (*v18 != v12)
              {
                objc_enumerationMutation(v9);
              }

              if ([v8 containsUID:*(*(&v17 + 1) + 8 * j)])
              {

                goto LABEL_16;
              }
            }

            v11 = [v9 countByEnumeratingWithState:&v17 objects:v25 count:16];
            if (v11)
            {
              continue;
            }

            break;
          }
        }

        [v16 addObject:v8];
LABEL_16:
        ;
      }

      v5 = [v3 countByEnumeratingWithState:&v21 objects:v26 count:16];
    }

    while (v5);
  }

  return v16;
}

BOOL sub_1000973BC(uint64_t a1)
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100097458;
  v5[3] = &unk_1004B90C8;
  v1 = *(a1 + 32);
  v6 = *(a1 + 40);
  v2 = [v1 msv_firstWhere:v5];
  v3 = v2 != 0;

  return v3;
}

uint64_t sub_100097458(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) deviceUID];
  if ([v4 isEqualToString:v3])
  {
    v5 = 1;
  }

  else
  {
    v6 = [*(a1 + 32) clusterID];
    v5 = [v6 isEqualToString:v3];
  }

  return v5;
}

void sub_1000974D8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (!v6)
  {
    v8 = [v5 debugName];

    v7 = _MRLogForCategory();
    v9 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
    if (v8)
    {
      if (!v9)
      {
        goto LABEL_10;
      }

      v10 = *(a1 + 32);
      v11 = [*(a1 + 40) requestID];
      v12 = [v5 debugName];
      v13 = +[NSDate date];
      [v13 timeIntervalSinceDate:*(a1 + 48)];
      *buf = 138544130;
      v54 = v10;
      v55 = 2114;
      v56 = v11;
      v57 = 2112;
      v58 = v12;
      v59 = 2048;
      v60 = v14;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Response: %{public}@<%{public}@> returned <%@> in %.4lf seconds", buf, 0x2Au);
    }

    else
    {
      if (!v9)
      {
        goto LABEL_10;
      }

      v15 = *(a1 + 32);
      v11 = [*(a1 + 40) requestID];
      v12 = +[NSDate date];
      [v12 timeIntervalSinceDate:*(a1 + 48)];
      *buf = 138543874;
      v54 = v15;
      v55 = 2114;
      v56 = v11;
      v57 = 2048;
      v58 = v16;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Response: %{public}@<%{public}@> returned in %.4lf seconds", buf, 0x20u);
    }

    goto LABEL_10;
  }

  v7 = _MRLogForCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    sub_1003A5740(a1);
  }

LABEL_10:

  v48[0] = _NSConcreteStackBlock;
  v48[1] = 3221225472;
  v48[2] = sub_1000979DC;
  v48[3] = &unk_1004B9758;
  v49 = *(a1 + 56);
  v17 = v6;
  v50 = v17;
  v52 = *(a1 + 72);
  v18 = v5;
  v51 = v18;
  v19 = objc_retainBlock(v48);
  v20 = [MRBlockGuard alloc];
  v21 = [*(a1 + 40) requestReasonID];
  v46[0] = _NSConcreteStackBlock;
  v46[1] = 3221225472;
  v46[2] = sub_100097A3C;
  v46[3] = &unk_1004B6FE8;
  v22 = v19;
  v47 = v22;
  v23 = [v20 initWithTimeout:v21 reason:v46 handler:0.0];

  v39[0] = _NSConcreteStackBlock;
  v39[1] = 3221225472;
  v39[2] = sub_100097A4C;
  v39[3] = &unk_1004B97A8;
  v44 = *(a1 + 80);
  v24 = v18;
  v40 = v24;
  v25 = *(a1 + 32);
  v26 = *(a1 + 40);
  v27 = *(a1 + 56);
  v28 = *(a1 + 64);
  *&v29 = v27;
  *(&v29 + 1) = v28;
  *&v30 = v25;
  *(&v30 + 1) = v26;
  v41 = v30;
  v42 = v29;
  v31 = v23;
  v43 = v31;
  v32 = v22;
  v45 = v32;
  v33 = objc_retainBlock(v39);
  if (*(a1 + 88) && (!v6 || [v17 isInformational]))
  {
    v34 = [*(a1 + 56) waitForCompletion];
    [v34 start];

    v35 = *(a1 + 88);
    v36[0] = _NSConcreteStackBlock;
    v36[1] = 3221225472;
    v36[2] = sub_100097DC4;
    v36[3] = &unk_1004B79F0;
    v37 = *(a1 + 56);
    v38 = v33;
    (*(v35 + 16))(v35, v24, v36);
  }
}

uint64_t sub_1000979DC(uint64_t a1)
{
  [*(a1 + 32) trackWithError:*(a1 + 40)];
  result = *(a1 + 56);
  if (result)
  {
    v4 = *(a1 + 40);
    v3 = *(a1 + 48);
    v5 = *(a1 + 32);
    v6 = *(result + 16);

    return v6();
  }

  return result;
}

void sub_100097A4C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = (*(*(a1 + 80) + 16))();
  if ([v3 count])
  {
    v4 = [[NSString alloc] initWithFormat:@"Adding the remaining outputDevices: %@", v3];
    v5 = _MRLogForCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 40);
      v7 = [*(a1 + 48) requestID];
      *buf = 138543874;
      v20 = v6;
      v21 = 2114;
      v22 = v7;
      v23 = 2112;
      v24 = v4;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Update: %{public}@<%{public}@> %@", buf, 0x20u);
    }

    v8 = [*(a1 + 56) followupOutputContextModification];
    [v8 start];

    v9 = [[MRGroupTopologyModificationRequest alloc] initWithRequestDetails:*(a1 + 48) type:3 outputDeviceUIDs:*(a1 + 64)];
    v10 = *(a1 + 32);
    v11 = qos_class_self();
    v12 = dispatch_get_global_queue(v11, 0);
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_100097C94;
    v13[3] = &unk_1004B9780;
    v14 = *(a1 + 40);
    v15 = *(a1 + 48);
    v16 = *(a1 + 56);
    v17 = *(a1 + 72);
    v18 = *(a1 + 88);
    [v10 modifyTopologyWithRequest:v9 withReplyQueue:v12 completion:v13];
  }
}

id sub_100097C94(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _MRLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = [*(a1 + 40) requestID];
    v9 = 138543874;
    v10 = v5;
    v11 = 2114;
    v12 = v6;
    v13 = 2112;
    v14 = @"SetOutputDevices completed";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Update: %{public}@<%{public}@> %@", &v9, 0x20u);
  }

  v7 = [*(a1 + 48) followupOutputContextModification];
  [v7 endWithError:v3];

  result = [*(a1 + 56) disarm];
  if (result)
  {
    return (*(*(a1 + 64) + 16))();
  }

  return result;
}

uint64_t sub_100097DC4(uint64_t a1)
{
  v2 = [*(a1 + 32) waitForCompletion];
  [v2 end];

  v3 = *(*(a1 + 40) + 16);

  return v3();
}

void sub_100097E30(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = a3;
  if ([*(a1 + 32) disarm])
  {
    (*(*(a1 + 40) + 16))();
  }
}

void sub_100097EA8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) searchEndpointsForLocalDevice];
  [v7 endWithError:v6];

  v8 = [v5 outputDevices];
  [*(a1 + 32) setNumberOfDevicesOnLocal:{objc_msgSend(v8, "count")}];

  if (v6 && ![v6 isInformational])
  {
    (*(*(a1 + 72) + 16))();
  }

  else
  {
    v9 = (*(*(a1 + 64) + 16))();
    if ([v9 count])
    {
      v10 = [NSString alloc];
      v11 = [v9 msv_map:&stru_1004B97F0];
      v12 = [v10 initWithFormat:@"Endpoint contains undesirable devices: %@", v11];

      v13 = _MRLogForCategory();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v14 = *(a1 + 40);
        v15 = [*(a1 + 48) requestID];
        *buf = 138543874;
        v43 = v14;
        v44 = 2114;
        v45 = v15;
        v46 = 2112;
        v47 = v12;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Update: %{public}@<%{public}@> %@", buf, 0x20u);
      }

      [*(a1 + 32) setNumberOfUndesiredDevices:{objc_msgSend(v9, "count")}];
      v16 = [v5 designatedGroupLeader];
      v17 = [v16 supportsMultiplayer];

      v18 = _MRLogForCategory();
      v19 = os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT);
      if (v17)
      {
        if (v19)
        {
          v20 = *(a1 + 40);
          v21 = [*(a1 + 48) requestID];
          *buf = 138543874;
          v43 = v20;
          v44 = 2114;
          v45 = v21;
          v46 = 2112;
          v47 = @"Creating new endpoint with just localDevice, will add the rest later...";
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Update: %{public}@<%{public}@> %@", buf, 0x20u);
        }

        v22 = [*(a1 + 32) createEndpoint];
        [v22 start];

        v23 = [*(a1 + 56) deviceUID];
        v41 = v23;
        v24 = [NSArray arrayWithObjects:&v41 count:1];
        v25 = *(a1 + 80);
        v26 = *(a1 + 48);
        v38[0] = _NSConcreteStackBlock;
        v38[1] = 3221225472;
        v38[2] = sub_1000983D0;
        v38[3] = &unk_1004B9818;
        v39 = *(a1 + 32);
        v40 = *(a1 + 72);
        [MRDCreateEndpointRequest createEndpointWithOutputDeviceUIDs:v24 timeout:v26 details:v38 completion:v25];

        v27 = v39;
      }

      else
      {
        if (v19)
        {
          v28 = *(a1 + 40);
          v29 = [*(a1 + 48) requestID];
          *buf = 138543874;
          v43 = v28;
          v44 = 2114;
          v45 = v29;
          v46 = 2112;
          v47 = @"Removing undesired outputDevices, will add the rest later...";
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Update: %{public}@<%{public}@> %@", buf, 0x20u);
        }

        v30 = [*(a1 + 32) removeUndesiredDevicesOutputContextModification];
        [v30 start];

        v27 = [[MRGroupTopologyModificationRequest alloc] initWithRequestDetails:*(a1 + 48) type:2 outputDevices:v9];
        v31 = +[MRAVLocalEndpoint sharedLocalEndpoint];
        v32 = qos_class_self();
        v33 = dispatch_get_global_queue(v32, 0);
        v34[0] = _NSConcreteStackBlock;
        v34[1] = 3221225472;
        v34[2] = sub_100098464;
        v34[3] = &unk_1004B9840;
        v35 = *(a1 + 32);
        v36 = v6;
        v37 = *(a1 + 72);
        [v31 modifyTopologyWithRequest:v27 withReplyQueue:v33 completion:v34];
      }
    }

    else
    {
      (*(*(a1 + 72) + 16))();
    }
  }
}

void sub_1000983D0(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v8 = a2;
  v7 = [v5 createEndpoint];
  [v7 endWithError:v6];

  (*(*(a1 + 40) + 16))();
}

void sub_100098464(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = a2;
  v5 = [v3 removeUndesiredDevicesOutputContextModification];
  [v5 endWithError:a1[5]];

  v6 = a1[6];
  v7 = +[MRAVLocalEndpoint sharedLocalEndpoint];
  (*(v6 + 16))(v6, v7, v4);
}

void sub_100098504(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = a5;
  v7 = [*(a1 + 32) discoverOutputDevices];
  [v7 endWithError:v6];

  if (v6)
  {
    (*(*(a1 + 56) + 16))();
  }

  else
  {
    v8 = [*(a1 + 32) createEndpoint];
    [v8 start];

    v9 = *(a1 + 64);
    v10 = *(a1 + 40);
    v11 = *(a1 + 48);
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100098638;
    v12[3] = &unk_1004B9818;
    v13 = *(a1 + 32);
    v14 = *(a1 + 56);
    [MRDCreateEndpointRequest createEndpointWithOutputDeviceUIDs:v10 timeout:v11 details:v12 completion:v9];
  }
}

void sub_100098638(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v8 = a2;
  v7 = [v5 createEndpoint];
  [v7 endWithError:v6];

  (*(*(a1 + 40) + 16))();
}

void sub_100098A30(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (!v6)
  {
    v8 = [v5 debugName];

    v7 = _MRLogForCategory();
    v9 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
    if (v8)
    {
      if (!v9)
      {
        goto LABEL_10;
      }

      v10 = *(a1 + 32);
      v11 = [*(a1 + 40) requestID];
      v12 = [v5 debugName];
      v13 = +[NSDate date];
      [v13 timeIntervalSinceDate:*(a1 + 48)];
      v17 = 138544130;
      v18 = v10;
      v19 = 2114;
      v20 = v11;
      v21 = 2112;
      v22 = v12;
      v23 = 2048;
      v24 = v14;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Response: %{public}@<%{public}@> returned <%@> in %.4lf seconds", &v17, 0x2Au);
    }

    else
    {
      if (!v9)
      {
        goto LABEL_10;
      }

      v15 = *(a1 + 32);
      v11 = [*(a1 + 40) requestID];
      v12 = +[NSDate date];
      [v12 timeIntervalSinceDate:*(a1 + 48)];
      v17 = 138543874;
      v18 = v15;
      v19 = 2114;
      v20 = v11;
      v21 = 2048;
      v22 = v16;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Response: %{public}@<%{public}@> returned in %.4lf seconds", &v17, 0x20u);
    }

    goto LABEL_10;
  }

  v7 = _MRLogForCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    sub_1003A5740(a1);
  }

LABEL_10:

  (*(*(a1 + 56) + 16))();
}

void sub_100098CB8(id a1)
{
  v1 = objc_alloc_init(MRDMRRelayConnectionManager);
  v2 = qword_1005292A0;
  qword_1005292A0 = v1;
}

void sub_1000990E8(uint64_t a1)
{
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v11;
    do
    {
      v6 = 0;
      do
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v10 + 1) + 8 * v6);
        if (objc_opt_respondsToSelector())
        {
          v8 = *(a1 + 40);
          v9 = [*(a1 + 48) connection];
          [v7 relayConnectionManager:v8 didIngestNewConnection:v9];
        }

        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v4);
  }
}

void sub_100099668(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = a1[4];
  v8 = _MRLogForCategory();
  v9 = v8;
  if (v5 && !v6)
  {
    v10 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
    if (v7)
    {
      if (v10)
      {
        v12 = a1[4];
        v11 = a1[5];
        v13 = +[NSDate date];
        [v13 timeIntervalSinceDate:a1[6]];
        v30 = 138544386;
        v31 = @"MRDMRRelayConnectionManager.waitForConnection";
        v32 = 2114;
        v33 = v11;
        v34 = 2112;
        v35 = v5;
        v36 = 2114;
        v37 = v12;
        v38 = 2048;
        v39 = v14;
        v15 = "Response: %{public}@<%{public}@> returned <%@> for %{public}@ in %.4lf seconds";
        v16 = v9;
        v17 = 52;
LABEL_16:
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, v15, &v30, v17);
        goto LABEL_17;
      }

      goto LABEL_22;
    }

    if (!v10)
    {
      goto LABEL_22;
    }

    v26 = a1[5];
    v13 = +[NSDate date];
    [v13 timeIntervalSinceDate:a1[6]];
    v30 = 138544130;
    v31 = @"MRDMRRelayConnectionManager.waitForConnection";
    v32 = 2114;
    v33 = v26;
    v34 = 2112;
    v35 = v5;
    v36 = 2048;
    v37 = v27;
    v15 = "Response: %{public}@<%{public}@> returned <%@> in %.4lf seconds";
LABEL_15:
    v16 = v9;
    v17 = 42;
    goto LABEL_16;
  }

  if (v6)
  {
    v18 = os_log_type_enabled(v8, OS_LOG_TYPE_ERROR);
    if (v7)
    {
      if (v18)
      {
        v20 = a1[4];
        v19 = a1[5];
        v13 = +[NSDate date];
        [v13 timeIntervalSinceDate:a1[6]];
        v30 = 138544386;
        v31 = @"MRDMRRelayConnectionManager.waitForConnection";
        v32 = 2114;
        v33 = v19;
        v34 = 2114;
        v35 = v6;
        v36 = 2114;
        v37 = v20;
        v38 = 2048;
        v39 = v21;
        _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Response: %{public}@<%{public}@> returned with error <%{public}@> for %{public}@ in %.4lf seconds", &v30, 0x34u);
LABEL_17:

        goto LABEL_22;
      }
    }

    else if (v18)
    {
      sub_1003A6618(a1, v6, v9);
    }

    goto LABEL_22;
  }

  v22 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
  if (!v7)
  {
    if (!v22)
    {
      goto LABEL_22;
    }

    v28 = a1[5];
    v13 = +[NSDate date];
    [v13 timeIntervalSinceDate:a1[6]];
    v30 = 138543874;
    v31 = @"MRDMRRelayConnectionManager.waitForConnection";
    v32 = 2114;
    v33 = v28;
    v34 = 2048;
    v35 = v29;
    v15 = "Response: %{public}@<%{public}@> returned in %.4lf seconds";
    v16 = v9;
    v17 = 32;
    goto LABEL_16;
  }

  if (v22)
  {
    v24 = a1[4];
    v23 = a1[5];
    v13 = +[NSDate date];
    [v13 timeIntervalSinceDate:a1[6]];
    v30 = 138544130;
    v31 = @"MRDMRRelayConnectionManager.waitForConnection";
    v32 = 2114;
    v33 = v23;
    v34 = 2114;
    v35 = v24;
    v36 = 2048;
    v37 = v25;
    v15 = "Response: %{public}@<%{public}@> returned for %{public}@ in %.4lf seconds";
    goto LABEL_15;
  }

LABEL_22:

  (*(a1[7] + 16))();
}

void sub_1000999FC(uint64_t a1)
{
  obj = *(a1 + 32);
  objc_sync_enter(obj);
  v2 = *(a1 + 40);
  v3 = objc_retainBlock(*(a1 + 48));
  LODWORD(v2) = [v2 containsObject:v3];

  if (v2)
  {
    v4 = *(a1 + 40);
    v5 = objc_retainBlock(*(a1 + 48));
    [v4 removeObject:v5];

    objc_sync_exit(obj);
    obj = [[NSError alloc] initWithMRError:26];
    (*(*(a1 + 56) + 16))();
  }

  else
  {
    objc_sync_exit(obj);
  }
}

BOOL sub_100099CC4(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = [a3 connection];
  v5 = v4 == *(a1 + 32);

  return v5;
}

void sub_100099EE0(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = [*(*(a1 + 32) + 8) objectForKeyedSubscript:a2];
  if (v6)
  {
    v8 = _NSConcreteStackBlock;
    v9 = 3221225472;
    v10 = sub_100099FD0;
    v11 = &unk_1004B68F0;
    v12 = [v5 copy];
    v13 = v6;
    v7 = v12;
    dispatch_async(&_dispatch_main_q, &v8);
    [v5 removeAllObjects];
  }
}

void sub_100099FD0(uint64_t a1)
{
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(a1 + 40);
        (*(*(*(&v8 + 1) + 8 * v6) + 16))(*(*(&v8 + 1) + 8 * v6));
        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }
}

void sub_10009A4FC(uint64_t a1)
{
  v1 = *(a1 + 32);
  MRAVEndpointResolveActiveSystemEndpointWithTimeout();
}

void sub_10009A590(uint64_t a1, void *a2)
{
  v3 = [a2 userInfo];
  v4 = [v3 objectForKeyedSubscript:kMRMediaRemoteActiveEndpointTypeUserInfoKey];
  v5 = [v4 intValue];

  if (!v5)
  {
    v6 = *(*(a1 + 32) + 32);

    [v6 update];
  }
}

void sub_10009A624(uint64_t a1, void *a2)
{
  v3 = [a2 object];
  if ([v3 containsLocalDevice])
  {
    [*(a1 + 32) _pausePredicatedRoutesSync];
  }
}

void sub_10009A680(uint64_t a1)
{
  v2 = [*(a1 + 32) activeSystemEndpoint];

  if (!v2)
  {
    v3 = +[MRAVLocalEndpoint sharedLocalEndpoint];
    [*(a1 + 32) setActiveSystemEndpoint:v3];
  }
}

id sub_10009AAD4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 WHAIdentifier];
  v5 = [*(a1 + 32) WHAIdentifier];
  if ([v4 isEqual:v5])
  {
    v6 = 0;
  }

  else
  {
    v6 = [v3 WHAIdentifier];
  }

  return v6;
}

id sub_10009AB68(uint64_t a1)
{
  v2 = [*(a1 + 32) leaderDeviceInfo];
  v3 = [v2 deviceUID];

  if (!v3)
  {
    goto LABEL_6;
  }

  v4 = [*(a1 + 32) leaderDeviceInfo];
  v5 = [v4 WHAIdentifier];
  v6 = [*(a1 + 32) WHAIdentifier];
  v7 = [v5 isEqualToString:v6];

  if (v7)
  {
    goto LABEL_6;
  }

  v8 = [*(a1 + 32) leaderDeviceInfo];
  v9 = [v8 groupUID];
  v10 = [*(a1 + 32) groupUID];
  v11 = [v9 isEqualToString:v10];

  if (!v11)
  {
    goto LABEL_6;
  }

  v12 = [*(a1 + 32) leaderDeviceInfo];
  if ([v12 supportsMultiplayer])
  {
    v13 = [*(a1 + 32) leaderDeviceInfo];
    v14 = [v13 isProxyGroupPlayer];

    if (v14)
    {
LABEL_6:
      v15 = 0;
      goto LABEL_7;
    }
  }

  else
  {
  }

  v17 = [*(a1 + 32) leaderDeviceInfo];
  v15 = [v17 WHAIdentifier];

LABEL_7:

  return v15;
}

uint64_t sub_10009ACD4(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 deviceType] == 1)
  {
    v4 = [v3 uid];
    v5 = [*(a1 + 32) WHAIdentifier];
    v6 = [v4 isEqualToString:v5];
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

uint64_t sub_10009AD58(uint64_t a1, void *a2)
{
  v3 = [a2 uid];
  v4 = [*(a1 + 32) WHAIdentifier];
  v5 = [v3 isEqualToString:v4];

  return v5 ^ 1;
}

BOOL sub_10009ADC4(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 deviceType] == 1)
  {
    v4 = 1;
  }

  else if ([v3 isLocalDevice])
  {
    v5 = [*(a1 + 32) deviceUID];
    v4 = v5 != 0;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

void sub_10009AE3C(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = MRLogCategoryDiscovery();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 32);
      v6 = 138412546;
      v7 = v5;
      v8 = 2112;
      v9 = v3;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[MRDRoutingContinuityManager] Error performing request: %@ - %@", &v6, 0x16u);
    }
  }
}

id sub_10009B084(uint64_t a1)
{
  v2 = MRLogCategoryDiscovery();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "[MRDRoutingContinuityManager] Resuming PredictedRoutesSync", v4, 2u);
  }

  return [*(a1 + 32) setPausePredictedRoutesTimer:0];
}

void sub_10009B66C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, id location)
{
  objc_destroyWeak((v31 + 32));
  objc_destroyWeak((v32 + 32));
  objc_destroyWeak(&a30);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10009B6C8(uint64_t a1)
{
  v1 = MSVAutoBugCaptureDomainMediaRemote;
  v2 = *(a1 + 32);
  v4 = +[NSBundle mainBundle];
  v3 = [v4 bundleIdentifier];
  [MSVAutoBugCapture snapshotWithDomain:v1 type:@"Discovery" subType:v2 context:v3 triggerThresholdValues:0 events:0 completion:0];
}

void sub_10009B774(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _scheduleAvailableOutputDevicesReload];
}

void sub_10009B7B4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _scheduleAvailableOutputDevicesReload];
}

id sub_10009B7F4(uint64_t a1)
{
  [*(a1 + 32) _initializeDiscoverySessions];
  result = MSVDeviceOSIsInternalInstall();
  if (result)
  {
    v3 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.mediaremote"];
    v4 = *(a1 + 32);
    v5 = *(v4 + 176);
    *(v4 + 176) = v3;

    [*(*(a1 + 32) + 176) addObserver:*(a1 + 32) forKeyPath:@"remotecontrol-denylist" options:0 context:off_10051F468];
    [*(*(a1 + 32) + 176) addObserver:*(a1 + 32) forKeyPath:@"remotecontrol-allowlist" options:0 context:off_10051F470];
    v6 = *(a1 + 32);

    return [v6 _loadDefaults];
  }

  return result;
}

void sub_10009BB3C(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2[12])
  {
    v3 = *(a1 + 40);
    v4 = MRCreateIndentedDebugDescriptionFromObject();
    [v3 appendFormat:@"  avDiscoverySession = %@\n", v4];

    v2 = *(a1 + 32);
  }

  if (v2[13])
  {
    v5 = *(a1 + 40);
    v6 = MRCreateIndentedDebugDescriptionFromObject();
    [v5 appendFormat:@"  idsDiscoverySession = %@\n", v6];

    v2 = *(a1 + 32);
  }

  if (v2[14])
  {
    v7 = *(a1 + 40);
    v8 = MRCreateIndentedDebugDescriptionFromObject();
    [v7 appendFormat:@"  groupSessionDiscoverySession = %@\n", v8];

    v2 = *(a1 + 32);
  }

  v9 = v2[15];
  if (v9)
  {
    v10 = *(a1 + 40);
    v11 = [v9 debugDescription];
    [v10 appendFormat:@"  companionDiscoverySession=%@\n", v11];

    v2 = *(a1 + 32);
  }

  v12 = v2[16];
  if (v12)
  {
    v13 = *(a1 + 40);
    v14 = [v12 debugDescription];
    [v13 appendFormat:@"  externalDiscoverySession=%@\n", v14];

    v2 = *(a1 + 32);
  }

  v15 = v2[17];
  if (v15)
  {
    v16 = *(a1 + 40);
    v17 = [v15 debugDescription];
    [v16 appendFormat:@"  companionConnectionController=%@\n", v17];

    v2 = *(a1 + 32);
  }

  v18 = v2[18];
  if (v18)
  {
    v19 = *(a1 + 40);
    v20 = [v18 debugDescription];
    [v19 appendFormat:@"  undiscoverableGroupLeader=%@\n", v20];
  }
}

id sub_10009C3D0(uint64_t a1)
{
  if (*(a1 + 52) == 1)
  {
    v2 = *(a1 + 32);
    v3 = [v2 availableOutputDevices];
    [v2 logOutputDevicesChanged:v3 oldOutputDevices:0];
  }

  result = [*(*(a1 + 32) + 96) setDiscoveryMode:*(a1 + 48) forClientIdentifiers:*(a1 + 40)];
  if (*(a1 + 52) == 1)
  {
    v5 = _MRLogForCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 32);
      v7 = *(a1 + 48);
      v8 = MRMediaRemoteCopyRouteDiscoveryModeDescription();
      v10 = 138412546;
      v11 = v6;
      v12 = 2114;
      v13 = v8;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[RemoteControlDiscoverySession] %@ - Discovery mode changed to: %{public}@", &v10, 0x16u);
    }

    [*(*(a1 + 32) + 104) setDiscoveryMode:*(a1 + 48)];
    [*(*(a1 + 32) + 128) setDiscoveryMode:*(a1 + 48)];
    v9 = *(*(a1 + 32) + 88);
    if (*(a1 + 48))
    {
      return [v9 startActivityTracking];
    }

    else
    {
      return [v9 stopActivityTracking];
    }
  }

  return result;
}

id sub_10009C934(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 80);
  if (!v2)
  {
    v3 = objc_alloc_init(NSMutableSet);
    v4 = *(a1 + 32);
    v5 = *(v4 + 80);
    *(v4 + 80) = v3;

    v2 = *(*(a1 + 32) + 80);
  }

  [v2 addObject:*(a1 + 40)];
  v6 = *(a1 + 32);

  return [v6 _reloadOutputDevices];
}

id sub_10009CA48(uint64_t a1)
{
  [*(*(a1 + 32) + 80) removeObject:*(a1 + 40)];
  v2 = *(a1 + 32);

  return [v2 _reloadOutputDevices];
}

id sub_10009CD18(uint64_t a1)
{
  [*(a1 + 32) _loadDefaults];
  v2 = *(a1 + 32);

  return [v2 _scheduleAvailableOutputDevicesReload];
}

id sub_10009CE84(uint64_t a1, void *a2)
{
  v2 = *(*(a1 + 32) + 160);
  v3 = [a2 uid];
  v4 = [v2 containsObject:v3];

  return v4;
}

uint64_t sub_10009CED8(uint64_t a1, void *a2)
{
  v2 = *(*(a1 + 32) + 168);
  v3 = [a2 uid];
  LODWORD(v2) = [v2 containsObject:v3];

  return v2 ^ 1;
}

void sub_10009D160(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v6 = [[MRDAVRemoteControlClusterOutputDevice alloc] initWithDevices:v4];

  v5 = v6;
  if (v6)
  {
    [*(a1 + 32) addObject:v6];
    v5 = v6;
  }
}

id sub_10009D864(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 isPrimaryLocalDevice])
  {
    v4 = [v3 descriptor];
    [*(a1 + 32) _mergeDeviceInfo:*(a1 + 40) intoProtobuf:v4];
    [*(a1 + 32) _logChangesInModifyingOutputDevice:v3 toOutputDevice:v4 reason:@"deviceInfo"];
    v5 = [[MRAVDistantOutputDevice alloc] initWithDescriptor:v4];
  }

  else
  {
    v5 = v3;
  }

  return v5;
}

id sub_10009D998(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 isPrimaryLocalDevice])
  {
    v4 = +[MRDAVOutputContextManager sharedManager];
    v5 = [*(a1 + 32) deviceInfo];
    v6 = [v5 deviceUID];
    v7 = [v4 outputContextForOutputDeviceUID:v6];

    v8 = [v7 contextID];
    [*(a1 + 32) setRoutingContextUID:v8];
    if (v8)
    {
      v9 = [v3 descriptor];
      v10 = [v3 groupID];
      v11 = MRComputeGroupContextID();
      if (v11 && ([v8 isEqualToString:v11] & 1) == 0)
      {
        v12 = [v10 stringByReplacingOccurrencesOfString:v11 withString:v8];
        [v9 setGroupID:v12];
      }

      v13 = [v3 airPlayGroupID];
      v14 = MRComputeGroupContextID();
      if (v14 && ([v8 isEqualToString:v14] & 1) == 0)
      {
        v15 = [v13 stringByReplacingOccurrencesOfString:v14 withString:v8];
        [v9 setAirPlayGroupID:v15];
      }

      [*(a1 + 32) _logChangesInModifyingOutputDevice:v3 toOutputDevice:v9 reason:@"reservedOutputContext"];
      v16 = [[MRAVDistantOutputDevice alloc] initWithDescriptor:v9];
    }

    else
    {
      v16 = v3;
    }
  }

  else
  {
    v16 = v3;
  }

  return v16;
}

BOOL sub_10009DF7C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10009E028;
  v9[3] = &unk_1004B8A40;
  v10 = v3;
  v5 = v3;
  v6 = [v4 msv_firstWhere:v9];
  v7 = v6 != 0;

  return v7;
}

id sub_10009E028(uint64_t a1, void *a2)
{
  v3 = [a2 uid];
  v4 = [*(a1 + 32) uid];
  v5 = [v3 isEqual:v4];

  return v5;
}

void sub_10009E08C(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setIsRemoteControllable:1];
  [v3 setTransportType:5];
  v4 = [[MRAVDistantOutputDevice alloc] initWithDescriptor:v3];
  [*(a1 + 32) addObject:v4];
  [*(a1 + 40) _logChangesInModifyingOutputDevice:0 toOutputDevice:v3 reason:@"addFromOutputContext"];
}

void sub_10009F5E8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_10009F620(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _scheduleAvailableOutputDevicesReload];
}

void sub_10009F660(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _scheduleAvailableOutputDevicesReload];
}

void sub_10009F6A0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _scheduleAvailableOutputDevicesReload];
}

void sub_10009F8DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10009FB30(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10009FB58(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _scheduleAvailableOutputDevicesReload];
}

void sub_1000A01A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000A01C0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _invalidate];
    WeakRetained = v2;
  }
}

void sub_1000A0478(id a1)
{
  v1 = dispatch_queue_create("com.apple.mediaremote.MRDAVHostedDiscoverySession.calloutQueue", 0);
  v2 = qword_1005292B0;
  qword_1005292B0 = v1;
}

void sub_1000A0644(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 56);
  if (*(v2 + 20))
  {
    if (!v3)
    {
      v4 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"com.apple.mediaremoted.MRDAVHostedDiscoverySession/%@(%d)", *(v2 + 112), [*(v2 + 32) processIdentifier]);
      v5 = [[MROSTransaction alloc] initWithName:v4];
      v6 = *(a1 + 32);
      v7 = *(v6 + 56);
      *(v6 + 56) = v5;

      v8 = *(*(a1 + 32) + 56);
      MRRegisterTransaction();

      v2 = *(a1 + 32);
    }

    if (!*(v2 + 168))
    {
      v9 = +[RBSProcessIdentifier identifierWithPid:](RBSProcessIdentifier, "identifierWithPid:", [*(v2 + 32) processIdentifier]);
      v10 = [RBSProcessHandle handleForIdentifier:v9 error:0];

      if (v10)
      {
        objc_initWeak(&location, *(a1 + 32));
        v15[0] = _NSConcreteStackBlock;
        v15[1] = 3221225472;
        v15[2] = sub_1000A0854;
        v15[3] = &unk_1004B9BB8;
        v16 = v10;
        objc_copyWeak(&v17, &location);
        v11 = [RBSProcessMonitor monitorWithConfiguration:v15];
        v12 = *(a1 + 32);
        v13 = *(v12 + 168);
        *(v12 + 168) = v11;

        objc_destroyWeak(&v17);
        objc_destroyWeak(&location);
      }

      v14 = [v10 currentState];
      [*(a1 + 32) setProcessSuspended:{objc_msgSend(v14, "taskState") == 3}];
    }
  }

  else
  {
    *(v2 + 56) = 0;
  }
}

void sub_1000A0838(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1000A0854(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[RBSProcessStateDescriptor descriptor];
  [v4 setValues:1];
  [v3 setStateDescriptor:v4];
  v5 = [RBSProcessPredicate predicateMatchingHandle:*(a1 + 32)];
  v9 = v5;
  v6 = [NSArray arrayWithObjects:&v9 count:1];
  [v3 setPredicates:v6];

  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000A09BC;
  v7[3] = &unk_1004B9B90;
  objc_copyWeak(&v8, (a1 + 40));
  [v3 setUpdateHandler:v7];
  objc_destroyWeak(&v8);
}

void sub_1000A09BC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = [a4 state];
  v5 = [v7 taskState] == 3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setProcessSuspended:v5];
}

void sub_1000A0B8C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = MRLogCategoryDiscovery();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = 138412546;
    v7 = v5;
    v8 = 2112;
    v9 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[HostedDiscoverySession] %@ error fetching configuration: %@", &v6, 0x16u);
  }

  (*(*(a1 + 40) + 16))();
}

void sub_1000A0C68(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v3 setConfiguration:v4];
  (*(*(a1 + 40) + 16))();
}

void sub_1000A10B0(uint64_t a1)
{
  v2 = +[NSNotificationCenter defaultCenter];
  [v2 postNotificationName:@"MRDAVHostedRoutingObserverDiscoveryModeDidChangeNotification" object:*(a1 + 32)];
}

void *sub_1000A118C(void *result)
{
  v1 = result[4];
  v2 = *(result + 40);
  if (*(v1 + 18) != v2)
  {
    v3 = result;
    *(v1 + 18) = v2;
    v4 = MRLogCategoryDiscovery();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = v3[4];
      v6 = *(v3 + 40);
      v7 = 138412546;
      v8 = v5;
      v9 = 1024;
      v10 = v6;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[HostedDiscoverySession] %@ setting processSuspended to %{BOOL}u", &v7, 0x12u);
    }

    return [v3[4] _reevaluateEffectiveDiscoveryMode];
  }

  return result;
}

void sub_1000A13A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000A15FC(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(v3 + 104);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000A169C;
  v6[3] = &unk_1004B89C8;
  v6[4] = v3;
  v7 = v2;
  v5 = v2;
  [v4 canSendMessage:v6];
}

void sub_1000A169C(uint64_t a1, int a2)
{
  v3 = *(a1 + 32);
  if (a2)
  {
    v7 = [*(v3 + 32) remoteObjectProxy];
    [v7 availableOutputDevicesDidChange:*(a1 + 40)];
  }

  else
  {
    v4 = *(v3 + 64);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000A1774;
    block[3] = &unk_1004B68F0;
    v5 = *(a1 + 40);
    v6 = *(a1 + 32);
    v9 = v5;
    v10 = v6;
    dispatch_sync(v4, block);
  }
}

void sub_1000A1774(uint64_t a1)
{
  v2 = +[MRUserSettings currentSettings];
  v3 = [v2 verboseHostedDiscoverySessionLogging];

  if (v3)
  {
    v4 = MRLogCategoryDiscovery();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 32);
      v6 = *(a1 + 40);
      v7 = 138412546;
      v8 = v5;
      v9 = 2112;
      v10 = v6;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[HostedDiscoverySession] Caching outputDevices %@ for %@", &v7, 0x16u);
    }
  }

  objc_storeStrong((*(a1 + 40) + 96), *(a1 + 32));
}

void sub_1000A1900(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(v3 + 104);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000A19A0;
  v6[3] = &unk_1004B89C8;
  v6[4] = v3;
  v7 = v2;
  v5 = v2;
  [v4 canSendMessage:v6];
}

void sub_1000A19A0(uint64_t a1, int a2)
{
  v3 = *(a1 + 32);
  if (a2)
  {
    v7 = [*(v3 + 32) remoteObjectProxy];
    [v7 availableEndpointsDidChange:*(a1 + 40)];
  }

  else
  {
    v4 = *(v3 + 64);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000A1A78;
    block[3] = &unk_1004B68F0;
    v5 = *(a1 + 40);
    v6 = *(a1 + 32);
    v9 = v5;
    v10 = v6;
    dispatch_sync(v4, block);
  }
}

void sub_1000A1A78(uint64_t a1)
{
  v2 = +[MRUserSettings currentSettings];
  v3 = [v2 verboseHostedDiscoverySessionLogging];

  if (v3)
  {
    v4 = MRLogCategoryDiscovery();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 32);
      v6 = *(a1 + 40);
      v7 = 138412546;
      v8 = v5;
      v9 = 2112;
      v10 = v6;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[HostedDiscoverySession] Caching endpoints %@ for %@", &v7, 0x16u);
    }
  }

  objc_storeStrong((*(a1 + 40) + 88), *(a1 + 32));
}

void sub_1000A1E08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_1000A1E3C(void *a1)
{
  objc_storeStrong((*(a1[5] + 8) + 40), *(a1[4] + 96));
  objc_storeStrong((*(a1[6] + 8) + 40), *(a1[4] + 88));
  v2 = a1[4];
  v3 = *(v2 + 96);
  *(v2 + 96) = 0;

  v4 = a1[4];
  v5 = *(v4 + 88);
  *(v4 + 88) = 0;
}

id sub_1000A21F4(uint64_t a1)
{
  [*(a1 + 32) initializeObserversAndState];
  v2 = *(a1 + 32);

  return [v2 reevaluateSystemStateWithReason:@"Initial evaluation"];
}

void sub_1000A2318(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_1000A2330(uint64_t a1)
{
  result = [*(a1 + 32) _onQueue_autoJoinMaxRetriesReached];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

void sub_1000A23EC(uint64_t a1)
{
  v2 = [*(a1 + 32) remoteASEDeviceInfo];
  v3 = [v2 groupSessionToken];

  v4 = _MRLogForCategory();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (v5)
    {
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[MRDRemoteControlGroupSessionCoordinator] Resetting auto-join retry count", v6, 2u);
    }

    [*(a1 + 32) setAutoJoinRetryCount:0];
    [*(a1 + 32) reevaluateSystemStateWithReason:@"External call to retry auto-join"];
  }

  else
  {
    if (v5)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[MRDRemoteControlGroupSessionCoordinator] Ignoring request to retryAutoJoin because there is no target remote session", buf, 2u);
    }
  }
}

void sub_1000A2894(uint64_t a1)
{
  v2 = [*(a1 + 32) identifier];
  v3 = [*(a1 + 40) remoteASEDeviceInfo];
  v4 = [v3 identifier];
  v5 = [v2 isEqualToString:v4];

  if (v5)
  {
    [*(a1 + 40) setRemoteASEDeviceInfo:*(a1 + 32)];
    [*(a1 + 40) setAutoJoinRetryCount:0];
    v6 = *(a1 + 40);

    [v6 reevaluateSystemStateWithReason:@"Remote ASE device info changed"];
  }
}

void sub_1000A2A10(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) queue];
  dispatch_assert_queue_V2(v4);

  v5 = +[MRNowPlayingOriginClientManager sharedManager];
  v6 = [v5 activeSystemEndpointOutputDeviceUIDForType:0];

  if (v6 && ([v3 containsOutputDeviceWithUID:v6] & 1) == 0)
  {
    v13 = _MRLogForCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "[MRDRemoteControlGroupSessionCoordinator] Not refreshing ASE info because it changed while resolving", buf, 2u);
    }
  }

  else
  {
    if (![v3 isLocalEndpoint])
    {
      v10 = [v3 designatedGroupLeader];
      v11 = [v10 transportType];

      if (v11 != 6)
      {
        v21 = MREndpointConnectionReasonUserInfoKey;
        v22 = @"RemoteControlCoordinator";
        v14 = [NSDictionary dictionaryWithObjects:&v22 forKeys:&v21 count:1];
        v17[0] = _NSConcreteStackBlock;
        v17[1] = 3221225472;
        v17[2] = sub_1000A2C90;
        v17[3] = &unk_1004B9C80;
        v15 = v3;
        v16 = *(a1 + 32);
        v18 = v15;
        v19 = v16;
        [v15 connectToExternalDeviceWithUserInfo:v14 completion:v17];

        goto LABEL_15;
      }

      v12 = _MRLogForCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "[MRDRemoteControlGroupSessionCoordinator] Clearing ASE info because remote device is connected via GroupSession", buf, 2u);
      }

      [*(a1 + 32) setRemoteASEDeviceInfo:0];
      v8 = *(a1 + 32);
      v9 = @"Remote ASE connected via GroupSession";
      goto LABEL_10;
    }

    v7 = [*(a1 + 32) remoteASEDeviceInfo];

    if (v7)
    {
      [*(a1 + 32) setRemoteASEDeviceInfo:0];
      v8 = *(a1 + 32);
      v9 = @"Remote ASE changed to local";
LABEL_10:
      [v8 reevaluateSystemStateWithReason:v9];
    }
  }

LABEL_15:
}

void sub_1000A2C90(uint64_t a1, uint64_t a2)
{
  v4 = (a1 + 32);
  v5 = [*(a1 + 32) origin];
  v6 = v5;
  if (a2 || !v5)
  {
    v8 = _MRLogForCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_1003A6718(v4);
    }
  }

  else
  {
    v7 = +[MRNowPlayingOriginClientManager sharedManager];
    v8 = [v7 activeSystemEndpointOutputDeviceUIDForType:0];

    if (v8 && ([*v4 containsOutputDeviceWithUID:v8] & 1) != 0)
    {
      v9 = +[MRDMediaRemoteServer server];
      v10 = [v9 nowPlayingServer];
      v11 = [v10 originClientForOrigin:v6];
      v12 = [v11 deviceInfo];
      v13 = [v12 copy];

      v14 = [*(a1 + 40) queue];
      v16[0] = _NSConcreteStackBlock;
      v16[1] = 3221225472;
      v16[2] = sub_1000A2E7C;
      v16[3] = &unk_1004B68F0;
      v16[4] = *(a1 + 40);
      v17 = v13;
      v15 = v13;
      dispatch_async(v14, v16);
    }

    else
    {
      v15 = _MRLogForCategory();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "[MRDRemoteControlGroupSessionCoordinator] Not refreshing ASE info because it changed while connecting", buf, 2u);
      }
    }
  }
}

id sub_1000A2E7C(uint64_t a1)
{
  [*(a1 + 32) setRemoteASEDeviceInfo:*(a1 + 40)];
  v2 = *(a1 + 32);

  return [v2 reevaluateSystemStateWithReason:@"Remote ASE changed"];
}

void sub_1000A3A74(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000A3B50;
  block[3] = &unk_1004B69D0;
  v8 = *(a1 + 32);
  v12 = v5;
  v13 = v8;
  v14 = v6;
  v9 = v6;
  v10 = v5;
  dispatch_async(v7, block);
}

id sub_1000A3B50(uint64_t a1)
{
  v2 = _MRLogForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v8 = 138543362;
    v9 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "[MRDRemoteControlGroupSessionCoordinator] Started session: %{public}@.", &v8, 0xCu);
  }

  [*(a1 + 32) addObserver:*(a1 + 40)];
  v4 = [*(a1 + 32) identifier];
  [*(a1 + 40) setHostedSessionIdentifier:v4];

  [*(a1 + 40) setStartingSession:0];
  if (*(a1 + 48))
  {
    v5 = _MRLogForCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_1003A6784((a1 + 48));
    }

    [*(a1 + 40) reevaluateAfterInterval:@"Failed to start group session" withReason:15.0];
  }

  if ([*(a1 + 32) state] == 4)
  {
    v6 = _MRLogForCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_1003A67F0(v6);
    }

    [*(a1 + 40) reevaluateAfterInterval:@"Fast invalidation after start group session" withReason:15.0];
  }

  return [*(a1 + 40) reevaluateSystemStateWithReason:@"Started group session"];
}

void sub_1000A3CE8(uint64_t a1)
{
  v2 = [*(a1 + 32) queue];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000A3D8C;
  v4[3] = &unk_1004B68F0;
  v3 = *(a1 + 40);
  v4[4] = *(a1 + 32);
  v5 = v3;
  dispatch_async(v2, v4);
}

void sub_1000A3D8C(uint64_t a1)
{
  [*(a1 + 32) setJoiningSession:0];
  v2 = _MRLogForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    sub_1003A6834(a1);
  }

  v3 = [*(a1 + 32) sessionManager];
  v4 = [v3 session];

  if (v4)
  {
    v5 = [v4 identifier];
    v6 = [*(a1 + 40) sessionIdentifier];
    v7 = [v5 isEqual:v6];

    if (v7)
    {
      v8 = [*(a1 + 32) sessionManager];
      [v8 leaveRemoteControlGroupSession:v4];
    }
  }

  [*(a1 + 32) reevaluateAfterInterval:@"Timed out trying to auto-join remote session" withReason:15.0];
}

void sub_1000A3E8C(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [a1[4] queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000A3F8C;
  block[3] = &unk_1004B77E8;
  v11 = a1[5];
  v12 = v5;
  v13 = a1[4];
  v14 = v6;
  v15 = a1[6];
  v8 = v6;
  v9 = v5;
  dispatch_async(v7, block);
}

id sub_1000A3F8C(uint64_t a1)
{
  if (([*(a1 + 32) disarm] & 1) == 0)
  {
    v7 = *(a1 + 40);
    v8 = _MRLogForCategory();
    v9 = os_log_type_enabled(v8, OS_LOG_TYPE_ERROR);
    if (v7)
    {
      if (v9)
      {
        sub_1003A68A0((a1 + 40));
      }

      v10 = [*(a1 + 48) sessionManager];
      [v10 leaveRemoteControlGroupSession:*(a1 + 40)];

      v5 = *(a1 + 48);
      v6 = @"Session auto-joined, but not within timeout";
    }

    else
    {
      if (v9)
      {
        sub_1003A690C(a1);
      }

      v5 = *(a1 + 48);
      v6 = @"Failed to auto-join group session after timeout";
    }

    return [v5 reevaluateAfterInterval:v6 withReason:15.0];
  }

  [*(a1 + 48) setJoiningSession:0];
  [*(a1 + 40) addObserver:*(a1 + 48)];
  v2 = *(a1 + 56);
  v3 = _MRLogForCategory();
  v4 = v3;
  if (v2)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_1003A6978(a1, (a1 + 56));
    }

    v5 = *(a1 + 48);
    v6 = @"Failed to auto-join group session";
    return [v5 reevaluateAfterInterval:v6 withReason:15.0];
  }

  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v11 = *(a1 + 40);
    v13 = 138543362;
    v14 = v11;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[MRDRemoteControlGroupSessionCoordinator] Auto-joined remote session: %{public}@", &v13, 0xCu);
  }

  return [*(a1 + 48) reevaluateSystemStateWithReason:@"Auto-joined remote session"];
}

void sub_1000A4318(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained setThrottled:0];
  v2 = [NSString stringWithFormat:@"[Delayed] %@", *(a1 + 32)];
  [WeakRetained reevaluateSystemStateWithReason:v2];
}

void sub_1000A44A8(uint64_t a1)
{
  v2 = [*(a1 + 40) diagnosticDescription];
  [*(a1 + 32) setGroupSessionCoordinatorState:v2];
}

void sub_1000A45BC(uint64_t a1)
{
  v2 = [*(a1 + 32) hostedSessionIdentifier];
  v3 = [*(a1 + 40) identifier];
  v4 = v3;
  if (v2 == v3)
  {

    goto LABEL_7;
  }

  v5 = [v2 isEqual:v3];

  if (v5)
  {
LABEL_7:
    if (*(a1 + 48) != 4)
    {
      return;
    }

    v10 = _MRLogForCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "[MRDRemoteControlGroupSessionCoordinator] Hosted session invalidated.", buf, 2u);
    }

    [*(a1 + 32) clearHostedSessionState];
    v11 = *(a1 + 32);
    v12 = @"Hosted session invalidated";
    v13 = 15.0;
    goto LABEL_15;
  }

  v6 = [*(a1 + 32) rotatingSessionIdentifier];
  v7 = [*(a1 + 40) identifier];
  v8 = v7;
  if (v6 == v7)
  {

    goto LABEL_12;
  }

  v9 = [v6 isEqual:v7];

  if (v9)
  {
LABEL_12:
    v14 = _MRLogForCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "[MRDRemoteControlGroupSessionCoordinator] Completed session rotation.", v15, 2u);
    }

    [*(a1 + 32) clearHostedSessionState];
    v11 = *(a1 + 32);
    v12 = @"Completed session rotation";
    v13 = 1.0;
LABEL_15:
    [v11 reevaluateAfterInterval:v12 withReason:v13];
  }
}

void sub_1000A4810(uint64_t a1)
{
  v2 = [*(a1 + 32) hostedSessionIdentifier];
  v3 = [*(a1 + 40) identifier];
  v4 = v3;
  if (v2 == v3)
  {
  }

  else
  {
    v5 = [v2 isEqual:v3];

    if ((v5 & 1) == 0)
    {
      return;
    }
  }

  v6 = _MRLogForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[MRDRemoteControlGroupSessionCoordinator] Rotating hosted session.", v9, 2u);
  }

  [*(a1 + 32) clearHostedSessionState];
  v7 = [*(a1 + 40) identifier];
  [*(a1 + 32) setRotatingSessionIdentifier:v7];

  v8 = [*(a1 + 32) sessionManager];
  [v8 finishRemoteControlGroupSession:*(a1 + 40)];
}

id sub_1000A49D0(uint64_t a1)
{
  [*(a1 + 32) setEligibilityStatus:*(a1 + 40)];
  v2 = *(a1 + 32);

  return [v2 reevaluateSystemStateWithReason:@"Eligibility status changed"];
}

id sub_1000A4AA8(uint64_t a1)
{
  [*(a1 + 32) setClusterStatus:*(a1 + 40)];
  v2 = *(a1 + 32);

  return [v2 reevaluateSystemStateWithReason:@"Cluster status changed"];
}

void sub_1000A532C(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 8) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_1000A5478(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 16) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

id sub_1000A56E0(void *a1)
{
  v2 = a1[5];
  v3 = *(a1[4] + 48);
  v4 = [NSNumber numberWithUnsignedLongLong:a1[6]];
  [v3 setObject:v2 forKey:v4];

  v6 = a1[4];
  v5 = a1[5];

  return [v5 setDelegate:v6];
}

void sub_1000A5854(void *a1)
{
  v2 = *(a1[4] + 48);
  v6 = [NSNumber numberWithUnsignedLongLong:a1[6]];
  v3 = [v2 objectForKey:v6];
  v4 = *(a1[5] + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void sub_1000A5958(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 48);
  v2 = [NSNumber numberWithUnsignedLongLong:*(a1 + 40)];
  [v1 removeObjectForKey:v2];
}

void sub_1000A5A88(uint64_t a1)
{
  [*(*(a1 + 32) + 8) addObject:*(a1 + 40)];
  v2 = *(*(a1 + 32) + 32);
  v4 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [*(a1 + 40) uniqueIdentifier]);
  v3 = [NSNumber numberWithUnsignedLongLong:*(a1 + 48)];
  [v2 setObject:v4 forKey:v3];
}

void sub_1000A5C34(void *a1)
{
  v2 = *(a1[4] + 32);
  v3 = [NSNumber numberWithUnsignedLongLong:a1[6]];
  v4 = [v2 objectForKey:v3];
  v5 = [v4 longLongValue];

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = *(a1[4] + 8);
  v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    while (2)
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v12 + 1) + 8 * i);
        if ([v11 uniqueIdentifier] == v5)
        {
          objc_storeStrong((*(a1[5] + 8) + 40), v11);
          goto LABEL_11;
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:
}

id sub_1000A5E24(uint64_t a1)
{
  [*(*(a1 + 32) + 8) removeAllObjects];
  v2 = *(*(a1 + 32) + 32);

  return [v2 removeAllObjects];
}

void sub_1000A5FA0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000A5FBC(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 16);
  v2 = [NSNumber numberWithUnsignedInt:*(a1 + 40)];
  [v1 addObject:v2];
}

void sub_1000A602C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained && [WeakRetained voiceRecordingState] != a3)
  {
    v6 = _MRLogForCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = MRVoiceRecordingStateCopyDescription();
      v9 = 138412546;
      v10 = v7;
      v11 = 2112;
      v12 = v5;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[ExternalDeviceConnection(Server)] Setting new voice recording state: %@ on client: %@", &v9, 0x16u);
    }

    [v5 setVoiceRecordingState:a3];
    v8 = [[MRSetRecordingStateMessage alloc] initWithRecordingState:a3];
    [v5 sendMessage:v8];
  }
}

void sub_1000A6314(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000A6340(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 16) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_1000A6554(uint64_t a1)
{
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v2 = *(*(a1 + 32) + 64);
  v3 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v12;
    while (2)
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v12 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v11 + 1) + 8 * i);
        v8 = *(a1 + 40);
        MRLyricsEventGetToken();
        v9 = MRLyricsItemTokenGetIdentifier();
        MRLyricsEventGetToken();
        v10 = MRLyricsItemTokenGetIdentifier();
        if ([v10 isEqualToString:{v9, v11}])
        {
          [*(*(a1 + 32) + 64) removeObject:v7];

          goto LABEL_11;
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:
}

void sub_1000A6884(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_1000A68AC(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 64) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = *(*(a1 + 32) + 64);

  return [v5 removeAllObjects];
}

uint64_t sub_1000A698C(uint64_t result)
{
  v1 = *(result + 44);
  if (v1 == 234)
  {
    v2 = *(result + 48);
    v3 = *(result + 32);
    v4 = 84;
  }

  else
  {
    if (v1 != 233)
    {
      return result;
    }

    v2 = *(result + 48);
    v3 = *(result + 32);
    v4 = 72;
  }

  v5 = v3 + v4;
  if (v2 == 1)
  {
    v6 = *(result + 40);
    *(v5 + 8) = *(result + 48);
    *v5 = v6;
  }

  else
  {
    *(v5 + 8) = 0;
    *v5 = 0;
  }

  return result;
}

void sub_1000A6B1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 48), 8);
  _Unwind_Resume(a1);
}

void *sub_1000A6B40(void *result)
{
  v1 = result[4];
  if (*(v1 + 72))
  {
    *(*(result[5] + 8) + 24) = 1;
    v1 = result[4];
  }

  if (*(v1 + 84))
  {
    *(*(result[6] + 8) + 24) = 1;
  }

  return result;
}

void sub_1000A6C58(void *a1)
{
  if (!*(a1[4] + 96))
  {
    v2 = objc_alloc_init(NSMutableDictionary);
    v3 = a1[4];
    v4 = *(v3 + 96);
    *(v3 + 96) = v2;
  }

  v8 = [[MSVPair alloc] initWithFirst:a1[5] second:a1[6]];
  v5 = a1[5];
  v6 = *(a1[4] + 96);
  v7 = [v5 requestIdentifier];
  [v6 setObject:v8 forKeyedSubscript:v7];
}

void sub_1000A6DD8(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 96);
  v3 = [*(a1 + 40) requestIdentifier];
  v4 = [v2 objectForKey:v3];

  if (v4)
  {
    v5 = *(*(a1 + 32) + 96);
    v6 = [*(a1 + 40) requestIdentifier];
    [v5 setObject:0 forKeyedSubscript:v6];

    *(*(*(a1 + 48) + 8) + 24) = 1;
  }
}

void sub_1000A7070(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_1000A7098(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 96) allValues];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = *(*(a1 + 32) + 96);

  return [v5 removeAllObjects];
}

void sub_1000A71BC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 40);
  v10 = v3;
  if (v3)
  {
    v5 = [MRPlayerPath alloc];
    v6 = [v10 origin];
    v7 = [*(a1 + 32) client];
    v8 = [*(a1 + 32) player];
    v9 = [v5 initWithOrigin:v6 client:v7 player:v8];
    (*(v4 + 16))(v4, v9);
  }

  else
  {
    (*(v4 + 16))(v4, 0);
  }
}

void sub_1000A7384(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 origin];
  (*(v2 + 16))(v2, v3);
}

void sub_1000A7478(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) connectOptions];
  v5 = [*(a1 + 32) connectUserInfo];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000A754C;
  v8[3] = &unk_1004B9DE8;
  v6 = *(a1 + 40);
  v9 = v3;
  v10 = v6;
  v7 = v3;
  [v7 connectToExternalDeviceWithOptions:v4 userInfo:v5 completion:v8];
}

uint64_t sub_1000A754C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 40);
  if (a2)
  {
    return (*(v3 + 16))(v3, 0, a2);
  }

  else
  {
    return (*(v3 + 16))(v3, *(a1 + 32));
  }
}

void sub_1000A7710(uint64_t a1, void *a2)
{
  v4 = a2;
  [*(a1 + 32) setDestinationEndpoint:?];
  v3 = *(a1 + 40);
  if (v3)
  {
    (*(v3 + 16))(v3, v4);
  }
}

uint64_t sub_1000A7DBC(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [a2 command]);
  LODWORD(v2) = [v2 containsObject:v3];

  return v2 ^ 1;
}

void sub_1000A84F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000A8510(uint64_t a1)
{
  v2 = +[MRUserSettings currentSettings];
  v3 = [v2 supportOutputContextSync];

  if ((v3 & 1) == 0)
  {
    v6 = 0;
    v7 = *(*(a1 + 40) + 8);
    v5 = *(v7 + 40);
    *(v7 + 40) = @"FF disabled";
    goto LABEL_9;
  }

  v4 = [*(a1 + 32) deviceInfo];
  v5 = v4;
  if (!v4)
  {
    v8 = @"deviceInfo==nil";
LABEL_8:
    v9 = *(*(a1 + 40) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;

    v6 = 0;
    goto LABEL_9;
  }

  if (([v4 supportsOutputContextSync] & 1) == 0)
  {
    v8 = @"endpoint does not support outputContextSync";
    goto LABEL_8;
  }

  v6 = 1;
LABEL_9:

  return v6;
}

void sub_1000A8878(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000A8890(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 48);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000A8930;
  v5[3] = &unk_1004B9E88;
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v6 = v3;
  v7 = v4;
  [v2 enumerateKeysAndObjectsUsingBlock:v5];
}

void *sub_1000A8930(void *result, void *a2, uint64_t a3, _BYTE *a4)
{
  if (result[4] == a3)
  {
    v5 = result;
    result = [a2 shortValue];
    *(*(v5[5] + 8) + 24) = result;
    *a4 = 1;
  }

  return result;
}

void sub_1000A8E28(uint64_t a1)
{
  [*(*(a1 + 32) + 32) availableDistantEndpoints];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v2 = v19 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v17;
    while (2)
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v17 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v16 + 1) + 8 * i);
        if ([v7 connectionType] == 1)
        {
          if (![*(a1 + 40) type])
          {
            v13 = *(*(a1 + 48) + 8);
            v14 = v7;
            v15 = *(v13 + 40);
            *(v13 + 40) = v14;
LABEL_16:

            goto LABEL_17;
          }
        }

        else
        {
          v8 = *(*(a1 + 32) + 32);
          v9 = [v7 uniqueIdentifier];
          v15 = [v8 externalDeviceForEndpoint:v9];

          v10 = [v15 externalDevice];
          v11 = [v10 customOrigin];

          if (v11)
          {
            v12 = [v11 identifier];
            if ([*(a1 + 40) identifier] == v12)
            {
              objc_storeStrong((*(*(a1 + 48) + 8) + 40), v7);

              goto LABEL_16;
            }
          }
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_17:
}

void sub_1000A9114(void *a1)
{
  [*(a1[4] + 32) availableEndpoints];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = v11 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    while (2)
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v8 + 1) + 8 * i);
        if ([v7 containsOutputDeviceWithUID:{a1[5], v8}])
        {
          objc_storeStrong((*(a1[6] + 8) + 40), v7);
          goto LABEL_11;
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:
}

void sub_1000A9460(uint64_t a1)
{
  [*(a1 + 32) setHostedRouteDiscoveryMode:{objc_msgSend(*(*(a1 + 40) + 32), "discoveryMode")}];
  v2 = [*(*(a1 + 40) + 24) allObjects];
  [*(a1 + 32) setHostedDiscoverySessions:v2];

  v3 = [*(*(a1 + 40) + 32) availableDistantEndpoints];
  [*(a1 + 32) setEndpoints:v3];

  v4 = [*(*(a1 + 40) + 32) availableExternalDevices];
  [*(a1 + 32) setHostedExternalDevices:v4];

  v5 = [*(*(a1 + 40) + 32) debugDescription];
  [*(a1 + 32) setDiscoverySession:v5];
}

void sub_1000A96C4(uint64_t a1)
{
  v2 = [*(a1 + 32) _onQueue_determineGroupLeaderForOutputDevices:*(a1 + 40) availableOutputDevices:*(*(a1 + 32) + 64) options:*(a1 + 56)];
  v3 = v2;
  if (v2)
  {
    if ([v2 isPrimaryLocalDevice] && (+[MRUserSettings currentSettings](MRUserSettings, "currentSettings"), v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_msgSend(v4, "supportMultiplayerHost"), v4, v5))
    {
      v6 = +[MRDAVOutputContextManager sharedManager];
      v7 = [*(a1 + 40) firstObject];
      v8 = [v6 outputContextForOutputDevice:v7];

      v9 = [v8 contextID];

      v10 = 6;
    }

    else if ([v3 supportsMultiplayer])
    {
      v9 = 0;
      v10 = 5;
    }

    else if ([v3 isRemoteControllable])
    {
      v9 = 0;
      v10 = 2;
    }

    else
    {
      v9 = 0;
      if ([v3 canRelayCommunicationChannel])
      {
        v10 = 3;
      }

      else
      {
        v10 = 2;
      }
    }

    v13 = [[MRConcreteEndpoint alloc] initWithDesignatedGroupLeader:v3 outputDevices:*(a1 + 40) preferredSuffix:v9 connectionType:v10];
    v14 = *(*(a1 + 48) + 8);
    v15 = *(v14 + 40);
    *(v14 + 40) = v13;

    v12 = [*(a1 + 32) _onQueue_makeHostedExternalDeviceForEndpoint:*(*(*(a1 + 48) + 8) + 40) didCreate:0];
    v16 = [MRAVDistantEndpoint alloc];
    v11 = [*(*(*(a1 + 48) + 8) + 40) descriptor];
    v17 = [v16 initWithDescriptor:v11];
    [v12 hostedExternalDeviceEndpointDidChange:v17];

    goto LABEL_15;
  }

  v9 = MRLogCategoryDiscovery();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    v11 = [*(a1 + 40) valueForKey:@"uid"];
    v12 = [v11 componentsJoinedByString:{@", "}];
    v18 = 138543362;
    v19 = v12;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Failed to make endpoint due to no qualified group leader in devices: %{public}@", &v18, 0xCu);
LABEL_15:
  }
}

id sub_1000A9C58(uint64_t a1, void *a2)
{
  v3 = [a2 concreteEndpoint];
  v4 = [*(a1 + 32) deviceInfo];
  v5 = [v4 deviceUID];
  v6 = [v3 containsOutputDeviceWithUID:v5];

  return v6;
}

MRDAVHostedRoutingControllerGroup *sub_1000A9D80(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = [*(a1 + 32) _onQueue_determineGroupLeaderForOutputDevices:v4 availableOutputDevices:*(a1 + 40) options:0];
  v6 = v5;
  if (!v5)
  {
    goto LABEL_8;
  }

  if (![v5 isLocalDevice])
  {
    v10 = 0;
    goto LABEL_10;
  }

  v7 = +[MRUserSettings currentSettings];
  v8 = [v7 supportMultiplayerHost];

  if (!v8)
  {
LABEL_8:
    v11 = 0;
    goto LABEL_28;
  }

  v9 = *(a1 + 32);
  v10 = [objc_opt_class() _expectedSuffixForNewEndpointWithGroupLeader:v6 outputDevices:v4];
  if (!v10)
  {
    v10 = MRLogCategoryDiscovery();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Cannot computed expected groupID suffix (ie contextID) for localDevice, ignoring until next update", buf, 2u);
    }

    v11 = 0;
    goto LABEL_27;
  }

LABEL_10:
  v12 = [v4 mutableCopy];
  if (([v6 supportsMultiplayer] & 1) == 0 && objc_msgSend(v6, "isProxyGroupPlayer"))
  {
    [v12 removeObject:v6];
  }

  v13 = [[MRConcreteEndpoint alloc] initWithDesignatedGroupLeader:v6 outputDevices:v12 preferredSuffix:v10];
  v14 = [v13 outputDevices];
  v15 = [v14 count];

  if (!v15)
  {
    v18 = MRLogCategoryDiscovery();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v22 = v6;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "No OutputDevices found. Ignoring until next update. designatedGroupLeader=%@", buf, 0xCu);
    }

    v11 = 0;
    goto LABEL_26;
  }

  v16 = v13;
  v20 = v16;
  if ([v16 connectionType]!= 6 && [v16 groupContainsDiscoverableGroupLeader]&& [v16 groupLeaderIsPlaceholder])
  {
    v17 = MRLogCategoryDiscovery();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v22 = v6;
      v23 = 2112;
      v24 = v4;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "DiscoverableGroupLeader not found. Ignoring until next update. designatedGroupLeader=%@, outputDevices=%@", buf, 0x16u);
    }

    goto LABEL_24;
  }

  v17 = [*(a1 + 32) _onQueue_makeHostedExternalDeviceForEndpoint:v16 didCreate:0];
  if (!v17)
  {
LABEL_24:
    v11 = 0;
    goto LABEL_25;
  }

  v11 = [[MRDAVHostedRoutingControllerGroup alloc] initWithEndpoint:v16 externalDevice:v17];
LABEL_25:

  v18 = v20;
LABEL_26:

LABEL_27:
LABEL_28:

  return v11;
}

uint64_t sub_1000AA0B8(uint64_t a1)
{
  if ([*(a1 + 32) connectionType] == 6 || !objc_msgSend(*(a1 + 32), "groupContainsDiscoverableGroupLeader"))
  {
    return 1;
  }

  else
  {
    return [*(a1 + 32) groupLeaderIsPlaceholder] ^ 1;
  }
}

BOOL sub_1000AA264(id a1, MRDAVHostedRoutingControllerGroup *a2)
{
  v2 = [(MRDAVHostedRoutingControllerGroup *)a2 concreteEndpoint];
  v3 = [v2 isNativeEndpoint];

  return v3;
}

int64_t sub_1000AA2B0(id a1, MRDAVHostedRoutingControllerGroup *a2, MRDAVHostedRoutingControllerGroup *a3)
{
  v4 = a3;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v5 = [(MRDAVHostedRoutingControllerGroup *)a2 concreteEndpoint];
  v6 = [v5 outputDevices];

  v7 = [v6 countByEnumeratingWithState:&v20 objects:v25 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v21;
    v10 = 1;
LABEL_3:
    v11 = 0;
    while (1)
    {
      if (*v21 != v9)
      {
        objc_enumerationMutation(v6);
      }

      if ([*(*(&v20 + 1) + 8 * v11) isPrimaryLocalDevice])
      {
        break;
      }

      if (v8 == ++v11)
      {
        v8 = [v6 countByEnumeratingWithState:&v20 objects:v25 count:16];
        if (v8)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }
  }

  else
  {
LABEL_9:

    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v12 = [(MRDAVHostedRoutingControllerGroup *)v4 concreteEndpoint];
    v6 = [v12 outputDevices];

    v10 = [v6 countByEnumeratingWithState:&v16 objects:v24 count:16];
    if (v10)
    {
      v13 = *v17;
      while (2)
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v17 != v13)
          {
            objc_enumerationMutation(v6);
          }

          if ([*(*(&v16 + 1) + 8 * i) isPrimaryLocalDevice])
          {
            v10 = -1;
            goto LABEL_19;
          }
        }

        v10 = [v6 countByEnumeratingWithState:&v16 objects:v24 count:16];
        if (v10)
        {
          continue;
        }

        break;
      }
    }
  }

LABEL_19:

  return v10;
}

BOOL sub_1000AA9BC(id a1, MRAVEndpoint *a2, MRAVEndpoint *a3)
{
  v4 = a3;
  v5 = [(MRAVEndpoint *)a2 outputDeviceUIDs];
  v6 = [(MRAVEndpoint *)v4 outputDeviceUIDs];

  LOBYTE(v4) = [v5 isEqualToArray:v6];
  return v4 ^ 1;
}

BOOL sub_1000AAFDC(sqlite3_stmt *a1, int a2, id a3)
{
  v6 = a3;
  v7 = a3;
  v8 = [v7 UTF8String];
  v9 = [v7 length];

  v10 = sqlite3_bind_text(a1, a2, v8, v9, 0xFFFFFFFFFFFFFFFFLL);
  if (v10)
  {
    v11 = _MRLogForCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Error binding statement to database query", v13, 2u);
    }
  }

  return v10 == 0;
}

void sub_1000ABC68(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000ABC84(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6)
{
  v11 = a2;
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v17 = WeakRetained[5];
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_1000ABDD0;
  v23[3] = &unk_1004BA1B8;
  v24 = v13;
  v25 = WeakRetained;
  v26 = v11;
  v27 = v12;
  v28 = v14;
  v29 = v15;
  v18 = v15;
  v19 = v14;
  v20 = v12;
  v21 = v11;
  v22 = v13;
  dispatch_async(v17, v23);
}

id sub_1000ABDD0(uint64_t a1)
{
  if ([*(a1 + 32) isEqualToString:MRIDSServiceMessageTypeDiscovery])
  {
    v4 = *(a1 + 40);
    v5 = *(a1 + 48);
    v6 = *(a1 + 56);

    return [v4 _handleDiscoveryMessage:v5 fromDevice:{v6, v2, v3}];
  }

  else
  {
    result = [*(a1 + 32) isEqualToString:MRIDSServiceMessageTypeConnectRemoteControl];
    if (result)
    {
      v7 = *(a1 + 40);
      v8 = *(a1 + 48);
      v9 = *(a1 + 56);
      v10 = *(a1 + 64);
      v11 = *(a1 + 72);

      return [v7 _handleConnectRemoteControlMessage:v8 fromDevice:v9 destination:v10 session:v11];
    }
  }

  return result;
}

void sub_1000AC028(uint64_t a1)
{
  v2 = _MRLogForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) deviceInfo];
    v4 = *(a1 + 40);
    v8 = 138412546;
    v9 = v3;
    v10 = 2112;
    v11 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "[MRDIDSRemoteControlService] Removing DiscoveryChannel for client %@ with error %@", &v8, 0x16u);
  }

  v5 = *(*(a1 + 48) + 48);
  v6 = [*(a1 + 32) deviceInfo];
  v7 = [v6 deviceUID];
  [v5 setObject:0 forKeyedSubscript:v7];
}

void sub_1000AC210(uint64_t a1)
{
  v2 = [*(a1 + 32) mode];
  [*(a1 + 40) setDiscoveryMode:v2];
  v3 = [*(a1 + 32) configuration];
  [*(a1 + 40) setConfiguration:v3];

  if (v2)
  {
    v6 = objc_alloc_init(MRProtocolMessageOptions);
    [v6 setPriority:5];
    [v6 setWaking:1];
    v4 = *(a1 + 48);
    v5 = +[MRAVLocalEndpoint sharedLocalEndpoint];
    [v4 _onWorkerQueue_sendEndpoint:v5 toClient:*(a1 + 40) options:v6];
  }
}

void sub_1000AC4C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000AC4E8(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained[5];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000AC5B0;
  block[3] = &unk_1004B69D0;
  block[4] = WeakRetained;
  v8 = *(a1 + 32);
  v9 = v3;
  v6 = v3;
  dispatch_async(v5, block);
}

void sub_1000AC5B0(void *a1)
{
  v1 = a1[4];
  if (v1)
  {
    v4 = [*(v1 + 48) objectForKeyedSubscript:a1[5]];
    v3 = [v4 client];
    [v3 disconnectWithError:a1[6]];

    [*(a1[4] + 48) setObject:0 forKeyedSubscript:a1[5]];
  }
}

void sub_1000AC958(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = a4;
  v7 = [[MRPromptForRouteAuthorizationMessage alloc] initWithRoute:0 inputType:a3];
  v8 = a1[4];
  v9 = [v7 protobufData];
  v10 = MRIDSServiceMessageTypeProtobuf;
  v12 = a1[5];
  v11 = a1[6];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1000ACA68;
  v14[3] = &unk_1004BA228;
  v15 = v6;
  v13 = v6;
  [v8 sendMessage:v9 type:v10 destination:v12 session:v11 options:0 priority:300 response:v14];
}

void sub_1000ACA68(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 data];

  if (v4)
  {
    v5 = [v3 data];
    v9 = 0;
    v6 = [MRProtocolMessage protocolMessageWithProtobufData:v5 error:&v9];
    v7 = v9;

    if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      v8 = 0;
    }

    else
    {
      v8 = [v6 response];
    }
  }

  else
  {
    v8 = 0;
  }

  (*(*(a1 + 32) + 16))();
}

void sub_1000ACB58(uint64_t a1, void *a2)
{
  v3 = a2;
  v6 = [[MRProtocolMessage alloc] initWithUnderlyingCodableMessage:0 error:v3];

  v4 = *(a1 + 32);
  v5 = [v6 protobufData];
  [v4 replyWithData:v5 priority:300];
}

void sub_1000ACDAC(id a1)
{
  v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v1 = dispatch_queue_create("com.apple.mediaremote.MRDIDSRemoteControlService.discoveryChannelClientQueue", v3);
  v2 = qword_1005292C0;
  qword_1005292C0 = v1;
}

void sub_1000AD1BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id location)
{
  objc_destroyWeak((v24 + 64));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000AD1F8(id *a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained(a1 + 8);
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = WeakRetained[5];
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_1000AD300;
    v7[3] = &unk_1004BA1B8;
    v7[4] = WeakRetained;
    v8 = a1[4];
    v9 = a1[5];
    v10 = a1[6];
    v11 = v3;
    v12 = a1[7];
    dispatch_async(v6, v7);
  }
}

void sub_1000AD300(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 56) objectForKeyedSubscript:*(a1 + 40)];
  v8 = [v2 channelForDestination:*(a1 + 48) session:*(a1 + 56)];

  if (v8)
  {
    v3 = [*(a1 + 64) object];
    v4 = [MRProtocolMessage alloc];
    v5 = [v3 error];
    v6 = [v4 initWithUnderlyingCodableMessage:0 error:v5];
    v7 = [v6 protobufData];

    [*(a1 + 72) sendMessage:v7 type:MRIDSServiceMessageTypeDisconnectRemoteControl destination:*(a1 + 48) session:*(a1 + 56) options:0 priority:300];
  }
}

void sub_1000AD520(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) transport];
  v5 = [v3 groupLeader];
  v6 = [v4 exportOutputDevice:v5 endpoint:v3];

  v7 = [*(a1 + 32) destination];
  LOBYTE(v5) = [v6 containsUID:v7];

  if (v5)
  {
    v8 = [*(a1 + 40) destinationOutputDeviceUID];
    v9 = [v3 outputDeviceWithUID:v8];

    if (*(a1 + 72) == 1 && ([*(a1 + 40) isDestinationLocal] & 1) == 0)
    {
      v10 = *(*(a1 + 48) + 8);
      v11 = [v9 primaryID];
      v27[0] = _NSConcreteStackBlock;
      v27[1] = 3221225472;
      v27[2] = sub_1000AD7B4;
      v27[3] = &unk_1004BA298;
      v29 = *(a1 + 64);
      v28 = v9;
      [v10 addAuthorizationCallbackForRouteID:v11 requestCallback:v27];
    }

    v12 = *(a1 + 40);
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_1000AD7D0;
    v21[3] = &unk_1004BA2C0;
    v26 = *(a1 + 72);
    v13 = v12;
    v14 = *(a1 + 48);
    v15 = *(a1 + 56);
    v22 = v13;
    v23 = v14;
    v24 = v9;
    v25 = v15;
    v16 = v9;
    [v13 requestConnectedDestinationEndpoint:v21];
  }

  else
  {
    v17 = [NSError alloc];
    v18 = [v3 debugName];
    v19 = [*(a1 + 32) destination];
    v20 = [v17 initWithMRError:118 format:{@"Tried to connect to endpoint but its groupLeader changed from %@ to %@", v18, v19}];

    (*(*(a1 + 56) + 16))();
  }
}