@interface CNUIPRUISPosterSnapshotDescriptor
- (CGRect)canvasBounds;
- (CNUIPRUISPosterSnapshotDescriptor)initWithUserInterfaceStyle:(int64_t)a3 interfaceOrientation:(int64_t)a4 snapshotDefinition:(id)a5;
@end

@implementation CNUIPRUISPosterSnapshotDescriptor

- (CNUIPRUISPosterSnapshotDescriptor)initWithUserInterfaceStyle:(int64_t)a3 interfaceOrientation:(int64_t)a4 snapshotDefinition:(id)a5
{
  v8 = a5;
  v17.receiver = self;
  v17.super_class = CNUIPRUISPosterSnapshotDescriptor;
  v9 = [(CNUIPRUISPosterSnapshotDescriptor *)&v17 init];
  if (v9)
  {
    v19 = 0;
    v20 = &v19;
    v21 = 0x2050000000;
    v10 = getPRUISMutablePosterSnapshotDescriptorClass_softClass;
    v22 = getPRUISMutablePosterSnapshotDescriptorClass_softClass;
    if (!getPRUISMutablePosterSnapshotDescriptorClass_softClass)
    {
      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 3221225472;
      v18[2] = __getPRUISMutablePosterSnapshotDescriptorClass_block_invoke;
      v18[3] = &unk_1E76E79E0;
      v18[4] = &v19;
      __getPRUISMutablePosterSnapshotDescriptorClass_block_invoke(v18);
      v10 = v20[3];
    }

    v11 = v10;
    _Block_object_dispose(&v19, 8);
    v12 = [v10 alloc];
    v13 = [v8 wrappedDefinition];
    v14 = [v12 initWithUserInterfaceStyle:a3 interfaceOrientation:a4 snapshotDefinition:v13];
    wrappedDescriptor = v9->_wrappedDescriptor;
    v9->_wrappedDescriptor = v14;
  }

  return v9;
}

- (CGRect)canvasBounds
{
  [(PRUISMutablePosterSnapshotDescriptor *)self->_wrappedDescriptor canvasBounds];
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

@end