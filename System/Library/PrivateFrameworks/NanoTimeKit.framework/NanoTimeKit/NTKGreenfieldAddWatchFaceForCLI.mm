@interface NTKGreenfieldAddWatchFaceForCLI
- (void)addWatchFaceManager:(id)manager didFinishAddingFaceWithError:(id)error;
- (void)addWatchFaceManager:(id)manager updateStateToAddComplicationWithItemId:(id)id installMode:(int64_t)mode skippedComplicationSlots:(id)slots;
- (void)addWatchFaceManager:(id)manager updateStateToCompletedWithSkippedComplicationSlots:(id)slots canRevisit:(BOOL)revisit;
- (void)addWatchFaceManager:(id)manager updateStateToComplicationsNotAvailableWithSlots:(id)slots unavailableTitle:(id)title unavailableDescription:(id)description;
- (void)addWatchFaceManager:(id)manager updateStateToRevisitComplicationWithItemId:(id)id installMode:(int64_t)mode skippedComplicationSlots:(id)slots;
- (void)addWatchFaceManager:(id)manager updateStateToWelcomeWithCanAddFaceDirectly:(BOOL)directly;
- (void)addWatchFaceWithURL:(id)l withCompletion:(id)completion;
@end

@implementation NTKGreenfieldAddWatchFaceForCLI

- (void)addWatchFaceWithURL:(id)l withCompletion:(id)completion
{
  lCopy = l;
  completionCopy = completion;
  addWatchFaceManager = self->_addWatchFaceManager;
  if (!addWatchFaceManager)
  {
    v8 = objc_alloc_init(NTKGreenfieldAddWatchFaceManager);
    v9 = self->_addWatchFaceManager;
    self->_addWatchFaceManager = v8;

    [(NTKGreenfieldAddWatchFaceManager *)self->_addWatchFaceManager setDelegate:self];
    addWatchFaceManager = self->_addWatchFaceManager;
  }

  [(NTKGreenfieldAddWatchFaceManager *)addWatchFaceManager decodeWatchFaceWithURL:lCopy sourceApplicationBundleIdentifier:0];
  v10 = [completionCopy copy];
  completion = self->_completion;
  self->_completion = v10;
}

- (void)addWatchFaceManager:(id)manager didFinishAddingFaceWithError:(id)error
{
  v14 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  v6 = _NTKLoggingObjectForDomain(43, "NTKLoggingDomainGreenfield");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    v10 = 138412546;
    v11 = v8;
    v12 = 2112;
    v13 = errorCopy;
    _os_log_impl(&dword_22D9C5000, v6, OS_LOG_TYPE_DEFAULT, "[%@] addWatchFaceManager finished with error:%@", &v10, 0x16u);
  }

  completion = self->_completion;
  if (completion)
  {
    completion[2](completion, errorCopy);
  }
}

- (void)addWatchFaceManager:(id)manager updateStateToAddComplicationWithItemId:(id)id installMode:(int64_t)mode skippedComplicationSlots:(id)slots
{
  v14 = *MEMORY[0x277D85DE8];
  v7 = _NTKLoggingObjectForDomain(43, "NTKLoggingDomainGreenfield");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    v12 = 138412290;
    v13 = v9;
    _os_log_impl(&dword_22D9C5000, v7, OS_LOG_TYPE_DEFAULT, "[%@] addWatchFaceManager updateStateToAddComplicationWithItemId", &v12, 0xCu);
  }

  v10 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"com.apple.greenfield.cli.errordomain" code:0 userInfo:0];
  completion = self->_completion;
  if (completion)
  {
    completion[2](completion, v10);
  }
}

- (void)addWatchFaceManager:(id)manager updateStateToCompletedWithSkippedComplicationSlots:(id)slots canRevisit:(BOOL)revisit
{
  v13 = *MEMORY[0x277D85DE8];
  v6 = _NTKLoggingObjectForDomain(43, "NTKLoggingDomainGreenfield");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    v11 = 138412290;
    v12 = v8;
    _os_log_impl(&dword_22D9C5000, v6, OS_LOG_TYPE_DEFAULT, "[%@] addWatchFaceManager updateStateToCompletedWithSkippedComplicationSlots", &v11, 0xCu);
  }

  v9 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"com.apple.greenfield.cli.errordomain" code:1 userInfo:0];
  completion = self->_completion;
  if (completion)
  {
    completion[2](completion, v9);
  }
}

- (void)addWatchFaceManager:(id)manager updateStateToComplicationsNotAvailableWithSlots:(id)slots unavailableTitle:(id)title unavailableDescription:(id)description
{
  v14 = *MEMORY[0x277D85DE8];
  v7 = _NTKLoggingObjectForDomain(43, "NTKLoggingDomainGreenfield");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    v12 = 138412290;
    v13 = v9;
    _os_log_impl(&dword_22D9C5000, v7, OS_LOG_TYPE_DEFAULT, "[%@] addWatchFaceManager updateStateToComplicationsNotAvailableWithSlots", &v12, 0xCu);
  }

  v10 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"com.apple.greenfield.cli.errordomain" code:2 userInfo:0];
  completion = self->_completion;
  if (completion)
  {
    completion[2](completion, v10);
  }
}

- (void)addWatchFaceManager:(id)manager updateStateToRevisitComplicationWithItemId:(id)id installMode:(int64_t)mode skippedComplicationSlots:(id)slots
{
  v14 = *MEMORY[0x277D85DE8];
  v7 = _NTKLoggingObjectForDomain(43, "NTKLoggingDomainGreenfield");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    v12 = 138412290;
    v13 = v9;
    _os_log_impl(&dword_22D9C5000, v7, OS_LOG_TYPE_DEFAULT, "[%@] addWatchFaceManager updateStateToRevisitComplicationWithItemId", &v12, 0xCu);
  }

  v10 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"com.apple.greenfield.cli.errordomain" code:3 userInfo:0];
  completion = self->_completion;
  if (completion)
  {
    completion[2](completion, v10);
  }
}

- (void)addWatchFaceManager:(id)manager updateStateToWelcomeWithCanAddFaceDirectly:(BOOL)directly
{
  directlyCopy = directly;
  v14 = *MEMORY[0x277D85DE8];
  v6 = _NTKLoggingObjectForDomain(43, "NTKLoggingDomainGreenfield");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    v9 = [MEMORY[0x277CCABB0] numberWithBool:directlyCopy];
    v10 = 138412546;
    v11 = v8;
    v12 = 2112;
    v13 = v9;
    _os_log_impl(&dword_22D9C5000, v6, OS_LOG_TYPE_DEFAULT, "[%@] updateStateToWelcomeWithCanAddFaceDirectly canAddFaceDirectly:%@", &v10, 0x16u);
  }

  if (directlyCopy)
  {
    [(NTKGreenfieldAddWatchFaceManager *)self->_addWatchFaceManager handleAddToMyFacesAction];
  }
}

@end