@interface DSSessionMetric
- (DSSessionMetric)init;
- (id)sessionMetricFinalize;
- (void)dsProviderAvailable;
- (void)dsProviderUnavailable;
- (void)dsSessionCompletedWithStopReason:(int)reason numHeartbeats:(unint64_t)heartbeats numMotionStateMessages:(unint64_t)messages activeProviderLostCount:(unint64_t)count dataLinkType:(int)type maxListenerClients:(unint64_t)clients avgListenerStartInterval:(double)interval;
- (void)dsSessionStartedWithDeviceRole:(int)role numPotentialProviders:(unint64_t)providers unterminatedSession:(BOOL)session;
@end

@implementation DSSessionMetric

- (DSSessionMetric)init
{
  v8.receiver = self;
  v8.super_class = DSSessionMetric;
  v2 = [(DSSessionMetric *)&v8 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CCACA8] stringWithString:@"com.apple.distributedsensing.sessionMetric"];
    v4 = *(v2 + 15);
    *(v2 + 15) = v3;

    v5 = *(v2 + 1);
    *(v2 + 1) = 0;

    v6 = *(v2 + 3);
    *(v2 + 2) = 0;
    *(v2 + 3) = 0;

    *(v2 + 4) = 0;
    *(v2 + 5) = 0;
    *(v2 + 12) = 0;
    *(v2 + 56) = 0u;
    *(v2 + 72) = 0u;
    *(v2 + 12) = 0;
    *(v2 + 13) = 0;
    *(v2 + 56) = 0;
  }

  return v2;
}

- (void)dsSessionStartedWithDeviceRole:(int)role numPotentialProviders:(unint64_t)providers unterminatedSession:(BOOL)session
{
  self->_deviceRole = role;
  self->_numPotentialProviders = providers;
  self->_unterminatedSession = session;
  date = [MEMORY[0x277CBEAA8] date];
  sessionStartTime = self->_sessionStartTime;
  self->_sessionStartTime = date;

  MEMORY[0x2821F96F8]();
}

- (void)dsProviderAvailable
{
  if (self->_providerAvailableStartTime)
  {
    v2 = +[DSLogging sharedInstance];
    dsLogger = [v2 dsLogger];

    if (os_log_type_enabled(dsLogger, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_249027000, dsLogger, OS_LOG_TYPE_DEFAULT, "[DSCoreAnalytics] start time already initialized\n", v7, 2u);
    }
  }

  else
  {
    date = [MEMORY[0x277CBEAA8] date];
    providerAvailableStartTime = self->_providerAvailableStartTime;
    self->_providerAvailableStartTime = date;

    MEMORY[0x2821F96F8]();
  }
}

- (void)dsProviderUnavailable
{
  if (self->_providerAvailableStartTime)
  {
    date = [MEMORY[0x277CBEAA8] date];
    [date timeIntervalSinceDate:self->_providerAvailableStartTime];
    self->_totalProviderAvailableDuration = v4 + self->_totalProviderAvailableDuration;

    providerAvailableStartTime = self->_providerAvailableStartTime;
    self->_providerAvailableStartTime = 0;
  }

  else
  {
    v6 = +[DSLogging sharedInstance];
    dsLogger = [v6 dsLogger];

    if (os_log_type_enabled(dsLogger, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&dword_249027000, dsLogger, OS_LOG_TYPE_DEFAULT, "[DSCoreAnalytics] Invalid provider availability start time\n", v8, 2u);
    }
  }
}

- (void)dsSessionCompletedWithStopReason:(int)reason numHeartbeats:(unint64_t)heartbeats numMotionStateMessages:(unint64_t)messages activeProviderLostCount:(unint64_t)count dataLinkType:(int)type maxListenerClients:(unint64_t)clients avgListenerStartInterval:(double)interval
{
  date = [MEMORY[0x277CBEAA8] date];
  [date timeIntervalSinceDate:self->_sessionStartTime];
  self->_sessionDuration = v18;

  self->_sessionStopReason = reason;
  self->_numHeartbeats = heartbeats;
  self->_numMotionStateMessages = messages;
  self->_activeProviderLostCount = count;
  self->_linkType = type;
  self->_maxListenerClients = clients;
  self->_avgListenerStartInterval = interval;
}

- (id)sessionMetricFinalize
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  deviceRole = self->_deviceRole;
  if (deviceRole > 2)
  {
    v5 = "?";
  }

  else
  {
    v5 = off_278F85A98[deviceRole];
  }

  v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:v5];
  [dictionary setObject:v6 forKeyedSubscript:@"deviceRole"];

  linkType = self->_linkType;
  if (linkType > 0xB)
  {
    v8 = "?";
  }

  else
  {
    v8 = off_278F85AB0[linkType];
  }

  v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:v8];
  [dictionary setObject:v9 forKeyedSubscript:@"dataLinkType"];

  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_numHeartbeats];
  [dictionary setObject:v10 forKeyedSubscript:@"numHeartbeats"];

  v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_numMotionStateMessages];
  [dictionary setObject:v11 forKeyedSubscript:@"numMotionStateMessages"];

  v12 = [MEMORY[0x277CCABB0] numberWithDouble:self->_sessionDuration];
  [dictionary setObject:v12 forKeyedSubscript:@"sessionDuration"];

  v13 = self->_deviceRole;
  if (v13 == 1)
  {
    sessionStopReason = self->_sessionStopReason;
    if (sessionStopReason > 4)
    {
      v15 = "?";
    }

    else
    {
      v15 = off_278F85B10[sessionStopReason];
    }

    v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:v15];
    [dictionary setObject:v16 forKeyedSubscript:@"sessionStopReason"];

    v17 = [MEMORY[0x277CCABB0] numberWithBool:self->_unterminatedSession];
    [dictionary setObject:v17 forKeyedSubscript:@"unterminatedSession"];

    v13 = self->_deviceRole;
  }

  if (v13 == 2)
  {
    v18 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_numPotentialProviders];
    [dictionary setObject:v18 forKeyedSubscript:@"numPotentialProviders"];

    v19 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_activeProviderLostCount];
    [dictionary setObject:v19 forKeyedSubscript:@"activeProviderLostCount"];

    v20 = [MEMORY[0x277CCABB0] numberWithDouble:self->_totalProviderAvailableDuration];
    [dictionary setObject:v20 forKeyedSubscript:@"providerAvailabilityDuration"];

    self->_providerAvailability = (self->_totalProviderAvailableDuration / self->_sessionDuration * 100.0);
    v21 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:?];
    [dictionary setObject:v21 forKeyedSubscript:@"providerAvailability"];

    v22 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_maxListenerClients];
    [dictionary setObject:v22 forKeyedSubscript:@"maxListenerClients"];

    if (self->_avgListenerStartInterval != 0.0)
    {
      v23 = [MEMORY[0x277CCABB0] numberWithDouble:?];
      [dictionary setObject:v23 forKeyedSubscript:@"avgListenerStartInterval"];
    }

    v24 = [MEMORY[0x277CCABB0] numberWithBool:self->_isSessionStartUnsuccessful];
    [dictionary setObject:v24 forKeyedSubscript:@"unsuccessfulSessionStart"];
  }

  return dictionary;
}

@end