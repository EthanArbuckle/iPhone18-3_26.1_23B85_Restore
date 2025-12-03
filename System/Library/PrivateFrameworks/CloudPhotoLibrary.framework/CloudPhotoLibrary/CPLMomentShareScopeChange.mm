@interface CPLMomentShareScopeChange
- (id)momentShare;
- (void)setLibraryInfo:(id)info;
- (void)updateScopeFromScopeChange:(id)change direction:(unint64_t)direction didHaveChanges:(BOOL *)changes;
@end

@implementation CPLMomentShareScopeChange

- (void)updateScopeFromScopeChange:(id)change direction:(unint64_t)direction didHaveChanges:(BOOL *)changes
{
  v38 = *MEMORY[0x1E69E9840];
  changeCopy = change;
  v31.receiver = self;
  v31.super_class = CPLMomentShareScopeChange;
  [(CPLScopeChange *)&v31 updateScopeFromScopeChange:changeCopy direction:direction didHaveChanges:changes];
  if (direction != 1)
  {
    goto LABEL_35;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_35;
  }

  scopeType = [changeCopy scopeType];
  title = [changeCopy title];
  title2 = [(CPLScopeChange *)self title];
  v12 = title2;
  if (title && title2)
  {
    v13 = [title isEqual:title2];

    if (v13)
    {
      goto LABEL_14;
    }

LABEL_8:
    if (scopeType == 2)
    {
      title3 = [changeCopy title];
      [(CPLScopeChange *)self setTitle:title3];

      *changes = 1;
    }

    else if ((_CPLSilentLogging & 1) == 0)
    {
      v15 = __CPLGenericOSLogDomain();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        title4 = [(CPLScopeChange *)self title];
        title5 = [changeCopy title];
        *buf = 138412802;
        selfCopy4 = self;
        v34 = 2112;
        v35 = title4;
        v36 = 2112;
        v37 = title5;
        _os_log_impl(&dword_1DC05A000, v15, OS_LOG_TYPE_ERROR, "Client is trying to update title on %@ from %@ to %@", buf, 0x20u);
      }
    }

    goto LABEL_14;
  }

  if (title | v12)
  {
    goto LABEL_8;
  }

LABEL_14:
  promisedAssetCount = [changeCopy promisedAssetCount];
  if (promisedAssetCount != [(CPLMomentShareScopeChange *)self promisedAssetCount])
  {
    if (scopeType == 2)
    {
      -[CPLMomentShareScopeChange setPromisedAssetCount:](self, "setPromisedAssetCount:", [changeCopy promisedAssetCount]);
    }

    else if ((_CPLSilentLogging & 1) == 0)
    {
      v19 = __CPLGenericOSLogDomain();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        promisedAssetCount2 = [(CPLMomentShareScopeChange *)self promisedAssetCount];
        promisedAssetCount3 = [changeCopy promisedAssetCount];
        *buf = 138412802;
        selfCopy4 = self;
        v34 = 2048;
        v35 = promisedAssetCount2;
        v36 = 2048;
        v37 = promisedAssetCount3;
        _os_log_impl(&dword_1DC05A000, v19, OS_LOG_TYPE_ERROR, "Client is trying to update promisedAssetCount on %@ from %ld to %ld", buf, 0x20u);
      }
    }
  }

  promisedPhotosCount = [changeCopy promisedPhotosCount];
  if (promisedPhotosCount != [(CPLMomentShareScopeChange *)self promisedPhotosCount])
  {
    if (scopeType == 2)
    {
      -[CPLMomentShareScopeChange setPromisedPhotosCount:](self, "setPromisedPhotosCount:", [changeCopy promisedPhotosCount]);
    }

    else if ((_CPLSilentLogging & 1) == 0)
    {
      v23 = __CPLGenericOSLogDomain();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        promisedPhotosCount2 = [(CPLMomentShareScopeChange *)self promisedPhotosCount];
        promisedPhotosCount3 = [changeCopy promisedPhotosCount];
        *buf = 138412802;
        selfCopy4 = self;
        v34 = 2048;
        v35 = promisedPhotosCount2;
        v36 = 2048;
        v37 = promisedPhotosCount3;
        _os_log_impl(&dword_1DC05A000, v23, OS_LOG_TYPE_ERROR, "Client is trying to update promisedPhotosCount on %@ from %ld to %ld", buf, 0x20u);
      }
    }
  }

  promisedVideosCount = [changeCopy promisedVideosCount];
  if (promisedVideosCount != [(CPLMomentShareScopeChange *)self promisedVideosCount])
  {
    if (scopeType == 2)
    {
      -[CPLMomentShareScopeChange setPromisedVideosCount:](self, "setPromisedVideosCount:", [changeCopy promisedVideosCount]);
    }

    else if ((_CPLSilentLogging & 1) == 0)
    {
      v27 = __CPLGenericOSLogDomain();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        promisedVideosCount2 = [(CPLMomentShareScopeChange *)self promisedVideosCount];
        promisedVideosCount3 = [changeCopy promisedVideosCount];
        *buf = 138412802;
        selfCopy4 = self;
        v34 = 2048;
        v35 = promisedVideosCount2;
        v36 = 2048;
        v37 = promisedVideosCount3;
        _os_log_impl(&dword_1DC05A000, v27, OS_LOG_TYPE_ERROR, "Client is trying to update promisedVideosCount on %@ from %ld to %ld", buf, 0x20u);
      }
    }
  }

LABEL_35:

  v30 = *MEMORY[0x1E69E9840];
}

- (void)setLibraryInfo:(id)info
{
  infoCopy = info;
  momentShare = [infoCopy momentShare];
  v6 = momentShare;
  if (momentShare)
  {
    [momentShare updateScopeChange:self];
    v7 = [infoCopy copy];

    [v7 setMomentShare:0];
    infoCopy = v7;
  }

  v8.receiver = self;
  v8.super_class = CPLMomentShareScopeChange;
  [(CPLScopeChange *)&v8 setLibraryInfo:infoCopy];
}

- (id)momentShare
{
  v2 = [[CPLMomentShare alloc] initWithScopeChange:self];

  return v2;
}

@end