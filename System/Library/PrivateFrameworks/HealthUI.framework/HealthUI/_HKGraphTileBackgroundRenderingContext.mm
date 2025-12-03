@interface _HKGraphTileBackgroundRenderingContext
- (BOOL)sameForRendering:(id)rendering;
- (CGSize)tileSize;
- (_HKGraphTileBackgroundRenderingContext)initWithGraphTile:(id)tile graphViewRenderer:(id)renderer tileSize:(CGSize)size configurationChangedCounter:(int64_t)counter;
- (id)debugDescription;
- (void)renderTileContent;
@end

@implementation _HKGraphTileBackgroundRenderingContext

- (_HKGraphTileBackgroundRenderingContext)initWithGraphTile:(id)tile graphViewRenderer:(id)renderer tileSize:(CGSize)size configurationChangedCounter:(int64_t)counter
{
  height = size.height;
  width = size.width;
  tileCopy = tile;
  rendererCopy = renderer;
  v17.receiver = self;
  v17.super_class = _HKGraphTileBackgroundRenderingContext;
  v14 = [(_HKGraphTileBackgroundRenderingContext *)&v17 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_graphTile, tile);
    objc_storeStrong(&v15->_graphViewRenderer, renderer);
    v15->_tileSize.width = width;
    v15->_tileSize.height = height;
    v15->_configurationChangedCounter = counter;
  }

  return v15;
}

- (id)debugDescription
{
  v2 = MEMORY[0x1E696AEC0];
  graphTile = [(_HKGraphTileBackgroundRenderingContext *)self graphTile];
  v4 = [v2 stringWithFormat:@"Tile %ld", objc_msgSend(graphTile, "currentColumn")];

  return v4;
}

- (void)renderTileContent
{
  graphTile = [(_HKGraphTileBackgroundRenderingContext *)self graphTile];
  graphViewRenderer = [(_HKGraphTileBackgroundRenderingContext *)self graphViewRenderer];
  [(_HKGraphTileBackgroundRenderingContext *)self tileSize];
  [graphTile renderTileInBackgroundWithRenderer:graphViewRenderer tileSize:-[_HKGraphTileBackgroundRenderingContext configurationChangedCounter](self configurationChangedCounter:{"configurationChangedCounter"), v4, v5}];
}

- (BOOL)sameForRendering:(id)rendering
{
  renderingCopy = rendering;
  graphTile = [(_HKGraphTileBackgroundRenderingContext *)self graphTile];
  currentColumn = [graphTile currentColumn];
  graphTile2 = [renderingCopy graphTile];

  LOBYTE(renderingCopy) = currentColumn == [graphTile2 currentColumn];
  return renderingCopy;
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