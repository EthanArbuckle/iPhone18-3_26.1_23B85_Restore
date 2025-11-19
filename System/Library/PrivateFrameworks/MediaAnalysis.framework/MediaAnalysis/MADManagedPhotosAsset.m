@interface MADManagedPhotosAsset
- (id)description;
- (void)addResult:(id)a3;
- (void)removeResult:(id)a3;
@end

@implementation MADManagedPhotosAsset

- (void)addResult:(id)a3
{
  if (!a3)
  {
    [0 setAsset:self];
  }
}

- (void)removeResult:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4)
  {
    v5 = mach_continuous_time();
    v6 = [(MADManagedPhotosAsset *)self managedObjectContext];
    [v6 deleteObject:v4];

    v7 = VCPSignPostPersistentLog();
    v8 = VCPSignPostPersistentLog();
    v9 = os_signpost_id_generate(v8);

    if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
    {
      v10 = qos_class_self();
      v11 = VCPMAQoSDescription(v10);
      v12 = 134349826;
      v13 = v5;
      v14 = 2082;
      v15 = "RemoveResult";
      v16 = 2082;
      v17 = [v11 UTF8String];
      v18 = 2050;
      v19 = 1;
      _os_signpost_emit_with_name_impl(&dword_1C9B70000, v7, OS_SIGNPOST_EVENT, v9, "CoreDataPersistence", "%{public, signpost.description:begin_time}llu Type=%{public, signpost.telemetry:string1}s QoS=%{public, signpost.telemetry:string2}s Rows=%{public, signpost.telemetry:number1}lld  enableTelemetry=YES ", &v12, 0x2Au);
    }
  }

  else if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
  {
    LOWORD(v12) = 0;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "[MACD|Asset] Does not contain result", &v12, 2u);
  }
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] string];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [v3 appendFormat:@"<%@ %p, ", v5, self];

  v6 = [objc_opt_class() localIdentifierColumnName];
  v7 = [(MADManagedPhotosAsset *)self localIdentifier];
  [v3 appendFormat:@"%@: %@, ", v6, v7];

  v8 = [objc_opt_class() versionColumnName];
  [v3 appendFormat:@"%@: %d, ", v8, -[MADManagedPhotosAsset version](self, "version")];

  v9 = [objc_opt_class() dateModifiedColumnName];
  v10 = [(MADManagedPhotosAsset *)self dateModified];
  [v3 appendFormat:@"%@: %@, ", v9, v10];

  v11 = [objc_opt_class() dateAnalyzedColumnName];
  v12 = [(MADManagedPhotosAsset *)self dateAnalyzed];
  [v3 appendFormat:@"%@: %@, ", v11, v12];

  v13 = [objc_opt_class() analysisTypesColumnName];
  [v3 appendFormat:@"%@: %lld, ", v13, -[MADManagedPhotosAsset analysisTypes](self, "analysisTypes")];

  v14 = [objc_opt_class() flagsColumnName];
  [v3 appendFormat:@"%@: %lld, ", v14, -[MADManagedPhotosAsset flags](self, "flags")];

  v15 = [objc_opt_class() qualityColumnName];
  [(MADManagedPhotosAsset *)self quality];
  [v3 appendFormat:@"%@: %f, ", v15, v16];

  v17 = [objc_opt_class() statsFlagsColumnName];
  [v3 appendFormat:@"%@: %lld, ", v17, -[MADManagedPhotosAsset statsFlags](self, "statsFlags")];

  v18 = [(MADManagedPhotosAsset *)self results];
  [v3 appendFormat:@"results.count: %d>", objc_msgSend(v18, "count")];

  return v3;
}

@end