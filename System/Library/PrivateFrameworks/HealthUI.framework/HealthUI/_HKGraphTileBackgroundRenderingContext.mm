@interface _HKGraphTileBackgroundRenderingContext
- (BOOL)sameForRendering:(id)a3;
- (CGSize)tileSize;
- (_HKGraphTileBackgroundRenderingContext)initWithGraphTile:(id)a3 graphViewRenderer:(id)a4 tileSize:(CGSize)a5 configurationChangedCounter:(int64_t)a6;
- (id)debugDescription;
- (void)renderTileContent;
@end

@implementation _HKGraphTileBackgroundRenderingContext

- (_HKGraphTileBackgroundRenderingContext)initWithGraphTile:(id)a3 graphViewRenderer:(id)a4 tileSize:(CGSize)a5 configurationChangedCounter:(int64_t)a6
{
  height = a5.height;
  width = a5.width;
  v12 = a3;
  v13 = a4;
  v17.receiver = self;
  v17.super_class = _HKGraphTileBackgroundRenderingContext;
  v14 = [(_HKGraphTileBackgroundRenderingContext *)&v17 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_graphTile, a3);
    objc_storeStrong(&v15->_graphViewRenderer, a4);
    v15->_tileSize.width = width;
    v15->_tileSize.height = height;
    v15->_configurationChangedCounter = a6;
  }

  return v15;
}

- (id)debugDescription
{
  v2 = MEMORY[0x1E696AEC0];
  v3 = [(_HKGraphTileBackgroundRenderingContext *)self graphTile];
  v4 = [v2 stringWithFormat:@"Tile %ld", objc_msgSend(v3, "currentColumn")];

  return v4;
}

- (void)renderTileContent
{
  v6 = [(_HKGraphTileBackgroundRenderingContext *)self graphTile];
  v3 = [(_HKGraphTileBackgroundRenderingContext *)self graphViewRenderer];
  [(_HKGraphTileBackgroundRenderingContext *)self tileSize];
  [v6 renderTileInBackgroundWithRenderer:v3 tileSize:-[_HKGraphTileBackgroundRenderingContext configurationChangedCounter](self configurationChangedCounter:{"configurationChangedCounter"), v4, v5}];
}

- (BOOL)sameForRendering:(id)a3
{
  v4 = a3;
  v5 = [(_HKGraphTileBackgroundRenderingContext *)self graphTile];
  v6 = [v5 currentColumn];
  v7 = [v4 graphTile];

  LOBYTE(v4) = v6 == [v7 currentColumn];
  return v4;
}

- (CGSize)tileSize
{
  width = self->_tileSize.width;
  height = self->_tileSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end