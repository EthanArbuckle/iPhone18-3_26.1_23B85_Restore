@interface MapsSuggestionsOutsideOfMapItemFenceCondition
- (BOOL)isTrue;
- (MapsSuggestionsOutsideOfMapItemFenceCondition)initWithMapItem:(id)a3 radius:(double)a4;
@end

@implementation MapsSuggestionsOutsideOfMapItemFenceCondition

- (MapsSuggestionsOutsideOfMapItemFenceCondition)initWithMapItem:(id)a3 radius:(double)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = MapsSuggestionsOutsideOfMapItemFenceCondition;
  v8 = [(MapsSuggestionsBaseCondition *)&v11 initWithName:@"MapsSuggestionsOutsideOfMapItemFence"];
  v9 = v8;
  if (v8)
  {
    v8->_radius = a4;
    objc_storeStrong(&v8->_mapItem, a3);
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
    v9 = [(GEOMapItemStorage *)self->_mapItem geoFenceMapRegion];
    v10 = [v9 containsCoordinate:v6 radius:{v8, self->_radius}] ^ 1;
  }

  else
  {
    LOBYTE(v10) = 0;
  }

  return v10;
}

@end