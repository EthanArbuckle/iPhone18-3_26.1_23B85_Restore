@interface ULScanningServiceAnalyticsMO
+ (id)createFromDO:(const void *)a3 inManagedObjectContext:(id)a4;
- (optional<ULScanningServiceAnalyticsDO>)convertToDO;
@end

@implementation ULScanningServiceAnalyticsMO

+ (id)createFromDO:(const void *)a3 inManagedObjectContext:(id)a4
{
  v5 = a4;
  v6 = [[ULScanningServiceAnalyticsMO alloc] initWithContext:v5];
  [(ULScanningServiceAnalyticsMO *)v6 setScanType:*a3];
  [(ULScanningServiceAnalyticsMO *)v6 setTriggerType:*(a3 + 1)];
  [(ULScanningServiceAnalyticsMO *)v6 setDisplayState:*(a3 + 2)];
  [(ULScanningServiceAnalyticsMO *)v6 setScanResult:*(a3 + 3)];
  [(ULScanningServiceAnalyticsMO *)v6 setScanningEventTimestamp:*(a3 + 1)];

  return v6;
}

- (optional<ULScanningServiceAnalyticsDO>)convertToDO
{
  v3 = v1;
  [(ULScanningServiceAnalyticsMO *)self scanningEventTimestamp];
  v7 = v4;
  v6 = [(ULScanningServiceAnalyticsMO *)self scanType];
  v5 = ULScanningServiceAnalyticsDO::ULScanningServiceAnalyticsDO(v3, &v6, [(ULScanningServiceAnalyticsMO *)self triggerType], [(ULScanningServiceAnalyticsMO *)self displayState], [(ULScanningServiceAnalyticsMO *)self scanResult], &v7);
  *(v3 + 16) = 1;
  return v5;
}

@end