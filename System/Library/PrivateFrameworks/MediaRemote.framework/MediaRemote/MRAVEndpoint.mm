@interface MRAVEndpoint
+ (id)_notificationSerialQueue;
+ (id)_userInfoFromEndpoint:(id)endpoint outputDevice:(id)device;
+ (void)_notifyDeviceInfoDidChange:(id)change previousDeviceInfo:(id)info endpoint:(id)endpoint;
+ (void)_notifyDidAddOutputDevice:(id)device endpoint:(id)endpoint;
+ (void)_notifyDidChangeOutputDevice:(id)device endpoint:(id)endpoint;
+ (void)_notifyDidChangePredictedOutputDevice:(id)device endpoint:(id)endpoint;
+ (void)_notifyDidRemoveOutputDevice:(id)device endpoint:(id)endpoint;
+ (void)_notifyEndpointDidConnect:(id)connect;
+ (void)_notifyEndpointDidDisconnect:(id)disconnect withError:(id)error;
+ (void)_notifyGroupSessionHostingEligibilityDidChangeForEndpoint:(id)endpoint;
+ (void)_notifyGroupSessionInfoDidChange:(id)change endpoint:(id)endpoint;
+ (void)_notifyVolumeDidChange:(float)change outputDevice:(id)device endpoint:(id)endpoint;
+ (void)addOutputDevicesWithUIDs:(id)ds toGroupContainingOutputDeviceWithUID:(id)d details:(id)details queue:(id)queue completion:(id)completion;
+ (void)connectToEndpointContainingOutputDeviceUID:(id)d options:(unsigned int)options details:(id)details completion:(id)completion;
+ (void)createEndpointWithOutputDeviceUIDs:(id)ds details:(id)details queue:(id)queue completion:(id)completion;
+ (void)createEndpointWithOutputDeviceUIDs:(id)ds details:(id)details queue:(id)queue groupUIDCompletion:(id)completion;
+ (void)createEndpointWithOutputDeviceUIDs:(id)ds queue:(id)queue completion:(id)completion;
+ (void)directEndpointForOutputDeviceUIDs:(id)ds queue:(id)queue completion:(id)completion;
+ (void)findMyGroupLeaderWithTimeout:(double)timeout details:(id)details queue:(id)queue completion:(id)completion;
+ (void)hostedEndpointForOutputDeviceUIDs:(id)ds queue:(id)queue completion:(id)completion;
+ (void)moveOutputDevicesWithUIDs:(id)ds toGroupContainingOutputDeviceWithUID:(id)d details:(id)details queue:(id)queue completion:(id)completion;
+ (void)pauseOutputDeviceUIDs:(id)ds details:(id)details queue:(id)queue completion:(id)completion;
+ (void)prepareGroupForPlaybackWithOutputDeviceUIDs:(id)ds forBundleID:(id)d timeout:(double)timeout details:(id)details queue:(id)queue completion:(id)completion;
+ (void)sendCommand:(unsigned int)command withOptions:(id)options toEachEndpointContainingOutputDeviceUIDs:(id)ds timeout:(double)timeout queue:(id)queue completion:(id)completion;
+ (void)sendCommand:(unsigned int)command withOptions:(id)options toNewEndpointContainingOutputDeviceUIDs:(id)ds nowPlayingClient:(id)client timeout:(double)timeout queue:(id)queue completion:(id)completion;
- (BOOL)canStartNativePlayback;
- (BOOL)containsOutputDeviceWithUID:(id)d;
- (BOOL)discoveredIsPlaying;
- (BOOL)effectivelyEqual:(id)equal;
- (BOOL)groupContainsDiscoverableGroupLeader;
- (BOOL)groupLeaderIsPlaceholder;
- (BOOL)hasPotentialGroupLeader;
- (BOOL)isCarPlayVideoActive;
- (BOOL)isCarPlayVideoAllowed;
- (BOOL)isConnected;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToEndpoint:(id)endpoint;
- (BOOL)isGroupLeaderGroupable;
- (BOOL)isGroupable;
- (BOOL)isMyDiscoverableUndiscoverableGroupLeader;
- (BOOL)isMyGroupLeader;
- (BOOL)isProxyGroupPlayer;
- (BOOL)isVisualProxyGroupPlayer;
- (BOOL)isVolumeMuted;
- (BOOL)supportsVisualProxyGroupPlayer;
- (BOOL)volumeMutedForOutputDeviceUID:(id)d;
- (MRAVOutputDevice)designatedProxyGroupLeader;
- (MRDeviceInfo)deviceInfo;
- (MRGroupSessionInfo)groupSessionInfo;
- (MROrigin)origin;
- (MROutputContextDataSource)outputContextDataSource;
- (NSArray)effectiveOutputDevices;
- (NSArray)outputDeviceUIDs;
- (NSArray)personalOutputDevices;
- (NSArray)resolvedOutputDevices;
- (NSArray)syncedOutputDevices;
- (NSDictionary)jsonEncodableDictionaryRepresentation;
- (NSString)debugName;
- (NSString)shortDescription;
- (NSString)uniqueIdentifier;
- (_MRAVEndpointDescriptorProtobuf)descriptor;
- (__CFString)_createLocalizedNameWithBuiltInDeviceNameBlock:(void *)block;
- (float)volume;
- (float)volumeForOutputDeviceUID:(id)d;
- (id)_externalDiscoverySessionDestinationUID;
- (id)_externalOutputContext;
- (id)_init;
- (id)_initiatorStringWithInitiator:(void *)initiator uid:;
- (id)debugDescription;
- (id)description;
- (id)discoverySessionWithConfiguration:(id)configuration;
- (id)outputDeviceForUID:(id)d;
- (id)outputDeviceUIDsMatchingPredicate:(id)predicate;
- (id)outputDeviceWithUID:(id)d;
- (id)outputDevicesMatchingPredicate:(id)predicate;
- (id)translateClusterUIDIfNeeded:(void *)needed;
- (uint64_t)supportsExternalDiscovery;
- (unint64_t)hash;
- (unint64_t)logicalOutputDeviceCount;
- (unsigned)volumeCapabilities;
- (unsigned)volumeControlCapabilitiesForOutputDeviceUID:(id)d;
- (void)_adjustOutputDeviceVolume:(int64_t)volume outputDevice:(id)device details:(id)details queue:(id)queue completion:(id)completion;
- (void)_modifyTopologyWithRequest:(id)request withReplyQueue:(id)queue completion:(id)completion;
- (void)_muteOutputDeviceVolume:(BOOL)volume outputDevice:(id)device details:(id)details queue:(id)queue completion:(id)completion;
- (void)_prepareToMigrateToEndpoint:(void *)endpoint queue:(void *)queue completion:;
- (void)_setOutputDeviceVolume:(float)volume outputDevice:(id)device details:(id)details queue:(id)queue completion:(id)completion;
- (void)_willStartingPlaybackToOutputDeviceInterruptPlayback:(void *)playback duration:(void *)duration requestID:(void *)d queue:(double)queue completion:;
- (void)addOutputDevices:(id)devices initiator:(id)initiator fadeAudio:(BOOL)audio withReplyQueue:(id)queue completion:(id)completion;
- (void)addOutputDevices:(id)devices initiator:(id)initiator withReplyQueue:(id)queue completion:(id)completion;
- (void)adjustOutputDeviceVolume:(int64_t)volume outputDevice:(id)device details:(id)details queue:(id)queue completion:(id)completion;
- (void)canMigrateToEndpoint:(id)endpoint queue:(id)queue completion:(id)completion;
- (void)connectToExternalDeviceWithOptions:(unsigned int)options userInfo:(id)info completion:(id)completion;
- (void)createHostedEndpointWithOutputDeviceUIDs:(id)ds details:(id)details queue:(id)queue completion:(id)completion;
- (void)createHostedEndpointWithOutputDeviceUIDs:(id)ds details:(id)details queue:(id)queue groupUIDCompletion:(id)completion;
- (void)createHostedEndpointWithOutputDeviceUIDs:(id)ds queue:(id)queue completion:(id)completion;
- (void)migrateToEndpoint:(id)endpoint request:(id)request queue:(id)queue completion:(id)completion;
- (void)migrateToEndpointOrModifyTopology:(id)topology migrationRequest:(id)request topologyModificationRequest:(id)modificationRequest withReplyQueue:(id)queue completion:(id)completion;
- (void)migrateToOrAddOutputDevices:(id)devices initiator:(id)initiator withReplyQueue:(id)queue completion:(id)completion;
- (void)migrateToOrSetOutputDevices:(id)devices initiator:(id)initiator withReplyQueue:(id)queue completion:(id)completion;
- (void)migrateToOutputDevice:(id)device request:(id)request initiator:(id)initiator queue:(id)queue completion:(id)completion;
- (void)migrateToOutputDevices:(id)devices request:(id)request initiator:(id)initiator queue:(id)queue completion:(id)completion;
- (void)modifyTopologyWithRequest:(id)request withReplyQueue:(id)queue completion:(id)completion;
- (void)muteOutputDeviceVolume:(BOOL)volume outputDevice:(id)device details:(id)details queue:(id)queue completion:(id)completion;
- (void)outputContextDataSource;
- (void)outputContextDataSourceDidAddOutputDevice:(id)device;
- (void)outputContextDataSourceDidChangeOutputDevice:(id)device;
- (void)outputContextDataSourceDidRemoveOutputDevice:(id)device;
- (void)outputContextDataSourceOutputDeviceDidChangeVolume:(id)volume;
- (void)outputContextDataSourceOutputDeviceDidChangeVolumeControlCapabilities:(id)capabilities;
- (void)outputContextDataSourceOutputDeviceDidChangeVolumeMuted:(id)muted;
- (void)outputContextDidChangePredictedOutputDevice:(id)device;
- (void)outputDeviceVolume:(id)volume queue:(id)queue completion:(id)completion;
- (void)outputDeviceVolumeControlCapabilities:(id)capabilities queue:(id)queue completion:(id)completion;
- (void)outputDeviceVolumeMuted:(id)muted queue:(id)queue completion:(id)completion;
- (void)performMigrationToEndpoint:(id)endpoint request:(id)request queue:(id)queue completion:(id)completion;
- (void)performMigrationToOutputDevices:(id)devices request:(id)request initiator:(id)initiator queue:(id)queue completion:(id)completion;
- (void)removeOutputDeviceFromParentGroup:(id)group queue:(id)queue completion:(id)completion;
- (void)removeOutputDevices:(id)devices initiator:(id)initiator fadeAudio:(BOOL)audio withReplyQueue:(id)queue completion:(id)completion;
- (void)removeOutputDevices:(id)devices initiator:(id)initiator withReplyQueue:(id)queue completion:(id)completion;
- (void)requestGroupSessionWithDetails:(id)details queue:(id)queue completion:(id)completion;
- (void)requestGroupSessionWithQueue:(id)queue completion:(id)completion;
- (void)requestMicrophoneConnection:(id)connection completion:(id)completion;
- (void)requestMicrophoneConnectionWithDetails:(void *)details queue:(void *)queue completion:;
- (void)scheduleEndpointOutputDevicesDidChangeNotification;
- (void)setAllowsHeadTrackedSpatialAudio:(BOOL)audio outputDeviceUID:(id)d queue:(id)queue completion:(id)completion;
- (void)setCarPlayVideoActive:(BOOL)active completion:(id)completion;
- (void)setConversationDetectionEnabled:(BOOL)enabled outputDeviceUID:(id)d queue:(id)queue completion:(id)completion;
- (void)setHeadTrackedSpatialAudioMode:(id)mode outputDeviceUID:(id)d queue:(id)queue completion:(id)completion;
- (void)setListeningMode:(id)mode outputDeviceUID:(id)d queue:(id)queue completion:(id)completion;
- (void)setOutputContextDataSource:(id)source;
- (void)setOutputDeviceVolume:(float)volume outputDevice:(id)device details:(id)details queue:(id)queue completion:(id)completion;
- (void)setOutputDevices:(id)devices initiator:(id)initiator fadeAudio:(BOOL)audio withReplyQueue:(id)queue completion:(id)completion;
- (void)setOutputDevices:(id)devices initiator:(id)initiator withReplyQueue:(id)queue completion:(id)completion;
- (void)waitForPlaybackWithTimeout:(double)timeout queue:(id)queue completion:(id)completion;
- (void)willStartingPlaybackToOutputDeviceInterruptPlayback:(id)playback duration:(double)duration queue:(id)queue completion:(id)completion;
- (void)willStartingPlaybackToOutputDevicesInterruptPlayback:(id)playback originatingOutputDeviceUID:(id)d duration:(double)duration queue:(id)queue completion:(id)completion;
@end

@implementation MRAVEndpoint

- (NSArray)resolvedOutputDevices
{
  syncedOutputDevices = [(MRAVEndpoint *)self syncedOutputDevices];
  v13[0] = 0;
  v13[1] = v13;
  v13[2] = 0x3032000000;
  v13[3] = __Block_byref_object_copy__37;
  v13[4] = __Block_byref_object_dispose__37;
  v14 = 0;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __37__MRAVEndpoint_resolvedOutputDevices__block_invoke;
  v9[3] = &unk_1E76A26A0;
  v4 = syncedOutputDevices;
  selfCopy = self;
  v12 = v13;
  v10 = v4;
  v5 = MEMORY[0x1A58E3570](v9);
  if (v5[2]())
  {
    outputDevices = v4;
  }

  else
  {
    outputDevices = [(MRAVEndpoint *)self outputDevices];
  }

  v7 = outputDevices;

  _Block_object_dispose(v13, 8);

  return v7;
}

- (NSArray)syncedOutputDevices
{
  v10[0] = 0;
  v10[1] = v10;
  v10[2] = 0x3032000000;
  v10[3] = __Block_byref_object_copy__37;
  v10[4] = __Block_byref_object_dispose__37;
  v11 = 0;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __35__MRAVEndpoint_syncedOutputDevices__block_invoke;
  v9[3] = &unk_1E76A2650;
  v9[4] = self;
  v9[5] = v10;
  v3 = MEMORY[0x1A58E3570](v9, a2);
  if (v3[2]())
  {
    outputContextDataSource = [(MRAVEndpoint *)self outputContextDataSource];
    outputDevices = [outputContextDataSource outputDevices];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __35__MRAVEndpoint_syncedOutputDevices__block_invoke_2;
    v8[3] = &unk_1E769B6F8;
    v8[4] = self;
    v6 = [outputDevices msv_map:v8];
  }

  else
  {
    v6 = 0;
  }

  _Block_object_dispose(v10, 8);

  return v6;
}

uint64_t __35__MRAVEndpoint_syncedOutputDevices__block_invoke(uint64_t a1)
{
  v2 = +[MRUserSettings currentSettings];
  v3 = [v2 supportOutputContextSync];

  if ((v3 & 1) == 0)
  {
    v4 = 0;
    v5 = *(*(a1 + 40) + 8);
    v6 = *(v5 + 40);
    v7 = @"FF disabled";
    goto LABEL_5;
  }

  if (([*(a1 + 32) isLocalEndpoint] & 1) == 0)
  {
    v9 = [*(a1 + 32) externalDevice];
    if (v9)
    {
      v6 = v9;
      v10 = [v9 deviceInfo];
      v11 = v10;
      if (v10)
      {
        if ([v10 supportsOutputContextSync])
        {

          v4 = 1;
          goto LABEL_6;
        }

        v12 = @"endpoint does not support outputContextSync";
      }

      else
      {
        v12 = @"deviceInfo==nil";
      }

      v13 = *(*(a1 + 40) + 8);
      v14 = *(v13 + 40);
      *(v13 + 40) = v12;

      v4 = 0;
      goto LABEL_6;
    }

    v4 = 0;
    v5 = *(*(a1 + 40) + 8);
    v6 = *(v5 + 40);
    v7 = @"not connected";
LABEL_5:
    *(v5 + 40) = v7;
LABEL_6:

    return v4;
  }

  return 1;
}

- (MROutputContextDataSource)outputContextDataSource
{
  v11 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  outputContextDataSource = selfCopy->_outputContextDataSource;
  if (!outputContextDataSource)
  {
    v4 = _MRLogForCategory(0);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      debugName = [(MRAVEndpoint *)selfCopy debugName];
      [(MRAVEndpoint *)debugName outputContextDataSource];
    }

    _externalOutputContext = [(MRAVEndpoint *)selfCopy _externalOutputContext];
    [(MRAVEndpoint *)selfCopy setOutputContextDataSource:_externalOutputContext];

    outputContextDataSource = selfCopy->_outputContextDataSource;
  }

  v7 = outputContextDataSource;
  objc_sync_exit(selfCopy);

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

uint64_t __37__MRAVEndpoint_resolvedOutputDevices__block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) count])
  {
    v2 = *(a1 + 40);

    return [v2 groupContainsDiscoverableGroupLeader];
  }

  else
  {
    v4 = *(*(a1 + 48) + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = @"outputContext is uninitialized";

    return 0;
  }
}

- (id)_init
{
  v3.receiver = self;
  v3.super_class = MRAVEndpoint;
  return [(MRAVEndpoint *)&v3 init];
}

- (void)scheduleEndpointOutputDevicesDidChangeNotification
{
  if (!self->_outputDevicesDidChangeNotificationScheduled)
  {
    self->_outputDevicesDidChangeNotificationScheduled = 1;
    v3 = +[MRAVEndpoint _notificationSerialQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __66__MRAVEndpoint_scheduleEndpointOutputDevicesDidChangeNotification__block_invoke;
    block[3] = &unk_1E769A228;
    block[4] = self;
    dispatch_async(v3, block);
  }
}

+ (id)_notificationSerialQueue
{
  objc_opt_self();
  if (_notificationSerialQueue___once_1 != -1)
  {
    +[MRAVEndpoint _notificationSerialQueue];
  }

  v0 = _notificationSerialQueue___notificationSerialQueue_1;

  return v0;
}

void __40__MRAVEndpoint__notificationSerialQueue__block_invoke()
{
  v2 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v0 = dispatch_queue_create("com.apple.MediaRemote.MRAVEndpoint.NotificationQueue", v2);
  v1 = _notificationSerialQueue___notificationSerialQueue_1;
  _notificationSerialQueue___notificationSerialQueue_1 = v0;
}

void __66__MRAVEndpoint_scheduleEndpointOutputDevicesDidChangeNotification__block_invoke(uint64_t a1)
{
  *(*(a1 + 32) + 8) = 0;
  v2 = [MEMORY[0x1E696AD88] defaultCenter];
  [v2 postNotificationName:@"kMRAVEndpointOutputDevicesDidChangeNotification" object:*(a1 + 32)];
}

- (NSString)debugName
{
  v3 = [(MRAVEndpoint *)self _createLocalizedNameWithBuiltInDeviceNameBlock:?];
  v4 = objc_alloc(MEMORY[0x1E696AEC0]);
  uniqueIdentifier = [OUTLINED_FUNCTION_22_0() uniqueIdentifier];
  v6 = [v2 initWithFormat:@"%@-%@", uniqueIdentifier, v3];

  return v6;
}

- (_MRAVEndpointDescriptorProtobuf)descriptor
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(_MRAVEndpointDescriptorProtobuf);
  localizedName = [(MRAVEndpoint *)self localizedName];
  [(_MRAVEndpointDescriptorProtobuf *)v3 setName:localizedName];

  designatedGroupLeader = [(MRAVEndpoint *)self designatedGroupLeader];
  descriptor = [designatedGroupLeader descriptor];
  [(_MRAVEndpointDescriptorProtobuf *)v3 setDesignatedGroupLeader:descriptor];

  uniqueIdentifier = [(MRAVEndpoint *)self uniqueIdentifier];
  [(_MRAVEndpointDescriptorProtobuf *)v3 setUniqueIdentifier:uniqueIdentifier];

  [(_MRAVEndpointDescriptorProtobuf *)v3 setConnectionType:[(MRAVEndpoint *)self connectionType]];
  [(_MRAVEndpointDescriptorProtobuf *)v3 setCanModifyGroupMembership:[(MRAVEndpoint *)self canModifyGroupMembership]];
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  outputDevices = [(MRAVEndpoint *)self outputDevices];
  v9 = [outputDevices countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v17;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v17 != v11)
        {
          objc_enumerationMutation(outputDevices);
        }

        descriptor2 = [*(*(&v16 + 1) + 8 * i) descriptor];
        [(_MRAVEndpointDescriptorProtobuf *)v3 addOutputDevices:descriptor2];
      }

      v10 = [outputDevices countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v10);
  }

  v14 = *MEMORY[0x1E69E9840];

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromMRAVEndpointConnectionType([(MRAVEndpoint *)self connectionType]);
  uniqueIdentifier = [(MRAVEndpoint *)self uniqueIdentifier];
  outputDevices = [(MRAVEndpoint *)self outputDevices];
  v8 = [v3 stringWithFormat:@"<%@:%p (%@) uid=%@ outputDevices = %@>", v4, self, v5, uniqueIdentifier, outputDevices];

  return v8;
}

- (unint64_t)hash
{
  uniqueIdentifier = [(MRAVEndpoint *)self uniqueIdentifier];
  v3 = [uniqueIdentifier hash];

  return v3;
}

- (NSArray)outputDeviceUIDs
{
  v19 = *MEMORY[0x1E69E9840];
  outputDevices = [(MRAVEndpoint *)self outputDevices];
  v3 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(outputDevices, "count")}];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = outputDevices;
  v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        v10 = [v9 uid];

        if (v10)
        {
          v11 = [v9 uid];
          [v3 addObject:v11];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  v12 = *MEMORY[0x1E69E9840];

  return v3;
}

- (float)volume
{
  v32 = *MEMORY[0x1E69E9840];
  date = [MEMORY[0x1E695DF00] date];
  uUID = [MEMORY[0x1E696AFB0] UUID];
  uUIDString = [uUID UUIDString];

  v6 = [objc_alloc(MEMORY[0x1E696AD60]) initWithFormat:@"%@<%@>", @"Endpoint.volume", uUIDString];
  debugName = [(MRAVEndpoint *)self debugName];

  if (debugName)
  {
    debugName2 = [(MRAVEndpoint *)self debugName];
    [(__CFString *)v6 appendFormat:@" for %@", debugName2];
  }

  v9 = _MRLogForCategory(0xAuLL);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v25 = v6;
    _os_log_impl(&dword_1A2860000, v9, OS_LOG_TYPE_DEFAULT, "Request: %{public}@", buf, 0xCu);
  }

  outputContextDataSource = [(MRAVEndpoint *)self outputContextDataSource];
  [outputContextDataSource volume];
  v12 = v11;

  *&v13 = v12;
  v14 = [MEMORY[0x1E696AD98] numberWithFloat:v13];

  v15 = _MRLogForCategory(0xAuLL);
  v16 = os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);
  if (v14)
  {
    if (v16)
    {
      *&v17 = v12;
      date3 = [MEMORY[0x1E696AD98] numberWithFloat:v17];
      date2 = [MEMORY[0x1E695DF00] date];
      [date2 timeIntervalSinceDate:date];
      *buf = 138544130;
      v25 = @"Endpoint.volume";
      v26 = 2114;
      v27 = uUIDString;
      v28 = 2112;
      v29 = date3;
      v30 = 2048;
      v31 = v20;
      _os_log_impl(&dword_1A2860000, v15, OS_LOG_TYPE_DEFAULT, "Response: %{public}@<%{public}@> returned <%@> in %.4lf seconds", buf, 0x2Au);

LABEL_10:
    }
  }

  else if (v16)
  {
    date3 = [MEMORY[0x1E695DF00] date];
    [date3 timeIntervalSinceDate:date];
    *buf = 138543874;
    v25 = @"Endpoint.volume";
    v26 = 2114;
    v27 = uUIDString;
    v28 = 2048;
    v29 = v21;
    _os_log_impl(&dword_1A2860000, v15, OS_LOG_TYPE_DEFAULT, "Response: %{public}@<%{public}@> returned in %.4lf seconds", buf, 0x20u);
    goto LABEL_10;
  }

  v22 = *MEMORY[0x1E69E9840];
  return v12;
}

- (BOOL)groupContainsDiscoverableGroupLeader
{
  designatedGroupLeader = [(MRAVEndpoint *)self designatedGroupLeader];
  isAirPlayReceiverSessionActive = [designatedGroupLeader isAirPlayReceiverSessionActive];

  designatedGroupLeader2 = [(MRAVEndpoint *)self designatedGroupLeader];
  v6 = designatedGroupLeader2;
  if (isAirPlayReceiverSessionActive)
  {
    parentGroupContainsDiscoverableLeader = [designatedGroupLeader2 parentGroupContainsDiscoverableLeader];
  }

  else
  {
    parentGroupContainsDiscoverableLeader = [designatedGroupLeader2 groupContainsGroupLeader];
  }

  v8 = parentGroupContainsDiscoverableLeader;

  return v8;
}

- (unsigned)volumeCapabilities
{
  outputContextDataSource = [(MRAVEndpoint *)self outputContextDataSource];
  v5 = 0;
  v3 = [outputContextDataSource volumeControlCapabilitiesForOutputDeviceUID:0 error:&v5];

  return v3;
}

- (BOOL)isConnected
{
  externalDevice = [(MRAVEndpoint *)self externalDevice];
  isConnected = [externalDevice isConnected];

  return isConnected;
}

- (MROrigin)origin
{
  externalDevice = [(MRAVEndpoint *)self externalDevice];
  customOrigin = [externalDevice customOrigin];

  return customOrigin;
}

- (id)debugDescription
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = MEMORY[0x1E696AD60];
  v4 = objc_opt_class();
  v5 = NSStringFromMRAVEndpointConnectionType([(MRAVEndpoint *)selfCopy connectionType]);
  uniqueIdentifier = [(MRAVEndpoint *)selfCopy uniqueIdentifier];
  v7 = [v3 stringWithFormat:@"<%@:%p (%@) uid=%@", v4, selfCopy, v5, uniqueIdentifier];

  outputDevices = [(MRAVEndpoint *)selfCopy outputDevices];
  v9 = [outputDevices count];

  if (v9)
  {
    outputDevices2 = [(MRAVEndpoint *)selfCopy outputDevices];
    mr_formattedDebugDescription = [outputDevices2 mr_formattedDebugDescription];
    [v7 appendFormat:@"  outputDevices = %@\n", mr_formattedDebugDescription];
  }

  personalOutputDevices = [(MRAVEndpoint *)selfCopy personalOutputDevices];
  v13 = [personalOutputDevices count];

  if (v13)
  {
    personalOutputDevices2 = [(MRAVEndpoint *)selfCopy personalOutputDevices];
    mr_formattedDebugDescription2 = [personalOutputDevices2 mr_formattedDebugDescription];
    [v7 appendFormat:@"  personalDevices = %@\n", mr_formattedDebugDescription2];
  }

  outputContextDataSource = selfCopy->_outputContextDataSource;
  if (outputContextDataSource)
  {
    mr_formattedDebugDescription3 = [outputContextDataSource mr_formattedDebugDescription];
    [v7 appendFormat:@"  outputContextDataSource debug= %@\n", mr_formattedDebugDescription3];
  }

  objc_sync_exit(selfCopy);

  return v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    if (self == v5)
    {
      v10 = 1;
    }

    else
    {
      uniqueIdentifier = [(MRAVEndpoint *)self uniqueIdentifier];
      if (uniqueIdentifier)
      {
        uniqueIdentifier2 = [(MRAVEndpoint *)v5 uniqueIdentifier];
        if (uniqueIdentifier2)
        {
          uniqueIdentifier3 = [(MRAVEndpoint *)self uniqueIdentifier];
          uniqueIdentifier4 = [(MRAVEndpoint *)v5 uniqueIdentifier];
          v10 = [uniqueIdentifier3 isEqualToString:uniqueIdentifier4];
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
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (BOOL)isEqualToEndpoint:(id)endpoint
{
  endpointCopy = endpoint;
  if ([(MRAVEndpoint *)self isEqual:endpointCopy])
  {
    descriptor = [(MRAVEndpoint *)self descriptor];
    descriptor2 = [endpointCopy descriptor];
    v7 = [descriptor isEqual:descriptor2];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

MRAVDistantOutputDevice *__35__MRAVEndpoint_syncedOutputDevices__block_invoke_2(uint64_t a1, void *a2)
{
  v21[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [*(a1 + 32) externalDevice];
  v5 = [v4 deviceInfo];

  v6 = [v3 modelID];

  if (v6 || !v5)
  {
    goto LABEL_9;
  }

  v21[0] = v5;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:1];
  v8 = [v5 groupedDevices];
  v9 = v8;
  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = MEMORY[0x1E695E0F0];
  }

  v11 = [v7 arrayByAddingObjectsFromArray:v10];

  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __35__MRAVEndpoint_syncedOutputDevices__block_invoke_3;
  v19[3] = &unk_1E76A2678;
  v12 = v3;
  v20 = v12;
  v13 = [v11 msv_firstWhere:v19];
  v14 = [v13 modelID];

  if (v14)
  {
    v15 = [(MRAVDistantOutputDevice *)v12 descriptor];
    v16 = [v13 modelID];
    [v15 setModelID:v16];

    v12 = [[MRAVDistantOutputDevice alloc] initWithDescriptor:v15];
  }

  if (!v14)
  {
LABEL_9:
    v12 = v3;
  }

  v17 = *MEMORY[0x1E69E9840];

  return v12;
}

uint64_t __35__MRAVEndpoint_syncedOutputDevices__block_invoke_3(uint64_t a1, void *a2)
{
  v3 = [a2 deviceUID];
  v4 = [*(a1 + 32) uid];
  v5 = [v3 isEqualToString:v4];

  return v5;
}

- (NSArray)personalOutputDevices
{
  externalDevice = [(MRAVEndpoint *)self externalDevice];
  personalOutputDevices = [externalDevice personalOutputDevices];

  return personalOutputDevices;
}

- (NSArray)effectiveOutputDevices
{
  v9[1] = *MEMORY[0x1E69E9840];
  predictedOutputDevice = [(MRAVEndpoint *)self predictedOutputDevice];
  v4 = predictedOutputDevice;
  if (predictedOutputDevice)
  {
    v9[0] = predictedOutputDevice;
    outputDevices = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:1];
  }

  else
  {
    outputDevices = [(MRAVEndpoint *)self outputDevices];
  }

  v6 = outputDevices;

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

- (unint64_t)logicalOutputDeviceCount
{
  v23 = *MEMORY[0x1E69E9840];
  outputDevices = [(MRAVEndpoint *)self outputDevices];
  v3 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithCapacity:{objc_msgSend(outputDevices, "count")}];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v4 = outputDevices;
  v5 = [v4 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v19;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v19 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v18 + 1) + 8 * i);
        logicalDeviceID = [v9 logicalDeviceID];
        v11 = [logicalDeviceID length];

        if (v11)
        {
          logicalDeviceID2 = [v9 logicalDeviceID];
        }

        else
        {
          v13 = [v9 uid];

          if (!v13)
          {
            continue;
          }

          logicalDeviceID2 = [v9 uid];
        }

        v14 = logicalDeviceID2;
        [v3 addObject:logicalDeviceID2];
      }

      v6 = [v4 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v6);
  }

  v15 = [v3 count];
  v16 = *MEMORY[0x1E69E9840];
  return v15;
}

- (BOOL)groupLeaderIsPlaceholder
{
  if (![(MRAVEndpoint *)self groupContainsDiscoverableGroupLeader])
  {
    return 1;
  }

  designatedGroupLeader = [(MRAVEndpoint *)self designatedGroupLeader];
  designatedGroupLeader2 = [(MRAVEndpoint *)self designatedGroupLeader];
  isGroupLeader = [designatedGroupLeader2 isGroupLeader];

  if (isGroupLeader)
  {
    outputDevices = [(MRAVEndpoint *)self outputDevices];
    firstObject = [outputDevices firstObject];
    groupID = [firstObject groupID];
    v9 = MRComputeBaseGroupID(groupID);

    airPlayGroupID = [designatedGroupLeader airPlayGroupID];
    v11 = MRComputeBaseGroupID(airPlayGroupID);

    v12 = v11 && v9 && ![v9 isEqualToString:v11];
  }

  else
  {
    v12 = 1;
  }

  return v12;
}

- (MRAVOutputDevice)designatedProxyGroupLeader
{
  designatedGroupLeader = [(MRAVEndpoint *)self designatedGroupLeader];
  v4 = [designatedGroupLeader uid];
  v5 = [(MRAVEndpoint *)self containsOutputDeviceWithUID:v4];

  firstObject = designatedGroupLeader;
  if (!v5)
  {
    outputDevices = [(MRAVEndpoint *)self outputDevices];
    v8 = [outputDevices sortedArrayUsingComparator:&__block_literal_global_127];
    firstObject = [v8 firstObject];
  }

  return firstObject;
}

uint64_t __42__MRAVEndpoint_designatedProxyGroupLeader__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 uid];
  v6 = [v4 uid];

  v7 = [v5 compare:v6];
  return v7;
}

- (NSString)uniqueIdentifier
{
  v2 = MEMORY[0x1E695DF30];
  v3 = *MEMORY[0x1E695D930];
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s is abstract", "-[MRAVEndpoint uniqueIdentifier]"];
  v5 = [v2 exceptionWithName:v3 reason:v4 userInfo:0];
  v6 = v5;

  objc_exception_throw(v5);
}

- (BOOL)canStartNativePlayback
{
  if ([(MRAVEndpoint *)self isLocalEndpoint])
  {
    return 1;
  }

  designatedGroupLeader = [(MRAVEndpoint *)self designatedGroupLeader];
  groupSessionInfo = [designatedGroupLeader groupSessionInfo];

  if (groupSessionInfo || [(MRAVEndpoint *)self isCompanionEndpoint])
  {
    v3 = 1;
  }

  else
  {
    deviceInfo = [(MRAVEndpoint *)self deviceInfo];
    deviceUID = [deviceInfo deviceUID];

    v3 = deviceUID != 0;
  }

  return v3;
}

- (BOOL)isProxyGroupPlayer
{
  designatedGroupLeader = [(MRAVEndpoint *)self designatedGroupLeader];
  if (!designatedGroupLeader)
  {
    deviceInfo = [(MRAVEndpoint *)self deviceInfo];
    resolvedOutputDevices = deviceInfo;
    if (deviceInfo)
    {
      isProxyGroupPlayer = [deviceInfo isProxyGroupPlayer];
    }

    else
    {
      isProxyGroupPlayer = 0;
    }

    goto LABEL_10;
  }

  if ([(MRAVEndpoint *)self groupContainsDiscoverableGroupLeader])
  {
    if ([designatedGroupLeader supportsMultiplayer])
    {
      resolvedOutputDevices = [(MRAVEndpoint *)self resolvedOutputDevices];
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __34__MRAVEndpoint_isProxyGroupPlayer__block_invoke;
      v9[3] = &unk_1E769CDC0;
      v10 = designatedGroupLeader;
      v5 = [resolvedOutputDevices msv_firstWhere:v9];
      isProxyGroupPlayer = v5 == 0;

LABEL_10:
      goto LABEL_11;
    }

    isProxyGroupPlayer = [designatedGroupLeader isProxyGroupPlayer];
  }

  else
  {
    isProxyGroupPlayer = 0;
  }

LABEL_11:

  return isProxyGroupPlayer;
}

uint64_t __34__MRAVEndpoint_isProxyGroupPlayer__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 uid];
  v5 = [v3 containsUID:v4];

  return v5;
}

- (BOOL)isVisualProxyGroupPlayer
{
  supportsVisualProxyGroupPlayer = [(MRAVEndpoint *)self supportsVisualProxyGroupPlayer];
  if (supportsVisualProxyGroupPlayer)
  {

    LOBYTE(supportsVisualProxyGroupPlayer) = [(MRAVEndpoint *)self isProxyGroupPlayer];
  }

  return supportsVisualProxyGroupPlayer;
}

- (BOOL)supportsVisualProxyGroupPlayer
{
  if ([(MRAVEndpoint *)self isLocalEndpoint])
  {
    LOBYTE(v3) = 1;
  }

  else
  {
    deviceInfo = [(MRAVEndpoint *)self deviceInfo];
    if (!deviceInfo)
    {
      goto LABEL_5;
    }

    v5 = deviceInfo;
    deviceInfo2 = [(MRAVEndpoint *)self deviceInfo];
    deviceUID = [deviceInfo2 deviceUID];

    if (!deviceUID)
    {
      LOBYTE(v3) = 0;
    }

    else
    {
LABEL_5:
      designatedGroupLeader = [(MRAVEndpoint *)self designatedGroupLeader];
      v9 = designatedGroupLeader;
      if (designatedGroupLeader)
      {
        v3 = [designatedGroupLeader supportsMultiplayer] ^ 1;
      }

      else
      {
        LOBYTE(v3) = 0;
      }
    }
  }

  return v3;
}

- (NSString)shortDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromMRAVEndpointConnectionType([(MRAVEndpoint *)self connectionType]);
  uniqueIdentifier = [(MRAVEndpoint *)self uniqueIdentifier];
  designatedGroupLeader = [(MRAVEndpoint *)self designatedGroupLeader];
  name = [designatedGroupLeader name];
  v9 = [v3 stringWithFormat:@"<%@: %p (%@) uid=%@ leader=%@>", v4, self, v5, uniqueIdentifier, name];

  return v9;
}

- (NSDictionary)jsonEncodableDictionaryRepresentation
{
  v14[2] = *MEMORY[0x1E69E9840];
  v13[0] = @"uid";
  uniqueIdentifier = [(MRAVEndpoint *)self uniqueIdentifier];
  v4 = uniqueIdentifier;
  if (uniqueIdentifier)
  {
    v5 = uniqueIdentifier;
  }

  else
  {
    v5 = &stru_1F1513E38;
  }

  v13[1] = @"output-devices";
  v14[0] = v5;
  outputDevices = [(MRAVEndpoint *)self outputDevices];
  v7 = [outputDevices valueForKey:@"jsonEncodableDictionaryRepresentation"];
  v8 = v7;
  v9 = MEMORY[0x1E695E0F0];
  if (v7)
  {
    v9 = v7;
  }

  v14[1] = v9;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:2];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

- (BOOL)isGroupable
{
  outputDevices = [(MRAVEndpoint *)self outputDevices];
  v3 = [outputDevices msv_firstWhere:&__block_literal_global_166];
  v4 = v3 == 0;

  return v4;
}

- (id)_externalOutputContext
{
  externalDevice = [(MRAVEndpoint *)self externalDevice];
  externalOutputContext = [externalDevice externalOutputContext];

  return externalOutputContext;
}

- (MRGroupSessionInfo)groupSessionInfo
{
  designatedGroupLeader = [(MRAVEndpoint *)self designatedGroupLeader];
  groupSessionInfo = [designatedGroupLeader groupSessionInfo];

  return groupSessionInfo;
}

- (MRDeviceInfo)deviceInfo
{
  externalDevice = [(MRAVEndpoint *)self externalDevice];
  deviceInfo = [externalDevice deviceInfo];

  return deviceInfo;
}

- (BOOL)discoveredIsPlaying
{
  discoveredOutputDevices = [(MRAVEndpoint *)self discoveredOutputDevices];
  firstObject = [discoveredOutputDevices firstObject];
  discoveredDeviceIsPlaying = [firstObject discoveredDeviceIsPlaying];

  return discoveredDeviceIsPlaying;
}

- (BOOL)isMyGroupLeader
{
  designatedGroupLeader = [(MRAVEndpoint *)self designatedGroupLeader];
  v4 = designatedGroupLeader;
  if (designatedGroupLeader && ([designatedGroupLeader isPrimaryLocalDevice] & 1) == 0)
  {
    outputDevices = [(MRAVEndpoint *)self outputDevices];
    v7 = [outputDevices msv_firstWhere:&__block_literal_global_168_0];
    v5 = v7 != 0;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)isMyDiscoverableUndiscoverableGroupLeader
{
  if ([(MRAVEndpoint *)self isLocalEndpoint]|| [(MRAVEndpoint *)self isCompanionEndpoint]|| ![(MRAVEndpoint *)self isMyGroupLeader])
  {
    return 0;
  }

  designatedGroupLeader = [(MRAVEndpoint *)self designatedGroupLeader];
  v4 = [designatedGroupLeader deviceSubtype] == 19;

  return v4;
}

- (BOOL)isGroupLeaderGroupable
{
  groupContainsDiscoverableGroupLeader = [(MRAVEndpoint *)self groupContainsDiscoverableGroupLeader];
  if (groupContainsDiscoverableGroupLeader)
  {
    designatedGroupLeader = [(MRAVEndpoint *)self designatedGroupLeader];
    isGroupable = [designatedGroupLeader isGroupable];

    LOBYTE(groupContainsDiscoverableGroupLeader) = isGroupable;
  }

  return groupContainsDiscoverableGroupLeader;
}

- (void)connectToExternalDeviceWithOptions:(unsigned int)options userInfo:(id)info completion:(id)completion
{
  infoCopy = info;
  completionCopy = completion;
  v10 = [infoCopy objectForKeyedSubscript:@"MREndpointConnectionReasonUserInfoKey"];
  v11 = v10;
  if (v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = [infoCopy objectForKeyedSubscript:@"MRExternalDeviceConnectionReasonUserInfoKey"];
  }

  v13 = v12;

  v14 = [infoCopy objectForKeyedSubscript:@"MREndpointConnectionCorrelationIDUserInfoKey"];
  v15 = v14;
  if (v14)
  {
    uUIDString = v14;
  }

  else
  {
    v17 = [infoCopy objectForKeyedSubscript:@"MRExternalDeviceConnectionCorrelationIDUserInfoKey"];
    v18 = v17;
    if (v17)
    {
      uUIDString = v17;
    }

    else
    {
      [MEMORY[0x1E696AFB0] UUID];
      v20 = v19 = options;
      uUIDString = [v20 UUIDString];

      options = v19;
    }
  }

  v37[0] = MEMORY[0x1E69E9820];
  v37[1] = 3221225472;
  v37[2] = __71__MRAVEndpoint_connectToExternalDeviceWithOptions_userInfo_completion___block_invoke;
  v37[3] = &unk_1E769AD80;
  v21 = completionCopy;
  v38 = v21;
  v22 = MEMORY[0x1A58E3570](v37);
  externalDevice = [(MRAVEndpoint *)self externalDevice];
  if (externalDevice)
  {
    optionsCopy = options;
    if (!v13)
    {
      v13 = @"MRAVEndpoint";
    }

    v24 = objc_alloc_init(MEMORY[0x1E695DF90]);
    [v24 setObject:v13 forKeyedSubscript:@"MRExternalDeviceConnectionReasonUserInfoKey"];
    [v24 setObject:uUIDString forKeyedSubscript:@"MRExternalDeviceConnectionCorrelationIDUserInfoKey"];
    v25 = [infoCopy objectForKeyedSubscript:@"MRExternalDeviceConnectionClientBundleIDUserInfoKey"];
    if (v25)
    {
      [v24 setObject:v25 forKeyedSubscript:@"MRExternalDeviceConnectionClientBundleIDUserInfoKey"];
    }

    else
    {
      [MEMORY[0x1E696AAE8] mainBundle];
      v30 = v32 = v21;
      bundleIdentifier = [v30 bundleIdentifier];
      [v24 setObject:bundleIdentifier forKeyedSubscript:@"MRExternalDeviceConnectionClientBundleIDUserInfoKey"];

      v21 = v32;
    }

    [externalDevice connectWithOptions:optionsCopy userInfo:v24 completion:v22];
  }

  else
  {
    v26 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithMRError:100 description:@"Cannot connect to external device. This endpoint doesn't have a usable pipe."];
    v27 = qos_class_self();
    dispatch_get_global_queue(v27, 0);
    v29 = v28 = v21;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __71__MRAVEndpoint_connectToExternalDeviceWithOptions_userInfo_completion___block_invoke_2;
    block[3] = &unk_1E769AB28;
    v35 = v26;
    v36 = v22;
    v24 = v26;
    dispatch_async(v29, block);

    v21 = v28;
  }
}

uint64_t __71__MRAVEndpoint_connectToExternalDeviceWithOptions_userInfo_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

+ (void)connectToEndpointContainingOutputDeviceUID:(id)d options:(unsigned int)options details:(id)details completion:(id)completion
{
  v43 = *MEMORY[0x1E69E9840];
  dCopy = d;
  detailsCopy = details;
  completionCopy = completion;
  if (!detailsCopy)
  {
    +[MRAVEndpoint connectToEndpointContainingOutputDeviceUID:options:details:completion:];
  }

  v11 = [MEMORY[0x1E695DF00] now];
  v12 = objc_alloc(MEMORY[0x1E696AD60]);
  requestID = [detailsCopy requestID];
  v14 = [v12 initWithFormat:@"%@<%@>", @"connectToEndpointWithOutputDeviceUID", requestID];

  if (dCopy)
  {
    [v14 appendFormat:@" for %@", dCopy];
  }

  reason = [detailsCopy reason];

  if (reason)
  {
    reason2 = [detailsCopy reason];
    [v14 appendFormat:@" because %@", reason2];
  }

  v17 = _MRLogForCategory(0xAuLL);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v42 = v14;
    _os_log_impl(&dword_1A2860000, v17, OS_LOG_TYPE_DEFAULT, "Request: %{public}@", buf, 0xCu);
  }

  v36[0] = MEMORY[0x1E69E9820];
  v36[1] = 3221225472;
  v36[2] = __86__MRAVEndpoint_connectToEndpointContainingOutputDeviceUID_options_details_completion___block_invoke;
  v36[3] = &unk_1E76A2708;
  v37 = dCopy;
  v18 = detailsCopy;
  v38 = v18;
  v39 = v11;
  v40 = completionCopy;
  v19 = completionCopy;
  v20 = v11;
  v21 = dCopy;
  v22 = MEMORY[0x1A58E3570](v36);
  v23 = objc_alloc_init(MRAVLightweightReconnaissanceSession);
  v24 = +[MRUserSettings currentSettings];
  [v24 discoverEndpointTimeoutInterval];
  v26 = v25;
  requestReasonID = [v18 requestReasonID];
  v28 = qos_class_self();
  v29 = dispatch_get_global_queue(v28, 0);
  v33[0] = MEMORY[0x1E69E9820];
  v33[1] = 3221225472;
  v33[2] = __86__MRAVEndpoint_connectToEndpointContainingOutputDeviceUID_options_details_completion___block_invoke_206;
  v33[3] = &unk_1E769C360;
  v34 = v18;
  v35 = v22;
  v30 = v22;
  v31 = v18;
  [(MRAVLightweightReconnaissanceSession *)v23 searchEndpointsForOutputDeviceUID:v21 timeout:requestReasonID reason:v29 queue:v33 completion:v26];

  v32 = *MEMORY[0x1E69E9840];
}

void __86__MRAVEndpoint_connectToEndpointContainingOutputDeviceUID_options_details_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v42 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (!v6)
  {
    v14 = [v5 debugName];

    v15 = *(a1 + 32);
    v8 = _MRLogForCategory(0xAuLL);
    v16 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
    if (v14)
    {
      if (v15)
      {
        if (!v16)
        {
          goto LABEL_21;
        }

        v10 = [*(a1 + 40) requestID];
        v12 = [v5 debugName];
        v17 = *(a1 + 32);
        v18 = [MEMORY[0x1E695DF00] date];
        [v18 timeIntervalSinceDate:*(a1 + 48)];
        v32 = 138544386;
        v33 = @"connectToEndpointWithOutputDeviceUID";
        v34 = 2114;
        v35 = v10;
        v36 = 2112;
        v37 = v12;
        v38 = 2114;
        v39 = v17;
        v40 = 2048;
        v41 = v19;
        v20 = "Response: %{public}@<%{public}@> returned <%@> for %{public}@ in %.4lf seconds";
        v21 = v8;
        v22 = 52;
      }

      else
      {
        if (!v16)
        {
          goto LABEL_21;
        }

        v10 = [*(a1 + 40) requestID];
        v12 = [v5 debugName];
        v18 = [MEMORY[0x1E695DF00] date];
        [v18 timeIntervalSinceDate:*(a1 + 48)];
        v32 = 138544130;
        v33 = @"connectToEndpointWithOutputDeviceUID";
        v34 = 2114;
        v35 = v10;
        v36 = 2112;
        v37 = v12;
        v38 = 2048;
        v39 = v28;
        v20 = "Response: %{public}@<%{public}@> returned <%@> in %.4lf seconds";
        v21 = v8;
        v22 = 42;
      }

      _os_log_impl(&dword_1A2860000, v21, OS_LOG_TYPE_DEFAULT, v20, &v32, v22);
    }

    else
    {
      if (v15)
      {
        if (!v16)
        {
          goto LABEL_21;
        }

        v10 = [*(a1 + 40) requestID];
        v23 = *(a1 + 32);
        v12 = [MEMORY[0x1E695DF00] date];
        [v12 timeIntervalSinceDate:*(a1 + 48)];
        v32 = 138544130;
        v33 = @"connectToEndpointWithOutputDeviceUID";
        v34 = 2114;
        v35 = v10;
        v36 = 2114;
        v37 = v23;
        v38 = 2048;
        v39 = v24;
        v25 = "Response: %{public}@<%{public}@> returned for %{public}@ in %.4lf seconds";
        v26 = v8;
        v27 = 42;
      }

      else
      {
        if (!v16)
        {
          goto LABEL_21;
        }

        v10 = [*(a1 + 40) requestID];
        v12 = [MEMORY[0x1E695DF00] date];
        [v12 timeIntervalSinceDate:*(a1 + 48)];
        v32 = 138543874;
        v33 = @"connectToEndpointWithOutputDeviceUID";
        v34 = 2114;
        v35 = v10;
        v36 = 2048;
        v37 = v29;
        v25 = "Response: %{public}@<%{public}@> returned in %.4lf seconds";
        v26 = v8;
        v27 = 32;
      }

      _os_log_impl(&dword_1A2860000, v26, OS_LOG_TYPE_DEFAULT, v25, &v32, v27);
    }

    goto LABEL_20;
  }

  v7 = *(a1 + 32);
  v8 = _MRLogForCategory(0xAuLL);
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_ERROR);
  if (v7)
  {
    if (!v9)
    {
      goto LABEL_21;
    }

    v10 = [*(a1 + 40) requestID];
    v11 = *(a1 + 32);
    v12 = [MEMORY[0x1E695DF00] date];
    [v12 timeIntervalSinceDate:*(a1 + 48)];
    v32 = 138544386;
    v33 = @"connectToEndpointWithOutputDeviceUID";
    v34 = 2114;
    v35 = v10;
    v36 = 2114;
    v37 = v6;
    v38 = 2114;
    v39 = v11;
    v40 = 2048;
    v41 = v13;
    _os_log_error_impl(&dword_1A2860000, v8, OS_LOG_TYPE_ERROR, "Response: %{public}@<%{public}@> returned with error <%{public}@> for %{public}@ in %.4lf seconds", &v32, 0x34u);
LABEL_20:

    goto LABEL_21;
  }

  if (v9)
  {
    __86__MRAVEndpoint_connectToEndpointContainingOutputDeviceUID_options_details_completion___block_invoke_cold_1(a1, v6, v8);
  }

LABEL_21:

  v30 = *(a1 + 56);
  if (v30)
  {
    (*(v30 + 16))(v30, v5, v6);
  }

  v31 = *MEMORY[0x1E69E9840];
}

void __86__MRAVEndpoint_connectToEndpointContainingOutputDeviceUID_options_details_completion___block_invoke_206(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __86__MRAVEndpoint_connectToEndpointContainingOutputDeviceUID_options_details_completion___block_invoke_2;
    v5[3] = &unk_1E769AB50;
    v4 = *(a1 + 32);
    v7 = *(a1 + 40);
    v6 = v3;
    [v6 connectToExternalDeviceWithOptions:0 details:v4 completion:v5];
  }

  else
  {
    (*(*(a1 + 40) + 16))();
  }
}

- (void)migrateToOrAddOutputDevices:(id)devices initiator:(id)initiator withReplyQueue:(id)queue completion:(id)completion
{
  v73 = *MEMORY[0x1E69E9840];
  devicesCopy = devices;
  initiatorCopy = initiator;
  queueCopy = queue;
  completionCopy = completion;
  if (!queueCopy)
  {
    queueCopy = MEMORY[0x1E69E96A0];
    v14 = MEMORY[0x1E69E96A0];
  }

  v15 = objc_alloc_init(MRPlaybackSessionMigrateRequest);
  [(MRPlaybackSessionMigrateRequest *)v15 setInitiator:@"routePicker"];
  date = [MEMORY[0x1E695DF00] date];
  requestID = [(MRPlaybackSessionMigrateRequest *)v15 requestID];
  v50 = initiatorCopy;
  v45 = [(MRAVEndpoint *)self _initiatorStringWithInitiator:initiatorCopy uid:requestID];
  v18 = objc_alloc(MEMORY[0x1E696AEC0]);
  selfCopy = self;
  debugName = [(MRAVEndpoint *)self debugName];
  v46 = devicesCopy;
  v20 = MRAVOutputDeviceArrayDescription(devicesCopy);
  v21 = [v18 initWithFormat:@"source=%@ destination=%@", debugName, v20];

  v22 = [objc_alloc(MEMORY[0x1E696AD60]) initWithFormat:@"%@<%@>", @"migrateToOrAddOutputDevices", requestID];
  v23 = v22;
  if (v21)
  {
    [(__CFString *)v22 appendFormat:@" for %@", v21];
  }

  v24 = _MRLogForCategory(0xAuLL);
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v68 = v23;
    _os_log_impl(&dword_1A2860000, v24, OS_LOG_TYPE_DEFAULT, "Request: %{public}@", buf, 0xCu);
  }

  v59[0] = MEMORY[0x1E69E9820];
  v59[1] = 3221225472;
  v59[2] = __80__MRAVEndpoint_migrateToOrAddOutputDevices_initiator_withReplyQueue_completion___block_invoke;
  v59[3] = &unk_1E76A2730;
  v60 = v21;
  v61 = @"migrateToOrAddOutputDevices";
  v25 = requestID;
  v62 = v25;
  v63 = date;
  v26 = v15;
  v64 = v26;
  v66 = completionCopy;
  v27 = queueCopy;
  v65 = v27;
  v49 = completionCopy;
  v48 = date;
  v47 = v21;
  v28 = MEMORY[0x1A58E3570](v59);
  v52[0] = MEMORY[0x1E69E9820];
  v52[1] = 3221225472;
  v52[2] = __80__MRAVEndpoint_migrateToOrAddOutputDevices_initiator_withReplyQueue_completion___block_invoke_2;
  v52[3] = &unk_1E76A2758;
  v29 = v26;
  v53 = v29;
  v54 = selfCopy;
  v30 = v46;
  v55 = v30;
  v56 = v45;
  v31 = v27;
  v57 = v31;
  v32 = v28;
  v58 = v32;
  v33 = v45;
  v34 = MEMORY[0x1A58E3570](v52);
  v35 = MRMediaRemoteCopyDeviceUID();

  if (v35)
  {
    v36 = _MRLogForCategory(0xAuLL);
    v37 = v50;
    if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543874;
      v68 = @"migrateToOrAddOutputDevices";
      v69 = 2114;
      v70 = v25;
      v71 = 2112;
      v72 = @"Not attempting to migrate because local device is groupable...";
      _os_log_impl(&dword_1A2860000, v36, OS_LOG_TYPE_DEFAULT, "Update: %{public}@<%{public}@> %@", buf, 0x20u);
    }

    v38 = v29;
    v39 = 1;
LABEL_19:
    [(MRPlaybackSessionMigrateRequest *)v38 setFallbackReason:v39];
    v34[2](v34);
    goto LABEL_20;
  }

  if (!MRGroupSessionAllowsMigrationForEndpoint(selfCopy))
  {
    v43 = _MRLogForCategory(0xAuLL);
    v37 = v50;
    if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543874;
      v68 = @"migrateToOrAddOutputDevices";
      v69 = 2114;
      v70 = v25;
      v71 = 2112;
      v72 = @"Not attempting to migrate because endpoint is migration-restricted group session endpoint";
      _os_log_impl(&dword_1A2860000, v43, OS_LOG_TYPE_DEFAULT, "Update: %{public}@<%{public}@> %@", buf, 0x20u);
    }

    v38 = v29;
    v39 = 15;
    goto LABEL_19;
  }

  v40 = [v30 mr_filter:&__block_literal_global_226];
  v41 = [v40 count];

  if (v41)
  {
    v42 = _MRLogForCategory(0xAuLL);
    if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543874;
      v68 = @"migrateToOrAddOutputDevices";
      v69 = 2114;
      v70 = v25;
      v71 = 2112;
      v72 = @"Not attempting to migrate because device doesn't support migration..";
      _os_log_impl(&dword_1A2860000, v42, OS_LOG_TYPE_DEFAULT, "Update: %{public}@<%{public}@> %@", buf, 0x20u);
    }

    [(MRPlaybackSessionMigrateRequest *)v29 setFallbackReason:3];
    v34[2](v34);
    v37 = v50;
  }

  else
  {
    [(MRPlaybackSessionMigrateRequest *)v29 setEndpointOptions:[(MRPlaybackSessionMigrateRequest *)v29 endpointOptions]| 2];
    [(MRPlaybackSessionMigrateRequest *)v29 setEndpointOptions:[(MRPlaybackSessionMigrateRequest *)v29 endpointOptions]& 0xFFFFFFFFFFFFFFFBLL];
    [(MRPlaybackSessionMigrateRequest *)v29 setEndpointOptions:[(MRPlaybackSessionMigrateRequest *)v29 endpointOptions]| 8];
    -[MRPlaybackSessionMigrateRequest setEndpointOptions:](v29, "setEndpointOptions:", -[MRPlaybackSessionMigrateRequest endpointOptions](v29, "endpointOptions") & 0xFFFFFFFFFFFFFFEFLL | (16 * ([v30 count] > 1)));
    [(MRPlaybackSessionMigrateRequest *)v29 setEndpointOptions:[(MRPlaybackSessionMigrateRequest *)v29 endpointOptions]& 0xFFFFFFFFFFFFFFDFLL];
    [(MRPlaybackSessionMigrateRequest *)v29 setEndpointOptions:[(MRPlaybackSessionMigrateRequest *)v29 endpointOptions]& 0xFFFFFFFFFFFFFFBFLL];
    v37 = v50;
    [(MRAVEndpoint *)selfCopy migrateToOutputDevices:v30 request:v29 initiator:v50 queue:v31 completion:v32];
  }

LABEL_20:

  v44 = *MEMORY[0x1E69E9840];
}

void __80__MRAVEndpoint_migrateToOrAddOutputDevices_initiator_withReplyQueue_completion___block_invoke(uint64_t a1, void *a2)
{
  v39 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = _MRLogForCategory(0xAuLL);
  v6 = v5;
  if (!v3)
  {
    v13 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
    if (v4)
    {
      if (!v13)
      {
        goto LABEL_14;
      }

      v15 = *(a1 + 40);
      v14 = *(a1 + 48);
      v16 = *(a1 + 32);
      v11 = [MEMORY[0x1E695DF00] date];
      [v11 timeIntervalSinceDate:*(a1 + 56)];
      *buf = 138544130;
      v30 = v15;
      v31 = 2114;
      v32 = v14;
      v33 = 2114;
      v34 = v16;
      v35 = 2048;
      v36 = v17;
      v18 = "Response: %{public}@<%{public}@> returned for %{public}@ in %.4lf seconds";
      v19 = v6;
      v20 = 42;
    }

    else
    {
      if (!v13)
      {
        goto LABEL_14;
      }

      v21 = *(a1 + 40);
      v22 = *(a1 + 48);
      v11 = [MEMORY[0x1E695DF00] date];
      [v11 timeIntervalSinceDate:*(a1 + 56)];
      *buf = 138543874;
      v30 = v21;
      v31 = 2114;
      v32 = v22;
      v33 = 2048;
      v34 = v23;
      v18 = "Response: %{public}@<%{public}@> returned in %.4lf seconds";
      v19 = v6;
      v20 = 32;
    }

    _os_log_impl(&dword_1A2860000, v19, OS_LOG_TYPE_DEFAULT, v18, buf, v20);
    goto LABEL_13;
  }

  v7 = os_log_type_enabled(v5, OS_LOG_TYPE_ERROR);
  if (v4)
  {
    if (!v7)
    {
      goto LABEL_14;
    }

    v9 = *(a1 + 40);
    v8 = *(a1 + 48);
    v10 = *(a1 + 32);
    v11 = [MEMORY[0x1E695DF00] date];
    [v11 timeIntervalSinceDate:*(a1 + 56)];
    *buf = 138544386;
    v30 = v9;
    v31 = 2114;
    v32 = v8;
    v33 = 2114;
    v34 = v3;
    v35 = 2114;
    v36 = v10;
    v37 = 2048;
    v38 = v12;
    _os_log_error_impl(&dword_1A2860000, v6, OS_LOG_TYPE_ERROR, "Response: %{public}@<%{public}@> returned with error <%{public}@> for %{public}@ in %.4lf seconds", buf, 0x34u);
LABEL_13:

    goto LABEL_14;
  }

  if (v7)
  {
    __86__MRV2NowPlayingController__loadNowPlayingStateForConfiguration_requestID_completion___block_invoke_53_cold_1(a1, v3, v6);
  }

LABEL_14:

  [*(a1 + 64) finalizeWithCompletion:0];
  v24 = *(a1 + 80);
  if (v24)
  {
    v25 = *(a1 + 72);
    v28 = v24;
    v27 = v3;
    msv_dispatch_async_on_queue();
  }

  v26 = *MEMORY[0x1E69E9840];
}

void __80__MRAVEndpoint_migrateToOrAddOutputDevices_initiator_withReplyQueue_completion___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) startEvent:@"AddOutputDevices" role:1];
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  v6 = *(a1 + 64);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __80__MRAVEndpoint_migrateToOrAddOutputDevices_initiator_withReplyQueue_completion___block_invoke_3;
  v7[3] = &unk_1E769D978;
  v8 = *(a1 + 32);
  v10 = v2;
  v9 = *(a1 + 72);
  [v3 addOutputDevices:v4 initiator:v5 withReplyQueue:v6 completion:v7];
}

void __80__MRAVEndpoint_migrateToOrAddOutputDevices_initiator_withReplyQueue_completion___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 48);
  v5 = a2;
  [v3 endEventWithID:v4 error:v5];
  (*(*(a1 + 40) + 16))();
}

void __80__MRAVEndpoint_migrateToOrSetOutputDevices_initiator_withReplyQueue_completion___block_invoke(uint64_t a1, void *a2)
{
  v39 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = _MRLogForCategory(0xAuLL);
  v6 = v5;
  if (!v3)
  {
    v13 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
    if (v4)
    {
      if (!v13)
      {
        goto LABEL_14;
      }

      v15 = *(a1 + 40);
      v14 = *(a1 + 48);
      v16 = *(a1 + 32);
      v11 = [MEMORY[0x1E695DF00] date];
      [v11 timeIntervalSinceDate:*(a1 + 56)];
      *buf = 138544130;
      v30 = v15;
      v31 = 2114;
      v32 = v14;
      v33 = 2114;
      v34 = v16;
      v35 = 2048;
      v36 = v17;
      v18 = "Response: %{public}@<%{public}@> returned for %{public}@ in %.4lf seconds";
      v19 = v6;
      v20 = 42;
    }

    else
    {
      if (!v13)
      {
        goto LABEL_14;
      }

      v21 = *(a1 + 40);
      v22 = *(a1 + 48);
      v11 = [MEMORY[0x1E695DF00] date];
      [v11 timeIntervalSinceDate:*(a1 + 56)];
      *buf = 138543874;
      v30 = v21;
      v31 = 2114;
      v32 = v22;
      v33 = 2048;
      v34 = v23;
      v18 = "Response: %{public}@<%{public}@> returned in %.4lf seconds";
      v19 = v6;
      v20 = 32;
    }

    _os_log_impl(&dword_1A2860000, v19, OS_LOG_TYPE_DEFAULT, v18, buf, v20);
    goto LABEL_13;
  }

  v7 = os_log_type_enabled(v5, OS_LOG_TYPE_ERROR);
  if (v4)
  {
    if (!v7)
    {
      goto LABEL_14;
    }

    v9 = *(a1 + 40);
    v8 = *(a1 + 48);
    v10 = *(a1 + 32);
    v11 = [MEMORY[0x1E695DF00] date];
    [v11 timeIntervalSinceDate:*(a1 + 56)];
    *buf = 138544386;
    v30 = v9;
    v31 = 2114;
    v32 = v8;
    v33 = 2114;
    v34 = v3;
    v35 = 2114;
    v36 = v10;
    v37 = 2048;
    v38 = v12;
    _os_log_error_impl(&dword_1A2860000, v6, OS_LOG_TYPE_ERROR, "Response: %{public}@<%{public}@> returned with error <%{public}@> for %{public}@ in %.4lf seconds", buf, 0x34u);
LABEL_13:

    goto LABEL_14;
  }

  if (v7)
  {
    __86__MRV2NowPlayingController__loadNowPlayingStateForConfiguration_requestID_completion___block_invoke_53_cold_1(a1, v3, v6);
  }

LABEL_14:

  [*(a1 + 64) finalizeWithCompletion:0];
  v24 = *(a1 + 80);
  if (v24)
  {
    v25 = *(a1 + 72);
    v28 = v24;
    v27 = v3;
    msv_dispatch_async_on_queue();
  }

  v26 = *MEMORY[0x1E69E9840];
}

void __80__MRAVEndpoint_migrateToOrSetOutputDevices_initiator_withReplyQueue_completion___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) startEvent:@"SetOutputDevices" role:1];
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  v6 = *(a1 + 64);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __80__MRAVEndpoint_migrateToOrSetOutputDevices_initiator_withReplyQueue_completion___block_invoke_3;
  v7[3] = &unk_1E769D978;
  v8 = *(a1 + 32);
  v10 = v2;
  v9 = *(a1 + 72);
  [v3 setOutputDevices:v4 initiator:v5 withReplyQueue:v6 completion:v7];
}

void __80__MRAVEndpoint_migrateToOrSetOutputDevices_initiator_withReplyQueue_completion___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 48);
  v5 = a2;
  [v3 endEventWithID:v4 error:v5];
  (*(*(a1 + 40) + 16))();
}

- (void)migrateToOutputDevice:(id)device request:(id)request initiator:(id)initiator queue:(id)queue completion:(id)completion
{
  v21 = *MEMORY[0x1E69E9840];
  deviceCopy = device;
  v12 = MEMORY[0x1E695DEC8];
  completionCopy = completion;
  queueCopy = queue;
  initiatorCopy = initiator;
  requestCopy = request;
  deviceCopy2 = device;
  v18 = [v12 arrayWithObjects:&deviceCopy count:1];

  [(MRAVEndpoint *)self migrateToOutputDevices:v18 request:requestCopy initiator:initiatorCopy queue:queueCopy completion:completionCopy, deviceCopy, v21];
  v19 = *MEMORY[0x1E69E9840];
}

- (void)migrateToOutputDevices:(id)devices request:(id)request initiator:(id)initiator queue:(id)queue completion:(id)completion
{
  devicesCopy = devices;
  requestCopy = request;
  initiatorCopy = initiator;
  queueCopy = queue;
  completionCopy = completion;
  v16 = +[MRUserSettings currentSettings];
  supportOutOfProcessMigration = [v16 supportOutOfProcessMigration];

  if (supportOutOfProcessMigration)
  {
    v18 = MRGetSharedService();
    if ([(MRAVEndpoint *)self isLocalEndpoint])
    {
      MRMediaRemoteServiceMigrateFromEndpointToOutputDevices(v18, 0, devicesCopy, requestCopy, queueCopy, completionCopy);
    }

    else
    {
      uniqueIdentifier = [(MRAVEndpoint *)self uniqueIdentifier];
      MRMediaRemoteServiceMigrateFromEndpointToOutputDevices(v18, uniqueIdentifier, devicesCopy, requestCopy, queueCopy, completionCopy);
    }
  }

  else
  {
    [(MRAVEndpoint *)self performMigrationToOutputDevices:devicesCopy request:requestCopy initiator:initiatorCopy queue:queueCopy completion:completionCopy];
  }
}

- (void)migrateToEndpoint:(id)endpoint request:(id)request queue:(id)queue completion:(id)completion
{
  endpointCopy = endpoint;
  requestCopy = request;
  queueCopy = queue;
  completionCopy = completion;
  v13 = +[MRUserSettings currentSettings];
  supportOutOfProcessMigration = [v13 supportOutOfProcessMigration];

  if (!supportOutOfProcessMigration)
  {
    [(MRAVEndpoint *)self performMigrationToEndpoint:endpointCopy request:requestCopy queue:queueCopy completion:completionCopy];
    goto LABEL_11;
  }

  v15 = MRGetSharedService();
  isLocalEndpoint = [(MRAVEndpoint *)self isLocalEndpoint];
  if (isLocalEndpoint)
  {
    uniqueIdentifier = 0;
  }

  else
  {
    uniqueIdentifier = [(MRAVEndpoint *)self uniqueIdentifier];
  }

  if (![endpointCopy isLocalEndpoint])
  {
    uniqueIdentifier2 = [endpointCopy uniqueIdentifier];
    MRMediaRemoteServiceMigrateFromEndpointToEndpoint(v15, uniqueIdentifier, uniqueIdentifier2, requestCopy, queueCopy, completionCopy);

    if (isLocalEndpoint)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  MRMediaRemoteServiceMigrateFromEndpointToEndpoint(v15, uniqueIdentifier, 0, requestCopy, queueCopy, completionCopy);
  if (!isLocalEndpoint)
  {
LABEL_10:
  }

LABEL_11:
}

- (void)migrateToEndpointOrModifyTopology:(id)topology migrationRequest:(id)request topologyModificationRequest:(id)modificationRequest withReplyQueue:(id)queue completion:(id)completion
{
  modificationRequestCopy = modificationRequest;
  queueCopy = queue;
  completionCopy = completion;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __121__MRAVEndpoint_migrateToEndpointOrModifyTopology_migrationRequest_topologyModificationRequest_withReplyQueue_completion___block_invoke;
  v18[3] = &unk_1E76A27A8;
  v18[4] = self;
  v19 = modificationRequestCopy;
  v20 = queueCopy;
  v21 = completionCopy;
  v15 = queueCopy;
  v16 = modificationRequestCopy;
  v17 = completionCopy;
  [(MRAVEndpoint *)self migrateToEndpoint:topology request:request queue:v15 completion:v18];
}

uint64_t __121__MRAVEndpoint_migrateToEndpointOrModifyTopology_migrationRequest_topologyModificationRequest_withReplyQueue_completion___block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    return [*(a1 + 32) modifyTopologyWithRequest:*(a1 + 40) withReplyQueue:*(a1 + 48) completion:*(a1 + 56)];
  }

  else
  {
    return (*(*(a1 + 56) + 16))();
  }
}

void __83__MRAVEndpoint_performMigrationToOutputDevices_request_initiator_queue_completion___block_invoke(uint64_t a1, void *a2)
{
  v39 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = _MRLogForCategory(0xAuLL);
  v6 = v5;
  if (!v3)
  {
    v13 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
    if (v4)
    {
      if (!v13)
      {
        goto LABEL_14;
      }

      v15 = *(a1 + 40);
      v14 = *(a1 + 48);
      v16 = *(a1 + 32);
      v11 = [MEMORY[0x1E695DF00] date];
      [v11 timeIntervalSinceDate:*(a1 + 56)];
      *buf = 138544130;
      v30 = v15;
      v31 = 2114;
      v32 = v14;
      v33 = 2114;
      v34 = v16;
      v35 = 2048;
      v36 = v17;
      v18 = "Response: %{public}@<%{public}@> returned for %{public}@ in %.4lf seconds";
      v19 = v6;
      v20 = 42;
    }

    else
    {
      if (!v13)
      {
        goto LABEL_14;
      }

      v21 = *(a1 + 40);
      v22 = *(a1 + 48);
      v11 = [MEMORY[0x1E695DF00] date];
      [v11 timeIntervalSinceDate:*(a1 + 56)];
      *buf = 138543874;
      v30 = v21;
      v31 = 2114;
      v32 = v22;
      v33 = 2048;
      v34 = v23;
      v18 = "Response: %{public}@<%{public}@> returned in %.4lf seconds";
      v19 = v6;
      v20 = 32;
    }

    _os_log_impl(&dword_1A2860000, v19, OS_LOG_TYPE_DEFAULT, v18, buf, v20);
    goto LABEL_13;
  }

  v7 = os_log_type_enabled(v5, OS_LOG_TYPE_ERROR);
  if (v4)
  {
    if (!v7)
    {
      goto LABEL_14;
    }

    v9 = *(a1 + 40);
    v8 = *(a1 + 48);
    v10 = *(a1 + 32);
    v11 = [MEMORY[0x1E695DF00] date];
    [v11 timeIntervalSinceDate:*(a1 + 56)];
    *buf = 138544386;
    v30 = v9;
    v31 = 2114;
    v32 = v8;
    v33 = 2114;
    v34 = v3;
    v35 = 2114;
    v36 = v10;
    v37 = 2048;
    v38 = v12;
    _os_log_error_impl(&dword_1A2860000, v6, OS_LOG_TYPE_ERROR, "Response: %{public}@<%{public}@> returned with error <%{public}@> for %{public}@ in %.4lf seconds", buf, 0x34u);
LABEL_13:

    goto LABEL_14;
  }

  if (v7)
  {
    __86__MRV2NowPlayingController__loadNowPlayingStateForConfiguration_requestID_completion___block_invoke_53_cold_1(a1, v3, v6);
  }

LABEL_14:

  if (!*(a1 + 64))
  {
    [*(a1 + 72) finalizeWithCompletion:0];
  }

  v24 = *(a1 + 88);
  if (v24)
  {
    v25 = *(a1 + 80);
    v28 = v24;
    v27 = v3;
    msv_dispatch_async_on_queue();
  }

  v26 = *MEMORY[0x1E69E9840];
}

void __83__MRAVEndpoint_performMigrationToOutputDevices_request_initiator_queue_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v26 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (([*(a1 + 32) endpointOptions] & 8) != 0)
  {
    v4 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Falling back to addOutputDevices because %@...", v3];
    v5 = _MRLogForCategory(0xAuLL);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 40);
      v7 = *(a1 + 48);
      *buf = 138543874;
      v21 = v6;
      v22 = 2114;
      v23 = v7;
      v24 = 2112;
      v25 = v4;
      _os_log_impl(&dword_1A2860000, v5, OS_LOG_TYPE_DEFAULT, "Update: %{public}@<%{public}@> %@", buf, 0x20u);
    }

    v8 = [*(a1 + 32) startEvent:@"AddOutputDevices" role:1];
    v9 = ([*(a1 + 32) playerOptions] >> 6) & 1;
    v10 = *(a1 + 56);
    v11 = *(a1 + 64);
    v12 = *(a1 + 72);
    v13 = *(a1 + 80);
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __83__MRAVEndpoint_performMigrationToOutputDevices_request_initiator_queue_completion___block_invoke_257;
    v15[3] = &unk_1E76A27F8;
    v16 = *(a1 + 32);
    v19 = v8;
    v17 = *(a1 + 40);
    v18 = *(a1 + 88);
    [v10 addOutputDevices:v11 initiator:v12 fadeAudio:v9 withReplyQueue:v13 completion:v15];
  }

  else
  {
    (*(*(a1 + 88) + 16))();
  }

  v14 = *MEMORY[0x1E69E9840];
}

void __83__MRAVEndpoint_performMigrationToOutputDevices_request_initiator_queue_completion___block_invoke_257(uint64_t a1, void *a2)
{
  v3 = a2;
  [*(a1 + 32) endEventWithID:*(a1 + 56) error:v3];
  if (!v3 && ([*(a1 + 32) playerOptions] & 4) != 0)
  {
    v4 = [*(a1 + 32) startEvent:@"Play" role:1];
    v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v6 = objc_alloc(MEMORY[0x1E696AEC0]);
    v7 = *(a1 + 40);
    v8 = [*(a1 + 32) requestID];
    v9 = [v6 initWithFormat:@"%@<%@>", v7, v8];
    [v5 setObject:v9 forKeyedSubscript:@"kMRMediaRemoteOptionRemoteControlInterfaceIdentifier"];

    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __83__MRAVEndpoint_performMigrationToOutputDevices_request_initiator_queue_completion___block_invoke_2_258;
    v10[3] = &unk_1E769DB80;
    v11 = *(a1 + 32);
    v13 = v4;
    v12 = *(a1 + 48);
    MRMediaRemoteSendCommandToPlayer(0, v5, 0, 0, MEMORY[0x1E69E96A0], v10);
  }

  else
  {
    (*(*(a1 + 48) + 16))();
  }
}

void __83__MRAVEndpoint_performMigrationToOutputDevices_request_initiator_queue_completion___block_invoke_2_258(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = MRMediaRemoteErrorFromCommandStatuses(a2, a3);
  [*(a1 + 32) endEventWithID:*(a1 + 48) error:v4];
  (*(*(a1 + 40) + 16))();
}

void __83__MRAVEndpoint_performMigrationToOutputDevices_request_initiator_queue_completion___block_invoke_3(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __83__MRAVEndpoint_performMigrationToOutputDevices_request_initiator_queue_completion___block_invoke_4;
  v7[3] = &unk_1E76A2848;
  v6 = *(a1 + 48);
  v9 = *(a1 + 56);
  v8 = *(a1 + 40);
  v10 = *(a1 + 64);
  [v4 performMigrationToEndpoint:a2 request:v5 queue:v6 completion:v7];
}

void __83__MRAVEndpoint_performMigrationToOutputDevices_request_initiator_queue_completion___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = v3;
  if (v3)
  {
    [*(a1 + 32) setFallbackReason:{MRPlaybackSessionMigrateFallbackReasonFromMRMediaRemoteError(objc_msgSend(v3, "code"))}];
    v4 = *(*(a1 + 48) + 16);
  }

  else
  {
    v4 = *(*(a1 + 40) + 16);
  }

  v4();
}

void __83__MRAVEndpoint_performMigrationToOutputDevices_request_initiator_queue_completion___block_invoke_5(uint64_t a1, void *a2)
{
  v26 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = _MRLogForCategory(0xAuLL);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = *(a1 + 40);
    *buf = 138543874;
    v21 = v5;
    v22 = 2114;
    v23 = v6;
    v24 = 2112;
    v25 = @"Migrating back to local. Route to selected output device then migrate.";
    _os_log_impl(&dword_1A2860000, v4, OS_LOG_TYPE_DEFAULT, "Update: %{public}@<%{public}@> %@", buf, 0x20u);
  }

  objc_initWeak(buf, v3);
  v7 = [*(a1 + 48) startEvent:@"RouteToDevice" role:1];
  v8 = *(a1 + 56);
  v9 = *(a1 + 64);
  v10 = *(a1 + 72);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __83__MRAVEndpoint_performMigrationToOutputDevices_request_initiator_queue_completion___block_invoke_266;
  v12[3] = &unk_1E76A2898;
  objc_copyWeak(&v18, buf);
  v13 = *(a1 + 48);
  v19 = v7;
  v14 = *(a1 + 32);
  v15 = *(a1 + 40);
  v16 = *(a1 + 80);
  v17 = *(a1 + 88);
  [v3 setOutputDevices:v8 initiator:v9 withReplyQueue:v10 completion:v12];

  objc_destroyWeak(&v18);
  objc_destroyWeak(buf);

  v11 = *MEMORY[0x1E69E9840];
}

void __83__MRAVEndpoint_performMigrationToOutputDevices_request_initiator_queue_completion___block_invoke_266(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 72));
  if (WeakRetained)
  {
    [*(a1 + 32) endEventWithID:*(a1 + 80) error:v3];
    v5 = _MRLogForCategory(0xAuLL);
    v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
    if (v3)
    {
      if (v6)
      {
        v7 = *(a1 + 40);
        v8 = *(a1 + 48);
        v17 = 138543874;
        v18 = v7;
        v19 = 2114;
        v20 = v8;
        v21 = 2112;
        v22 = @"Failed to set route. Cancel migration.";
        _os_log_impl(&dword_1A2860000, v5, OS_LOG_TYPE_DEFAULT, "Update: %{public}@<%{public}@> %@", &v17, 0x20u);
      }

      v9 = *(*(a1 + 56) + 16);
    }

    else
    {
      if (v6)
      {
        v14 = *(a1 + 40);
        v15 = *(a1 + 48);
        v17 = 138543874;
        v18 = v14;
        v19 = 2114;
        v20 = v15;
        v21 = 2112;
        v22 = @"Successfully set route. Begin migration.";
        _os_log_impl(&dword_1A2860000, v5, OS_LOG_TYPE_DEFAULT, "Update: %{public}@<%{public}@> %@", &v17, 0x20u);
      }

      v9 = *(*(a1 + 64) + 16);
    }

    v9();
  }

  else
  {
    v10 = _MRLogForCategory(0xAuLL);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = *(a1 + 40);
      v12 = *(a1 + 48);
      v17 = 138543874;
      v18 = v11;
      v19 = 2114;
      v20 = v12;
      v21 = 2112;
      v22 = @"Failed to set route. Cancel migration.";
      _os_log_impl(&dword_1A2860000, v10, OS_LOG_TYPE_DEFAULT, "Update: %{public}@<%{public}@> %@", &v17, 0x20u);
    }

    v13 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithMRError:118];
    [*(a1 + 32) endEventWithID:*(a1 + 80) error:v3];
    (*(*(a1 + 56) + 16))();
  }

  v16 = *MEMORY[0x1E69E9840];
}

void __83__MRAVEndpoint_performMigrationToOutputDevices_request_initiator_queue_completion___block_invoke_273(id *a1, void *a2)
{
  v3 = a2;
  v4 = [a1[4] startEvent:@"DiscoverDestinationEndpoint" role:1];
  v5 = objc_alloc_init(MRAVLightweightReconnaissanceSession);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __83__MRAVEndpoint_performMigrationToOutputDevices_request_initiator_queue_completion___block_invoke_2_280;
  v9[3] = &unk_1E76A2910;
  v10 = v5;
  v6 = a1[5];
  v11 = a1[4];
  v16 = v4;
  v12 = a1[6];
  v13 = v3;
  v14 = a1[5];
  v15 = a1[7];
  v7 = v3;
  v8 = v5;
  [(MRAVLightweightReconnaissanceSession *)v8 searchEndpointsForLeaderOutputDeviceUID:v7 timeout:@"discoverDestinationEndpoint" reason:v6 queue:v9 completion:7.0];
}

void __83__MRAVEndpoint_performMigrationToOutputDevices_request_initiator_queue_completion___block_invoke_2_280(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 40);
  v6 = *(a1 + 80);
  v7 = *(a1 + 32);
  [v5 endEventWithID:v6 error:a3];
  LODWORD(v5) = [*(a1 + 40) startEvent:@"updateActiveSystemEndpoint" role:1];
  v8 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"migrationPlaybackSession<%@> for Expanse handoff", *(a1 + 48)];
  v9 = *(a1 + 56);
  v10 = *(a1 + 64);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __83__MRAVEndpoint_performMigrationToOutputDevices_request_initiator_queue_completion___block_invoke_3_287;
  v11[3] = &unk_1E76A28E8;
  v12 = *(a1 + 40);
  v14 = v5;
  v13 = *(a1 + 72);
  MRAVEndpointUpdateActiveSystemEndpointForOutputDeviceUIDWithChangeType(v9, 0, 0, v8, v10, v11);
}

void __83__MRAVEndpoint_performMigrationToOutputDevices_request_initiator_queue_completion___block_invoke_3_287(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 48);
  v5 = a2;
  [v3 endEventWithID:v4 error:v5];
  (*(*(a1 + 40) + 16))();
}

void __83__MRAVEndpoint_performMigrationToOutputDevices_request_initiator_queue_completion___block_invoke_4_290(id *a1, void *a2)
{
  v38 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [a1[4] startEvent:@"ExpanseMigration" role:1];
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __83__MRAVEndpoint_performMigrationToOutputDevices_request_initiator_queue_completion___block_invoke_5_294;
  v24[3] = &unk_1E76A2960;
  v25 = a1[4];
  v31 = v4;
  v28 = a1[7];
  v26 = a1[5];
  v5 = v3;
  v27 = v5;
  v29 = a1[8];
  v30 = a1[9];
  v6 = MEMORY[0x1A58E3570](v24);
  [a1[4] setRequestType:3];
  v7 = [a1[6] groupLeader];
  v8 = [v7 containsUID:v5];

  v9 = _MRLogForCategory(0xAuLL);
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
  if (v8)
  {
    if (v10)
    {
      v11 = a1[5];
      *buf = 138543874;
      v33 = v11;
      v34 = 2114;
      v35 = v5;
      v36 = 2112;
      v37 = @"Removing Apple TV from Expanse session.";
      _os_log_impl(&dword_1A2860000, v9, OS_LOG_TYPE_DEFAULT, "Update: %{public}@<%{public}@> %@", buf, 0x20u);
    }

    v12 = +[MRExpanseManager sharedManager];
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __83__MRAVEndpoint_performMigrationToOutputDevices_request_initiator_queue_completion___block_invoke_303;
    v22[3] = &unk_1E769AD80;
    v13 = &v23;
    v23 = v6;
    v14 = v6;
    [v12 removeTelevisionWithRouteIdentifierFromSession:v5 completion:v22];
  }

  else
  {
    if (v10)
    {
      v15 = a1[5];
      *buf = 138543874;
      v33 = v15;
      v34 = 2114;
      v35 = v5;
      v36 = 2112;
      v37 = @"Migrating to Apple TV using Expanse handoff.";
      _os_log_impl(&dword_1A2860000, v9, OS_LOG_TYPE_DEFAULT, "Update: %{public}@<%{public}@> %@", buf, 0x20u);
    }

    v16 = +[MRExpanseManager sharedManager];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __83__MRAVEndpoint_performMigrationToOutputDevices_request_initiator_queue_completion___block_invoke_307;
    v19[3] = &unk_1E769AB50;
    v13 = &v21;
    v21 = v6;
    v20 = v5;
    v17 = v6;
    [v16 addTelevisionWithRouteIdentifierToSession:v20 completion:v19];

    v12 = v20;
  }

  v18 = *MEMORY[0x1E69E9840];
}

void __83__MRAVEndpoint_performMigrationToOutputDevices_request_initiator_queue_completion___block_invoke_5_294(uint64_t a1, void *a2, void *a3)
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  [*(a1 + 32) endEventWithID:*(a1 + 80) error:v6];
  if (v6)
  {
    v7 = [v6 mr_errorByEnvelopingWithMRError:174];
    v8 = +[MRExpanseManager sharedManager];
    v9 = [v8 errorIsTelevisionCapabilitiesError:v6];

    if (v9)
    {
      v10 = _MRLogForCategory(0xAuLL);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v11 = *(a1 + 40);
        v12 = *(a1 + 48);
        v15 = 138543874;
        v16 = v11;
        v17 = 2114;
        v18 = v12;
        v19 = 2112;
        v20 = @"Expanse fallback due to insufficient capabilities.";
        _os_log_impl(&dword_1A2860000, v10, OS_LOG_TYPE_DEFAULT, "Update: %{public}@<%{public}@> %@", &v15, 0x20u);
      }

      [*(a1 + 32) setFallbackReason:14];
      v13 = *(a1 + 64);
    }

    else
    {
      v13 = *(a1 + 72);
    }

    (*(v13 + 16))(v13, v7);
  }

  else
  {
    (*(*(a1 + 56) + 16))();
  }

  v14 = *MEMORY[0x1E69E9840];
}

void __83__MRAVEndpoint_performMigrationToOutputDevices_request_initiator_queue_completion___block_invoke_2_318(uint64_t a1, void *a2)
{
  v35 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (([*(a1 + 32) endpointOptions] & 0x40) == 0 || objc_msgSend(v3, "logicalOutputDeviceCount") < 2)
  {
    if ([v3 isLocalEndpoint])
    {
      v8 = *(a1 + 88);
LABEL_12:
      (*(v8 + 16))(v8, v3);
      goto LABEL_13;
    }

LABEL_11:
    v8 = *(a1 + 72);
    goto LABEL_12;
  }

  v4 = [v3 designatedGroupLeader];
  v5 = [v4 uid];
  v6 = [*(a1 + 40) firstObject];
  v7 = [v6 uid];
  if ([v5 isEqualToString:v7])
  {

LABEL_8:
    v13 = _MRLogForCategory(0xAuLL);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = *(a1 + 48);
      v15 = *(a1 + 56);
      *buf = 138543874;
      v30 = v14;
      v31 = 2114;
      v32 = v15;
      v33 = 2112;
      v34 = @"Migrating to group leader with group break behavior. Will reset output context on destination.";
      _os_log_impl(&dword_1A2860000, v13, OS_LOG_TYPE_DEFAULT, "Update: %{public}@<%{public}@> %@", buf, 0x20u);
    }

    [*(a1 + 32) setEndpointOptions:{objc_msgSend(*(a1 + 32), "endpointOptions") | 4}];
    goto LABEL_11;
  }

  v9 = [v3 designatedGroupLeader];
  v10 = [v9 logicalDeviceID];
  v11 = [*(a1 + 40) firstObject];
  v12 = [v11 logicalDeviceID];
  v23 = [v10 isEqualToString:v12];

  if (v23)
  {
    goto LABEL_8;
  }

  v17 = _MRLogForCategory(0xAuLL);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v18 = *(a1 + 48);
    v19 = *(a1 + 56);
    *buf = 138543874;
    v30 = v18;
    v31 = 2114;
    v32 = v19;
    v33 = 2112;
    v34 = @"Migrating to secondary with group break behavior. Will form endpoint for secondary and migrate.";
    _os_log_impl(&dword_1A2860000, v17, OS_LOG_TYPE_DEFAULT, "Update: %{public}@<%{public}@> %@", buf, 0x20u);
  }

  v20 = [*(a1 + 40) mr_map:&__block_literal_global_327];
  v21 = [*(a1 + 32) startEvent:@"CreateSecondaryEndpoint" role:1];
  v22 = *(a1 + 64);
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __83__MRAVEndpoint_performMigrationToOutputDevices_request_initiator_queue_completion___block_invoke_2_331;
  v24[3] = &unk_1E76A29B0;
  v25 = *(a1 + 32);
  v28 = v21;
  v26 = *(a1 + 72);
  v27 = *(a1 + 80);
  [MRAVEndpoint directEndpointForOutputDeviceUIDs:v20 queue:v22 completion:v24];

LABEL_13:
  v16 = *MEMORY[0x1E69E9840];
}

void __83__MRAVEndpoint_performMigrationToOutputDevices_request_initiator_queue_completion___block_invoke_2_331(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  [*(a1 + 32) endEventWithID:*(a1 + 56) error:v5];
  if (v7)
  {
    v6 = *(*(a1 + 40) + 16);
  }

  else
  {
    [*(a1 + 32) setFallbackReason:12];
    v6 = *(*(a1 + 48) + 16);
  }

  v6();
}

void __83__MRAVEndpoint_performMigrationToOutputDevices_request_initiator_queue_completion___block_invoke_3_332(uint64_t a1, void *a2)
{
  v61 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = _MRLogForCategory(0xAuLL);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = *(a1 + 40);
    *buf = 138543874;
    v56 = v5;
    v57 = 2114;
    v58 = v6;
    v59 = 2112;
    v60 = @"Checking for conversation handoff support.";
    _os_log_impl(&dword_1A2860000, v4, OS_LOG_TYPE_DEFAULT, "Update: %{public}@<%{public}@> %@", buf, 0x20u);
  }

  if (![v3 isLocalEndpoint] || (+[MRExpanseManager sharedManager](MRExpanseManager, "sharedManager"), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "expanseSessionHasRemoteActivity"), v7, !v8))
  {
    if (![*(a1 + 48) isLocalEndpoint])
    {
      goto LABEL_34;
    }

    v31 = +[MRExpanseManager sharedManager];
    if (![(__CFString *)v31 expanseHandoffSupported])
    {
LABEL_33:

      goto LABEL_34;
    }

    v32 = +[MRExpanseManager sharedManager];
    v33 = [v32 expanseSessionHasActiveActivity];

    if (!v33)
    {
LABEL_34:
      (*(*(a1 + 72) + 16))();
      goto LABEL_35;
    }

    v34 = _MRLogForCategory(0xAuLL);
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
    {
      v35 = *(a1 + 32);
      v36 = *(a1 + 40);
      *buf = 138543874;
      v56 = v35;
      v57 = 2114;
      v58 = v36;
      v59 = 2112;
      v60 = @"Evaluating possible conversation push.";
      _os_log_impl(&dword_1A2860000, v34, OS_LOG_TYPE_DEFAULT, "Update: %{public}@<%{public}@> %@", buf, 0x20u);
    }

    v31 = [*(a1 + 56) mr_compactMap:&__block_literal_global_354];
    if (![(__CFString *)v31 count])
    {
      goto LABEL_33;
    }

    if ([*(a1 + 56) count] == 1)
    {
      v37 = +[MRExpanseManager sharedManager];
      v38 = [(__CFString *)v31 firstObject];
      v39 = [v37 canAddTelevisionWithRouteIdentifierToSession:v38];

      v40 = [*(a1 + 56) firstObject];
      LODWORD(v38) = [v40 supportsSharePlayHandoff];

      if (!v38 || !v39)
      {
        goto LABEL_33;
      }

      v41 = *(a1 + 64);
      v42 = [(__CFString *)v31 firstObject];
      (*(v41 + 16))(v41, v42);
    }

    else
    {
      v53[0] = MEMORY[0x1E69E9820];
      v53[1] = 3221225472;
      v53[2] = __83__MRAVEndpoint_performMigrationToOutputDevices_request_initiator_queue_completion___block_invoke_3_358;
      v53[3] = &unk_1E769CA28;
      v46 = v3;
      v54 = v46;
      v47 = [(__CFString *)v31 msv_firstWhere:v53];
      v48 = +[MRExpanseManager sharedManager];
      v49 = [v48 canAddTelevisionWithRouteIdentifierToSession:v47];

      if (!v47 || (-[NSObject groupLeader](v46, "groupLeader"), v50 = objc_claimAutoreleasedReturnValue(), v51 = [v50 supportsSharePlayHandoff] & v49, v50, v51 != 1))
      {

        v43 = v54;
LABEL_32:

        goto LABEL_33;
      }

      (*(*(a1 + 64) + 16))();

      v42 = v54;
    }

    goto LABEL_35;
  }

  v9 = _MRLogForCategory(0xAuLL);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = *(a1 + 32);
    v11 = *(a1 + 40);
    *buf = 138543874;
    v56 = v10;
    v57 = 2114;
    v58 = v11;
    v59 = 2112;
    v60 = @"Evaluating possible conversation pull.";
    _os_log_impl(&dword_1A2860000, v9, OS_LOG_TYPE_DEFAULT, "Update: %{public}@<%{public}@> %@", buf, 0x20u);
  }

  v12 = +[MRExpanseManager sharedManager];
  v13 = [*(a1 + 48) groupLeader];
  v14 = [v12 deviceIsActiveTelevision:v13];

  v15 = MEMORY[0x1E696AEC0];
  v16 = +[MRExpanseManager sharedManager];
  v17 = [v16 activeTelevisionRouteID];
  v18 = [*(a1 + 48) groupLeader];
  v19 = v18;
  if (!v14)
  {
    v31 = [v15 stringWithFormat:@"Failed to match activeTV: %@ to groupLeader: %@", v17, v18];

    v43 = _MRLogForCategory(0xAuLL);
    if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
    {
      v44 = *(a1 + 32);
      v45 = *(a1 + 40);
      *buf = 138543874;
      v56 = v44;
      v57 = 2114;
      v58 = v45;
      v59 = 2112;
      v60 = v31;
      _os_log_impl(&dword_1A2860000, v43, OS_LOG_TYPE_DEFAULT, "Update: %{public}@<%{public}@> %@", buf, 0x20u);
    }

    goto LABEL_32;
  }

  v20 = [v15 stringWithFormat:@"Matched activeTV: %@ to groupLeader: %@", v17, v18];

  v21 = _MRLogForCategory(0xAuLL);
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    v22 = *(a1 + 32);
    v23 = *(a1 + 40);
    *buf = 138543874;
    v56 = v22;
    v57 = 2114;
    v58 = v23;
    v59 = 2112;
    v60 = v20;
    _os_log_impl(&dword_1A2860000, v21, OS_LOG_TYPE_DEFAULT, "Update: %{public}@<%{public}@> %@", buf, 0x20u);
  }

  v24 = [*(a1 + 48) groupLeader];
  v25 = [v24 deviceSubtype];

  v26 = [*(a1 + 48) groupLeader];
  v27 = v26;
  if (v25 == 15)
  {
    v28 = [v26 clusterComposition];
    v29 = [v28 msv_firstWhere:&__block_literal_global_345];
    v30 = [v29 uid];
  }

  else
  {
    v30 = [v26 uid];
  }

  if (!v30)
  {
    goto LABEL_34;
  }

  (*(*(a1 + 64) + 16))();

LABEL_35:
  v52 = *MEMORY[0x1E69E9840];
}

id __83__MRAVEndpoint_performMigrationToOutputDevices_request_initiator_queue_completion___block_invoke_352(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 deviceSubtype] == 13)
  {
    v3 = [v2 uid];
  }

  else if ([v2 deviceSubtype] == 15)
  {
    v4 = [v2 clusterComposition];
    v5 = [v4 msv_firstWhere:&__block_literal_global_357];
    v3 = [v5 uid];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t __83__MRAVEndpoint_performMigrationToOutputDevices_request_initiator_queue_completion___block_invoke_3_358(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 groupLeader];
  v5 = [v4 containsUID:v3];

  return v5;
}

void __83__MRAVEndpoint_performMigrationToOutputDevices_request_initiator_queue_completion___block_invoke_4_360(uint64_t a1, void *a2, void *a3, void *a4)
{
  v28 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (v8)
  {
    if (([v8 isLocalEndpoint] & 1) == 0)
    {
      if (![v7 count] || (objc_msgSend(v7, "mr_filter:", &__block_literal_global_363), v14 = objc_claimAutoreleasedReturnValue(), v15 = objc_msgSend(v14, "count"), v14, v15))
      {
        v16 = _MRLogForCategory(0xAuLL);
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          v17 = *(a1 + 32);
          v18 = *(a1 + 40);
          v22 = 138543874;
          v23 = v17;
          v24 = 2114;
          v25 = v18;
          v26 = 2112;
          v27 = @"Not attempting to migrate because device is not remote controllable.";
          _os_log_impl(&dword_1A2860000, v16, OS_LOG_TYPE_DEFAULT, "Update: %{public}@<%{public}@> %@", &v22, 0x20u);
        }

        [*(a1 + 48) setFallbackReason:3];
        v19 = *(a1 + 56);
        v20 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithMRError:39];
        (*(v19 + 16))(v19, v20);
        goto LABEL_16;
      }
    }

    v10 = +[MRUserSettings currentSettings];
    v11 = [v10 supportExpanseMigration];

    if (v11)
    {
      v12 = *(a1 + 64);
    }

    else
    {
      v12 = *(a1 + 72);
    }

    v13 = *(v12 + 16);
  }

  else
  {
    [*(a1 + 48) setFallbackReason:5];
    if (!v9)
    {
      v20 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithMRError:2 description:@"Output devices are not in the same endpoint"];
      (*(*(a1 + 56) + 16))(*(a1 + 56), v20);
LABEL_16:

      goto LABEL_17;
    }

    v13 = *(*(a1 + 56) + 16);
  }

  v13();
LABEL_17:

  v21 = *MEMORY[0x1E69E9840];
}

void __83__MRAVEndpoint_performMigrationToOutputDevices_request_initiator_queue_completion___block_invoke_2_382(uint64_t a1, void *a2, uint64_t a3, void *a4, void *a5)
{
  v9 = *(a1 + 40);
  v10 = *(a1 + 56);
  v11 = *(a1 + 32);
  v12 = a5;
  v13 = a4;
  v14 = a2;
  [v9 endEventWithID:v10 error:v12];
  (*(*(a1 + 48) + 16))();
}

- (void)performMigrationToEndpoint:(id)endpoint request:(id)request queue:(id)queue completion:(id)completion
{
  v98 = *MEMORY[0x1E69E9840];
  endpointCopy = endpoint;
  requestCopy = request;
  queueCopy = queue;
  completionCopy = completion;
  if (endpointCopy)
  {
    if (queueCopy)
    {
      goto LABEL_3;
    }

LABEL_6:
    queueCopy = MEMORY[0x1E69E96A0];
    v14 = MEMORY[0x1E69E96A0];
    if (requestCopy)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  [MRAVEndpoint performMigrationToEndpoint:request:queue:completion:];
  if (!queueCopy)
  {
    goto LABEL_6;
  }

LABEL_3:
  if (requestCopy)
  {
LABEL_4:
    v13 = requestCopy;
    goto LABEL_8;
  }

LABEL_7:
  v13 = objc_alloc_init(MRPlaybackSessionMigrateRequest);
LABEL_8:
  v15 = v13;
  [(MRPlaybackSessionMigrateRequest *)v13 setOriginatorType:MRAnalyticsCompositionForEndpoint(self)];
  [(MRPlaybackSessionMigrateRequest *)v15 addDestinationType:MRAnalyticsCompositionForEndpoint(endpointCopy)];
  date = [MEMORY[0x1E695DF00] date];
  requestID = [(MRPlaybackSessionMigrateRequest *)v15 requestID];
  v18 = objc_alloc(MEMORY[0x1E696AEC0]);
  debugName = [(MRAVEndpoint *)self debugName];
  v65 = endpointCopy;
  debugName2 = [endpointCopy debugName];
  v21 = [v18 initWithFormat:@"source=%@ destination=%@", debugName, debugName2];

  v22 = [objc_alloc(MEMORY[0x1E696AD60]) initWithFormat:@"%@<%@>", @"migrateToEndpoint", requestID];
  v23 = v22;
  if (v21)
  {
    [(__CFString *)v22 appendFormat:@" for %@", v21];
  }

  v24 = _MRLogForCategory(0xAuLL);
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v93 = v23;
    _os_log_impl(&dword_1A2860000, v24, OS_LOG_TYPE_DEFAULT, "Request: %{public}@", buf, 0xCu);
  }

  v83[0] = MEMORY[0x1E69E9820];
  v83[1] = 3221225472;
  v83[2] = __68__MRAVEndpoint_performMigrationToEndpoint_request_queue_completion___block_invoke;
  v83[3] = &unk_1E76A27D0;
  v63 = v21;
  v84 = v63;
  v85 = @"migrateToEndpoint";
  v25 = requestID;
  v86 = v25;
  v62 = date;
  v87 = v62;
  v64 = requestCopy;
  v88 = v64;
  v26 = v15;
  v89 = v26;
  v61 = completionCopy;
  v91 = v61;
  v27 = queueCopy;
  v90 = v27;
  v28 = MEMORY[0x1A58E3570](v83);
  if (-[MRAVEndpoint isLocalEndpoint](self, "isLocalEndpoint") && [v65 isLocalEndpoint])
  {
    v29 = _MRLogForCategory(0xAuLL);
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      requestID2 = [(MRPlaybackSessionMigrateRequest *)v26 requestID];
      *buf = 138543874;
      v93 = @"migrateToEndpoint";
      v94 = 2114;
      v95 = requestID2;
      v96 = 2112;
      v97 = @"Already airplaying to device. Removing All outputDevices instead...";
      _os_log_impl(&dword_1A2860000, v29, OS_LOG_TYPE_DEFAULT, "Update: %{public}@<%{public}@> %@", buf, 0x20u);
    }

    [(MRPlaybackSessionMigrateRequest *)v26 setRequestType:1];
    v31 = [(MRPlaybackSessionMigrateRequest *)v26 startEvent:@"RemoveOutputDevices" role:1];
    ErrorWithDescription = [MRAVLocalEndpoint sharedLocalEndpointForRoutingContextWithUID:0];
    v33 = ([(MRPlaybackSessionMigrateRequest *)v26 playerOptions]>> 6) & 1;
    v34 = objc_alloc(MEMORY[0x1E696AEC0]);
    initiator = [(MRPlaybackSessionMigrateRequest *)v26 initiator];
    requestID3 = [(MRPlaybackSessionMigrateRequest *)v26 requestID];
    v37 = [v34 initWithFormat:@"%@-%@", initiator, requestID3];
    v78[0] = MEMORY[0x1E69E9820];
    v78[1] = 3221225472;
    v78[2] = __68__MRAVEndpoint_performMigrationToEndpoint_request_queue_completion___block_invoke_395;
    v78[3] = &unk_1E76A27F8;
    v82 = v31;
    v79 = v26;
    v80 = @"migrateToEndpoint";
    v81 = v28;
    [ErrorWithDescription setOutputDevices:0 initiator:v37 fadeAudio:v33 withReplyQueue:v27 completion:v78];

    goto LABEL_20;
  }

  if (([(MRPlaybackSessionMigrateRequest *)v26 endpointOptions]& 0x20) == 0)
  {
    v38 = [(MRAVEndpoint *)self outputDevicesMatchingPredicate:&__block_literal_global_397];
    v39 = [v38 count];

    if (v39)
    {
      v40 = objc_alloc(MEMORY[0x1E696AEC0]);
      v41 = MRMediaRemotePlaybackSessionMigrateEndpointOptionsCopyDescription(32);
      outputDevices = [(MRAVEndpoint *)self outputDevices];
      v43 = MRAVOutputDeviceArrayDescription(outputDevices);
      v44 = [v40 initWithFormat:@"%@ option is not present and source contains %@", v41, v43];
      ErrorWithDescription = MRMediaRemoteCreateErrorWithDescription(150, v44);

      (v28)[2](v28, ErrorWithDescription);
LABEL_20:
      v45 = v65;
      goto LABEL_25;
    }
  }

  v45 = v65;
  if ((-[MRPlaybackSessionMigrateRequest endpointOptions](v26, "endpointOptions") & 0x10) != 0 || ([v65 outputDevices], v46 = objc_claimAutoreleasedReturnValue(), v47 = MRAVOutputDeviceArrayNumberOfLogicalDevices(v46), v46, v47 < 2))
  {
    v73[0] = MEMORY[0x1E69E9820];
    v73[1] = 3221225472;
    v73[2] = __68__MRAVEndpoint_performMigrationToEndpoint_request_queue_completion___block_invoke_4;
    v73[3] = &unk_1E76A2938;
    v53 = v26;
    v74 = v53;
    v75 = v25;
    v54 = v27;
    v76 = v54;
    v55 = v28;
    v77 = v55;
    v56 = MEMORY[0x1A58E3570](v73);
    v57 = [(MRPlaybackSessionMigrateRequest *)v53 startEvent:@"Connect" role:1];
    v66[0] = MEMORY[0x1E69E9820];
    v66[1] = 3221225472;
    v66[2] = __68__MRAVEndpoint_performMigrationToEndpoint_request_queue_completion___block_invoke_6;
    v66[3] = &unk_1E76A2AE8;
    v67 = v53;
    v72 = v57;
    v45 = v65;
    v68 = v54;
    v69 = v65;
    v70 = v56;
    v71 = v55;
    v58 = v56;
    [(MRAVEndpoint *)self _prepareToMigrateToEndpoint:v69 queue:v68 completion:v66];

    ErrorWithDescription = v74;
  }

  else
  {
    v48 = objc_alloc(MEMORY[0x1E696AEC0]);
    v49 = MRMediaRemotePlaybackSessionMigrateEndpointOptionsCopyDescription(16);
    outputDevices2 = [v65 outputDevices];
    v51 = MRAVOutputDeviceArrayDescription(outputDevices2);
    v52 = [v48 initWithFormat:@"%@ option is not present and destination contains %@", v49, v51];
    ErrorWithDescription = MRMediaRemoteCreateErrorWithDescription(151, v52);

    (v28)[2](v28, ErrorWithDescription);
  }

LABEL_25:

  v59 = *MEMORY[0x1E69E9840];
}

void __68__MRAVEndpoint_performMigrationToEndpoint_request_queue_completion___block_invoke(uint64_t a1, void *a2)
{
  v39 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = _MRLogForCategory(0xAuLL);
  v6 = v5;
  if (!v3)
  {
    v13 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
    if (v4)
    {
      if (!v13)
      {
        goto LABEL_14;
      }

      v15 = *(a1 + 40);
      v14 = *(a1 + 48);
      v16 = *(a1 + 32);
      v11 = [MEMORY[0x1E695DF00] date];
      [v11 timeIntervalSinceDate:*(a1 + 56)];
      *buf = 138544130;
      v30 = v15;
      v31 = 2114;
      v32 = v14;
      v33 = 2114;
      v34 = v16;
      v35 = 2048;
      v36 = v17;
      v18 = "Response: %{public}@<%{public}@> returned for %{public}@ in %.4lf seconds";
      v19 = v6;
      v20 = 42;
    }

    else
    {
      if (!v13)
      {
        goto LABEL_14;
      }

      v21 = *(a1 + 40);
      v22 = *(a1 + 48);
      v11 = [MEMORY[0x1E695DF00] date];
      [v11 timeIntervalSinceDate:*(a1 + 56)];
      *buf = 138543874;
      v30 = v21;
      v31 = 2114;
      v32 = v22;
      v33 = 2048;
      v34 = v23;
      v18 = "Response: %{public}@<%{public}@> returned in %.4lf seconds";
      v19 = v6;
      v20 = 32;
    }

    _os_log_impl(&dword_1A2860000, v19, OS_LOG_TYPE_DEFAULT, v18, buf, v20);
    goto LABEL_13;
  }

  v7 = os_log_type_enabled(v5, OS_LOG_TYPE_ERROR);
  if (v4)
  {
    if (!v7)
    {
      goto LABEL_14;
    }

    v9 = *(a1 + 40);
    v8 = *(a1 + 48);
    v10 = *(a1 + 32);
    v11 = [MEMORY[0x1E695DF00] date];
    [v11 timeIntervalSinceDate:*(a1 + 56)];
    *buf = 138544386;
    v30 = v9;
    v31 = 2114;
    v32 = v8;
    v33 = 2114;
    v34 = v3;
    v35 = 2114;
    v36 = v10;
    v37 = 2048;
    v38 = v12;
    _os_log_error_impl(&dword_1A2860000, v6, OS_LOG_TYPE_ERROR, "Response: %{public}@<%{public}@> returned with error <%{public}@> for %{public}@ in %.4lf seconds", buf, 0x34u);
LABEL_13:

    goto LABEL_14;
  }

  if (v7)
  {
    __86__MRV2NowPlayingController__loadNowPlayingStateForConfiguration_requestID_completion___block_invoke_53_cold_1(a1, v3, v6);
  }

LABEL_14:

  if (!*(a1 + 64))
  {
    [*(a1 + 72) finalizeWithCompletion:0];
  }

  v24 = *(a1 + 88);
  if (v24)
  {
    v25 = *(a1 + 80);
    v28 = v24;
    v27 = v3;
    msv_dispatch_async_on_queue();
  }

  v26 = *MEMORY[0x1E69E9840];
}

void __68__MRAVEndpoint_performMigrationToEndpoint_request_queue_completion___block_invoke_395(uint64_t a1, void *a2)
{
  v3 = a2;
  [*(a1 + 32) endEventWithID:*(a1 + 56) error:v3];
  if (!v3 && ([*(a1 + 32) playerOptions] & 4) != 0)
  {
    v4 = [*(a1 + 32) startEvent:@"Play" role:1];
    v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v6 = objc_alloc(MEMORY[0x1E696AEC0]);
    v7 = *(a1 + 40);
    v8 = [*(a1 + 32) requestID];
    v9 = [v6 initWithFormat:@"%@<%@>", v7, v8];
    [v5 setObject:v9 forKeyedSubscript:@"kMRMediaRemoteOptionRemoteControlInterfaceIdentifier"];

    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __68__MRAVEndpoint_performMigrationToEndpoint_request_queue_completion___block_invoke_2;
    v10[3] = &unk_1E769DB80;
    v11 = *(a1 + 32);
    v13 = v4;
    v12 = *(a1 + 48);
    MRMediaRemoteSendCommandToPlayer(0, v5, 0, 0, MEMORY[0x1E69E96A0], v10);
  }

  else
  {
    (*(*(a1 + 48) + 16))();
  }
}

void __68__MRAVEndpoint_performMigrationToEndpoint_request_queue_completion___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = MRMediaRemoteErrorFromCommandStatuses(a2, a3);
  [*(a1 + 32) endEventWithID:*(a1 + 48) error:v4];
  (*(*(a1 + 40) + 16))();
}

void __68__MRAVEndpoint_performMigrationToEndpoint_request_queue_completion___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 startEvent:@"UpdateActiveSystemEndpoint" role:1];
  v6 = objc_alloc(MEMORY[0x1E696AEC0]);
  v7 = *(a1 + 40);
  v8 = MRMediaRemotePlaybackSessionMigrateEndpointOptionsCopyDescription(2);
  v9 = [v6 initWithFormat:@"migrationPlaybackSession<%@> for option %@", v7, v8];

  v10 = *(a1 + 48);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __68__MRAVEndpoint_performMigrationToEndpoint_request_queue_completion___block_invoke_5;
  v11[3] = &unk_1E76A28E8;
  v12 = *(a1 + 32);
  v14 = v5;
  v13 = *(a1 + 56);
  MRAVEndpointUpdateActiveSystemEndpointForOutputDeviceUIDWithChangeType(v4, 0, 0, v9, v10, v11);
}

void __68__MRAVEndpoint_performMigrationToEndpoint_request_queue_completion___block_invoke_5(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 48);
  v5 = a2;
  [v3 endEventWithID:v4 error:v5];
  (*(*(a1 + 40) + 16))();
}

void __68__MRAVEndpoint_performMigrationToEndpoint_request_queue_completion___block_invoke_6(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  [*(a1 + 32) endEventWithID:*(a1 + 72) error:v9];
  if (v7 && v8)
  {
    v11 = *(a1 + 32);
    v10 = *(a1 + 40);
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __68__MRAVEndpoint_performMigrationToEndpoint_request_queue_completion___block_invoke_7;
    v18[3] = &unk_1E76A2AC0;
    v12 = *(a1 + 48);
    v13 = *(a1 + 32);
    v14 = *(a1 + 40);
    v15 = *(a1 + 56);
    *&v16 = v14;
    *(&v16 + 1) = v15;
    *&v17 = v12;
    *(&v17 + 1) = v13;
    v19 = v17;
    v20 = v16;
    v21 = *(a1 + 64);
    MRMediaRemotePlaybackSessionMigrateForOriginWithRequest(v11, v7, v8, v10, v18);
  }

  else
  {
    (*(*(a1 + 64) + 16))();
  }
}

void __68__MRAVEndpoint_performMigrationToEndpoint_request_queue_completion___block_invoke_7(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = *(a1 + 64);
    v4 = *(*(a1 + 64) + 16);

    v4();
  }

  else
  {
    v5 = [*(a1 + 32) groupLeader];
    v6 = [v5 uid];

    v7 = [*(a1 + 32) outputDeviceUIDs];
    if ([v7 containsObject:v6])
    {
      v8 = v6;
    }

    else
    {
      v9 = [*(a1 + 32) outputDeviceUIDs];
      v8 = [v9 firstObject];
    }

    if (([*(a1 + 40) endpointOptions] & 0x40) != 0)
    {
      v10 = [*(a1 + 40) startEvent:@"DiscoverDestinationEndpoint" role:1];
      v11 = objc_alloc_init(MRAVLightweightReconnaissanceSession);
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __68__MRAVEndpoint_performMigrationToEndpoint_request_queue_completion___block_invoke_8;
      v14[3] = &unk_1E76A2A98;
      v15 = v11;
      v12 = *(a1 + 48);
      v16 = *(a1 + 40);
      v18 = v10;
      v17 = *(a1 + 56);
      v13 = v11;
      [(MRAVLightweightReconnaissanceSession *)v13 searchEndpointsForLeaderOutputDeviceUID:v8 timeout:@"discoverDestinationEndpoint" reason:v12 queue:v14 completion:7.0];
    }

    else
    {
      (*(*(a1 + 56) + 16))();
    }
  }
}

void __68__MRAVEndpoint_performMigrationToEndpoint_request_queue_completion___block_invoke_8(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = *(a1 + 40);
  v7 = *(a1 + 56);
  v12 = *(a1 + 32);
  v8 = a2;
  [v6 endEventWithID:v7 error:a3];
  v9 = *(a1 + 48);
  v10 = [v8 designatedGroupLeader];

  v11 = [v10 uid];
  (*(v9 + 16))(v9, v11);
}

- (void)_prepareToMigrateToEndpoint:(void *)endpoint queue:(void *)queue completion:
{
  v47[1] = *MEMORY[0x1E69E9840];
  v7 = a2;
  endpointCopy = endpoint;
  queueCopy = queue;
  if (self)
  {
    if (!v7)
    {
      [MRAVEndpoint _prepareToMigrateToEndpoint:queue:completion:];
    }

    if (!endpointCopy)
    {
      endpointCopy = MEMORY[0x1E69E96A0];
      v10 = MEMORY[0x1E69E96A0];
    }

    v44[0] = 0;
    v44[1] = v44;
    v44[2] = 0x3032000000;
    v44[3] = __Block_byref_object_copy__37;
    v44[4] = __Block_byref_object_dispose__37;
    v45 = 0;
    v42[0] = 0;
    v42[1] = v42;
    v42[2] = 0x3032000000;
    v42[3] = __Block_byref_object_copy__37;
    v42[4] = __Block_byref_object_dispose__37;
    v43 = 0;
    v40[0] = 0;
    v40[1] = v40;
    v40[2] = 0x3032000000;
    v40[3] = __Block_byref_object_copy__37;
    v40[4] = __Block_byref_object_dispose__37;
    v41 = 0;
    v11 = dispatch_group_create();
    v46 = @"MREndpointConnectionReasonUserInfoKey";
    v47[0] = @"prepareToMigrateToEndpoint";
    v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v47 forKeys:&v46 count:1];
    dispatch_group_enter(v11);
    v36[0] = MEMORY[0x1E69E9820];
    v36[1] = 3221225472;
    v36[2] = __61__MRAVEndpoint__prepareToMigrateToEndpoint_queue_completion___block_invoke;
    v36[3] = &unk_1E769D630;
    v38 = v40;
    v39 = v44;
    v36[4] = self;
    v13 = v11;
    v37 = v13;
    [self connectToExternalDeviceWithUserInfo:v12 completion:v36];
    dispatch_group_enter(v13);
    v31[0] = MEMORY[0x1E69E9820];
    v31[1] = 3221225472;
    v31[2] = __61__MRAVEndpoint__prepareToMigrateToEndpoint_queue_completion___block_invoke_2;
    v31[3] = &unk_1E769D630;
    v34 = v40;
    v35 = v42;
    v14 = v7;
    v32 = v14;
    v15 = v13;
    v33 = v15;
    [v14 connectToExternalDeviceWithUserInfo:v12 completion:v31];
    v16 = [MRBlockGuard alloc];
    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = __61__MRAVEndpoint__prepareToMigrateToEndpoint_queue_completion___block_invoke_3;
    v29[3] = &unk_1E769AD80;
    v17 = queueCopy;
    v30 = v17;
    v18 = [(MRBlockGuard *)v16 initWithTimeout:@"prepareToMigrateToEndpoint" reason:endpointCopy queue:v29 handler:7.0];
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __61__MRAVEndpoint__prepareToMigrateToEndpoint_queue_completion___block_invoke_4;
    v21[3] = &unk_1E76A2B60;
    v22 = v18;
    v25 = v17;
    v26 = v40;
    v27 = v44;
    v28 = v42;
    v23 = v14;
    selfCopy = self;
    v19 = v18;
    dispatch_group_notify(v15, endpointCopy, v21);

    _Block_object_dispose(v40, 8);
    _Block_object_dispose(v42, 8);

    _Block_object_dispose(v44, 8);
  }

  v20 = *MEMORY[0x1E69E9840];
}

- (void)canMigrateToEndpoint:(id)endpoint queue:(id)queue completion:(id)completion
{
  endpointCopy = endpoint;
  queueCopy = queue;
  completionCopy = completion;
  if (!endpointCopy)
  {
    [MRAVEndpoint canMigrateToEndpoint:queue:completion:];
    if (queueCopy)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  if (!queueCopy)
  {
LABEL_3:
    queueCopy = MEMORY[0x1E69E96A0];
    v11 = MEMORY[0x1E69E96A0];
  }

LABEL_4:
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __54__MRAVEndpoint_canMigrateToEndpoint_queue_completion___block_invoke;
  v20[3] = &unk_1E769AB50;
  v22 = completionCopy;
  v12 = queueCopy;
  v21 = v12;
  v13 = completionCopy;
  v14 = MEMORY[0x1A58E3570](v20);
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __54__MRAVEndpoint_canMigrateToEndpoint_queue_completion___block_invoke_3;
  v17[3] = &unk_1E76A2B38;
  v18 = v12;
  v19 = v14;
  v15 = v14;
  v16 = v12;
  [(MRAVEndpoint *)self _prepareToMigrateToEndpoint:endpointCopy queue:v16 completion:v17];
}

void __54__MRAVEndpoint_canMigrateToEndpoint_queue_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 40);
  if (v4)
  {
    v5 = *(a1 + 32);
    v7 = v4;
    v6 = v3;
    msv_dispatch_async_on_queue();
  }
}

void __54__MRAVEndpoint_canMigrateToEndpoint_queue_completion___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  if (a2 && a3)
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __54__MRAVEndpoint_canMigrateToEndpoint_queue_completion___block_invoke_4;
    v7[3] = &unk_1E76A2B10;
    v5 = *(a1 + 32);
    v8 = *(a1 + 40);
    MRMediaRemotePlaybackSessionIsMigrationPossible(a2, a3, v5, v7);
  }

  else
  {
    v6 = *(*(a1 + 40) + 16);

    v6();
  }
}

void __61__MRAVEndpoint__prepareToMigrateToEndpoint_queue_completion___block_invoke(uint64_t a1, void *a2)
{
  v7 = a2;
  if (v7)
  {
    objc_storeStrong((*(*(a1 + 48) + 8) + 40), a2);
  }

  v4 = [*(a1 + 32) origin];
  v5 = *(*(a1 + 56) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  dispatch_group_leave(*(a1 + 40));
}

void __61__MRAVEndpoint__prepareToMigrateToEndpoint_queue_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v7 = a2;
  if (v7)
  {
    objc_storeStrong((*(*(a1 + 48) + 8) + 40), a2);
  }

  v4 = [*(a1 + 32) origin];
  v5 = *(*(a1 + 56) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  dispatch_group_leave(*(a1 + 40));
}

uint64_t __61__MRAVEndpoint__prepareToMigrateToEndpoint_queue_completion___block_invoke_3(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0, 0, a2);
  }

  return result;
}

uint64_t __61__MRAVEndpoint__prepareToMigrateToEndpoint_queue_completion___block_invoke_4(uint64_t a1)
{
  result = [*(a1 + 32) disarm];
  if (result)
  {
    result = *(a1 + 56);
    if (result)
    {
      if (!*(*(*(a1 + 64) + 8) + 40) && (!*(*(*(a1 + 72) + 8) + 40) || !*(*(*(a1 + 80) + 8) + 40)))
      {
        v3 = objc_alloc(MEMORY[0x1E696ABC0]);
        v4 = 40;
        if (!*(*(*(a1 + 72) + 8) + 40))
        {
          v4 = 48;
        }

        v5 = [v3 initWithMRError:121 format:{@"Both endpoints successfully connected but could not fetch the origin for %@", *(a1 + v4)}];
        v6 = *(*(a1 + 64) + 8);
        v7 = *(v6 + 40);
        *(v6 + 40) = v5;

        result = *(a1 + 56);
        v8 = *(*(*(a1 + 64) + 8) + 40);
      }

      v9 = *(*(*(a1 + 72) + 8) + 40);
      v10 = *(*(*(a1 + 80) + 8) + 40);
      v11 = *(result + 16);

      return v11();
    }
  }

  return result;
}

- (void)removeOutputDeviceFromParentGroup:(id)group queue:(id)queue completion:(id)completion
{
  v22[1] = *MEMORY[0x1E69E9840];
  groupCopy = group;
  queueCopy = queue;
  completionCopy = completion;
  if (!queueCopy)
  {
    queueCopy = MEMORY[0x1E69E96A0];
    v11 = MEMORY[0x1E69E96A0];
  }

  v21 = @"MREndpointConnectionReasonUserInfoKey";
  v22[0] = @"removeOutputDeviceFromParentGroup";
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:&v21 count:1];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __67__MRAVEndpoint_removeOutputDeviceFromParentGroup_queue_completion___block_invoke;
  v17[3] = &unk_1E76A2B88;
  v17[4] = self;
  v18 = groupCopy;
  v19 = queueCopy;
  v20 = completionCopy;
  v13 = completionCopy;
  v14 = queueCopy;
  v15 = groupCopy;
  [(MRAVEndpoint *)self connectToExternalDeviceWithUserInfo:v12 completion:v17];

  v16 = *MEMORY[0x1E69E9840];
}

void __67__MRAVEndpoint_removeOutputDeviceFromParentGroup_queue_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = *(a1 + 56);
    if (v4)
    {
      v5 = *(a1 + 48);
      v7[0] = MEMORY[0x1E69E9820];
      v7[1] = 3221225472;
      v7[2] = __67__MRAVEndpoint_removeOutputDeviceFromParentGroup_queue_completion___block_invoke_2;
      v7[3] = &unk_1E769AB28;
      v9 = v4;
      v8 = v3;
      dispatch_async(v5, v7);
    }
  }

  else
  {
    v6 = [*(a1 + 32) externalDevice];
    if (!v6)
    {
      __67__MRAVEndpoint_removeOutputDeviceFromParentGroup_queue_completion___block_invoke_cold_1();
    }

    [v6 removeFromParentGroup:*(a1 + 40) queue:*(a1 + 48) completion:*(a1 + 56)];
  }
}

- (void)requestGroupSessionWithQueue:(id)queue completion:(id)completion
{
  completionCopy = completion;
  queueCopy = queue;
  v8 = [MRRequestDetails alloc];
  uUID = [MEMORY[0x1E696AFB0] UUID];
  uUIDString = [uUID UUIDString];
  v11 = [(MRRequestDetails *)v8 initWithName:@"requestGroupSession" requestID:uUIDString reason:0];

  [(MRAVEndpoint *)self requestGroupSessionWithDetails:v11 queue:queueCopy completion:completionCopy];
}

- (void)requestGroupSessionWithDetails:(id)details queue:(id)queue completion:(id)completion
{
  v38 = *MEMORY[0x1E69E9840];
  detailsCopy = details;
  queueCopy = queue;
  completionCopy = completion;
  v11 = [MEMORY[0x1E695DF00] now];
  debugName = [(MRAVEndpoint *)self debugName];
  v13 = objc_alloc(MEMORY[0x1E696AD60]);
  name = [detailsCopy name];
  requestID = [detailsCopy requestID];
  v16 = [v13 initWithFormat:@"%@<%@>", name, requestID];

  if (debugName)
  {
    [v16 appendFormat:@" for %@", debugName];
  }

  v17 = _MRLogForCategory(0xAuLL);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v37 = v16;
    _os_log_impl(&dword_1A2860000, v17, OS_LOG_TYPE_DEFAULT, "Request: %{public}@", buf, 0xCu);
  }

  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 3221225472;
  v31[2] = __64__MRAVEndpoint_requestGroupSessionWithDetails_queue_completion___block_invoke;
  v31[3] = &unk_1E76A2BB0;
  v32 = debugName;
  v18 = detailsCopy;
  v33 = v18;
  v34 = v11;
  v35 = completionCopy;
  v19 = completionCopy;
  v20 = v11;
  v21 = debugName;
  v22 = MEMORY[0x1A58E3570](v31);
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __64__MRAVEndpoint_requestGroupSessionWithDetails_queue_completion___block_invoke_433;
  v27[3] = &unk_1E76A2B88;
  v27[4] = self;
  v28 = v18;
  v29 = queueCopy;
  v30 = v22;
  v23 = v22;
  v24 = queueCopy;
  v25 = v18;
  [(MRAVEndpoint *)self connectToExternalDeviceWithOptions:0 details:v25 completion:v27];

  v26 = *MEMORY[0x1E69E9840];
}

void __64__MRAVEndpoint_requestGroupSessionWithDetails_queue_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v38 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v8 = _MRLogForCategory(0xAuLL);
  v9 = v8;
  if (v5 && !v6)
  {
    v10 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
    if (v7)
    {
      if (v10)
      {
        v11 = [*(a1 + 40) name];
        v12 = [*(a1 + 40) requestID];
        v13 = *(a1 + 32);
        v14 = [MEMORY[0x1E695DF00] date];
        [v14 timeIntervalSinceDate:*(a1 + 48)];
        v28 = 138544386;
        v29 = v11;
        v30 = 2114;
        v31 = v12;
        v32 = 2112;
        v33 = v5;
        v34 = 2114;
        v35 = v13;
        v36 = 2048;
        v37 = v15;
        v16 = "Response: %{public}@<%{public}@> returned <%@> for %{public}@ in %.4lf seconds";
        v17 = v9;
        v18 = 52;
LABEL_16:
        _os_log_impl(&dword_1A2860000, v17, OS_LOG_TYPE_DEFAULT, v16, &v28, v18);
        goto LABEL_17;
      }

      goto LABEL_22;
    }

    if (!v10)
    {
      goto LABEL_22;
    }

    v11 = [*(a1 + 40) name];
    v12 = [*(a1 + 40) requestID];
    v14 = [MEMORY[0x1E695DF00] date];
    [v14 timeIntervalSinceDate:*(a1 + 48)];
    v28 = 138544130;
    v29 = v11;
    v30 = 2114;
    v31 = v12;
    v32 = 2112;
    v33 = v5;
    v34 = 2048;
    v35 = v25;
    v16 = "Response: %{public}@<%{public}@> returned <%@> in %.4lf seconds";
LABEL_15:
    v17 = v9;
    v18 = 42;
    goto LABEL_16;
  }

  if (v6)
  {
    v19 = os_log_type_enabled(v8, OS_LOG_TYPE_ERROR);
    if (v7)
    {
      if (v19)
      {
        v11 = [*(a1 + 40) name];
        v12 = [*(a1 + 40) requestID];
        v20 = *(a1 + 32);
        v14 = [MEMORY[0x1E695DF00] date];
        [v14 timeIntervalSinceDate:*(a1 + 48)];
        v28 = 138544386;
        v29 = v11;
        v30 = 2114;
        v31 = v12;
        v32 = 2114;
        v33 = v6;
        v34 = 2114;
        v35 = v20;
        v36 = 2048;
        v37 = v21;
        _os_log_error_impl(&dword_1A2860000, v9, OS_LOG_TYPE_ERROR, "Response: %{public}@<%{public}@> returned with error <%{public}@> for %{public}@ in %.4lf seconds", &v28, 0x34u);
LABEL_17:

        goto LABEL_22;
      }
    }

    else if (v19)
    {
      __64__MRAVEndpoint_requestGroupSessionWithDetails_queue_completion___block_invoke_cold_1(a1, v6, v9);
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

    v11 = [*(a1 + 40) name];
    v12 = [*(a1 + 40) requestID];
    v14 = [MEMORY[0x1E695DF00] date];
    [v14 timeIntervalSinceDate:*(a1 + 48)];
    v28 = 138543874;
    v29 = v11;
    v30 = 2114;
    v31 = v12;
    v32 = 2048;
    v33 = v26;
    v16 = "Response: %{public}@<%{public}@> returned in %.4lf seconds";
    v17 = v9;
    v18 = 32;
    goto LABEL_16;
  }

  if (v22)
  {
    v11 = [*(a1 + 40) name];
    v12 = [*(a1 + 40) requestID];
    v23 = *(a1 + 32);
    v14 = [MEMORY[0x1E695DF00] date];
    [v14 timeIntervalSinceDate:*(a1 + 48)];
    v28 = 138544130;
    v29 = v11;
    v30 = 2114;
    v31 = v12;
    v32 = 2114;
    v33 = v23;
    v34 = 2048;
    v35 = v24;
    v16 = "Response: %{public}@<%{public}@> returned for %{public}@ in %.4lf seconds";
    goto LABEL_15;
  }

LABEL_22:

  (*(*(a1 + 56) + 16))();
  v27 = *MEMORY[0x1E69E9840];
}

void __64__MRAVEndpoint_requestGroupSessionWithDetails_queue_completion___block_invoke_433(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __64__MRAVEndpoint_requestGroupSessionWithDetails_queue_completion___block_invoke_2;
    v6[3] = &unk_1E769AB28;
    v4 = *(a1 + 48);
    v8 = *(a1 + 56);
    v7 = v3;
    dispatch_async(v4, v6);
  }

  else
  {
    v5 = [*(a1 + 32) externalDevice];
    [v5 requestGroupSessionWithDetails:*(a1 + 40) queue:*(a1 + 48) completion:*(a1 + 56)];
  }
}

- (void)requestMicrophoneConnection:(id)connection completion:(id)completion
{
  completionCopy = completion;
  connectionCopy = connection;
  v8 = [MRRequestDetails alloc];
  uUID = [MEMORY[0x1E696AFB0] UUID];
  uUIDString = [uUID UUIDString];
  v11 = [(MRRequestDetails *)v8 initWithName:@"requestMicrophoneConnection" requestID:uUIDString reason:0];

  [(MRAVEndpoint *)self requestMicrophoneConnectionWithDetails:v11 queue:connectionCopy completion:completionCopy];
}

void __72__MRAVEndpoint_requestMicrophoneConnectionWithDetails_queue_completion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v44 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (!v5)
  {
    v14 = [MEMORY[0x1E696AD98] numberWithInteger:a2];

    v15 = *(a1 + 32);
    v7 = _MRLogForCategory(0xAuLL);
    v16 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
    if (!v14)
    {
      if (v15)
      {
        if (!v16)
        {
          goto LABEL_21;
        }

        v9 = [*(a1 + 40) name];
        v10 = [*(a1 + 40) requestID];
        v26 = *(a1 + 32);
        v12 = [MEMORY[0x1E695DF00] date];
        [v12 timeIntervalSinceDate:*(a1 + 48)];
        v34 = 138544130;
        v35 = v9;
        v36 = 2114;
        v37 = v10;
        v38 = 2114;
        v39 = v26;
        v40 = 2048;
        v41 = v27;
        v28 = "Response: %{public}@<%{public}@> returned for %{public}@ in %.4lf seconds";
        v29 = v7;
        v30 = 42;
      }

      else
      {
        if (!v16)
        {
          goto LABEL_21;
        }

        v9 = [*(a1 + 40) name];
        v10 = [*(a1 + 40) requestID];
        v12 = [MEMORY[0x1E695DF00] date];
        [v12 timeIntervalSinceDate:*(a1 + 48)];
        v34 = 138543874;
        v35 = v9;
        v36 = 2114;
        v37 = v10;
        v38 = 2048;
        v39 = v32;
        v28 = "Response: %{public}@<%{public}@> returned in %.4lf seconds";
        v29 = v7;
        v30 = 32;
      }

      _os_log_impl(&dword_1A2860000, v29, OS_LOG_TYPE_DEFAULT, v28, &v34, v30);
      goto LABEL_20;
    }

    if (v15)
    {
      if (!v16)
      {
        goto LABEL_21;
      }

      v17 = [*(a1 + 40) name];
      v18 = [*(a1 + 40) requestID];
      v19 = [MEMORY[0x1E696AD98] numberWithInteger:a2];
      v20 = *(a1 + 32);
      v21 = [MEMORY[0x1E695DF00] date];
      [v21 timeIntervalSinceDate:*(a1 + 48)];
      v34 = 138544386;
      v35 = v17;
      v36 = 2114;
      v37 = v18;
      v38 = 2112;
      v39 = v19;
      v40 = 2114;
      v41 = v20;
      v42 = 2048;
      v43 = v22;
      v23 = "Response: %{public}@<%{public}@> returned <%@> for %{public}@ in %.4lf seconds";
      v24 = v7;
      v25 = 52;
    }

    else
    {
      if (!v16)
      {
        goto LABEL_21;
      }

      v17 = [*(a1 + 40) name];
      v18 = [*(a1 + 40) requestID];
      v19 = [MEMORY[0x1E696AD98] numberWithInteger:a2];
      v21 = [MEMORY[0x1E695DF00] date];
      [v21 timeIntervalSinceDate:*(a1 + 48)];
      v34 = 138544130;
      v35 = v17;
      v36 = 2114;
      v37 = v18;
      v38 = 2112;
      v39 = v19;
      v40 = 2048;
      v41 = v31;
      v23 = "Response: %{public}@<%{public}@> returned <%@> in %.4lf seconds";
      v24 = v7;
      v25 = 42;
    }

    _os_log_impl(&dword_1A2860000, v24, OS_LOG_TYPE_DEFAULT, v23, &v34, v25);

    goto LABEL_21;
  }

  v6 = *(a1 + 32);
  v7 = _MRLogForCategory(0xAuLL);
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_ERROR);
  if (v6)
  {
    if (v8)
    {
      v9 = [*(a1 + 40) name];
      v10 = [*(a1 + 40) requestID];
      v11 = *(a1 + 32);
      v12 = [MEMORY[0x1E695DF00] date];
      [v12 timeIntervalSinceDate:*(a1 + 48)];
      v34 = 138544386;
      v35 = v9;
      v36 = 2114;
      v37 = v10;
      v38 = 2114;
      v39 = v5;
      v40 = 2114;
      v41 = v11;
      v42 = 2048;
      v43 = v13;
      _os_log_error_impl(&dword_1A2860000, v7, OS_LOG_TYPE_ERROR, "Response: %{public}@<%{public}@> returned with error <%{public}@> for %{public}@ in %.4lf seconds", &v34, 0x34u);
LABEL_20:
    }
  }

  else if (v8)
  {
    __64__MRAVEndpoint_requestGroupSessionWithDetails_queue_completion___block_invoke_cold_1(a1, v5, v7);
  }

LABEL_21:

  (*(*(a1 + 56) + 16))();
  v33 = *MEMORY[0x1E69E9840];
}

void __72__MRAVEndpoint_requestMicrophoneConnectionWithDetails_queue_completion___block_invoke_439(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3 || ([*(a1 + 32) externalDevice], v5 = objc_claimAutoreleasedReturnValue(), v5, !v5))
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __72__MRAVEndpoint_requestMicrophoneConnectionWithDetails_queue_completion___block_invoke_2;
    v7[3] = &unk_1E769AB28;
    v4 = *(a1 + 48);
    v9 = *(a1 + 56);
    v8 = v3;
    dispatch_async(v4, v7);
  }

  else
  {
    v6 = [*(a1 + 32) externalDevice];
    [v6 requestMicrophoneConnectionWithDetails:*(a1 + 40) queue:*(a1 + 48) completion:*(a1 + 56)];
  }
}

- (BOOL)hasPotentialGroupLeader
{
  v19 = *MEMORY[0x1E69E9840];
  designatedGroupLeader = [(MRAVEndpoint *)self designatedGroupLeader];
  isGroupLeader = [designatedGroupLeader isGroupLeader];

  if (isGroupLeader)
  {
    v5 = 1;
  }

  else
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    outputDevices = [(MRAVEndpoint *)self outputDevices];
    v7 = [outputDevices countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v15;
      while (2)
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v15 != v9)
          {
            objc_enumerationMutation(outputDevices);
          }

          v11 = *(*(&v14 + 1) + 8 * i);
          if ([v11 isGroupLeader] & 1) != 0 || objc_msgSend(v11, "canRelayCommunicationChannel") && !objc_msgSend(v11, "isRemoteControllable") || (objc_msgSend(v11, "groupContainsGroupLeader") & 1) == 0 && objc_msgSend(v11, "isRemoteControllable") && (objc_msgSend(v11, "isAirPlayReceiverSessionActive"))
          {
            v5 = 1;
            goto LABEL_19;
          }
        }

        v8 = [outputDevices countByEnumeratingWithState:&v14 objects:v18 count:16];
        v5 = 0;
        if (v8)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      v5 = 0;
    }

LABEL_19:
  }

  v12 = *MEMORY[0x1E69E9840];
  return v5;
}

- (void)outputDeviceVolumeControlCapabilities:(id)capabilities queue:(id)queue completion:(id)completion
{
  v55 = *MEMORY[0x1E69E9840];
  capabilitiesCopy = capabilities;
  queueCopy = queue;
  completionCopy = completion;
  v11 = [MEMORY[0x1E695DF00] now];
  uUID = [MEMORY[0x1E696AFB0] UUID];
  uUIDString = [uUID UUIDString];

  v14 = objc_alloc(MEMORY[0x1E696AEC0]);
  debugName = [(MRAVEndpoint *)self debugName];
  capabilitiesCopy = [v14 initWithFormat:@"endpoint=%@, outputDevice=%@", debugName, capabilitiesCopy];

  v17 = [objc_alloc(MEMORY[0x1E696AD60]) initWithFormat:@"%@<%@>", @"outputDeviceVolumeControlCapabilities", uUIDString];
  v18 = v17;
  if (capabilitiesCopy)
  {
    [v17 appendFormat:@" for %@", capabilitiesCopy];
  }

  v19 = _MRLogForCategory(0xAuLL);
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v54 = v18;
    _os_log_impl(&dword_1A2860000, v19, OS_LOG_TYPE_DEFAULT, "Request: %{public}@", buf, 0xCu);
  }

  v44[0] = MEMORY[0x1E69E9820];
  v44[1] = 3221225472;
  v44[2] = __71__MRAVEndpoint_outputDeviceVolumeControlCapabilities_queue_completion___block_invoke;
  v44[3] = &unk_1E76A2C00;
  v45 = capabilitiesCopy;
  v46 = @"outputDeviceVolumeControlCapabilities";
  v47 = uUIDString;
  v48 = v11;
  v49 = queueCopy;
  v50 = completionCopy;
  v35 = queueCopy;
  v20 = completionCopy;
  v21 = v11;
  v22 = uUIDString;
  v23 = capabilitiesCopy;
  v24 = MEMORY[0x1A58E3570](v44);
  v25 = [MRBlockGuard alloc];
  v42[0] = MEMORY[0x1E69E9820];
  v42[1] = 3221225472;
  v42[2] = __71__MRAVEndpoint_outputDeviceVolumeControlCapabilities_queue_completion___block_invoke_2;
  v42[3] = &unk_1E769AD80;
  v26 = v24;
  v43 = v26;
  v27 = [(MRBlockGuard *)v25 initWithTimeout:@"outputDeviceVolumeControlCapabilities" reason:v42 handler:7.0];
  v39[0] = MEMORY[0x1E69E9820];
  v39[1] = 3221225472;
  v39[2] = __71__MRAVEndpoint_outputDeviceVolumeControlCapabilities_queue_completion___block_invoke_3;
  v39[3] = &unk_1E769BD98;
  v40 = v27;
  v41 = v26;
  v28 = v26;
  v29 = v27;
  v30 = MEMORY[0x1A58E3570](v39);
  v51[0] = @"MREndpointConnectionReasonUserInfoKey";
  v51[1] = @"MREndpointConnectionCorrelationIDUserInfoKey";
  v52[0] = @"outputDeviceVolumeControlCapabilities";
  v52[1] = v22;
  v31 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v52 forKeys:v51 count:2];
  v36[0] = MEMORY[0x1E69E9820];
  v36[1] = 3221225472;
  v36[2] = __71__MRAVEndpoint_outputDeviceVolumeControlCapabilities_queue_completion___block_invoke_4;
  v36[3] = &unk_1E769AE80;
  v36[4] = self;
  v37 = capabilitiesCopy;
  v38 = v30;
  v32 = v30;
  v33 = capabilitiesCopy;
  [(MRAVEndpoint *)self connectToExternalDeviceWithUserInfo:v31 completion:v36];

  v34 = *MEMORY[0x1E69E9840];
}

void __71__MRAVEndpoint_outputDeviceVolumeControlCapabilities_queue_completion___block_invoke(void *a1, int a2, void *a3)
{
  v57 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (!v5)
  {
    v14 = MRMediaRemoteVolumeControlCapabilitiesDescription(a2);

    v15 = a1[4];
    v7 = _MRLogForCategory(0xAuLL);
    v16 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
    if (v14)
    {
      if (v15)
      {
        if (!v16)
        {
          goto LABEL_21;
        }

        v17 = a1[5];
        v18 = a1[6];
        v12 = MRMediaRemoteVolumeControlCapabilitiesDescription(a2);
        v19 = a1[4];
        v20 = [MEMORY[0x1E695DF00] date];
        [v20 timeIntervalSinceDate:a1[7]];
        *buf = 138544386;
        v48 = v17;
        v49 = 2114;
        v50 = v18;
        v51 = 2112;
        v52 = v12;
        v53 = 2114;
        v54 = v19;
        v55 = 2048;
        v56 = v21;
        v22 = "Response: %{public}@<%{public}@> returned <%@> for %{public}@ in %.4lf seconds";
        v23 = v7;
        v24 = 52;
      }

      else
      {
        if (!v16)
        {
          goto LABEL_21;
        }

        v32 = a1[5];
        v33 = a1[6];
        v12 = MRMediaRemoteVolumeControlCapabilitiesDescription(a2);
        v20 = [MEMORY[0x1E695DF00] date];
        [v20 timeIntervalSinceDate:a1[7]];
        *buf = 138544130;
        v48 = v32;
        v49 = 2114;
        v50 = v33;
        v51 = 2112;
        v52 = v12;
        v53 = 2048;
        v54 = v34;
        v22 = "Response: %{public}@<%{public}@> returned <%@> in %.4lf seconds";
        v23 = v7;
        v24 = 42;
      }

      _os_log_impl(&dword_1A2860000, v23, OS_LOG_TYPE_DEFAULT, v22, buf, v24);
    }

    else
    {
      if (v15)
      {
        if (!v16)
        {
          goto LABEL_21;
        }

        v26 = a1[5];
        v25 = a1[6];
        v27 = a1[4];
        v12 = [MEMORY[0x1E695DF00] date];
        [v12 timeIntervalSinceDate:a1[7]];
        *buf = 138544130;
        v48 = v26;
        v49 = 2114;
        v50 = v25;
        v51 = 2114;
        v52 = v27;
        v53 = 2048;
        v54 = v28;
        v29 = "Response: %{public}@<%{public}@> returned for %{public}@ in %.4lf seconds";
        v30 = v7;
        v31 = 42;
      }

      else
      {
        if (!v16)
        {
          goto LABEL_21;
        }

        v35 = a1[5];
        v36 = a1[6];
        v12 = [MEMORY[0x1E695DF00] date];
        [v12 timeIntervalSinceDate:a1[7]];
        *buf = 138543874;
        v48 = v35;
        v49 = 2114;
        v50 = v36;
        v51 = 2048;
        v52 = v37;
        v29 = "Response: %{public}@<%{public}@> returned in %.4lf seconds";
        v30 = v7;
        v31 = 32;
      }

      _os_log_impl(&dword_1A2860000, v30, OS_LOG_TYPE_DEFAULT, v29, buf, v31);
    }

    goto LABEL_20;
  }

  v6 = a1[4];
  v7 = _MRLogForCategory(0xAuLL);
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_ERROR);
  if (v6)
  {
    if (!v8)
    {
      goto LABEL_21;
    }

    v10 = a1[5];
    v9 = a1[6];
    v11 = a1[4];
    v12 = [MEMORY[0x1E695DF00] date];
    [v12 timeIntervalSinceDate:a1[7]];
    *buf = 138544386;
    v48 = v10;
    v49 = 2114;
    v50 = v9;
    v51 = 2114;
    v52 = v5;
    v53 = 2114;
    v54 = v11;
    v55 = 2048;
    v56 = v13;
    _os_log_error_impl(&dword_1A2860000, v7, OS_LOG_TYPE_ERROR, "Response: %{public}@<%{public}@> returned with error <%{public}@> for %{public}@ in %.4lf seconds", buf, 0x34u);
LABEL_20:

    goto LABEL_21;
  }

  if (v8)
  {
    __86__MRV2NowPlayingController__loadNowPlayingStateForConfiguration_requestID_completion___block_invoke_53_cold_1(a1, v5, v7);
  }

LABEL_21:

  v38 = a1[9];
  if (v38)
  {
    v39 = a1[8];
    v40 = v39;
    if (!v39)
    {
      v40 = MEMORY[0x1E69E96A0];
      v41 = MEMORY[0x1E69E96A0];
      v38 = a1[9];
    }

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __71__MRAVEndpoint_outputDeviceVolumeControlCapabilities_queue_completion___block_invoke_446;
    block[3] = &unk_1E769BD70;
    v45 = v38;
    v46 = a2;
    v44 = v5;
    dispatch_async(v40, block);
    if (!v39)
    {
    }
  }

  v42 = *MEMORY[0x1E69E9840];
}

void __71__MRAVEndpoint_outputDeviceVolumeControlCapabilities_queue_completion___block_invoke_3(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if ([*(a1 + 32) disarm])
  {
    (*(*(a1 + 40) + 16))();
  }
}

void __71__MRAVEndpoint_outputDeviceVolumeControlCapabilities_queue_completion___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v6 = [(MRAVEndpoint *)*(a1 + 32) translateClusterUIDIfNeeded:?];
    v7 = [*(a1 + 32) outputContextDataSource];
    v8 = 0;
    [v7 volumeControlCapabilitiesForOutputDeviceUID:v6 error:&v8];
    v5 = v8;
  }

  (*(*(a1 + 48) + 16))();
}

- (void)setOutputDeviceVolume:(float)volume outputDevice:(id)device details:(id)details queue:(id)queue completion:(id)completion
{
  v66 = *MEMORY[0x1E69E9840];
  deviceCopy = device;
  detailsCopy = details;
  queueCopy = queue;
  completionCopy = completion;
  v16 = [MEMORY[0x1E695DF00] now];
  v17 = @"Endpoint.setOutputDeviceVolume";
  if (!deviceCopy)
  {
    v17 = @"Endpoint.setVolume";
  }

  v18 = v17;
  v19 = objc_alloc(MEMORY[0x1E696AEC0]);
  selfCopy = self;
  debugName = [(MRAVEndpoint *)self debugName];
  v21 = debugName;
  volumeCopy = volume;
  if (deviceCopy)
  {
    volume = [v19 initWithFormat:@"endpoint=%@, outputDevice=%@, volume=%lf", volumeCopy, debugName, deviceCopy, volume];
  }

  else
  {
    volume = [v19 initWithFormat:@"endpoint=%@, volume=%lf", volumeCopy, debugName, volume, v48];
  }

  v24 = volume;

  v50 = detailsCopy;
  if (detailsCopy)
  {
    v25 = detailsCopy;
  }

  else
  {
    v26 = [MRRequestDetails alloc];
    uUID = [MEMORY[0x1E696AFB0] UUID];
    uUIDString = [uUID UUIDString];
    v25 = [(MRRequestDetails *)v26 initWithName:v18 requestID:uUIDString reason:0];
  }

  v29 = objc_alloc(MEMORY[0x1E696AD60]);
  requestID = [(MRRequestDetails *)v25 requestID];
  v31 = [v29 initWithFormat:@"%@<%@>", v18, requestID];

  if (v24)
  {
    [v31 appendFormat:@" for %@", v24];
  }

  v32 = _MRLogForCategory(0xAuLL);
  if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v65 = v31;
    _os_log_impl(&dword_1A2860000, v32, OS_LOG_TYPE_DEFAULT, "Request: %{public}@", buf, 0xCu);
  }

  v56[0] = MEMORY[0x1E69E9820];
  v56[1] = 3221225472;
  v56[2] = __76__MRAVEndpoint_setOutputDeviceVolume_outputDevice_details_queue_completion___block_invoke;
  v56[3] = &unk_1E76A2C28;
  volumeCopy2 = volume;
  v57 = v24;
  v58 = v18;
  v59 = v25;
  v60 = v16;
  v61 = queueCopy;
  v62 = completionCopy;
  v33 = queueCopy;
  v34 = completionCopy;
  v35 = v16;
  v36 = v25;
  v37 = v18;
  v38 = v24;
  v39 = MEMORY[0x1A58E3570](v56);
  v40 = [MRBlockGuard alloc];
  v54[0] = MEMORY[0x1E69E9820];
  v54[1] = 3221225472;
  v54[2] = __76__MRAVEndpoint_setOutputDeviceVolume_outputDevice_details_queue_completion___block_invoke_2;
  v54[3] = &unk_1E769AD80;
  v41 = v39;
  v55 = v41;
  v42 = [(MRBlockGuard *)v40 initWithTimeout:v37 reason:v54 handler:7.0];
  v51[0] = MEMORY[0x1E69E9820];
  v51[1] = 3221225472;
  v51[2] = __76__MRAVEndpoint_setOutputDeviceVolume_outputDevice_details_queue_completion___block_invoke_3;
  v51[3] = &unk_1E769BCD0;
  v52 = v42;
  v53 = v41;
  v43 = v41;
  v44 = v42;
  v45 = MEMORY[0x1A58E3570](v51);
  *&v46 = volume;
  [(MRAVEndpoint *)selfCopy _setOutputDeviceVolume:deviceCopy outputDevice:v36 details:v33 queue:v45 completion:v46];

  v47 = *MEMORY[0x1E69E9840];
}

void __76__MRAVEndpoint_setOutputDeviceVolume_outputDevice_details_queue_completion___block_invoke(uint64_t a1, void *a2)
{
  v53 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (!v3)
  {
    LODWORD(v4) = *(a1 + 80);
    v13 = [MEMORY[0x1E696AD98] numberWithFloat:v4];

    v14 = *(a1 + 32);
    v6 = _MRLogForCategory(0xAuLL);
    v15 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
    if (v13)
    {
      if (v14)
      {
        if (!v15)
        {
          goto LABEL_21;
        }

        v16 = *(a1 + 40);
        v9 = [*(a1 + 48) requestID];
        LODWORD(v17) = *(a1 + 80);
        v11 = [MEMORY[0x1E696AD98] numberWithFloat:v17];
        v18 = *(a1 + 32);
        v19 = [MEMORY[0x1E695DF00] date];
        [v19 timeIntervalSinceDate:*(a1 + 56)];
        *buf = 138544386;
        v44 = v16;
        v45 = 2114;
        v46 = v9;
        v47 = 2112;
        v48 = v11;
        v49 = 2114;
        v50 = v18;
        v51 = 2048;
        v52 = v20;
        v21 = "Response: %{public}@<%{public}@> returned <%@> for %{public}@ in %.4lf seconds";
        v22 = v6;
        v23 = 52;
      }

      else
      {
        if (!v15)
        {
          goto LABEL_21;
        }

        v30 = *(a1 + 40);
        v9 = [*(a1 + 48) requestID];
        LODWORD(v31) = *(a1 + 80);
        v11 = [MEMORY[0x1E696AD98] numberWithFloat:v31];
        v19 = [MEMORY[0x1E695DF00] date];
        [v19 timeIntervalSinceDate:*(a1 + 56)];
        *buf = 138544130;
        v44 = v30;
        v45 = 2114;
        v46 = v9;
        v47 = 2112;
        v48 = v11;
        v49 = 2048;
        v50 = v32;
        v21 = "Response: %{public}@<%{public}@> returned <%@> in %.4lf seconds";
        v22 = v6;
        v23 = 42;
      }

      _os_log_impl(&dword_1A2860000, v22, OS_LOG_TYPE_DEFAULT, v21, buf, v23);
    }

    else
    {
      if (v14)
      {
        if (!v15)
        {
          goto LABEL_21;
        }

        v24 = *(a1 + 40);
        v9 = [*(a1 + 48) requestID];
        v25 = *(a1 + 32);
        v11 = [MEMORY[0x1E695DF00] date];
        [v11 timeIntervalSinceDate:*(a1 + 56)];
        *buf = 138544130;
        v44 = v24;
        v45 = 2114;
        v46 = v9;
        v47 = 2114;
        v48 = v25;
        v49 = 2048;
        v50 = v26;
        v27 = "Response: %{public}@<%{public}@> returned for %{public}@ in %.4lf seconds";
        v28 = v6;
        v29 = 42;
      }

      else
      {
        if (!v15)
        {
          goto LABEL_21;
        }

        v33 = *(a1 + 40);
        v9 = [*(a1 + 48) requestID];
        v11 = [MEMORY[0x1E695DF00] date];
        [v11 timeIntervalSinceDate:*(a1 + 56)];
        *buf = 138543874;
        v44 = v33;
        v45 = 2114;
        v46 = v9;
        v47 = 2048;
        v48 = v34;
        v27 = "Response: %{public}@<%{public}@> returned in %.4lf seconds";
        v28 = v6;
        v29 = 32;
      }

      _os_log_impl(&dword_1A2860000, v28, OS_LOG_TYPE_DEFAULT, v27, buf, v29);
    }

    goto LABEL_20;
  }

  v5 = *(a1 + 32);
  v6 = _MRLogForCategory(0xAuLL);
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_ERROR);
  if (v5)
  {
    if (!v7)
    {
      goto LABEL_21;
    }

    v8 = *(a1 + 40);
    v9 = [*(a1 + 48) requestID];
    v10 = *(a1 + 32);
    v11 = [MEMORY[0x1E695DF00] date];
    [v11 timeIntervalSinceDate:*(a1 + 56)];
    *buf = 138544386;
    v44 = v8;
    v45 = 2114;
    v46 = v9;
    v47 = 2114;
    v48 = v3;
    v49 = 2114;
    v50 = v10;
    v51 = 2048;
    v52 = v12;
    _os_log_error_impl(&dword_1A2860000, v6, OS_LOG_TYPE_ERROR, "Response: %{public}@<%{public}@> returned with error <%{public}@> for %{public}@ in %.4lf seconds", buf, 0x34u);
LABEL_20:

    goto LABEL_21;
  }

  if (v7)
  {
    __109__MRAVLightweightReconnaissanceSession_searchEndpointsForRoutingContextUID_timeout_details_queue_completion___block_invoke_cold_1(a1, v3, v6);
  }

LABEL_21:

  v35 = *(a1 + 72);
  if (v35)
  {
    v36 = *(a1 + 64);
    v37 = v36;
    if (!v36)
    {
      v37 = MEMORY[0x1E69E96A0];
      v38 = MEMORY[0x1E69E96A0];
      v35 = *(a1 + 72);
    }

    v40[0] = MEMORY[0x1E69E9820];
    v40[1] = 3221225472;
    v40[2] = __76__MRAVEndpoint_setOutputDeviceVolume_outputDevice_details_queue_completion___block_invoke_466;
    v40[3] = &unk_1E769AB28;
    v42 = v35;
    v41 = v3;
    dispatch_async(v37, v40);
    if (!v36)
    {
    }
  }

  v39 = *MEMORY[0x1E69E9840];
}

void __76__MRAVEndpoint_setOutputDeviceVolume_outputDevice_details_queue_completion___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([*(a1 + 32) disarm])
  {
    (*(*(a1 + 40) + 16))();
  }
}

- (void)_setOutputDeviceVolume:(float)volume outputDevice:(id)device details:(id)details queue:(id)queue completion:(id)completion
{
  deviceCopy = device;
  detailsCopy = details;
  queueCopy = queue;
  completionCopy = completion;
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __77__MRAVEndpoint__setOutputDeviceVolume_outputDevice_details_queue_completion___block_invoke;
  v20[3] = &unk_1E76A2C50;
  v20[4] = self;
  v21 = deviceCopy;
  volumeCopy = volume;
  v22 = detailsCopy;
  v23 = queueCopy;
  v24 = completionCopy;
  v16 = completionCopy;
  v17 = queueCopy;
  v18 = detailsCopy;
  v19 = deviceCopy;
  [(MRAVEndpoint *)self connectToExternalDeviceWithOptions:0 details:v18 completion:v20];
}

void __77__MRAVEndpoint__setOutputDeviceVolume_outputDevice_details_queue_completion___block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = *(*(a1 + 64) + 16);

    v3();
  }

  else
  {
    __77__MRAVEndpoint__setOutputDeviceVolume_outputDevice_details_queue_completion___block_invoke_cold_1(a1);
  }
}

- (void)outputDeviceVolume:(id)volume queue:(id)queue completion:(id)completion
{
  v61 = *MEMORY[0x1E69E9840];
  volumeCopy = volume;
  queueCopy = queue;
  completionCopy = completion;
  v11 = [MEMORY[0x1E695DF00] now];
  uUID = [MEMORY[0x1E696AFB0] UUID];
  uUIDString = [uUID UUIDString];

  v14 = @"Endpoint.outputDeviceVolume";
  if (!volumeCopy)
  {
    v14 = @"Endpoint.volume";
  }

  v15 = v14;
  v16 = objc_alloc(MEMORY[0x1E696AEC0]);
  debugName = [(MRAVEndpoint *)self debugName];
  v18 = debugName;
  if (volumeCopy)
  {
    volumeCopy = [v16 initWithFormat:@"endpoint=%@, outputDevice=%@", debugName, volumeCopy];
  }

  else
  {
    volumeCopy = [v16 initWithFormat:@"endpoint=%@", debugName, v39];
  }

  v20 = volumeCopy;

  v21 = [objc_alloc(MEMORY[0x1E696AD60]) initWithFormat:@"%@<%@>", v15, uUIDString];
  v22 = v21;
  if (v20)
  {
    [v21 appendFormat:@" for %@", v20];
  }

  v23 = _MRLogForCategory(0xAuLL);
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v60 = v22;
    _os_log_impl(&dword_1A2860000, v23, OS_LOG_TYPE_DEFAULT, "Request: %{public}@", buf, 0xCu);
  }

  v50[0] = MEMORY[0x1E69E9820];
  v50[1] = 3221225472;
  v50[2] = __52__MRAVEndpoint_outputDeviceVolume_queue_completion___block_invoke;
  v50[3] = &unk_1E76A2C78;
  v51 = v20;
  v52 = v15;
  v53 = uUIDString;
  v54 = v11;
  v55 = queueCopy;
  v56 = completionCopy;
  v41 = queueCopy;
  v40 = completionCopy;
  v24 = v11;
  v25 = uUIDString;
  v26 = v15;
  v27 = v20;
  v28 = MEMORY[0x1A58E3570](v50);
  v29 = [MRBlockGuard alloc];
  v48[0] = MEMORY[0x1E69E9820];
  v48[1] = 3221225472;
  v48[2] = __52__MRAVEndpoint_outputDeviceVolume_queue_completion___block_invoke_2;
  v48[3] = &unk_1E769AD80;
  v30 = v28;
  v49 = v30;
  v31 = [(MRBlockGuard *)v29 initWithTimeout:v26 reason:v48 handler:7.0];
  v45[0] = MEMORY[0x1E69E9820];
  v45[1] = 3221225472;
  v45[2] = __52__MRAVEndpoint_outputDeviceVolume_queue_completion___block_invoke_3;
  v45[3] = &unk_1E769BE10;
  v46 = v31;
  v47 = v30;
  v32 = v30;
  v33 = v31;
  v34 = MEMORY[0x1A58E3570](v45);
  v57[0] = @"MREndpointConnectionReasonUserInfoKey";
  v57[1] = @"MREndpointConnectionCorrelationIDUserInfoKey";
  v58[0] = v26;
  v58[1] = v25;
  v35 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v58 forKeys:v57 count:2];
  v42[0] = MEMORY[0x1E69E9820];
  v42[1] = 3221225472;
  v42[2] = __52__MRAVEndpoint_outputDeviceVolume_queue_completion___block_invoke_4;
  v42[3] = &unk_1E769AE80;
  v42[4] = self;
  v43 = volumeCopy;
  v44 = v34;
  v36 = v34;
  v37 = volumeCopy;
  [(MRAVEndpoint *)self connectToExternalDeviceWithUserInfo:v35 completion:v42];

  v38 = *MEMORY[0x1E69E9840];
}

void __52__MRAVEndpoint_outputDeviceVolume_queue_completion___block_invoke(void *a1, void *a2, float a3)
{
  v59 = *MEMORY[0x1E69E9840];
  v5 = a2;
  if (!v5)
  {
    *&v6 = a3;
    v15 = [MEMORY[0x1E696AD98] numberWithFloat:v6];

    v16 = a1[4];
    v8 = _MRLogForCategory(0xAuLL);
    v17 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
    if (v15)
    {
      if (v16)
      {
        if (!v17)
        {
          goto LABEL_21;
        }

        v19 = a1[5];
        v20 = a1[6];
        *&v18 = a3;
        v13 = [MEMORY[0x1E696AD98] numberWithFloat:v18];
        v21 = a1[4];
        v22 = [MEMORY[0x1E695DF00] date];
        [v22 timeIntervalSinceDate:a1[7]];
        *buf = 138544386;
        v50 = v19;
        v51 = 2114;
        v52 = v20;
        v53 = 2112;
        v54 = v13;
        v55 = 2114;
        v56 = v21;
        v57 = 2048;
        v58 = v23;
        v24 = "Response: %{public}@<%{public}@> returned <%@> for %{public}@ in %.4lf seconds";
        v25 = v8;
        v26 = 52;
      }

      else
      {
        if (!v17)
        {
          goto LABEL_21;
        }

        v34 = a1[5];
        v35 = a1[6];
        *&v18 = a3;
        v13 = [MEMORY[0x1E696AD98] numberWithFloat:v18];
        v22 = [MEMORY[0x1E695DF00] date];
        [v22 timeIntervalSinceDate:a1[7]];
        *buf = 138544130;
        v50 = v34;
        v51 = 2114;
        v52 = v35;
        v53 = 2112;
        v54 = v13;
        v55 = 2048;
        v56 = v36;
        v24 = "Response: %{public}@<%{public}@> returned <%@> in %.4lf seconds";
        v25 = v8;
        v26 = 42;
      }

      _os_log_impl(&dword_1A2860000, v25, OS_LOG_TYPE_DEFAULT, v24, buf, v26);
    }

    else
    {
      if (v16)
      {
        if (!v17)
        {
          goto LABEL_21;
        }

        v28 = a1[5];
        v27 = a1[6];
        v29 = a1[4];
        v13 = [MEMORY[0x1E695DF00] date];
        [v13 timeIntervalSinceDate:a1[7]];
        *buf = 138544130;
        v50 = v28;
        v51 = 2114;
        v52 = v27;
        v53 = 2114;
        v54 = v29;
        v55 = 2048;
        v56 = v30;
        v31 = "Response: %{public}@<%{public}@> returned for %{public}@ in %.4lf seconds";
        v32 = v8;
        v33 = 42;
      }

      else
      {
        if (!v17)
        {
          goto LABEL_21;
        }

        v37 = a1[5];
        v38 = a1[6];
        v13 = [MEMORY[0x1E695DF00] date];
        [v13 timeIntervalSinceDate:a1[7]];
        *buf = 138543874;
        v50 = v37;
        v51 = 2114;
        v52 = v38;
        v53 = 2048;
        v54 = v39;
        v31 = "Response: %{public}@<%{public}@> returned in %.4lf seconds";
        v32 = v8;
        v33 = 32;
      }

      _os_log_impl(&dword_1A2860000, v32, OS_LOG_TYPE_DEFAULT, v31, buf, v33);
    }

    goto LABEL_20;
  }

  v7 = a1[4];
  v8 = _MRLogForCategory(0xAuLL);
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_ERROR);
  if (v7)
  {
    if (!v9)
    {
      goto LABEL_21;
    }

    v11 = a1[5];
    v10 = a1[6];
    v12 = a1[4];
    v13 = [MEMORY[0x1E695DF00] date];
    [v13 timeIntervalSinceDate:a1[7]];
    *buf = 138544386;
    v50 = v11;
    v51 = 2114;
    v52 = v10;
    v53 = 2114;
    v54 = v5;
    v55 = 2114;
    v56 = v12;
    v57 = 2048;
    v58 = v14;
    _os_log_error_impl(&dword_1A2860000, v8, OS_LOG_TYPE_ERROR, "Response: %{public}@<%{public}@> returned with error <%{public}@> for %{public}@ in %.4lf seconds", buf, 0x34u);
LABEL_20:

    goto LABEL_21;
  }

  if (v9)
  {
    __86__MRV2NowPlayingController__loadNowPlayingStateForConfiguration_requestID_completion___block_invoke_53_cold_1(a1, v5, v8);
  }

LABEL_21:

  v40 = a1[9];
  if (v40)
  {
    v41 = a1[8];
    v42 = v41;
    if (!v41)
    {
      v42 = MEMORY[0x1E69E96A0];
      v43 = MEMORY[0x1E69E96A0];
      v40 = a1[9];
    }

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __52__MRAVEndpoint_outputDeviceVolume_queue_completion___block_invoke_473;
    block[3] = &unk_1E769BD70;
    v47 = v40;
    v48 = a3;
    v46 = v5;
    dispatch_async(v42, block);
    if (!v41)
    {
    }
  }

  v44 = *MEMORY[0x1E69E9840];
}

void __52__MRAVEndpoint_outputDeviceVolume_queue_completion___block_invoke_3(uint64_t a1, void *a2, float a3)
{
  v5 = a2;
  if ([*(a1 + 32) disarm])
  {
    (*(*(a1 + 40) + 16))(a3);
  }
}

void __52__MRAVEndpoint_outputDeviceVolume_queue_completion___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4.n128_u64[0] = 0;
  v5 = v3;
  if (!v3)
  {
    __52__MRAVEndpoint_outputDeviceVolume_queue_completion___block_invoke_4_cold_1(a1, v6, &v7, &v8);
    v4.n128_u32[0] = v7;
    v5 = v8;
  }

  (*(*(a1 + 48) + 16))(v4);
}

- (void)adjustOutputDeviceVolume:(int64_t)volume outputDevice:(id)device details:(id)details queue:(id)queue completion:(id)completion
{
  v48 = *MEMORY[0x1E69E9840];
  deviceCopy = device;
  detailsCopy = details;
  queueCopy = queue;
  completionCopy = completion;
  v15 = @"Endpoint.adjustOutputDeviceVolume";
  if (!deviceCopy)
  {
    v15 = @"Endpoint.adjustVolume";
  }

  v16 = v15;
  v17 = objc_alloc(MEMORY[0x1E696AEC0]);
  selfCopy = self;
  debugName = [(MRAVEndpoint *)self debugName];
  v19 = debugName;
  if (deviceCopy)
  {
    deviceCopy = [v17 initWithFormat:@"endpoint=%@, outputDevice=%@", debugName, deviceCopy];
  }

  else
  {
    deviceCopy = [v17 initWithFormat:@"endpoint=%@", debugName, v37];
  }

  v21 = deviceCopy;

  if (detailsCopy)
  {
    v22 = detailsCopy;
  }

  else
  {
    v23 = [MRRequestDetails alloc];
    uUID = [MEMORY[0x1E696AFB0] UUID];
    uUIDString = [uUID UUIDString];
    v22 = [(MRRequestDetails *)v23 initWithName:v16 requestID:uUIDString reason:0];
  }

  v26 = objc_alloc(MEMORY[0x1E696AD60]);
  requestID = [(MRRequestDetails *)v22 requestID];
  v28 = [v26 initWithFormat:@"%@<%@>", v16, requestID];

  if (v21)
  {
    [v28 appendFormat:@" for %@", v21];
  }

  v29 = _MRLogForCategory(0xAuLL);
  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v47 = v28;
    _os_log_impl(&dword_1A2860000, v29, OS_LOG_TYPE_DEFAULT, "Request: %{public}@", buf, 0xCu);
  }

  v40[0] = MEMORY[0x1E69E9820];
  v40[1] = 3221225472;
  v40[2] = __79__MRAVEndpoint_adjustOutputDeviceVolume_outputDevice_details_queue_completion___block_invoke;
  v40[3] = &unk_1E76A2CA0;
  v41 = v21;
  v42 = v16;
  v44 = queueCopy;
  v45 = completionCopy;
  v43 = v22;
  v30 = queueCopy;
  v31 = completionCopy;
  v32 = v22;
  v33 = v16;
  v34 = v21;
  v35 = MEMORY[0x1A58E3570](v40);
  [(MRAVEndpoint *)selfCopy _adjustOutputDeviceVolume:volume outputDevice:deviceCopy details:v32 queue:v30 completion:v35];

  v36 = *MEMORY[0x1E69E9840];
}

void __79__MRAVEndpoint_adjustOutputDeviceVolume_outputDevice_details_queue_completion___block_invoke(uint64_t a1, void *a2)
{
  v38 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = _MRLogForCategory(0xAuLL);
  v6 = v5;
  if (!v3)
  {
    v14 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
    if (v4)
    {
      if (!v14)
      {
        goto LABEL_14;
      }

      v15 = *(a1 + 40);
      v9 = [*(a1 + 48) requestID];
      v16 = *(a1 + 32);
      v11 = [MEMORY[0x1E695DF00] date];
      v12 = [*(a1 + 48) startDate];
      [v11 timeIntervalSinceDate:v12];
      *buf = 138544130;
      v29 = v15;
      v30 = 2114;
      v31 = v9;
      v32 = 2114;
      v33 = v16;
      v34 = 2048;
      v35 = v17;
      v18 = "Response: %{public}@<%{public}@> returned for %{public}@ in %.4lf seconds";
      v19 = v6;
      v20 = 42;
    }

    else
    {
      if (!v14)
      {
        goto LABEL_14;
      }

      v21 = *(a1 + 40);
      v9 = [*(a1 + 48) requestID];
      v11 = [MEMORY[0x1E695DF00] date];
      v12 = [*(a1 + 48) startDate];
      [v11 timeIntervalSinceDate:v12];
      *buf = 138543874;
      v29 = v21;
      v30 = 2114;
      v31 = v9;
      v32 = 2048;
      v33 = v22;
      v18 = "Response: %{public}@<%{public}@> returned in %.4lf seconds";
      v19 = v6;
      v20 = 32;
    }

    _os_log_impl(&dword_1A2860000, v19, OS_LOG_TYPE_DEFAULT, v18, buf, v20);
    goto LABEL_13;
  }

  v7 = os_log_type_enabled(v5, OS_LOG_TYPE_ERROR);
  if (v4)
  {
    if (!v7)
    {
      goto LABEL_14;
    }

    v8 = *(a1 + 40);
    v9 = [*(a1 + 48) requestID];
    v10 = *(a1 + 32);
    v11 = [MEMORY[0x1E695DF00] date];
    v12 = [*(a1 + 48) startDate];
    [v11 timeIntervalSinceDate:v12];
    *buf = 138544386;
    v29 = v8;
    v30 = 2114;
    v31 = v9;
    v32 = 2114;
    v33 = v3;
    v34 = 2114;
    v35 = v10;
    v36 = 2048;
    v37 = v13;
    _os_log_error_impl(&dword_1A2860000, v6, OS_LOG_TYPE_ERROR, "Response: %{public}@<%{public}@> returned with error <%{public}@> for %{public}@ in %.4lf seconds", buf, 0x34u);
LABEL_13:

    goto LABEL_14;
  }

  if (v7)
  {
    __79__MRAVEndpoint_adjustOutputDeviceVolume_outputDevice_details_queue_completion___block_invoke_cold_1(a1, v3, v6);
  }

LABEL_14:

  v23 = *(a1 + 64);
  if (v23)
  {
    v24 = *(a1 + 56);
    v27 = v23;
    v26 = v3;
    msv_dispatch_async_on_queue();
  }

  v25 = *MEMORY[0x1E69E9840];
}

- (void)_adjustOutputDeviceVolume:(int64_t)volume outputDevice:(id)device details:(id)details queue:(id)queue completion:(id)completion
{
  deviceCopy = device;
  detailsCopy = details;
  queueCopy = queue;
  completionCopy = completion;
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __80__MRAVEndpoint__adjustOutputDeviceVolume_outputDevice_details_queue_completion___block_invoke;
  v20[3] = &unk_1E76A2CC8;
  v20[4] = self;
  v21 = deviceCopy;
  v22 = detailsCopy;
  v23 = queueCopy;
  v24 = completionCopy;
  volumeCopy = volume;
  v16 = completionCopy;
  v17 = queueCopy;
  v18 = detailsCopy;
  v19 = deviceCopy;
  [(MRAVEndpoint *)self connectToExternalDeviceWithOptions:0 details:v18 completion:v20];
}

void __80__MRAVEndpoint__adjustOutputDeviceVolume_outputDevice_details_queue_completion___block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = *(*(a1 + 64) + 16);

    v3();
  }

  else
  {
    __80__MRAVEndpoint__adjustOutputDeviceVolume_outputDevice_details_queue_completion___block_invoke_cold_1(a1);
  }
}

- (void)muteOutputDeviceVolume:(BOOL)volume outputDevice:(id)device details:(id)details queue:(id)queue completion:(id)completion
{
  volumeCopy = volume;
  v64 = *MEMORY[0x1E69E9840];
  deviceCopy = device;
  detailsCopy = details;
  queueCopy = queue;
  completionCopy = completion;
  v15 = [MEMORY[0x1E695DF00] now];
  v16 = @"Endpoint.muteOutputDeviceVolume";
  if (!deviceCopy)
  {
    v16 = @"Endpoint.muteVolume";
  }

  v17 = v16;
  v18 = objc_alloc(MEMORY[0x1E696AEC0]);
  selfCopy = self;
  debugName = [(MRAVEndpoint *)self debugName];
  v20 = debugName;
  if (deviceCopy)
  {
    deviceCopy = [v18 initWithFormat:@"endpoint=%@, outputDevice=%@", debugName, deviceCopy];
  }

  else
  {
    deviceCopy = [v18 initWithFormat:@"endpoint=%@", debugName, v46];
  }

  v22 = deviceCopy;

  v49 = detailsCopy;
  if (detailsCopy)
  {
    v23 = detailsCopy;
  }

  else
  {
    v24 = [MRRequestDetails alloc];
    uUID = [MEMORY[0x1E696AFB0] UUID];
    uUIDString = [uUID UUIDString];
    v23 = [(MRRequestDetails *)v24 initWithName:v17 requestID:uUIDString reason:@"API"];
  }

  v27 = objc_alloc(MEMORY[0x1E696AD60]);
  requestID = [(MRRequestDetails *)v23 requestID];
  v29 = [v27 initWithFormat:@"%@<%@>", v17, requestID];

  if (v22)
  {
    [v29 appendFormat:@" for %@", v22];
  }

  v30 = _MRLogForCategory(0xAuLL);
  if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v63 = v29;
    _os_log_impl(&dword_1A2860000, v30, OS_LOG_TYPE_DEFAULT, "Request: %{public}@", buf, 0xCu);
  }

  v55[0] = MEMORY[0x1E69E9820];
  v55[1] = 3221225472;
  v55[2] = __77__MRAVEndpoint_muteOutputDeviceVolume_outputDevice_details_queue_completion___block_invoke;
  v55[3] = &unk_1E769FBE0;
  v56 = v22;
  v57 = v17;
  v58 = v23;
  v59 = v15;
  v60 = queueCopy;
  v61 = completionCopy;
  v31 = queueCopy;
  v32 = completionCopy;
  v33 = v15;
  v34 = v23;
  v35 = v17;
  v36 = v22;
  v37 = MEMORY[0x1A58E3570](v55);
  v38 = [MRBlockGuard alloc];
  name = [(MRRequestDetails *)v34 name];
  v53[0] = MEMORY[0x1E69E9820];
  v53[1] = 3221225472;
  v53[2] = __77__MRAVEndpoint_muteOutputDeviceVolume_outputDevice_details_queue_completion___block_invoke_2;
  v53[3] = &unk_1E769AD80;
  v40 = v37;
  v54 = v40;
  v41 = [(MRBlockGuard *)v38 initWithTimeout:name reason:v53 handler:7.0];

  v50[0] = MEMORY[0x1E69E9820];
  v50[1] = 3221225472;
  v50[2] = __77__MRAVEndpoint_muteOutputDeviceVolume_outputDevice_details_queue_completion___block_invoke_3;
  v50[3] = &unk_1E769BCD0;
  v51 = v41;
  v52 = v40;
  v42 = v40;
  v43 = v41;
  v44 = MEMORY[0x1A58E3570](v50);
  [(MRAVEndpoint *)selfCopy _muteOutputDeviceVolume:volumeCopy outputDevice:deviceCopy details:v34 queue:v31 completion:v44];

  v45 = *MEMORY[0x1E69E9840];
}

void __77__MRAVEndpoint_muteOutputDeviceVolume_outputDevice_details_queue_completion___block_invoke(uint64_t a1, void *a2)
{
  v37 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = _MRLogForCategory(0xAuLL);
  v6 = v5;
  if (!v3)
  {
    v13 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
    if (v4)
    {
      if (!v13)
      {
        goto LABEL_14;
      }

      v14 = *(a1 + 40);
      v9 = [*(a1 + 48) requestID];
      v15 = *(a1 + 32);
      v11 = [MEMORY[0x1E695DF00] date];
      [v11 timeIntervalSinceDate:*(a1 + 56)];
      *buf = 138544130;
      v28 = v14;
      v29 = 2114;
      v30 = v9;
      v31 = 2114;
      v32 = v15;
      v33 = 2048;
      v34 = v16;
      v17 = "Response: %{public}@<%{public}@> returned for %{public}@ in %.4lf seconds";
      v18 = v6;
      v19 = 42;
    }

    else
    {
      if (!v13)
      {
        goto LABEL_14;
      }

      v20 = *(a1 + 40);
      v9 = [*(a1 + 48) requestID];
      v11 = [MEMORY[0x1E695DF00] date];
      [v11 timeIntervalSinceDate:*(a1 + 56)];
      *buf = 138543874;
      v28 = v20;
      v29 = 2114;
      v30 = v9;
      v31 = 2048;
      v32 = v21;
      v17 = "Response: %{public}@<%{public}@> returned in %.4lf seconds";
      v18 = v6;
      v19 = 32;
    }

    _os_log_impl(&dword_1A2860000, v18, OS_LOG_TYPE_DEFAULT, v17, buf, v19);
    goto LABEL_13;
  }

  v7 = os_log_type_enabled(v5, OS_LOG_TYPE_ERROR);
  if (v4)
  {
    if (!v7)
    {
      goto LABEL_14;
    }

    v8 = *(a1 + 40);
    v9 = [*(a1 + 48) requestID];
    v10 = *(a1 + 32);
    v11 = [MEMORY[0x1E695DF00] date];
    [v11 timeIntervalSinceDate:*(a1 + 56)];
    *buf = 138544386;
    v28 = v8;
    v29 = 2114;
    v30 = v9;
    v31 = 2114;
    v32 = v3;
    v33 = 2114;
    v34 = v10;
    v35 = 2048;
    v36 = v12;
    _os_log_error_impl(&dword_1A2860000, v6, OS_LOG_TYPE_ERROR, "Response: %{public}@<%{public}@> returned with error <%{public}@> for %{public}@ in %.4lf seconds", buf, 0x34u);
LABEL_13:

    goto LABEL_14;
  }

  if (v7)
  {
    __109__MRAVLightweightReconnaissanceSession_searchEndpointsForRoutingContextUID_timeout_details_queue_completion___block_invoke_cold_1(a1, v3, v6);
  }

LABEL_14:

  v22 = *(a1 + 72);
  if (v22)
  {
    v23 = *(a1 + 64);
    v26 = v22;
    v25 = v3;
    msv_dispatch_async_on_queue();
  }

  v24 = *MEMORY[0x1E69E9840];
}

void __77__MRAVEndpoint_muteOutputDeviceVolume_outputDevice_details_queue_completion___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([*(a1 + 32) disarm])
  {
    (*(*(a1 + 40) + 16))();
  }
}

- (void)_muteOutputDeviceVolume:(BOOL)volume outputDevice:(id)device details:(id)details queue:(id)queue completion:(id)completion
{
  deviceCopy = device;
  detailsCopy = details;
  queueCopy = queue;
  completionCopy = completion;
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __78__MRAVEndpoint__muteOutputDeviceVolume_outputDevice_details_queue_completion___block_invoke;
  v20[3] = &unk_1E76A2CF0;
  v20[4] = self;
  v21 = deviceCopy;
  volumeCopy = volume;
  v22 = detailsCopy;
  v23 = queueCopy;
  v24 = completionCopy;
  v16 = completionCopy;
  v17 = queueCopy;
  v18 = detailsCopy;
  v19 = deviceCopy;
  [(MRAVEndpoint *)self connectToExternalDeviceWithOptions:0 details:v18 completion:v20];
}

void __78__MRAVEndpoint__muteOutputDeviceVolume_outputDevice_details_queue_completion___block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = *(*(a1 + 64) + 16);

    v3();
  }

  else
  {
    __78__MRAVEndpoint__muteOutputDeviceVolume_outputDevice_details_queue_completion___block_invoke_cold_1(a1);
  }
}

- (BOOL)isVolumeMuted
{
  outputContextDataSource = [(MRAVEndpoint *)self outputContextDataSource];
  isVolumeMuted = [outputContextDataSource isVolumeMuted];

  return isVolumeMuted;
}

- (BOOL)isCarPlayVideoAllowed
{
  outputDevices = [(MRAVEndpoint *)self outputDevices];
  v3 = [outputDevices mr_any:&__block_literal_global_493];

  return v3;
}

- (BOOL)isCarPlayVideoActive
{
  outputDevices = [(MRAVEndpoint *)self outputDevices];
  v3 = [outputDevices mr_any:&__block_literal_global_495];

  return v3;
}

- (void)setCarPlayVideoActive:(BOOL)active completion:(id)completion
{
  if (completion)
  {
    v5 = MEMORY[0x1E696ABC0];
    completionCopy = completion;
    v7 = [v5 alloc];
    v8 = MEMORY[0x1E696AEC0];
    v9 = objc_opt_class();
    v12 = NSStringFromClass(v9);
    v10 = [v8 stringWithFormat:@"Operation not implemented in %@", v12];
    v11 = [v7 initWithMRError:6 description:v10];
    (*(completion + 2))(completionCopy, v11);
  }
}

- (void)outputDeviceVolumeMuted:(id)muted queue:(id)queue completion:(id)completion
{
  v61 = *MEMORY[0x1E69E9840];
  mutedCopy = muted;
  queueCopy = queue;
  completionCopy = completion;
  v11 = [MEMORY[0x1E695DF00] now];
  uUID = [MEMORY[0x1E696AFB0] UUID];
  uUIDString = [uUID UUIDString];

  v14 = @"Endpoint.outputDeviceVolumeMuted";
  if (!mutedCopy)
  {
    v14 = @"Endpoint.volumeMuted";
  }

  v15 = v14;
  v16 = objc_alloc(MEMORY[0x1E696AEC0]);
  debugName = [(MRAVEndpoint *)self debugName];
  v18 = debugName;
  if (mutedCopy)
  {
    mutedCopy = [v16 initWithFormat:@"endpoint=%@, outputDevice=%@", debugName, mutedCopy];
  }

  else
  {
    mutedCopy = [v16 initWithFormat:@"endpoint=%@", debugName, v39];
  }

  v20 = mutedCopy;

  v21 = [objc_alloc(MEMORY[0x1E696AD60]) initWithFormat:@"%@<%@>", v15, uUIDString];
  v22 = v21;
  if (v20)
  {
    [v21 appendFormat:@" for %@", v20];
  }

  v23 = _MRLogForCategory(0xAuLL);
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v60 = v22;
    _os_log_impl(&dword_1A2860000, v23, OS_LOG_TYPE_DEFAULT, "Request: %{public}@", buf, 0xCu);
  }

  v50[0] = MEMORY[0x1E69E9820];
  v50[1] = 3221225472;
  v50[2] = __57__MRAVEndpoint_outputDeviceVolumeMuted_queue_completion___block_invoke;
  v50[3] = &unk_1E76A2D40;
  v51 = v20;
  v52 = v15;
  v53 = uUIDString;
  v54 = v11;
  v55 = queueCopy;
  v56 = completionCopy;
  v41 = queueCopy;
  v40 = completionCopy;
  v24 = v11;
  v25 = uUIDString;
  v26 = v15;
  v27 = v20;
  v28 = MEMORY[0x1A58E3570](v50);
  v29 = [MRBlockGuard alloc];
  v48[0] = MEMORY[0x1E69E9820];
  v48[1] = 3221225472;
  v48[2] = __57__MRAVEndpoint_outputDeviceVolumeMuted_queue_completion___block_invoke_2;
  v48[3] = &unk_1E769AD80;
  v30 = v28;
  v49 = v30;
  v31 = [(MRBlockGuard *)v29 initWithTimeout:v26 reason:v48 handler:7.0];
  v45[0] = MEMORY[0x1E69E9820];
  v45[1] = 3221225472;
  v45[2] = __57__MRAVEndpoint_outputDeviceVolumeMuted_queue_completion___block_invoke_3;
  v45[3] = &unk_1E76A2D68;
  v46 = v31;
  v47 = v30;
  v32 = v30;
  v33 = v31;
  v34 = MEMORY[0x1A58E3570](v45);
  v57[0] = @"MREndpointConnectionReasonUserInfoKey";
  v57[1] = @"MREndpointConnectionCorrelationIDUserInfoKey";
  v58[0] = v26;
  v58[1] = v25;
  v35 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v58 forKeys:v57 count:2];
  v42[0] = MEMORY[0x1E69E9820];
  v42[1] = 3221225472;
  v42[2] = __57__MRAVEndpoint_outputDeviceVolumeMuted_queue_completion___block_invoke_4;
  v42[3] = &unk_1E769AE80;
  v42[4] = self;
  v43 = mutedCopy;
  v44 = v34;
  v36 = v34;
  v37 = mutedCopy;
  [(MRAVEndpoint *)self connectToExternalDeviceWithUserInfo:v35 completion:v42];

  v38 = *MEMORY[0x1E69E9840];
}

void __57__MRAVEndpoint_outputDeviceVolumeMuted_queue_completion___block_invoke(void *a1, uint64_t a2, void *a3)
{
  v57 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (!v5)
  {
    v14 = [MEMORY[0x1E696AD98] numberWithBool:a2];

    v15 = a1[4];
    v7 = _MRLogForCategory(0xAuLL);
    v16 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
    if (v14)
    {
      if (v15)
      {
        if (!v16)
        {
          goto LABEL_21;
        }

        v17 = a1[5];
        v18 = a1[6];
        v12 = [MEMORY[0x1E696AD98] numberWithBool:a2];
        v19 = a1[4];
        v20 = [MEMORY[0x1E695DF00] date];
        [v20 timeIntervalSinceDate:a1[7]];
        *buf = 138544386;
        v48 = v17;
        v49 = 2114;
        v50 = v18;
        v51 = 2112;
        v52 = v12;
        v53 = 2114;
        v54 = v19;
        v55 = 2048;
        v56 = v21;
        v22 = "Response: %{public}@<%{public}@> returned <%@> for %{public}@ in %.4lf seconds";
        v23 = v7;
        v24 = 52;
      }

      else
      {
        if (!v16)
        {
          goto LABEL_21;
        }

        v32 = a1[5];
        v33 = a1[6];
        v12 = [MEMORY[0x1E696AD98] numberWithBool:a2];
        v20 = [MEMORY[0x1E695DF00] date];
        [v20 timeIntervalSinceDate:a1[7]];
        *buf = 138544130;
        v48 = v32;
        v49 = 2114;
        v50 = v33;
        v51 = 2112;
        v52 = v12;
        v53 = 2048;
        v54 = v34;
        v22 = "Response: %{public}@<%{public}@> returned <%@> in %.4lf seconds";
        v23 = v7;
        v24 = 42;
      }

      _os_log_impl(&dword_1A2860000, v23, OS_LOG_TYPE_DEFAULT, v22, buf, v24);
    }

    else
    {
      if (v15)
      {
        if (!v16)
        {
          goto LABEL_21;
        }

        v26 = a1[5];
        v25 = a1[6];
        v27 = a1[4];
        v12 = [MEMORY[0x1E695DF00] date];
        [v12 timeIntervalSinceDate:a1[7]];
        *buf = 138544130;
        v48 = v26;
        v49 = 2114;
        v50 = v25;
        v51 = 2114;
        v52 = v27;
        v53 = 2048;
        v54 = v28;
        v29 = "Response: %{public}@<%{public}@> returned for %{public}@ in %.4lf seconds";
        v30 = v7;
        v31 = 42;
      }

      else
      {
        if (!v16)
        {
          goto LABEL_21;
        }

        v35 = a1[5];
        v36 = a1[6];
        v12 = [MEMORY[0x1E695DF00] date];
        [v12 timeIntervalSinceDate:a1[7]];
        *buf = 138543874;
        v48 = v35;
        v49 = 2114;
        v50 = v36;
        v51 = 2048;
        v52 = v37;
        v29 = "Response: %{public}@<%{public}@> returned in %.4lf seconds";
        v30 = v7;
        v31 = 32;
      }

      _os_log_impl(&dword_1A2860000, v30, OS_LOG_TYPE_DEFAULT, v29, buf, v31);
    }

    goto LABEL_20;
  }

  v6 = a1[4];
  v7 = _MRLogForCategory(0xAuLL);
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_ERROR);
  if (v6)
  {
    if (!v8)
    {
      goto LABEL_21;
    }

    v10 = a1[5];
    v9 = a1[6];
    v11 = a1[4];
    v12 = [MEMORY[0x1E695DF00] date];
    [v12 timeIntervalSinceDate:a1[7]];
    *buf = 138544386;
    v48 = v10;
    v49 = 2114;
    v50 = v9;
    v51 = 2114;
    v52 = v5;
    v53 = 2114;
    v54 = v11;
    v55 = 2048;
    v56 = v13;
    _os_log_error_impl(&dword_1A2860000, v7, OS_LOG_TYPE_ERROR, "Response: %{public}@<%{public}@> returned with error <%{public}@> for %{public}@ in %.4lf seconds", buf, 0x34u);
LABEL_20:

    goto LABEL_21;
  }

  if (v8)
  {
    __86__MRV2NowPlayingController__loadNowPlayingStateForConfiguration_requestID_completion___block_invoke_53_cold_1(a1, v5, v7);
  }

LABEL_21:

  v38 = a1[9];
  if (v38)
  {
    v39 = a1[8];
    v40 = v39;
    if (!v39)
    {
      v40 = MEMORY[0x1E69E96A0];
      v41 = MEMORY[0x1E69E96A0];
      v38 = a1[9];
    }

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __57__MRAVEndpoint_outputDeviceVolumeMuted_queue_completion___block_invoke_505;
    block[3] = &unk_1E76A2D18;
    v45 = v38;
    v46 = a2;
    v44 = v5;
    dispatch_async(v40, block);
    if (!v39)
    {
    }
  }

  v42 = *MEMORY[0x1E69E9840];
}

void __57__MRAVEndpoint_outputDeviceVolumeMuted_queue_completion___block_invoke_3(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if ([*(a1 + 32) disarm])
  {
    (*(*(a1 + 40) + 16))();
  }
}

void __57__MRAVEndpoint_outputDeviceVolumeMuted_queue_completion___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    __57__MRAVEndpoint_outputDeviceVolumeMuted_queue_completion___block_invoke_4_cold_1(a1, v6, &v7, &v8);
    v5 = v8;
  }

  (*(*(a1 + 48) + 16))();
}

- (void)waitForPlaybackWithTimeout:(double)timeout queue:(id)queue completion:(id)completion
{
  v66 = *MEMORY[0x1E69E9840];
  queueCopy = queue;
  completionCopy = completion;
  v10 = [MEMORY[0x1E695DF00] now];
  uUID = [MEMORY[0x1E696AFB0] UUID];
  uUIDString = [uUID UUIDString];

  v13 = objc_alloc(MEMORY[0x1E696AEC0]);
  debugName = [(MRAVEndpoint *)self debugName];
  v15 = [v13 initWithFormat:@"%@-%lf", debugName, *&timeout];

  v16 = [objc_alloc(MEMORY[0x1E696AD60]) initWithFormat:@"%@<%@>", @"Endpoint.waitForPlaybackWithTimeout", uUIDString];
  v17 = v16;
  if (v15)
  {
    [v16 appendFormat:@" for %@", v15];
  }

  v18 = _MRLogForCategory(0xAuLL);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138543362;
    *(&buf + 4) = v17;
    _os_log_impl(&dword_1A2860000, v18, OS_LOG_TYPE_DEFAULT, "Request: %{public}@", &buf, 0xCu);
  }

  v19 = objc_alloc_init(MRNowPlayingControllerHelper);
  *&buf = 0;
  *(&buf + 1) = &buf;
  v62 = 0x3032000000;
  v63 = __Block_byref_object_copy__37;
  v64 = __Block_byref_object_dispose__37;
  v65 = 0;
  v52[0] = MEMORY[0x1E69E9820];
  v52[1] = 3221225472;
  v52[2] = __60__MRAVEndpoint_waitForPlaybackWithTimeout_queue_completion___block_invoke;
  v52[3] = &unk_1E76A2D90;
  v20 = v19;
  v53 = v20;
  p_buf = &buf;
  v21 = v15;
  v54 = v21;
  v55 = @"Endpoint.waitForPlaybackWithTimeout";
  v22 = uUIDString;
  v56 = v22;
  v23 = v10;
  v57 = v23;
  v40 = completionCopy;
  v59 = v40;
  v39 = queueCopy;
  v58 = v39;
  v24 = MEMORY[0x1A58E3570](v52);
  v25 = [MRBlockGuard alloc];
  v50[0] = MEMORY[0x1E69E9820];
  v50[1] = 3221225472;
  v50[2] = __60__MRAVEndpoint_waitForPlaybackWithTimeout_queue_completion___block_invoke_2;
  v50[3] = &unk_1E769AD80;
  v26 = v24;
  v51 = v26;
  v27 = [(MRBlockGuard *)v25 initWithTimeout:@"Endpoint.waitForPlaybackWithTimeout" reason:v50 handler:timeout];
  v47[0] = MEMORY[0x1E69E9820];
  v47[1] = 3221225472;
  v47[2] = __60__MRAVEndpoint_waitForPlaybackWithTimeout_queue_completion___block_invoke_3;
  v47[3] = &unk_1E769BCD0;
  v28 = v27;
  v48 = v28;
  v29 = v26;
  v49 = v29;
  v30 = MEMORY[0x1A58E3570](v47);
  v31 = [[MRDestination alloc] initWithEndpoint:self];
  v32 = [[MRNowPlayingControllerConfiguration alloc] initWithDestination:v31];
  [(MRNowPlayingControllerConfiguration *)v32 setRequestPlaybackState:1];
  v33 = [[MRNowPlayingController alloc] initWithConfiguration:v32];
  v34 = *(*(&buf + 1) + 40);
  *(*(&buf + 1) + 40) = v33;

  v45[0] = MEMORY[0x1E69E9820];
  v45[1] = 3221225472;
  v45[2] = __60__MRAVEndpoint_waitForPlaybackWithTimeout_queue_completion___block_invoke_4;
  v45[3] = &unk_1E76A2DB8;
  v35 = v30;
  v46 = v35;
  [(MRNowPlayingControllerHelper *)v20 setDidLoadResponse:v45];
  v43[0] = MEMORY[0x1E69E9820];
  v43[1] = 3221225472;
  v43[2] = __60__MRAVEndpoint_waitForPlaybackWithTimeout_queue_completion___block_invoke_5;
  v43[3] = &unk_1E769AD80;
  v36 = v35;
  v44 = v36;
  [(MRNowPlayingControllerHelper *)v20 setDidFailWithError:v43];
  v41[0] = MEMORY[0x1E69E9820];
  v41[1] = 3221225472;
  v41[2] = __60__MRAVEndpoint_waitForPlaybackWithTimeout_queue_completion___block_invoke_6;
  v41[3] = &unk_1E769F0B0;
  v37 = v36;
  v42 = v37;
  [(MRNowPlayingControllerHelper *)v20 setPlaybackStateDidChange:v41];
  [*(*(&buf + 1) + 40) setDelegate:v20];
  [*(*(&buf + 1) + 40) beginLoadingUpdates];

  _Block_object_dispose(&buf, 8);
  v38 = *MEMORY[0x1E69E9840];
}

void __60__MRAVEndpoint_waitForPlaybackWithTimeout_queue_completion___block_invoke(uint64_t a1, void *a2)
{
  v43 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(a1 + 32);
  [*(*(*(a1 + 88) + 8) + 40) endLoadingUpdates];
  v5 = *(a1 + 40);
  v6 = _MRLogForCategory(0xAuLL);
  v7 = v6;
  if (!v3)
  {
    v14 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
    if (v5)
    {
      if (!v14)
      {
        goto LABEL_14;
      }

      v16 = *(a1 + 48);
      v15 = *(a1 + 56);
      v17 = *(a1 + 40);
      v12 = [MEMORY[0x1E695DF00] date];
      [v12 timeIntervalSinceDate:*(a1 + 64)];
      *buf = 138544130;
      v34 = v16;
      v35 = 2114;
      v36 = v15;
      v37 = 2114;
      v38 = v17;
      v39 = 2048;
      v40 = v18;
      v19 = "Response: %{public}@<%{public}@> returned for %{public}@ in %.4lf seconds";
      v20 = v7;
      v21 = 42;
    }

    else
    {
      if (!v14)
      {
        goto LABEL_14;
      }

      v22 = *(a1 + 48);
      v23 = *(a1 + 56);
      v12 = [MEMORY[0x1E695DF00] date];
      [v12 timeIntervalSinceDate:*(a1 + 64)];
      *buf = 138543874;
      v34 = v22;
      v35 = 2114;
      v36 = v23;
      v37 = 2048;
      v38 = v24;
      v19 = "Response: %{public}@<%{public}@> returned in %.4lf seconds";
      v20 = v7;
      v21 = 32;
    }

    _os_log_impl(&dword_1A2860000, v20, OS_LOG_TYPE_DEFAULT, v19, buf, v21);
    goto LABEL_13;
  }

  v8 = os_log_type_enabled(v6, OS_LOG_TYPE_ERROR);
  if (v5)
  {
    if (!v8)
    {
      goto LABEL_14;
    }

    v10 = *(a1 + 48);
    v9 = *(a1 + 56);
    v11 = *(a1 + 40);
    v12 = [MEMORY[0x1E695DF00] date];
    [v12 timeIntervalSinceDate:*(a1 + 64)];
    *buf = 138544386;
    v34 = v10;
    v35 = 2114;
    v36 = v9;
    v37 = 2114;
    v38 = v3;
    v39 = 2114;
    v40 = v11;
    v41 = 2048;
    v42 = v13;
    _os_log_error_impl(&dword_1A2860000, v7, OS_LOG_TYPE_ERROR, "Response: %{public}@<%{public}@> returned with error <%{public}@> for %{public}@ in %.4lf seconds", buf, 0x34u);
LABEL_13:

    goto LABEL_14;
  }

  if (v8)
  {
    __60__MRAVEndpoint_waitForPlaybackWithTimeout_queue_completion___block_invoke_cold_1(a1, v3, v7);
  }

LABEL_14:

  v25 = *(a1 + 80);
  if (v25)
  {
    v26 = *(a1 + 72);
    v27 = v26;
    if (!v26)
    {
      v27 = MEMORY[0x1E69E96A0];
      v28 = MEMORY[0x1E69E96A0];
      v25 = *(a1 + 80);
    }

    v30[0] = MEMORY[0x1E69E9820];
    v30[1] = 3221225472;
    v30[2] = __60__MRAVEndpoint_waitForPlaybackWithTimeout_queue_completion___block_invoke_514;
    v30[3] = &unk_1E769AB28;
    v32 = v25;
    v31 = v3;
    dispatch_async(v27, v30);
    if (!v26)
    {
    }
  }

  v29 = *MEMORY[0x1E69E9840];
}

void __60__MRAVEndpoint_waitForPlaybackWithTimeout_queue_completion___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([*(a1 + 32) disarm])
  {
    (*(*(a1 + 40) + 16))();
  }
}

uint64_t __60__MRAVEndpoint_waitForPlaybackWithTimeout_queue_completion___block_invoke_4(uint64_t a1, void *a2)
{
  result = MRMediaRemotePlaybackStateIsAdvancing([a2 playbackState]);
  if (result)
  {
    v4 = *(*(a1 + 32) + 16);

    return v4();
  }

  return result;
}

uint64_t __60__MRAVEndpoint_waitForPlaybackWithTimeout_queue_completion___block_invoke_6(uint64_t a1, int a2)
{
  result = MRMediaRemotePlaybackStateIsAdvancing(a2);
  if (result)
  {
    v4 = *(*(a1 + 32) + 16);

    return v4();
  }

  return result;
}

- (void)setListeningMode:(id)mode outputDeviceUID:(id)d queue:(id)queue completion:(id)completion
{
  v27[1] = *MEMORY[0x1E69E9840];
  modeCopy = mode;
  dCopy = d;
  queueCopy = queue;
  completionCopy = completion;
  if (!queueCopy)
  {
    queueCopy = MEMORY[0x1E69E96A0];
    v14 = MEMORY[0x1E69E96A0];
  }

  v26 = @"MREndpointConnectionReasonUserInfoKey";
  v27[0] = @"setListeningMode";
  v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v27 forKeys:&v26 count:1];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __66__MRAVEndpoint_setListeningMode_outputDeviceUID_queue_completion___block_invoke;
  v21[3] = &unk_1E76A1BC0;
  v21[4] = self;
  v22 = modeCopy;
  v23 = dCopy;
  v24 = queueCopy;
  v25 = completionCopy;
  v16 = completionCopy;
  v17 = queueCopy;
  v18 = dCopy;
  v19 = modeCopy;
  [(MRAVEndpoint *)self connectToExternalDeviceWithUserInfo:v15 completion:v21];

  v20 = *MEMORY[0x1E69E9840];
}

void __66__MRAVEndpoint_setListeningMode_outputDeviceUID_queue_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = *(a1 + 64);
    if (v4)
    {
      v5 = *(a1 + 56);
      v7[0] = MEMORY[0x1E69E9820];
      v7[1] = 3221225472;
      v7[2] = __66__MRAVEndpoint_setListeningMode_outputDeviceUID_queue_completion___block_invoke_2;
      v7[3] = &unk_1E769AB28;
      v9 = v4;
      v8 = v3;
      dispatch_async(v5, v7);
    }
  }

  else
  {
    v6 = [*(a1 + 32) externalDevice];
    [v6 setListeningMode:*(a1 + 40) outputDeviceUID:*(a1 + 48) queue:*(a1 + 56) completion:*(a1 + 64)];
  }
}

- (void)setAllowsHeadTrackedSpatialAudio:(BOOL)audio outputDeviceUID:(id)d queue:(id)queue completion:(id)completion
{
  queueCopy = queue;
  completionCopy = completion;
  if (!queueCopy)
  {
    queueCopy = MEMORY[0x1E69E96A0];
    v9 = MEMORY[0x1E69E96A0];
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __82__MRAVEndpoint_setAllowsHeadTrackedSpatialAudio_outputDeviceUID_queue_completion___block_invoke;
  block[3] = &unk_1E769AD58;
  v12 = completionCopy;
  v10 = completionCopy;
  dispatch_async(queueCopy, block);
}

- (void)setHeadTrackedSpatialAudioMode:(id)mode outputDeviceUID:(id)d queue:(id)queue completion:(id)completion
{
  queueCopy = queue;
  completionCopy = completion;
  if (!queueCopy)
  {
    queueCopy = MEMORY[0x1E69E96A0];
    v9 = MEMORY[0x1E69E96A0];
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __80__MRAVEndpoint_setHeadTrackedSpatialAudioMode_outputDeviceUID_queue_completion___block_invoke;
  block[3] = &unk_1E769AD58;
  v12 = completionCopy;
  v10 = completionCopy;
  dispatch_async(queueCopy, block);
}

- (void)setConversationDetectionEnabled:(BOOL)enabled outputDeviceUID:(id)d queue:(id)queue completion:(id)completion
{
  v25[1] = *MEMORY[0x1E69E9840];
  dCopy = d;
  queueCopy = queue;
  completionCopy = completion;
  if (!queueCopy)
  {
    queueCopy = MEMORY[0x1E69E96A0];
    v13 = MEMORY[0x1E69E96A0];
  }

  v24 = @"MREndpointConnectionReasonUserInfoKey";
  v25[0] = @"setConversationDetectionEnabled";
  v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:&v24 count:1];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __81__MRAVEndpoint_setConversationDetectionEnabled_outputDeviceUID_queue_completion___block_invoke;
  v19[3] = &unk_1E76A2DE0;
  enabledCopy = enabled;
  v19[4] = self;
  v20 = dCopy;
  v21 = queueCopy;
  v22 = completionCopy;
  v15 = completionCopy;
  v16 = queueCopy;
  v17 = dCopy;
  [(MRAVEndpoint *)self connectToExternalDeviceWithUserInfo:v14 completion:v19];

  v18 = *MEMORY[0x1E69E9840];
}

void __81__MRAVEndpoint_setConversationDetectionEnabled_outputDeviceUID_queue_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = *(a1 + 56);
    if (v4)
    {
      v5 = *(a1 + 48);
      v7[0] = MEMORY[0x1E69E9820];
      v7[1] = 3221225472;
      v7[2] = __81__MRAVEndpoint_setConversationDetectionEnabled_outputDeviceUID_queue_completion___block_invoke_2;
      v7[3] = &unk_1E769AB28;
      v9 = v4;
      v8 = v3;
      dispatch_async(v5, v7);
    }
  }

  else
  {
    v6 = [*(a1 + 32) externalDevice];
    [v6 setConversationDetectionEnabled:*(a1 + 64) outputDeviceUID:*(a1 + 40) queue:*(a1 + 48) completion:*(a1 + 56)];
  }
}

- (id)outputDevicesMatchingPredicate:(id)predicate
{
  v19 = *MEMORY[0x1E69E9840];
  predicateCopy = predicate;
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if (predicateCopy)
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    outputDevices = [(MRAVEndpoint *)self outputDevices];
    v7 = [outputDevices countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v15;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v15 != v9)
          {
            objc_enumerationMutation(outputDevices);
          }

          v11 = *(*(&v14 + 1) + 8 * i);
          if (predicateCopy[2](predicateCopy, v11))
          {
            [v5 addObject:v11];
          }
        }

        v8 = [outputDevices countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v8);
    }
  }

  v12 = *MEMORY[0x1E69E9840];

  return v5;
}

- (id)outputDeviceUIDsMatchingPredicate:(id)predicate
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = [(MRAVEndpoint *)self outputDevicesMatchingPredicate:predicate];
  v4 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v3, "count")}];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(&v13 + 1) + 8 * i) uid];
        if (v10)
        {
          [v4 addObject:v10];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  v11 = *MEMORY[0x1E69E9840];

  return v4;
}

- (BOOL)effectivelyEqual:(id)equal
{
  equalCopy = equal;
  if (![(MRAVEndpoint *)self isEqual:equalCopy])
  {
    goto LABEL_4;
  }

  v5 = objc_alloc(MEMORY[0x1E695DFB8]);
  outputDeviceUIDs = [(MRAVEndpoint *)self outputDeviceUIDs];
  v7 = [v5 initWithArray:outputDeviceUIDs];

  v8 = objc_alloc(MEMORY[0x1E695DFB8]);
  outputDeviceUIDs2 = [equalCopy outputDeviceUIDs];
  v10 = [v8 initWithArray:outputDeviceUIDs2];

  LOBYTE(outputDeviceUIDs2) = [v7 isEqualToOrderedSet:v10];
  if (outputDeviceUIDs2)
  {
    v11 = 1;
  }

  else
  {
LABEL_4:
    v11 = 0;
  }

  return v11;
}

- (BOOL)containsOutputDeviceWithUID:(id)d
{
  dCopy = d;
  v5 = [(MRAVEndpoint *)self outputDeviceForUID:dCopy];

  if (v5)
  {
    v6 = 1;
  }

  else
  {
    groupLeader = [(MRAVEndpoint *)self groupLeader];
    v6 = ([groupLeader supportsMultiplayer] & 1) == 0 && (objc_msgSend(groupLeader, "containsUID:", dCopy) & 1) != 0;
  }

  return v6;
}

- (id)outputDeviceForUID:(id)d
{
  dCopy = d;
  outputDevices = [(MRAVEndpoint *)self outputDevices];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __35__MRAVEndpoint_outputDeviceForUID___block_invoke;
  v9[3] = &unk_1E769CDC0;
  v10 = dCopy;
  v6 = dCopy;
  v7 = [outputDevices msv_firstWhere:v9];

  return v7;
}

- (void)setOutputContextDataSource:(id)source
{
  sourceCopy = source;
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  outputContextDataSource = selfCopy->_outputContextDataSource;
  if (outputContextDataSource != sourceCopy)
  {
    if (outputContextDataSource)
    {
      [defaultCenter removeObserver:selfCopy name:@"MROutputContextDataSourceOutputDeviceDidChangeVolumeControlCapabilitiesNotification" object:?];
      [defaultCenter removeObserver:selfCopy name:@"MROutputContextDataSourceOutputDeviceDidChangeVolumeNotification" object:selfCopy->_outputContextDataSource];
      [defaultCenter removeObserver:selfCopy name:@"MROutputContextDataSourceOutputDeviceDidChangeVolumeMutedNotification" object:selfCopy->_outputContextDataSource];
      [defaultCenter removeObserver:selfCopy name:@"MROutputContextDataSourceDidAddOutputDeviceNotification" object:selfCopy->_outputContextDataSource];
      [defaultCenter removeObserver:selfCopy name:@"MROutputContextDataSourceDidChangeOutputDeviceNotification" object:selfCopy->_outputContextDataSource];
      [defaultCenter removeObserver:selfCopy name:@"MROutputContextDataSourceDidRemoveOutputDeviceNotification" object:selfCopy->_outputContextDataSource];
      [defaultCenter removeObserver:selfCopy name:@"MROutputContextDataSourceDidChangePredictedOutputDeviceNotification" object:selfCopy->_outputContextDataSource];
    }

    objc_storeStrong(&selfCopy->_outputContextDataSource, source);
    if (selfCopy->_outputContextDataSource)
    {
      [defaultCenter addObserver:selfCopy selector:sel_outputContextDataSourceOutputDeviceDidChangeVolumeControlCapabilities_ name:@"MROutputContextDataSourceOutputDeviceDidChangeVolumeControlCapabilitiesNotification" object:?];
      [defaultCenter addObserver:selfCopy selector:sel_outputContextDataSourceOutputDeviceDidChangeVolume_ name:@"MROutputContextDataSourceOutputDeviceDidChangeVolumeNotification" object:selfCopy->_outputContextDataSource];
      [defaultCenter addObserver:selfCopy selector:sel_outputContextDataSourceOutputDeviceDidChangeVolumeMuted_ name:@"MROutputContextDataSourceOutputDeviceDidChangeVolumeMutedNotification" object:selfCopy->_outputContextDataSource];
      [defaultCenter addObserver:selfCopy selector:sel_outputContextDataSourceDidAddOutputDevice_ name:@"MROutputContextDataSourceDidAddOutputDeviceNotification" object:selfCopy->_outputContextDataSource];
      [defaultCenter addObserver:selfCopy selector:sel_outputContextDataSourceDidChangeOutputDevice_ name:@"MROutputContextDataSourceDidChangeOutputDeviceNotification" object:selfCopy->_outputContextDataSource];
      [defaultCenter addObserver:selfCopy selector:sel_outputContextDataSourceDidRemoveOutputDevice_ name:@"MROutputContextDataSourceDidRemoveOutputDeviceNotification" object:selfCopy->_outputContextDataSource];
      [defaultCenter addObserver:selfCopy selector:sel_outputContextDidChangePredictedOutputDevice_ name:@"MROutputContextDataSourceDidChangePredictedOutputDeviceNotification" object:selfCopy->_outputContextDataSource];
    }
  }

  objc_sync_exit(selfCopy);
}

- (void)outputContextDataSourceOutputDeviceDidChangeVolumeControlCapabilities:(id)capabilities
{
  capabilitiesCopy = capabilities;
  userInfo = [capabilitiesCopy userInfo];
  v8 = [userInfo objectForKeyedSubscript:@"MROutputContextDataSourceVolumeCapabilitiesUserInfoKey"];

  userInfo2 = [capabilitiesCopy userInfo];

  v7 = [userInfo2 objectForKeyedSubscript:@"MROutputContextDataSourceOutputDeviceUserInfoKey"];

  [objc_opt_class() _notifyVolumeCapabilitiesDidChange:objc_msgSend(v8 outputDevice:"intValue") endpoint:{v7, self}];
}

- (void)outputContextDataSourceOutputDeviceDidChangeVolume:(id)volume
{
  volumeCopy = volume;
  userInfo = [volumeCopy userInfo];
  v9 = [userInfo objectForKeyedSubscript:@"MROutputContextDataSourceVolumeUserInfoKey"];

  userInfo2 = [volumeCopy userInfo];

  v7 = [userInfo2 objectForKeyedSubscript:@"MROutputContextDataSourceOutputDeviceUserInfoKey"];

  v8 = objc_opt_class();
  [v9 floatValue];
  [v8 _notifyVolumeDidChange:v7 outputDevice:self endpoint:?];
}

- (void)outputContextDataSourceOutputDeviceDidChangeVolumeMuted:(id)muted
{
  mutedCopy = muted;
  userInfo = [mutedCopy userInfo];
  v8 = [userInfo objectForKeyedSubscript:@"MROutputContextDataSourceVolumeMutedUserInfoKey"];

  userInfo2 = [mutedCopy userInfo];

  v7 = [userInfo2 objectForKeyedSubscript:@"MROutputContextDataSourceOutputDeviceUserInfoKey"];

  [objc_opt_class() _notifyVolumeMutedDidChange:objc_msgSend(v8 outputDevice:"BOOLValue") endpoint:{v7, self}];
}

- (void)outputContextDataSourceDidAddOutputDevice:(id)device
{
  userInfo = [device userInfo];
  v5 = [userInfo objectForKeyedSubscript:@"MROutputContextDataSourceOutputDeviceUserInfoKey"];

  [objc_opt_class() _notifyDidAddOutputDevice:v5 endpoint:self];
}

- (void)outputContextDataSourceDidChangeOutputDevice:(id)device
{
  userInfo = [device userInfo];
  v5 = [userInfo objectForKeyedSubscript:@"MROutputContextDataSourceOutputDeviceUserInfoKey"];

  [objc_opt_class() _notifyDidChangeOutputDevice:v5 endpoint:self];
}

- (void)outputContextDataSourceDidRemoveOutputDevice:(id)device
{
  userInfo = [device userInfo];
  v5 = [userInfo objectForKeyedSubscript:@"MROutputContextDataSourceOutputDeviceUserInfoKey"];

  [objc_opt_class() _notifyDidRemoveOutputDevice:v5 endpoint:self];
}

- (void)outputContextDidChangePredictedOutputDevice:(id)device
{
  userInfo = [device userInfo];
  v5 = [userInfo objectForKeyedSubscript:@"MROutputContextDataSourceOutputDeviceUserInfoKey"];

  [objc_opt_class() _notifyDidChangePredictedOutputDevice:v5 endpoint:self];
}

+ (void)_notifyEndpointDidConnect:(id)connect
{
  connectCopy = connect;
  v6 = [self _userInfoFromEndpoint:connectCopy outputDevice:0];
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter postNotificationName:@"MRAVEndpointDidConnectNotification" object:connectCopy userInfo:v6];
}

+ (void)_notifyEndpointDidDisconnect:(id)disconnect withError:(id)error
{
  errorCopy = error;
  disconnectCopy = disconnect;
  v9 = [self _userInfoFromEndpoint:disconnectCopy outputDevice:0];
  [v9 setObject:errorCopy forKeyedSubscript:*MEMORY[0x1E696AA08]];

  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter postNotificationName:@"MRAVEndpointDidDisconnectNotification" object:disconnectCopy userInfo:v9];
}

+ (void)_notifyVolumeDidChange:(float)change outputDevice:(id)device endpoint:(id)endpoint
{
  endpointCopy = endpoint;
  v12 = [self _userInfoFromEndpoint:endpointCopy outputDevice:device];
  *&v9 = change;
  v10 = [MEMORY[0x1E696AD98] numberWithFloat:v9];
  [v12 setObject:v10 forKeyedSubscript:@"kMRAVEndpointVolumeUserInfoKey"];

  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter postNotificationName:@"kMRAVEndpointVolumeDidChangeNotification" object:endpointCopy userInfo:v12];
}

+ (void)_notifyDidAddOutputDevice:(id)device endpoint:(id)endpoint
{
  deviceCopy = device;
  endpointCopy = endpoint;
  v7 = deviceCopy;
  v8 = endpointCopy;
  if (!deviceCopy)
  {
    +[MRAVEndpoint _notifyDidAddOutputDevice:endpoint:];
    v7 = 0;
  }

  v9 = [self _userInfoFromEndpoint:v8 outputDevice:v7];
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter postNotificationName:@"MRAVEndpointDidAddOutputDeviceNotification" object:v8 userInfo:v9];

  defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter2 postNotificationName:@"kMRAVEndpointOutputDevicesDidChangeNotification" object:v8 userInfo:v9];
}

+ (void)_notifyDidChangeOutputDevice:(id)device endpoint:(id)endpoint
{
  deviceCopy = device;
  endpointCopy = endpoint;
  v7 = deviceCopy;
  v8 = endpointCopy;
  if (!deviceCopy)
  {
    +[MRAVEndpoint _notifyDidChangeOutputDevice:endpoint:];
    v7 = 0;
  }

  v9 = [self _userInfoFromEndpoint:v8 outputDevice:v7];
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter postNotificationName:@"MRAVEndpointDidChangeOutputDeviceNotification" object:v8 userInfo:v9];

  defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter2 postNotificationName:@"kMRAVEndpointOutputDevicesDidChangeNotification" object:v8 userInfo:v9];
}

+ (void)_notifyDidRemoveOutputDevice:(id)device endpoint:(id)endpoint
{
  deviceCopy = device;
  endpointCopy = endpoint;
  v7 = deviceCopy;
  v8 = endpointCopy;
  if (!deviceCopy)
  {
    +[MRAVEndpoint _notifyDidRemoveOutputDevice:endpoint:];
    v7 = 0;
  }

  v9 = [self _userInfoFromEndpoint:v8 outputDevice:v7];
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter postNotificationName:@"MRAVEndpointDidRemoveOutputDeviceNotification" object:v8 userInfo:v9];

  defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter2 postNotificationName:@"kMRAVEndpointOutputDevicesDidChangeNotification" object:v8 userInfo:v9];
}

+ (void)_notifyDidChangePredictedOutputDevice:(id)device endpoint:(id)endpoint
{
  endpointCopy = endpoint;
  v8 = [self _userInfoFromEndpoint:endpointCopy outputDevice:device];
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter postNotificationName:@"kMRAVEndpointPredictedOutputDeviceDidChangeNotification" object:endpointCopy userInfo:v8];
}

+ (void)_notifyGroupSessionInfoDidChange:(id)change endpoint:(id)endpoint
{
  endpointCopy = endpoint;
  changeCopy = change;
  v9 = [self _userInfoFromEndpoint:endpointCopy outputDevice:0];
  [v9 setObject:changeCopy forKeyedSubscript:@"MRAVEndpointGroupSessionInfoUserInfoKey"];

  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter postNotificationName:@"MRAVEndpointGroupSessionInfoDidChangeNotification" object:endpointCopy userInfo:v9];
}

+ (void)_notifyGroupSessionHostingEligibilityDidChangeForEndpoint:(id)endpoint
{
  endpointCopy = endpoint;
  v6 = [self _userInfoFromEndpoint:endpointCopy outputDevice:0];
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter postNotificationName:@"MRAVEndpointGroupSessionHostingEligibilityDidChangeNotification" object:endpointCopy userInfo:v6];
}

+ (void)_notifyDeviceInfoDidChange:(id)change previousDeviceInfo:(id)info endpoint:(id)endpoint
{
  endpointCopy = endpoint;
  infoCopy = info;
  changeCopy = change;
  v12 = [self _userInfoFromEndpoint:endpointCopy outputDevice:0];
  [v12 setObject:changeCopy forKeyedSubscript:@"MRAVEndpointDeviceInfoUserInfoKey"];

  [v12 setObject:infoCopy forKeyedSubscript:@"MRAVEndpointPreviousDeviceInfoUserInfoKey"];
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter postNotificationName:@"MRAVEndpointDeviceInfoDidChangeNotification" object:endpointCopy userInfo:v12];
}

+ (id)_userInfoFromEndpoint:(id)endpoint outputDevice:(id)device
{
  deviceCopy = device;
  uniqueIdentifier = [endpoint uniqueIdentifier];
  v7 = [deviceCopy uid];
  v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
  [v8 setObject:uniqueIdentifier forKeyedSubscript:@"kMRAVEndpointIdentifierUserInfoKey"];
  if (deviceCopy)
  {
    [v8 setObject:deviceCopy forKeyedSubscript:@"MRAVEndpointOutputDeviceUserInfoKey"];
    [v8 setObject:v7 forKeyedSubscript:@"kMRAVEndpointOutputDeviceIdentifierUserInfoKey"];
  }

  return v8;
}

+ (void)hostedEndpointForOutputDeviceUIDs:(id)ds queue:(id)queue completion:(id)completion
{
  v39 = *MEMORY[0x1E69E9840];
  dsCopy = ds;
  completionCopy = completion;
  v9 = MEMORY[0x1E695DF00];
  queueCopy = queue;
  date = [v9 date];
  uUID = [MEMORY[0x1E696AFB0] UUID];
  uUIDString = [uUID UUIDString];

  dsCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"UIDs=(%@)", dsCopy];
  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 3221225472;
  v31[2] = __67__MRAVEndpoint_hostedEndpointForOutputDeviceUIDs_queue_completion___block_invoke;
  v31[3] = &unk_1E76A2378;
  v15 = dsCopy;
  v32 = v15;
  v33 = @"hostedEndpointForOutputDeviceUIDs";
  v16 = uUIDString;
  v34 = v16;
  v17 = date;
  v35 = v17;
  v18 = completionCopy;
  v36 = v18;
  v19 = MEMORY[0x1A58E3570](v31);
  v20 = [objc_alloc(MEMORY[0x1E696AD60]) initWithFormat:@"%@<%@>", @"hostedEndpointForOutputDeviceUIDs", v16];
  v21 = v20;
  if (v15)
  {
    [v20 appendFormat:@" for %@", v15];
  }

  v22 = _MRLogForCategory(0xAuLL);
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v38 = v21;
    _os_log_impl(&dword_1A2860000, v22, OS_LOG_TYPE_DEFAULT, "Request: %{public}@", buf, 0xCu);
  }

  v23 = MRGetSharedService();
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __67__MRAVEndpoint_hostedEndpointForOutputDeviceUIDs_queue_completion___block_invoke_554;
  v27[3] = &unk_1E76A2E08;
  v28 = @"hostedEndpointForOutputDeviceUIDs";
  v29 = v16;
  v30 = v19;
  v24 = v19;
  v25 = v16;
  MRMediaRemoteServiceCreateHostedEndpointForDevices(v23, dsCopy, queueCopy, v27);

  v26 = *MEMORY[0x1E69E9840];
}

void __67__MRAVEndpoint_hostedEndpointForOutputDeviceUIDs_queue_completion___block_invoke(void *a1, void *a2, void *a3)
{
  v46 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = a1[4];
  v8 = _MRLogForCategory(0xAuLL);
  v9 = v8;
  if (v5 && !v6)
  {
    v10 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
    if (v7)
    {
      if (v10)
      {
        v12 = a1[5];
        v11 = a1[6];
        v13 = a1[4];
        v14 = [MEMORY[0x1E695DF00] date];
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
LABEL_16:
        _os_log_impl(&dword_1A2860000, v17, OS_LOG_TYPE_DEFAULT, v16, &v36, v18);
        goto LABEL_17;
      }

      goto LABEL_22;
    }

    if (!v10)
    {
      goto LABEL_22;
    }

    v29 = a1[5];
    v30 = a1[6];
    v14 = [MEMORY[0x1E695DF00] date];
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
LABEL_15:
    v17 = v9;
    v18 = 42;
    goto LABEL_16;
  }

  if (v6)
  {
    v19 = os_log_type_enabled(v8, OS_LOG_TYPE_ERROR);
    if (v7)
    {
      if (v19)
      {
        v21 = a1[5];
        v20 = a1[6];
        v22 = a1[4];
        v14 = [MEMORY[0x1E695DF00] date];
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
        _os_log_error_impl(&dword_1A2860000, v9, OS_LOG_TYPE_ERROR, "Response: %{public}@<%{public}@> returned with error <%{public}@> for %{public}@ in %.4lf seconds", &v36, 0x34u);
LABEL_17:

        goto LABEL_22;
      }
    }

    else if (v19)
    {
      __86__MRV2NowPlayingController__loadNowPlayingStateForConfiguration_requestID_completion___block_invoke_53_cold_1(a1, v6, v9);
    }

    goto LABEL_22;
  }

  v24 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
  if (!v7)
  {
    if (!v24)
    {
      goto LABEL_22;
    }

    v32 = a1[5];
    v33 = a1[6];
    v14 = [MEMORY[0x1E695DF00] date];
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

  if (v24)
  {
    v26 = a1[5];
    v25 = a1[6];
    v27 = a1[4];
    v14 = [MEMORY[0x1E695DF00] date];
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
    goto LABEL_15;
  }

LABEL_22:

  (*(a1[8] + 16))();
  v35 = *MEMORY[0x1E69E9840];
}

void __67__MRAVEndpoint_hostedEndpointForOutputDeviceUIDs_queue_completion___block_invoke_554(void *a1, void *a2, void *a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Endpoint: %@", v5];
  v8 = _MRLogForCategory(0xAuLL);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = a1[4];
    v10 = a1[5];
    *buf = 138543874;
    v14 = v9;
    v15 = 2114;
    v16 = v10;
    v17 = 2112;
    v18 = v7;
    _os_log_impl(&dword_1A2860000, v8, OS_LOG_TYPE_DEFAULT, "Update: %{public}@<%{public}@> %@", buf, 0x20u);
  }

  if (v6 && !MRMediaRemoteErrorIsInformational(v6))
  {
    v11 = *(a1[6] + 16);
  }

  else
  {
    v11 = *(a1[6] + 16);
  }

  v11();

  v12 = *MEMORY[0x1E69E9840];
}

+ (void)directEndpointForOutputDeviceUIDs:(id)ds queue:(id)queue completion:(id)completion
{
  v39 = *MEMORY[0x1E69E9840];
  dsCopy = ds;
  completionCopy = completion;
  v9 = MEMORY[0x1E695DF00];
  queueCopy = queue;
  date = [v9 date];
  uUID = [MEMORY[0x1E696AFB0] UUID];
  uUIDString = [uUID UUIDString];

  dsCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"UIDs=(%@)", dsCopy];
  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 3221225472;
  v31[2] = __67__MRAVEndpoint_directEndpointForOutputDeviceUIDs_queue_completion___block_invoke;
  v31[3] = &unk_1E76A2378;
  v15 = dsCopy;
  v32 = v15;
  v33 = @"directEndpointForOutputDeviceUIDs";
  v16 = uUIDString;
  v34 = v16;
  v17 = date;
  v35 = v17;
  v18 = completionCopy;
  v36 = v18;
  v19 = MEMORY[0x1A58E3570](v31);
  v20 = [objc_alloc(MEMORY[0x1E696AD60]) initWithFormat:@"%@<%@>", @"directEndpointForOutputDeviceUIDs", v16];
  v21 = v20;
  if (v15)
  {
    [v20 appendFormat:@" for %@", v15];
  }

  v22 = _MRLogForCategory(0xAuLL);
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v38 = v21;
    _os_log_impl(&dword_1A2860000, v22, OS_LOG_TYPE_DEFAULT, "Request: %{public}@", buf, 0xCu);
  }

  v23 = MRGetSharedService();
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __67__MRAVEndpoint_directEndpointForOutputDeviceUIDs_queue_completion___block_invoke_561;
  v27[3] = &unk_1E76A2E08;
  v28 = @"directEndpointForOutputDeviceUIDs";
  v29 = v16;
  v30 = v19;
  v24 = v19;
  v25 = v16;
  MRMediaRemoteServiceCreateDirectEndpointForDevices(v23, dsCopy, queueCopy, v27);

  v26 = *MEMORY[0x1E69E9840];
}

void __67__MRAVEndpoint_directEndpointForOutputDeviceUIDs_queue_completion___block_invoke(void *a1, void *a2, void *a3)
{
  v46 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = a1[4];
  v8 = _MRLogForCategory(0xAuLL);
  v9 = v8;
  if (v5 && !v6)
  {
    v10 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
    if (v7)
    {
      if (v10)
      {
        v12 = a1[5];
        v11 = a1[6];
        v13 = a1[4];
        v14 = [MEMORY[0x1E695DF00] date];
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
LABEL_16:
        _os_log_impl(&dword_1A2860000, v17, OS_LOG_TYPE_DEFAULT, v16, &v36, v18);
        goto LABEL_17;
      }

      goto LABEL_22;
    }

    if (!v10)
    {
      goto LABEL_22;
    }

    v29 = a1[5];
    v30 = a1[6];
    v14 = [MEMORY[0x1E695DF00] date];
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
LABEL_15:
    v17 = v9;
    v18 = 42;
    goto LABEL_16;
  }

  if (v6)
  {
    v19 = os_log_type_enabled(v8, OS_LOG_TYPE_ERROR);
    if (v7)
    {
      if (v19)
      {
        v21 = a1[5];
        v20 = a1[6];
        v22 = a1[4];
        v14 = [MEMORY[0x1E695DF00] date];
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
        _os_log_error_impl(&dword_1A2860000, v9, OS_LOG_TYPE_ERROR, "Response: %{public}@<%{public}@> returned with error <%{public}@> for %{public}@ in %.4lf seconds", &v36, 0x34u);
LABEL_17:

        goto LABEL_22;
      }
    }

    else if (v19)
    {
      __86__MRV2NowPlayingController__loadNowPlayingStateForConfiguration_requestID_completion___block_invoke_53_cold_1(a1, v6, v9);
    }

    goto LABEL_22;
  }

  v24 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
  if (!v7)
  {
    if (!v24)
    {
      goto LABEL_22;
    }

    v32 = a1[5];
    v33 = a1[6];
    v14 = [MEMORY[0x1E695DF00] date];
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

  if (v24)
  {
    v26 = a1[5];
    v25 = a1[6];
    v27 = a1[4];
    v14 = [MEMORY[0x1E695DF00] date];
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
    goto LABEL_15;
  }

LABEL_22:

  (*(a1[8] + 16))();
  v35 = *MEMORY[0x1E69E9840];
}

void __67__MRAVEndpoint_directEndpointForOutputDeviceUIDs_queue_completion___block_invoke_561(void *a1, void *a2, void *a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Endpoint: %@", v5];
  v8 = _MRLogForCategory(0xAuLL);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = a1[4];
    v10 = a1[5];
    *buf = 138543874;
    v14 = v9;
    v15 = 2114;
    v16 = v10;
    v17 = 2112;
    v18 = v7;
    _os_log_impl(&dword_1A2860000, v8, OS_LOG_TYPE_DEFAULT, "Update: %{public}@<%{public}@> %@", buf, 0x20u);
  }

  if (v6 && !MRMediaRemoteErrorIsInformational(v6))
  {
    v11 = *(a1[6] + 16);
  }

  else
  {
    v11 = *(a1[6] + 16);
  }

  v11();

  v12 = *MEMORY[0x1E69E9840];
}

+ (void)createEndpointWithOutputDeviceUIDs:(id)ds queue:(id)queue completion:(id)completion
{
  completionCopy = completion;
  queueCopy = queue;
  dsCopy = ds;
  v11 = [[MRRequestDetails alloc] initWithInitiator:@"Infer" requestID:0 reason:@"MRAVEndpoint.createEndpointWithOutputDeviceUIDs"];
  [self createEndpointWithOutputDeviceUIDs:dsCopy details:v11 queue:queueCopy completion:completionCopy];
}

+ (void)createEndpointWithOutputDeviceUIDs:(id)ds details:(id)details queue:(id)queue completion:(id)completion
{
  v48 = *MEMORY[0x1E69E9840];
  dsCopy = ds;
  detailsCopy = details;
  queueCopy = queue;
  completionCopy = completion;
  if (!detailsCopy)
  {
    detailsCopy = [[MRRequestDetails alloc] initWithInitiator:@"Infer" requestID:0 reason:@"createEndpointWithOutputDeviceUIDs.endpoint"];
  }

  startDate = [(MRRequestDetails *)detailsCopy startDate];
  requestID = [(MRRequestDetails *)detailsCopy requestID];
  v15 = MEMORY[0x1E696AEC0];
  v16 = [dsCopy componentsJoinedByString:{@", "}];
  v17 = [v15 stringWithFormat:@"UIDs=(%@)", v16];

  v39[0] = MEMORY[0x1E69E9820];
  v39[1] = 3221225472;
  v39[2] = __76__MRAVEndpoint_createEndpointWithOutputDeviceUIDs_details_queue_completion___block_invoke;
  v39[3] = &unk_1E76A2E30;
  v18 = v17;
  v40 = v18;
  v41 = @"createEndpointWithOutputDeviceUIDs.endpoint";
  v19 = requestID;
  v42 = v19;
  v20 = startDate;
  v43 = v20;
  v21 = queueCopy;
  v44 = v21;
  v22 = completionCopy;
  v45 = v22;
  v23 = MEMORY[0x1A58E3570](v39);
  v24 = [objc_alloc(MEMORY[0x1E696AD60]) initWithFormat:@"%@<%@>", @"createEndpointWithOutputDeviceUIDs.endpoint", v19];
  v25 = v24;
  if (v18)
  {
    [v24 appendFormat:@" for %@", v18];
  }

  v26 = _MRLogForCategory(0xAuLL);
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v47 = v25;
    _os_log_impl(&dword_1A2860000, v26, OS_LOG_TYPE_DEFAULT, "Request: %{public}@", buf, 0xCu);
  }

  v27 = qos_class_self();
  v28 = dispatch_get_global_queue(v27, 0);
  v34[0] = MEMORY[0x1E69E9820];
  v34[1] = 3221225472;
  v34[2] = __76__MRAVEndpoint_createEndpointWithOutputDeviceUIDs_details_queue_completion___block_invoke_572;
  v34[3] = &unk_1E76A2E58;
  v35 = v19;
  v36 = dsCopy;
  v37 = @"createEndpointWithOutputDeviceUIDs.endpoint";
  v38 = v23;
  v29 = dsCopy;
  v30 = v19;
  v31 = v23;
  [self createEndpointWithOutputDeviceUIDs:v29 details:detailsCopy queue:v28 groupUIDCompletion:v34];

  v32 = *MEMORY[0x1E69E9840];
}

void __76__MRAVEndpoint_createEndpointWithOutputDeviceUIDs_details_queue_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v54 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v8 = _MRLogForCategory(0xAuLL);
  v9 = v8;
  if (v5 && !v6)
  {
    v10 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
    if (v7)
    {
      if (v10)
      {
        v12 = *(a1 + 40);
        v11 = *(a1 + 48);
        v13 = *(a1 + 32);
        v14 = [MEMORY[0x1E695DF00] date];
        [v14 timeIntervalSinceDate:*(a1 + 56)];
        *buf = 138544386;
        v45 = v12;
        v46 = 2114;
        v47 = v11;
        v48 = 2112;
        v49 = v5;
        v50 = 2114;
        v51 = v13;
        v52 = 2048;
        v53 = v15;
        v16 = "Response: %{public}@<%{public}@> returned <%@> for %{public}@ in %.4lf seconds";
        v17 = v9;
        v18 = 52;
LABEL_16:
        _os_log_impl(&dword_1A2860000, v17, OS_LOG_TYPE_DEFAULT, v16, buf, v18);
        goto LABEL_17;
      }

      goto LABEL_22;
    }

    if (!v10)
    {
      goto LABEL_22;
    }

    v29 = *(a1 + 40);
    v30 = *(a1 + 48);
    v14 = [MEMORY[0x1E695DF00] date];
    [v14 timeIntervalSinceDate:*(a1 + 56)];
    *buf = 138544130;
    v45 = v29;
    v46 = 2114;
    v47 = v30;
    v48 = 2112;
    v49 = v5;
    v50 = 2048;
    v51 = v31;
    v16 = "Response: %{public}@<%{public}@> returned <%@> in %.4lf seconds";
LABEL_15:
    v17 = v9;
    v18 = 42;
    goto LABEL_16;
  }

  if (v6)
  {
    v19 = os_log_type_enabled(v8, OS_LOG_TYPE_ERROR);
    if (v7)
    {
      if (v19)
      {
        v21 = *(a1 + 40);
        v20 = *(a1 + 48);
        v22 = *(a1 + 32);
        v14 = [MEMORY[0x1E695DF00] date];
        [v14 timeIntervalSinceDate:*(a1 + 56)];
        *buf = 138544386;
        v45 = v21;
        v46 = 2114;
        v47 = v20;
        v48 = 2114;
        v49 = v6;
        v50 = 2114;
        v51 = v22;
        v52 = 2048;
        v53 = v23;
        _os_log_error_impl(&dword_1A2860000, v9, OS_LOG_TYPE_ERROR, "Response: %{public}@<%{public}@> returned with error <%{public}@> for %{public}@ in %.4lf seconds", buf, 0x34u);
LABEL_17:

        goto LABEL_22;
      }
    }

    else if (v19)
    {
      __86__MRV2NowPlayingController__loadNowPlayingStateForConfiguration_requestID_completion___block_invoke_53_cold_1(a1, v6, v9);
    }

    goto LABEL_22;
  }

  v24 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
  if (!v7)
  {
    if (!v24)
    {
      goto LABEL_22;
    }

    v32 = *(a1 + 40);
    v33 = *(a1 + 48);
    v14 = [MEMORY[0x1E695DF00] date];
    [v14 timeIntervalSinceDate:*(a1 + 56)];
    *buf = 138543874;
    v45 = v32;
    v46 = 2114;
    v47 = v33;
    v48 = 2048;
    v49 = v34;
    v16 = "Response: %{public}@<%{public}@> returned in %.4lf seconds";
    v17 = v9;
    v18 = 32;
    goto LABEL_16;
  }

  if (v24)
  {
    v26 = *(a1 + 40);
    v25 = *(a1 + 48);
    v27 = *(a1 + 32);
    v14 = [MEMORY[0x1E695DF00] date];
    [v14 timeIntervalSinceDate:*(a1 + 56)];
    *buf = 138544130;
    v45 = v26;
    v46 = 2114;
    v47 = v25;
    v48 = 2114;
    v49 = v27;
    v50 = 2048;
    v51 = v28;
    v16 = "Response: %{public}@<%{public}@> returned for %{public}@ in %.4lf seconds";
    goto LABEL_15;
  }

LABEL_22:

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __76__MRAVEndpoint_createEndpointWithOutputDeviceUIDs_details_queue_completion___block_invoke_571;
  block[3] = &unk_1E769AC18;
  v35 = *(a1 + 64);
  v36 = *(a1 + 72);
  v42 = v6;
  v43 = v36;
  v41 = v5;
  v37 = v6;
  v38 = v5;
  dispatch_async(v35, block);

  v39 = *MEMORY[0x1E69E9840];
}

void __76__MRAVEndpoint_createEndpointWithOutputDeviceUIDs_details_queue_completion___block_invoke_572(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v6 && !MRMediaRemoteErrorIsInformational(v6))
  {
    (*(a1[7] + 2))();
  }

  else
  {
    v8 = [[MRRequestDetails alloc] initWithInitiator:@"Infer" requestID:a1[4] reason:@"MRAVEndpoint.createEndpointWithOutputDeviceUIDs"];
    v9 = [[MRAVReconnaissanceSession alloc] initWithOutputDeviceUIDs:a1[5] features:8 details:v8];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __76__MRAVEndpoint_createEndpointWithOutputDeviceUIDs_details_queue_completion___block_invoke_2;
    v10[3] = &unk_1E76A0590;
    v11 = a1[5];
    v12 = a1[6];
    v13 = a1[4];
    v14 = v5;
    v15 = a1[7];
    [(MRAVReconnaissanceSession *)v9 beginSearchWithTimeout:v10 completion:30.0];
  }
}

void __76__MRAVEndpoint_createEndpointWithOutputDeviceUIDs_details_queue_completion___block_invoke_2(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v38 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [v6 outputDeviceUIDs];
  v9 = [v8 count];
  v10 = [*(a1 + 32) count];

  if (v9 != v10)
  {
    v11 = MEMORY[0x1E696AEC0];
    v12 = *(a1 + 32);
    v13 = [v6 outputDeviceUIDs];
    v14 = [v11 stringWithFormat:@"Missing devices in formed endpoint. Expected: %@, got: %@", v12, v13];

    v15 = _MRLogForCategory(0xAuLL);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = *(a1 + 40);
      v17 = *(a1 + 48);
      *buf = 138543874;
      v33 = v16;
      v34 = 2114;
      v35 = v17;
      v36 = 2112;
      v37 = v14;
      _os_log_impl(&dword_1A2860000, v15, OS_LOG_TYPE_DEFAULT, "Update: %{public}@<%{public}@> %@", buf, 0x20u);
    }
  }

  v18 = [v6 outputDevices];
  v19 = [v18 firstObject];
  v20 = [v19 groupID];
  v21 = [v20 isEqualToString:*(a1 + 56)];

  if ((v21 & 1) == 0)
  {
    v22 = MEMORY[0x1E696AEC0];
    v23 = *(a1 + 56);
    v24 = [v6 outputDevices];
    v25 = [v24 firstObject];
    v26 = [v25 groupID];
    v27 = [v22 stringWithFormat:@"Unexpected groupUID in formed endpoint. Expected: %@, got: %@", v23, v26];

    v28 = _MRLogForCategory(0xAuLL);
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      v29 = *(a1 + 40);
      v30 = *(a1 + 48);
      *buf = 138543874;
      v33 = v29;
      v34 = 2114;
      v35 = v30;
      v36 = 2112;
      v37 = v27;
      _os_log_impl(&dword_1A2860000, v28, OS_LOG_TYPE_DEFAULT, "Update: %{public}@<%{public}@> %@", buf, 0x20u);
    }
  }

  (*(*(a1 + 64) + 16))();

  v31 = *MEMORY[0x1E69E9840];
}

+ (void)createEndpointWithOutputDeviceUIDs:(id)ds details:(id)details queue:(id)queue groupUIDCompletion:(id)completion
{
  v48 = *MEMORY[0x1E69E9840];
  dsCopy = ds;
  detailsCopy = details;
  queueCopy = queue;
  completionCopy = completion;
  if (!detailsCopy)
  {
    v13 = [MRRequestDetails alloc];
    mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
    bundleIdentifier = [mainBundle bundleIdentifier];
    detailsCopy = [(MRRequestDetails *)v13 initWithInitiator:@"Infer" requestID:0 reason:@"createEndpointWithOutputDeviceUIDs.groupID" userInitiated:0 originatingBundleID:bundleIdentifier];
  }

  date = [MEMORY[0x1E695DF00] date];
  uUID = [MEMORY[0x1E696AFB0] UUID];
  uUIDString = [uUID UUIDString];

  v19 = MEMORY[0x1E696AEC0];
  v20 = [dsCopy componentsJoinedByString:{@", "}];
  v21 = [v19 stringWithFormat:@"UIDs=(%@)", v20];

  v36 = MEMORY[0x1E69E9820];
  v37 = 3221225472;
  v38 = __84__MRAVEndpoint_createEndpointWithOutputDeviceUIDs_details_queue_groupUIDCompletion___block_invoke;
  v39 = &unk_1E76A2E80;
  v22 = v21;
  v40 = v22;
  v41 = @"createEndpointWithOutputDeviceUIDs.groupID";
  v23 = uUIDString;
  v42 = v23;
  v24 = date;
  v43 = v24;
  v25 = queueCopy;
  v44 = v25;
  v26 = completionCopy;
  v45 = v26;
  v27 = MEMORY[0x1A58E3570](&v36);
  v28 = objc_alloc(MEMORY[0x1E696AD60]);
  v29 = [v28 initWithFormat:@"%@<%@>", @"createEndpointWithOutputDeviceUIDs.groupID", v23, v36, v37, v38, v39];
  v30 = v29;
  if (v22)
  {
    [v29 appendFormat:@" for %@", v22];
  }

  v31 = _MRLogForCategory(0xAuLL);
  if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v47 = v30;
    _os_log_impl(&dword_1A2860000, v31, OS_LOG_TYPE_DEFAULT, "Request: %{public}@", buf, 0xCu);
  }

  v32 = MRGetSharedService();
  v33 = qos_class_self();
  v34 = dispatch_get_global_queue(v33, 0);
  MRMediaRemoteServiceCreateGroupWithDevices(v32, dsCopy, detailsCopy, v34, v27);

  v35 = *MEMORY[0x1E69E9840];
}

void __84__MRAVEndpoint_createEndpointWithOutputDeviceUIDs_details_queue_groupUIDCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v54 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v8 = _MRLogForCategory(0xAuLL);
  v9 = v8;
  if (v5 && !v6)
  {
    v10 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
    if (v7)
    {
      if (v10)
      {
        v12 = *(a1 + 40);
        v11 = *(a1 + 48);
        v13 = *(a1 + 32);
        v14 = [MEMORY[0x1E695DF00] date];
        [v14 timeIntervalSinceDate:*(a1 + 56)];
        *buf = 138544386;
        v45 = v12;
        v46 = 2114;
        v47 = v11;
        v48 = 2112;
        v49 = v5;
        v50 = 2114;
        v51 = v13;
        v52 = 2048;
        v53 = v15;
        v16 = "Response: %{public}@<%{public}@> returned <%@> for %{public}@ in %.4lf seconds";
        v17 = v9;
        v18 = 52;
LABEL_16:
        _os_log_impl(&dword_1A2860000, v17, OS_LOG_TYPE_DEFAULT, v16, buf, v18);
        goto LABEL_17;
      }

      goto LABEL_22;
    }

    if (!v10)
    {
      goto LABEL_22;
    }

    v29 = *(a1 + 40);
    v30 = *(a1 + 48);
    v14 = [MEMORY[0x1E695DF00] date];
    [v14 timeIntervalSinceDate:*(a1 + 56)];
    *buf = 138544130;
    v45 = v29;
    v46 = 2114;
    v47 = v30;
    v48 = 2112;
    v49 = v5;
    v50 = 2048;
    v51 = v31;
    v16 = "Response: %{public}@<%{public}@> returned <%@> in %.4lf seconds";
LABEL_15:
    v17 = v9;
    v18 = 42;
    goto LABEL_16;
  }

  if (v6)
  {
    v19 = os_log_type_enabled(v8, OS_LOG_TYPE_ERROR);
    if (v7)
    {
      if (v19)
      {
        v21 = *(a1 + 40);
        v20 = *(a1 + 48);
        v22 = *(a1 + 32);
        v14 = [MEMORY[0x1E695DF00] date];
        [v14 timeIntervalSinceDate:*(a1 + 56)];
        *buf = 138544386;
        v45 = v21;
        v46 = 2114;
        v47 = v20;
        v48 = 2114;
        v49 = v6;
        v50 = 2114;
        v51 = v22;
        v52 = 2048;
        v53 = v23;
        _os_log_error_impl(&dword_1A2860000, v9, OS_LOG_TYPE_ERROR, "Response: %{public}@<%{public}@> returned with error <%{public}@> for %{public}@ in %.4lf seconds", buf, 0x34u);
LABEL_17:

        goto LABEL_22;
      }
    }

    else if (v19)
    {
      __86__MRV2NowPlayingController__loadNowPlayingStateForConfiguration_requestID_completion___block_invoke_53_cold_1(a1, v6, v9);
    }

    goto LABEL_22;
  }

  v24 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
  if (!v7)
  {
    if (!v24)
    {
      goto LABEL_22;
    }

    v32 = *(a1 + 40);
    v33 = *(a1 + 48);
    v14 = [MEMORY[0x1E695DF00] date];
    [v14 timeIntervalSinceDate:*(a1 + 56)];
    *buf = 138543874;
    v45 = v32;
    v46 = 2114;
    v47 = v33;
    v48 = 2048;
    v49 = v34;
    v16 = "Response: %{public}@<%{public}@> returned in %.4lf seconds";
    v17 = v9;
    v18 = 32;
    goto LABEL_16;
  }

  if (v24)
  {
    v26 = *(a1 + 40);
    v25 = *(a1 + 48);
    v27 = *(a1 + 32);
    v14 = [MEMORY[0x1E695DF00] date];
    [v14 timeIntervalSinceDate:*(a1 + 56)];
    *buf = 138544130;
    v45 = v26;
    v46 = 2114;
    v47 = v25;
    v48 = 2114;
    v49 = v27;
    v50 = 2048;
    v51 = v28;
    v16 = "Response: %{public}@<%{public}@> returned for %{public}@ in %.4lf seconds";
    goto LABEL_15;
  }

LABEL_22:

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __84__MRAVEndpoint_createEndpointWithOutputDeviceUIDs_details_queue_groupUIDCompletion___block_invoke_582;
  block[3] = &unk_1E769AC18;
  v35 = *(a1 + 64);
  v36 = *(a1 + 72);
  v42 = v6;
  v43 = v36;
  v41 = v5;
  v37 = v6;
  v38 = v5;
  dispatch_async(v35, block);

  v39 = *MEMORY[0x1E69E9840];
}

+ (void)pauseOutputDeviceUIDs:(id)ds details:(id)details queue:(id)queue completion:(id)completion
{
  v44 = *MEMORY[0x1E69E9840];
  dsCopy = ds;
  detailsCopy = details;
  queueCopy = queue;
  completionCopy = completion;
  if (!detailsCopy)
  {
    detailsCopy = [[MRRequestDetails alloc] initWithName:@"pauseOutputDeviceUIDs" requestID:0 reason:@"API"];
  }

  date = [MEMORY[0x1E695DF00] date];
  requestID = [(MRRequestDetails *)detailsCopy requestID];
  dsCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"UIDs=(%@)", dsCopy];
  v15 = _MRLogForCategory(2uLL);
  v16 = [requestID hash];
  if ((v16 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v17 = v16;
    if (os_signpost_enabled(v15))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1A2860000, v15, OS_SIGNPOST_INTERVAL_BEGIN, v17, "pauseOutputDeviceUIDs.xpcInterface", &unk_1A2BB0121, buf, 2u);
    }
  }

  v18 = [objc_alloc(MEMORY[0x1E696AD60]) initWithFormat:@"%@<%@>", @"pauseOutputDeviceUIDs", requestID];
  v19 = v18;
  if (dsCopy)
  {
    [v18 appendFormat:@" for %@", dsCopy];
  }

  v20 = _MRLogForCategory(0xAuLL);
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v43 = v19;
    _os_log_impl(&dword_1A2860000, v20, OS_LOG_TYPE_DEFAULT, "Request: %{public}@", buf, 0xCu);
  }

  v36[0] = MEMORY[0x1E69E9820];
  v36[1] = 3221225472;
  v36[2] = __63__MRAVEndpoint_pauseOutputDeviceUIDs_details_queue_completion___block_invoke;
  v36[3] = &unk_1E76A1BC0;
  v37 = requestID;
  v38 = dsCopy;
  v39 = @"pauseOutputDeviceUIDs";
  v40 = date;
  v41 = completionCopy;
  v32 = completionCopy;
  v31 = date;
  v21 = dsCopy;
  v22 = requestID;
  v23 = MEMORY[0x1A58E3570](v36);
  v24 = MRCreateXPCMessage(0x30000000000002FuLL);
  MRAddPropertyListToXPCMessage(v24, dsCopy, "MRXPC_OUTPUT_DEVICE_UID_ARRAY_DATA_KEY");
  MRAddRequestDetailsToXPCMessage(v24, detailsCopy);
  +[MRMediaRemoteServiceClient sharedServiceClient];
  v26 = v25 = dsCopy;
  service = [v26 service];
  mrXPCConnection = [service mrXPCConnection];
  v34[0] = MEMORY[0x1E69E9820];
  v34[1] = 3221225472;
  v34[2] = __63__MRAVEndpoint_pauseOutputDeviceUIDs_details_queue_completion___block_invoke_588;
  v34[3] = &unk_1E769B338;
  v35 = v23;
  v29 = v23;
  [mrXPCConnection sendMessage:v24 queue:queueCopy reply:v34];

  v30 = *MEMORY[0x1E69E9840];
}

void __63__MRAVEndpoint_pauseOutputDeviceUIDs_details_queue_completion___block_invoke(uint64_t a1, void *a2)
{
  v44 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = _MRLogForCategory(2uLL);
  v5 = [*(a1 + 32) hash];
  if ((v5 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v6 = v5;
    if (os_signpost_enabled(v4))
    {
      LOWORD(v34) = 0;
      _os_signpost_emit_with_name_impl(&dword_1A2860000, v4, OS_SIGNPOST_INTERVAL_END, v6, "pauseOutputDeviceUIDs.xpcInterface", &unk_1A2BB0121, &v34, 2u);
    }
  }

  v7 = *(a1 + 40);
  v8 = _MRLogForCategory(0xAuLL);
  v9 = v8;
  if (!v3)
  {
    v19 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
    if (v7)
    {
      if (!v19)
      {
        goto LABEL_18;
      }

      v21 = *(a1 + 40);
      v20 = *(a1 + 48);
      v22 = *(a1 + 32);
      v14 = [MEMORY[0x1E695DF00] date];
      [v14 timeIntervalSinceDate:*(a1 + 56)];
      v34 = 138544130;
      v35 = v20;
      v36 = 2114;
      v37 = v22;
      v38 = 2114;
      v39 = v21;
      v40 = 2048;
      v41 = v23;
      v24 = "Response: %{public}@<%{public}@> returned for %{public}@ in %.4lf seconds";
      v25 = v9;
      v26 = 42;
    }

    else
    {
      if (!v19)
      {
        goto LABEL_18;
      }

      v30 = *(a1 + 48);
      v31 = *(a1 + 32);
      v14 = [MEMORY[0x1E695DF00] date];
      [v14 timeIntervalSinceDate:*(a1 + 56)];
      v34 = 138543874;
      v35 = v30;
      v36 = 2114;
      v37 = v31;
      v38 = 2048;
      v39 = v32;
      v24 = "Response: %{public}@<%{public}@> returned in %.4lf seconds";
      v25 = v9;
      v26 = 32;
    }

    _os_log_impl(&dword_1A2860000, v25, OS_LOG_TYPE_DEFAULT, v24, &v34, v26);
    goto LABEL_17;
  }

  v10 = os_log_type_enabled(v8, OS_LOG_TYPE_ERROR);
  if (v7)
  {
    if (v10)
    {
      v12 = *(a1 + 40);
      v11 = *(a1 + 48);
      v13 = *(a1 + 32);
      v14 = [MEMORY[0x1E695DF00] date];
      [v14 timeIntervalSinceDate:*(a1 + 56)];
      v34 = 138544386;
      v35 = v11;
      v36 = 2114;
      v37 = v13;
      v38 = 2114;
      v39 = v3;
      v40 = 2114;
      v41 = v12;
      v42 = 2048;
      v43 = v15;
      v16 = "Response: %{public}@<%{public}@> returned with error <%{public}@> for %{public}@ in %.4lf seconds";
      v17 = v9;
      v18 = 52;
LABEL_13:
      _os_log_error_impl(&dword_1A2860000, v17, OS_LOG_TYPE_ERROR, v16, &v34, v18);
LABEL_17:
    }
  }

  else if (v10)
  {
    v27 = *(a1 + 48);
    v28 = *(a1 + 32);
    v14 = [MEMORY[0x1E695DF00] date];
    [v14 timeIntervalSinceDate:*(a1 + 56)];
    v34 = 138544130;
    v35 = v27;
    v36 = 2114;
    v37 = v28;
    v38 = 2114;
    v39 = v3;
    v40 = 2048;
    v41 = v29;
    v16 = "Response: %{public}@<%{public}@> returned with error <%{public}@> in %.4lf seconds";
    v17 = v9;
    v18 = 42;
    goto LABEL_13;
  }

LABEL_18:

  (*(*(a1 + 64) + 16))();
  v33 = *MEMORY[0x1E69E9840];
}

+ (void)addOutputDevicesWithUIDs:(id)ds toGroupContainingOutputDeviceWithUID:(id)d details:(id)details queue:(id)queue completion:(id)completion
{
  completionCopy = completion;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __103__MRAVEndpoint_addOutputDevicesWithUIDs_toGroupContainingOutputDeviceWithUID_details_queue_completion___block_invoke;
  v12[3] = &unk_1E769AD30;
  v13 = completionCopy;
  v11 = completionCopy;
  MRAVEndpointAddOutputDevicesToGroup(d, ds, queue, v12);
}

+ (void)moveOutputDevicesWithUIDs:(id)ds toGroupContainingOutputDeviceWithUID:(id)d details:(id)details queue:(id)queue completion:(id)completion
{
  completionCopy = completion;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __104__MRAVEndpoint_moveOutputDevicesWithUIDs_toGroupContainingOutputDeviceWithUID_details_queue_completion___block_invoke;
  v12[3] = &unk_1E769AD30;
  v13 = completionCopy;
  v11 = completionCopy;
  MRAVEndpointMoveOutputGroupToDevices(d, ds, queue, v12);
}

+ (void)sendCommand:(unsigned int)command withOptions:(id)options toEachEndpointContainingOutputDeviceUIDs:(id)ds timeout:(double)timeout queue:(id)queue completion:(id)completion
{
  v48 = *MEMORY[0x1E69E9840];
  dsCopy = ds;
  completionCopy = completion;
  v15 = MEMORY[0x1E695DF90];
  queueCopy = queue;
  optionsCopy = options;
  v17 = [[v15 alloc] initWithDictionary:optionsCopy];

  v18 = [v17 objectForKeyedSubscript:@"kMRMediaRemoteOptionCommandID"];

  if (!v18)
  {
    uUID = [MEMORY[0x1E696AFB0] UUID];
    uUIDString = [uUID UUIDString];
    [v17 setObject:uUIDString forKeyedSubscript:@"kMRMediaRemoteOptionCommandID"];
  }

  date = [MEMORY[0x1E695DF00] date];
  v22 = [v17 objectForKeyedSubscript:@"kMRMediaRemoteOptionCommandID"];
  dsCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"UIDs=(%@)", dsCopy];
  v41[0] = MEMORY[0x1E69E9820];
  v41[1] = 3221225472;
  v41[2] = __106__MRAVEndpoint_sendCommand_withOptions_toEachEndpointContainingOutputDeviceUIDs_timeout_queue_completion___block_invoke;
  v41[3] = &unk_1E76A2EA8;
  v42 = @"sendCommandToOutputDeviceUIDs";
  v24 = v22;
  v43 = v24;
  v36 = date;
  v44 = v36;
  v37 = completionCopy;
  v45 = v37;
  v25 = MEMORY[0x1A58E3570](v41);
  v26 = [objc_alloc(MEMORY[0x1E696AD60]) initWithFormat:@"%@<%@>", @"sendCommandToOutputDeviceUIDs", v24];
  v27 = v26;
  if (dsCopy)
  {
    [v26 appendFormat:@" for %@", dsCopy];
  }

  v28 = _MRLogForCategory(0xAuLL);
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v47 = v27;
    _os_log_impl(&dword_1A2860000, v28, OS_LOG_TYPE_DEFAULT, "Request: %{public}@", buf, 0xCu);
  }

  v29 = MRCreateXPCMessage(0x300000000000031uLL);
  xpc_dictionary_set_uint64(v29, "command", command);
  MRAddPropertyListToXPCMessage(v29, v17, "commandOptions");
  v30 = dsCopy;
  MRAddPropertyListToXPCMessage(v29, dsCopy, "MRXPC_OUTPUT_DEVICE_UID_ARRAY_DATA_KEY");
  xpc_dictionary_set_double(v29, "timeout", timeout);
  v31 = +[MRMediaRemoteServiceClient sharedServiceClient];
  service = [v31 service];
  mrXPCConnection = [service mrXPCConnection];
  v39[0] = MEMORY[0x1E69E9820];
  v39[1] = 3221225472;
  v39[2] = __106__MRAVEndpoint_sendCommand_withOptions_toEachEndpointContainingOutputDeviceUIDs_timeout_queue_completion___block_invoke_597;
  v39[3] = &unk_1E769B338;
  v40 = v25;
  v34 = v25;
  [mrXPCConnection sendMessage:v29 queue:queueCopy reply:v39];

  v35 = *MEMORY[0x1E69E9840];
}

void __106__MRAVEndpoint_sendCommand_withOptions_toEachEndpointContainingOutputDeviceUIDs_timeout_queue_completion___block_invoke(void *a1, void *a2, void *a3)
{
  v29 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = _MRLogForCategory(0xAuLL);
  v8 = v7;
  if (v5 && !v6)
  {
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_11;
    }

    v9 = a1[4];
    v10 = a1[5];
    v11 = [MEMORY[0x1E695DF00] date];
    [v11 timeIntervalSinceDate:a1[6]];
    v21 = 138544130;
    v22 = v9;
    v23 = 2114;
    v24 = v10;
    v25 = 2112;
    v26 = v5;
    v27 = 2048;
    v28 = v12;
    v13 = "Response: %{public}@<%{public}@> returned <%@> in %.4lf seconds";
    v14 = v8;
    v15 = 42;
LABEL_10:
    _os_log_impl(&dword_1A2860000, v14, OS_LOG_TYPE_DEFAULT, v13, &v21, v15);

    goto LABEL_11;
  }

  if (!v6)
  {
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_11;
    }

    v16 = a1[4];
    v17 = a1[5];
    v11 = [MEMORY[0x1E695DF00] date];
    [v11 timeIntervalSinceDate:a1[6]];
    v21 = 138543874;
    v22 = v16;
    v23 = 2114;
    v24 = v17;
    v25 = 2048;
    v26 = v18;
    v13 = "Response: %{public}@<%{public}@> returned in %.4lf seconds";
    v14 = v8;
    v15 = 32;
    goto LABEL_10;
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    __106__MRAVEndpoint_sendCommand_withOptions_toEachEndpointContainingOutputDeviceUIDs_timeout_queue_completion___block_invoke_cold_1(a1, v6, v8);
  }

LABEL_11:

  v19 = a1[7];
  if (v19)
  {
    (*(v19 + 16))(v19, v5, v6);
  }

  v20 = *MEMORY[0x1E69E9840];
}

void __106__MRAVEndpoint_sendCommand_withOptions_toEachEndpointContainingOutputDeviceUIDs_timeout_queue_completion___block_invoke_597(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = MRCreateDataFromXPCMessage(a2, "commandResultsData");
  v7 = MRCreateArrayFromData(v6, &__block_literal_global_601);

  (*(*(a1 + 32) + 16))();
}

MRCommandResult *__106__MRAVEndpoint_sendCommand_withOptions_toEachEndpointContainingOutputDeviceUIDs_timeout_queue_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[MRCommandResult alloc] initWithData:v2];

  return v3;
}

+ (void)sendCommand:(unsigned int)command withOptions:(id)options toNewEndpointContainingOutputDeviceUIDs:(id)ds nowPlayingClient:(id)client timeout:(double)timeout queue:(id)queue completion:(id)completion
{
  v52 = *MEMORY[0x1E69E9840];
  dsCopy = ds;
  completionCopy = completion;
  v16 = MEMORY[0x1E695DF90];
  queueCopy = queue;
  value_4 = client;
  optionsCopy = options;
  v18 = [[v16 alloc] initWithDictionary:optionsCopy];

  v19 = [v18 objectForKeyedSubscript:@"kMRMediaRemoteOptionCommandID"];

  if (!v19)
  {
    uUID = [MEMORY[0x1E696AFB0] UUID];
    uUIDString = [uUID UUIDString];
    [v18 setObject:uUIDString forKeyedSubscript:@"kMRMediaRemoteOptionCommandID"];
  }

  date = [MEMORY[0x1E695DF00] date];
  v23 = [v18 objectForKeyedSubscript:@"kMRMediaRemoteOptionCommandID"];
  dsCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"UIDs=(%@)", dsCopy];
  v45[0] = MEMORY[0x1E69E9820];
  v45[1] = 3221225472;
  v45[2] = __122__MRAVEndpoint_sendCommand_withOptions_toNewEndpointContainingOutputDeviceUIDs_nowPlayingClient_timeout_queue_completion___block_invoke;
  v45[3] = &unk_1E76A2ED0;
  v46 = @"sendCommandToNewGroupContainingOutputDeviceUIDs";
  v25 = v23;
  v47 = v25;
  v40 = date;
  v48 = v40;
  v41 = completionCopy;
  v49 = v41;
  v26 = MEMORY[0x1A58E3570](v45);
  v27 = [objc_alloc(MEMORY[0x1E696AD60]) initWithFormat:@"%@<%@>", @"sendCommandToNewGroupContainingOutputDeviceUIDs", v25];
  v28 = v27;
  if (dsCopy)
  {
    [v27 appendFormat:@" for %@", dsCopy];
  }

  v29 = _MRLogForCategory(0xAuLL);
  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v51 = v28;
    _os_log_impl(&dword_1A2860000, v29, OS_LOG_TYPE_DEFAULT, "Request: %{public}@", buf, 0xCu);
  }

  v30 = MRCreateXPCMessage(0x300000000000032uLL);
  xpc_dictionary_set_uint64(v30, "command", command);
  MRAddPropertyListToXPCMessage(v30, v18, "commandOptions");
  v31 = dsCopy;
  MRAddPropertyListToXPCMessage(v30, dsCopy, "MRXPC_OUTPUT_DEVICE_UID_ARRAY_DATA_KEY");
  v32 = [[MRPlayerPath alloc] initWithOrigin:0 client:value_4 player:0];

  MRAddPlayerPathToXPCMessage(v30, v32);
  xpc_dictionary_set_double(v30, "timeout", timeout);
  v33 = +[MRMediaRemoteServiceClient sharedServiceClient];
  service = [v33 service];
  mrXPCConnection = [service mrXPCConnection];
  v43[0] = MEMORY[0x1E69E9820];
  v43[1] = 3221225472;
  v43[2] = __122__MRAVEndpoint_sendCommand_withOptions_toNewEndpointContainingOutputDeviceUIDs_nowPlayingClient_timeout_queue_completion___block_invoke_608;
  v43[3] = &unk_1E769B338;
  v44 = v26;
  v36 = v26;
  [mrXPCConnection sendMessage:v30 queue:queueCopy reply:v43];

  v37 = *MEMORY[0x1E69E9840];
}

void __122__MRAVEndpoint_sendCommand_withOptions_toNewEndpointContainingOutputDeviceUIDs_nowPlayingClient_timeout_queue_completion___block_invoke(void *a1, void *a2, void *a3)
{
  v51 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = [v6 error];

  if (v6 && !v7)
  {
    v8 = [v5 debugName];

    v9 = _MRLogForCategory(0xAuLL);
    v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
    if (v8)
    {
      if (v10)
      {
        v11 = a1[4];
        v12 = a1[5];
        v13 = [v5 debugName];
        v14 = [MEMORY[0x1E695DF00] date];
        [v14 timeIntervalSinceDate:a1[6]];
        v41 = 138544386;
        v42 = v11;
        v43 = 2114;
        v44 = v12;
        v45 = 2112;
        v46 = v6;
        v47 = 2114;
        v48 = v13;
        v49 = 2048;
        v50 = v15;
        v16 = "Response: %{public}@<%{public}@> returned <%@> for %{public}@ in %.4lf seconds";
        v17 = v9;
        v18 = 52;
LABEL_13:
        _os_log_impl(&dword_1A2860000, v17, OS_LOG_TYPE_DEFAULT, v16, &v41, v18);
        goto LABEL_14;
      }

      goto LABEL_23;
    }

    if (!v10)
    {
      goto LABEL_23;
    }

    v31 = a1[4];
    v32 = a1[5];
    v13 = [MEMORY[0x1E695DF00] date];
    [v13 timeIntervalSinceDate:a1[6]];
    v41 = 138544130;
    v42 = v31;
    v43 = 2114;
    v44 = v32;
    v45 = 2112;
    v46 = v6;
    v47 = 2048;
    v48 = v33;
    v34 = "Response: %{public}@<%{public}@> returned <%@> in %.4lf seconds";
    v35 = v9;
    v36 = 42;
LABEL_21:
    _os_log_impl(&dword_1A2860000, v35, OS_LOG_TYPE_DEFAULT, v34, &v41, v36);
    goto LABEL_22;
  }

  v19 = [v6 error];

  v20 = [v5 debugName];

  v21 = _MRLogForCategory(0xAuLL);
  v9 = v21;
  if (v19)
  {
    v22 = os_log_type_enabled(v21, OS_LOG_TYPE_ERROR);
    if (v20)
    {
      if (v22)
      {
        v23 = a1[4];
        v24 = a1[5];
        v13 = [v6 error];
        v14 = [v5 debugName];
        v25 = [MEMORY[0x1E695DF00] date];
        [v25 timeIntervalSinceDate:a1[6]];
        v41 = 138544386;
        v42 = v23;
        v43 = 2114;
        v44 = v24;
        v45 = 2114;
        v46 = v13;
        v47 = 2114;
        v48 = v14;
        v49 = 2048;
        v50 = v26;
        _os_log_error_impl(&dword_1A2860000, v9, OS_LOG_TYPE_ERROR, "Response: %{public}@<%{public}@> returned with error <%{public}@> for %{public}@ in %.4lf seconds", &v41, 0x34u);

LABEL_14:
LABEL_22:

        goto LABEL_23;
      }
    }

    else if (v22)
    {
      __122__MRAVEndpoint_sendCommand_withOptions_toNewEndpointContainingOutputDeviceUIDs_nowPlayingClient_timeout_queue_completion___block_invoke_cold_1(a1, v6, v9);
    }

    goto LABEL_23;
  }

  v27 = os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT);
  if (!v20)
  {
    if (!v27)
    {
      goto LABEL_23;
    }

    v37 = a1[4];
    v38 = a1[5];
    v13 = [MEMORY[0x1E695DF00] date];
    [v13 timeIntervalSinceDate:a1[6]];
    v41 = 138543874;
    v42 = v37;
    v43 = 2114;
    v44 = v38;
    v45 = 2048;
    v46 = v39;
    v34 = "Response: %{public}@<%{public}@> returned in %.4lf seconds";
    v35 = v9;
    v36 = 32;
    goto LABEL_21;
  }

  if (v27)
  {
    v28 = a1[4];
    v29 = a1[5];
    v13 = [v5 debugName];
    v14 = [MEMORY[0x1E695DF00] date];
    [v14 timeIntervalSinceDate:a1[6]];
    v41 = 138544130;
    v42 = v28;
    v43 = 2114;
    v44 = v29;
    v45 = 2114;
    v46 = v13;
    v47 = 2048;
    v48 = v30;
    v16 = "Response: %{public}@<%{public}@> returned for %{public}@ in %.4lf seconds";
    v17 = v9;
    v18 = 42;
    goto LABEL_13;
  }

LABEL_23:

  (*(a1[7] + 16))();
  v40 = *MEMORY[0x1E69E9840];
}

void __122__MRAVEndpoint_sendCommand_withOptions_toNewEndpointContainingOutputDeviceUIDs_nowPlayingClient_timeout_queue_completion___block_invoke_608(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  v6 = MRCreateCommandResultFromXPCMessage(v8);
  if (!v6)
  {
    v6 = [[MRCommandResult alloc] initWithError:v5];
  }

  v7 = MRCreateEndpointFromXPCMessage(v8);
  (*(*(a1 + 32) + 16))();
}

+ (void)findMyGroupLeaderWithTimeout:(double)timeout details:(id)details queue:(id)queue completion:(id)completion
{
  v44 = *MEMORY[0x1E69E9840];
  detailsCopy = details;
  queueCopy = queue;
  completionCopy = completion;
  date = [MEMORY[0x1E695DF00] date];
  v13 = objc_alloc(MEMORY[0x1E696AD60]);
  requestID = [detailsCopy requestID];
  v15 = [v13 initWithFormat:@"%@<%@>", @"findMyGroupLeader", requestID];

  v16 = _MRLogForCategory(0xAuLL);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v43 = v15;
    _os_log_impl(&dword_1A2860000, v16, OS_LOG_TYPE_DEFAULT, "Request: %{public}@", buf, 0xCu);
  }

  v35[0] = MEMORY[0x1E69E9820];
  v35[1] = 3221225472;
  v35[2] = __70__MRAVEndpoint_findMyGroupLeaderWithTimeout_details_queue_completion___block_invoke;
  v35[3] = &unk_1E76A23A0;
  v36 = @"findMyGroupLeader";
  v17 = detailsCopy;
  v37 = v17;
  v18 = date;
  v38 = v18;
  v19 = completionCopy;
  v40 = v19;
  v20 = queueCopy;
  v39 = v20;
  v21 = MEMORY[0x1A58E3570](v35);
  v22 = +[MRDeviceInfoRequest localDeviceInfo];
  groupContainsDiscoverableGroupLeader = [v22 groupContainsDiscoverableGroupLeader];
  isAirPlayActive = [v22 isAirPlayActive];
  v25 = 1;
  if (groupContainsDiscoverableGroupLeader)
  {
    v25 = 2;
  }

  if (!isAirPlayActive)
  {
    v25 = 0;
  }

  if (v25)
  {
    if (v25 == 1)
    {
      v26 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithMRError:33];
      (v21)[2](v21, 0, v26);
    }

    else
    {
      v26 = MRMediaRemoteCopyDeviceUID();
      if (v26)
      {
        v27 = [MRAVReconnaissanceSession alloc];
        v41 = v26;
        v28 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v41 count:1];
        v29 = [(MRAVReconnaissanceSession *)v27 initWithOutputDeviceUIDs:v28 features:8 details:v17];

        v32[0] = MEMORY[0x1E69E9820];
        v32[1] = 3221225472;
        v32[2] = __70__MRAVEndpoint_findMyGroupLeaderWithTimeout_details_queue_completion___block_invoke_2;
        v32[3] = &unk_1E76A23C8;
        v33 = v29;
        v34 = v21;
        v30 = v29;
        [(MRAVReconnaissanceSession *)v30 beginSearchWithTimeout:v32 completion:timeout];
      }

      else
      {
        v30 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithMRError:39];
        (v21)[2](v21, 0, v30);
      }
    }
  }

  else
  {
    v21[2](v21, 0, 0);
  }

  v31 = *MEMORY[0x1E69E9840];
}

void __70__MRAVEndpoint_findMyGroupLeaderWithTimeout_details_queue_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v34 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = _MRLogForCategory(0xAuLL);
  v8 = v7;
  if (v5 && !v6)
  {
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_11;
    }

    v9 = *(a1 + 32);
    v10 = [*(a1 + 40) requestID];
    v11 = [MEMORY[0x1E695DF00] date];
    [v11 timeIntervalSinceDate:*(a1 + 48)];
    *buf = 138544130;
    v27 = v9;
    v28 = 2114;
    v29 = v10;
    v30 = 2112;
    v31 = v5;
    v32 = 2048;
    v33 = v12;
    v13 = "Response: %{public}@<%{public}@> returned <%@> in %.4lf seconds";
    v14 = v8;
    v15 = 42;
LABEL_10:
    _os_log_impl(&dword_1A2860000, v14, OS_LOG_TYPE_DEFAULT, v13, buf, v15);

    goto LABEL_11;
  }

  if (!v6)
  {
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_11;
    }

    v16 = *(a1 + 32);
    v10 = [*(a1 + 40) requestID];
    v11 = [MEMORY[0x1E695DF00] date];
    [v11 timeIntervalSinceDate:*(a1 + 48)];
    *buf = 138543874;
    v27 = v16;
    v28 = 2114;
    v29 = v10;
    v30 = 2048;
    v31 = v17;
    v13 = "Response: %{public}@<%{public}@> returned in %.4lf seconds";
    v14 = v8;
    v15 = 32;
    goto LABEL_10;
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    __70__MRAVEndpoint_findMyGroupLeaderWithTimeout_details_queue_completion___block_invoke_cold_1(a1, v6, v8);
  }

LABEL_11:

  v18 = *(a1 + 64);
  if (v18)
  {
    v19 = *(a1 + 56);
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __70__MRAVEndpoint_findMyGroupLeaderWithTimeout_details_queue_completion___block_invoke_612;
    v22[3] = &unk_1E769AC18;
    v25 = v18;
    v23 = v5;
    v24 = v6;
    v20 = MRCreateDonatedQosBlock(v22);
    dispatch_async(v19, v20);
  }

  v21 = *MEMORY[0x1E69E9840];
}

void __70__MRAVEndpoint_findMyGroupLeaderWithTimeout_details_queue_completion___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a1 + 40);
  v7 = *(v6 + 16);
  v8 = *(a1 + 32);
  v7(v6, a3, a4);
}

+ (void)prepareGroupForPlaybackWithOutputDeviceUIDs:(id)ds forBundleID:(id)d timeout:(double)timeout details:(id)details queue:(id)queue completion:(id)completion
{
  v50 = *MEMORY[0x1E69E9840];
  dsCopy = ds;
  dCopy = d;
  detailsCopy = details;
  queueCopy = queue;
  completionCopy = completion;
  if ([dsCopy count])
  {
    if (dCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    +[MRAVEndpoint prepareGroupForPlaybackWithOutputDeviceUIDs:forBundleID:timeout:details:queue:completion:];
    if (dCopy)
    {
LABEL_3:
      if (queueCopy)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  +[MRAVEndpoint prepareGroupForPlaybackWithOutputDeviceUIDs:forBundleID:timeout:details:queue:completion:];
  if (!queueCopy)
  {
LABEL_4:
    queueCopy = MEMORY[0x1E69E96A0];
    v18 = MEMORY[0x1E69E96A0];
  }

LABEL_5:
  v19 = [MEMORY[0x1E695DF00] now];
  if (!detailsCopy)
  {
    detailsCopy = [[MRRequestDetails alloc] initWithInitiator:@"Infer" requestID:0 reason:@"API"];
  }

  v43[0] = MEMORY[0x1E69E9820];
  v43[1] = 3221225472;
  v43[2] = __105__MRAVEndpoint_prepareGroupForPlaybackWithOutputDeviceUIDs_forBundleID_timeout_details_queue_completion___block_invoke;
  v43[3] = &unk_1E76A2708;
  v44 = @"prepareGroupForPlaybackWithOutputDeviceUIDs";
  v20 = detailsCopy;
  v45 = v20;
  v40 = v19;
  v46 = v40;
  v39 = completionCopy;
  v47 = v39;
  v21 = MEMORY[0x1A58E3570](v43);
  v22 = dCopy;
  v23 = dsCopy;
  dCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"UIDs=(%@), bundleID=%@", dsCopy, dCopy];
  v25 = objc_alloc(MEMORY[0x1E696AD60]);
  requestID = [(MRRequestDetails *)v20 requestID];
  v27 = [v25 initWithFormat:@"%@<%@>", @"prepareGroupForPlaybackWithOutputDeviceUIDs", requestID];

  if (dCopy)
  {
    [v27 appendFormat:@" for %@", dCopy];
  }

  reason = [(MRRequestDetails *)v20 reason];

  if (reason)
  {
    reason2 = [(MRRequestDetails *)v20 reason];
    [v27 appendFormat:@" because %@", reason2];
  }

  v38 = dCopy;
  v30 = _MRLogForCategory(0xAuLL);
  if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v49 = v27;
    _os_log_impl(&dword_1A2860000, v30, OS_LOG_TYPE_DEFAULT, "Request: %{public}@", buf, 0xCu);
  }

  v31 = MRCreateXPCMessage(0x300000000000034uLL);
  MRAddPropertyListToXPCMessage(v31, v23, "MRXPC_OUTPUT_DEVICE_UID_ARRAY_DATA_KEY");
  v32 = [[MRPlayerPath alloc] initWithOrigin:0 bundleIdentifier:v22 player:0];
  MRAddPlayerPathToXPCMessage(v31, v32);
  xpc_dictionary_set_double(v31, "timeout", timeout);
  MRAddRequestDetailsToXPCMessage(v31, v20);
  v33 = +[MRMediaRemoteServiceClient sharedServiceClient];
  service = [v33 service];
  mrXPCConnection = [service mrXPCConnection];
  v41[0] = MEMORY[0x1E69E9820];
  v41[1] = 3221225472;
  v41[2] = __105__MRAVEndpoint_prepareGroupForPlaybackWithOutputDeviceUIDs_forBundleID_timeout_details_queue_completion___block_invoke_626;
  v41[3] = &unk_1E769B338;
  v42 = v21;
  v36 = v21;
  [mrXPCConnection sendMessage:v31 queue:queueCopy reply:v41];

  v37 = *MEMORY[0x1E69E9840];
}

void __105__MRAVEndpoint_prepareGroupForPlaybackWithOutputDeviceUIDs_forBundleID_timeout_details_queue_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v27 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = _MRLogForCategory(0xAuLL);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __70__MRAVEndpoint_findMyGroupLeaderWithTimeout_details_queue_completion___block_invoke_cold_1(a1, v6, v7);
    }
  }

  else
  {
    v8 = [v5 debugName];

    v7 = _MRLogForCategory(0xAuLL);
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
      v13 = [MEMORY[0x1E695DF00] date];
      [v13 timeIntervalSinceDate:*(a1 + 48)];
      v19 = 138544130;
      v20 = v10;
      v21 = 2114;
      v22 = v11;
      v23 = 2112;
      v24 = v12;
      v25 = 2048;
      v26 = v14;
      _os_log_impl(&dword_1A2860000, v7, OS_LOG_TYPE_DEFAULT, "Response: %{public}@<%{public}@> returned <%@> in %.4lf seconds", &v19, 0x2Au);
    }

    else
    {
      if (!v9)
      {
        goto LABEL_10;
      }

      v15 = *(a1 + 32);
      v11 = [*(a1 + 40) requestID];
      v12 = [MEMORY[0x1E695DF00] date];
      [v12 timeIntervalSinceDate:*(a1 + 48)];
      v19 = 138543874;
      v20 = v15;
      v21 = 2114;
      v22 = v11;
      v23 = 2048;
      v24 = v16;
      _os_log_impl(&dword_1A2860000, v7, OS_LOG_TYPE_DEFAULT, "Response: %{public}@<%{public}@> returned in %.4lf seconds", &v19, 0x20u);
    }
  }

LABEL_10:

  v17 = *(a1 + 56);
  if (v17)
  {
    (*(v17 + 16))(v17, v5, v6);
  }

  v18 = *MEMORY[0x1E69E9840];
}

void __105__MRAVEndpoint_prepareGroupForPlaybackWithOutputDeviceUIDs_forBundleID_timeout_details_queue_completion___block_invoke_626(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = MRCreateEndpointFromXPCMessage(a2);
  (*(*(a1 + 32) + 16))();
}

- (void)willStartingPlaybackToOutputDeviceInterruptPlayback:(id)playback duration:(double)duration queue:(id)queue completion:(id)completion
{
  v10 = MEMORY[0x1E696AFB0];
  completionCopy = completion;
  queueCopy = queue;
  playbackCopy = playback;
  uUID = [v10 UUID];
  uUIDString = [uUID UUIDString];
  [(MRAVEndpoint *)self _willStartingPlaybackToOutputDeviceInterruptPlayback:playbackCopy duration:uUIDString requestID:queueCopy queue:completionCopy completion:duration];
}

- (void)willStartingPlaybackToOutputDevicesInterruptPlayback:(id)playback originatingOutputDeviceUID:(id)d duration:(double)duration queue:(id)queue completion:(id)completion
{
  v70 = *MEMORY[0x1E69E9840];
  playbackCopy = playback;
  dCopy = d;
  queueCopy = queue;
  completionCopy = completion;
  if (completionCopy)
  {
    if (queueCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [MRAVEndpoint willStartingPlaybackToOutputDevicesInterruptPlayback:originatingOutputDeviceUID:duration:queue:completion:];
    if (queueCopy)
    {
      goto LABEL_3;
    }
  }

  [MRAVEndpoint willStartingPlaybackToOutputDevicesInterruptPlayback:originatingOutputDeviceUID:duration:queue:completion:];
LABEL_3:
  v15 = objc_alloc(MEMORY[0x1E696AEC0]);
  uniqueIdentifier = [(MRAVEndpoint *)self uniqueIdentifier];
  localizedName = [(MRAVEndpoint *)self localizedName];
  v51 = dCopy;
  dCopy = [v15 initWithFormat:@"endpoint=%@(%@), outputDevices=%@ originatingOutputDeviceUID=%@", uniqueIdentifier, localizedName, playbackCopy, dCopy];

  date = [MEMORY[0x1E695DF00] date];
  uUID = [MEMORY[0x1E696AFB0] UUID];
  uUIDString = [uUID UUIDString];

  v22 = [objc_alloc(MEMORY[0x1E696AD60]) initWithFormat:@"%@<%@>", @"willStartingPlaybackToOutputDeviceInterruptPlayback", uUIDString];
  v23 = v22;
  if (dCopy)
  {
    [(__CFString *)v22 appendFormat:@" for %@", dCopy];
  }

  v24 = _MRLogForCategory(0xAuLL);
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v65 = v23;
    _os_log_impl(&dword_1A2860000, v24, OS_LOG_TYPE_DEFAULT, "Request: %{public}@", buf, 0xCu);
  }

  v57[0] = MEMORY[0x1E69E9820];
  v57[1] = 3221225472;
  v57[2] = __122__MRAVEndpoint_willStartingPlaybackToOutputDevicesInterruptPlayback_originatingOutputDeviceUID_duration_queue_completion___block_invoke;
  v57[3] = &unk_1E76A2EF8;
  v25 = dCopy;
  v58 = v25;
  v59 = @"willStartingPlaybackToOutputDeviceInterruptPlayback";
  v26 = uUIDString;
  v60 = v26;
  v27 = date;
  v61 = v27;
  v28 = queueCopy;
  v62 = v28;
  v29 = completionCopy;
  v63 = v29;
  v30 = MEMORY[0x1A58E3570](v57);
  v31 = +[MRDeviceInfoRequest localDeviceInfo];
  v32 = +[MRUserSettings currentSettings];
  canHostMultiplayerStream = [v32 canHostMultiplayerStream];

  if (canHostMultiplayerStream)
  {
    if ([playbackCopy count])
    {
      v34 = playbackCopy;
    }

    else
    {
      v34 = [playbackCopy mutableCopy];
      wHAIdentifier = v51;
      if (!v51)
      {
        wHAIdentifier = [v31 WHAIdentifier];
      }

      v51 = wHAIdentifier;
      [v34 addObject:?];
    }

    wHAIdentifier2 = [v31 WHAIdentifier];
    v38 = [v34 containsObject:wHAIdentifier2];

    if (v38 && (+[MRAVClusterController sharedController](MRAVClusterController, "sharedController"), v39 = objc_claimAutoreleasedReturnValue(), v40 = [v39 clusterStatus], v39, v40 == 2))
    {
      v35 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Cluster secondaries cannot answer this question. Defaulting to No"];
      v41 = _MRLogForCategory(0xAuLL);
      if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543874;
        v65 = @"willStartingPlaybackToOutputDeviceInterruptPlayback";
        v66 = 2114;
        v67 = v26;
        v68 = 2112;
        v69 = v35;
        _os_log_impl(&dword_1A2860000, v41, OS_LOG_TYPE_DEFAULT, "Update: %{public}@<%{public}@> %@", buf, 0x20u);
      }

      v30[2](v30, 0);
    }

    else
    {
      v35 = MRCreateXPCMessage(0x30000000000002AuLL);
      MRAddPropertyListToXPCMessage(v35, v34, "MRXPC_OUTPUT_DEVICE_UID_ARRAY_DATA_KEY");
      v42 = +[MRMediaRemoteServiceClient sharedServiceClient];
      [v42 service];
      v49 = v29;
      v50 = v31;
      v43 = v26;
      v45 = v44 = v25;
      [v45 mrXPCConnection];
      v47 = v46 = v27;
      v52[0] = MEMORY[0x1E69E9820];
      v52[1] = 3221225472;
      v52[2] = __122__MRAVEndpoint_willStartingPlaybackToOutputDevicesInterruptPlayback_originatingOutputDeviceUID_duration_queue_completion___block_invoke_646;
      v52[3] = &unk_1E769B338;
      v53 = v30;
      [v47 sendMessage:v35 queue:v28 reply:v52];

      v27 = v46;
      v25 = v44;
      v26 = v43;
      v29 = v49;
      v31 = v50;
    }
  }

  else
  {
    v35 = objc_alloc_init(MRNowPlayingRequest);
    v54[0] = MEMORY[0x1E69E9820];
    v54[1] = 3221225472;
    v54[2] = __122__MRAVEndpoint_willStartingPlaybackToOutputDevicesInterruptPlayback_originatingOutputDeviceUID_duration_queue_completion___block_invoke_2;
    v54[3] = &unk_1E76A2F20;
    v56 = v30;
    v55 = v31;
    [(MRNowPlayingRequest *)v35 requestIsPlayingOnQueue:v28 completion:v54];

    v34 = playbackCopy;
  }

  v48 = *MEMORY[0x1E69E9840];
}

void __122__MRAVEndpoint_willStartingPlaybackToOutputDevicesInterruptPlayback_originatingOutputDeviceUID_duration_queue_completion___block_invoke(uint64_t a1, uint64_t a2)
{
  v45 = *MEMORY[0x1E69E9840];
  v4 = [MEMORY[0x1E696AD98] numberWithBool:a2];

  v5 = *(a1 + 32);
  v6 = _MRLogForCategory(0xAuLL);
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (!v4)
  {
    if (v5)
    {
      if (!v7)
      {
        goto LABEL_15;
      }

      v18 = *(a1 + 40);
      v17 = *(a1 + 48);
      v19 = *(a1 + 32);
      v10 = [MEMORY[0x1E695DF00] date];
      [v10 timeIntervalSinceDate:*(a1 + 56)];
      *buf = 138544130;
      v36 = v18;
      v37 = 2114;
      v38 = v17;
      v39 = 2114;
      v40 = v19;
      v41 = 2048;
      v42 = v20;
      v21 = "Response: %{public}@<%{public}@> returned for %{public}@ in %.4lf seconds";
      v22 = v6;
      v23 = 42;
    }

    else
    {
      if (!v7)
      {
        goto LABEL_15;
      }

      v27 = *(a1 + 40);
      v28 = *(a1 + 48);
      v10 = [MEMORY[0x1E695DF00] date];
      [v10 timeIntervalSinceDate:*(a1 + 56)];
      *buf = 138543874;
      v36 = v27;
      v37 = 2114;
      v38 = v28;
      v39 = 2048;
      v40 = v29;
      v21 = "Response: %{public}@<%{public}@> returned in %.4lf seconds";
      v22 = v6;
      v23 = 32;
    }

    _os_log_impl(&dword_1A2860000, v22, OS_LOG_TYPE_DEFAULT, v21, buf, v23);
    goto LABEL_14;
  }

  if (v5)
  {
    if (v7)
    {
      v8 = *(a1 + 40);
      v9 = *(a1 + 48);
      v10 = [MEMORY[0x1E696AD98] numberWithBool:a2];
      v11 = *(a1 + 32);
      v12 = [MEMORY[0x1E695DF00] date];
      [v12 timeIntervalSinceDate:*(a1 + 56)];
      *buf = 138544386;
      v36 = v8;
      v37 = 2114;
      v38 = v9;
      v39 = 2112;
      v40 = v10;
      v41 = 2114;
      v42 = v11;
      v43 = 2048;
      v44 = v13;
      v14 = "Response: %{public}@<%{public}@> returned <%@> for %{public}@ in %.4lf seconds";
      v15 = v6;
      v16 = 52;
LABEL_10:
      _os_log_impl(&dword_1A2860000, v15, OS_LOG_TYPE_DEFAULT, v14, buf, v16);

LABEL_14:
    }
  }

  else if (v7)
  {
    v24 = *(a1 + 40);
    v25 = *(a1 + 48);
    v10 = [MEMORY[0x1E696AD98] numberWithBool:a2];
    v12 = [MEMORY[0x1E695DF00] date];
    [v12 timeIntervalSinceDate:*(a1 + 56)];
    *buf = 138544130;
    v36 = v24;
    v37 = 2114;
    v38 = v25;
    v39 = 2112;
    v40 = v10;
    v41 = 2048;
    v42 = v26;
    v14 = "Response: %{public}@<%{public}@> returned <%@> in %.4lf seconds";
    v15 = v6;
    v16 = 42;
    goto LABEL_10;
  }

LABEL_15:

  v32[0] = MEMORY[0x1E69E9820];
  v32[1] = 3221225472;
  v32[2] = __122__MRAVEndpoint_willStartingPlaybackToOutputDevicesInterruptPlayback_originatingOutputDeviceUID_duration_queue_completion___block_invoke_639;
  v32[3] = &unk_1E769AB78;
  v30 = *(a1 + 64);
  v33 = *(a1 + 72);
  v34 = a2;
  dispatch_async(v30, v32);

  v31 = *MEMORY[0x1E69E9840];
}

uint64_t __122__MRAVEndpoint_willStartingPlaybackToOutputDevicesInterruptPlayback_originatingOutputDeviceUID_duration_queue_completion___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 40);
  if (a2)
  {
    a2 = [*(a1 + 32) isProxyGroupPlayer];
  }

  v3 = *(v2 + 16);

  return v3(v2, a2);
}

uint64_t __122__MRAVEndpoint_willStartingPlaybackToOutputDevicesInterruptPlayback_originatingOutputDeviceUID_duration_queue_completion___block_invoke_646(uint64_t a1, xpc_object_t xdict)
{
  v2 = *(a1 + 32);
  v3 = xpc_dictionary_get_BOOL(xdict, "MRXPC_BOOL_RESULT_KEY");
  v4 = *(v2 + 16);

  return v4(v2, v3);
}

void __105__MRAVEndpoint__willStartingPlaybackToOutputDeviceInterruptPlayback_duration_requestID_queue_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v58 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  if (!v5)
  {
    goto LABEL_6;
  }

  v8 = objc_alloc(MEMORY[0x1E696AEC0]);
  v9 = [v6 metadata];
  v10 = [v9 title];
  v11 = [v8 initWithFormat:@"Will interrupt %@ on %@", v10, v5];

  if (!v11)
  {
LABEL_6:
    v23 = *(a1 + 40);
    v13 = _MRLogForCategory(0xAuLL);
    v24 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
    if (v23)
    {
      if (v24)
      {
        v26 = *(a1 + 48);
        v25 = *(a1 + 56);
        v27 = *(a1 + 40);
        v28 = [MEMORY[0x1E695DF00] date];
        [v28 timeIntervalSinceDate:*(a1 + 64)];
        *buf = 138544130;
        v49 = v26;
        v50 = 2114;
        v51 = v25;
        v52 = 2114;
        v53 = v27;
        v54 = 2048;
        v55 = v29;
        v30 = "Response: %{public}@<%{public}@> returned for %{public}@ in %.4lf seconds";
        v31 = v13;
        v32 = 42;
LABEL_11:
        _os_log_impl(&dword_1A2860000, v31, OS_LOG_TYPE_DEFAULT, v30, buf, v32);
      }
    }

    else if (v24)
    {
      v33 = *(a1 + 48);
      v34 = *(a1 + 56);
      v28 = [MEMORY[0x1E695DF00] date];
      [v28 timeIntervalSinceDate:*(a1 + 64)];
      *buf = 138543874;
      v49 = v33;
      v50 = 2114;
      v51 = v34;
      v52 = 2048;
      v53 = v35;
      v30 = "Response: %{public}@<%{public}@> returned in %.4lf seconds";
      v31 = v13;
      v32 = 32;
      goto LABEL_11;
    }

    v11 = 0;
    goto LABEL_16;
  }

  v12 = *(a1 + 40);
  v13 = _MRLogForCategory(0xAuLL);
  v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
  if (v12)
  {
    if (v14)
    {
      v16 = *(a1 + 48);
      v15 = *(a1 + 56);
      v17 = *(a1 + 40);
      v18 = [MEMORY[0x1E695DF00] date];
      [v18 timeIntervalSinceDate:*(a1 + 64)];
      *buf = 138544386;
      v49 = v16;
      v50 = 2114;
      v51 = v15;
      v52 = 2112;
      v53 = v11;
      v54 = 2114;
      v55 = v17;
      v56 = 2048;
      v57 = v19;
      v20 = "Response: %{public}@<%{public}@> returned <%@> for %{public}@ in %.4lf seconds";
      v21 = v13;
      v22 = 52;
LABEL_15:
      _os_log_impl(&dword_1A2860000, v21, OS_LOG_TYPE_DEFAULT, v20, buf, v22);
    }
  }

  else if (v14)
  {
    v36 = *(a1 + 48);
    v37 = *(a1 + 56);
    v18 = [MEMORY[0x1E695DF00] date];
    [v18 timeIntervalSinceDate:*(a1 + 64)];
    *buf = 138544130;
    v49 = v36;
    v50 = 2114;
    v51 = v37;
    v52 = 2112;
    v53 = v11;
    v54 = 2048;
    v55 = v38;
    v20 = "Response: %{public}@<%{public}@> returned <%@> in %.4lf seconds";
    v21 = v13;
    v22 = 42;
    goto LABEL_15;
  }

LABEL_16:

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __105__MRAVEndpoint__willStartingPlaybackToOutputDeviceInterruptPlayback_duration_requestID_queue_completion___block_invoke_656;
  block[3] = &unk_1E769AC18;
  v39 = *(a1 + 72);
  v40 = *(a1 + 80);
  v46 = v6;
  v47 = v40;
  v45 = v5;
  v41 = v6;
  v42 = v5;
  dispatch_async(v39, block);

  v43 = *MEMORY[0x1E69E9840];
}

void __105__MRAVEndpoint__willStartingPlaybackToOutputDeviceInterruptPlayback_duration_requestID_queue_completion___block_invoke_2(void *a1, void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = _MRLogForCategory(0xAuLL);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = a1[4];
    v6 = a1[5];
    v8 = 138543874;
    v9 = v5;
    v10 = 2114;
    v11 = v6;
    v12 = 2112;
    v13 = v3;
    _os_log_impl(&dword_1A2860000, v4, OS_LOG_TYPE_DEFAULT, "Update: %{public}@<%{public}@> %@", &v8, 0x20u);
  }

  (*(a1[6] + 16))();
  v7 = *MEMORY[0x1E69E9840];
}

void __105__MRAVEndpoint__willStartingPlaybackToOutputDeviceInterruptPlayback_duration_requestID_queue_completion___block_invoke_658(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = a3;
  if ([*(a1 + 32) disarm])
  {
    (*(*(a1 + 40) + 16))();
  }
}

uint64_t __105__MRAVEndpoint__willStartingPlaybackToOutputDeviceInterruptPlayback_duration_requestID_queue_completion___block_invoke_663(uint64_t a1, void *a2)
{
  v3 = [a2 uid];
  LODWORD(a1) = [v3 isEqualToString:*(a1 + 32)];

  return a1 ^ 1;
}

void __105__MRAVEndpoint__willStartingPlaybackToOutputDeviceInterruptPlayback_duration_requestID_queue_completion___block_invoke_670(double *a1, void *a2, void *a3)
{
  v27 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"error requesting playbackQueue %@", v6];
    v8 = _MRLogForCategory(0xAuLL);
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
LABEL_4:

      (*(*(a1 + 7) + 16))();
      goto LABEL_7;
    }

LABEL_3:
    v9 = *(a1 + 4);
    v10 = *(a1 + 5);
    *buf = 138543874;
    v22 = v9;
    v23 = 2114;
    v24 = v10;
    v25 = 2112;
    v26 = v7;
    _os_log_impl(&dword_1A2860000, v8, OS_LOG_TYPE_DEFAULT, "Update: %{public}@<%{public}@> %@", buf, 0x20u);
    goto LABEL_4;
  }

  if ([v5 playbackState] != 1)
  {
    v11 = [v5 playerLastPlayingDate];
    [v11 timeIntervalSinceNow];
    v13 = -v12;

    if (a1[8] <= v13)
    {
      v7 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"timeSincePlaying is greater than specified duration %lf > %lf", *&v13, *(a1 + 8)];
      v8 = _MRLogForCategory(0xAuLL);
      if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_4;
      }

      goto LABEL_3;
    }
  }

LABEL_7:
  v16 = a1 + 6;
  v14 = *(a1 + 6);
  v15 = v16[1];
  v17 = [v5 playbackQueue];
  v18 = [v17 contentItems];
  v19 = [v18 firstObject];
  (*(v15 + 16))(v15, v14, v19);

  v20 = *MEMORY[0x1E69E9840];
}

- (id)discoverySessionWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  if ([(MRAVEndpoint *)self isLocalEndpoint]|| ([(MRAVEndpoint *)self supportsExternalDiscovery]& 1) != 0)
  {
    v5 = [configurationCopy copy];
    _externalDiscoverySessionDestinationUID = [(MRAVEndpoint *)self _externalDiscoverySessionDestinationUID];
    [v5 setOutputDeviceUID:_externalDiscoverySessionDestinationUID];

    v7 = [MRAVRoutingDiscoverySession discoverySessionWithConfiguration:v5];
  }

  else
  {
    v8 = _MRLogForCategory(0);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [MRAVEndpoint discoverySessionWithConfiguration:];
    }

    v7 = 0;
  }

  return v7;
}

- (void)createHostedEndpointWithOutputDeviceUIDs:(id)ds queue:(id)queue completion:(id)completion
{
  completionCopy = completion;
  queueCopy = queue;
  dsCopy = ds;
  v11 = [[MRRequestDetails alloc] initWithInitiator:@"Infer" requestID:0 reason:@"Endpoint.createHostedEndpointWithOutputDeviceUIDs.endpoint"];
  [(MRAVEndpoint *)self createHostedEndpointWithOutputDeviceUIDs:dsCopy details:v11 queue:queueCopy completion:completionCopy];
}

- (void)createHostedEndpointWithOutputDeviceUIDs:(id)ds details:(id)details queue:(id)queue completion:(id)completion
{
  detailsCopy = details;
  queueCopy = queue;
  completionCopy = completion;
  dsCopy = ds;
  if (!detailsCopy)
  {
    detailsCopy = [[MRRequestDetails alloc] initWithInitiator:@"Infer" requestID:0 reason:@"Endpoint.createHostedEndpointWithOutputDeviceUIDs.endpoint"];
  }

  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __82__MRAVEndpoint_createHostedEndpointWithOutputDeviceUIDs_details_queue_completion___block_invoke;
  v26[3] = &unk_1E76A2FE8;
  v28 = completionCopy;
  v14 = queueCopy;
  v27 = v14;
  v15 = completionCopy;
  v16 = MEMORY[0x1A58E3570](v26);
  v17 = qos_class_self();
  v18 = dispatch_get_global_queue(v17, 0);
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __82__MRAVEndpoint_createHostedEndpointWithOutputDeviceUIDs_details_queue_completion___block_invoke_3;
  v22[3] = &unk_1E76A3010;
  v23 = detailsCopy;
  v24 = v14;
  v25 = v16;
  v19 = v16;
  v20 = v14;
  v21 = detailsCopy;
  [(MRAVEndpoint *)self createHostedEndpointWithOutputDeviceUIDs:ds details:v21 queue:v18 groupUIDCompletion:v22];
}

void __82__MRAVEndpoint_createHostedEndpointWithOutputDeviceUIDs_details_queue_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 40);
  if (v7)
  {
    v8 = *(a1 + 32);
    v9 = v8;
    if (!v8)
    {
      v9 = MEMORY[0x1E69E96A0];
      v10 = MEMORY[0x1E69E96A0];
      v7 = *(a1 + 40);
    }

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __82__MRAVEndpoint_createHostedEndpointWithOutputDeviceUIDs_details_queue_completion___block_invoke_2;
    block[3] = &unk_1E769AC18;
    v14 = v7;
    v12 = v5;
    v13 = v6;
    dispatch_async(v9, block);
    if (!v8)
    {
    }
  }
}

void __82__MRAVEndpoint_createHostedEndpointWithOutputDeviceUIDs_details_queue_completion___block_invoke_3(uint64_t a1, void *a2, uint64_t a3)
{
  v7 = a2;
  if (a3)
  {
    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v5 = objc_alloc_init(MRAVLightweightReconnaissanceSession);
    v6 = [*(a1 + 32) requestReasonID];
    [(MRAVLightweightReconnaissanceSession *)v5 searchEndpointsForGroupUID:v7 timeout:v6 reason:*(a1 + 40) queue:*(a1 + 48) completion:30.0];
  }
}

- (void)createHostedEndpointWithOutputDeviceUIDs:(id)ds details:(id)details queue:(id)queue groupUIDCompletion:(id)completion
{
  dsCopy = ds;
  detailsCopy = details;
  queueCopy = queue;
  completionCopy = completion;
  if (!detailsCopy)
  {
    detailsCopy = [[MRRequestDetails alloc] initWithInitiator:@"Infer" requestID:0 reason:@"Endpoint.createHostedEndpointWithOutputDeviceUIDs.groupUID"];
  }

  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __90__MRAVEndpoint_createHostedEndpointWithOutputDeviceUIDs_details_queue_groupUIDCompletion___block_invoke;
  v18[3] = &unk_1E76A1BC0;
  v18[4] = self;
  v19 = dsCopy;
  v20 = detailsCopy;
  v21 = queueCopy;
  v22 = completionCopy;
  v14 = completionCopy;
  v15 = queueCopy;
  v16 = detailsCopy;
  v17 = dsCopy;
  [(MRAVEndpoint *)self connectToExternalDeviceWithOptions:0 details:v16 completion:v18];
}

void __90__MRAVEndpoint_createHostedEndpointWithOutputDeviceUIDs_details_queue_groupUIDCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __90__MRAVEndpoint_createHostedEndpointWithOutputDeviceUIDs_details_queue_groupUIDCompletion___block_invoke_2;
    v6[3] = &unk_1E769AB28;
    v4 = *(a1 + 56);
    v8 = *(a1 + 64);
    v7 = v3;
    dispatch_async(v4, v6);
  }

  else
  {
    v5 = [*(a1 + 32) externalDevice];
    [v5 createHostedEndpointWithOutputDeviceUIDs:*(a1 + 40) details:*(a1 + 48) queue:*(a1 + 56) completion:*(a1 + 64)];
  }
}

- (void)modifyTopologyWithRequest:(id)request withReplyQueue:(id)queue completion:(id)completion
{
  v47 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  queueCopy = queue;
  completionCopy = completion;
  if (requestCopy)
  {
    if (queueCopy)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  [MRAVEndpoint modifyTopologyWithRequest:withReplyQueue:completion:];
  if (!queueCopy)
  {
LABEL_3:
    queueCopy = MEMORY[0x1E69E96A0];
    v11 = MEMORY[0x1E69E96A0];
  }

LABEL_4:
  v12 = [MEMORY[0x1E695DF00] now];
  [v12 timeIntervalSinceNow];
  v14 = v13;
  outputDevices = [(MRAVEndpoint *)self outputDevices];
  v16 = [outputDevices count];

  v17 = MRAnalyticsCompositionForEndpoint(self);
  v18 = objc_alloc(MEMORY[0x1E696AD60]);
  requestDetails = [requestCopy requestDetails];
  requestID = [requestDetails requestID];
  v21 = [v18 initWithFormat:@"%@<%@>", @"Endpoint.modifyTopologyWithRequest", requestID];

  debugName = [(MRAVEndpoint *)self debugName];

  if (debugName)
  {
    debugName2 = [(MRAVEndpoint *)self debugName];
    [v21 appendFormat:@" for %@", debugName2];
  }

  if (requestCopy)
  {
    [v21 appendFormat:@" because %@", requestCopy];
  }

  v24 = _MRLogForCategory(0xAuLL);
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v44 = v21;
    _os_log_impl(&dword_1A2860000, v24, OS_LOG_TYPE_DEFAULT, "Request: %{public}@", buf, 0xCu);
  }

  if (MSVDeviceOSIsInternalInstall())
  {
    v25 = MRLogCategoryDiscoveryOversize();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      requestDetails2 = [requestCopy requestDetails];
      requestID2 = [requestDetails2 requestID];
      [MEMORY[0x1E696AF00] callStackSymbols];
      v35 = v17;
      v29 = v28 = v16;
      *buf = 138412546;
      v44 = requestID2;
      v45 = 2112;
      v46 = v29;
      _os_log_impl(&dword_1A2860000, v25, OS_LOG_TYPE_DEFAULT, "Endpoint.modifyTopologyWithRequest<%@> %@", buf, 0x16u);

      v16 = v28;
      v17 = v35;
    }
  }

  v36[0] = MEMORY[0x1E69E9820];
  v36[1] = 3221225472;
  v36[2] = __68__MRAVEndpoint_modifyTopologyWithRequest_withReplyQueue_completion___block_invoke;
  v36[3] = &unk_1E76A3038;
  v36[4] = self;
  v37 = requestCopy;
  v38 = v12;
  v39 = completionCopy;
  v40 = fabs(v14);
  v42 = v17;
  v41 = v16;
  v30 = completionCopy;
  v31 = v12;
  v32 = requestCopy;
  v33 = MEMORY[0x1A58E3570](v36);
  [(MRAVEndpoint *)self _modifyTopologyWithRequest:v32 withReplyQueue:queueCopy completion:v33];

  v34 = *MEMORY[0x1E69E9840];
}

void __68__MRAVEndpoint_modifyTopologyWithRequest_withReplyQueue_completion___block_invoke(uint64_t a1, void *a2)
{
  v38 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [*(a1 + 32) debugName];

  v6 = _MRLogForCategory(0xAuLL);
  v7 = v6;
  if (!v3)
  {
    v14 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
    if (!v5)
    {
      if (!v14)
      {
        goto LABEL_14;
      }

      v9 = [*(a1 + 40) requestDetails];
      v10 = [v9 requestID];
      v11 = [MEMORY[0x1E695DF00] date];
      [v11 timeIntervalSinceDate:*(a1 + 48)];
      v28 = 138543874;
      v29 = @"Endpoint.modifyTopologyWithRequest";
      v30 = 2114;
      v31 = v10;
      v32 = 2048;
      v33 = v16;
      _os_log_impl(&dword_1A2860000, v7, OS_LOG_TYPE_DEFAULT, "Response: %{public}@<%{public}@> returned in %.4lf seconds", &v28, 0x20u);
      goto LABEL_13;
    }

    if (!v14)
    {
      goto LABEL_14;
    }

    v9 = [*(a1 + 40) requestDetails];
    v10 = [v9 requestID];
    v11 = [*(a1 + 32) debugName];
    v12 = [MEMORY[0x1E695DF00] date];
    [v12 timeIntervalSinceDate:*(a1 + 48)];
    v28 = 138544130;
    v29 = @"Endpoint.modifyTopologyWithRequest";
    v30 = 2114;
    v31 = v10;
    v32 = 2114;
    v33 = v11;
    v34 = 2048;
    v35 = v15;
    _os_log_impl(&dword_1A2860000, v7, OS_LOG_TYPE_DEFAULT, "Response: %{public}@<%{public}@> returned for %{public}@ in %.4lf seconds", &v28, 0x2Au);
LABEL_8:

LABEL_13:
    goto LABEL_14;
  }

  v8 = os_log_type_enabled(v6, OS_LOG_TYPE_ERROR);
  if (v5)
  {
    if (!v8)
    {
      goto LABEL_14;
    }

    v9 = [*(a1 + 40) requestDetails];
    v10 = [v9 requestID];
    v11 = [*(a1 + 32) debugName];
    v12 = [MEMORY[0x1E695DF00] date];
    [v12 timeIntervalSinceDate:*(a1 + 48)];
    v28 = 138544386;
    v29 = @"Endpoint.modifyTopologyWithRequest";
    v30 = 2114;
    v31 = v10;
    v32 = 2114;
    v33 = v3;
    v34 = 2114;
    v35 = v11;
    v36 = 2048;
    v37 = v13;
    _os_log_error_impl(&dword_1A2860000, v7, OS_LOG_TYPE_ERROR, "Response: %{public}@<%{public}@> returned with error <%{public}@> for %{public}@ in %.4lf seconds", &v28, 0x34u);
    goto LABEL_8;
  }

  if (v8)
  {
    __68__MRAVEndpoint_modifyTopologyWithRequest_withReplyQueue_completion___block_invoke_cold_1(a1, v3, v7);
  }

LABEL_14:

  v17 = *(a1 + 56);
  if (v17)
  {
    (*(v17 + 16))(v17, v3);
  }

  v18 = [*(a1 + 40) type];
  v19 = 0;
  if (v18 > 1)
  {
    if (v18 == 3)
    {
      v20 = kMRTopologyModificationTypeSet;
      goto LABEL_24;
    }

    if (v18 == 2)
    {
      v20 = kMRTopologyModificationTypeRemove;
      goto LABEL_24;
    }

LABEL_25:
    v21 = *(a1 + 64);
    v22 = [*(a1 + 40) requestDetails];
    v23 = [v22 reason];
    v24 = *(a1 + 80);
    v25 = *(a1 + 72);
    v26 = [*(a1 + 40) outputDevices];
    MRAnalyticsTrackTopologyChangeEvent(v19, v23, v24, v25, v26, 0, v3, v21);

    goto LABEL_26;
  }

  if (v18)
  {
    if (v18 == 1)
    {
      v20 = kMRTopologyModificationTypeAdd;
LABEL_24:
      v19 = *v20;
      goto LABEL_25;
    }

    goto LABEL_25;
  }

LABEL_26:

  v27 = *MEMORY[0x1E69E9840];
}

- (void)_modifyTopologyWithRequest:(id)request withReplyQueue:(id)queue completion:(id)completion
{
  v29[1] = *MEMORY[0x1E69E9840];
  requestCopy = request;
  queueCopy = queue;
  completionCopy = completion;
  v26[0] = 0;
  v26[1] = v26;
  v26[2] = 0x3032000000;
  v26[3] = __Block_byref_object_copy__37;
  v26[4] = __Block_byref_object_dispose__37;
  v11 = requestCopy;
  v27 = v11;
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __69__MRAVEndpoint__modifyTopologyWithRequest_withReplyQueue_completion___block_invoke;
  v23[3] = &unk_1E769AB50;
  v12 = completionCopy;
  v25 = v12;
  v13 = queueCopy;
  v24 = v13;
  v14 = MEMORY[0x1A58E3570](v23);
  v28 = @"MREndpointConnectionReasonUserInfoKey";
  v29[0] = @"modifyOutputContext";
  v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v29 forKeys:&v28 count:1];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __69__MRAVEndpoint__modifyTopologyWithRequest_withReplyQueue_completion___block_invoke_3;
  v19[3] = &unk_1E76A3060;
  v22 = v26;
  v19[4] = self;
  v16 = v13;
  v20 = v16;
  v17 = v14;
  v21 = v17;
  [(MRAVEndpoint *)self connectToExternalDeviceWithOptions:1 userInfo:v15 completion:v19];

  _Block_object_dispose(v26, 8);
  v18 = *MEMORY[0x1E69E9840];
}

void __69__MRAVEndpoint__modifyTopologyWithRequest_withReplyQueue_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 40);
  if (v4)
  {
    v5 = *(a1 + 32);
    v7 = v4;
    v6 = v3;
    msv_dispatch_async_on_queue();
  }
}

void __69__MRAVEndpoint__modifyTopologyWithRequest_withReplyQueue_completion___block_invoke_3(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = *(a1 + 48);
    v4 = *(*(a1 + 48) + 16);

    v4();
  }

  else
  {
    v5 = [*(*(*(a1 + 56) + 8) + 40) outputDevices];
    v6 = [v5 count];

    if (v6)
    {
      v7 = MRMediaRemoteCopyDeviceUID();
      v8 = [*(*(*(a1 + 56) + 8) + 40) outputDevices];
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __69__MRAVEndpoint__modifyTopologyWithRequest_withReplyQueue_completion___block_invoke_4;
      v15[3] = &unk_1E769B6F8;
      v16 = v7;
      v9 = v7;
      v10 = [v8 msv_map:v15];

      v11 = [*(*(*(a1 + 56) + 8) + 40) copyWithOutputDeviceUIDs:v10];
      v12 = *(*(a1 + 56) + 8);
      v13 = *(v12 + 40);
      *(v12 + 40) = v11;
    }

    v14 = [*(a1 + 32) externalDevice];
    [v14 modifyTopologyWithRequest:*(*(*(a1 + 56) + 8) + 40) withReplyQueue:*(a1 + 40) completion:*(a1 + 48)];
  }
}

id __69__MRAVEndpoint__modifyTopologyWithRequest_withReplyQueue_completion___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 isLocalDevice] && (v4 = *(a1 + 32)) != 0)
  {
    v5 = v4;
  }

  else
  {
    v5 = [v3 uid];
  }

  v6 = v5;

  return v6;
}

- (id)outputDeviceWithUID:(id)d
{
  dCopy = d;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __36__MRAVEndpoint_outputDeviceWithUID___block_invoke;
  v9[3] = &unk_1E769CDC0;
  v10 = dCopy;
  v5 = dCopy;
  v6 = [(MRAVEndpoint *)self outputDevicesMatchingPredicate:v9];
  firstObject = [v6 firstObject];

  return firstObject;
}

- (void)addOutputDevices:(id)devices initiator:(id)initiator withReplyQueue:(id)queue completion:(id)completion
{
  completionCopy = completion;
  queueCopy = queue;
  initiatorCopy = initiator;
  devicesCopy = devices;
  v15 = [[MRRequestDetails alloc] initWithInitiator:@"Infer" requestID:0 reason:initiatorCopy];

  v14 = [[MRGroupTopologyModificationRequest alloc] initWithRequestDetails:v15 type:1 outputDevices:devicesCopy];
  [(MRAVEndpoint *)self modifyTopologyWithRequest:v14 withReplyQueue:queueCopy completion:completionCopy];
}

- (void)addOutputDevices:(id)devices initiator:(id)initiator fadeAudio:(BOOL)audio withReplyQueue:(id)queue completion:(id)completion
{
  completionCopy = completion;
  queueCopy = queue;
  initiatorCopy = initiator;
  devicesCopy = devices;
  v15 = _MRLogForCategory(0);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    [MRAVEndpoint(Deprecated) addOutputDevices:initiator:fadeAudio:withReplyQueue:completion:];
  }

  [(MRAVEndpoint *)self addOutputDevices:devicesCopy initiator:initiatorCopy withReplyQueue:queueCopy completion:completionCopy];
}

- (void)removeOutputDevices:(id)devices initiator:(id)initiator withReplyQueue:(id)queue completion:(id)completion
{
  completionCopy = completion;
  queueCopy = queue;
  initiatorCopy = initiator;
  devicesCopy = devices;
  v15 = [[MRRequestDetails alloc] initWithInitiator:@"Infer" requestID:0 reason:initiatorCopy];

  v14 = [[MRGroupTopologyModificationRequest alloc] initWithRequestDetails:v15 type:2 outputDevices:devicesCopy];
  [(MRAVEndpoint *)self modifyTopologyWithRequest:v14 withReplyQueue:queueCopy completion:completionCopy];
}

- (void)removeOutputDevices:(id)devices initiator:(id)initiator fadeAudio:(BOOL)audio withReplyQueue:(id)queue completion:(id)completion
{
  completionCopy = completion;
  queueCopy = queue;
  initiatorCopy = initiator;
  devicesCopy = devices;
  v15 = _MRLogForCategory(0);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    [MRAVEndpoint(Deprecated) addOutputDevices:initiator:fadeAudio:withReplyQueue:completion:];
  }

  [(MRAVEndpoint *)self removeOutputDevices:devicesCopy initiator:initiatorCopy withReplyQueue:queueCopy completion:completionCopy];
}

- (void)setOutputDevices:(id)devices initiator:(id)initiator withReplyQueue:(id)queue completion:(id)completion
{
  completionCopy = completion;
  queueCopy = queue;
  initiatorCopy = initiator;
  devicesCopy = devices;
  v15 = [[MRRequestDetails alloc] initWithInitiator:@"Infer" requestID:0 reason:initiatorCopy];

  v14 = [[MRGroupTopologyModificationRequest alloc] initWithRequestDetails:v15 type:3 outputDevices:devicesCopy];
  [(MRAVEndpoint *)self modifyTopologyWithRequest:v14 withReplyQueue:queueCopy completion:completionCopy];
}

- (void)setOutputDevices:(id)devices initiator:(id)initiator fadeAudio:(BOOL)audio withReplyQueue:(id)queue completion:(id)completion
{
  completionCopy = completion;
  queueCopy = queue;
  initiatorCopy = initiator;
  devicesCopy = devices;
  v15 = _MRLogForCategory(0);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    [MRAVEndpoint(Deprecated) addOutputDevices:initiator:fadeAudio:withReplyQueue:completion:];
  }

  [(MRAVEndpoint *)self setOutputDevices:devicesCopy initiator:initiatorCopy withReplyQueue:queueCopy completion:completionCopy];
}

- (__CFString)_createLocalizedNameWithBuiltInDeviceNameBlock:(void *)block
{
  v50 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (!block)
  {
    v36 = 0;
    goto LABEL_47;
  }

  outputDevices = [block outputDevices];
  if ([outputDevices count] > 1)
  {
    v44 = v3;
    firstObject = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(outputDevices, "count")}];
    groupLeader4 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithCapacity:{objc_msgSend(outputDevices, "count")}];
    v45 = 0u;
    v46 = 0u;
    v47 = 0u;
    v48 = 0u;
    v14 = outputDevices;
    v15 = [v14 countByEnumeratingWithState:&v45 objects:v49 count:16];
    if (!v15)
    {
      goto LABEL_26;
    }

    v16 = v15;
    v17 = *v46;
    while (1)
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v46 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v45 + 1) + 8 * i);
        name = [v19 name];
        if ([name length])
        {
          logicalDeviceID = [v19 logicalDeviceID];
          if (![logicalDeviceID length])
          {
            goto LABEL_22;
          }

          if (([groupLeader4 containsObject:logicalDeviceID] & 1) == 0)
          {
            [groupLeader4 addObject:logicalDeviceID];
LABEL_22:
            [firstObject addObject:name];
          }
        }
      }

      v16 = [v14 countByEnumeratingWithState:&v45 objects:v49 count:16];
      if (!v16)
      {
LABEL_26:

        groupLeader = [block groupLeader];
        isProxyGroupPlayer = [groupLeader isProxyGroupPlayer];

        if (isProxyGroupPlayer)
        {
          v3 = v44;
          if ([block isLocalEndpoint])
          {
            name2 = v44[2](v44);
          }

          else
          {
            designatedGroupLeader = [block designatedGroupLeader];
            name2 = [designatedGroupLeader name];

            [firstObject removeObject:name2];
          }

          v30 = MRLocalizedString(@"ROUTE_NAMES_CONCAT_DELIMITER");
          v31 = [firstObject componentsJoinedByString:v30];

          groupLeader2 = [block groupLeader];
          LODWORD(v30) = [groupLeader2 hasPlaceholderName];

          if (v30)
          {
            name3 = v31;
          }

          else
          {
            v33 = MEMORY[0x1E696AEC0];
            v34 = MRLocalizedStringWithFormat(@"ROUTE_NAME_ARROW_FORMAT");
            name3 = [v33 stringWithFormat:v34, name2, v31];
          }
        }

        else
        {
          [firstObject sortUsingSelector:sel_localizedCaseInsensitiveCompare_];
          name2 = MRLocalizedString(@"ROUTE_NAMES_CONCAT_DELIMITER");
          name3 = [firstObject componentsJoinedByString:name2];
          v3 = v44;
        }

        goto LABEL_43;
      }
    }
  }

  firstObject = [outputDevices firstObject];
  deviceType = [firstObject deviceType];
  deviceType2 = [firstObject deviceType];
  isLocalEndpoint = [block isLocalEndpoint];
  v10 = deviceType == 4 || deviceType2 == 5;
  if (isLocalEndpoint && v10)
  {
    name6 = v3[2](v3);
  }

  else
  {
    groupLeader3 = [block groupLeader];
    isProxyGroupPlayer2 = [groupLeader3 isProxyGroupPlayer];

    if (!isProxyGroupPlayer2)
    {
      groupLeader4 = firstObject;
      if (!firstObject)
      {
        groupLeader4 = [block groupLeader];
      }

      name3 = [groupLeader4 name];
      if (!firstObject)
      {
LABEL_43:
      }

      goto LABEL_44;
    }

    groupLeader5 = [block groupLeader];
    hasPlaceholderName = [groupLeader5 hasPlaceholderName];

    if (!hasPlaceholderName)
    {
      v39 = MEMORY[0x1E696AEC0];
      v40 = MRLocalizedStringWithFormat(@"ROUTE_NAME_ARROW_FORMAT");
      groupLeader6 = [block groupLeader];
      name4 = [groupLeader6 name];
      name5 = [firstObject name];
      name3 = [v39 stringWithFormat:v40, name4, name5];

      goto LABEL_44;
    }

    name6 = [firstObject name];
  }

  name3 = name6;
LABEL_44:

  v35 = &stru_1F1513E38;
  if (name3)
  {
    v35 = name3;
  }

  v36 = v35;

LABEL_47:
  v37 = *MEMORY[0x1E69E9840];

  return v36;
}

- (id)_initiatorStringWithInitiator:(void *)initiator uid:
{
  v5 = a2;
  initiatorCopy = initiator;
  if (self)
  {
    [MEMORY[0x1E696AD60] string];
    objc_claimAutoreleasedReturnValue();
    if ([OUTLINED_FUNCTION_22_0() length])
    {
      [self appendString:v5];
      if ([initiatorCopy length])
      {
        [self appendString:@"/"];
      }
    }

    [self appendString:initiatorCopy];
  }

  return self;
}

- (void)migrateToOrSetOutputDevices:(id)devices initiator:(id)initiator withReplyQueue:(id)queue completion:(id)completion
{
  v76 = *MEMORY[0x1E69E9840];
  devicesCopy = devices;
  initiatorCopy = initiator;
  queueCopy = queue;
  completionCopy = completion;
  if (!queueCopy)
  {
    queueCopy = MEMORY[0x1E69E96A0];
    v14 = MEMORY[0x1E69E96A0];
  }

  v15 = objc_alloc_init(MRPlaybackSessionMigrateRequest);
  [(MRPlaybackSessionMigrateRequest *)v15 setInitiator:@"routePicker"];
  date = [MEMORY[0x1E695DF00] date];
  requestID = [(MRPlaybackSessionMigrateRequest *)v15 requestID];
  v57 = initiatorCopy;
  v53 = [(MRAVEndpoint *)self _initiatorStringWithInitiator:initiatorCopy uid:requestID];
  v18 = objc_alloc(MEMORY[0x1E696AEC0]);
  debugName = [(MRAVEndpoint *)self debugName];
  v54 = devicesCopy;
  v20 = MRAVOutputDeviceArrayDescription(devicesCopy);
  v21 = [v18 initWithFormat:@"source=%@ destination=%@", debugName, v20];

  v22 = [objc_alloc(MEMORY[0x1E696AD60]) initWithFormat:@"%@<%@>", @"migrateToOrSetOutputDevices", requestID];
  v23 = v22;
  if (v21)
  {
    [v22 appendFormat:@" for %@", v21];
  }

  v24 = _MRLogForCategory(0xAuLL);
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    v73 = 138543362;
    v74 = v23;
    OUTLINED_FUNCTION_25_0(&dword_1A2860000, v24, v25, "Request: %{public}@", &v73);
  }

  v65[0] = MEMORY[0x1E69E9820];
  v65[1] = 3221225472;
  v65[2] = __80__MRAVEndpoint_migrateToOrSetOutputDevices_initiator_withReplyQueue_completion___block_invoke;
  v65[3] = &unk_1E76A2730;
  v66 = v21;
  v67 = @"migrateToOrSetOutputDevices";
  v26 = requestID;
  v68 = v26;
  v69 = date;
  v27 = v15;
  v70 = v27;
  v72 = completionCopy;
  v28 = queueCopy;
  v71 = v28;
  v56 = completionCopy;
  v55 = date;
  v29 = v21;
  v30 = MEMORY[0x1A58E3570](v65);
  v58[0] = MEMORY[0x1E69E9820];
  v58[1] = 3221225472;
  v58[2] = __80__MRAVEndpoint_migrateToOrSetOutputDevices_initiator_withReplyQueue_completion___block_invoke_2;
  v58[3] = &unk_1E76A2758;
  v31 = v27;
  v59 = v31;
  selfCopy = self;
  v32 = v54;
  v61 = v32;
  v62 = v53;
  v33 = v28;
  v63 = v33;
  v34 = v30;
  v64 = v34;
  v35 = v53;
  v36 = MEMORY[0x1A58E3570](v58);
  if ([(MRAVEndpoint *)self isCompanionEndpoint])
  {
    v37 = _MRLogForCategory(0xAuLL);
    if (OUTLINED_FUNCTION_29_0(v37))
    {
      v73 = 138543874;
      OUTLINED_FUNCTION_4_10(@"migrateToOrSetOutputDevices");
      v75 = @"Not attempting to migrate because destination is companion...";
      OUTLINED_FUNCTION_17_0(&dword_1A2860000, v38, v39, "Update: %{public}@<%{public}@> %@");
    }

    v40 = v31;
    v41 = 13;
LABEL_24:
    [(MRPlaybackSessionMigrateRequest *)v40 setFallbackReason:v41];
    v36[2](v36);
    goto LABEL_25;
  }

  v42 = MRMediaRemoteCopyDeviceUID();

  if (v42)
  {
    v43 = _MRLogForCategory(0xAuLL);
    if (OUTLINED_FUNCTION_29_0(v43))
    {
      v73 = 138543874;
      OUTLINED_FUNCTION_4_10(@"migrateToOrSetOutputDevices");
      v75 = @"Not attempting to migrate because local device is groupable...";
      OUTLINED_FUNCTION_17_0(&dword_1A2860000, v44, v45, "Update: %{public}@<%{public}@> %@");
    }

    v40 = v31;
    v41 = 1;
    goto LABEL_24;
  }

  if (!MRGroupSessionAllowsMigrationForEndpoint(self))
  {
    v46 = _MRLogForCategory(0xAuLL);
    if (OUTLINED_FUNCTION_29_0(v46))
    {
      v73 = 138543874;
      OUTLINED_FUNCTION_4_10(@"migrateToOrSetOutputDevices");
      v75 = @"Not attempting to migrate because endpoint is migration-restricted group session endpoint";
      OUTLINED_FUNCTION_17_0(&dword_1A2860000, v47, v48, "Update: %{public}@<%{public}@> %@");
    }

    v40 = v31;
    v41 = 15;
    goto LABEL_24;
  }

  if (MRAVOutputDeviceArrayNumberOfLogicalDevices(v32) != 1)
  {
    v49 = _MRLogForCategory(0xAuLL);
    if (OUTLINED_FUNCTION_29_0(v49))
    {
      v73 = 138543874;
      OUTLINED_FUNCTION_4_10(@"migrateToOrSetOutputDevices");
      v75 = @"Not attempting to migrate because more than one logical device requested...";
      OUTLINED_FUNCTION_17_0(&dword_1A2860000, v50, v51, "Update: %{public}@<%{public}@> %@");
    }

    v40 = v31;
    v41 = 2;
    goto LABEL_24;
  }

  [(MRPlaybackSessionMigrateRequest *)v31 setEndpointOptions:[(MRPlaybackSessionMigrateRequest *)v31 endpointOptions]| 2];
  [(MRPlaybackSessionMigrateRequest *)v31 setEndpointOptions:[(MRPlaybackSessionMigrateRequest *)v31 endpointOptions]| 4];
  [(MRPlaybackSessionMigrateRequest *)v31 setEndpointOptions:[(MRPlaybackSessionMigrateRequest *)v31 endpointOptions]& 0xFFFFFFFFFFFFFFF7];
  [(MRPlaybackSessionMigrateRequest *)v31 setEndpointOptions:[(MRPlaybackSessionMigrateRequest *)v31 endpointOptions]| 0x20];
  [(MRPlaybackSessionMigrateRequest *)v31 setEndpointOptions:[(MRPlaybackSessionMigrateRequest *)v31 endpointOptions]| 0x10];
  [(MRPlaybackSessionMigrateRequest *)v31 setEndpointOptions:[(MRPlaybackSessionMigrateRequest *)v31 endpointOptions]& 0xFFFFFFFFFFFFFFBFLL];
  [(MRAVEndpoint *)self migrateToOutputDevices:v32 request:v31 initiator:v57 queue:v33 completion:v34];
LABEL_25:

  v52 = *MEMORY[0x1E69E9840];
}

- (void)performMigrationToOutputDevices:(id)devices request:(id)request initiator:(id)initiator queue:(id)queue completion:(id)completion
{
  v192 = *MEMORY[0x1E69E9840];
  devicesCopy = devices;
  requestCopy = request;
  initiatorCopy = initiator;
  queueCopy = queue;
  completionCopy = completion;
  if (devicesCopy)
  {
    if (queueCopy)
    {
      goto LABEL_3;
    }

LABEL_6:
    queueCopy = MEMORY[0x1E69E96A0];
    v19 = MEMORY[0x1E69E96A0];
    if (!requestCopy)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"MRAVEndpoint.m" lineNumber:969 description:{@"Invalid parameter not satisfying: %@", @"destination"}];

  if (!queueCopy)
  {
    goto LABEL_6;
  }

LABEL_3:
  if (!requestCopy)
  {
LABEL_4:
    v17 = objc_alloc_init(MRPlaybackSessionMigrateRequest);
    goto LABEL_8;
  }

LABEL_7:
  v17 = requestCopy;
LABEL_8:
  v20 = v17;
  date = [MEMORY[0x1E695DF00] date];
  requestID = [(MRPlaybackSessionMigrateRequest *)v20 requestID];
  v101 = initiatorCopy;
  v103 = [(MRAVEndpoint *)self _initiatorStringWithInitiator:initiatorCopy uid:requestID];
  v22 = objc_alloc(MEMORY[0x1E696AEC0]);
  debugName = [(MRAVEndpoint *)self debugName];
  v24 = MRAVOutputDeviceArrayDescription(devicesCopy);
  v25 = [v22 initWithFormat:@"source=%@ destination=%@", debugName, v24];

  v26 = [objc_alloc(MEMORY[0x1E696AD60]) initWithFormat:@"%@<%@>", @"migrateToOutputDevice", requestID];
  v27 = v26;
  if (v25)
  {
    [v26 appendFormat:@" for %@", v25];
  }

  v28 = _MRLogForCategory(0xAuLL);
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v189 = v27;
    OUTLINED_FUNCTION_25_0(&dword_1A2860000, v28, v29, "Request: %{public}@", buf);
  }

  v179[0] = MEMORY[0x1E69E9820];
  v179[1] = 3221225472;
  v179[2] = __83__MRAVEndpoint_performMigrationToOutputDevices_request_initiator_queue_completion___block_invoke;
  v179[3] = &unk_1E76A27D0;
  v107 = v25;
  v180 = v107;
  v181 = @"migrateToOutputDevice";
  v30 = requestID;
  v182 = v30;
  v106 = date;
  v183 = v106;
  v109 = requestCopy;
  v184 = v109;
  v31 = v20;
  v185 = v31;
  v105 = completionCopy;
  v187 = v105;
  v32 = queueCopy;
  v186 = v32;
  v33 = MEMORY[0x1A58E3570](v179);
  v170[0] = MEMORY[0x1E69E9820];
  v170[1] = 3221225472;
  v170[2] = __83__MRAVEndpoint_performMigrationToOutputDevices_request_initiator_queue_completion___block_invoke_2;
  v170[3] = &unk_1E76A2820;
  v34 = v31;
  v171 = v34;
  v172 = @"migrateToOutputDevice";
  v35 = v30;
  v173 = v35;
  selfCopy = self;
  v36 = devicesCopy;
  v175 = v36;
  v104 = v103;
  v176 = v104;
  v37 = v32;
  v177 = v37;
  v38 = v33;
  v178 = v38;
  v39 = MEMORY[0x1A58E3570](v170);
  v165[0] = MEMORY[0x1E69E9820];
  v165[1] = 3221225472;
  v165[2] = __83__MRAVEndpoint_performMigrationToOutputDevices_request_initiator_queue_completion___block_invoke_3;
  v165[3] = &unk_1E76A2870;
  v165[4] = self;
  selfCopy2 = self;
  v40 = v34;
  v166 = v40;
  v41 = v37;
  v167 = v41;
  v42 = v38;
  v168 = v42;
  v43 = v39;
  v169 = v43;
  v44 = MEMORY[0x1A58E3570](v165);
  v156[0] = MEMORY[0x1E69E9820];
  v156[1] = 3221225472;
  v156[2] = __83__MRAVEndpoint_performMigrationToOutputDevices_request_initiator_queue_completion___block_invoke_5;
  v156[3] = &unk_1E76A28C0;
  v157 = @"migrateToOutputDevice";
  v45 = v35;
  v158 = v45;
  v46 = v40;
  v159 = v46;
  v47 = v36;
  v160 = v47;
  v102 = v101;
  v161 = v102;
  v48 = v41;
  v162 = v48;
  v49 = v42;
  v163 = v49;
  v50 = v44;
  v164 = v50;
  v51 = MEMORY[0x1A58E3570](v156);
  v151[0] = MEMORY[0x1E69E9820];
  v151[1] = 3221225472;
  v151[2] = __83__MRAVEndpoint_performMigrationToOutputDevices_request_initiator_queue_completion___block_invoke_273;
  v151[3] = &unk_1E76A2938;
  v52 = v46;
  v152 = v52;
  v53 = v48;
  v153 = v53;
  v54 = v45;
  v154 = v54;
  v55 = v49;
  v155 = v55;
  v56 = MEMORY[0x1A58E3570](v151);
  v144[0] = MEMORY[0x1E69E9820];
  v144[1] = 3221225472;
  v144[2] = __83__MRAVEndpoint_performMigrationToOutputDevices_request_initiator_queue_completion___block_invoke_4_290;
  v144[3] = &unk_1E76A2988;
  v57 = v52;
  v145 = v57;
  v99 = v56;
  v148 = v99;
  v146 = @"migrateToOutputDevice";
  v58 = v43;
  v149 = v58;
  v100 = v55;
  v150 = v100;
  v147 = selfCopy2;
  v59 = MEMORY[0x1A58E3570](v144);
  v60 = [v47 mr_filter:&__block_literal_global_310];
  v61 = [v60 count];

  if (v61)
  {
    v62 = _MRLogForCategory(0xAuLL);
    if (os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543874;
      OUTLINED_FUNCTION_6_7(@"migrateToOutputDevice");
      *(v63 + 14) = v54;
      v190 = 2112;
      v191 = @"Migrating to silent primary. Will break any pre-existing groups...";
      _os_log_impl(&dword_1A2860000, v62, OS_LOG_TYPE_DEFAULT, "Update: %{public}@<%{public}@> %@", buf, 0x20u);
    }

    [(MRPlaybackSessionMigrateRequest *)v57 setEndpointOptions:[(MRPlaybackSessionMigrateRequest *)v57 endpointOptions]| 4];
  }

  v96 = [v47 mr_map:&__block_literal_global_317];
  v135[0] = MEMORY[0x1E69E9820];
  v135[1] = 3221225472;
  v135[2] = __83__MRAVEndpoint_performMigrationToOutputDevices_request_initiator_queue_completion___block_invoke_2_318;
  v135[3] = &unk_1E76A29D8;
  v64 = v57;
  v136 = v64;
  v65 = v47;
  v137 = v65;
  v138 = @"migrateToOutputDevice";
  v66 = v54;
  v139 = v66;
  v98 = v50;
  v141 = v98;
  v67 = v53;
  v140 = v67;
  v68 = v58;
  v142 = v68;
  v97 = v51;
  v143 = v97;
  v69 = MEMORY[0x1A58E3570](v135);
  v128[0] = MEMORY[0x1E69E9820];
  v128[1] = 3221225472;
  v128[2] = __83__MRAVEndpoint_performMigrationToOutputDevices_request_initiator_queue_completion___block_invoke_3_332;
  v128[3] = &unk_1E76A2A20;
  v129 = @"migrateToOutputDevice";
  v70 = v66;
  v130 = v70;
  v131 = selfCopy2;
  v112 = v59;
  v133 = v112;
  v71 = v65;
  v132 = v71;
  v72 = v69;
  v134 = v72;
  v73 = MEMORY[0x1A58E3570](v128);
  v121[0] = MEMORY[0x1E69E9820];
  v121[1] = 3221225472;
  v121[2] = __83__MRAVEndpoint_performMigrationToOutputDevices_request_initiator_queue_completion___block_invoke_4_360;
  v121[3] = &unk_1E76A2A48;
  v122 = @"migrateToOutputDevice";
  v74 = v70;
  v123 = v74;
  v75 = v64;
  v124 = v75;
  v76 = v68;
  v125 = v76;
  v77 = v73;
  v126 = v77;
  v78 = v72;
  v127 = v78;
  v79 = MEMORY[0x1A58E3570](v121);
  if ([v71 mr_all:&__block_literal_global_373])
  {
    LocalEndpoint = MRAVEndpointGetLocalEndpoint(0);
    (v79)[2](v79, 0, LocalEndpoint, 0);
    v81 = v96;
  }

  else
  {
    v95 = v74;
    v82 = [v75 startEvent:@"Search" role:1];
    v83 = [MRRequestDetails alloc];
    v94 = v76;
    v84 = v67;
    [v75 requestID];
    v85 = v75;
    v87 = v86 = v71;
    v88 = [(MRRequestDetails *)v83 initWithInitiator:@"Infer" requestID:v87 reason:@"performMigrationToOutputDevices"];

    v71 = v86;
    v75 = v85;
    v81 = v96;
    v89 = [[MRAVReconnaissanceSession alloc] initWithOutputDeviceUIDs:v96 features:8 details:v88];
    OUTLINED_FUNCTION_13_2();
    v114 = 3221225472;
    v115 = __83__MRAVEndpoint_performMigrationToOutputDevices_request_initiator_queue_completion___block_invoke_2_382;
    v116 = &unk_1E76A2A70;
    v117 = v90;
    v118 = v75;
    v120 = v82;
    v119 = v79;
    v91 = v89;
    v67 = v84;
    v76 = v94;
    v92 = v91;
    [(MRAVReconnaissanceSession *)v91 beginSearchWithTimeout:&v113 endpointsCompletion:7.0];

    v74 = v95;
  }

  v93 = *MEMORY[0x1E69E9840];
}

- (void)requestMicrophoneConnectionWithDetails:(void *)details queue:(void *)queue completion:
{
  v38 = *MEMORY[0x1E69E9840];
  v7 = a2;
  detailsCopy = details;
  queueCopy = queue;
  if (self)
  {
    v10 = [MEMORY[0x1E695DF00] now];
    debugName = [self debugName];
    v12 = objc_alloc(MEMORY[0x1E696AD60]);
    name = [v7 name];
    requestID = [v7 requestID];
    v15 = [v12 initWithFormat:@"%@<%@>", name, requestID];

    if (debugName)
    {
      [v15 appendFormat:@" for %@", debugName];
    }

    v16 = _MRLogForCategory(0xAuLL);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v36 = 138543362;
      v37 = v15;
      OUTLINED_FUNCTION_25_0(&dword_1A2860000, v16, v17, "Request: %{public}@", &v36);
    }

    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = __72__MRAVEndpoint_requestMicrophoneConnectionWithDetails_queue_completion___block_invoke;
    v29[3] = &unk_1E76A2BD8;
    v30 = debugName;
    v18 = v7;
    v31 = v18;
    v32 = v10;
    v33 = queueCopy;
    v19 = v10;
    v20 = debugName;
    v21 = MEMORY[0x1A58E3570](v29);
    v34 = @"MREndpointConnectionReasonUserInfoKey";
    v35 = @"requestMicrophoneConnection";
    v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v35 forKeys:&v34 count:1];
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __72__MRAVEndpoint_requestMicrophoneConnectionWithDetails_queue_completion___block_invoke_439;
    v25[3] = &unk_1E76A2B88;
    v25[4] = self;
    v26 = v18;
    v27 = detailsCopy;
    v28 = v21;
    v23 = v21;
    [self connectToExternalDeviceWithUserInfo:v22 completion:v25];
  }

  v24 = *MEMORY[0x1E69E9840];
}

- (id)translateClusterUIDIfNeeded:(void *)needed
{
  v3 = a2;
  if (needed)
  {
    outputDevices = [needed outputDevices];
    OUTLINED_FUNCTION_0_3();
    v15 = 3221225472;
    v16 = __44__MRAVEndpoint_translateClusterUIDIfNeeded___block_invoke;
    v17 = &unk_1E769CDC0;
    v5 = v3;
    v18 = v5;
    v6 = [outputDevices mr_first:v14];

    externalDevice = [needed externalDevice];
    deviceInfo = [externalDevice deviceInfo];
    isClusterAware = [deviceInfo isClusterAware];

    if ((isClusterAware & 1) == 0 && [v6 deviceSubtype] == 15)
    {
      [v6 uid];
      objc_claimAutoreleasedReturnValue();
      v10 = [OUTLINED_FUNCTION_22_0() isEqualToString:externalDevice];

      if (v10)
      {
        primaryID = [v6 primaryID];

        v5 = primaryID;
      }
    }

    v3 = v5;

    v12 = v3;
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (unsigned)volumeControlCapabilitiesForOutputDeviceUID:(id)d
{
  v54 = *MEMORY[0x1E69E9840];
  dCopy = d;
  v5 = objc_alloc(MEMORY[0x1E696AEC0]);
  debugName = [(MRAVEndpoint *)self debugName];
  v7 = debugName;
  if (dCopy)
  {
    dCopy = [v5 initWithFormat:@"endpoint=%@, outputDevice=%@", debugName, dCopy];
  }

  else
  {
    dCopy = [v5 initWithFormat:@"endpoint=%@", debugName, v46];
  }

  v9 = dCopy;

  date = [MEMORY[0x1E695DF00] date];
  uUID = [MEMORY[0x1E696AFB0] UUID];
  uUIDString = [uUID UUIDString];

  v13 = [objc_alloc(MEMORY[0x1E696AD60]) initWithFormat:@"%@<%@>", @"Endpoint.volumeControlCapabilitiesForOutputDeviceUID", uUIDString];
  v14 = v13;
  if (v9)
  {
    [v13 appendFormat:@" for %@", v9];
  }

  v15 = _MRLogForCategory(0xAuLL);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v49 = v14;
    OUTLINED_FUNCTION_20_0();
    _os_log_impl(v16, v17, v18, v19, v20, 0xCu);
  }

  outputContextDataSource = [(MRAVEndpoint *)self outputContextDataSource];
  v22 = [(MRAVEndpoint *)self translateClusterUIDIfNeeded:dCopy];
  v47 = 0;
  v23 = [outputContextDataSource volumeControlCapabilitiesForOutputDeviceUID:v22 error:&v47];
  v24 = v47;

  if (v24)
  {
    v25 = _MRLogForCategory(0xAuLL);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      date2 = [MEMORY[0x1E695DF00] date];
      [date2 timeIntervalSinceDate:date];
      OUTLINED_FUNCTION_10_5();
      v50 = v27;
      v51 = v24;
      v52 = 2048;
      v53 = v28;
      _os_log_error_impl(&dword_1A2860000, v25, OS_LOG_TYPE_ERROR, "Response: %{public}@<%{public}@> returned with error <%{public}@> in %.4lf seconds", buf, 0x2Au);
LABEL_16:
    }
  }

  else
  {
    v29 = MRMediaRemoteVolumeControlCapabilitiesDescription(v23);

    v25 = _MRLogForCategory(0xAuLL);
    v30 = os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT);
    if (v29)
    {
      if (v30)
      {
        date2 = MRMediaRemoteVolumeControlCapabilitiesDescription(v23);
        date3 = [MEMORY[0x1E695DF00] date];
        [date3 timeIntervalSinceDate:date];
        OUTLINED_FUNCTION_10_5();
        v50 = 2112;
        v51 = date2;
        v52 = 2048;
        v53 = v32;
        OUTLINED_FUNCTION_20_0();
        _os_log_impl(v33, v34, v35, v36, v37, 0x2Au);

        goto LABEL_16;
      }
    }

    else if (v30)
    {
      date2 = [MEMORY[0x1E695DF00] date];
      [date2 timeIntervalSinceDate:date];
      OUTLINED_FUNCTION_10_5();
      v50 = 2048;
      v51 = v38;
      OUTLINED_FUNCTION_20_0();
      _os_log_impl(v39, v40, v41, v42, v43, 0x20u);
      goto LABEL_16;
    }
  }

  v44 = *MEMORY[0x1E69E9840];
  return v23;
}

- (float)volumeForOutputDeviceUID:(id)d
{
  dCopy = d;
  [(MRAVEndpoint *)self outputContextDataSource];
  objc_claimAutoreleasedReturnValue();
  v6 = OUTLINED_FUNCTION_22_0();
  v7 = [(MRAVEndpoint *)v6 translateClusterUIDIfNeeded:dCopy];

  v11 = 0;
  [v3 volumeForOutputDeviceUID:v7 error:&v11];
  v9 = v8;

  return v9;
}

- (BOOL)volumeMutedForOutputDeviceUID:(id)d
{
  dCopy = d;
  [(MRAVEndpoint *)self outputContextDataSource];
  objc_claimAutoreleasedReturnValue();
  v6 = OUTLINED_FUNCTION_22_0();
  v7 = [(MRAVEndpoint *)v6 translateClusterUIDIfNeeded:dCopy];

  LOBYTE(dCopy) = [v3 volumeMutedForOutputDeviceID:v7 error:0];
  return dCopy;
}

- (void)_willStartingPlaybackToOutputDeviceInterruptPlayback:(void *)playback duration:(void *)duration requestID:(void *)d queue:(double)queue completion:
{
  v89 = *MEMORY[0x1E69E9840];
  v11 = a2;
  playbackCopy = playback;
  durationCopy = duration;
  dCopy = d;
  if (!self)
  {
    goto LABEL_20;
  }

  v52 = dCopy;
  if (!dCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:sel__willStartingPlaybackToOutputDeviceInterruptPlayback_duration_requestID_queue_completion_ object:self file:@"MRAVEndpoint.m" lineNumber:2778 description:{@"Invalid parameter not satisfying: %@", @"completion"}];

    if (durationCopy)
    {
      goto LABEL_4;
    }

LABEL_22:
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:sel__willStartingPlaybackToOutputDeviceInterruptPlayback_duration_requestID_queue_completion_ object:self file:@"MRAVEndpoint.m" lineNumber:2779 description:{@"Invalid parameter not satisfying: %@", @"queue"}];

    goto LABEL_4;
  }

  if (!durationCopy)
  {
    goto LABEL_22;
  }

LABEL_4:
  v15 = [MEMORY[0x1E695DF00] now];
  v16 = objc_alloc(MEMORY[0x1E696AEC0]);
  uniqueIdentifier = [self uniqueIdentifier];
  localizedName = [self localizedName];
  v19 = [v16 initWithFormat:@"endpoint=%@(%@), outputDevice=%@", uniqueIdentifier, localizedName, v11];

  playbackCopy = [objc_alloc(MEMORY[0x1E696AD60]) initWithFormat:@"%@<%@>", @"willStartingPlaybackToOutputDeviceInterruptPlayback", playbackCopy];
  v21 = playbackCopy;
  if (v19)
  {
    [playbackCopy appendFormat:@" for %@", v19];
  }

  v22 = _MRLogForCategory(0xAuLL);
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v86 = v21;
    OUTLINED_FUNCTION_25_0(&dword_1A2860000, v22, v23, "Request: %{public}@", buf);
  }

  v78[0] = MEMORY[0x1E69E9820];
  v78[1] = 3221225472;
  v78[2] = __105__MRAVEndpoint__willStartingPlaybackToOutputDeviceInterruptPlayback_duration_requestID_queue_completion___block_invoke;
  v78[3] = &unk_1E76A2F48;
  v78[4] = self;
  v50 = v19;
  v79 = v50;
  v80 = @"willStartingPlaybackToOutputDeviceInterruptPlayback";
  v24 = playbackCopy;
  v81 = v24;
  v25 = v15;
  v82 = v25;
  v51 = durationCopy;
  v26 = durationCopy;
  v83 = v26;
  v84 = v52;
  v27 = MEMORY[0x1A58E3570](v78);
  v28 = +[MRUserSettings currentSettings];
  supportMultiplayerHost = [v28 supportMultiplayerHost];

  if (supportMultiplayerHost)
  {
    v27[2](v27, 0, 0);
  }

  else
  {
    v30 = [MRBlockGuard alloc];
    v74[0] = MEMORY[0x1E69E9820];
    v74[1] = 3221225472;
    v74[2] = __105__MRAVEndpoint__willStartingPlaybackToOutputDeviceInterruptPlayback_duration_requestID_queue_completion___block_invoke_2;
    v74[3] = &unk_1E769AE80;
    v75 = @"willStartingPlaybackToOutputDeviceInterruptPlayback";
    v31 = v24;
    v76 = v31;
    v32 = v27;
    v77 = v32;
    v33 = [(MRBlockGuard *)v30 initWithTimeout:@"willStartingPlaybackToOutputDeviceInterruptPlayback" reason:v74 handler:3.0];
    v71[0] = MEMORY[0x1E69E9820];
    v71[1] = 3221225472;
    v71[2] = __105__MRAVEndpoint__willStartingPlaybackToOutputDeviceInterruptPlayback_duration_requestID_queue_completion___block_invoke_658;
    v71[3] = &unk_1E76A2F70;
    v49 = v33;
    v72 = v49;
    v73 = v32;
    v34 = MEMORY[0x1A58E3570](v71);
    if ([self isLocalEndpoint] && (+[MRAVClusterController sharedController](MRAVClusterController, "sharedController"), v35 = objc_claimAutoreleasedReturnValue(), v36 = objc_msgSend(v35, "clusterStatus"), v35, v36 == 2))
    {
      v37 = +[MRAVClusterController sharedController];
      v64[0] = MEMORY[0x1E69E9820];
      v64[1] = 3221225472;
      v64[2] = __105__MRAVEndpoint__willStartingPlaybackToOutputDeviceInterruptPlayback_duration_requestID_queue_completion___block_invoke_2_659;
      v64[3] = &unk_1E76A2F98;
      v38 = &v65;
      v65 = @"willStartingPlaybackToOutputDeviceInterruptPlayback";
      v66 = v31;
      v67 = v11;
      queueCopy = queue;
      v68 = v26;
      v69 = v34;
      [v37 getClusterLeaderEndpoint:v64];

      v39 = v66;
    }

    else
    {
      outputDevices = [self outputDevices];
      OUTLINED_FUNCTION_13_2();
      v60 = 3221225472;
      v61 = __105__MRAVEndpoint__willStartingPlaybackToOutputDeviceInterruptPlayback_duration_requestID_queue_completion___block_invoke_663;
      v62 = &unk_1E769CDC0;
      v38 = (v41 + 32);
      v63 = v11;
      v39 = [outputDevices mr_filter:v59];

      if ([v39 count])
      {
        v42 = [[MRNowPlayingControllerConfiguration alloc] initWithEndpoint:self];
        [(MRNowPlayingControllerConfiguration *)v42 setRequestPlaybackQueue:1];
        [(MRNowPlayingControllerConfiguration *)v42 setRequestPlaybackState:1];
        [(MRNowPlayingControllerConfiguration *)v42 setLabel:@"CheckForInterrupt"];
        v43 = [[MRNowPlayingController alloc] initWithConfiguration:v42];
        v53[0] = MEMORY[0x1E69E9820];
        v53[1] = 3221225472;
        v53[2] = __105__MRAVEndpoint__willStartingPlaybackToOutputDeviceInterruptPlayback_duration_requestID_queue_completion___block_invoke_670;
        v53[3] = &unk_1E76A2FC0;
        v54 = @"willStartingPlaybackToOutputDeviceInterruptPlayback";
        v55 = v31;
        v57 = v34;
        queueCopy2 = queue;
        v39 = v39;
        v56 = v39;
        [(MRNowPlayingController *)v43 performRequestWithCompletion:v53];
      }

      else
      {
        v44 = _MRLogForCategory(0xAuLL);
        if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543874;
          OUTLINED_FUNCTION_6_7(@"willStartingPlaybackToOutputDeviceInterruptPlayback");
          *(v45 + 14) = v31;
          v87 = 2112;
          v88 = @"Endpoint is routed to specified outputDevice";
          _os_log_impl(&dword_1A2860000, v44, OS_LOG_TYPE_DEFAULT, "Update: %{public}@<%{public}@> %@", buf, 0x20u);
        }

        v34[2](v34, 0, 0);
      }
    }
  }

  durationCopy = v51;
  dCopy = v52;
LABEL_20:

  v46 = *MEMORY[0x1E69E9840];
}

void __105__MRAVEndpoint__willStartingPlaybackToOutputDeviceInterruptPlayback_duration_requestID_queue_completion___block_invoke_2_659(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = _MRLogForCategory(0xAuLL);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = *(a1 + 40);
    v9 = 138543874;
    v10 = v5;
    OUTLINED_FUNCTION_4_1();
    v11 = v7;
    v12 = 2112;
    v13 = @"Redirected to cluster groupLeader";
    _os_log_impl(&dword_1A2860000, v4, OS_LOG_TYPE_DEFAULT, "Update: %{public}@<%{public}@> %@", &v9, 0x20u);
  }

  [(MRAVEndpoint *)v3 _willStartingPlaybackToOutputDeviceInterruptPlayback:*(a1 + 40) duration:*(a1 + 56) requestID:*(a1 + 64) queue:*(a1 + 72) completion:?];
  v8 = *MEMORY[0x1E69E9840];
}

- (uint64_t)supportsExternalDiscovery
{
  if (result)
  {
    v1 = result;
    if ([result isCompanionEndpoint])
    {
      return 1;
    }

    else
    {
      externalDevice = [v1 externalDevice];
      supportsExternalDiscovery = [externalDevice supportsExternalDiscovery];

      return supportsExternalDiscovery;
    }
  }

  return result;
}

- (id)_externalDiscoverySessionDestinationUID
{
  selfCopy = self;
  if (self)
  {
    if ([self isLocalEndpoint])
    {
      selfCopy = +[MRAVOutputDevice localDeviceUID];
      goto LABEL_10;
    }

    externalDevice = [selfCopy externalDevice];
    deviceInfo = [externalDevice deviceInfo];
    buildVersion = [deviceInfo buildVersion];
    v5 = [buildVersion hasPrefix:@"19K"];

    if (v5)
    {
      externalDevice2 = [selfCopy externalDevice];
      deviceInfo2 = [externalDevice2 deviceInfo];
      deviceUID = [deviceInfo2 deviceUID];
    }

    else
    {
      externalDevice2 = [selfCopy designatedGroupLeader];
      clusterID = [externalDevice2 clusterID];
      deviceInfo2 = clusterID;
      if (!clusterID)
      {
        designatedGroupLeader = [selfCopy designatedGroupLeader];
        selfCopy = [designatedGroupLeader uid];

        goto LABEL_9;
      }

      deviceUID = clusterID;
    }

    selfCopy = deviceUID;
LABEL_9:
  }

LABEL_10:

  return selfCopy;
}

+ (void)connectToEndpointContainingOutputDeviceUID:options:details:completion:.cold.1()
{
  OUTLINED_FUNCTION_1_6();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_0_0();
  [v0 handleFailureInMethod:@"details" object:? file:? lineNumber:? description:?];
}

- (void)performMigrationToEndpoint:request:queue:completion:.cold.1()
{
  OUTLINED_FUNCTION_1_6();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_0_0();
  [v0 handleFailureInMethod:@"destination" object:? file:? lineNumber:? description:?];
}

- (void)_prepareToMigrateToEndpoint:queue:completion:.cold.1()
{
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_0_0();
  [v0 handleFailureInMethod:@"destination" object:? file:? lineNumber:? description:?];
}

- (void)canMigrateToEndpoint:queue:completion:.cold.1()
{
  OUTLINED_FUNCTION_1_6();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_0_0();
  [v0 handleFailureInMethod:@"destination" object:? file:? lineNumber:? description:?];
}

void __67__MRAVEndpoint_removeOutputDeviceFromParentGroup_queue_completion___block_invoke_cold_1()
{
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  v0 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MRAVEndpoint removeOutputDeviceFromParentGroup:queue:completion:]_block_invoke"];
  [v1 handleFailureInFunction:v0 file:@"MRAVEndpoint.m" lineNumber:1439 description:{@"Invalid parameter not satisfying: %@", @"externalDevice"}];
}

void __77__MRAVEndpoint__setOutputDeviceVolume_outputDevice_details_queue_completion___block_invoke_cold_1(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_21_0(a1);
  v6 = [(MRAVEndpoint *)v2 translateClusterUIDIfNeeded:v3];
  v4 = [*(v1 + 32) externalDevice];
  LODWORD(v5) = *(v1 + 72);
  [v4 setOutputDeviceVolume:v6 outputDeviceUID:*(v1 + 48) details:*(v1 + 56) queue:*(v1 + 64) completion:v5];
}

void __52__MRAVEndpoint_outputDeviceVolume_queue_completion___block_invoke_4_cold_1(uint64_t a1, uint64_t a2, uint64_t a3, void **a4)
{
  OUTLINED_FUNCTION_8_7();
  v9 = [(MRAVEndpoint *)*(v8 + 32) translateClusterUIDIfNeeded:?];
  [v6[4] outputContextDataSource];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_28_0();
  [v10 volumeForOutputDeviceUID:? error:?];
  *v4 = v11;
  v12 = *v5;
  *a4 = *v5;
  v13 = v12;
}

void __80__MRAVEndpoint__adjustOutputDeviceVolume_outputDevice_details_queue_completion___block_invoke_cold_1(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_21_0(a1);
  v5 = [(MRAVEndpoint *)v2 translateClusterUIDIfNeeded:v3];
  v4 = [*(v1 + 32) externalDevice];
  [v4 adjustOutputDeviceVolume:*(v1 + 72) outputDeviceUID:v5 details:*(v1 + 48) queue:*(v1 + 56) completion:*(v1 + 64)];
}

void __78__MRAVEndpoint__muteOutputDeviceVolume_outputDevice_details_queue_completion___block_invoke_cold_1(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_21_0(a1);
  v5 = [(MRAVEndpoint *)v2 translateClusterUIDIfNeeded:v3];
  v4 = [*(v1 + 32) externalDevice];
  [v4 muteOutputDeviceVolume:*(v1 + 72) outputDeviceUID:v5 details:*(v1 + 48) queue:*(v1 + 56) completion:*(v1 + 64)];
}

void __57__MRAVEndpoint_outputDeviceVolumeMuted_queue_completion___block_invoke_4_cold_1(uint64_t a1, uint64_t a2, uint64_t a3, void **a4)
{
  OUTLINED_FUNCTION_8_7();
  v9 = [(MRAVEndpoint *)*(v8 + 32) translateClusterUIDIfNeeded:?];
  [v6[4] outputContextDataSource];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_28_0();
  *v4 = [v10 volumeMutedForOutputDeviceID:? error:?];
  v11 = *v5;
  *a4 = *v5;
  v12 = v11;
}

- (void)outputContextDataSource
{
  *buf = 138412290;
  *(buf + 4) = self;
  _os_log_error_impl(&dword_1A2860000, log, OS_LOG_TYPE_ERROR, "[AVEndpoint] %@ OutputContextDataSource not set, fetching manually...", buf, 0xCu);
}

+ (void)_notifyDidAddOutputDevice:endpoint:.cold.1()
{
  OUTLINED_FUNCTION_1_6();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_0_0();
  [v0 handleFailureInMethod:@"outputDevice" object:? file:? lineNumber:? description:?];
}

+ (void)_notifyDidChangeOutputDevice:endpoint:.cold.1()
{
  OUTLINED_FUNCTION_1_6();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_0_0();
  [v0 handleFailureInMethod:@"outputDevice" object:? file:? lineNumber:? description:?];
}

+ (void)_notifyDidRemoveOutputDevice:endpoint:.cold.1()
{
  OUTLINED_FUNCTION_1_6();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_0_0();
  [v0 handleFailureInMethod:@"outputDevice" object:? file:? lineNumber:? description:?];
}

+ (void)prepareGroupForPlaybackWithOutputDeviceUIDs:forBundleID:timeout:details:queue:completion:.cold.1()
{
  OUTLINED_FUNCTION_1_6();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_0_0();
  [v0 handleFailureInMethod:@"outputDeviceUIDs.count > 0" object:? file:? lineNumber:? description:?];
}

+ (void)prepareGroupForPlaybackWithOutputDeviceUIDs:forBundleID:timeout:details:queue:completion:.cold.2()
{
  OUTLINED_FUNCTION_1_6();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_0_0();
  [v0 handleFailureInMethod:@"bundleID" object:? file:? lineNumber:? description:?];
}

- (void)willStartingPlaybackToOutputDevicesInterruptPlayback:originatingOutputDeviceUID:duration:queue:completion:.cold.1()
{
  OUTLINED_FUNCTION_1_6();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_0_0();
  [v0 handleFailureInMethod:@"completion" object:? file:? lineNumber:? description:?];
}

- (void)willStartingPlaybackToOutputDevicesInterruptPlayback:originatingOutputDeviceUID:duration:queue:completion:.cold.2()
{
  OUTLINED_FUNCTION_1_6();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_0_0();
  [v0 handleFailureInMethod:@"queue" object:? file:? lineNumber:? description:?];
}

- (void)modifyTopologyWithRequest:withReplyQueue:completion:.cold.1()
{
  OUTLINED_FUNCTION_1_6();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_0_0();
  [v0 handleFailureInMethod:@"request" object:? file:? lineNumber:? description:?];
}

@end