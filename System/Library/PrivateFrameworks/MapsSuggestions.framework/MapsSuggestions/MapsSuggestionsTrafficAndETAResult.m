@interface MapsSuggestionsTrafficAndETAResult
- (MapsSuggestionsTrafficAndETAResult)initWithGEOETATrafficUpdateResponse:(id)a3 trafficString:(id)a4;
- (MapsSuggestionsTrafficAndETAResult)initWithGEOTrafficAndETAResult:(id)a3;
@end

@implementation MapsSuggestionsTrafficAndETAResult

- (MapsSuggestionsTrafficAndETAResult)initWithGEOTrafficAndETAResult:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = MapsSuggestionsTrafficAndETAResult;
  v5 = [(MapsSuggestionsTrafficAndETAResult *)&v16 init];
  if (v5)
  {
    v5->_isSuccess = [v4 isSuccess];
    [v4 seconds];
    v5->_seconds = v6;
    v7 = [v4 shortTrafficString];
    shortTrafficString = v5->_shortTrafficString;
    v5->_shortTrafficString = v7;

    v9 = [v4 longTrafficString];
    longTrafficString = v5->_longTrafficString;
    v5->_longTrafficString = v9;

    v11 = [v4 writtenRouteName];
    writtenRouteName = v5->_writtenRouteName;
    v5->_writtenRouteName = v11;

    v13 = [v4 spokenRouteName];
    spokenRouteName = v5->_spokenRouteName;
    v5->_spokenRouteName = v13;
  }

  return v5;
}

- (MapsSuggestionsTrafficAndETAResult)initWithGEOETATrafficUpdateResponse:(id)a3 trafficString:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12.receiver = self;
  v12.super_class = MapsSuggestionsTrafficAndETAResult;
  v8 = [(MapsSuggestionsTrafficAndETAResult *)&v12 init];
  if (v8)
  {
    v8->_isSuccess = [v6 status] == 0;
    v9 = [v6 waypointRoute];
    v10 = [v9 traversalTimes];
    v8->_seconds = [v10 estimatedSeconds];

    objc_storeStrong(&v8->_shortTrafficString, a4);
    objc_storeStrong(&v8->_longTrafficString, a4);
  }

  return v8;
}

@end