@interface CPLRecordChangeDiffTracker
- (BOOL)areObjectsDifferentOnProperty:(id)a3 changeType:(unint64_t)a4;
- (CPLRecordChangeDiffTracker)initWithTrackingChangeTypeMask:(unint64_t)a3;
- (NSArray)updatedProperties;
- (id)description;
- (id)redactedDescription;
- (void)withTrackerForChangeType:(unint64_t)a3 block:(id)a4;
@end

@implementation CPLRecordChangeDiffTracker

- (id)redactedDescription
{
  v2 = [(CPLDiffTracker *)self->_diffTracker description];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = @"[no differences]";
  }

  v5 = v4;

  return v4;
}

- (id)description
{
  v2 = [(CPLDiffTracker *)self->_diffTracker description];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = @"[no differences]";
  }

  v5 = v4;

  return v4;
}

- (BOOL)areObjectsDifferentOnProperty:(id)a3 changeType:(unint64_t)a4
{
  v24 = *MEMORY[0x1E69E9840];
  v7 = a3;
  trackingChangeType = self->_trackingChangeType;
  if (!trackingChangeType)
  {
    goto LABEL_7;
  }

  if ((a4 & 0xFFFFFFFFFFFFFBFFLL) == 0)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v14 = __CPLGenericOSLogDomain();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        *buf = 134217984;
        v21 = a4;
        _os_log_impl(&dword_1DC05A000, v14, OS_LOG_TYPE_ERROR, "Invalid change type %ld", buf, 0xCu);
      }
    }

    v15 = [MEMORY[0x1E696AAA8] currentHandler];
    v16 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Framework/Sources/CPLRecordChange.m"];
    [v15 handleFailureInMethod:a2 object:self file:v16 lineNumber:1569 description:{@"Invalid change type %ld", a4, v19}];
LABEL_19:

    abort();
  }

  v9 = trackingChangeType & a4;
  if (!v9)
  {
LABEL_7:
    v11 = 1;
    goto LABEL_8;
  }

  if (v9 != a4)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v17 = __CPLGenericOSLogDomain();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        v18 = self->_trackingChangeType;
        *buf = 134218240;
        v21 = a4;
        v22 = 2048;
        v23 = v18;
        _os_log_impl(&dword_1DC05A000, v17, OS_LOG_TYPE_ERROR, "Invalid change type %ld - tracked %ld", buf, 0x16u);
      }
    }

    v15 = [MEMORY[0x1E696AAA8] currentHandler];
    v16 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Framework/Sources/CPLRecordChange.m"];
    [v15 handleFailureInMethod:a2 object:self file:v16 lineNumber:1575 description:{@"Invalid change type %ld - tracked %ld", a4, self->_trackingChangeType}];
    goto LABEL_19;
  }

  diffTracker = self->_diffTracker;
  if (!diffTracker)
  {
    goto LABEL_7;
  }

  v11 = [(CPLDiffTracker *)diffTracker areObjectsDifferentOnProperty:v7];
LABEL_8:

  v12 = *MEMORY[0x1E69E9840];
  return v11;
}

- (NSArray)updatedProperties
{
  v2 = [(CPLDiffTracker *)self->_diffTracker differingProperties];
  v3 = [v2 allObjects];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = MEMORY[0x1E695E0F0];
  }

  v6 = v5;

  return v5;
}

- (void)withTrackerForChangeType:(unint64_t)a3 block:(id)a4
{
  v9 = a4;
  diffTracker = self->_diffTracker;
  if (!diffTracker)
  {
    v7 = objc_alloc_init(CPLDiffTracker);
    v8 = self->_diffTracker;
    self->_diffTracker = v7;

    diffTracker = self->_diffTracker;
  }

  [(CPLDiffTracker *)diffTracker setShouldCompareAllProperties:(self->_trackingChangeType & a3) != 0];
  v9[2](v9, self->_diffTracker);
}

- (CPLRecordChangeDiffTracker)initWithTrackingChangeTypeMask:(unint64_t)a3
{
  v5.receiver = self;
  v5.super_class = CPLRecordChangeDiffTracker;
  result = [(CPLRecordChangeDiffTracker *)&v5 init];
  if (result)
  {
    result->_trackingChangeType = a3;
  }

  return result;
}

@end