@interface NTKTimelineSetupOperation
- (void)_getAlwaysOnTemplate;
- (void)_getCurrentEntry;
- (void)_getEndDate;
- (void)_getPrivacyBehavior;
- (void)_getTimelineAnimationBehavior;
- (void)_invokeHandler;
@end

@implementation NTKTimelineSetupOperation

- (void)_getEndDate
{
  if (![(NTKTimelineDataOperation *)self canceled])
  {
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __40__NTKTimelineSetupOperation__getEndDate__block_invoke;
    aBlock[3] = &unk_27877EBB8;
    aBlock[4] = self;
    v3 = _Block_copy(aBlock);
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __40__NTKTimelineSetupOperation__getEndDate__block_invoke_2;
    v6[3] = &unk_27877EBB8;
    v6[4] = self;
    v4 = _Block_copy(v6);
    localDataSource = self->super._localDataSource;
    if (localDataSource)
    {
      [(CLKCComplicationDataSource *)localDataSource getTimelineEndDateWithHandler:v3];
    }

    else
    {
      [(CLKComplicationDataSource *)self->super._remoteDataSource getTimelineEndDateForComplication:self->super._remoteComplication withHandler:v4];
    }
  }
}

void __40__NTKTimelineSetupOperation__getEndDate__block_invoke(uint64_t a1, void *a2)
{
  objc_storeStrong((*(a1 + 32) + 40), a2);
  v4 = a2;
  [*(a1 + 32) _getCurrentEntry];
}

void __40__NTKTimelineSetupOperation__getEndDate__block_invoke_2(uint64_t a1, void *a2)
{
  objc_storeStrong((*(a1 + 32) + 40), a2);
  v4 = a2;
  [*(a1 + 32) _getPrivacyBehavior];
}

- (void)_getPrivacyBehavior
{
  if (![(NTKTimelineDataOperation *)self canceled])
  {
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __48__NTKTimelineSetupOperation__getPrivacyBehavior__block_invoke;
    aBlock[3] = &unk_27877EBE0;
    aBlock[4] = self;
    v3 = _Block_copy(aBlock);
    [(CLKComplicationDataSource *)self->super._remoteDataSource getPrivacyBehaviorForComplication:self->super._remoteComplication withHandler:v3];
  }
}

- (void)_getTimelineAnimationBehavior
{
  if (![(NTKTimelineDataOperation *)self canceled])
  {
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __58__NTKTimelineSetupOperation__getTimelineAnimationBehavior__block_invoke;
    aBlock[3] = &unk_27877EBE0;
    aBlock[4] = self;
    v3 = _Block_copy(aBlock);
    [(CLKComplicationDataSource *)self->super._remoteDataSource getTimelineAnimationBehaviorForComplication:self->super._remoteComplication withHandler:v3];
  }
}

- (void)_getCurrentEntry
{
  if (![(NTKTimelineDataOperation *)self canceled])
  {
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __45__NTKTimelineSetupOperation__getCurrentEntry__block_invoke;
    aBlock[3] = &unk_27877EC08;
    aBlock[4] = self;
    v3 = _Block_copy(aBlock);
    localDataSource = self->super._localDataSource;
    if (localDataSource)
    {
      [(CLKCComplicationDataSource *)localDataSource getCurrentTimelineEntryWithHandler:v3];
    }

    else
    {
      v12 = 0;
      v13 = &v12;
      v14 = 0x3032000000;
      v15 = __Block_byref_object_copy__3;
      v16 = __Block_byref_object_dispose__3;
      v17 = 0;
      v5 = [[NTKTimelineRemoteDataSourceProvider alloc] initWithDataSource:self->super._remoteDataSource];
      v6 = v13[5];
      v13[5] = v5;

      v7 = v13[5];
      remoteComplication = self->super._remoteComplication;
      v9[0] = MEMORY[0x277D85DD0];
      v9[1] = 3221225472;
      v9[2] = __45__NTKTimelineSetupOperation__getCurrentEntry__block_invoke_36;
      v9[3] = &unk_27877EC30;
      v10 = v3;
      v11 = &v12;
      [v7 getCurrentEntryForComplication:remoteComplication completion:v9];

      _Block_object_dispose(&v12, 8);
    }
  }
}

void __45__NTKTimelineSetupOperation__getCurrentEntry__block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [*(a1 + 32) _validateEntry:?];
  if (v3)
  {
    v4 = [v5 finalizedCopy];
  }

  else
  {
    v4 = 0;
  }

  objc_storeStrong((*(a1 + 32) + 64), v4);
  if (v3)
  {
  }

  [*(a1 + 32) _getAlwaysOnTemplate];
}

void __45__NTKTimelineSetupOperation__getCurrentEntry__block_invoke_36(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  v2 = *(*(a1 + 40) + 8);
  v3 = *(v2 + 40);
  *(v2 + 40) = 0;
}

- (void)_getAlwaysOnTemplate
{
  if (![(NTKTimelineDataOperation *)self canceled])
  {
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __49__NTKTimelineSetupOperation__getAlwaysOnTemplate__block_invoke;
    aBlock[3] = &unk_27877EC58;
    aBlock[4] = self;
    v3 = _Block_copy(aBlock);
    localDataSource = self->super._localDataSource;
    if (localDataSource)
    {
      alwaysOnTemplate = [(CLKCComplicationDataSource *)localDataSource alwaysOnTemplate];
      v3[2](v3, alwaysOnTemplate);
    }

    else
    {
      [(CLKComplicationDataSource *)self->super._remoteDataSource getAlwaysOnTemplateForComplication:self->super._remoteComplication withHandler:v3];
    }
  }
}

void __49__NTKTimelineSetupOperation__getAlwaysOnTemplate__block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  if (v5)
  {
    v3 = [*(a1 + 32) _validateTemplate:v5];
    if (v3)
    {
      v4 = [v5 finalizedCopy];
    }

    else
    {
      v4 = 0;
    }

    objc_storeStrong((*(a1 + 32) + 72), v4);
    if (v3)
    {
    }
  }

  [*(a1 + 32) _invokeHandler];
}

- (void)_invokeHandler
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __43__NTKTimelineSetupOperation__invokeHandler__block_invoke;
  block[3] = &unk_27877DB10;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

uint64_t __43__NTKTimelineSetupOperation__invokeHandler__block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (*(result + 80))
  {
    result = [result canceled];
    if ((result & 1) == 0)
    {
      v3 = *(*(*(a1 + 32) + 80) + 16);

      return v3();
    }
  }

  return result;
}

@end