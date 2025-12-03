@interface CLSLocationShifter
+ (id)sharedLocationShifter;
- ($F24F406B2B787EFB06265DBA3D28CBD5)shiftedCoordinateForOriginalCoordinate:(id)coordinate;
- (CLSLocationShifter)init;
@end

@implementation CLSLocationShifter

- ($F24F406B2B787EFB06265DBA3D28CBD5)shiftedCoordinateForOriginalCoordinate:(id)coordinate
{
  var1 = coordinate.var1;
  var0 = coordinate.var0;
  if ([MEMORY[0x277D0EB88] isLocationShiftRequiredForCoordinate:?])
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    v20 = 0;
    v21 = &v20;
    v22 = 0x3010000000;
    v24[0] = 0;
    v24[1] = 0;
    v23 = &unk_22F9A0EC6;
    if (([(GEOLocationShifter *)selfCopy->_locationShifter shiftCoordinate:v24 accuracy:0 shiftedCoordinate:var0 shiftedAccuracy:var1, 0.0]& 1) == 0)
    {
      v7 = dispatch_semaphore_create(0);
      locationShifter = selfCopy->_locationShifter;
      v17[0] = MEMORY[0x277D85DD0];
      v17[1] = 3221225472;
      v17[2] = __61__CLSLocationShifter_shiftedCoordinateForOriginalCoordinate___block_invoke;
      v17[3] = &unk_2788A7A58;
      v19 = &v20;
      v18 = v7;
      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 3221225472;
      v12[2] = __61__CLSLocationShifter_shiftedCoordinateForOriginalCoordinate___block_invoke_2;
      v12[3] = &unk_2788A7A80;
      v14 = &v20;
      v15 = var0;
      v16 = var1;
      v9 = v18;
      v13 = v9;
      [(GEOLocationShifter *)locationShifter shiftCoordinate:v17 accuracy:0 withCompletionHandler:v12 mustGoToNetworkCallback:selfCopy->_locationShiftQueue errorHandler:var0 callbackQueue:var1, 0.0];
      dispatch_semaphore_wait(v9, 0xFFFFFFFFFFFFFFFFLL);
    }

    var0 = v21[4];
    var1 = v21[5];
    _Block_object_dispose(&v20, 8);
    objc_sync_exit(selfCopy);
  }

  v10 = var0;
  v11 = var1;
  result.var1 = v11;
  result.var0 = v10;
  return result;
}

intptr_t __61__CLSLocationShifter_shiftedCoordinateForOriginalCoordinate___block_invoke(uint64_t a1, double a2, double a3)
{
  v3 = *(*(a1 + 40) + 8);
  *(v3 + 32) = a2;
  *(v3 + 40) = a3;
  return dispatch_semaphore_signal(*(a1 + 32));
}

void __61__CLSLocationShifter_shiftedCoordinateForOriginalCoordinate___block_invoke_2(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = +[CLSLogging sharedLogging];
  v5 = [v4 loggingConnection];

  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    v6 = 138412290;
    v7 = v3;
    _os_log_error_impl(&dword_22F907000, v5, OS_LOG_TYPE_ERROR, "Shifted location error:%@", &v6, 0xCu);
  }

  *(*(*(a1 + 40) + 8) + 32) = *(a1 + 48);
  dispatch_semaphore_signal(*(a1 + 32));
}

- (CLSLocationShifter)init
{
  v10.receiver = self;
  v10.super_class = CLSLocationShifter;
  v2 = [(CLSLocationShifter *)&v10 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_attr_make_with_qos_class(v3, QOS_CLASS_UTILITY, 0);

    v5 = dispatch_queue_create("Shifter queue", v4);
    locationShiftQueue = v2->_locationShiftQueue;
    v2->_locationShiftQueue = v5;

    v7 = objc_alloc_init(MEMORY[0x277D0EB88]);
    locationShifter = v2->_locationShifter;
    v2->_locationShifter = v7;
  }

  return v2;
}

+ (id)sharedLocationShifter
{
  if (sharedLocationShifter_onceToken != -1)
  {
    dispatch_once(&sharedLocationShifter_onceToken, &__block_literal_global_2145);
  }

  v3 = sharedLocationShifter_sharedLocationShifter;

  return v3;
}

uint64_t __43__CLSLocationShifter_sharedLocationShifter__block_invoke()
{
  sharedLocationShifter_sharedLocationShifter = objc_alloc_init(CLSLocationShifter);

  return MEMORY[0x2821F96F8]();
}

@end