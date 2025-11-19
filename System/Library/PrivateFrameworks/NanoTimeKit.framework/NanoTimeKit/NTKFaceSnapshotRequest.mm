@interface NTKFaceSnapshotRequest
- (BOOL)isReady;
- (NTKFaceSnapshotRequest)initWithFace:(id)a3 options:(id)a4 completion:(id)a5;
@end

@implementation NTKFaceSnapshotRequest

- (NTKFaceSnapshotRequest)initWithFace:(id)a3 options:(id)a4 completion:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v20.receiver = self;
  v20.super_class = NTKFaceSnapshotRequest;
  v12 = [(NTKFaceSnapshotRequest *)&v20 init];
  if (v12)
  {
    v13 = [MEMORY[0x277CBEAA8] date];
    creationDate = v12->_creationDate;
    v12->_creationDate = v13;

    objc_storeStrong(&v12->_face, a3);
    v15 = [v10 copy];
    options = v12->_options;
    v12->_options = v15;

    v17 = [v11 copy];
    completion = v12->_completion;
    v12->_completion = v17;
  }

  return v12;
}

- (BOOL)isReady
{
  v2 = [(NTKFaceSnapshotRequest *)self face];
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  v10 = MEMORY[0x277D85DD0];
  v11 = 3221225472;
  v12 = __33__NTKFaceSnapshotRequest_isReady__block_invoke;
  v13 = &unk_27877FB58;
  v3 = v2;
  v14 = v3;
  v15 = &v16;
  [v3 enumerateComplicationSlotsWithBlock:&v10];
  if (*(v17 + 24))
  {
    v4 = [v3 device];
    v5 = [v4 pairingID];
    if (v5)
    {
      v6 = [NTKFaceSnapshotterComplicationCollections objectForKey:v5];
      v7 = [v6 hasLoaded];
    }

    else
    {
      v7 = 1;
    }

    v8 = v7 & NTKFaceSnapshotterCompanionAppLibraryLoaded;
  }

  else
  {
    v8 = 1;
  }

  _Block_object_dispose(&v16, 8);
  return v8;
}

void __33__NTKFaceSnapshotRequest_isReady__block_invoke(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v5 = [*(a1 + 32) complicationForSlot:a2];
  *(*(*(a1 + 40) + 8) + 24) = [v5 complicationType] == 31;
  *a3 = *(*(*(a1 + 40) + 8) + 24);
}

@end