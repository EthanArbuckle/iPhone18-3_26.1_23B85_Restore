@interface PKAllFilePathsFromDirectoryURLExcludingURLs
@end

@implementation PKAllFilePathsFromDirectoryURLExcludingURLs

uint64_t ___PKAllFilePathsFromDirectoryURLExcludingURLs_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = a2;
  v5 = a3;
  if (v5)
  {
    v6 = PKLogFacilityTypeGetObject(0);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v8 = [v5 description];
      v9 = [v4 absoluteString];
      v10 = 138412546;
      v11 = v8;
      v12 = 2112;
      v13 = v9;
      _os_log_error_impl(&dword_1AD337000, v6, OS_LOG_TYPE_ERROR, "Error: Failed to read directory contents: %@ at url: %@", &v10, 0x16u);
    }
  }

  return 1;
}

@end