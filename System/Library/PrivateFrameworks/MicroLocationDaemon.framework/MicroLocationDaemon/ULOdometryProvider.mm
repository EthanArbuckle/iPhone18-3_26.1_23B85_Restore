@interface ULOdometryProvider
+ (optional<ULOdometryDO>)findFenceCrossingOdometryEntryWithOdometryEntries:(optional<ULOdometryDO> *__return_ptr)retstr fenceRadius:(optional<ULOdometryDO> *)result shouldReturnNilIfNoCrossing:(int64_t)crossing;
- (BOOL)_checkIfExitedBubble;
- (ULOdometryProvider)initWithQueue:(id)queue odometrySourceType:(int64_t)type delegate:(ULOdometryProviderDelegate *)delegate;
- (void)_resetPosition;
- (void)_resetTrajectory;
- (void)_updatePosition:(id)position;
- (void)didReceiveOdometryProviderStateIsAvailable:(BOOL)available;
- (void)didReceiveOdometryUpdate:(id)update withError:(id)error;
- (void)startBackgroundUpdates;
- (void)stopBackgroundUpdates;
@end

@implementation ULOdometryProvider

- (ULOdometryProvider)initWithQueue:(id)queue odometrySourceType:(int64_t)type delegate:(ULOdometryProviderDelegate *)delegate
{
  v24 = *MEMORY[0x277D85DE8];
  queueCopy = queue;
  if (onceToken_MicroLocation_Default != -1)
  {
    [ULOdometryProvider initWithQueue:odometrySourceType:delegate:];
  }

  v9 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
  {
    v10 = @"UnknownOdometrySource";
    if (type == 1)
    {
      v10 = @"CoreMotionPDR";
    }

    if (!type)
    {
      v10 = @"UndefinedOdometrySource";
    }

    v11 = v10;
    *buf = 138412290;
    v23 = v11;
    v12 = v9;
    _os_log_impl(&dword_258FE9000, v12, OS_LOG_TYPE_DEFAULT, "Odometry using %@", buf, 0xCu);
  }

  v21.receiver = self;
  v21.super_class = ULOdometryProvider;
  v13 = [(ULOdometryProvider *)&v21 init];
  dispatch_assert_queue_V2(queueCopy);
  if (!v13)
  {
    goto LABEL_16;
  }

  [(ULOdometryProvider *)v13 setTrajectoryUUID:0];
  [(ULOdometryProvider *)v13 setQueue:queueCopy];
  [(ULOdometryProvider *)v13 setDelegate:delegate];
  v14 = [MEMORY[0x277CBEAA8] now];
  [(ULOdometryProvider *)v13 setPreviousStatusUpdateDate:v14];

  if (type)
  {
    if (type == 1)
    {
      if (!+[ULOdometryBridge isBackgroundAvailable])
      {
        goto LABEL_17;
      }

      v15 = [ULOdometryBridge alloc];
      queue = [(ULOdometryProvider *)v13 queue];
      v17 = [(ULOdometryBridge *)v15 initWithQueue:queue delegate:v13];
      odometrySource = v13->_odometrySource;
      v13->_odometrySource = v17;

      [(ULOdometryProvider *)v13 setOdometrySourceType:1];
    }

    if (v13->_odometrySource)
    {
      [(ULOdometryProvider *)v13 _resetPosition];
LABEL_16:
      type = v13;
      goto LABEL_18;
    }

LABEL_17:
    type = 0;
  }

LABEL_18:

  v19 = *MEMORY[0x277D85DE8];
  return type;
}

- (void)startBackgroundUpdates
{
  queue = [(ULOdometryProvider *)self queue];
  dispatch_assert_queue_V2(queue);

  [(ULOdometryProvider *)self setTrajectoryUUID:0];
  odometrySource = self->_odometrySource;

  [(ULOdometrySource *)odometrySource startBackgroundUpdates];
}

- (void)stopBackgroundUpdates
{
  queue = [(ULOdometryProvider *)self queue];
  dispatch_assert_queue_V2(queue);

  [(ULOdometryProvider *)self setTrajectoryUUID:0];
  [(ULOdometrySource *)self->_odometrySource stopBackgroundUpdates];
  v4 = [MEMORY[0x277CBEAA8] now];
  if (onceToken_MicroLocation_Default != -1)
  {
    [ULOdometryProvider initWithQueue:odometrySourceType:delegate:];
  }

  v5 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
  {
    *v15 = 0;
    _os_log_impl(&dword_258FE9000, v5, OS_LOG_TYPE_DEFAULT, "stop odometry - sending odometry update with nil UUID", v15, 2u);
  }

  delegate = [(ULOdometryProvider *)self delegate];
  v7 = [ULOdometryStatus alloc];
  deviceClass = [MEMORY[0x277D28868] deviceClass];
  odometrySourceType = [(ULOdometryProvider *)self odometrySourceType];
  deltaPositionX = [(ULOdometryProvider *)self deltaPositionX];
  deltaPositionY = [(ULOdometryProvider *)self deltaPositionY];
  deltaPositionZ = [(ULOdometryProvider *)self deltaPositionZ];
  v13 = [(ULOdometryStatus *)v7 initWithDeviceIdentifier:deviceClass odometrySourceType:odometrySourceType deltaPositionX:deltaPositionX deltaPositionY:deltaPositionY deltaPositionZ:deltaPositionZ date:v4];
  nilUUID = [MEMORY[0x277CCAD78] nilUUID];
  (*(delegate->var0 + 2))(delegate, self, v13, nilUUID);
}

+ (optional<ULOdometryDO>)findFenceCrossingOdometryEntryWithOdometryEntries:(optional<ULOdometryDO> *__return_ptr)retstr fenceRadius:(optional<ULOdometryDO> *)result shouldReturnNilIfNoCrossing:(int64_t)crossing
{
  v7 = *v3;
  if (v5 <= 0.0 || v7 == v3[1])
  {
    retstr->var0.var0 = 0;
    LOBYTE(retstr[1].var1) = 0;
    return result;
  }

  v9 = v4;
  v10 = v5;
  v11 = v3;
  v12 = *(v7 + 48);
  v19 = v12;
  v13 = *v11;
  v14 = v11[1];
  if (*v11 == v14)
  {
LABEL_12:
    if ((v9 & 1) == 0)
    {
      std::optional<ULOdometryDO>::optional[abi:ne200100]<ULOdometryDO const&,0>(retstr, (v11[1] - 64));
      goto LABEL_16;
    }
  }

  else
  {
    v15 = v10 * v10;
    v16 = 0.0;
    v17 = 0.0;
    v18 = 0.0;
    while (([v19 isEqual:*(v13 + 48)] & 1) != 0)
    {
      v16 = v16 + *(v13 + 24);
      v17 = v17 + *(v13 + 28);
      v18 = v18 + *(v13 + 32);
      if ((((v17 * v17) + (v16 * v16)) + (v18 * v18)) > v15)
      {
        std::optional<ULOdometryDO>::optional[abi:ne200100]<ULOdometryDO const&,0>(retstr, v13);
        goto LABEL_16;
      }

      v13 += 64;
      if (v13 == v14)
      {
        goto LABEL_12;
      }
    }
  }

  retstr->var0.var0 = 0;
  LOBYTE(retstr[1].var1) = 0;
LABEL_16:

  return result;
}

- (void)_resetPosition
{
  [(ULOdometryProvider *)self setDeltaPositionX:&unk_286A71FD0];
  [(ULOdometryProvider *)self setDeltaPositionY:&unk_286A71FD0];

  [(ULOdometryProvider *)self setDeltaPositionZ:&unk_286A71FD0];
}

- (void)_resetTrajectory
{
  uUID = [MEMORY[0x277CCAD78] UUID];
  [(ULOdometryProvider *)self setTrajectoryUUID:?];
}

- (BOOL)_checkIfExitedBubble
{
  v3 = +[ULDefaultsSingleton shared];
  defaultsDictionary = [v3 defaultsDictionary];

  v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULOdometerUpdateDistanceIntervalMeters"];
  v6 = [defaultsDictionary objectForKey:v5];
  if (v6 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v7 = v6;
  }

  else
  {
    v7 = &unk_286A72E20;
  }

  [v7 doubleValue];
  v9 = v8;

  deltaPositionX = [(ULOdometryProvider *)self deltaPositionX];
  [deltaPositionX doubleValue];
  v12 = v11;
  deltaPositionX2 = [(ULOdometryProvider *)self deltaPositionX];
  [deltaPositionX2 doubleValue];
  v15 = v14;
  deltaPositionY = [(ULOdometryProvider *)self deltaPositionY];
  [deltaPositionY doubleValue];
  v18 = v17;
  deltaPositionY2 = [(ULOdometryProvider *)self deltaPositionY];
  [deltaPositionY2 doubleValue];
  v21 = v20;
  deltaPositionZ = [(ULOdometryProvider *)self deltaPositionZ];
  [deltaPositionZ doubleValue];
  v24 = v23;
  deltaPositionZ2 = [(ULOdometryProvider *)self deltaPositionZ];
  [deltaPositionZ2 doubleValue];
  v27 = v18 * v21 + v12 * v15 + v24 * v26 > v9 * v9;

  return v27;
}

- (void)_updatePosition:(id)position
{
  positionCopy = position;
  v4 = MEMORY[0x277CCABB0];
  deltaPositionX = [(ULOdometryProvider *)self deltaPositionX];
  [deltaPositionX doubleValue];
  v7 = v6;
  deltaPositionX2 = [positionCopy deltaPositionX];
  [deltaPositionX2 doubleValue];
  v10 = [v4 numberWithDouble:v7 + v9];
  [(ULOdometryProvider *)self setDeltaPositionX:v10];

  v11 = MEMORY[0x277CCABB0];
  deltaPositionY = [(ULOdometryProvider *)self deltaPositionY];
  [deltaPositionY doubleValue];
  v14 = v13;
  deltaPositionY2 = [positionCopy deltaPositionY];
  [deltaPositionY2 doubleValue];
  v17 = [v11 numberWithDouble:v14 + v16];
  [(ULOdometryProvider *)self setDeltaPositionY:v17];

  v18 = MEMORY[0x277CCABB0];
  deltaPositionZ = [(ULOdometryProvider *)self deltaPositionZ];
  [deltaPositionZ doubleValue];
  v21 = v20;
  deltaPositionZ2 = [positionCopy deltaPositionZ];
  [deltaPositionZ2 doubleValue];
  v24 = [v18 numberWithDouble:v21 + v23];
  [(ULOdometryProvider *)self setDeltaPositionZ:v24];
}

- (void)didReceiveOdometryUpdate:(id)update withError:(id)error
{
  v49 = *MEMORY[0x277D85DE8];
  updateCopy = update;
  errorCopy = error;
  queue = [(ULOdometryProvider *)self queue];
  dispatch_assert_queue_V2(queue);

  if (onceToken_MicroLocation_Default != -1)
  {
    [ULOdometryProvider initWithQueue:odometrySourceType:delegate:];
  }

  v9 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_258FE9000, v9, OS_LOG_TYPE_DEBUG, "#ad-debug ULOdometryProvider::didReceiveOdometryUpdate", buf, 2u);
  }

  [(ULOdometryProvider *)self _updatePosition:updateCopy];
  if (errorCopy)
  {
    v10 = [ULOdometryStatus alloc];
    deviceIdentifier = [updateCopy deviceIdentifier];
    odometrySourceType = [(ULOdometryProvider *)self odometrySourceType];
    date = [MEMORY[0x277CBEAA8] date];
    v14 = [(ULOdometryStatus *)v10 initWithDeviceIdentifier:deviceIdentifier odometrySourceType:odometrySourceType deltaPositionX:&unk_286A71FD0 deltaPositionY:&unk_286A71FD0 deltaPositionZ:&unk_286A71FD0 date:date];

    delegate = [(ULOdometryProvider *)self delegate];
    odometrySourceType2 = [(ULOdometryProvider *)self odometrySourceType];
    previousStatusUpdateDate = [(ULOdometryProvider *)self previousStatusUpdateDate];
    (*(delegate->var0 + 3))(delegate, self, v14, odometrySourceType2, errorCopy, previousStatusUpdateDate);

    if (onceToken_MicroLocation_Default != -1)
    {
      [ULOdometryProvider didReceiveOdometryUpdate:withError:];
    }

    v18 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v40 = errorCopy;
      _os_log_impl(&dword_258FE9000, v18, OS_LOG_TYPE_DEFAULT, "Received error from odometry, trajectory invalid until update, error: %@", buf, 0xCu);
    }

    [(ULOdometryProvider *)self setTrajectoryUUID:0];

    v19 = 0;
  }

  else
  {
    v20 = MEMORY[0x277CBEAA8];
    [updateCopy timestamp];
    v19 = [v20 dateFromMachContinuous:?];
    trajectoryUUID = [(ULOdometryProvider *)self trajectoryUUID];

    if (!trajectoryUUID)
    {
      if (onceToken_MicroLocation_Default != -1)
      {
        [ULOdometryProvider didReceiveOdometryUpdate:withError:];
      }

      v22 = logObject_MicroLocation_Default;
      if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_258FE9000, v22, OS_LOG_TYPE_DEFAULT, "got update after nil trajectory, starting new trajectory", buf, 2u);
      }

      [(ULOdometryProvider *)self _resetTrajectory];
      [(ULOdometryProvider *)self _resetPosition];
    }

    [(ULOdometryProvider *)self setPreviousStatusUpdateDate:v19];
    if (trajectoryUUID)
    {
      if (![(ULOdometryProvider *)self _checkIfExitedBubble])
      {
        goto LABEL_28;
      }

      if (onceToken_MicroLocation_Default != -1)
      {
        [ULOdometryProvider didReceiveOdometryUpdate:withError:];
      }

      v23 = logObject_MicroLocation_Default;
      if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_258FE9000, v23, OS_LOG_TYPE_DEFAULT, "odometer exited maximum radius, sending update to delegate", buf, 2u);
      }
    }

    if (onceToken_MicroLocation_Default != -1)
    {
      [ULOdometryProvider didReceiveOdometryUpdate:withError:];
    }

    v24 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      deltaPositionX = [(ULOdometryProvider *)self deltaPositionX];
      deltaPositionY = [(ULOdometryProvider *)self deltaPositionY];
      deltaPositionZ = [(ULOdometryProvider *)self deltaPositionZ];
      trajectoryUUID2 = [(ULOdometryProvider *)self trajectoryUUID];
      *buf = 138413314;
      v40 = v19;
      v41 = 2112;
      v42 = deltaPositionX;
      v43 = 2112;
      v44 = deltaPositionY;
      v45 = 2112;
      v46 = deltaPositionZ;
      v47 = 2112;
      v48 = trajectoryUUID2;
      _os_log_impl(&dword_258FE9000, v24, OS_LOG_TYPE_DEFAULT, "#ad-debug sending odometry update with date: %@, deltaX: %@, deltaY: %@, deltaZ: %@, uuid: %@", buf, 0x34u);
    }

    delegate2 = [(ULOdometryProvider *)self delegate];
    v30 = [ULOdometryStatus alloc];
    deviceIdentifier2 = [updateCopy deviceIdentifier];
    odometrySourceType3 = [(ULOdometryProvider *)self odometrySourceType];
    deltaPositionX2 = [(ULOdometryProvider *)self deltaPositionX];
    deltaPositionY2 = [(ULOdometryProvider *)self deltaPositionY];
    deltaPositionZ2 = [(ULOdometryProvider *)self deltaPositionZ];
    v35 = [(ULOdometryStatus *)v30 initWithDeviceIdentifier:deviceIdentifier2 odometrySourceType:odometrySourceType3 deltaPositionX:deltaPositionX2 deltaPositionY:deltaPositionY2 deltaPositionZ:deltaPositionZ2 date:v19];
    trajectoryUUID3 = [(ULOdometryProvider *)self trajectoryUUID];
    (*(delegate2->var0 + 2))(delegate2, self, v35, trajectoryUUID3);

    [(ULOdometryProvider *)self _resetPosition];
  }

LABEL_28:

  v37 = *MEMORY[0x277D85DE8];
}

- (void)didReceiveOdometryProviderStateIsAvailable:(BOOL)available
{
  v3 = *(*[(ULOdometryProvider *)self delegate]+ 32);

  v3();
}

@end