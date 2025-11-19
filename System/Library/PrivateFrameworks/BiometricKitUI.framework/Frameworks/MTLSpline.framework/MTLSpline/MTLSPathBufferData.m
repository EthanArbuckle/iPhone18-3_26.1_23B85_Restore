@interface MTLSPathBufferData
- (MTLSPathBufferData)initWithCollection:(id)a3 device:(id)a4 viewRatio:;
- (MTLSPathBufferData)initWithDefaultPath:(id)a3 device:(id)a4 viewRatio:;
- (MTLSPathBufferData)initWithDevice:(id)a3 viewRatio:;
- (void)commit;
- (void)updateControlPointBufferWithData:(ControlPoint *)a3 count:(unint64_t)a4;
- (void)updateInstanceBufferWithData:(InstanceInfo *)a3 count:(unint64_t)a4;
@end

@implementation MTLSPathBufferData

- (MTLSPathBufferData)initWithDevice:(id)a3 viewRatio:
{
  v4 = v3;
  v7 = a3;
  v11.receiver = self;
  v11.super_class = MTLSPathBufferData;
  v8 = [(MTLSPathBufferData *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(MTLSPathBufferData *)v8 setViewRatio:v4];
    objc_storeStrong(&v9->_device, a3);
  }

  return v9;
}

- (MTLSPathBufferData)initWithDefaultPath:(id)a3 device:(id)a4 viewRatio:
{
  v5 = v4;
  v8 = a3;
  v9 = [(MTLSPathBufferData *)self initWithDevice:a4 viewRatio:v5];
  if (v9)
  {
    v10 = [[MTLSAnimatablePathCollection alloc] initWithDefaultPath:v8];
    [(MTLSPathBufferData *)v9 setCollection:v10];

    [(MTLSPathBufferData *)v9 commit];
  }

  return v9;
}

- (MTLSPathBufferData)initWithCollection:(id)a3 device:(id)a4 viewRatio:
{
  v5 = v4;
  v8 = a3;
  v9 = [(MTLSPathBufferData *)self initWithDevice:a4 viewRatio:v5];
  v10 = v9;
  if (v9)
  {
    [(MTLSPathBufferData *)v9 setCollection:v8];
    [(MTLSPathBufferData *)v10 commit];
  }

  return v10;
}

- (void)commit
{
  v3 = [(MTLSPathBufferData *)self collection];
  v4 = [v3 paths];
  v15 = [v4 objectForKeyedSubscript:@"default"];

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

- (void)updateInstanceBufferWithData:(InstanceInfo *)a3 count:(unint64_t)a4
{
  v6 = [(MTLBuffer *)self->_instanceInfo contents];
  if (a4)
  {
    v7 = (v6 + 64);
    v8 = (a3 + 64);
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
      --a4;
    }

    while (a4);
  }
}

- (void)updateControlPointBufferWithData:(ControlPoint *)a3 count:(unint64_t)a4
{
  for (i = [(MTLBuffer *)self->_controlPoints contents]; a4; --a4)
  {
    v7 = *&a3->var0;
    v8 = *&a3[8].var0;
    i[1] = *&a3[4].var0;
    i[2] = v8;
    *i = v7;
    i += 3;
    a3 += 12;
  }
}

@end