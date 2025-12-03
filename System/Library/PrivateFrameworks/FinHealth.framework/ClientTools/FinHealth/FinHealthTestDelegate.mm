@interface FinHealthTestDelegate
- (FinHealthTestDelegate)init;
- (void)didUpdateFeatures:(id)features moreComing:(BOOL)coming readyForNextBatch:(id)batch error:(id)error;
@end

@implementation FinHealthTestDelegate

- (FinHealthTestDelegate)init
{
  v6.receiver = self;
  v6.super_class = FinHealthTestDelegate;
  v2 = [(FinHealthTestDelegate *)&v6 init];
  if (v2)
  {
    v3 = [[FHSearchSuggestionController alloc] initWithDelegate:v2];
    searchSuggestionController = v2->_searchSuggestionController;
    v2->_searchSuggestionController = v3;
  }

  return v2;
}

- (void)didUpdateFeatures:(id)features moreComing:(BOOL)coming readyForNextBatch:(id)batch error:(id)error
{
  batchCopy = batch;
  errorCopy = error;
  v9 = FinHealthLogObject();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v11 = 136315138;
    v12 = "[FinHealthTestDelegate didUpdateFeatures:moreComing:readyForNextBatch:error:]";
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "%s", &v11, 0xCu);
  }

  if (errorCopy)
  {
    v10 = FinHealthLogObject();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      v11 = 138412290;
      v12 = errorCopy;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "didUpdateFeatures error: %@", &v11, 0xCu);
    }
  }

  else if (batchCopy)
  {
    batchCopy[2](batchCopy);
  }
}

@end