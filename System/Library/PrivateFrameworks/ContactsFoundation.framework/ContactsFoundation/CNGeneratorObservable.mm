@interface CNGeneratorObservable
@end

@implementation CNGeneratorObservable

uint64_t __48___CNGeneratorObservable_sendResultsToObserver___block_invoke(uint64_t a1)
{
  if (([*(a1 + 32) isCanceled] & 1) == 0)
  {
    do
    {
      if ([*(a1 + 32) isFinished])
      {
        break;
      }

      [*(a1 + 32) sendCurrentStateToObserver:*(a1 + 40)];
      [*(a1 + 32) updateState];
    }

    while (![*(a1 + 32) isCanceled]);
  }

  result = [*(a1 + 32) isCanceled];
  if ((result & 1) == 0)
  {
    v3 = *(a1 + 40);

    return [v3 observerDidComplete];
  }

  return result;
}

uint64_t __56___CNGeneratorObservable_scheduleNextResultForObserver___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) isCanceled];
  if ((result & 1) == 0)
  {
    result = [*(a1 + 32) isFinished];
    if ((result & 1) == 0)
    {
      [*(a1 + 32) sendCurrentStateToObserver:*(a1 + 40)];
      [*(a1 + 32) updateState];
      v3 = *(a1 + 32);
      v4 = *(a1 + 40);

      return [v3 scheduleNextResultForObserver:v4];
    }
  }

  return result;
}

@end