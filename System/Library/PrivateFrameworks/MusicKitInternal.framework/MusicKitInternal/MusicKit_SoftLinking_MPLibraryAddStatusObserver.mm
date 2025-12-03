@interface MusicKit_SoftLinking_MPLibraryAddStatusObserver
- (MusicKit_SoftLinking_MPLibraryAddStatusObserver)initWithIdentifyingModelObject:(id)object;
- (MusicKit_SoftLinking_MPModelObject)identifyingModelObject;
- (int64_t)_libraryAddStatusFromUnderlyingStatus:(int64_t)status;
- (int64_t)currentStatus;
- (void)_handleUpdatedUnderlyingLibraryAddStatus:(int64_t)status;
- (void)calculateDetailedAddStatusWithIdentifyingModelObject:(id)object children:(id)children;
- (void)setIdentifyingModelObject:(id)object;
@end

@implementation MusicKit_SoftLinking_MPLibraryAddStatusObserver

- (MusicKit_SoftLinking_MPLibraryAddStatusObserver)initWithIdentifyingModelObject:(id)object
{
  objectCopy = object;
  v28.receiver = self;
  v28.super_class = MusicKit_SoftLinking_MPLibraryAddStatusObserver;
  v5 = [(MusicKit_SoftLinking_MPLibraryAddStatusObserver *)&v28 init];
  if (v5)
  {
    v22 = 0;
    v23 = &v22;
    v24 = 0x2810000000;
    v25 = &unk_1D5749B1F;
    v26 = 0;
    v27 = 0;
    MPModelObjectClass_0 = getMPModelObjectClass_0();
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __82__MusicKit_SoftLinking_MPLibraryAddStatusObserver_initWithIdentifyingModelObject___block_invoke;
    v19[3] = &unk_1E84C3998;
    v21 = &v22;
    v7 = objectCopy;
    v20 = v7;
    [MPModelObjectClass_0 performWithoutEnforcement:v19];
    v30 = 0;
    v31 = &v30;
    v32 = 0x2050000000;
    v8 = getMPLibraryAddStatusObserverClass_softClass;
    v33 = getMPLibraryAddStatusObserverClass_softClass;
    if (!getMPLibraryAddStatusObserverClass_softClass)
    {
      location[0] = MEMORY[0x1E69E9820];
      location[1] = 3221225472;
      location[2] = __getMPLibraryAddStatusObserverClass_block_invoke;
      location[3] = &unk_1E84C3838;
      location[4] = &v30;
      __getMPLibraryAddStatusObserverClass_block_invoke(location);
      v8 = v31[3];
    }

    v9 = v8;
    _Block_object_dispose(&v30, 8);
    v10 = objc_alloc_init(v8);
    underlyingLibraryAddStatusObserver = v5->_underlyingLibraryAddStatusObserver;
    v5->_underlyingLibraryAddStatusObserver = v10;

    v12 = v5->_underlyingLibraryAddStatusObserver;
    v13 = v23;
    _underlyingModelObject = [v7 _underlyingModelObject];
    [(MPLibraryAddStatusObserver *)v12 setConfiguration:*(v13 + 8) | (*(v13 + 36) << 32) identifyingModelObject:_underlyingModelObject];

    objc_initWeak(location, v5);
    v15 = v5->_underlyingLibraryAddStatusObserver;
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __82__MusicKit_SoftLinking_MPLibraryAddStatusObserver_initWithIdentifyingModelObject___block_invoke_2;
    v17[3] = &unk_1E84C42E8;
    objc_copyWeak(&v18, location);
    [(MPLibraryAddStatusObserver *)v15 setStatusBlock:v17];
    objc_destroyWeak(&v18);
    objc_destroyWeak(location);

    _Block_object_dispose(&v22, 8);
  }

  return v5;
}

- (MusicKit_SoftLinking_MPModelObject)identifyingModelObject
{
  v3 = objc_alloc(MEMORY[0x1E6977640]);
  identifyingModelObject = [(MPLibraryAddStatusObserver *)self->_underlyingLibraryAddStatusObserver identifyingModelObject];
  v5 = [v3 initWithUnderlyingModelObject:identifyingModelObject];

  return v5;
}

- (void)setIdentifyingModelObject:(id)object
{
  objectCopy = object;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2810000000;
  v16 = &unk_1D5749B1F;
  v17 = 0;
  v18 = 0;
  MPModelObjectClass_0 = getMPModelObjectClass_0();
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __77__MusicKit_SoftLinking_MPLibraryAddStatusObserver_setIdentifyingModelObject___block_invoke;
  v10[3] = &unk_1E84C3998;
  v12 = &v13;
  v6 = objectCopy;
  v11 = v6;
  [MPModelObjectClass_0 performWithoutEnforcement:v10];
  underlyingLibraryAddStatusObserver = self->_underlyingLibraryAddStatusObserver;
  v8 = v14;
  _underlyingModelObject = [v6 _underlyingModelObject];
  [(MPLibraryAddStatusObserver *)underlyingLibraryAddStatusObserver setConfiguration:*(v8 + 8) | (*(v8 + 36) << 32) identifyingModelObject:_underlyingModelObject];

  _Block_object_dispose(&v13, 8);
}

- (int64_t)currentStatus
{
  currentStatus = [(MPLibraryAddStatusObserver *)self->_underlyingLibraryAddStatusObserver currentStatus];

  return [(MusicKit_SoftLinking_MPLibraryAddStatusObserver *)self _libraryAddStatusFromUnderlyingStatus:currentStatus];
}

- (void)calculateDetailedAddStatusWithIdentifyingModelObject:(id)object children:(id)children
{
  v63 = *MEMORY[0x1E69E9840];
  objectCopy = object;
  childrenCopy = children;
  v47 = 0;
  v48 = &v47;
  v49 = 0x2810000000;
  v50 = &unk_1D5749B1F;
  v51 = 0;
  v52 = 0;
  _underlyingModelObject = [objectCopy _underlyingModelObject];
  MPModelObjectClass_0 = getMPModelObjectClass_0();
  v44[0] = MEMORY[0x1E69E9820];
  v44[1] = 3221225472;
  v44[2] = __113__MusicKit_SoftLinking_MPLibraryAddStatusObserver_calculateDetailedAddStatusWithIdentifyingModelObject_children___block_invoke;
  v44[3] = &unk_1E84C3998;
  v46 = &v47;
  v9 = _underlyingModelObject;
  v45 = v9;
  [MPModelObjectClass_0 performWithoutEnforcement:v44];
  v40 = 0;
  v41 = &v40;
  v42 = 0x2020000000;
  v43 = v48[34];
  v58 = 0;
  v59 = &v58;
  v60 = 0x2050000000;
  v10 = getMPModelAlbumClass_softClass_0;
  v61 = getMPModelAlbumClass_softClass_0;
  if (!getMPModelAlbumClass_softClass_0)
  {
    v53 = MEMORY[0x1E69E9820];
    v54 = 3221225472;
    v55 = __getMPModelAlbumClass_block_invoke_0;
    v56 = &unk_1E84C3838;
    v57 = &v58;
    __getMPModelAlbumClass_block_invoke_0(&v53);
    v10 = v59[3];
  }

  v11 = v10;
  _Block_object_dispose(&v58, 8);
  isKindOfClass = objc_opt_isKindOfClass();
  v13 = v41;
  if ((isKindOfClass & 1) != 0 && (v41[3] & 1) == 0)
  {
    v30 = v9;
    v31 = objectCopy;
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v14 = childrenCopy;
    v15 = [v14 countByEnumeratingWithState:&v36 objects:v62 count:16];
    if (v15)
    {
      v16 = *v37;
      while (2)
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v37 != v16)
          {
            objc_enumerationMutation(v14);
          }

          _underlyingModelObject2 = [*(*(&v36 + 1) + 8 * i) _underlyingModelObject];
          v58 = 0;
          v59 = &v58;
          v60 = 0x2050000000;
          v19 = getMPModelSongClass_softClass_2;
          v61 = getMPModelSongClass_softClass_2;
          if (!getMPModelSongClass_softClass_2)
          {
            v53 = MEMORY[0x1E69E9820];
            v54 = 3221225472;
            v55 = __getMPModelSongClass_block_invoke_2;
            v56 = &unk_1E84C3838;
            v57 = &v58;
            __getMPModelSongClass_block_invoke_2(&v53);
            v19 = v59[3];
          }

          v20 = v19;
          _Block_object_dispose(&v58, 8);
          if (objc_opt_isKindOfClass())
          {
            v21 = getMPModelObjectClass_0();
            v33[0] = MEMORY[0x1E69E9820];
            v33[1] = 3221225472;
            v33[2] = __113__MusicKit_SoftLinking_MPLibraryAddStatusObserver_calculateDetailedAddStatusWithIdentifyingModelObject_children___block_invoke_2;
            v33[3] = &unk_1E84C3998;
            v35 = &v40;
            v22 = _underlyingModelObject2;
            v34 = v22;
            [v21 performWithoutEnforcement:v33];
            LOBYTE(v21) = *(v41 + 24);

            if (v21)
            {

              goto LABEL_18;
            }
          }
        }

        v15 = [v14 countByEnumeratingWithState:&v36 objects:v62 count:16];
        if (v15)
        {
          continue;
        }

        break;
      }
    }

LABEL_18:

    v13 = v41;
    objectCopy = v31;
    v9 = v30;
  }

  v23 = v48;
  if (*(v13 + 24) == 1 && (v48[34] & 1) == 0)
  {
    v24 = v48[32];
    v25 = 0x1000000;
    if (!v48[35])
    {
      v25 = 0;
    }

    v26 = 256;
    if (!v48[33])
    {
      v26 = 0;
    }

    v48[36] = v48[36] != 0;
    *(v23 + 8) = v26 | v24 | v25 | 0x10000;
  }

  underlyingLibraryAddStatusObserver = self->_underlyingLibraryAddStatusObserver;
  _underlyingModelObject3 = [objectCopy _underlyingModelObject];
  [(MPLibraryAddStatusObserver *)underlyingLibraryAddStatusObserver setConfiguration:*(v23 + 8) | (v23[36] << 32) identifyingModelObject:_underlyingModelObject3];

  _Block_object_dispose(&v40, 8);
  _Block_object_dispose(&v47, 8);

  v29 = *MEMORY[0x1E69E9840];
}

- (void)_handleUpdatedUnderlyingLibraryAddStatus:(int64_t)status
{
  [(MusicKit_SoftLinking_MPLibraryAddStatusObserver *)self _libraryAddStatusFromUnderlyingStatus:status];
  statusBlock = self->_statusBlock;
  if (statusBlock)
  {
    v5 = *(statusBlock + 2);

    v5();
  }
}

- (int64_t)_libraryAddStatusFromUnderlyingStatus:(int64_t)status
{
  if ((status - 1) >= 0xA)
  {
    return 0;
  }

  else
  {
    return status;
  }
}

@end