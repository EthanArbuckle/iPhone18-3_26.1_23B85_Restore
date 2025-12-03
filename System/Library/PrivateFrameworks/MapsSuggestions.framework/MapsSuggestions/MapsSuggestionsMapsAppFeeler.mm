@interface MapsSuggestionsMapsAppFeeler
- (BOOL)canProduceSignalType:(int64_t)type;
- (BOOL)startUpdatingSignals;
- (BOOL)stopUpdatingSignals;
- (BOOL)updateSignals;
- (void)sendSignalPack:(id)pack;
@end

@implementation MapsSuggestionsMapsAppFeeler

- (BOOL)startUpdatingSignals
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  objc_sync_exit(selfCopy);

  return 1;
}

- (void)sendSignalPack:(id)pack
{
  packCopy = pack;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v6 = [packCopy copy];
  signalPack = selfCopy->_signalPack;
  selfCopy->_signalPack = v6;

  v8 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v9 = objc_opt_class();
    v10 = [(MapsSuggestionsSignalPack *)selfCopy->_signalPack description];
    v13 = 138412546;
    v14 = v9;
    v15 = 2112;
    v16[0] = v10;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "%@ is streaming signal pack: %@ ", &v13, 0x16u);
  }

  delegate = [(MapsSuggestionsBaseFeeler *)selfCopy delegate];
  if (delegate)
  {
    if (objc_opt_respondsToSelector())
    {
      [delegate feeler:selfCopy sendsSignalPack:selfCopy->_signalPack];
    }
  }

  else
  {
    v12 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = 136446722;
      v14 = "MapsSuggestionsMapsAppFeeler.m";
      v15 = 1026;
      LODWORD(v16[0]) = 30;
      WORD2(v16[0]) = 2082;
      *(v16 + 6) = "[MapsSuggestionsMapsAppFeeler sendSignalPack:]";
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongDelegate went away in %{public}s", &v13, 0x1Cu);
    }
  }

  objc_sync_exit(selfCopy);
}

- (BOOL)canProduceSignalType:(int64_t)type
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  objc_sync_exit(selfCopy);

  return (type & 0xFFFFFFFFFFFFFFFDLL) == 21;
}

- (BOOL)stopUpdatingSignals
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  objc_sync_exit(selfCopy);

  return 1;
}

- (BOOL)updateSignals
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = [(MapsSuggestionsSignalPack *)selfCopy->_signalPack copy];
  [(MapsSuggestionsMapsAppFeeler *)selfCopy sendSignalPack:v3];

  objc_sync_exit(selfCopy);
  return 1;
}

@end