@interface CoreGnssEmergencyManager
- (id)initForComm:(id)comm sendIndicationToRemoteCallback:(id)callback dispatch_queue_t:(id)dispatch_queue_t;
- (void)dealloc;
- (void)handleDeviceIndication:(id)indication;
- (void)handleRemoteRequest:(id)request machconttimens:(unint64_t)machconttimens;
@end

@implementation CoreGnssEmergencyManager

- (id)initForComm:(id)comm sendIndicationToRemoteCallback:(id)callback dispatch_queue_t:(id)dispatch_queue_t
{
  v12 = *MEMORY[0x277D85DE8];
  v8.receiver = self;
  v8.super_class = CoreGnssEmergencyManager;
  dispatch_queue_tCopy = dispatch_queue_t;
  [(CoreGnssEmergencyManager *)&v8 init];
  if (!qword_2813CF018)
  {
    qword_2813CF018 = os_log_create("com.apple.gpsd", "general");
  }

  if (!qword_2813CF008)
  {
    qword_2813CF008 = os_log_create("com.apple.gpsd", "Warning");
  }

  if (!qword_2813CF028)
  {
    qword_2813CF028 = os_log_create("com.apple.gpsd", "device");
  }

  if (!qword_2813CF010)
  {
    qword_2813CF010 = os_log_create("com.apple.gpsd", "NMEA");
  }

  if (!qword_2813CF020)
  {
    qword_2813CF020 = os_log_create("com.apple.gpsd", "gem");
  }

  v5 = qword_2813CF018;
  if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&dword_245396000, v5, OS_LOG_TYPE_DEBUG, "Logging init, check if the level is enabled", buf, 2u);
    v5 = qword_2813CF018;
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_245396000, v5, OS_LOG_TYPE_INFO, "Logging init, check if the level is enabled", buf, 2u);
    v5 = qword_2813CF018;
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_245396000, v5, OS_LOG_TYPE_DEFAULT, "Logging init, check if the level is enabled", buf, 2u);
    v5 = qword_2813CF018;
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = sub_24543ED28();
    *buf = 134217984;
    v11 = v6;
    _os_log_impl(&dword_245396000, v5, OS_LOG_TYPE_DEFAULT, "Record process start time, %.1f", buf, 0xCu);
  }

  operator new();
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = CoreGnssEmergencyManager;
  [(CoreGnssEmergencyManager *)&v2 dealloc];
}

- (void)handleDeviceIndication:(id)indication
{
  v3 = qword_2813CF018;
  if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_DEBUG))
  {
    *v4 = 0;
    _os_log_debug_impl(&dword_245396000, v3, OS_LOG_TYPE_DEBUG, "#gem,#interface,handleDeviceIndication", v4, 2u);
  }

  sub_245397744();
}

- (void)handleRemoteRequest:(id)request machconttimens:(unint64_t)machconttimens
{
  v4 = qword_2813CF018;
  if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_DEBUG))
  {
    *v5 = 0;
    _os_log_debug_impl(&dword_245396000, v4, OS_LOG_TYPE_DEBUG, "#gem,#interface,handleRemoteRequest, calling GEM handleRemoteDataRequest", v5, 2u);
  }

  sub_245398218();
}

@end