@interface ULScanningServiceAnalyticsMO
+ (id)createFromDO:(const void *)o inManagedObjectContext:(id)context;
- (optional<ULScanningServiceAnalyticsDO>)convertToDO;
@end

@implementation ULScanningServiceAnalyticsMO

+ (id)createFromDO:(const void *)o inManagedObjectContext:(id)context
{
  contextCopy = context;
  v6 = [[ULScanningServiceAnalyticsMO alloc] initWithContext:contextCopy];
  [(ULScanningServiceAnalyticsMO *)v6 setScanType:*o];
  [(ULScanningServiceAnalyticsMO *)v6 setTriggerType:*(o + 1)];
  [(ULScanningServiceAnalyticsMO *)v6 setDisplayState:*(o + 2)];
  [(ULScanningServiceAnalyticsMO *)v6 setScanResult:*(o + 3)];
  [(ULScanningServiceAnalyticsMO *)v6 setScanningEventTimestamp:*(o + 1)];

  return v6;
}

- (optional<ULScanningServiceAnalyticsDO>)convertToDO
{
  v3 = v1;
  [(ULScanningServiceAnalyticsMO *)self scanningEventTimestamp];
  v7 = v4;
  scanType = [(ULScanningServiceAnalyticsMO *)self scanType];
  v5 = ULScanningServiceAnalyticsDO::ULScanningServiceAnalyticsDO(v3, &scanType, [(ULScanningServiceAnalyticsMO *)self triggerType], [(ULScanningServiceAnalyticsMO *)self displayState], [(ULScanningServiceAnalyticsMO *)self scanResult], &v7);
  *(v3 + 16) = 1;
  return v5;
}

@end