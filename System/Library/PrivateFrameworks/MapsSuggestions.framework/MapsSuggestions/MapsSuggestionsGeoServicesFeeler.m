@interface MapsSuggestionsGeoServicesFeeler
- (MapsSuggestionsGeoServicesFeeler)initWithDelegate:(id)a3 name:(id)a4;
- (double)updateSignals;
@end

@implementation MapsSuggestionsGeoServicesFeeler

- (double)updateSignals
{
  v2 = self;
  objc_sync_enter(v2);
  if (v2)
  {
    signalPack = v2->_signalPack;
    *&v4 = GEOGetUserTransportTypePreference();
    [(MapsSuggestionsMutableSignalPack *)signalPack writeSignalValue:19 forType:v4];
  }

  sub_100003DF0(&v2->super.super.super.isa);
  sub_100003E60(v2, &v6);
  return v6;
}

- (MapsSuggestionsGeoServicesFeeler)initWithDelegate:(id)a3 name:(id)a4
{
  objc_initWeak(&location, a3);
  v6 = a4;
  v7 = objc_loadWeakRetained(&location);
  v13.receiver = self;
  v13.super_class = MapsSuggestionsGeoServicesFeeler;
  v8 = [(MapsSuggestionsBaseFeeler *)&v13 initWithDelegate:v7 name:v6];

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