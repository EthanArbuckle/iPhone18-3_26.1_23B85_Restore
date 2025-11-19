@interface NSDictionary
+ (NSDictionary)dictionaryWithJSONData:(id)a3 error:(id *)a4;
- (id)generateJSONDataWithError:(id *)a3;
- (id)generateJSONStringWithError:(id *)a3;
@end

@implementation NSDictionary

+ (NSDictionary)dictionaryWithJSONData:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = DebugHierarchyJSONProcessingOSLog();
  v8 = os_signpost_id_make_with_pointer(v7, a1);
  v9 = v7;
  v10 = v9;
  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
  {
    v18 = 134217984;
    v19 = [v6 length];
    _os_signpost_emit_with_name_impl(&dword_0, v10, OS_SIGNPOST_INTERVAL_BEGIN, v8, "JSON Data -> Dict", "Begin with size: %{xcode:size-in-bytes}lu", &v18, 0xCu);
  }

  v11 = [NSJSONSerialization JSONObjectWithData:v6 options:0 error:a4];
  if (v11)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v12 = [NSError errorWithDomain:@"Error: Unarchived JSON object is not an NSDictionary." code:-1 userInfo:0];
    }
  }

  v13 = DebugHierarchyJSONProcessingOSLog();
  v14 = os_signpost_id_make_with_pointer(v13, a1);
  v15 = v13;
  v16 = v15;
  if (v14 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v15))
  {
    LOWORD(v18) = 0;
    _os_signpost_emit_with_name_impl(&dword_0, v16, OS_SIGNPOST_INTERVAL_END, v14, "JSON Data -> Dict", "Completed", &v18, 2u);
  }

  return v11;
}

- (id)generateJSONDataWithError:(id *)a3
{
  v5 = DebugHierarchyJSONProcessingOSLog();
  v6 = os_signpost_id_make_with_pointer(v5, self);
  v7 = v5;
  v8 = v7;
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    LOWORD(v16) = 0;
    _os_signpost_emit_with_name_impl(&dword_0, v8, OS_SIGNPOST_INTERVAL_BEGIN, v6, "Dict -> JSON Data", "Begin", &v16, 2u);
  }

  v9 = [NSJSONSerialization dataWithJSONObject:self options:0 error:a3];
  v10 = DebugHierarchyJSONProcessingOSLog();
  v11 = os_signpost_id_make_with_pointer(v10, self);
  v12 = v10;
  v13 = v12;
  if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
  {
    v14 = [v9 length];
    v16 = 134217984;
    v17 = v14;
    _os_signpost_emit_with_name_impl(&dword_0, v13, OS_SIGNPOST_INTERVAL_END, v11, "Dict -> JSON Data", "Completed with size: %{xcode:size-in-bytes}lu", &v16, 0xCu);
  }

  return v9;
}

- (id)generateJSONStringWithError:(id *)a3
{
  v5 = DebugHierarchyJSONProcessingOSLog();
  v6 = os_signpost_id_make_with_pointer(v5, self);
  v7 = v5;
  v8 = v7;
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_0, v8, OS_SIGNPOST_INTERVAL_BEGIN, v6, "Dict -> JSON String", "Begin", buf, 2u);
  }

  v9 = [(NSDictionary *)self generateJSONDataWithError:a3];
  v10 = [[NSString alloc] initWithData:v9 encoding:4];
  v11 = DebugHierarchyJSONProcessingOSLog();
  v12 = os_signpost_id_make_with_pointer(v11, self);
  v13 = v11;
  v14 = v13;
  if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
  {
    *v16 = 0;
    _os_signpost_emit_with_name_impl(&dword_0, v14, OS_SIGNPOST_INTERVAL_END, v12, "Dict -> JSON String", "Completed", v16, 2u);
  }

  return v10;
}

@end