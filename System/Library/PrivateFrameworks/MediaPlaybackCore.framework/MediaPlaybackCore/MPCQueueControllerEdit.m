@interface MPCQueueControllerEdit
- (MPCQueueControllerEdit)initWithQueueController:(id)a3 label:(id)a4;
- (NSDictionary)suggestedContentItemIDsForDeletedContentItemIDs;
- (void)commit;
- (void)dealloc;
- (void)rollback;
- (void)setSuggestedContentItemID:(id)a3 forDeletedContentItemID:(id)a4;
- (void)setSuggestedContentItemIDForStart:(id)a3;
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
    v5 = [MEMORY[0x1E696AAA8] currentHandler];
    [v5 handleFailureInMethod:a2 object:self file:@"MPCQueueController.m" lineNumber:1962 description:{@"Attempt to rollback an already committed edit: %@", self}];
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
    v5 = [MEMORY[0x1E696AAA8] currentHandler];
    [v5 handleFailureInMethod:a2 object:self file:@"MPCQueueController.m" lineNumber:1954 description:{@"Attempt to commit an already committed edit: %@", self}];
  }

  [(MPCQueueController *)self->_queueController _commitEdit:self];
  queueController = self->_queueController;
  self->_queueController = 0;

  self->_committed = 1;
}

- (void)setSuggestedContentItemID:(id)a3 forDeletedContentItemID:(id)a4
{
  v11 = a3;
  v7 = a4;
  if (v11)
  {
    if (v7)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"MPCQueueController.m" lineNumber:1946 description:{@"Invalid parameter not satisfying: %@", @"suggestedContentItemID != nil"}];

    if (v7)
    {
      goto LABEL_3;
    }
  }

  v9 = [MEMORY[0x1E696AAA8] currentHandler];
  [v9 handleFailureInMethod:a2 object:self file:@"MPCQueueController.m" lineNumber:1947 description:{@"Invalid parameter not satisfying: %@", @"deletedContentItemID != nil"}];

LABEL_3:
  if (self->_committed)
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"MPCQueueController.m" lineNumber:1948 description:{@"Attempt to modify committed edit: %@", self}];
  }

  [(NSMutableDictionary *)self->_suggestedContentItemIDs setObject:v11 forKeyedSubscript:v7];
}

- (void)setSuggestedContentItemIDForStart:(id)a3
{
  v5 = a3;
  v10 = v5;
  if (!v5)
  {
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"MPCQueueController.m" lineNumber:1939 description:{@"Invalid parameter not satisfying: %@", @"suggestedContentItemID != nil"}];

    v5 = 0;
  }

  if (self->_committed)
  {
    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    [v9 handleFailureInMethod:a2 object:self file:@"MPCQueueController.m" lineNumber:1940 description:{@"Attempt to modify committed edit: %@", self}];

    v5 = v10;
  }

  v6 = [v5 copy];
  suggestedStartingContentItemID = self->_suggestedStartingContentItemID;
  self->_suggestedStartingContentItemID = v6;
}

- (void)dealloc
{
  if (!self->_committed)
  {
    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    [v4 handleFailureInMethod:a2 object:self file:@"MPCQueueController.m" lineNumber:1931 description:{@"Didn't call -commit/-rollback for edit: %@", self}];
  }

  v5.receiver = self;
  v5.super_class = MPCQueueControllerEdit;
  [(MPCQueueControllerEdit *)&v5 dealloc];
}

- (MPCQueueControllerEdit)initWithQueueController:(id)a3 label:(id)a4
{
  v7 = a3;
  v8 = a4;
  v18.receiver = self;
  v18.super_class = MPCQueueControllerEdit;
  v9 = [(MPCQueueControllerEdit *)&v18 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_queueController, a3);
    v11 = MSVNanoIDCreateTaggedPointer();
    identifier = v10->_identifier;
    v10->_identifier = v11;

    v13 = [v8 copy];
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