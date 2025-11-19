@interface BlastDoorDrawingStroke
+ (id)createBDStroke:(id)a3;
- (BlastDoorDrawingStroke)init;
- (id)createDKStroke:(id)a3;
@end

@implementation BlastDoorDrawingStroke

- (BlastDoorDrawingStroke)init
{
  v8 = *MEMORY[0x277D85DE8];
  v7.receiver = self;
  v7.super_class = BlastDoorDrawingStroke;
  v2 = [(BlastDoorDrawingStroke *)&v7 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CBEB18] array];
    strokePoints = v2->_strokePoints;
    v2->_strokePoints = v3;
  }

  v5 = *MEMORY[0x277D85DE8];
  return v2;
}

- (id)createDKStroke:(id)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2050000000;
  v4 = getDKDrawingStrokeClass_softClass;
  v19 = getDKDrawingStrokeClass_softClass;
  if (!getDKDrawingStrokeClass_softClass)
  {
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __getDKDrawingStrokeClass_block_invoke;
    v15[3] = &unk_2781764E8;
    v15[4] = &v16;
    __getDKDrawingStrokeClass_block_invoke(v15);
    v4 = v17[3];
  }

  v5 = v4;
  _Block_object_dispose(&v16, 8);
  v6 = [[v4 alloc] init];
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v7 = v3;
  v8 = [v7 countByEnumeratingWithState:&v21 objects:v20 count:16];
  if (v8)
  {
    v9 = *v22;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v22 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = [*(*(&v21 + 1) + 8 * i) createDKStrokePoint];
        v12 = [v6 strokePoints];
        [v12 addObject:v11];
      }

      v8 = [v7 countByEnumeratingWithState:&v21 objects:v20 count:16];
    }

    while (v8);
  }

  v13 = *MEMORY[0x277D85DE8];

  return v6;
}

+ (id)createBDStroke:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = objc_alloc_init(BlastDoorDrawingStroke);
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = [v3 strokePoints];
  v6 = [v5 countByEnumeratingWithState:&v16 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v17;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        v11 = objc_alloc_init(BlastDoorDrawingStrokePoint);
        [v10 location];
        [(BlastDoorDrawingStrokePoint *)v11 setLocation:?];
        [v10 force];
        [(BlastDoorDrawingStrokePoint *)v11 setForce:?];
        [v10 velocity];
        [(BlastDoorDrawingStrokePoint *)v11 setVelocity:?];
        v12 = [(BlastDoorDrawingStroke *)v4 strokePoints];
        [v12 addObject:v11];
      }

      v7 = [v5 countByEnumeratingWithState:&v16 objects:v15 count:16];
    }

    while (v7);
  }

  v13 = *MEMORY[0x277D85DE8];

  return v4;
}

@end