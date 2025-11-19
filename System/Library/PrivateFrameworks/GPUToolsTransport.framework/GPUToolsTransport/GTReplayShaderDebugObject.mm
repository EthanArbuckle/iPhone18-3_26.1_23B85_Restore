@interface GTReplayShaderDebugObject
- (GTReplayShaderDebugObject)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)setMaxThreadPositionInGrid:(GTPoint3D *)a3;
- (void)setMinThreadPositionInGrid:(GTPoint3D *)a3;
@end

@implementation GTReplayShaderDebugObject

- (GTReplayShaderDebugObject)initWithCoder:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = GTReplayShaderDebugObject;
  v5 = [(GTReplayShaderDebugRequest *)&v12 initWithCoder:v4];
  v6 = v5;
  if (v5)
  {
    p_minThreadPositionInGrid = &v5->_minThreadPositionInGrid;
    GTPoint3DDecode(v4, @"MinThreadPosition", &v10);
    *&p_minThreadPositionInGrid->x = v10;
    v6->_minThreadPositionInGrid.z = v11;
    GTPoint3DDecode(v4, @"MaxThreadPosition", &v10);
    *&v6->_maxThreadPositionInGrid.x = v10;
    v6->_maxThreadPositionInGrid.z = v11;
    v8 = v6;
  }

  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = GTReplayShaderDebugObject;
  v4 = a3;
  [(GTReplayShaderDebugRequest *)&v6 encodeWithCoder:v4];
  minThreadPositionInGrid = self->_minThreadPositionInGrid;
  GTPoint3DEncode(v4, &minThreadPositionInGrid, @"MinThreadPosition");
  minThreadPositionInGrid = self->_maxThreadPositionInGrid;
  GTPoint3DEncode(v4, &minThreadPositionInGrid, @"MaxThreadPosition");
}

- (void)setMinThreadPositionInGrid:(GTPoint3D *)a3
{
  z = a3->z;
  *&self->_minThreadPositionInGrid.x = *&a3->x;
  self->_minThreadPositionInGrid.z = z;
}

- (void)setMaxThreadPositionInGrid:(GTPoint3D *)a3
{
  z = a3->z;
  *&self->_maxThreadPositionInGrid.x = *&a3->x;
  self->_maxThreadPositionInGrid.z = z;
}

@end