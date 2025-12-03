@interface FigCaptureLogSmartCameraGating
+ (void)initialize;
- (FigCaptureLogSmartCameraGating)initWithGateIdentifier:(int)identifier;
- (void)dealloc;
- (void)logGateClosed;
- (void)logGateOpened;
- (void)logSmartCamIsConfident:(BOOL)confident presentedIdentifiers:(id)identifiers presentedCount:(int)count;
- (void)logTracksCreated:(int)created;
@end

@implementation FigCaptureLogSmartCameraGating

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    FigNote_AllowInternalDefaultLogs();
    fig_note_initialize_category_with_default_work_cf();

    fig_note_initialize_category_with_default_work_cf();
  }
}

- (FigCaptureLogSmartCameraGating)initWithGateIdentifier:(int)identifier
{
  v5.receiver = self;
  v5.super_class = FigCaptureLogSmartCameraGating;
  result = [(FigCaptureLogSmartCameraGating *)&v5 init];
  if (result)
  {
    result->_gateIdentifier = identifier;
    result->_lock._os_unfair_lock_opaque = 0;
  }

  return result;
}

- (void)dealloc
{
  openingTimestamp = self->_openingTimestamp;
  if (openingTimestamp)
  {
    [(FigCaptureLogSmartCameraGating *)self logGateClosed];
    openingTimestamp = self->_openingTimestamp;
  }

  v4.receiver = self;
  v4.super_class = FigCaptureLogSmartCameraGating;
  [(FigCaptureLogSmartCameraGating *)&v4 dealloc];
}

- (void)logGateOpened
{
  os_unfair_lock_lock(&self->_lock);

  self->_openingTimestamp = objc_alloc_init(MEMORY[0x1E695DF00]);
  self->_currentPresentations = 0;
  *&self->_numFrames = 0;
  self->_numClosingFrames = 0;
  *&self->_numBoxesPresented = 0;

  os_unfair_lock_unlock(&self->_lock);
}

- (void)logTracksCreated:(int)created
{
  os_unfair_lock_lock(&self->_lock);
  self->_numTrackedRegions += created;

  os_unfair_lock_unlock(&self->_lock);
}

- (void)logSmartCamIsConfident:(BOOL)confident presentedIdentifiers:(id)identifiers presentedCount:(int)count
{
  os_unfair_lock_lock(&self->_lock);
  if (identifiers)
  {
    [identifiers count];
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v9 = [identifiers countByEnumeratingWithState:&v14 objects:v13 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v15;
      do
      {
        v12 = 0;
        do
        {
          if (*v15 != v11)
          {
            objc_enumerationMutation(identifiers);
          }

          if (![(NSSet *)self->_currentPresentations containsObject:*(*(&v14 + 1) + 8 * v12)])
          {
            ++self->_numBoxesPresented;
          }

          ++v12;
        }

        while (v10 != v12);
        v10 = [identifiers countByEnumeratingWithState:&v14 objects:v13 count:16];
      }

      while (v10);
    }

    self->_currentPresentations = identifiers;
  }

  else
  {
    self->_numBoxesPresented += count;
  }

  ++self->_numFrames;
  if (!count)
  {
    ++self->_numEmptyFrames;
    if (confident)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  if (!confident)
  {
LABEL_15:
    ++self->_numClosingFrames;
  }

LABEL_16:
  os_unfair_lock_unlock(&self->_lock);
}

- (void)logGateClosed
{
  os_unfair_lock_lock(&self->_lock);
  if (self->_openingTimestamp)
  {
    v3 = [MEMORY[0x1E696AD98] numberWithInt:{self->_gateIdentifier, @"GateID"}];
    openingTimestamp = self->_openingTimestamp;
    v6[0] = v3;
    v6[1] = openingTimestamp;
    v5[1] = @"timestamp";
    v5[2] = @"timestampEnd";
    v6[2] = [MEMORY[0x1E695DF00] now];
    v5[3] = @"NumFrames";
    v6[3] = [MEMORY[0x1E696AD98] numberWithInt:self->_numFrames];
    v5[4] = @"NumTrackedRegions";
    v6[4] = [MEMORY[0x1E696AD98] numberWithInt:self->_numTrackedRegions];
    v5[5] = @"NumBoxesPresented";
    v6[5] = [MEMORY[0x1E696AD98] numberWithInt:self->_numBoxesPresented];
    v5[6] = @"NumEmptyFrames";
    v6[6] = [MEMORY[0x1E696AD98] numberWithInt:self->_numEmptyFrames];
    v5[7] = @"NumClosingFrames";
    v6[7] = [MEMORY[0x1E696AD98] numberWithInt:self->_numClosingFrames];
    [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:v5 count:8];
    PLLogRegisteredEvent();

    self->_openingTimestamp = 0;
    self->_currentPresentations = 0;
  }

  else
  {
    [FigCaptureLogSmartCameraGating logGateClosed];
  }

  os_unfair_lock_unlock(&self->_lock);
}

@end