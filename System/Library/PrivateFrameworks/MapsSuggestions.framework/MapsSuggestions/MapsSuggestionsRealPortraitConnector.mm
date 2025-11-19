@interface MapsSuggestionsRealPortraitConnector
- (MapsSuggestionsRealPortraitConnector)init;
@end

@implementation MapsSuggestionsRealPortraitConnector

- (MapsSuggestionsRealPortraitConnector)init
{
  v12.receiver = self;
  v12.super_class = MapsSuggestionsRealPortraitConnector;
  v2 = [(MapsSuggestionsRealPortraitConnector *)&v12 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E69BDCA0]);
    locationStore = v2->_locationStore;
    v2->_locationStore = v3;

    [(PPLocationStore *)v2->_locationStore setClientIdentifier:@"maps"];
    v5 = objc_alloc_init(MEMORY[0x1E69BDC68]);
    connectionsStore = v2->_connectionsStore;
    v2->_connectionsStore = v5;

    [(PPConnectionsStore *)v2->_connectionsStore setClientIdentifier:@"maps"];
    v7 = objc_alloc_init(MEMORY[0x1E69BDCB0]);
    namedEntityStore = v2->_namedEntityStore;
    v2->_namedEntityStore = v7;

    [(PPNamedEntityStore *)v2->_namedEntityStore setClientIdentifier:@"maps"];
    v9 = objc_alloc_init(MEMORY[0x1E69BDC80]);
    eventStore = v2->_eventStore;
    v2->_eventStore = v9;

    [(PPEventStore *)v2->_eventStore setClientIdentifier:@"maps"];
  }

  return v2;
}

@end