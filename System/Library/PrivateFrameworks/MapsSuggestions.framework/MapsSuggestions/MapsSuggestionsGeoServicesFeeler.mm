@interface MapsSuggestionsGeoServicesFeeler
- (MapsSuggestionsGeoServicesFeeler)initWithDelegate:(id)delegate name:(id)name;
- (double)updateSignals;
@end

@implementation MapsSuggestionsGeoServicesFeeler

- (double)updateSignals
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (selfCopy)
  {
    signalPack = selfCopy->_signalPack;
    *&v4 = GEOGetUserTransportTypePreference();
    [(MapsSuggestionsMutableSignalPack *)signalPack writeSignalValue:19 forType:v4];
  }

  sub_100003DF0(&selfCopy->super.super.super.isa);
  sub_100003E60(selfCopy, &v6);
  return v6;
}

- (MapsSuggestionsGeoServicesFeeler)initWithDelegate:(id)delegate name:(id)name
{
  objc_initWeak(&location, delegate);
  nameCopy = name;
  v7 = objc_loadWeakRetained(&location);
  v13.receiver = self;
  v13.super_class = MapsSuggestionsGeoServicesFeeler;
  v8 = [(MapsSuggestionsBaseFeeler *)&v13 initWithDelegate:v7 name:nameCopy];

  if (v8)
  {
    GEOConfigGetDouble();
    v8->_pollingFrequency = v9;
    v10 = [[MapsSuggestionsMutableSignalPack alloc] initWithCapacity:1];
    signalPack = v8->_signalPack;
    v8->_signalPack = v10;
  }

  objc_destroyWeak(&location);
  return v8;
}

@end