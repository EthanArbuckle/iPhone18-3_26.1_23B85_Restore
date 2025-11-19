@interface CPLMomentShareScopeChange
- (id)momentShare;
- (void)setLibraryInfo:(id)a3;
- (void)updateScopeFromScopeChange:(id)a3 direction:(unint64_t)a4 didHaveChanges:(BOOL *)a5;
@end

@implementation CPLMomentShareScopeChange

- (void)updateScopeFromScopeChange:(id)a3 direction:(unint64_t)a4 didHaveChanges:(BOOL *)a5
{
  v38 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v31.receiver = self;
  v31.super_class = CPLMomentShareScopeChange;
  [(CPLScopeChange *)&v31 updateScopeFromScopeChange:v8 direction:a4 didHaveChanges:a5];
  if (a4 != 1)
  {
    goto LABEL_35;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_35;
  }

  v9 = [v8 scopeType];
  v10 = [v8 title];
  v11 = [(CPLScopeChange *)self title];
  v12 = v11;
  if (v10 && v11)
  {
    v13 = [v10 isEqual:v11];

    if (v13)
    {
      goto LABEL_14;
    }

LABEL_8:
    if (v9 == 2)
    {
      v14 = [v8 title];
      [(CPLScopeChange *)self setTitle:v14];

      *a5 = 1;
    }

    else if ((_CPLSilentLogging & 1) == 0)
    {
      v15 = __CPLGenericOSLogDomain();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v16 = [(CPLScopeChange *)self title];
        v17 = [v8 title];
        *buf = 138412802;
        v33 = self;
        v34 = 2112;
        v35 = v16;
        v36 = 2112;
        v37 = v17;
        _os_log_impl(&dword_1DC05A000, v15, OS_LOG_TYPE_ERROR, "Client is trying to update title on %@ from %@ to %@", buf, 0x20u);
      }
    }

    goto LABEL_14;
  }

  if (v10 | v12)
  {
    goto LABEL_8;
  }

LABEL_14:
  v18 = [v8 promisedAssetCount];
  if (v18 != [(CPLMomentShareScopeChange *)self promisedAssetCount])
  {
    if (v9 == 2)
    {
      -[CPLMomentShareScopeChange setPromisedAssetCount:](self, "setPromisedAssetCount:", [v8 promisedAssetCount]);
    }

    else if ((_CPLSilentLogging & 1) == 0)
    {
      v19 = __CPLGenericOSLogDomain();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        v20 = [(CPLMomentShareScopeChange *)self promisedAssetCount];
        v21 = [v8 promisedAssetCount];
        *buf = 138412802;
        v33 = self;
        v34 = 2048;
        v35 = v20;
        v36 = 2048;
        v37 = v21;
        _os_log_impl(&dword_1DC05A000, v19, OS_LOG_TYPE_ERROR, "Client is trying to update promisedAssetCount on %@ from %ld to %ld", buf, 0x20u);
      }
    }
  }

  v22 = [v8 promisedPhotosCount];
  if (v22 != [(CPLMomentShareScopeChange *)self promisedPhotosCount])
  {
    if (v9 == 2)
    {
      -[CPLMomentShareScopeChange setPromisedPhotosCount:](self, "setPromisedPhotosCount:", [v8 promisedPhotosCount]);
    }

    else if ((_CPLSilentLogging & 1) == 0)
    {
      v23 = __CPLGenericOSLogDomain();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        v24 = [(CPLMomentShareScopeChange *)self promisedPhotosCount];
        v25 = [v8 promisedPhotosCount];
        *buf = 138412802;
        v33 = self;
        v34 = 2048;
        v35 = v24;
        v36 = 2048;
        v37 = v25;
        _os_log_impl(&dword_1DC05A000, v23, OS_LOG_TYPE_ERROR, "Client is trying to update promisedPhotosCount on %@ from %ld to %ld", buf, 0x20u);
      }
    }
  }

  v26 = [v8 promisedVideosCount];
  if (v26 != [(CPLMomentShareScopeChange *)self promisedVideosCount])
  {
    if (v9 == 2)
    {
      -[CPLMomentShareScopeChange setPromisedVideosCount:](self, "setPromisedVideosCount:", [v8 promisedVideosCount]);
    }

    else if ((_CPLSilentLogging & 1) == 0)
    {
      v27 = __CPLGenericOSLogDomain();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        v28 = [(CPLMomentShareScopeChange *)self promisedVideosCount];
        v29 = [v8 promisedVideosCount];
        *buf = 138412802;
        v33 = self;
        v34 = 2048;
        v35 = v28;
        v36 = 2048;
        v37 = v29;
        _os_log_impl(&dword_1DC05A000, v27, OS_LOG_TYPE_ERROR, "Client is trying to update promisedVideosCount on %@ from %ld to %ld", buf, 0x20u);
      }
    }
  }

LABEL_35:

  v30 = *MEMORY[0x1E69E9840];
}

- (void)setLibraryInfo:(id)a3
{
  v4 = a3;
  v5 = [v4 momentShare];
  v6 = v5;
  if (v5)
  {
    [v5 updateScopeChange:self];
    v7 = [v4 copy];

    [v7 setMomentShare:0];
    v4 = v7;
  }

  v8.receiver = self;
  v8.super_class = CPLMomentShareScopeChange;
  [(CPLScopeChange *)&v8 setLibraryInfo:v4];
}

- (id)momentShare
{
  v2 = [[CPLMomentShare alloc] initWithScopeChange:self];

  return v2;
}

@end