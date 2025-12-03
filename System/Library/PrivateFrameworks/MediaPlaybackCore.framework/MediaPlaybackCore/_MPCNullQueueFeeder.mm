@interface _MPCNullQueueFeeder
- (_MPCNullQueueFeeder)init;
- (void)reloadSection:(id)section completion:(id)completion;
@end

@implementation _MPCNullQueueFeeder

- (void)reloadSection:(id)section completion:(id)completion
{
  completionCopy = completion;
  sectionCopy = section;
  sectionIdentifier = [sectionCopy sectionIdentifier];
  uniqueIdentifier = self->_uniqueIdentifier;
  self->_uniqueIdentifier = sectionIdentifier;

  itemIdentifiers = [sectionCopy itemIdentifiers];
  v12 = [MEMORY[0x1E69704C8] changeDetailsWithPreviousCount:objc_msgSend(itemIdentifiers finalCount:"count") isEqualBlock:0 isUpdatedBlock:{&__block_literal_global_12125, &__block_literal_global_45}];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __48___MPCNullQueueFeeder_reloadSection_completion___block_invoke_3;
  v13[3] = &unk_1E8233D68;
  v13[4] = self;
  v13[5] = a2;
  [sectionCopy applyChanges:v12 itemLookupBlock:v13];

  completionCopy[2](completionCopy, 0);
}

- (_MPCNullQueueFeeder)init
{
  v7.receiver = self;
  v7.super_class = _MPCNullQueueFeeder;
  v2 = [(MPQueueFeeder *)&v7 init];
  if (v2)
  {
    uUID = [MEMORY[0x1E696AFB0] UUID];
    uUIDString = [uUID UUIDString];
    uniqueIdentifier = v2->_uniqueIdentifier;
    v2->_uniqueIdentifier = uUIDString;
  }

  return v2;
}

@end