@interface BMVanillaContainer
+ (id)containerForPersonaIdentifier:(id)a3 error:(id *)a4;
@end

@implementation BMVanillaContainer

+ (id)containerForPersonaIdentifier:(id)a3 error:(id *)a4
{
  v29 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (!container_query_create())
  {
    if (!a4)
    {
LABEL_11:
      v15 = 0;
      goto LABEL_15;
    }

LABEL_7:
    [MEMORY[0x1E696ABC0] errorWithDomain:@"BMAccessErrorDomain" code:10 userInfo:0];
    *a4 = v15 = 0;
    goto LABEL_15;
  }

  container_query_set_class();
  container_query_operation_set_flags();
  [v5 cStringUsingEncoding:4];
  container_query_set_persona_unique_string();
  v6 = xpc_string_create("com.apple.biomed");
  container_query_set_identifiers();

  if (!container_query_get_single_result())
  {
    container_query_get_last_error();
    v16 = container_error_copy_unlocalized_description();
    v17 = __biome_log_for_category(6);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [BMVanillaContainer containerForPersonaIdentifier:v16 error:v17];
    }

    free(v16);
    if (!a4)
    {
      goto LABEL_11;
    }

    goto LABEL_7;
  }

  v7 = [MEMORY[0x1E696AEC0] stringWithCString:container_get_path() encoding:4];
  v8 = [v7 stringByAppendingPathComponent:@"Biome"];

  v9 = [MEMORY[0x1E695DFF8] fileURLWithPath:v8];
  v10 = container_copy_sandbox_token();
  v11 = sandbox_extension_consume();
  v12 = __biome_log_for_category(6);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = objc_opt_class();
    if (v11 == -1)
    {
      v18 = __error();
      v14 = strerror(*v18);
    }

    else
    {
      v14 = "no error";
    }

    v21 = 138413058;
    v22 = v13;
    v23 = 2048;
    v24 = v10;
    v25 = 2048;
    v26 = v11;
    v27 = 2082;
    v28 = v14;
    _os_log_impl(&dword_1AC15D000, v12, OS_LOG_TYPE_DEFAULT, "%@ sandbox_extension_consume(%p) = %lld, %{public}s", &v21, 0x2Au);
  }

  container_query_free();
  free(v10);
  v15 = [objc_alloc(objc_opt_class()) initWithURL:v9 personaIdentifier:v5];

LABEL_15:
  v19 = *MEMORY[0x1E69E9840];

  return v15;
}

+ (void)containerForPersonaIdentifier:(uint64_t)a1 error:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 136315138;
  v4 = a1;
  _os_log_error_impl(&dword_1AC15D000, a2, OS_LOG_TYPE_ERROR, "Error executing query: %s", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

@end