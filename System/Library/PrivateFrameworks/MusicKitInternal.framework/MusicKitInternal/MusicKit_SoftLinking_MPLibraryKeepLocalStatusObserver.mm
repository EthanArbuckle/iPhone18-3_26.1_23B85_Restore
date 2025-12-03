@interface MusicKit_SoftLinking_MPLibraryKeepLocalStatusObserver
- (MusicKit_SoftLinking_MPLibraryActiveKeepLocalStatus)_activeKeepLocalStatusFromUnderlyingStatus:(SEL)status underlyingDownloadPauseReasons:(MPLibraryActiveKeepLocalStatus)reasons;
- (MusicKit_SoftLinking_MPLibraryActiveKeepLocalStatus)currentStatus;
- (MusicKit_SoftLinking_MPLibraryKeepLocalStatusObserver)initWithIdentifyingModelObject:(id)object;
- (MusicKit_SoftLinking_MPModelObject)identifyingModelObject;
- (void)_handleUpdatedUnderlyingActiveKeepLocalStatus:(MPLibraryActiveKeepLocalStatus)status;
- (void)calculateDownloadProgressWithIdentifyingModelObject:(id)object children:(id)children;
- (void)setIdentifyingModelObject:(id)object;
@end

@implementation MusicKit_SoftLinking_MPLibraryKeepLocalStatusObserver

- (MusicKit_SoftLinking_MPLibraryKeepLocalStatusObserver)initWithIdentifyingModelObject:(id)object
{
  objectCopy = object;
  v24.receiver = self;
  v24.super_class = MusicKit_SoftLinking_MPLibraryKeepLocalStatusObserver;
  v5 = [(MusicKit_SoftLinking_MPLibraryKeepLocalStatusObserver *)&v24 init];
  if (v5)
  {
    v18 = 0;
    v19 = &v18;
    v20 = 0x3032000000;
    v21 = __Block_byref_object_copy__1;
    v22 = __Block_byref_object_dispose__1;
    v23 = 0;
    MPModelObjectClass = getMPModelObjectClass();
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __88__MusicKit_SoftLinking_MPLibraryKeepLocalStatusObserver_initWithIdentifyingModelObject___block_invoke;
    v15[3] = &unk_1E84C3998;
    v17 = &v18;
    v16 = objectCopy;
    [MPModelObjectClass performWithoutEnforcement:v15];
    v26 = 0;
    v27 = &v26;
    v28 = 0x2050000000;
    v7 = getMPLibraryKeepLocalStatusObserverClass_softClass;
    v29 = getMPLibraryKeepLocalStatusObserverClass_softClass;
    if (!getMPLibraryKeepLocalStatusObserverClass_softClass)
    {
      location[0] = MEMORY[0x1E69E9820];
      location[1] = 3221225472;
      location[2] = __getMPLibraryKeepLocalStatusObserverClass_block_invoke;
      location[3] = &unk_1E84C3838;
      location[4] = &v26;
      __getMPLibraryKeepLocalStatusObserverClass_block_invoke(location);
      v7 = v27[3];
    }

    v8 = v7;
    _Block_object_dispose(&v26, 8);
    v9 = objc_alloc_init(v7);
    underlyingLibraryKeepLocalStatusObserver = v5->_underlyingLibraryKeepLocalStatusObserver;
    v5->_underlyingLibraryKeepLocalStatusObserver = v9;

    [(MPLibraryKeepLocalStatusObserver *)v5->_underlyingLibraryKeepLocalStatusObserver setConfiguration:v19[5]];
    objc_initWeak(location, v5);
    v11 = v5->_underlyingLibraryKeepLocalStatusObserver;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __88__MusicKit_SoftLinking_MPLibraryKeepLocalStatusObserver_initWithIdentifyingModelObject___block_invoke_2;
    v13[3] = &unk_1E84C3E68;
    objc_copyWeak(&v14, location);
    [(MPLibraryKeepLocalStatusObserver *)v11 setStatusBlock:v13];
    objc_destroyWeak(&v14);
    objc_destroyWeak(location);

    _Block_object_dispose(&v18, 8);
  }

  return v5;
}

- (MusicKit_SoftLinking_MPModelObject)identifyingModelObject
{
  v3 = objc_alloc(MEMORY[0x1E6977640]);
  configuration = [(MPLibraryKeepLocalStatusObserver *)self->_underlyingLibraryKeepLocalStatusObserver configuration];
  identifyingModelObject = [configuration identifyingModelObject];
  v6 = [v3 initWithUnderlyingModelObject:identifyingModelObject];

  return v6;
}

- (void)setIdentifyingModelObject:(id)object
{
  objectCopy = object;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__1;
  v17 = __Block_byref_object_dispose__1;
  v18 = 0;
  MPModelObjectClass = getMPModelObjectClass();
  v7 = MEMORY[0x1E69E9820];
  v8 = 3221225472;
  v9 = __83__MusicKit_SoftLinking_MPLibraryKeepLocalStatusObserver_setIdentifyingModelObject___block_invoke;
  v10 = &unk_1E84C3998;
  v12 = &v13;
  v6 = objectCopy;
  v11 = v6;
  [MPModelObjectClass performWithoutEnforcement:&v7];
  [(MPLibraryKeepLocalStatusObserver *)self->_underlyingLibraryKeepLocalStatusObserver setConfiguration:v14[5], v7, v8, v9, v10];

  _Block_object_dispose(&v13, 8);
}

- (MusicKit_SoftLinking_MPLibraryActiveKeepLocalStatus)currentStatus
{
  currentStatus = [(MPLibraryKeepLocalStatusObserver *)self->_underlyingLibraryKeepLocalStatusObserver currentStatus];
  v6 = v5;
  downloadPausedReason = [(MPLibraryKeepLocalStatusObserver *)self->_underlyingLibraryKeepLocalStatusObserver downloadPausedReason];

  return [(MusicKit_SoftLinking_MPLibraryKeepLocalStatusObserver *)self _activeKeepLocalStatusFromUnderlyingStatus:currentStatus underlyingDownloadPauseReasons:v6, downloadPausedReason];
}

- (void)calculateDownloadProgressWithIdentifyingModelObject:(id)object children:(id)children
{
  objectCopy = object;
  childrenCopy = children;
  MPModelObjectClass = getMPModelObjectClass();
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __118__MusicKit_SoftLinking_MPLibraryKeepLocalStatusObserver_calculateDownloadProgressWithIdentifyingModelObject_children___block_invoke;
  v11[3] = &unk_1E84C3EE0;
  v12 = objectCopy;
  v13 = childrenCopy;
  selfCopy = self;
  v9 = childrenCopy;
  v10 = objectCopy;
  [MPModelObjectClass performWithoutEnforcement:v11];
}

- (MusicKit_SoftLinking_MPLibraryActiveKeepLocalStatus)_activeKeepLocalStatusFromUnderlyingStatus:(SEL)status underlyingDownloadPauseReasons:(MPLibraryActiveKeepLocalStatus)reasons
{
  if ((reasons.var0 - 1) >= 6)
  {
    var0 = 0;
  }

  else
  {
    var0 = reasons.var0;
  }

  retstr->var0 = var0;
  retstr->var1 = a5 & 7;
  retstr->var2 = reasons.var1;
  return self;
}

- (void)_handleUpdatedUnderlyingActiveKeepLocalStatus:(MPLibraryActiveKeepLocalStatus)status
{
  var1 = status.var1;
  var0 = status.var0;
  downloadPausedReason = [(MPLibraryKeepLocalStatusObserver *)self->_underlyingLibraryKeepLocalStatusObserver downloadPausedReason];
  v11 = 0uLL;
  v12 = 0;
  [(MusicKit_SoftLinking_MPLibraryKeepLocalStatusObserver *)self _activeKeepLocalStatusFromUnderlyingStatus:var0 underlyingDownloadPauseReasons:*&var1, downloadPausedReason];
  statusBlock = self->_statusBlock;
  if (statusBlock)
  {
    v8 = statusBlock[2];
    v9 = v11;
    v10 = v12;
    v8(statusBlock, &v9);
  }
}

@end