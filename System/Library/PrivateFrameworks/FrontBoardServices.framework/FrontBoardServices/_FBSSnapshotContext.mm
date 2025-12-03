@interface _FBSSnapshotContext
- (CGSize)snapshotSize;
- (_FBSSnapshotContext)initWithDisplayConfiguration:(id)configuration layer:(id)layer;
- (_FBSSnapshotContext)initWithDisplayConfiguration:(id)configuration layers:(id)layers;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation _FBSSnapshotContext

- (_FBSSnapshotContext)initWithDisplayConfiguration:(id)configuration layer:(id)layer
{
  v6 = MEMORY[0x1E695DFB8];
  layerCopy = layer;
  configurationCopy = configuration;
  v9 = [[v6 alloc] initWithObject:layerCopy];

  v10 = [(_FBSSnapshotContext *)self initWithDisplayConfiguration:configurationCopy layers:v9];
  return v10;
}

- (_FBSSnapshotContext)initWithDisplayConfiguration:(id)configuration layers:(id)layers
{
  configurationCopy = configuration;
  layersCopy = layers;
  v17.receiver = self;
  v17.super_class = _FBSSnapshotContext;
  v9 = [(_FBSSnapshotContext *)&v17 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_displayConfiguration, configuration);
    v11 = [layersCopy copy];
    layers = v10->_layers;
    v10->_layers = v11;

    [configurationCopy pointScale];
    v10->_scale = v13;
    [configurationCopy bounds];
    v10->_snapshotSize.width = v14;
    v10->_snapshotSize.height = v15;
    v10->_opaque = 1;
  }

  return v10;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [[_FBSSnapshotContext alloc] initWithDisplayConfiguration:self->_displayConfiguration layers:self->_layers];
  [(_FBSSnapshotContext *)v4 setOpaque:self->_opaque];
  [(_FBSSnapshotContext *)v4 setScale:self->_scale];
  [(_FBSSnapshotContext *)v4 setSnapshotSize:self->_snapshotSize.width, self->_snapshotSize.height];
  [(_FBSSnapshotContext *)v4 setAllowsProtectedContent:self->_allowsProtectedContent];
  return v4;
}

- (CGSize)snapshotSize
{
  width = self->_snapshotSize.width;
  height = self->_snapshotSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end