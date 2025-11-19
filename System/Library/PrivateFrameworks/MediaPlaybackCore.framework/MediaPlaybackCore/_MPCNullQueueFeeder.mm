@interface _MPCNullQueueFeeder
- (_MPCNullQueueFeeder)init;
- (void)reloadSection:(id)a3 completion:(id)a4;
@end

@implementation _MPCNullQueueFeeder

- (void)reloadSection:(id)a3 completion:(id)a4
{
  v7 = a4;
  v8 = a3;
  v9 = [v8 sectionIdentifier];
  uniqueIdentifier = self->_uniqueIdentifier;
  self->_uniqueIdentifier = v9;

  v11 = [v8 itemIdentifiers];
  v12 = [MEMORY[0x1E69704C8] changeDetailsWithPreviousCount:objc_msgSend(v11 finalCount:"count") isEqualBlock:0 isUpdatedBlock:{&__block_literal_global_12125, &__block_literal_global_45}];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __48___MPCNullQueueFeeder_reloadSection_completion___block_invoke_3;
  v13[3] = &unk_1E8233D68;
  v13[4] = self;
  v13[5] = a2;
  [v8 applyChanges:v12 itemLookupBlock:v13];

  v7[2](v7, 0);
}

- (_MPCNullQueueFeeder)init
{
  v7.receiver = self;
  v7.super_class = _MPCNullQueueFeeder;
  v2 = [(MPQueueFeeder *)&v7 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E696AFB0] UUID];
    v4 = [v3 UUIDString];
    uniqueIdentifier = v2->_uniqueIdentifier;
    v2->_uniqueIdentifier = v4;
  }

  return v2;
}

@end