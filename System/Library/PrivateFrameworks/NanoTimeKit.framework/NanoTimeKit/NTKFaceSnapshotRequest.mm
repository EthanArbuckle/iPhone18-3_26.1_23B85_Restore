@interface NTKFaceSnapshotRequest
- (BOOL)isReady;
- (NTKFaceSnapshotRequest)initWithFace:(id)face options:(id)options completion:(id)completion;
@end

@implementation NTKFaceSnapshotRequest

- (NTKFaceSnapshotRequest)initWithFace:(id)face options:(id)options completion:(id)completion
{
  faceCopy = face;
  optionsCopy = options;
  completionCopy = completion;
  v20.receiver = self;
  v20.super_class = NTKFaceSnapshotRequest;
  v12 = [(NTKFaceSnapshotRequest *)&v20 init];
  if (v12)
  {
    date = [MEMORY[0x277CBEAA8] date];
    creationDate = v12->_creationDate;
    v12->_creationDate = date;

    objc_storeStrong(&v12->_face, face);
    v15 = [optionsCopy copy];
    options = v12->_options;
    v12->_options = v15;

    v17 = [completionCopy copy];
    completion = v12->_completion;
    v12->_completion = v17;
  }

  return v12;
}

- (BOOL)isReady
{
  face = [(NTKFaceSnapshotRequest *)self face];
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  v10 = MEMORY[0x277D85DD0];
  v11 = 3221225472;
  v12 = __33__NTKFaceSnapshotRequest_isReady__block_invoke;
  v13 = &unk_27877FB58;
  v3 = face;
  v14 = v3;
  v15 = &v16;
  [v3 enumerateComplicationSlotsWithBlock:&v10];
  if (*(v17 + 24))
  {
    device = [v3 device];
    pairingID = [device pairingID];
    if (pairingID)
    {
      v6 = [NTKFaceSnapshotterComplicationCollections objectForKey:pairingID];
      hasLoaded = [v6 hasLoaded];
    }

    else
    {
      hasLoaded = 1;
    }

    v8 = hasLoaded & NTKFaceSnapshotterCompanionAppLibraryLoaded;
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