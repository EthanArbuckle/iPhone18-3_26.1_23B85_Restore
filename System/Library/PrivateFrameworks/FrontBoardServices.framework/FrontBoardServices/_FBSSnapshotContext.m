@interface _FBSSnapshotContext
- (CGSize)snapshotSize;
- (_FBSSnapshotContext)initWithDisplayConfiguration:(id)a3 layer:(id)a4;
- (_FBSSnapshotContext)initWithDisplayConfiguration:(id)a3 layers:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation _FBSSnapshotContext

- (_FBSSnapshotContext)initWithDisplayConfiguration:(id)a3 layer:(id)a4
{
  v6 = MEMORY[0x1E695DFB8];
  v7 = a4;
  v8 = a3;
  v9 = [[v6 alloc] initWithObject:v7];

  v10 = [(_FBSSnapshotContext *)self initWithDisplayConfiguration:v8 layers:v9];
  return v10;
}

- (_FBSSnapshotContext)initWithDisplayConfiguration:(id)a3 layers:(id)a4
{
  v7 = a3;
  v8 = a4;
  v17.receiver = self;
  v17.super_class = _FBSSnapshotContext;
  v9 = [(_FBSSnapshotContext *)&v17 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_displayConfiguration, a3);
    v11 = [v8 copy];
    layers = v10->_layers;
    v10->_layers = v11;

    [v7 pointScale];
    v10->_scale = v13;
    [v7 bounds];
    v10->_snapshotSize.width = v14;
    v10->_snapshotSize.height = v15;
    v10->_opaque = 1;
  }

  return v10;
}

- (id)copyWithZone:(_NSZone *)a3
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