@interface BlastDoorDrawingStrokePoint
- (BlastDoorDrawingStrokePoint)init;
- (CGPoint)location;
- (id)createDKStrokePoint;
@end

@implementation BlastDoorDrawingStrokePoint

- (BlastDoorDrawingStrokePoint)init
{
  v5 = *MEMORY[0x277D85DE8];
  v4.receiver = self;
  v4.super_class = BlastDoorDrawingStrokePoint;
  result = [(BlastDoorDrawingStrokePoint *)&v4 init];
  if (result)
  {
    result->_location = *MEMORY[0x277CBF348];
    result->_force = 0.0;
    result->_velocity = 0.0;
  }

  v3 = *MEMORY[0x277D85DE8];
  return result;
}

- (id)createDKStrokePoint
{
  v13 = *MEMORY[0x277D85DE8];
  v9 = 0;
  v10 = &v9;
  v11 = 0x2050000000;
  v3 = getDKDrawingStrokePointClass_softClass;
  v12 = getDKDrawingStrokePointClass_softClass;
  if (!getDKDrawingStrokePointClass_softClass)
  {
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __getDKDrawingStrokePointClass_block_invoke;
    v8[3] = &unk_2781764E8;
    v8[4] = &v9;
    __getDKDrawingStrokePointClass_block_invoke(v8);
    v3 = v10[3];
  }

  v4 = v3;
  _Block_object_dispose(&v9, 8);
  v5 = [[v3 alloc] init];
  [(BlastDoorDrawingStrokePoint *)self location];
  [v5 setLocation:?];
  [(BlastDoorDrawingStrokePoint *)self force];
  [v5 setForce:?];
  [(BlastDoorDrawingStrokePoint *)self velocity];
  [v5 setVelocity:?];
  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

- (CGPoint)location
{
  x = self->_location.x;
  y = self->_location.y;
  result.y = y;
  result.x = x;
  return result;
}

@end