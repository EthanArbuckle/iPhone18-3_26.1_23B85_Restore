@interface MADEmbedding
+ (id)fetchEmbeddingWithAssetUUID:(id)a3 photoLibraryURL:(id)a4 options:(id)a5 error:(id *)a6;
+ (id)fetchEmbeddingsWithAssetUUIDs:(id)a3 photoLibraryURL:(id)a4 options:(id)a5 error:(id *)a6;
+ (id)madEmbeddingFromCSEmbedding:(id)a3;
+ (id)searchWithEmbeddings:(id)a3 photoLibraryURL:(id)a4 options:(id)a5 error:(id *)a6;
+ (void)prewarmSearchWithConcurrencyLimit:(unint64_t)a3 photoLibraryURL:(id)a4 error:(id *)a5;
- (MADEmbedding)initWithCoder:(id)a3;
- (MADEmbedding)initWithFormat:(int64_t)a3 dimension:(int64_t)a4 version:(int64_t)a5 vectors:(id)a6;
- (_CSEmbedding)csEmbedding;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MADEmbedding

- (MADEmbedding)initWithFormat:(int64_t)a3 dimension:(int64_t)a4 version:(int64_t)a5 vectors:(id)a6
{
  v11 = a6;
  v15.receiver = self;
  v15.super_class = MADEmbedding;
  v12 = [(MADEmbedding *)&v15 init];
  v13 = v12;
  if (v12)
  {
    v12->_format = a3;
    v12->_dimension = a4;
    v12->_version = a5;
    objc_storeStrong(&v12->_vectors, a6);
  }

  return v13;
}

- (MADEmbedding)initWithCoder:(id)a3
{
  v15[3] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v14.receiver = self;
  v14.super_class = MADEmbedding;
  v5 = [(MADEmbedding *)&v14 init];
  if (v5)
  {
    v5->_format = [v4 decodeIntegerForKey:@"Format"];
    v5->_dimension = [v4 decodeIntegerForKey:@"Dimension"];
    v5->_version = [v4 decodeIntegerForKey:@"Version"];
    v6 = MEMORY[0x1E695DFD8];
    v15[0] = objc_opt_class();
    v15[1] = objc_opt_class();
    v15[2] = objc_opt_class();
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:3];
    v8 = [v6 setWithArray:v7];

    v9 = [v4 decodeObjectOfClasses:v8 forKey:@"Vectors"];
    vectors = v5->_vectors;
    v5->_vectors = v9;

    v11 = [v4 decodeObjectOfClasses:v8 forKey:@"ThumbnailIdentifiers"];
    thumbnailIdentifiers = v5->_thumbnailIdentifiers;
    v5->_thumbnailIdentifiers = v11;
  }

  return v5;
}

+ (id)madEmbeddingFromCSEmbedding:(id)a3
{
  v3 = a3;
  v4 = [MADEmbedding alloc];
  v5 = [v3 format];
  v6 = [v3 dimension];
  v7 = [v3 version];
  v8 = [v3 vectors];

  v9 = [(MADEmbedding *)v4 initWithFormat:v5 dimension:v6 version:v7 vectors:v8];

  return v9;
}

- (_CSEmbedding)csEmbedding
{
  v2 = [objc_alloc(MEMORY[0x1E6964EE8]) initWithFormat:LODWORD(self->_format) dimension:LODWORD(self->_dimension) version:LOWORD(self->_version) vectors:self->_vectors];

  return v2;
}

- (void)encodeWithCoder:(id)a3
{
  format = self->_format;
  v5 = a3;
  [v5 encodeInteger:format forKey:@"Format"];
  [v5 encodeInteger:self->_dimension forKey:@"Dimension"];
  [v5 encodeInteger:self->_version forKey:@"Version"];
  [v5 encodeObject:self->_vectors forKey:@"Vectors"];
  [v5 encodeObject:self->_thumbnailIdentifiers forKey:@"ThumbnailIdentifiers"];
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] string];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [v3 appendFormat:@"<%@ %p, ", v5, self];

  [v3 appendFormat:@"%@: %d, ", @"Format", self->_format];
  [v3 appendFormat:@"%@: %d, ", @"Dimension", self->_dimension];
  [v3 appendFormat:@"%@: %d, ", @"Version", self->_version];
  [v3 appendFormat:@"%@: %@, ", @"Vectors", self->_vectors];
  [v3 appendFormat:@"%@: %@>", @"ThumbnailIdentifiers", self->_thumbnailIdentifiers];

  return v3;
}

+ (id)fetchEmbeddingWithAssetUUID:(id)a3 photoLibraryURL:(id)a4 options:(id)a5 error:(id *)a6
{
  v24[1] = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (v9)
  {
    v12 = +[MADEmbeddingStoreService sharedService];
    v13 = MEMORY[0x1E695DFD8];
    v22 = v9;
    v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v22 count:1];
    v15 = [v13 setWithArray:v14];
    v16 = [v12 fetchEmbeddingsWithAssetUUIDs:v15 photoLibraryURL:v10 options:v11 error:a6];

    a6 = [v16 objectForKeyedSubscript:v9];
LABEL_8:

    goto LABEL_9;
  }

  if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    *v21 = 0;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[MADEmbedding] Failed to fetch embedding due to nil asset requested", v21, 2u);
  }

  if (a6)
  {
    v17 = MEMORY[0x1E696ABC0];
    v18 = *MEMORY[0x1E696A768];
    v23 = *MEMORY[0x1E696A578];
    v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[MADEmbedding] nil asset requested"];
    v24[0] = v16;
    v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:&v23 count:1];
    *a6 = [v17 errorWithDomain:v18 code:-50 userInfo:v19];

    a6 = 0;
    goto LABEL_8;
  }

LABEL_9:

  return a6;
}

+ (id)fetchEmbeddingsWithAssetUUIDs:(id)a3 photoLibraryURL:(id)a4 options:(id)a5 error:(id *)a6
{
  v20[1] = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if ([v9 count])
  {
    v12 = +[MADEmbeddingStoreService sharedService];
    a6 = [v12 fetchEmbeddingsWithAssetUUIDs:v9 photoLibraryURL:v10 options:v11 error:a6];
  }

  else
  {
    if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *v18 = 0;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[MADEmbedding] Failed to fetch embedding due to 0 asset requested", v18, 2u);
    }

    if (a6)
    {
      v13 = MEMORY[0x1E696ABC0];
      v14 = *MEMORY[0x1E696A768];
      v19 = *MEMORY[0x1E696A578];
      v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[MADEmbedding] 0 asset requested"];
      v20[0] = v15;
      v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:&v19 count:1];
      *a6 = [v13 errorWithDomain:v14 code:-50 userInfo:v16];

      a6 = 0;
    }
  }

  return a6;
}

+ (id)searchWithEmbeddings:(id)a3 photoLibraryURL:(id)a4 options:(id)a5 error:(id *)a6
{
  v22 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (v9 && [v9 count])
  {
    v12 = +[MADEmbeddingStoreService sharedService];
    a6 = [v12 searchWithEmbeddings:v9 photoLibraryURL:v10 options:v11 error:a6];
  }

  else
  {
    if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v21 = v9;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[MADEmbedding] Invalid incoming embeddings %@", buf, 0xCu);
    }

    if (a6)
    {
      v13 = MEMORY[0x1E696ABC0];
      v14 = *MEMORY[0x1E696A768];
      v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[MADEmbedding] Invalid incoming embeddings", *MEMORY[0x1E696A578]];
      v19 = v15;
      v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v19 forKeys:&v18 count:1];
      *a6 = [v13 errorWithDomain:v14 code:-50 userInfo:v16];

      a6 = 0;
    }
  }

  return a6;
}

+ (void)prewarmSearchWithConcurrencyLimit:(unint64_t)a3 photoLibraryURL:(id)a4 error:(id *)a5
{
  v7 = a4;
  v8 = +[MADEmbeddingStoreService sharedService];
  [v8 prewarmSearchWithConcurrencyLimit:a3 photoLibraryURL:v7 error:a5];
}

@end