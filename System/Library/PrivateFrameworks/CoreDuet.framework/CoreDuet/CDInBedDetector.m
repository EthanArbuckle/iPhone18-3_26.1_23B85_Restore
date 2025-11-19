@interface CDInBedDetector
@end

@implementation CDInBedDetector

void __76___CDInBedDetector_findMotionTerminusBetweenStartDate_endDate_latest_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  if (v5)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
  }

  v6 = [v9 copy];
  v7 = *(*(a1 + 48) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  dispatch_semaphore_signal(*(a1 + 32));
}

void __70___CDInBedDetector_stationaryIntervalsBetweenStartDate_endDate_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  if (v5)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
  }

  v6 = [v9 copy];
  v7 = *(*(a1 + 48) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  dispatch_semaphore_signal(*(a1 + 32));
}

@end