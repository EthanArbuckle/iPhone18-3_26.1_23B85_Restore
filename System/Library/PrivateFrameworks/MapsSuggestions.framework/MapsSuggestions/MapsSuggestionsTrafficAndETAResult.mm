@interface MapsSuggestionsTrafficAndETAResult
- (MapsSuggestionsTrafficAndETAResult)initWithGEOETATrafficUpdateResponse:(id)response trafficString:(id)string;
- (MapsSuggestionsTrafficAndETAResult)initWithGEOTrafficAndETAResult:(id)result;
@end

@implementation MapsSuggestionsTrafficAndETAResult

- (MapsSuggestionsTrafficAndETAResult)initWithGEOTrafficAndETAResult:(id)result
{
  resultCopy = result;
  v16.receiver = self;
  v16.super_class = MapsSuggestionsTrafficAndETAResult;
  v5 = [(MapsSuggestionsTrafficAndETAResult *)&v16 init];
  if (v5)
  {
    v5->_isSuccess = [resultCopy isSuccess];
    [resultCopy seconds];
    v5->_seconds = v6;
    shortTrafficString = [resultCopy shortTrafficString];
    shortTrafficString = v5->_shortTrafficString;
    v5->_shortTrafficString = shortTrafficString;

    longTrafficString = [resultCopy longTrafficString];
    longTrafficString = v5->_longTrafficString;
    v5->_longTrafficString = longTrafficString;

    writtenRouteName = [resultCopy writtenRouteName];
    writtenRouteName = v5->_writtenRouteName;
    v5->_writtenRouteName = writtenRouteName;

    spokenRouteName = [resultCopy spokenRouteName];
    spokenRouteName = v5->_spokenRouteName;
    v5->_spokenRouteName = spokenRouteName;
  }

  return v5;
}

- (MapsSuggestionsTrafficAndETAResult)initWithGEOETATrafficUpdateResponse:(id)response trafficString:(id)string
{
  responseCopy = response;
  stringCopy = string;
  v12.receiver = self;
  v12.super_class = MapsSuggestionsTrafficAndETAResult;
  v8 = [(MapsSuggestionsTrafficAndETAResult *)&v12 init];
  if (v8)
  {
    v8->_isSuccess = [responseCopy status] == 0;
    waypointRoute = [responseCopy waypointRoute];
    traversalTimes = [waypointRoute traversalTimes];
    v8->_seconds = [traversalTimes estimatedSeconds];

    objc_storeStrong(&v8->_shortTrafficString, string);
    objc_storeStrong(&v8->_longTrafficString, string);
  }

  return v8;
}

@end