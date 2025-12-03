@interface MapsSuggestionsTimeFeeler
- (MapsSuggestionsTimeFeeler)initWithDelegate:(id)delegate name:(id)name;
- (double)updateSignals;
@end

@implementation MapsSuggestionsTimeFeeler

- (double)updateSignals
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  sub_100005F88(selfCopy);
  sub_1000060E8(&selfCopy->super.super.super.isa);
  pollingFrequency = selfCopy->_pollingFrequency;
  objc_sync_exit(selfCopy);

  return pollingFrequency;
}

- (MapsSuggestionsTimeFeeler)initWithDelegate:(id)delegate name:(id)name
{
  objc_initWeak(&location, delegate);
  nameCopy = name;
  v7 = objc_loadWeakRetained(&location);
  v13.receiver = self;
  v13.super_class = MapsSuggestionsTimeFeeler;
  v8 = [(MapsSuggestionsBaseFeeler *)&v13 initWithDelegate:v7 name:nameCopy];

  if (v8)
  {
    GEOConfigGetDouble();
    v8->_pollingFrequency = v9;
    v10 = [[MapsSuggestionsMutableSignalPack alloc] initWithCapacity:2];
    signalPack = v8->_signalPack;
    v8->_signalPack = v10;
  }

  objc_destroyWeak(&location);
  return v8;
}

@end