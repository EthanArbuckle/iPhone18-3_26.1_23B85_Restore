@interface MADEmbedding
+ (id)fetchEmbeddingWithAssetUUID:(id)d photoLibraryURL:(id)l options:(id)options error:(id *)error;
+ (id)fetchEmbeddingsWithAssetUUIDs:(id)ds photoLibraryURL:(id)l options:(id)options error:(id *)error;
+ (id)madEmbeddingFromCSEmbedding:(id)embedding;
+ (id)searchWithEmbeddings:(id)embeddings photoLibraryURL:(id)l options:(id)options error:(id *)error;
+ (void)prewarmSearchWithConcurrencyLimit:(unint64_t)limit photoLibraryURL:(id)l error:(id *)error;
- (MADEmbedding)initWithCoder:(id)coder;
- (MADEmbedding)initWithFormat:(int64_t)format dimension:(int64_t)dimension version:(int64_t)version vectors:(id)vectors;
- (_CSEmbedding)csEmbedding;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MADEmbedding

- (MADEmbedding)initWithFormat:(int64_t)format dimension:(int64_t)dimension version:(int64_t)version vectors:(id)vectors
{
  vectorsCopy = vectors;
  v15.receiver = self;
  v15.super_class = MADEmbedding;
  v12 = [(MADEmbedding *)&v15 init];
  v13 = v12;
  if (v12)
  {
    v12->_format = format;
    v12->_dimension = dimension;
    v12->_version = version;
    objc_storeStrong(&v12->_vectors, vectors);
  }

  return v13;
}

- (MADEmbedding)initWithCoder:(id)coder
{
  v15[3] = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v14.receiver = self;
  v14.super_class = MADEmbedding;
  v5 = [(MADEmbedding *)&v14 init];
  if (v5)
  {
    v5->_format = [coderCopy decodeIntegerForKey:@"Format"];
    v5->_dimension = [coderCopy decodeIntegerForKey:@"Dimension"];
    v5->_version = [coderCopy decodeIntegerForKey:@"Version"];
    v6 = MEMORY[0x1E695DFD8];
    v15[0] = objc_opt_class();
    v15[1] = objc_opt_class();
    v15[2] = objc_opt_class();
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:3];
    v8 = [v6 setWithArray:v7];

    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"Vectors"];
    vectors = v5->_vectors;
    v5->_vectors = v9;

    v11 = [coderCopy decodeObjectOfClasses:v8 forKey:@"ThumbnailIdentifiers"];
    thumbnailIdentifiers = v5->_thumbnailIdentifiers;
    v5->_thumbnailIdentifiers = v11;
  }

  return v5;
}

+ (id)madEmbeddingFromCSEmbedding:(id)embedding
{
  embeddingCopy = embedding;
  v4 = [MADEmbedding alloc];
  format = [embeddingCopy format];
  dimension = [embeddingCopy dimension];
  version = [embeddingCopy version];
  vectors = [embeddingCopy vectors];

  v9 = [(MADEmbedding *)v4 initWithFormat:format dimension:dimension version:version vectors:vectors];

  return v9;
}

- (_CSEmbedding)csEmbedding
{
  v2 = [objc_alloc(MEMORY[0x1E6964EE8]) initWithFormat:LODWORD(self->_format) dimension:LODWORD(self->_dimension) version:LOWORD(self->_version) vectors:self->_vectors];

  return v2;
}

- (void)encodeWithCoder:(id)coder
{
  format = self->_format;
  coderCopy = coder;
  [coderCopy encodeInteger:format forKey:@"Format"];
  [coderCopy encodeInteger:self->_dimension forKey:@"Dimension"];
  [coderCopy encodeInteger:self->_version forKey:@"Version"];
  [coderCopy encodeObject:self->_vectors forKey:@"Vectors"];
  [coderCopy encodeObject:self->_thumbnailIdentifiers forKey:@"ThumbnailIdentifiers"];
}

- (id)description
{
  string = [MEMORY[0x1E696AD60] string];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [string appendFormat:@"<%@ %p, ", v5, self];

  [string appendFormat:@"%@: %d, ", @"Format", self->_format];
  [string appendFormat:@"%@: %d, ", @"Dimension", self->_dimension];
  [string appendFormat:@"%@: %d, ", @"Version", self->_version];
  [string appendFormat:@"%@: %@, ", @"Vectors", self->_vectors];
  [string appendFormat:@"%@: %@>", @"ThumbnailIdentifiers", self->_thumbnailIdentifiers];

  return string;
}

+ (id)fetchEmbeddingWithAssetUUID:(id)d photoLibraryURL:(id)l options:(id)options error:(id *)error
{
  v24[1] = *MEMORY[0x1E69E9840];
  dCopy = d;
  lCopy = l;
  optionsCopy = options;
  if (dCopy)
  {
    v12 = +[MADEmbeddingStoreService sharedService];
    v13 = MEMORY[0x1E695DFD8];
    v22 = dCopy;
    v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v22 count:1];
    v15 = [v13 setWithArray:v14];
    v16 = [v12 fetchEmbeddingsWithAssetUUIDs:v15 photoLibraryURL:lCopy options:optionsCopy error:error];

    error = [v16 objectForKeyedSubscript:dCopy];
LABEL_8:

    goto LABEL_9;
  }

  if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    *v21 = 0;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[MADEmbedding] Failed to fetch embedding due to nil asset requested", v21, 2u);
  }

  if (error)
  {
    v17 = MEMORY[0x1E696ABC0];
    v18 = *MEMORY[0x1E696A768];
    v23 = *MEMORY[0x1E696A578];
    v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[MADEmbedding] nil asset requested"];
    v24[0] = v16;
    v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:&v23 count:1];
    *error = [v17 errorWithDomain:v18 code:-50 userInfo:v19];

    error = 0;
    goto LABEL_8;
  }

LABEL_9:

  return error;
}

+ (id)fetchEmbeddingsWithAssetUUIDs:(id)ds photoLibraryURL:(id)l options:(id)options error:(id *)error
{
  v20[1] = *MEMORY[0x1E69E9840];
  dsCopy = ds;
  lCopy = l;
  optionsCopy = options;
  if ([dsCopy count])
  {
    v12 = +[MADEmbeddingStoreService sharedService];
    error = [v12 fetchEmbeddingsWithAssetUUIDs:dsCopy photoLibraryURL:lCopy options:optionsCopy error:error];
  }

  else
  {
    if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *v18 = 0;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[MADEmbedding] Failed to fetch embedding due to 0 asset requested", v18, 2u);
    }

    if (error)
    {
      v13 = MEMORY[0x1E696ABC0];
      v14 = *MEMORY[0x1E696A768];
      v19 = *MEMORY[0x1E696A578];
      v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[MADEmbedding] 0 asset requested"];
      v20[0] = v15;
      v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:&v19 count:1];
      *error = [v13 errorWithDomain:v14 code:-50 userInfo:v16];

      error = 0;
    }
  }

  return error;
}

+ (id)searchWithEmbeddings:(id)embeddings photoLibraryURL:(id)l options:(id)options error:(id *)error
{
  v22 = *MEMORY[0x1E69E9840];
  embeddingsCopy = embeddings;
  lCopy = l;
  optionsCopy = options;
  if (embeddingsCopy && [embeddingsCopy count])
  {
    v12 = +[MADEmbeddingStoreService sharedService];
    error = [v12 searchWithEmbeddings:embeddingsCopy photoLibraryURL:lCopy options:optionsCopy error:error];
  }

  else
  {
    if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v21 = embeddingsCopy;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[MADEmbedding] Invalid incoming embeddings %@", buf, 0xCu);
    }

    if (error)
    {
      v13 = MEMORY[0x1E696ABC0];
      v14 = *MEMORY[0x1E696A768];
      v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[MADEmbedding] Invalid incoming embeddings", *MEMORY[0x1E696A578]];
      v19 = v15;
      v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v19 forKeys:&v18 count:1];
      *error = [v13 errorWithDomain:v14 code:-50 userInfo:v16];

      error = 0;
    }
  }

  return error;
}

+ (void)prewarmSearchWithConcurrencyLimit:(unint64_t)limit photoLibraryURL:(id)l error:(id *)error
{
  lCopy = l;
  v8 = +[MADEmbeddingStoreService sharedService];
  [v8 prewarmSearchWithConcurrencyLimit:limit photoLibraryURL:lCopy error:error];
}

@end