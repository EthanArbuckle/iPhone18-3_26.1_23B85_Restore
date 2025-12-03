@interface MPCQueueControllerEdit
- (MPCQueueControllerEdit)initWithQueueController:(id)controller label:(id)label;
- (NSDictionary)suggestedContentItemIDsForDeletedContentItemIDs;
- (void)commit;
- (void)dealloc;
- (void)rollback;
- (void)setSuggestedContentItemID:(id)d forDeletedContentItemID:(id)iD;
- (void)setSuggestedContentItemIDForStart:(id)start;
@end

@implementation MPCQueueControllerEdit

- (NSDictionary)suggestedContentItemIDsForDeletedContentItemIDs
{
  v2 = [(NSMutableDictionary *)self->_suggestedContentItemIDs copy];

  return v2;
}

- (void)rollback
{
  if (self->_committed)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"MPCQueueController.m" lineNumber:1962 description:{@"Attempt to rollback an already committed edit: %@", self}];
  }

  [(MPCQueueController *)self->_queueController _rollbackEdit:self];
  queueController = self->_queueController;
  self->_queueController = 0;

  self->_committed = 1;
}

- (void)commit
{
  if (self->_committed)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"MPCQueueController.m" lineNumber:1954 description:{@"Attempt to commit an already committed edit: %@", self}];
  }

  [(MPCQueueController *)self->_queueController _commitEdit:self];
  queueController = self->_queueController;
  self->_queueController = 0;

  self->_committed = 1;
}

- (void)setSuggestedContentItemID:(id)d forDeletedContentItemID:(id)iD
{
  dCopy = d;
  iDCopy = iD;
  if (dCopy)
  {
    if (iDCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"MPCQueueController.m" lineNumber:1946 description:{@"Invalid parameter not satisfying: %@", @"suggestedContentItemID != nil"}];

    if (iDCopy)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"MPCQueueController.m" lineNumber:1947 description:{@"Invalid parameter not satisfying: %@", @"deletedContentItemID != nil"}];

LABEL_3:
  if (self->_committed)
  {
    currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler3 handleFailureInMethod:a2 object:self file:@"MPCQueueController.m" lineNumber:1948 description:{@"Attempt to modify committed edit: %@", self}];
  }

  [(NSMutableDictionary *)self->_suggestedContentItemIDs setObject:dCopy forKeyedSubscript:iDCopy];
}

- (void)setSuggestedContentItemIDForStart:(id)start
{
  startCopy = start;
  v10 = startCopy;
  if (!startCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"MPCQueueController.m" lineNumber:1939 description:{@"Invalid parameter not satisfying: %@", @"suggestedContentItemID != nil"}];

    startCopy = 0;
  }

  if (self->_committed)
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"MPCQueueController.m" lineNumber:1940 description:{@"Attempt to modify committed edit: %@", self}];

    startCopy = v10;
  }

  v6 = [startCopy copy];
  suggestedStartingContentItemID = self->_suggestedStartingContentItemID;
  self->_suggestedStartingContentItemID = v6;
}

- (void)dealloc
{
  if (!self->_committed)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"MPCQueueController.m" lineNumber:1931 description:{@"Didn't call -commit/-rollback for edit: %@", self}];
  }

  v5.receiver = self;
  v5.super_class = MPCQueueControllerEdit;
  [(MPCQueueControllerEdit *)&v5 dealloc];
}

- (MPCQueueControllerEdit)initWithQueueController:(id)controller label:(id)label
{
  controllerCopy = controller;
  labelCopy = label;
  v18.receiver = self;
  v18.super_class = MPCQueueControllerEdit;
  v9 = [(MPCQueueControllerEdit *)&v18 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_queueController, controller);
    v11 = MSVNanoIDCreateTaggedPointer();
    identifier = v10->_identifier;
    v10->_identifier = v11;

    v13 = [labelCopy copy];
    label = v10->_label;
    v10->_label = v13;

    v15 = objc_alloc_init(MEMORY[0x1E695DF90]);
    suggestedContentItemIDs = v10->_suggestedContentItemIDs;
    v10->_suggestedContentItemIDs = v15;

    if (_MPCQueueControllerEditAllowsChangingCurrentItemPThreadKey_sOnceToken != -1)
    {
      dispatch_once(&_MPCQueueControllerEditAllowsChangingCurrentItemPThreadKey_sOnceToken, &__block_literal_global_924);
    }

    v10->_allowsChangingCurrentItem = pthread_getspecific(_MPCQueueControllerEditAllowsChangingCurrentItemPThreadKey_sThreadKey) != 0;
  }

  return v10;
}

@end