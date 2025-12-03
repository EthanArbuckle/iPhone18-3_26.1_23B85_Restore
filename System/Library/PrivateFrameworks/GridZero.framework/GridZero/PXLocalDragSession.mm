@interface PXLocalDragSession
- (CGPoint)scrollViewLocation;
- (CGPoint)velocity;
- (PXLocalDragSession)init;
- (PXLocalDragSessionDelegate)delegate;
- (UIDragSession)dragSession;
- (UIDropSession)dropSession;
- (id)horizontalVelocity;
- (id)verticalVelocity;
- (void)_noteChanged:(SEL)changed;
- (void)setDragSession:(id)session;
- (void)setDraggedAssetReferences:(id)references;
- (void)setDropActionPerformer:(id)performer;
- (void)setDropOperation:(unint64_t)operation;
- (void)setDropSession:(id)session;
- (void)setDropTargetAssetReference:(id)reference;
- (void)setHitAssetReference:(id)reference;
- (void)setIsDragSessionActive:(BOOL)active;
- (void)setIsDropActiveInsideView:(BOOL)view;
- (void)setScrollViewLocation:(CGPoint)location;
- (void)updateWithDataSource:(id)source;
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

- (void)setDropActionPerformer:(id)performer
{
  performerCopy = performer;
  p_dropActionPerformer = &self->_dropActionPerformer;
  if (self->_dropActionPerformer != performerCopy)
  {
    v7 = performerCopy;
    objc_storeStrong(p_dropActionPerformer, performer);
    p_dropActionPerformer = [(PXLocalDragSession *)self _noteChanged:sel_dropActionPerformer];
    performerCopy = v7;
  }

  MEMORY[0x2821F96F8](p_dropActionPerformer, performerCopy);
}

- (void)setDropOperation:(unint64_t)operation
{
  if (self->_dropOperation != operation)
  {
    self->_dropOperation = operation;
    [(PXLocalDragSession *)self _noteChanged:sel_dropOperation];
  }
}

- (void)setHitAssetReference:(id)reference
{
  referenceCopy = reference;
  v5 = self->_hitAssetReference;
  v6 = v5;
  if (v5 == referenceCopy)
  {
  }

  else
  {
    v7 = [(PXAssetReference *)v5 isEqual:?];

    if ((v7 & 1) == 0)
    {
      objc_storeStrong(&self->_hitAssetReference, reference);
      [(PXLocalDragSession *)self _noteChanged:sel_hitAssetReference];
    }
  }
}

- (void)setDropTargetAssetReference:(id)reference
{
  referenceCopy = reference;
  v5 = self->_dropTargetAssetReference;
  v6 = v5;
  if (v5 == referenceCopy)
  {
  }

  else
  {
    v7 = [(PXAssetReference *)v5 isEqual:?];

    if ((v7 & 1) == 0)
    {
      objc_storeStrong(&self->_dropTargetAssetReference, reference);
      [(PXLocalDragSession *)self _noteChanged:sel_dropTargetAssetReference];
    }
  }
}

- (void)setDraggedAssetReferences:(id)references
{
  referencesCopy = references;
  v5 = self->_draggedAssetReferences;
  v6 = v5;
  if (v5 == referencesCopy)
  {
  }

  else
  {
    v7 = [(NSSet *)v5 isEqual:?];

    if ((v7 & 1) == 0)
    {
      objc_storeStrong(&self->_draggedAssetReferences, references);
      [(PXLocalDragSession *)self _noteChanged:sel_draggedAssetReferences];
    }
  }
}

- (void)setIsDropActiveInsideView:(BOOL)view
{
  if (self->_isDropActiveInsideView != view)
  {
    self->_isDropActiveInsideView = view;
    [(PXLocalDragSession *)self _noteChanged:sel_isDropActiveInsideView];
  }
}

- (void)setIsDragSessionActive:(BOOL)active
{
  if (self->_isDragSessionActive != active)
  {
    self->_isDragSessionActive = active;
    [(PXLocalDragSession *)self _noteChanged:sel_isDragSessionActive];
  }
}

- (void)setDropSession:(id)session
{
  obj = session;
  WeakRetained = objc_loadWeakRetained(&self->_dropSession);

  v5 = obj;
  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_dropSession, obj);
    [(PXLocalDragSession *)self _noteChanged:sel_dropSession];
    v5 = obj;
  }
}

- (void)setDragSession:(id)session
{
  obj = session;
  WeakRetained = objc_loadWeakRetained(&self->_dragSession);

  v5 = obj;
  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_dragSession, obj);
    [(PXLocalDragSession *)self _noteChanged:sel_dragSession];
    v5 = obj;
  }
}

- (void)_noteChanged:(SEL)changed
{
  delegate = [(PXLocalDragSession *)self delegate];
  [delegate localDragSession:self didChangeProperty:changed];
}

- (void)updateWithDataSource:(id)source
{
  v27 = *MEMORY[0x277D85DE8];
  sourceCopy = source;
  dropTargetAssetReference = [(PXLocalDragSession *)self dropTargetAssetReference];

  if (dropTargetAssetReference)
  {
    dropTargetAssetReference2 = [(PXLocalDragSession *)self dropTargetAssetReference];
    dropTargetAssetReference = [sourceCopy assetReferenceForAssetReference:dropTargetAssetReference2];
  }

  hitAssetReference = [(PXLocalDragSession *)self hitAssetReference];

  if (hitAssetReference)
  {
    hitAssetReference2 = [(PXLocalDragSession *)self hitAssetReference];
    hitAssetReference = [sourceCopy assetReferenceForAssetReference:hitAssetReference2];
  }

  draggedAssetReferences = [(PXLocalDragSession *)self draggedAssetReferences];

  if (draggedAssetReferences)
  {
    v21 = dropTargetAssetReference;
    draggedAssetReferences = objc_alloc_init(MEMORY[0x277CBEB58]);
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    draggedAssetReferences2 = [(PXLocalDragSession *)self draggedAssetReferences];
    v11 = [draggedAssetReferences2 countByEnumeratingWithState:&v22 objects:v26 count:16];
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
            objc_enumerationMutation(draggedAssetReferences2);
          }

          v15 = *(*(&v22 + 1) + 8 * i);
          v16 = [sourceCopy assetReferenceForAssetReference:v15];
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

          [draggedAssetReferences addObject:v19];
        }

        v12 = [draggedAssetReferences2 countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v12);
    }

    dropTargetAssetReference = v21;
  }

  [(PXLocalDragSession *)self setHitAssetReference:hitAssetReference];
  [(PXLocalDragSession *)self setDropTargetAssetReference:dropTargetAssetReference];
  v20 = [draggedAssetReferences copy];
  [(PXLocalDragSession *)self setDraggedAssetReferences:v20];
}

- (CGPoint)velocity
{
  horizontalVelocity = [(PXLocalDragSession *)self horizontalVelocity];
  [horizontalVelocity output];
  v5 = v4;
  verticalVelocity = [(PXLocalDragSession *)self verticalVelocity];
  [verticalVelocity output];
  v8 = v7;

  v9 = v5;
  v10 = v8;
  result.y = v10;
  result.x = v9;
  return result;
}

- (void)setScrollViewLocation:(CGPoint)location
{
  y = location.y;
  x = location.x;
  self->_scrollViewLocation = location;
  [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
  v7 = v6;
  horizontalVelocity = [(PXLocalDragSession *)self horizontalVelocity];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __44__PXLocalDragSession_setScrollViewLocation___block_invoke;
  v11[3] = &__block_descriptor_56_e33_v16__0___PXMutableNumberFilter__8l;
  *&v11[4] = x;
  *&v11[5] = y;
  v11[6] = v7;
  [horizontalVelocity performChanges:v11];

  verticalVelocity = [(PXLocalDragSession *)self verticalVelocity];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __44__PXLocalDragSession_setScrollViewLocation___block_invoke_2;
  v10[3] = &__block_descriptor_56_e33_v16__0___PXMutableNumberFilter__8l;
  *&v10[4] = x;
  *&v10[5] = y;
  v10[6] = v7;
  [verticalVelocity performChanges:v10];
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
    gestureVelocityFilter = [MEMORY[0x277D3CE38] gestureVelocityFilter];
    v5 = self->_verticalVelocity;
    self->_verticalVelocity = gestureVelocityFilter;

    verticalVelocity = self->_verticalVelocity;
  }

  return verticalVelocity;
}

- (id)horizontalVelocity
{
  horizontalVelocity = self->_horizontalVelocity;
  if (!horizontalVelocity)
  {
    gestureVelocityFilter = [MEMORY[0x277D3CE38] gestureVelocityFilter];
    v5 = self->_horizontalVelocity;
    self->_horizontalVelocity = gestureVelocityFilter;

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