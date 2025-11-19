@interface HMDMediaSession
+ (Class)mediaPropertyValueTypeWithMessageKey:(id)a3;
+ (NSArray)mediaPropertyMessageKeys;
+ (id)logCategory;
+ (id)sessionForCurrentAccessoryWithSessionIdentifier:(id)a3 mediaProfile:(id)a4;
- (BOOL)isConnected;
- (BOOL)isEqual:(id)a3;
- (HMDMediaEndpoint)endpoint;
- (HMDMediaSession)initWithCoder:(id)a3;
- (NSArray)mediaProfiles;
- (id)_initWithEndpoint:(id)a3 mediaProfiles:(id)a4 state:(id)a5;
- (id)dumpStateWithPrivacyLevel:(unint64_t)a3;
- (unint64_t)hash;
- (void)_getPlaybackStateWithCompletion:(id)a3;
- (void)_handleGetPlaybackState:(id)a3;
- (void)_handleMediaSessionSetAudioControl:(id)a3;
- (void)_handleMediaUpdateMuted:(id)a3;
- (void)_handleMediaUpdateVolume:(id)a3;
- (void)_handleSetPlayback:(id)a3;
- (void)_invokePendingSetPlaybackStateBlocksOfError:(id)a3;
- (void)_notifyClientsOfUpdatedVolume:(id)a3 muted:(id)a4 inResponseToMessage:(id)a5;
- (void)_postNotificationOfMediaStateUpdateWithPayload:(id)a3;
- (void)_postNotificationOfMediaStateUpdateWithRequestMessageInformation:(id)a3;
- (void)_queueSetPlaybackStateCompletion:(id)a3;
- (void)_setPlaybackState:(int64_t)a3 completion:(id)a4;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
- (void)handleMediaPlaybackStateNotification:(id)a3;
- (void)handleMediaSessionSetAudioControl:(id)a3;
- (void)handleRefreshPlayback:(id)a3;
- (void)handleSetPlayback:(id)a3;
- (void)readProperties:(id)a3 completion:(id)a4;
- (void)registerForSessionUpdates:(BOOL)a3;
- (void)timerDidFire:(id)a3;
- (void)updateEndpoint:(id)a3;
- (void)updateWithResponses:(id)a3 requestMessageInformation:(id)a4;
- (void)writeProperties:(id)a3 completion:(id)a4;
@end

@implementation HMDMediaSession

- (void)timerDidFire:(id)a3
{
  v4 = a3;
  v5 = [(HMDMediaSession *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __32__HMDMediaSession_timerDidFire___block_invoke;
  v7[3] = &unk_2797359B0;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __32__HMDMediaSession_timerDidFire___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) setPlaybackStateTimer];

  if (v2 == v3)
  {
    [*(a1 + 40) setSetPlaybackStateTimer:0];
    v4 = objc_autoreleasePoolPush();
    v5 = *(a1 + 40);
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = HMFGetLogIdentifier();
      *buf = 138543362;
      v17 = v7;
      _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_INFO, "%{public}@Timed out waiting for media playback state notification - reading the state explicitly...", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v4);
    v9 = *(a1 + 40);
    v8 = (a1 + 40);
    v10 = [v9 state];
    v11 = [v10 playbackState];

    objc_initWeak(buf, *v8);
    v12 = *v8;
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __32__HMDMediaSession_timerDidFire___block_invoke_74;
    v14[3] = &unk_279729900;
    objc_copyWeak(v15, buf);
    v15[1] = v11;
    [v12 _getPlaybackStateWithCompletion:v14];
    objc_destroyWeak(v15);
    objc_destroyWeak(buf);
  }

  v13 = *MEMORY[0x277D85DE8];
}

void __32__HMDMediaSession_timerDidFire___block_invoke_74(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _invokePendingSetPlaybackStateBlocksOfError:v5];

  if (!v5 && *(a1 + 40) != a3)
  {
    [WeakRetained _postNotificationOfMediaStateUpdate];
  }
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v12 = [(HMDMediaSession *)self state];
  v5 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v12, "playbackState")}];
  [v4 encodeObject:v5 forKey:*MEMORY[0x277CD0930]];

  v6 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v12, "shuffleState")}];
  [v4 encodeObject:v6 forKey:*MEMORY[0x277CD0988]];

  v7 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v12, "repeatState")}];
  [v4 encodeObject:v7 forKey:*MEMORY[0x277CD0958]];

  v8 = [v12 volume];
  [v4 encodeObject:v8 forKey:*MEMORY[0x277CD0900]];

  v9 = [v12 muted];
  [v4 encodeObject:v9 forKey:*MEMORY[0x277CD08E8]];

  v10 = [v12 mediaUniqueIdentifier];
  [v4 encodeObject:v10 forKey:*MEMORY[0x277CD0918]];

  v11 = [(HMDMediaSession *)self sessionIdentifier];
  [v4 encodeObject:v11 forKey:*MEMORY[0x277CD0970]];
}

- (HMDMediaSession)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = MEMORY[0x277CBEAD8];
  v6 = *MEMORY[0x277CBE658];
  v7 = MEMORY[0x277CCACA8];
  v8 = NSStringFromSelector(a2);
  v9 = [v7 stringWithFormat:@"%@ is unavailable", v8];
  v10 = [v5 exceptionWithName:v6 reason:v9 userInfo:0];
  v11 = v10;

  objc_exception_throw(v10);
}

- (BOOL)isConnected
{
  v2 = [(HMDMediaSession *)self endpoint];
  v3 = [v2 isConnected];

  return v3;
}

- (void)writeProperties:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(HMDMediaSession *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __46__HMDMediaSession_writeProperties_completion___block_invoke;
  block[3] = &unk_2797355D0;
  v12 = v6;
  v13 = self;
  v14 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

void __46__HMDMediaSession_writeProperties_completion___block_invoke(uint64_t a1)
{
  v45 = *MEMORY[0x277D85DE8];
  group = dispatch_group_create();
  v28 = a1;
  v25 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(*(a1 + 32), "count")}];
  v38 = 0u;
  v39 = 0u;
  v37 = 0u;
  v36 = 0u;
  obj = *(a1 + 32);
  v2 = [obj countByEnumeratingWithState:&v36 objects:v44 count:16];
  if (v2)
  {
    v4 = *v37;
    v5 = *MEMORY[0x277CD0938];
    *&v3 = 138543618;
    v24 = v3;
    do
    {
      for (i = 0; i != v2; ++i)
      {
        if (*v37 != v4)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v36 + 1) + 8 * i);
        v8 = [v7 property];
        v9 = [v8 isEqual:v5];

        if (v9)
        {
          v10 = objc_autoreleasePoolPush();
          v11 = *(v28 + 40);
          v12 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
          {
            v13 = HMFGetLogIdentifier();
            v14 = [v7 value];
            *buf = v24;
            v41 = v13;
            v42 = 2112;
            v43 = v14;
            _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_INFO, "%{public}@Setting playback state received from remote %@", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v10);
          v15 = [*(v28 + 40) state];
          v16 = [v15 playbackState];

          v17 = [v7 value];
          v18 = [v17 unsignedIntegerValue];

          dispatch_group_enter(group);
          objc_initWeak(buf, *(v28 + 40));
          v19 = *(v28 + 40);
          v32[0] = MEMORY[0x277D85DD0];
          v32[1] = 3221225472;
          v32[2] = __46__HMDMediaSession_writeProperties_completion___block_invoke_68;
          v32[3] = &unk_2797299F0;
          objc_copyWeak(v35, buf);
          v32[4] = v7;
          v35[1] = v16;
          v33 = v25;
          v34 = group;
          [v19 _setPlaybackState:v18 completion:v32];

          objc_destroyWeak(v35);
          objc_destroyWeak(buf);
        }
      }

      v2 = [obj countByEnumeratingWithState:&v36 objects:v44 count:16];
    }

    while (v2);
  }

  v20 = [*(v28 + 40) workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __46__HMDMediaSession_writeProperties_completion___block_invoke_69;
  block[3] = &unk_279735738;
  v21 = *(v28 + 48);
  v30 = v25;
  v31 = v21;
  v22 = v25;
  dispatch_group_notify(group, v20, block);

  v23 = *MEMORY[0x277D85DE8];
}

void __46__HMDMediaSession_writeProperties_completion___block_invoke_68(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = [WeakRetained workQueue];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __46__HMDMediaSession_writeProperties_completion___block_invoke_2;
    v11[3] = &unk_2797299C8;
    v7 = v3;
    v8 = *(a1 + 32);
    v9 = *(a1 + 40);
    v12 = v7;
    v13 = v8;
    v10 = *(a1 + 64);
    v14 = v5;
    v17 = v10;
    v15 = v9;
    v16 = *(a1 + 48);
    dispatch_async(v6, v11);
  }
}

uint64_t __46__HMDMediaSession_writeProperties_completion___block_invoke_69(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 32));
  }

  return result;
}

void __46__HMDMediaSession_writeProperties_completion___block_invoke_2(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  if (*(a1 + 32))
  {
    v2 = [HMDMediaPropertyResponse responseWithRequest:*(a1 + 40) error:?];
  }

  else
  {
    v3 = [*(a1 + 48) state];
    v4 = [v3 playbackState];

    v5 = objc_autoreleasePoolPush();
    v6 = *(a1 + 48);
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = HMFGetLogIdentifier();
      v13 = 138543618;
      v14 = v8;
      v15 = 2048;
      v16 = v4;
      _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@responding to set playback with state %ld", &v13, 0x16u);
    }

    objc_autoreleasePoolPop(v5);
    v9 = *(a1 + 40);
    v10 = [MEMORY[0x277CCABB0] numberWithInteger:v4];
    v11 = [MEMORY[0x277CBEAA8] date];
    v2 = [HMDMediaPropertyResponse responseWithRequest:v9 value:v10 updatedTime:v11];

    if (*(a1 + 72) != v4)
    {
      [*(a1 + 48) _postNotificationOfMediaStateUpdate];
    }
  }

  [*(a1 + 56) addObject:v2];
  dispatch_group_leave(*(a1 + 64));

  v12 = *MEMORY[0x277D85DE8];
}

- (void)readProperties:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(HMDMediaSession *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __45__HMDMediaSession_readProperties_completion___block_invoke;
  block[3] = &unk_2797355D0;
  v12 = v6;
  v13 = self;
  v14 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

void __45__HMDMediaSession_readProperties_completion___block_invoke(id *a1)
{
  v66 = *MEMORY[0x277D85DE8];
  group = dispatch_group_create();
  v48 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(a1[4], "count")}];
  v49 = [MEMORY[0x277CBEAA8] date];
  objc_initWeak(&location, a1[5]);
  v62 = 0u;
  v63 = 0u;
  v60 = 0u;
  v61 = 0u;
  obj = a1[4];
  v2 = [obj countByEnumeratingWithState:&v60 objects:v65 count:16];
  if (v2)
  {
    v3 = *v61;
    v4 = *MEMORY[0x277CD0938];
    v45 = *MEMORY[0x277CD0960];
    v46 = *MEMORY[0x277CD0990];
    v43 = *MEMORY[0x277CD0920];
    v44 = *MEMORY[0x277CD09B0];
    do
    {
      v5 = 0;
      do
      {
        if (*v61 != v3)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v60 + 1) + 8 * v5);
        v7 = [v6 property];
        v8 = [v7 isEqual:v4];

        if (v8)
        {
          v9 = [a1[5] state];
          v10 = [v9 playbackState];

          dispatch_group_enter(group);
          aBlock[0] = MEMORY[0x277D85DD0];
          aBlock[1] = 3221225472;
          aBlock[2] = __45__HMDMediaSession_readProperties_completion___block_invoke_2;
          aBlock[3] = &unk_2797299A0;
          objc_copyWeak(v59, &location);
          v55 = group;
          v56 = v6;
          v57 = v49;
          v59[1] = v10;
          v58 = v48;
          v11 = _Block_copy(aBlock);
          if ([a1[5] isCurrentAccessorySession])
          {
            [a1[5] _getPlaybackStateWithCompletion:v11];
          }

          else
          {
            v11[2](v11, 0, v10);
          }

          objc_destroyWeak(v59);
        }

        else
        {
          v12 = [v6 property];
          v13 = [v12 isEqual:v46];

          if (v13)
          {
            v14 = MEMORY[0x277CCABB0];
            v15 = [a1[5] state];
            v16 = [v14 numberWithInteger:{objc_msgSend(v15, "shuffleState")}];
            v17 = [HMDMediaPropertyResponse responseWithRequest:v6 value:v16 updatedTime:v49];

            [v48 addObject:v17];
          }

          else
          {
            v18 = [v6 property];
            v19 = [v18 isEqual:v45];

            if (v19)
            {
              v20 = MEMORY[0x277CCABB0];
              v21 = [a1[5] state];
              v22 = [v20 numberWithInteger:{objc_msgSend(v21, "repeatState")}];
              v23 = [HMDMediaPropertyResponse responseWithRequest:v6 value:v22 updatedTime:v49];

              [v48 addObject:v23];
            }

            else
            {
              v24 = [v6 property];
              v25 = [v24 isEqual:v44];

              if (v25)
              {
                v26 = [a1[5] state];
                v27 = [v26 volume];

                if (v27)
                {
                  v28 = [a1[5] state];
                  v29 = [v28 volume];
                  v30 = [HMDMediaPropertyResponse responseWithRequest:v6 value:v29 updatedTime:v49];

                  [v48 addObject:v30];
                }
              }

              else
              {
                v31 = [v6 property];
                v32 = [v31 isEqual:v43];

                if (v32)
                {
                  v33 = [a1[5] state];
                  v34 = [v33 mediaUniqueIdentifier];

                  if (v34)
                  {
                    v35 = [a1[5] state];
                    v36 = [v35 mediaUniqueIdentifier];
                    v37 = [HMDMediaPropertyResponse responseWithRequest:v6 value:v36 updatedTime:v49];

                    [v48 addObject:v37];
                  }
                }
              }
            }
          }
        }

        ++v5;
      }

      while (v2 != v5);
      v38 = [obj countByEnumeratingWithState:&v60 objects:v65 count:16];
      v2 = v38;
    }

    while (v38);
  }

  v39 = [a1[5] workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __45__HMDMediaSession_readProperties_completion___block_invoke_3;
  block[3] = &unk_279735738;
  v40 = a1[6];
  v52 = v48;
  v53 = v40;
  v41 = v48;
  dispatch_group_notify(group, v39, block);

  objc_destroyWeak(&location);
  v42 = *MEMORY[0x277D85DE8];
}

void __45__HMDMediaSession_readProperties_completion___block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v9 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  if (WeakRetained)
  {
    v6 = *(a1 + 40);
    if (v9)
    {
      v7 = [HMDMediaPropertyResponse responseWithRequest:*(a1 + 40) error:?];
    }

    else
    {
      v8 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
      v7 = [HMDMediaPropertyResponse responseWithRequest:v6 value:v8 updatedTime:*(a1 + 48)];

      if (*(a1 + 72) != a3)
      {
        [WeakRetained _postNotificationOfMediaStateUpdate];
      }
    }

    [*(a1 + 56) addObject:v7];
    dispatch_group_leave(*(a1 + 32));
  }

  else
  {
    dispatch_group_leave(*(a1 + 32));
  }
}

uint64_t __45__HMDMediaSession_readProperties_completion___block_invoke_3(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 32));
  }

  return result;
}

- (NSArray)mediaProfiles
{
  os_unfair_lock_lock_with_options();
  v3 = [(NSMutableSet *)self->_mediaProfiles allObjects];
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)updateEndpoint:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = a3;
  os_unfair_lock_lock_with_options();
  v6 = self->_endpoint;
  v7 = [(HMDMediaEndpoint *)v6 sessionIdentifier];
  v8 = [v5 sessionIdentifier];
  v9 = [v7 isEqual:v8];

  if ((v9 & 1) == 0)
  {
    objc_storeStrong(&self->_endpoint, a3);
    v10 = objc_autoreleasePoolPush();
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = HMFGetLogIdentifier();
      v14 = 138543874;
      v15 = v12;
      v16 = 2112;
      v17 = v6;
      v18 = 2112;
      v19 = v5;
      _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_INFO, "%{public}@MediaSession endpoint %@ changed to %@", &v14, 0x20u);
    }

    objc_autoreleasePoolPop(v10);
  }

  os_unfair_lock_unlock(&self->_lock);
  v13 = *MEMORY[0x277D85DE8];
}

- (HMDMediaEndpoint)endpoint
{
  os_unfair_lock_lock_with_options();
  v3 = self->_endpoint;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)registerForSessionUpdates:(BOOL)a3
{
  v5 = [(HMDMediaSession *)self workQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __45__HMDMediaSession_registerForSessionUpdates___block_invoke;
  v6[3] = &unk_279735D28;
  v6[4] = self;
  v7 = a3;
  dispatch_async(v5, v6);
}

- (void)_handleMediaUpdateMuted:(id)a3
{
  v3 = *MEMORY[0x277CD08F0];
  v4 = a3;
  v7 = [v4 numberForKey:v3];
  if (v7)
  {
    v5 = 48;
  }

  else
  {
    v5 = 20;
  }

  v6 = [MEMORY[0x277CCA9B8] hmErrorWithCode:v5];
  [v4 respondWithError:v6];
}

- (void)_handleMediaUpdateVolume:(id)a3
{
  v10 = a3;
  v3 = [v10 numberForKey:*MEMORY[0x277CD0908]];
  v4 = v3;
  if (v3)
  {
    [v3 floatValue];
    v6 = MEMORY[0x277CCA9B8];
    if (v5 >= 0.0 && v5 <= 1.0)
    {
      v8 = 48;
    }

    else
    {
      v8 = 3;
    }
  }

  else
  {
    v6 = MEMORY[0x277CCA9B8];
    v8 = 20;
  }

  v9 = [v6 hmErrorWithCode:v8];
  [v10 respondWithError:v9];
}

- (void)_handleMediaSessionSetAudioControl:(id)a3
{
  v10 = a3;
  v4 = [v10 messagePayload];
  v5 = *MEMORY[0x277CD0908];
  v6 = [v4 objectForKey:*MEMORY[0x277CD0908]];

  if (v6)
  {
    [(HMDMediaSession *)self _handleMediaUpdateVolume:v10];
  }

  else
  {
    v7 = [v10 messagePayload];
    v8 = [v7 objectForKey:v5];

    if (v8)
    {
      [(HMDMediaSession *)self _handleMediaUpdateMuted:v10];
    }

    else
    {
      v9 = [MEMORY[0x277CCA9B8] hmErrorWithCode:48];
      [v10 respondWithError:v9];
    }
  }
}

- (void)handleMediaSessionSetAudioControl:(id)a3
{
  v4 = a3;
  v5 = [(HMDMediaSession *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __53__HMDMediaSession_handleMediaSessionSetAudioControl___block_invoke;
  v7[3] = &unk_2797359B0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)_notifyClientsOfUpdatedVolume:(id)a3 muted:(id)a4 inResponseToMessage:(id)a5
{
  v30[1] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = MEMORY[0x277CBEB38];
  v29 = *MEMORY[0x277CD09A8];
  v12 = [(HMDMediaSession *)self uuid];
  v13 = [v12 UUIDString];
  v30[0] = v13;
  v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v30 forKeys:&v29 count:1];
  v15 = [v11 dictionaryWithDictionary:v14];

  if (v10)
  {
    v16 = [[HMDMediaSessionRequestMessageInformation alloc] initWithMessage:v10];
    [v15 setObject:v16 forKey:*MEMORY[0x277CD0968]];
  }

  if (v8)
  {
    [v15 setObject:v8 forKey:*MEMORY[0x277CD0908]];
  }

  if (v9)
  {
    [v15 setObject:v9 forKey:*MEMORY[0x277CD08F0]];
  }

  v17 = [MEMORY[0x277CCAB98] defaultCenter];
  [v17 postNotificationName:@"HMDMediaSessionDidUpdateAudioControlNotification" object:self userInfo:v15];

  v18 = objc_autoreleasePoolPush();
  v19 = self;
  v20 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
  {
    v21 = HMFGetLogIdentifier();
    v23 = 138543874;
    v24 = v21;
    v25 = 2112;
    v26 = @"HMDMediaSessionDidUpdateAudioControlNotification";
    v27 = 2112;
    v28 = v15;
    _os_log_impl(&dword_2531F8000, v20, OS_LOG_TYPE_INFO, "%{public}@Sending internal notification %@ with payload %@", &v23, 0x20u);
  }

  objc_autoreleasePoolPop(v18);
  v22 = *MEMORY[0x277D85DE8];
}

- (void)handleSetPlayback:(id)a3
{
  v4 = a3;
  v5 = [(HMDMediaSession *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __37__HMDMediaSession_handleSetPlayback___block_invoke;
  v7[3] = &unk_2797359B0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)_handleSetPlayback:(id)a3
{
  v4 = a3;
  v5 = [v4 numberForKey:*MEMORY[0x277CD0938]];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 unsignedIntegerValue];
    objc_initWeak(&location, self);
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __38__HMDMediaSession__handleSetPlayback___block_invoke;
    v9[3] = &unk_2797338E8;
    objc_copyWeak(&v11, &location);
    v10 = v4;
    [(HMDMediaSession *)self _setPlaybackState:v7 completion:v9];

    objc_destroyWeak(&v11);
    objc_destroyWeak(&location);
  }

  else
  {
    v8 = [MEMORY[0x277CCA9B8] hmErrorWithCode:20];
    [v4 respondWithError:v8];
  }
}

void __38__HMDMediaSession__handleSetPlayback___block_invoke(uint64_t a1, void *a2)
{
  v8 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v4 = v8;
  }

  else
  {
    v5 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];

    v4 = v5;
  }

  v6 = *(a1 + 32);
  v9 = v4;
  if (v4)
  {
    [v6 respondWithError:v4];
  }

  else
  {
    if (v6)
    {
      v7 = [[HMDMediaSessionRequestMessageInformation alloc] initWithMessage:*(a1 + 32)];
    }

    else
    {
      v7 = 0;
    }

    [WeakRetained _postNotificationOfMediaStateUpdateWithRequestMessageInformation:v7];
    [*(a1 + 32) respondWithSuccess];
  }
}

- (void)_setPlaybackState:(int64_t)a3 completion:(id)a4
{
  v42 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = v6;
  if (a3 == 1)
  {
    v8 = 0;
    goto LABEL_5;
  }

  if (a3 == 2)
  {
    v8 = 1;
LABEL_5:
    [(HMDMediaSession *)self _queueSetPlaybackStateCompletion:v6];
    objc_initWeak(&location, self);
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __48__HMDMediaSession__setPlaybackState_completion___block_invoke;
    aBlock[3] = &unk_279729928;
    objc_copyWeak(v38, &location);
    v38[1] = a3;
    v9 = _Block_copy(aBlock);
    if ([(HMDMediaSession *)self isCurrentAccessorySession])
    {
      v10 = MRMediaRemoteGetLocalOrigin() == 0;
      v11 = objc_autoreleasePoolPush();
      v12 = self;
      if (v10)
      {
        v26 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
        {
          v27 = HMFGetLogIdentifier();
          *buf = 138543362;
          v41 = v27;
          _os_log_impl(&dword_2531F8000, v26, OS_LOG_TYPE_DEFAULT, "%{public}@Cannot look up local origin for currentAccessory to set playback state", buf, 0xCu);
        }

        objc_autoreleasePoolPop(v11);
        if (v7)
        {
          v28 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2005];
          v29 = [MEMORY[0x277CCA9B8] hmErrorWithCode:4 description:@"Cannot lookup origin" reason:@"Cannot lookup origin" suggestion:0 underlyingError:v28];
          (v7)[2](v7, v29);
        }
      }

      else
      {
        v13 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
        {
          v14 = HMFGetLogIdentifier();
          *buf = 138543362;
          v41 = v14;
          _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_INFO, "%{public}@Attempting to set the playback state command with mediaRemote to local origin", buf, 0xCu);
        }

        objc_autoreleasePoolPop(v11);
        v15 = [(HMDMediaSession *)v12 workQueue];
        v32 = MEMORY[0x277D85DD0];
        v33 = 3221225472;
        v34 = __48__HMDMediaSession__setPlaybackState_completion___block_invoke_55;
        v35 = &unk_279729950;
        v36 = v9;
        v16 = MRMediaRemoteSendCommandForOriginWithReply() == 0;

        if (v16)
        {
          v17 = objc_autoreleasePoolPush();
          v18 = v12;
          v19 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
          {
            v20 = HMFGetLogIdentifier();
            *buf = 138543362;
            v41 = v20;
            _os_log_impl(&dword_2531F8000, v19, OS_LOG_TYPE_DEFAULT, "%{public}@Sending the command to mediaremote failed for mediaSession", buf, 0xCu);
          }

          objc_autoreleasePoolPop(v17);
          v21 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2005];
          v22 = [MEMORY[0x277CCA9B8] hmErrorWithCode:74 description:@"Media remote command send failure " reason:@"Media remote command send failure" suggestion:0 underlyingError:v21];
          [(HMDMediaSession *)v18 _invokePendingSetPlaybackStateBlocksOfError:v22];
        }
      }
    }

    else
    {
      v24 = [(HMDMediaSession *)self endpoint];
      v30[0] = MEMORY[0x277D85DD0];
      v30[1] = 3221225472;
      v30[2] = __48__HMDMediaSession__setPlaybackState_completion___block_invoke_63;
      v30[3] = &unk_279729978;
      v30[4] = self;
      v31 = v9;
      [v24 setPlaybackState:v8 completionHandler:v30];
    }

    objc_destroyWeak(v38);
    objc_destroyWeak(&location);
    goto LABEL_18;
  }

  if (v6)
  {
    v23 = [MEMORY[0x277CCA9B8] hmErrorWithCode:48];
    (v7)[2](v7, v23);
  }

LABEL_18:

  v25 = *MEMORY[0x277D85DE8];
}

void __48__HMDMediaSession__setPlaybackState_completion___block_invoke(uint64_t a1, void *a2, const __CFArray *a3)
{
  v37 = *MEMORY[0x277D85DE8];
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = v5;
  v8 = v7;
  v32 = WeakRetained;
  if (!WeakRetained)
  {
    v8 = [MEMORY[0x277CCA9B8] hmErrorWithCode:52];
  }

  v30 = a1;
  v31 = v7;
  if (!a3 || v8)
  {
LABEL_15:
    if (v8)
    {
      goto LABEL_19;
    }

    goto LABEL_16;
  }

  Count = CFArrayGetCount(a3);
  if (Count >= 1)
  {
    v11 = Count;
    v8 = 0;
    v12 = 0;
    *&v10 = 138543618;
    v29 = v10;
    do
    {
      v13 = CFArrayGetValueAtIndex(a3, v12);
      v14 = [v13 unsignedIntegerValue];
      v15 = v14;
      if (v14 && v14 != 3)
      {
        v16 = objc_autoreleasePoolPush();
        v17 = v32;
        v18 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
        {
          v19 = HMFGetLogIdentifier();
          *buf = v29;
          v34 = v19;
          v35 = 2048;
          v36 = v15;
          _os_log_impl(&dword_2531F8000, v18, OS_LOG_TYPE_INFO, "%{public}@Locally setting playback state failed with status: %ld", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v16);
        v20 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2005];
        v21 = [MEMORY[0x277CCA9B8] hmErrorWithCode:74 description:@"Media remote command failure " reason:@"Media remote command failure" suggestion:0 underlyingError:v20];

        v8 = v21;
      }

      if (v15 != 3 && v15)
      {
        break;
      }

      ++v12;
    }

    while (v11 != v12);
    goto LABEL_15;
  }

LABEL_16:
  v22 = objc_autoreleasePoolPush();
  v23 = v32;
  v24 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
  {
    v25 = HMFGetLogIdentifier();
    v26 = *(v30 + 40);
    *buf = 138543618;
    v34 = v25;
    v35 = 2048;
    v36 = v26;
    _os_log_impl(&dword_2531F8000, v24, OS_LOG_TYPE_DEBUG, "%{public}@Set plaback state to %ld on successfully sending mediaremote command", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v22);
  v27 = [v23 state];
  [v27 setPlaybackState:*(v30 + 40)];

  v8 = 0;
LABEL_19:
  [v32 _invokePendingSetPlaybackStateBlocksOfError:{v8, v29}];

  v28 = *MEMORY[0x277D85DE8];
}

void __48__HMDMediaSession__setPlaybackState_completion___block_invoke_63(uint64_t a1, void *a2, const void *a3)
{
  v5 = a2;
  if (a3)
  {
    CFRetain(a3);
  }

  v6 = [*(a1 + 32) workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __48__HMDMediaSession__setPlaybackState_completion___block_invoke_2;
  block[3] = &unk_279734380;
  v7 = *(a1 + 40);
  v10 = v5;
  v11 = v7;
  v12 = a3;
  v8 = v5;
  dispatch_async(v6, block);
}

void __48__HMDMediaSession__setPlaybackState_completion___block_invoke_2(void *a1)
{
  v2 = a1[4];
  v3 = a1[6];
  (*(a1[5] + 16))();
  v4 = a1[6];
  if (v4)
  {

    CFRelease(v4);
  }
}

- (void)_queueSetPlaybackStateCompletion:(id)a3
{
  v4 = a3;
  if (v4)
  {
    aBlock = v4;
    v5 = [(HMDMediaSession *)self setPlaybackStateCompletionHandlers];
    v6 = _Block_copy(aBlock);
    [v5 addObject:v6];

    v7 = [(HMDMediaSession *)self setPlaybackStateTimer];

    v4 = aBlock;
    if (!v7)
    {
      v8 = [MEMORY[0x277D0F8D0] sharedPreferences];
      v9 = [v8 preferenceForKey:@"playbackStateTimeout"];
      v10 = [v9 numberValue];

      v11 = [v10 unsignedIntValue];
      v12 = [objc_alloc(MEMORY[0x277D0F920]) initWithTimeInterval:0 options:v11];
      [(HMDMediaSession *)self setSetPlaybackStateTimer:v12];

      v13 = [(HMDMediaSession *)self setPlaybackStateTimer];
      [v13 setDelegate:self];

      v14 = [(HMDMediaSession *)self setPlaybackStateTimer];
      [v14 resume];

      v4 = aBlock;
    }
  }
}

- (void)_invokePendingSetPlaybackStateBlocksOfError:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDMediaSession *)self setPlaybackStateTimer];
  [v5 cancel];

  [(HMDMediaSession *)self setSetPlaybackStateTimer:0];
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = [(HMDMediaSession *)self setPlaybackStateCompletionHandlers];
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      v10 = 0;
      do
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        (*(*(*(&v13 + 1) + 8 * v10++) + 16))();
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  v11 = [(HMDMediaSession *)self setPlaybackStateCompletionHandlers];
  [v11 removeAllObjects];

  v12 = *MEMORY[0x277D85DE8];
}

- (void)updateWithResponses:(id)a3 requestMessageInformation:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(HMDMediaSession *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __65__HMDMediaSession_updateWithResponses_requestMessageInformation___block_invoke;
  block[3] = &unk_279734960;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

void __65__HMDMediaSession_updateWithResponses_requestMessageInformation___block_invoke(uint64_t a1)
{
  v75 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v6 = *(a1 + 40);
    *buf = 138543618;
    v72 = v5;
    v73 = 2112;
    v74 = v6;
    _os_log_impl(&dword_2531F8000, v4, OS_LOG_TYPE_INFO, "%{public}@Updating media session with responses %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v2);
  v68 = 0u;
  v69 = 0u;
  v66 = 0u;
  v67 = 0u;
  v7 = *(a1 + 40);
  v65 = [v7 countByEnumeratingWithState:&v66 objects:v70 count:16];
  if (v65)
  {
    v8 = 0;
    v64 = *v67;
    v63 = *MEMORY[0x277CD0938];
    v62 = *MEMORY[0x277CD0990];
    v61 = *MEMORY[0x277CD0960];
    v60 = *MEMORY[0x277CD09B0];
    obj = v7;
    v59 = *MEMORY[0x277CD0920];
    do
    {
      for (i = 0; i != v65; ++i)
      {
        if (*v67 != v64)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v66 + 1) + 8 * i);
        v11 = [v10 request];
        v12 = [v11 property];
        if ([v12 isEqual:v63])
        {
          v13 = [v10 value];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v14 = v13;
          }

          else
          {
            v14 = 0;
          }

          v15 = v14;

          if (v15)
          {
            v16 = [*(a1 + 32) state];
            v17 = [v16 playbackState];

            v18 = [v15 unsignedIntegerValue];
            v19 = [*(a1 + 32) state];
            [v19 setPlaybackState:v18];

            [*(a1 + 32) _invokePendingSetPlaybackStateBlocksOfError:0];
            v20 = [v10 error];
            if (v20)
            {
              v21 = 1;
            }

            else
            {
              v21 = v17 == v18;
            }

            v22 = !v21;

            v8 |= v22;
          }
        }

        if ([v12 isEqual:v62])
        {
          v23 = [v10 value];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v24 = v23;
          }

          else
          {
            v24 = 0;
          }

          v25 = v24;

          if (v25)
          {
            v26 = [*(a1 + 32) state];
            v27 = [v26 shuffleState];

            v28 = [v25 unsignedIntegerValue];
            v29 = [*(a1 + 32) state];
            [v29 setShuffleState:v28];

            v30 = [v10 error];
            if (v30)
            {
              v31 = 1;
            }

            else
            {
              v31 = v27 == v28;
            }

            v32 = !v31;

            v8 |= v32;
          }
        }

        if ([v12 isEqual:v61])
        {
          v33 = [v10 value];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v34 = v33;
          }

          else
          {
            v34 = 0;
          }

          v35 = v34;

          if (v35)
          {
            v36 = [*(a1 + 32) state];
            v37 = [v36 repeatState];

            v38 = [v35 unsignedIntegerValue];
            v39 = [*(a1 + 32) state];
            [v39 setRepeatState:v38];

            v40 = [v10 error];
            if (v40)
            {
              v41 = 1;
            }

            else
            {
              v41 = v37 == v38;
            }

            v42 = !v41;

            v8 |= v42;
          }
        }

        if ([v12 isEqual:v60])
        {
          v43 = [v10 value];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v44 = v43;
          }

          else
          {
            v44 = 0;
          }

          v45 = v44;

          if (v45)
          {
            v46 = [*(a1 + 32) state];
            v47 = [v46 volume];

            v48 = [*(a1 + 32) state];
            [v48 setVolume:v45];

            v49 = [v10 error];
            if (v49)
            {
            }

            else
            {
              v8 |= HMFEqualObjects() ^ 1;
            }
          }
        }

        if ([v12 isEqual:v59])
        {
          v50 = [v10 value];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v51 = v50;
          }

          else
          {
            v51 = 0;
          }

          v52 = v51;

          if (v52)
          {
            v53 = [*(a1 + 32) state];
            v54 = [v53 mediaUniqueIdentifier];

            v55 = [*(a1 + 32) state];
            [v55 setMediaUniqueIdentifier:v52];

            v56 = [v10 error];
            if (v56)
            {
            }

            else
            {
              v8 |= HMFEqualObjects() ^ 1;
            }
          }
        }
      }

      v65 = [obj countByEnumeratingWithState:&v66 objects:v70 count:16];
    }

    while (v65);

    if (v8)
    {
      [*(a1 + 32) _postNotificationOfMediaStateUpdateWithRequestMessageInformation:*(a1 + 48)];
    }
  }

  else
  {
  }

  v57 = *MEMORY[0x277D85DE8];
}

- (void)_postNotificationOfMediaStateUpdateWithPayload:(id)a3
{
  v25[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v24[0] = *MEMORY[0x277CD0938];
  v5 = MEMORY[0x277CCABB0];
  v6 = [(HMDMediaSession *)self state];
  v7 = [v5 numberWithInteger:{objc_msgSend(v6, "playbackState")}];
  v25[0] = v7;
  v24[1] = *MEMORY[0x277CD09A8];
  v8 = [(HMDMediaSession *)self uuid];
  v9 = [v8 UUIDString];
  v25[1] = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:v24 count:2];
  v11 = [v10 mutableCopy];

  if (v4)
  {
    [v11 addEntriesFromDictionary:v4];
  }

  v12 = objc_autoreleasePoolPush();
  v13 = self;
  v14 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    v15 = HMFGetLogIdentifier();
    v18 = 138543874;
    v19 = v15;
    v20 = 2112;
    v21 = @"HMDMediaSessionDidUpdatePlaybackStateNotification";
    v22 = 2112;
    v23 = v11;
    _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_INFO, "%{public}@Sending internal notification %@ with payload %@", &v18, 0x20u);
  }

  objc_autoreleasePoolPop(v12);
  v16 = [MEMORY[0x277CCAB98] defaultCenter];
  [v16 postNotificationName:@"HMDMediaSessionDidUpdatePlaybackStateNotification" object:v13 userInfo:v11];

  v17 = *MEMORY[0x277D85DE8];
}

- (void)_postNotificationOfMediaStateUpdateWithRequestMessageInformation:(id)a3
{
  v9[1] = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v8 = *MEMORY[0x277CD0968];
    v9[0] = a3;
    v4 = MEMORY[0x277CBEAC0];
    v5 = a3;
    v6 = [v4 dictionaryWithObjects:v9 forKeys:&v8 count:1];
  }

  else
  {
    v6 = 0;
  }

  [(HMDMediaSession *)self _postNotificationOfMediaStateUpdateWithPayload:v6];

  v7 = *MEMORY[0x277D85DE8];
}

- (void)handleMediaPlaybackStateNotification:(id)a3
{
  v4 = a3;
  v5 = [(HMDMediaSession *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __56__HMDMediaSession_handleMediaPlaybackStateNotification___block_invoke;
  v7[3] = &unk_2797359B0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __56__HMDMediaSession_handleMediaPlaybackStateNotification___block_invoke(uint64_t a1)
{
  v17[1] = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) state];
  v3 = [v2 playbackState];

  v4 = [*(a1 + 40) hmf_numberForKey:*MEMORY[0x277D27E40]];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 unsignedIntValue];
    if (v6 > 5)
    {
      v7 = 3;
    }

    else
    {
      v7 = qword_253D4C358[v6];
    }

    v9 = [*(a1 + 32) state];
    [v9 setPlaybackState:v7];

    [*(a1 + 32) _invokePendingSetPlaybackStateBlocksOfError:0];
    if (v3 != v7)
    {
      v10 = *(a1 + 32);
      v16 = @"force-notify";
      v17[0] = MEMORY[0x277CBEC38];
      v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:&v16 count:1];
      [v10 _postNotificationOfMediaStateUpdateWithPayload:v11];
    }
  }

  else
  {
    objc_initWeak(&location, *(a1 + 32));
    v8 = *(a1 + 32);
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __56__HMDMediaSession_handleMediaPlaybackStateNotification___block_invoke_2;
    v13[3] = &unk_279729900;
    objc_copyWeak(v14, &location);
    v14[1] = v3;
    [v8 _getPlaybackStateWithCompletion:v13];
    objc_destroyWeak(v14);
    objc_destroyWeak(&location);
  }

  v12 = *MEMORY[0x277D85DE8];
}

void __56__HMDMediaSession_handleMediaPlaybackStateNotification___block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _invokePendingSetPlaybackStateBlocksOfError:v5];

  if (!v5 && *(a1 + 40) != a3)
  {
    [WeakRetained _postNotificationOfMediaStateUpdate];
  }
}

- (void)handleRefreshPlayback:(id)a3
{
  v4 = a3;
  v5 = [(HMDMediaSession *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __41__HMDMediaSession_handleRefreshPlayback___block_invoke;
  v7[3] = &unk_2797359B0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)_handleGetPlaybackState:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __43__HMDMediaSession__handleGetPlaybackState___block_invoke;
  v6[3] = &unk_2797298D8;
  objc_copyWeak(&v8, &location);
  v5 = v4;
  v7 = v5;
  [(HMDMediaSession *)self _getPlaybackStateWithCompletion:v6];

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

void __43__HMDMediaSession__handleGetPlaybackState___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    if (!v3)
    {
      goto LABEL_3;
    }
  }

  else if (!v3)
  {
    v3 = [MEMORY[0x277CCA9B8] hmErrorWithCode:52];
    if (!v3)
    {
LABEL_3:
      if (*(a1 + 32))
      {
        v3 = [[HMDMediaSessionRequestMessageInformation alloc] initWithMessage:*(a1 + 32)];
      }

      else
      {
        v3 = 0;
      }

      [WeakRetained _postNotificationOfMediaStateUpdateWithRequestMessageInformation:v3];
      [*(a1 + 32) respondWithSuccess];
      goto LABEL_10;
    }
  }

  [*(a1 + 32) respondWithError:v3];
LABEL_10:
}

- (void)_getPlaybackStateWithCompletion:(id)a3
{
  v32 = *MEMORY[0x277D85DE8];
  v4 = a3;
  objc_initWeak(&location, self);
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __51__HMDMediaSession__getPlaybackStateWithCompletion___block_invoke;
  aBlock[3] = &unk_279729838;
  objc_copyWeak(&v28, &location);
  v5 = v4;
  v27 = v5;
  v6 = _Block_copy(aBlock);
  if ([(HMDMediaSession *)self isCurrentAccessorySession])
  {
    v7 = MRMediaRemoteGetLocalOrigin() == 0;
    v8 = objc_autoreleasePoolPush();
    v9 = self;
    if (v7)
    {
      v15 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v16 = HMFGetLogIdentifier();
        *buf = 138543362;
        v31 = v16;
        _os_log_impl(&dword_2531F8000, v15, OS_LOG_TYPE_DEFAULT, "%{public}@Cannot look up local origin for currentAccessory to get playback state", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v8);
      if (v5)
      {
        v17 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2005];
        v18 = [MEMORY[0x277CCA9B8] hmErrorWithCode:4 description:@"Cannot lookup origin" reason:@"Cannot lookup origin" suggestion:0 underlyingError:v17];
        (*(v5 + 2))(v5, v18, 0);
      }
    }

    else
    {
      v10 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v11 = HMFGetLogIdentifier();
        *buf = 138543362;
        v31 = v11;
        _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@Attempting to locally read the playback state from media remote", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v8);
      v12 = [(HMDMediaSession *)v9 workQueue];
      v21 = MEMORY[0x277D85DD0];
      v22 = 3221225472;
      v23 = __51__HMDMediaSession__getPlaybackStateWithCompletion___block_invoke_40;
      v24 = &unk_279729860;
      v25 = v6;
      MRMediaRemoteGetNowPlayingApplicationPlaybackStateForOrigin();
    }
  }

  else
  {
    v13 = [(HMDMediaSession *)self endpoint];
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __51__HMDMediaSession__getPlaybackStateWithCompletion___block_invoke_2;
    v19[3] = &unk_2797298B0;
    v19[4] = self;
    v20 = v6;
    [v13 getPlaybackStateWithCompletionHandler:v19];
  }

  objc_destroyWeak(&v28);
  objc_destroyWeak(&location);

  v14 = *MEMORY[0x277D85DE8];
}

void __51__HMDMediaSession__getPlaybackStateWithCompletion___block_invoke(uint64_t a1, void *a2, unsigned int a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v7 = WeakRetained;
  if (v5)
  {
    v8 = 0;
  }

  else
  {
    if (a3 > 5)
    {
      v8 = 3;
    }

    else
    {
      v8 = qword_253D4C358[a3];
    }

    v9 = [WeakRetained state];
    [v9 setPlaybackState:v8];

    v10 = objc_autoreleasePoolPush();
    v11 = v7;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = HMFGetLogIdentifier();
      v16 = 138543618;
      v17 = v13;
      v18 = 2048;
      v19 = v8;
      _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_INFO, "%{public}@Locally read the playback state as: %tu", &v16, 0x16u);
    }

    objc_autoreleasePoolPop(v10);
  }

  v14 = *(a1 + 32);
  if (v14)
  {
    (*(v14 + 16))(v14, v5, v8);
  }

  v15 = *MEMORY[0x277D85DE8];
}

void __51__HMDMediaSession__getPlaybackStateWithCompletion___block_invoke_2(uint64_t a1, void *a2, int a3)
{
  v5 = a2;
  v6 = [*(a1 + 32) workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __51__HMDMediaSession__getPlaybackStateWithCompletion___block_invoke_3;
  block[3] = &unk_279729888;
  v7 = *(a1 + 40);
  v10 = v5;
  v11 = v7;
  v12 = a3;
  v8 = v5;
  dispatch_async(v6, block);
}

- (id)dumpStateWithPrivacyLevel:(unint64_t)a3
{
  v4 = MEMORY[0x277CCACA8];
  v5 = [(HMDMediaSession *)self uuid];
  v6 = [v5 UUIDString];
  v7 = [(HMDMediaSession *)self sessionIdentifier];
  v8 = [(HMDMediaSession *)self state];
  [v8 playbackState];
  v9 = playbackStateAsString();
  v10 = [(HMDMediaSession *)self endpoint];
  v11 = [v4 stringWithFormat:@"MediaSession uuid: %@, sessionIdentifier: %@, playbackState: %@, endpoint: %@", v6, v7, v9, v10];

  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObject:v11 forKey:*MEMORY[0x277D0F170]];

  return v12;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v9 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
    }

    else
    {
      v5 = 0;
    }

    v6 = v5;
    if (v6)
    {
      v7 = [(HMDMediaSession *)self uuid];
      v8 = [(HMDMediaSession *)v6 uuid];
      v9 = [v7 isEqual:v8];
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

- (unint64_t)hash
{
  v2 = [(HMDMediaSession *)self uuid];
  v3 = [v2 hash];

  return v3;
}

- (void)dealloc
{
  v3 = [(HMDMediaSession *)self setPlaybackStateTimer];
  [v3 cancel];

  [(HMDMediaSession *)self setSetPlaybackStateTimer:0];
  v4.receiver = self;
  v4.super_class = HMDMediaSession;
  [(HMDMediaSession *)&v4 dealloc];
}

- (id)_initWithEndpoint:(id)a3 mediaProfiles:(id)a4 state:(id)a5
{
  v39[1] = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (!v11)
  {
    _HMFPreconditionFailure();
  }

  v12 = v11;
  v38.receiver = self;
  v38.super_class = HMDMediaSession;
  v13 = [(HMDMediaSession *)&v38 init];
  if (v13)
  {
    v14 = [MEMORY[0x277CBEB58] setWithArray:v10];
    mediaProfiles = v13->_mediaProfiles;
    v13->_mediaProfiles = v14;

    objc_storeStrong(&v13->_state, a5);
    v16 = [v12 sessionIdentifier];
    sessionIdentifier = v13->_sessionIdentifier;
    v13->_sessionIdentifier = v16;

    v18 = MEMORY[0x277CCAD78];
    v19 = objc_alloc(MEMORY[0x277CCAD78]);
    v20 = [v19 initWithUUIDString:*MEMORY[0x277CD23C8]];
    v39[0] = v13->_sessionIdentifier;
    v21 = [MEMORY[0x277CBEA60] arrayWithObjects:v39 count:1];
    v22 = [v18 hm_deriveUUIDFromBaseUUID:v20 withSalts:v21];
    uuid = v13->_uuid;
    v13->_uuid = v22;

    v24 = MEMORY[0x277CCACA8];
    v25 = v13->_sessionIdentifier;
    v26 = [(NSUUID *)v13->_uuid UUIDString];
    v27 = [v24 stringWithFormat:@"%@/%@", v25, v26];
    logID = v13->_logID;
    v13->_logID = v27;

    v29 = [MEMORY[0x277CBEB18] array];
    setPlaybackStateCompletionHandlers = v13->_setPlaybackStateCompletionHandlers;
    v13->_setPlaybackStateCompletionHandlers = v29;

    v31 = HMDispatchQueueNameString();
    v32 = [v31 UTF8String];
    v33 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v34 = dispatch_queue_create(v32, v33);
    workQueue = v13->_workQueue;
    v13->_workQueue = v34;

    objc_storeStrong(&v13->_endpoint, a3);
  }

  v36 = *MEMORY[0x277D85DE8];
  return v13;
}

+ (Class)mediaPropertyValueTypeWithMessageKey:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:*MEMORY[0x277CD0938]] & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", *MEMORY[0x277CD0990]) & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", *MEMORY[0x277CD0960]) & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", *MEMORY[0x277CD09B0]))
  {
    v4 = 0x277CCABB0;
LABEL_6:
    v5 = *v4;
    v6 = objc_opt_class();
    goto LABEL_7;
  }

  if ([v3 isEqualToString:*MEMORY[0x277CD0920]])
  {
    v4 = 0x277CCACA8;
    goto LABEL_6;
  }

  v6 = 0;
LABEL_7:

  return v6;
}

+ (NSArray)mediaPropertyMessageKeys
{
  v7[5] = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277CD0990];
  v7[0] = *MEMORY[0x277CD0938];
  v7[1] = v2;
  v3 = *MEMORY[0x277CD09B0];
  v7[2] = *MEMORY[0x277CD0960];
  v7[3] = v3;
  v7[4] = *MEMORY[0x277CD0920];
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:5];
  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t1_88406 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t1_88406, &__block_literal_global_88407);
  }

  v3 = logCategory__hmf_once_v2_88408;

  return v3;
}

uint64_t __30__HMDMediaSession_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v2_88408;
  logCategory__hmf_once_v2_88408 = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

+ (id)sessionForCurrentAccessoryWithSessionIdentifier:(id)a3 mediaProfile:(id)a4
{
  v5 = a3;
  v6 = a4;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __80__HMDMediaSession_sessionForCurrentAccessoryWithSessionIdentifier_mediaProfile___block_invoke;
  v13[3] = &unk_2797359B0;
  v14 = v5;
  v15 = v6;
  v7 = sessionForCurrentAccessoryWithSessionIdentifier_mediaProfile__onceToken;
  v8 = v6;
  v9 = v5;
  if (v7 != -1)
  {
    dispatch_once(&sessionForCurrentAccessoryWithSessionIdentifier_mediaProfile__onceToken, v13);
  }

  v10 = sessionForCurrentAccessoryWithSessionIdentifier_mediaProfile__sessionForCurrentAccessory;
  v11 = sessionForCurrentAccessoryWithSessionIdentifier_mediaProfile__sessionForCurrentAccessory;

  return v10;
}

void __80__HMDMediaSession_sessionForCurrentAccessoryWithSessionIdentifier_mediaProfile___block_invoke(uint64_t a1)
{
  v8[1] = *MEMORY[0x277D85DE8];
  v2 = [[HMDMediaSessionState alloc] initWithSessionIdentifier:*(a1 + 32)];
  v3 = [HMDMediaSession alloc];
  v8[0] = *(a1 + 40);
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:1];
  v5 = [(HMDMediaSession *)v3 _initWithMediaProfiles:v4 state:v2];
  v6 = sessionForCurrentAccessoryWithSessionIdentifier_mediaProfile__sessionForCurrentAccessory;
  sessionForCurrentAccessoryWithSessionIdentifier_mediaProfile__sessionForCurrentAccessory = v5;

  *(sessionForCurrentAccessoryWithSessionIdentifier_mediaProfile__sessionForCurrentAccessory + 25) = 1;
  v7 = *MEMORY[0x277D85DE8];
}

@end