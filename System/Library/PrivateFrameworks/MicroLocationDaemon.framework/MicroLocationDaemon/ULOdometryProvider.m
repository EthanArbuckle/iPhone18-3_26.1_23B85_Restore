@interface ULOdometryProvider
+ (optional<ULOdometryDO>)findFenceCrossingOdometryEntryWithOdometryEntries:(optional<ULOdometryDO> *__return_ptr)retstr fenceRadius:(optional<ULOdometryDO> *)result shouldReturnNilIfNoCrossing:(int64_t)a3;
- (BOOL)_checkIfExitedBubble;
- (ULOdometryProvider)initWithQueue:(id)a3 odometrySourceType:(int64_t)a4 delegate:(ULOdometryProviderDelegate *)a5;
- (void)_resetPosition;
- (void)_resetTrajectory;
- (void)_updatePosition:(id)a3;
- (void)didReceiveOdometryProviderStateIsAvailable:(BOOL)a3;
- (void)didReceiveOdometryUpdate:(id)a3 withError:(id)a4;
- (void)startBackgroundUpdates;
- (void)stopBackgroundUpdates;
@end

@implementation ULOdometryProvider

- (ULOdometryProvider)initWithQueue:(id)a3 odometrySourceType:(int64_t)a4 delegate:(ULOdometryProviderDelegate *)a5
{
  v24 = *MEMORY[0x277D85DE8];
  v8 = a3;
  if (onceToken_MicroLocation_Default != -1)
  {
    [ULOdometryProvider initWithQueue:odometrySourceType:delegate:];
  }

  v9 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
  {
    v10 = @"UnknownOdometrySource";
    if (a4 == 1)
    {
      v10 = @"CoreMotionPDR";
    }

    if (!a4)
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
  dispatch_assert_queue_V2(v8);
  if (!v13)
  {
    goto LABEL_16;
  }

  [(ULOdometryProvider *)v13 setTrajectoryUUID:0];
  [(ULOdometryProvider *)v13 setQueue:v8];
  [(ULOdometryProvider *)v13 setDelegate:a5];
  v14 = [MEMORY[0x277CBEAA8] now];
  [(ULOdometryProvider *)v13 setPreviousStatusUpdateDate:v14];

  if (a4)
  {
    if (a4 == 1)
    {
      if (!+[ULOdometryBridge isBackgroundAvailable])
      {
        goto LABEL_17;
      }

      v15 = [ULOdometryBridge alloc];
      v16 = [(ULOdometryProvider *)v13 queue];
      v17 = [(ULOdometryBridge *)v15 initWithQueue:v16 delegate:v13];
      odometrySource = v13->_odometrySource;
      v13->_odometrySource = v17;

      [(ULOdometryProvider *)v13 setOdometrySourceType:1];
    }

    if (v13->_odometrySource)
    {
      [(ULOdometryProvider *)v13 _resetPosition];
LABEL_16:
      a4 = v13;
      goto LABEL_18;
    }

LABEL_17:
    a4 = 0;
  }

LABEL_18:

  v19 = *MEMORY[0x277D85DE8];
  return a4;
}

- (void)startBackgroundUpdates
{
  v3 = [(ULOdometryProvider *)self queue];
  dispatch_assert_queue_V2(v3);

  [(ULOdometryProvider *)self setTrajectoryUUID:0];
  odometrySource = self->_odometrySource;

  [(ULOdometrySource *)odometrySource startBackgroundUpdates];
}

- (void)stopBackgroundUpdates
{
  v3 = [(ULOdometryProvider *)self queue];
  dispatch_assert_queue_V2(v3);

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

  v6 = [(ULOdometryProvider *)self delegate];
  v7 = [ULOdometryStatus alloc];
  v8 = [MEMORY[0x277D28868] deviceClass];
  v9 = [(ULOdometryProvider *)self odometrySourceType];
  v10 = [(ULOdometryProvider *)self deltaPositionX];
  v11 = [(ULOdometryProvider *)self deltaPositionY];
  v12 = [(ULOdometryProvider *)self deltaPositionZ];
  v13 = [(ULOdometryStatus *)v7 initWithDeviceIdentifier:v8 odometrySourceType:v9 deltaPositionX:v10 deltaPositionY:v11 deltaPositionZ:v12 date:v4];
  v14 = [MEMORY[0x277CCAD78] nilUUID];
  (*(v6->var0 + 2))(v6, self, v13, v14);
}

+ (optional<ULOdometryDO>)findFenceCrossingOdometryEntryWithOdometryEntries:(optional<ULOdometryDO> *__return_ptr)retstr fenceRadius:(optional<ULOdometryDO> *)result shouldReturnNilIfNoCrossing:(int64_t)a3
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
  v3 = [MEMORY[0x277CCAD78] UUID];
  [(ULOdometryProvider *)self setTrajectoryUUID:?];
}

- (BOOL)_checkIfExitedBubble
{
  v3 = +[ULDefaultsSingleton shared];
  v4 = [v3 defaultsDictionary];

  v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULOdometerUpdateDistanceIntervalMeters"];
  v6 = [v4 objectForKey:v5];
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

  v10 = [(ULOdometryProvider *)self deltaPositionX];
  [v10 doubleValue];
  v12 = v11;
  v13 = [(ULOdometryProvider *)self deltaPositionX];
  [v13 doubleValue];
  v15 = v14;
  v16 = [(ULOdometryProvider *)self deltaPositionY];
  [v16 doubleValue];
  v18 = v17;
  v19 = [(ULOdometryProvider *)self deltaPositionY];
  [v19 doubleValue];
  v21 = v20;
  v22 = [(ULOdometryProvider *)self deltaPositionZ];
  [v22 doubleValue];
  v24 = v23;
  v25 = [(ULOdometryProvider *)self deltaPositionZ];
  [v25 doubleValue];
  v27 = v18 * v21 + v12 * v15 + v24 * v26 > v9 * v9;

  return v27;
}

- (void)_updatePosition:(id)a3
{
  v25 = a3;
  v4 = MEMORY[0x277CCABB0];
  v5 = [(ULOdometryProvider *)self deltaPositionX];
  [v5 doubleValue];
  v7 = v6;
  v8 = [v25 deltaPositionX];
  [v8 doubleValue];
  v10 = [v4 numberWithDouble:v7 + v9];
  [(ULOdometryProvider *)self setDeltaPositionX:v10];

  v11 = MEMORY[0x277CCABB0];
  v12 = [(ULOdometryProvider *)self deltaPositionY];
  [v12 doubleValue];
  v14 = v13;
  v15 = [v25 deltaPositionY];
  [v15 doubleValue];
  v17 = [v11 numberWithDouble:v14 + v16];
  [(ULOdometryProvider *)self setDeltaPositionY:v17];

  v18 = MEMORY[0x277CCABB0];
  v19 = [(ULOdometryProvider *)self deltaPositionZ];
  [v19 doubleValue];
  v21 = v20;
  v22 = [v25 deltaPositionZ];
  [v22 doubleValue];
  v24 = [v18 numberWithDouble:v21 + v23];
  [(ULOdometryProvider *)self setDeltaPositionZ:v24];
}

- (void)didReceiveOdometryUpdate:(id)a3 withError:(id)a4
{
  v49 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(ULOdometryProvider *)self queue];
  dispatch_assert_queue_V2(v8);

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

  [(ULOdometryProvider *)self _updatePosition:v6];
  if (v7)
  {
    v10 = [ULOdometryStatus alloc];
    v11 = [v6 deviceIdentifier];
    v12 = [(ULOdometryProvider *)self odometrySourceType];
    v13 = [MEMORY[0x277CBEAA8] date];
    v14 = [(ULOdometryStatus *)v10 initWithDeviceIdentifier:v11 odometrySourceType:v12 deltaPositionX:&unk_286A71FD0 deltaPositionY:&unk_286A71FD0 deltaPositionZ:&unk_286A71FD0 date:v13];

    v15 = [(ULOdometryProvider *)self delegate];
    v16 = [(ULOdometryProvider *)self odometrySourceType];
    v17 = [(ULOdometryProvider *)self previousStatusUpdateDate];
    (*(v15->var0 + 3))(v15, self, v14, v16, v7, v17);

    if (onceToken_MicroLocation_Default != -1)
    {
      [ULOdometryProvider didReceiveOdometryUpdate:withError:];
    }

    v18 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v40 = v7;
      _os_log_impl(&dword_258FE9000, v18, OS_LOG_TYPE_DEFAULT, "Received error from odometry, trajectory invalid until update, error: %@", buf, 0xCu);
    }

    [(ULOdometryProvider *)self setTrajectoryUUID:0];

    v19 = 0;
  }

  else
  {
    v20 = MEMORY[0x277CBEAA8];
    [v6 timestamp];
    v19 = [v20 dateFromMachContinuous:?];
    v21 = [(ULOdometryProvider *)self trajectoryUUID];

    if (!v21)
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
    if (v21)
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
      v25 = [(ULOdometryProvider *)self deltaPositionX];
      v26 = [(ULOdometryProvider *)self deltaPositionY];
      v27 = [(ULOdometryProvider *)self deltaPositionZ];
      v28 = [(ULOdometryProvider *)self trajectoryUUID];
      *buf = 138413314;
      v40 = v19;
      v41 = 2112;
      v42 = v25;
      v43 = 2112;
      v44 = v26;
      v45 = 2112;
      v46 = v27;
      v47 = 2112;
      v48 = v28;
      _os_log_impl(&dword_258FE9000, v24, OS_LOG_TYPE_DEFAULT, "#ad-debug sending odometry update with date: %@, deltaX: %@, deltaY: %@, deltaZ: %@, uuid: %@", buf, 0x34u);
    }

    v29 = [(ULOdometryProvider *)self delegate];
    v30 = [ULOdometryStatus alloc];
    v38 = [v6 deviceIdentifier];
    v31 = [(ULOdometryProvider *)self odometrySourceType];
    v32 = [(ULOdometryProvider *)self deltaPositionX];
    v33 = [(ULOdometryProvider *)self deltaPositionY];
    v34 = [(ULOdometryProvider *)self deltaPositionZ];
    v35 = [(ULOdometryStatus *)v30 initWithDeviceIdentifier:v38 odometrySourceType:v31 deltaPositionX:v32 deltaPositionY:v33 deltaPositionZ:v34 date:v19];
    v36 = [(ULOdometryProvider *)self trajectoryUUID];
    (*(v29->var0 + 2))(v29, self, v35, v36);

    [(ULOdometryProvider *)self _resetPosition];
  }

LABEL_28:

  v37 = *MEMORY[0x277D85DE8];
}

- (void)didReceiveOdometryProviderStateIsAvailable:(BOOL)a3
{
  v3 = *(*[(ULOdometryProvider *)self delegate]+ 32);

  v3();
}

@end