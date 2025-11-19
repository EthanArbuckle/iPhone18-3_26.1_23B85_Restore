@interface PXLocalDragSession
- (CGPoint)scrollViewLocation;
- (CGPoint)velocity;
- (PXLocalDragSession)init;
- (PXLocalDragSessionDelegate)delegate;
- (UIDragSession)dragSession;
- (UIDropSession)dropSession;
- (id)horizontalVelocity;
- (id)verticalVelocity;
- (void)_noteChanged:(SEL)a3;
- (void)setDragSession:(id)a3;
- (void)setDraggedAssetReferences:(id)a3;
- (void)setDropActionPerformer:(id)a3;
- (void)setDropOperation:(unint64_t)a3;
- (void)setDropSession:(id)a3;
- (void)setDropTargetAssetReference:(id)a3;
- (void)setHitAssetReference:(id)a3;
- (void)setIsDragSessionActive:(BOOL)a3;
- (void)setIsDropActiveInsideView:(BOOL)a3;
- (void)setScrollViewLocation:(CGPoint)a3;
- (void)updateWithDataSource:(id)a3;
@end

@implementation PXLocalDragSession

- (UIDropSession)dropSession
{
  WeakRetained = objc_loadWeakRetained(&self->_dropSession);

  return WeakRetained;
}

- (UIDragSession)dragSession
{
  WeakRetained = objc_loadWeakRetained(&self->_dragSession);

  return WeakRetained;
}

- (PXLocalDragSessionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (CGPoint)scrollViewLocation
{
  x = self->_scrollViewLocation.x;
  y = self->_scrollViewLocation.y;
  result.y = y;
  result.x = x;
  return result;
}

- (void)setDropActionPerformer:(id)a3
{
  v5 = a3;
  p_dropActionPerformer = &self->_dropActionPerformer;
  if (self->_dropActionPerformer != v5)
  {
    v7 = v5;
    objc_storeStrong(p_dropActionPerformer, a3);
    p_dropActionPerformer = [(PXLocalDragSession *)self _noteChanged:sel_dropActionPerformer];
    v5 = v7;
  }

  MEMORY[0x2821F96F8](p_dropActionPerformer, v5);
}

- (void)setDropOperation:(unint64_t)a3
{
  if (self->_dropOperation != a3)
  {
    self->_dropOperation = a3;
    [(PXLocalDragSession *)self _noteChanged:sel_dropOperation];
  }
}

- (void)setHitAssetReference:(id)a3
{
  v8 = a3;
  v5 = self->_hitAssetReference;
  v6 = v5;
  if (v5 == v8)
  {
  }

  else
  {
    v7 = [(PXAssetReference *)v5 isEqual:?];

    if ((v7 & 1) == 0)
    {
      objc_storeStrong(&self->_hitAssetReference, a3);
      [(PXLocalDragSession *)self _noteChanged:sel_hitAssetReference];
    }
  }
}

- (void)setDropTargetAssetReference:(id)a3
{
  v8 = a3;
  v5 = self->_dropTargetAssetReference;
  v6 = v5;
  if (v5 == v8)
  {
  }

  else
  {
    v7 = [(PXAssetReference *)v5 isEqual:?];

    if ((v7 & 1) == 0)
    {
      objc_storeStrong(&self->_dropTargetAssetReference, a3);
      [(PXLocalDragSession *)self _noteChanged:sel_dropTargetAssetReference];
    }
  }
}

- (void)setDraggedAssetReferences:(id)a3
{
  v8 = a3;
  v5 = self->_draggedAssetReferences;
  v6 = v5;
  if (v5 == v8)
  {
  }

  else
  {
    v7 = [(NSSet *)v5 isEqual:?];

    if ((v7 & 1) == 0)
    {
      objc_storeStrong(&self->_draggedAssetReferences, a3);
      [(PXLocalDragSession *)self _noteChanged:sel_draggedAssetReferences];
    }
  }
}

- (void)setIsDropActiveInsideView:(BOOL)a3
{
  if (self->_isDropActiveInsideView != a3)
  {
    self->_isDropActiveInsideView = a3;
    [(PXLocalDragSession *)self _noteChanged:sel_isDropActiveInsideView];
  }
}

- (void)setIsDragSessionActive:(BOOL)a3
{
  if (self->_isDragSessionActive != a3)
  {
    self->_isDragSessionActive = a3;
    [(PXLocalDragSession *)self _noteChanged:sel_isDragSessionActive];
  }
}

- (void)setDropSession:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->_dropSession);

  v5 = obj;
  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_dropSession, obj);
    [(PXLocalDragSession *)self _noteChanged:sel_dropSession];
    v5 = obj;
  }
}

- (void)setDragSession:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->_dragSession);

  v5 = obj;
  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_dragSession, obj);
    [(PXLocalDragSession *)self _noteChanged:sel_dragSession];
    v5 = obj;
  }
}

- (void)_noteChanged:(SEL)a3
{
  v5 = [(PXLocalDragSession *)self delegate];
  [v5 localDragSession:self didChangeProperty:a3];
}

- (void)updateWithDataSource:(id)a3
{
  v27 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(PXLocalDragSession *)self dropTargetAssetReference];

  if (v5)
  {
    v6 = [(PXLocalDragSession *)self dropTargetAssetReference];
    v5 = [v4 assetReferenceForAssetReference:v6];
  }

  v7 = [(PXLocalDragSession *)self hitAssetReference];

  if (v7)
  {
    v8 = [(PXLocalDragSession *)self hitAssetReference];
    v7 = [v4 assetReferenceForAssetReference:v8];
  }

  v9 = [(PXLocalDragSession *)self draggedAssetReferences];

  if (v9)
  {
    v21 = v5;
    v9 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v10 = [(PXLocalDragSession *)self draggedAssetReferences];
    v11 = [v10 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v23;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v23 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v22 + 1) + 8 * i);
          v16 = [v4 assetReferenceForAssetReference:v15];
          v17 = v16;
          if (v16)
          {
            v18 = v16;
          }

          else
          {
            v18 = v15;
          }

          v19 = v18;

          [v9 addObject:v19];
        }

        v12 = [v10 countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v12);
    }

    v5 = v21;
  }

  [(PXLocalDragSession *)self setHitAssetReference:v7];
  [(PXLocalDragSession *)self setDropTargetAssetReference:v5];
  v20 = [v9 copy];
  [(PXLocalDragSession *)self setDraggedAssetReferences:v20];
}

- (CGPoint)velocity
{
  v3 = [(PXLocalDragSession *)self horizontalVelocity];
  [v3 output];
  v5 = v4;
  v6 = [(PXLocalDragSession *)self verticalVelocity];
  [v6 output];
  v8 = v7;

  v9 = v5;
  v10 = v8;
  result.y = v10;
  result.x = v9;
  return result;
}

- (void)setScrollViewLocation:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  self->_scrollViewLocation = a3;
  [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
  v7 = v6;
  v8 = [(PXLocalDragSession *)self horizontalVelocity];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __44__PXLocalDragSession_setScrollViewLocation___block_invoke;
  v11[3] = &__block_descriptor_56_e33_v16__0___PXMutableNumberFilter__8l;
  *&v11[4] = x;
  *&v11[5] = y;
  v11[6] = v7;
  [v8 performChanges:v11];

  v9 = [(PXLocalDragSession *)self verticalVelocity];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __44__PXLocalDragSession_setScrollViewLocation___block_invoke_2;
  v10[3] = &__block_descriptor_56_e33_v16__0___PXMutableNumberFilter__8l;
  *&v10[4] = x;
  *&v10[5] = y;
  v10[6] = v7;
  [v9 performChanges:v10];
}

void __44__PXLocalDragSession_setScrollViewLocation___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 setInput:v3];
  [v4 setTime:*(a1 + 48)];
}

void __44__PXLocalDragSession_setScrollViewLocation___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 40);
  v4 = a2;
  [v4 setInput:v3];
  [v4 setTime:*(a1 + 48)];
}

- (id)verticalVelocity
{
  verticalVelocity = self->_verticalVelocity;
  if (!verticalVelocity)
  {
    v4 = [MEMORY[0x277D3CE38] gestureVelocityFilter];
    v5 = self->_verticalVelocity;
    self->_verticalVelocity = v4;

    verticalVelocity = self->_verticalVelocity;
  }

  return verticalVelocity;
}

- (id)horizontalVelocity
{
  horizontalVelocity = self->_horizontalVelocity;
  if (!horizontalVelocity)
  {
    v4 = [MEMORY[0x277D3CE38] gestureVelocityFilter];
    v5 = self->_horizontalVelocity;
    self->_horizontalVelocity = v4;

    horizontalVelocity = self->_horizontalVelocity;
  }

  return horizontalVelocity;
}

- (PXLocalDragSession)init
{
  v3.receiver = self;
  v3.super_class = PXLocalDragSession;
  result = [(PXLocalDragSession *)&v3 init];
  if (result)
  {
    result->_identifier = atomic_fetch_add(init_lastIdentifier, 1u);
  }

  return result;
}

@end