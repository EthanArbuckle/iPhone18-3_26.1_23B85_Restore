@interface MTLSPathBufferData
- (MTLSPathBufferData)initWithCollection:(id)collection device:(id)device viewRatio:;
- (MTLSPathBufferData)initWithDefaultPath:(id)path device:(id)device viewRatio:;
- (MTLSPathBufferData)initWithDevice:(id)device viewRatio:;
- (void)commit;
- (void)updateControlPointBufferWithData:(ControlPoint *)data count:(unint64_t)count;
- (void)updateInstanceBufferWithData:(InstanceInfo *)data count:(unint64_t)count;
@end

@implementation MTLSPathBufferData

- (MTLSPathBufferData)initWithDevice:(id)device viewRatio:
{
  v4 = v3;
  deviceCopy = device;
  v11.receiver = self;
  v11.super_class = MTLSPathBufferData;
  v8 = [(MTLSPathBufferData *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(MTLSPathBufferData *)v8 setViewRatio:v4];
    objc_storeStrong(&v9->_device, device);
  }

  return v9;
}

- (MTLSPathBufferData)initWithDefaultPath:(id)path device:(id)device viewRatio:
{
  v5 = v4;
  pathCopy = path;
  v9 = [(MTLSPathBufferData *)self initWithDevice:device viewRatio:v5];
  if (v9)
  {
    v10 = [[MTLSAnimatablePathCollection alloc] initWithDefaultPath:pathCopy];
    [(MTLSPathBufferData *)v9 setCollection:v10];

    [(MTLSPathBufferData *)v9 commit];
  }

  return v9;
}

- (MTLSPathBufferData)initWithCollection:(id)collection device:(id)device viewRatio:
{
  v5 = v4;
  collectionCopy = collection;
  v9 = [(MTLSPathBufferData *)self initWithDevice:device viewRatio:v5];
  v10 = v9;
  if (v9)
  {
    [(MTLSPathBufferData *)v9 setCollection:collectionCopy];
    [(MTLSPathBufferData *)v10 commit];
  }

  return v10;
}

- (void)commit
{
  collection = [(MTLSPathBufferData *)self collection];
  paths = [collection paths];
  v15 = [paths objectForKeyedSubscript:@"default"];

  v5 = -[MTLDevice newBufferWithLength:options:](self->_device, "newBufferWithLength:options:", [v15 patchInfoCount] << 8, 32);
  tessellationFactors = self->_tessellationFactors;
  self->_tessellationFactors = v5;

  [(MTLBuffer *)self->_tessellationFactors setLabel:@"Path Tessellation Factors"];
  v7 = -[MTLDevice newBufferWithBytes:length:options:](self->_device, "newBufferWithBytes:length:options:", [v15 controlPoints], 48 * objc_msgSend(v15, "controlPointsCount"), 0);
  controlPoints = self->_controlPoints;
  self->_controlPoints = v7;

  [(MTLBuffer *)self->_controlPoints setLabel:@"Path Control Points"];
  v9 = -[MTLDevice newBufferWithBytes:length:options:](self->_device, "newBufferWithBytes:length:options:", [v15 indices], 2 * objc_msgSend(v15, "indicesCount"), 0);
  indices = self->_indices;
  self->_indices = v9;

  [(MTLBuffer *)self->_indices setLabel:@"Path Indices"];
  v11 = -[MTLDevice newBufferWithBytes:length:options:](self->_device, "newBufferWithBytes:length:options:", [v15 patchInfo], 8 * objc_msgSend(v15, "patchInfoCount"), 0);
  patchInfo = self->_patchInfo;
  self->_patchInfo = v11;

  [(MTLBuffer *)self->_patchInfo setLabel:@"Path Per-Patch Info"];
  v13 = -[MTLDevice newBufferWithBytes:length:options:](self->_device, "newBufferWithBytes:length:options:", [v15 instances], 80 * objc_msgSend(v15, "instanceCount"), 0);
  instanceInfo = self->_instanceInfo;
  self->_instanceInfo = v13;

  [(MTLBuffer *)self->_instanceInfo setLabel:@"Path Per-Instance Info"];
}

- (void)updateInstanceBufferWithData:(InstanceInfo *)data count:(unint64_t)count
{
  contents = [(MTLBuffer *)self->_instanceInfo contents];
  if (count)
  {
    v7 = (contents + 64);
    v8 = (data + 64);
    do
    {
      v10 = *(v8 - 1);
      v9 = *v8;
      v11 = *(v8 - 4);
      v12 = *(v8 - 3);
      *(v7 - 2) = *(v8 - 2);
      *(v7 - 1) = v10;
      *(v7 - 4) = v11;
      *(v7 - 3) = v12;
      *v7 = v9;
      v7 += 5;
      v8 += 5;
      --count;
    }

    while (count);
  }
}

- (void)updateControlPointBufferWithData:(ControlPoint *)data count:(unint64_t)count
{
  for (i = [(MTLBuffer *)self->_controlPoints contents]; count; --count)
  {
    v7 = *&data->var0;
    v8 = *&data[8].var0;
    i[1] = *&data[4].var0;
    i[2] = v8;
    *i = v7;
    i += 3;
    data += 12;
  }
}

@end