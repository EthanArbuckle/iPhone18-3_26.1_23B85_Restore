@interface CLKUIMetalBinaryArchive
+ (id)archiveWithName:(id)a3 bundle:(id)a4 device:(id)a5;
- (BOOL)_shouldUseBinaryArchives;
- (CLKUIMetalBinaryArchive)initWithName:(id)a3 bundle:(id)a4 device:(id)a5;
- (id)loadMTLBinaryArchiveNamed:(id)a3 inBundle:(id)a4 forDevice:(id)a5;
- (id)newFunctionInLibrary:(id)a3 withDescriptor:(id)a4;
- (id)newRenderPipelineStateForDevice:(id)a3 withDescriptor:(id)a4;
- (void)logElapsedTimeWithStart:(double)a3 category:(unint64_t)a4 name:(id)a5 usingBinaryArchive:(BOOL)a6;
@end

@implementation CLKUIMetalBinaryArchive

- (BOOL)_shouldUseBinaryArchives
{
  v3 = [(CLKUIMetalBinaryArchive *)self _binaryArchivesFeatureEnabled];
  if (v3)
  {

    LOBYTE(v3) = [(CLKUIMetalBinaryArchive *)self _hasBinaryArchive];
  }

  return v3;
}

+ (id)archiveWithName:(id)a3 bundle:(id)a4 device:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = [[CLKUIMetalBinaryArchive alloc] initWithName:v9 bundle:v8 device:v7];

  return v10;
}

- (CLKUIMetalBinaryArchive)initWithName:(id)a3 bundle:(id)a4 device:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v18.receiver = self;
  v18.super_class = CLKUIMetalBinaryArchive;
  v12 = [(CLKUIMetalBinaryArchive *)&v18 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_archiveName, a3);
    if (![(CLKUIMetalBinaryArchive *)v13 _binaryArchivesFeatureEnabled])
    {
      v16 = _CLKUILoggingObjectForDomain(2, "CLKUILoggingDomainMetalBinaryArchives");
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        [CLKUIMetalBinaryArchive initWithName:bundle:device:];
      }

      goto LABEL_8;
    }

    v14 = [(CLKUIMetalBinaryArchive *)v13 loadMTLBinaryArchiveNamed:v9 inBundle:v10 forDevice:v11];
    mtlBinaryArchive = v13->_mtlBinaryArchive;
    v13->_mtlBinaryArchive = v14;

    if (![(CLKUIMetalBinaryArchive *)v13 _hasBinaryArchive])
    {
      v16 = _CLKUILoggingObjectForDomain(2, "CLKUILoggingDomainMetalBinaryArchives");
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        [CLKUIMetalBinaryArchive initWithName:bundle:device:];
      }

LABEL_8:
    }
  }

  return v13;
}

- (id)loadMTLBinaryArchiveNamed:(id)a3 inBundle:(id)a4 forDevice:(id)a5
{
  v37 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([(CLKUIMetalBinaryArchive *)self _binaryArchivesFeatureEnabled])
  {
    v11 = [v9 URLForResource:v8 withExtension:@"metallib"];
    if (v11)
    {
      v12 = CACurrentMediaTime();
      v13 = objc_opt_new();
      [v13 setUrl:v11];
      v24 = 0;
      v14 = [v10 newBinaryArchiveWithDescriptor:v13 error:&v24];
      v15 = v24;
      [(CLKUIMetalBinaryArchive *)self logElapsedTimeWithStart:0 category:v8 name:0 usingBinaryArchive:v12];
      if (!v14)
      {
        v16 = _CLKUILoggingObjectForDomain(2, "CLKUILoggingDomainMetalBinaryArchives");
        if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
        {
          v22 = [v9 bundleIdentifier];
          v23 = [v15 localizedDescription];
          *buf = 138413570;
          v26 = v8;
          v27 = 2112;
          v28 = v8;
          v29 = 2112;
          v30 = v22;
          v31 = 2112;
          v32 = v11;
          v33 = 2112;
          v34 = v10;
          v35 = 2112;
          v36 = v23;
          _os_log_fault_impl(&dword_1E49C8000, v16, OS_LOG_TYPE_FAULT, "[%@] Error: Found binary archive in bundle but failed to create MTLBinaryArchive; name=(%@) bundle=(%@) url=(%@) device=(%@); error=%@", buf, 0x3Eu);
        }
      }

      v17 = v14;

      v18 = v17;
    }

    else
    {
      v17 = _CLKUILoggingObjectForDomain(2, "CLKUILoggingDomainMetalBinaryArchives");
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        v21 = [v9 bundleIdentifier];
        *buf = 138413058;
        v26 = v8;
        v27 = 2112;
        v28 = v8;
        v29 = 2112;
        v30 = v21;
        v31 = 2112;
        v32 = v10;
        _os_log_error_impl(&dword_1E49C8000, v17, OS_LOG_TYPE_ERROR, "[%@] Failed to find URL for (%@.metallib) in bundle (%@) for device (%@)", buf, 0x2Au);
      }

      v18 = 0;
    }
  }

  else
  {
    v11 = _CLKUILoggingObjectForDomain(2, "CLKUILoggingDomainMetalBinaryArchives");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      v20 = [v9 bundleIdentifier];
      *buf = 138413058;
      v26 = v8;
      v27 = 2112;
      v28 = v8;
      v29 = 2112;
      v30 = v20;
      v31 = 2112;
      v32 = v10;
      _os_log_debug_impl(&dword_1E49C8000, v11, OS_LOG_TYPE_DEBUG, "[%@] Tried to load MTLBinaryArchive named (%@) in bundle (%@) for device (%@) BUT the feature isn't enabled", buf, 0x2Au);
    }

    v18 = 0;
  }

  return v18;
}

- (id)newFunctionInLibrary:(id)a3 withDescriptor:(id)a4
{
  v26[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if ([(CLKUIMetalBinaryArchive *)self _binaryArchivesFeatureEnabled])
  {
    if ([(CLKUIMetalBinaryArchive *)self _hasBinaryArchive])
    {
      v26[0] = self->_mtlBinaryArchive;
      v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:1];
      [v7 setBinaryArchives:v8];
    }

    else
    {
      v8 = _CLKUILoggingObjectForDomain(2, "CLKUILoggingDomainMetalBinaryArchives");
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        [CLKUIMetalBinaryArchive newFunctionInLibrary:withDescriptor:];
      }
    }
  }

  v9 = CACurrentMediaTime();
  v10 = [v6 newFunctionWithDescriptor:v7 error:0];
  v11 = [v7 name];
  [(CLKUIMetalBinaryArchive *)self logElapsedTimeWithStart:2 category:v11 name:[(CLKUIMetalBinaryArchive *)self _shouldUseBinaryArchives] usingBinaryArchive:v9];

  if (!v10)
  {
    v12 = _CLKUILoggingObjectForDomain(2, "CLKUILoggingDomainMetalBinaryArchives");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      archiveName = self->_archiveName;
      if ([(CLKUIMetalBinaryArchive *)self _hasBinaryArchive])
      {
        v15 = @"with";
      }

      else
      {
        v15 = @"without";
      }

      v16 = [v7 name];
      v17 = [v6 label];
      v18 = 138413058;
      v19 = archiveName;
      v20 = 2112;
      v21 = v15;
      v22 = 2112;
      v23 = v16;
      v24 = 2112;
      v25 = v17;
      _os_log_fault_impl(&dword_1E49C8000, v12, OS_LOG_TYPE_FAULT, "[%@] Error creating a MTLFunction %@ a MTLBinaryArchive; function=(%@) library=(%@)", &v18, 0x2Au);
    }
  }

  return v10;
}

- (id)newRenderPipelineStateForDevice:(id)a3 withDescriptor:(id)a4
{
  v41[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (![(CLKUIMetalBinaryArchive *)self _binaryArchivesFeatureEnabled])
  {
LABEL_14:
    v13 = 0;
    v10 = 0;
    goto LABEL_15;
  }

  if (![(CLKUIMetalBinaryArchive *)self _hasBinaryArchive])
  {
    v15 = _CLKUILoggingObjectForDomain(2, "CLKUILoggingDomainMetalBinaryArchives");
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      [CLKUIMetalBinaryArchive newRenderPipelineStateForDevice:withDescriptor:];
    }

    goto LABEL_14;
  }

  v41[0] = self->_mtlBinaryArchive;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v41 count:1];
  [v7 setBinaryArchives:v8];

  v9 = CACurrentMediaTime();
  v30 = 0;
  v10 = [v6 newRenderPipelineStateWithDescriptor:v7 options:4 reflection:0 error:&v30];
  v11 = v30;
  v12 = [v7 label];
  [(CLKUIMetalBinaryArchive *)self logElapsedTimeWithStart:1 category:v12 name:1 usingBinaryArchive:v9];

  if (!v10 || (v13 = 0, v11))
  {
    v14 = _CLKUILoggingObjectForDomain(2, "CLKUILoggingDomainMetalBinaryArchives");
    if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
    {
      archiveName = self->_archiveName;
      v27 = [v7 label];
      v28 = [v11 localizedDescription];
      *buf = 138413314;
      v32 = archiveName;
      v33 = 2112;
      v34 = v10;
      v35 = 2112;
      v36 = v27;
      v37 = 2112;
      v38 = v6;
      v39 = 2112;
      v40 = v28;
      _os_log_fault_impl(&dword_1E49C8000, v14, OS_LOG_TYPE_FAULT, "[%@] Error creating a MTLRenderPipelineState with a MTLBinaryArchive; state=(%@) shader=(%@) device=(%@); error=%@", buf, 0x34u);
    }

    v13 = v11;
  }

  if (v10 && !v13)
  {
    goto LABEL_17;
  }

LABEL_15:
  v16 = v10;

  v17 = CACurrentMediaTime();
  v29 = 0;
  v10 = [v6 newRenderPipelineStateWithDescriptor:v7 error:&v29];
  v18 = v29;

  v19 = [v7 label];
  [(CLKUIMetalBinaryArchive *)self logElapsedTimeWithStart:1 category:v19 name:0 usingBinaryArchive:v17];

  if (v10 && !v18)
  {
LABEL_17:
    v10 = v10;
    v18 = 0;
    v20 = v10;
    goto LABEL_21;
  }

  v21 = _CLKUILoggingObjectForDomain(2, "CLKUILoggingDomainMetalBinaryArchives");
  if (os_log_type_enabled(v21, OS_LOG_TYPE_FAULT))
  {
    v23 = self->_archiveName;
    v24 = [v7 label];
    v25 = [v18 localizedDescription];
    *buf = 138413314;
    v32 = v23;
    v33 = 2112;
    v34 = v10;
    v35 = 2112;
    v36 = v24;
    v37 = 2112;
    v38 = v6;
    v39 = 2112;
    v40 = v25;
    _os_log_fault_impl(&dword_1E49C8000, v21, OS_LOG_TYPE_FAULT, "[%@] Error creating a MTLRenderPipelineState without a MTLBinaryArchive; state=(%@) shader=(%@) device=(%@); error=%@", buf, 0x34u);
  }

  v20 = 0;
LABEL_21:

  return v20;
}

- (void)logElapsedTimeWithStart:(double)a3 category:(unint64_t)a4 name:(id)a5 usingBinaryArchive:(BOOL)a6
{
  v6 = a6;
  v33 = *MEMORY[0x1E69E9840];
  v10 = a5;
  v11 = (CACurrentMediaTime() - a3) * 1000.0;
  v12 = @"Binary Archive";
  if (a4 == 1)
  {
    v12 = @"Render Pipeline";
  }

  if (a4 == 2)
  {
    v12 = @"Function";
  }

  v13 = v12;
  v14 = _CLKUILoggingObjectForDomain(2, "CLKUILoggingDomainMetalBinaryArchives");
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    archiveName = self->_archiveName;
    if (v6)
    {
      v17 = @"YES";
    }

    else
    {
      v17 = @"NO";
    }

    if ([(CLKUIMetalBinaryArchive *)self _hasBinaryArchive])
    {
      v18 = self->_archiveName;
    }

    else
    {
      v18 = @"nil";
    }

    v21 = 138413570;
    v22 = archiveName;
    v23 = 2048;
    v24 = *&v11;
    v25 = 2112;
    v26 = v13;
    v27 = 2112;
    v28 = v10;
    v29 = 2112;
    v30 = *&v17;
    v31 = 2112;
    v32 = v18;
    _os_log_debug_impl(&dword_1E49C8000, v14, OS_LOG_TYPE_DEBUG, "[%@] Took (%g ms) to create the (%@) named (%@); usingBinaryArchive=(%@), archive=(%@)", &v21, 0x3Eu);
  }

  if ([(CLKUIMetalBinaryArchive *)self _hasBinaryArchive]&& v6 && v11 >= 32.0)
  {
    v15 = _CLKUILoggingObjectForDomain(2, "CLKUILoggingDomainMetalBinaryArchives");
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v19 = self->_archiveName;
      if ([(CLKUIMetalBinaryArchive *)self _hasBinaryArchive])
      {
        v20 = self->_archiveName;
      }

      else
      {
        v20 = @"nil";
      }

      v21 = 138413570;
      v22 = v19;
      v23 = 2048;
      v24 = 0x4040000000000000;
      v25 = 2112;
      v26 = v13;
      v27 = 2112;
      v28 = v10;
      v29 = 2048;
      v30 = v11;
      v31 = 2112;
      v32 = v20;
      _os_log_error_impl(&dword_1E49C8000, v15, OS_LOG_TYPE_ERROR, "[%@] ERROR: Exceeded (%g ms) using a MTLBinaryArchive to create the (%@) named (%@)! totalDuration=(%g ms), archive=(%@)", &v21, 0x3Eu);
    }
  }
}

- (void)initWithName:bundle:device:.cold.2()
{
  v2 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(&dword_1E49C8000, v0, OS_LOG_TYPE_ERROR, "[%@] Created a CLKUIMetalBinaryArchive object with name (%@) but MTLBinaryArchive failed to load", v1, 0x16u);
}

@end