@interface FPItemCollection(DOCUtils)
- (uint64_t)doc_displaysSearchResults;
- (uint64_t)doc_isObserving;
- (uint64_t)doc_restartObservation;
- (uint64_t)doc_startObservationIfNeeded;
- (uint64_t)doc_stopObserving;
- (void)doc_setIsObserving:()DOCUtils;
- (void)doc_startObserving;
@end

@implementation FPItemCollection(DOCUtils)

- (void)doc_startObserving
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = docLogHandle;
  if (!docLogHandle)
  {
    DOCInitLogging();
    v2 = docLogHandle;
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412290;
    v6 = a1;
    _os_log_impl(&dword_249340000, v2, OS_LOG_TYPE_DEFAULT, "Start observing collection %@", &v5, 0xCu);
  }

  [a1 doc_setIsObserving:1];
  [a1 startObserving];
  v3 = +[DOCFPItemCollectionManager sharedManager];
  [v3 collectionDidStartObserving:a1];

  v4 = *MEMORY[0x277D85DE8];
}

- (uint64_t)doc_displaysSearchResults
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    isKindOfClass = 1;
  }

  else
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  return isKindOfClass & 1;
}

- (uint64_t)doc_startObservationIfNeeded
{
  result = [a1 doc_displaysSearchResults];
  if ((result & 1) == 0)
  {
    result = [a1 doc_isObserving];
    if ((result & 1) == 0)
    {

      return [a1 doc_startObserving];
    }
  }

  return result;
}

- (uint64_t)doc_isObserving
{
  v1 = objc_getAssociatedObject(a1, &_isObservingIdentifier);
  v2 = v1;
  if (v1)
  {
    v3 = [v1 BOOLValue];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)doc_setIsObserving:()DOCUtils
{
  v2 = [MEMORY[0x277CCABB0] numberWithBool:?];
  objc_setAssociatedObject(a1, &_isObservingIdentifier, v2, 1);
}

- (uint64_t)doc_stopObserving
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = docLogHandle;
  if (!docLogHandle)
  {
    DOCInitLogging();
    v2 = docLogHandle;
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = a1;
    _os_log_impl(&dword_249340000, v2, OS_LOG_TYPE_DEFAULT, "Stop observing collection %@", &v6, 0xCu);
  }

  v3 = +[DOCFPItemCollectionManager sharedManager];
  [v3 collectionDidStopObserving:a1];

  [a1 doc_setIsObserving:0];
  result = [a1 stopObserving];
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

- (uint64_t)doc_restartObservation
{
  if ([a1 doc_isObserving])
  {
    [a1 doc_stopObserving];
  }

  return [a1 doc_startObservationIfNeeded];
}

@end