@interface MapsSuggestionsTimeFeeler
- (MapsSuggestionsTimeFeeler)initWithDelegate:(id)a3 name:(id)a4;
- (double)updateSignals;
@end

@implementation MapsSuggestionsTimeFeeler

- (double)updateSignals
{
  v2 = self;
  objc_sync_enter(v2);
  sub_100005F88(v2);
  sub_1000060E8(&v2->super.super.super.isa);
  pollingFrequency = v2->_pollingFrequency;
  objc_sync_exit(v2);

  return pollingFrequency;
}

- (MapsSuggestionsTimeFeeler)initWithDelegate:(id)a3 name:(id)a4
{
  objc_initWeak(&location, a3);
  v6 = a4;
  v7 = objc_loadWeakRetained(&location);
  v13.receiver = self;
  v13.super_class = MapsSuggestionsTimeFeeler;
  v8 = [(MapsSuggestionsBaseFeeler *)&v13 initWithDelegate:v7 name:v6];

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