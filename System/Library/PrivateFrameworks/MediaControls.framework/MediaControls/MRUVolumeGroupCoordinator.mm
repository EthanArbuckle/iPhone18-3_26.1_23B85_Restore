@interface MRUVolumeGroupCoordinator
- (BOOL)shouldAllowEqualization;
- (MRUVolumeGroupCoordinator)initWithMainVolumeController:(id)controller;
- (float)updateVolumeScales;
- (void)beginEqualization;
- (void)equalizeVolumes;
- (void)finishEqualization;
- (void)setVolumeControllers:(id)controllers;
- (void)volumeController:(id)controller volumeValueDidChange:(float)change;
@end

@implementation MRUVolumeGroupCoordinator

- (MRUVolumeGroupCoordinator)initWithMainVolumeController:(id)controller
{
  controllerCopy = controller;
  v9.receiver = self;
  v9.super_class = MRUVolumeGroupCoordinator;
  v6 = [(MRUVolumeGroupCoordinator *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_mainVolumeController, controller);
    [(MRUVolumeController *)v7->_mainVolumeController setCoordinationDelegate:v7];
  }

  return v7;
}

- (void)setVolumeControllers:(id)controllers
{
  v26 = *MEMORY[0x1E69E9840];
  controllersCopy = controllers;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v6 = self->_volumeControllers;
  v7 = [(NSArray *)v6 countByEnumeratingWithState:&v20 objects:v25 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v21;
    do
    {
      v10 = 0;
      do
      {
        if (*v21 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [*(*(&v20 + 1) + 8 * v10++) setCoordinationDelegate:0];
      }

      while (v8 != v10);
      v8 = [(NSArray *)v6 countByEnumeratingWithState:&v20 objects:v25 count:16];
    }

    while (v8);
  }

  objc_storeStrong(&self->_volumeControllers, controllers);
  [(MRUVolumeGroupCoordinator *)self updateVolumeScales];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v11 = controllersCopy;
  v12 = [v11 countByEnumeratingWithState:&v16 objects:v24 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v17;
    do
    {
      v15 = 0;
      do
      {
        if (*v17 != v14)
        {
          objc_enumerationMutation(v11);
        }

        [*(*(&v16 + 1) + 8 * v15++) setCoordinationDelegate:{self, v16}];
      }

      while (v13 != v15);
      v13 = [v11 countByEnumeratingWithState:&v16 objects:v24 count:16];
    }

    while (v13);
  }
}

- (BOOL)shouldAllowEqualization
{
  v18 = *MEMORY[0x1E69E9840];
  if ([(NSArray *)self->_volumeControllers count]< 2)
  {
    return 0;
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = self->_volumeControllers;
  v4 = [(NSArray *)v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v14;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v13 + 1) + 8 * i) volumeValue];
        v9 = v8;
        [(MRUVolumeController *)self->_mainVolumeController volumeValue];
        if (vabds_f32(v9, v10) > 0.00000011921)
        {
          v11 = 1;
          goto LABEL_13;
        }
      }

      v5 = [(NSArray *)v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v11 = 0;
LABEL_13:

  return v11;
}

- (void)beginEqualization
{
  v12 = *MEMORY[0x1E69E9840];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = self->_volumeControllers;
  v3 = [(NSArray *)v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v7 + 1) + 8 * v6++) beginEqualization];
      }

      while (v4 != v6);
      v4 = [(NSArray *)v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

- (void)equalizeVolumes
{
  v16 = *MEMORY[0x1E69E9840];
  [(MRUVolumeController *)self->_mainVolumeController volumeValue];
  v4 = v3;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = self->_volumeControllers;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v8 = v6;
    v9 = *v12;
    do
    {
      v10 = 0;
      do
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(v5);
        }

        LODWORD(v7) = v4;
        [*(*(&v11 + 1) + 8 * v10++) setVolumeValue:{v7, v11}];
      }

      while (v8 != v10);
      v8 = [(NSArray *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }
}

- (void)finishEqualization
{
  v12 = *MEMORY[0x1E69E9840];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = self->_volumeControllers;
  v3 = [(NSArray *)v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v7 + 1) + 8 * v6++) finishEqualization];
      }

      while (v4 != v6);
      v4 = [(NSArray *)v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

- (void)volumeController:(id)controller volumeValueDidChange:(float)change
{
  controllerCopy = controller;
  [(MRUVolumeGroupCoordinator *)self updateVolumeScales];
  mainVolumeController = self->_mainVolumeController;
  if (mainVolumeController == controllerCopy)
  {
    [(MRUVolumeController *)mainVolumeController volumeValue];
    v8 = v7;
    if ([(NSArray *)self->_volumeControllers count])
    {
      v9 = 0;
      do
      {
        v10 = [(NSArray *)self->_volumeControllers objectAtIndexedSubscript:v9];
        if (v10 != controllerCopy)
        {
          v11 = [(NSArray *)self->_volumeScales objectAtIndexedSubscript:v9];
          [v11 floatValue];
          v13 = v12;

          *&v14 = v8 * v13;
          v15 = [MEMORY[0x1E696AD98] numberWithFloat:v14];
          [(MRUVolumeController *)v10 setOptimisticValue:v15];
        }

        ++v9;
      }

      while ([(NSArray *)self->_volumeControllers count]> v9);
    }
  }

  else
  {
    v6 = [MEMORY[0x1E696AD98] numberWithFloat:?];
    [(MRUVolumeController *)self->_mainVolumeController setOptimisticValue:v6];
  }
}

- (float)updateVolumeScales
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  volumeControllers = self->_volumeControllers;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __47__MRUVolumeGroupCoordinator_updateVolumeScales__block_invoke;
  v11[3] = &unk_1E76663E0;
  v11[4] = &v12;
  v4 = [(NSArray *)volumeControllers msv_map:v11];
  v5 = v4;
  v6 = v13[6];
  if (v6 > 0.0)
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __47__MRUVolumeGroupCoordinator_updateVolumeScales__block_invoke_2;
    v10[3] = &unk_1E7666408;
    v10[4] = &v12;
    v7 = [v4 msv_map:v10];
    volumeScales = self->_volumeScales;
    self->_volumeScales = v7;

    v6 = v13[6];
  }

  _Block_object_dispose(&v12, 8);
  return v6;
}

uint64_t __47__MRUVolumeGroupCoordinator_updateVolumeScales__block_invoke(uint64_t a1, void *a2)
{
  [a2 volumeValue];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 24);
  if (v5 < v3)
  {
    v5 = v3;
  }

  *(v4 + 24) = v5;
  v6 = MEMORY[0x1E696AD98];

  return [v6 numberWithFloat:?];
}

uint64_t __47__MRUVolumeGroupCoordinator_updateVolumeScales__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x1E696AD98];
  [a2 floatValue];
  *&v4 = *&v4 / *(*(*(a1 + 32) + 8) + 24);

  return [v3 numberWithFloat:v4];
}

@end