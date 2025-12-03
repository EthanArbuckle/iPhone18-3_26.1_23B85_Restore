@interface MapsSuggestionsOutsideOfMapItemFenceCondition
- (BOOL)isTrue;
- (MapsSuggestionsOutsideOfMapItemFenceCondition)initWithMapItem:(id)item radius:(double)radius;
@end

@implementation MapsSuggestionsOutsideOfMapItemFenceCondition

- (MapsSuggestionsOutsideOfMapItemFenceCondition)initWithMapItem:(id)item radius:(double)radius
{
  itemCopy = item;
  v11.receiver = self;
  v11.super_class = MapsSuggestionsOutsideOfMapItemFenceCondition;
  v8 = [(MapsSuggestionsBaseCondition *)&v11 initWithName:@"MapsSuggestionsOutsideOfMapItemFence"];
  v9 = v8;
  if (v8)
  {
    v8->_radius = radius;
    objc_storeStrong(&v8->_mapItem, item);
  }

  return v9;
}

- (BOOL)isTrue
{
  v3 = MapsSuggestionsCurrentBestLocation();
  v4 = v3;
  if (v3)
  {
    [v3 coordinate];
    v6 = v5;
    [v4 coordinate];
    v8 = v7;
    geoFenceMapRegion = [(GEOMapItemStorage *)self->_mapItem geoFenceMapRegion];
    v10 = [geoFenceMapRegion containsCoordinate:v6 radius:{v8, self->_radius}] ^ 1;
  }

  else
  {
    LOBYTE(v10) = 0;
  }

  return v10;
}

@end