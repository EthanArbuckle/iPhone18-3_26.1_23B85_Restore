@interface GTReplayShaderDebugObject
- (GTReplayShaderDebugObject)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
- (void)setMaxThreadPositionInGrid:(GTPoint3D *)grid;
- (void)setMinThreadPositionInGrid:(GTPoint3D *)grid;
@end

@implementation GTReplayShaderDebugObject

- (GTReplayShaderDebugObject)initWithCoder:(id)coder
{
  coderCopy = coder;
  v12.receiver = self;
  v12.super_class = GTReplayShaderDebugObject;
  v5 = [(GTReplayShaderDebugRequest *)&v12 initWithCoder:coderCopy];
  v6 = v5;
  if (v5)
  {
    p_minThreadPositionInGrid = &v5->_minThreadPositionInGrid;
    GTPoint3DDecode(coderCopy, @"MinThreadPosition", &v10);
    *&p_minThreadPositionInGrid->x = v10;
    v6->_minThreadPositionInGrid.z = v11;
    GTPoint3DDecode(coderCopy, @"MaxThreadPosition", &v10);
    *&v6->_maxThreadPositionInGrid.x = v10;
    v6->_maxThreadPositionInGrid.z = v11;
    v8 = v6;
  }

  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = GTReplayShaderDebugObject;
  coderCopy = coder;
  [(GTReplayShaderDebugRequest *)&v6 encodeWithCoder:coderCopy];
  minThreadPositionInGrid = self->_minThreadPositionInGrid;
  GTPoint3DEncode(coderCopy, &minThreadPositionInGrid, @"MinThreadPosition");
  minThreadPositionInGrid = self->_maxThreadPositionInGrid;
  GTPoint3DEncode(coderCopy, &minThreadPositionInGrid, @"MaxThreadPosition");
}

- (void)setMinThreadPositionInGrid:(GTPoint3D *)grid
{
  z = grid->z;
  *&self->_minThreadPositionInGrid.x = *&grid->x;
  self->_minThreadPositionInGrid.z = z;
}

- (void)setMaxThreadPositionInGrid:(GTPoint3D *)grid
{
  z = grid->z;
  *&self->_maxThreadPositionInGrid.x = *&grid->x;
  self->_maxThreadPositionInGrid.z = z;
}

@end