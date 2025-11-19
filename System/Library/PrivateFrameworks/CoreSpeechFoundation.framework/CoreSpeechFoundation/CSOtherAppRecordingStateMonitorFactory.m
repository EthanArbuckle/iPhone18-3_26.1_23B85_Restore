@interface CSOtherAppRecordingStateMonitorFactory
+ (id)otherAppRecordingStateMonitor;
@end

@implementation CSOtherAppRecordingStateMonitorFactory

+ (id)otherAppRecordingStateMonitor
{
  v13 = *MEMORY[0x1E69E9840];
  if (otherAppRecordingStateMonitor_onceToken != -1)
  {
    dispatch_once(&otherAppRecordingStateMonitor_onceToken, &__block_literal_global_2590);
  }

  v2 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_INFO))
  {
    v3 = v2;
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    v9 = 136315394;
    v10 = "+[CSOtherAppRecordingStateMonitorFactory otherAppRecordingStateMonitor]";
    v11 = 2112;
    v12 = v5;
    _os_log_impl(&dword_1DDA4B000, v3, OS_LOG_TYPE_INFO, "%s Using otherAppRecordingMonitor impl type: %@", &v9, 0x16u);
  }

  v6 = otherAppRecordingStateMonitor_otherAppRecordingStateMonior;
  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

uint64_t __71__CSOtherAppRecordingStateMonitorFactory_otherAppRecordingStateMonitor__block_invoke()
{
  if (+[CSOtherAppRecordingStateMonitorFactory _isSystemStatusSupported])
  {
    +[CSOtherAppRecordingStateMonitorFactory _otherAppRecordingStateMonitorImpMicAttribution];
  }

  else
  {
    +[CSOtherAppRecordingStateMonitorFactory _otherAppRecordingStateMonitor];
  }
  otherAppRecordingStateMonitor_otherAppRecordingStateMonior = ;

  return MEMORY[0x1EEE66BB8]();
}

@end