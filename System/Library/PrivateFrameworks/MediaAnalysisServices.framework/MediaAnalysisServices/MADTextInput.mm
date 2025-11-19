@interface MADTextInput
+ (int64_t)csuTokenizerRevision;
+ (int64_t)csuTokenizerRevisionForEmbeddingVersion:(unint64_t)a3;
+ (int64_t)tokenizerRevision;
- (MADTextInput)init;
- (MADTextInput)initWithCoder:(id)a3;
- (MADTextInput)initWithText:(id)a3;
- (id)description;
- (void)addEntityUUID:(id)a3;
- (void)addText:(id)a3;
- (void)addTokenIDs:(id)a3;
@end

@implementation MADTextInput

- (MADTextInput)init
{
  v6.receiver = self;
  v6.super_class = MADTextInput;
  v2 = [(MADTextInput *)&v6 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E695DF70] array];
    segments = v2->_segments;
    v2->_segments = v3;
  }

  return v2;
}

- (MADTextInput)initWithText:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = MADTextInput;
  v5 = [(MADTextInput *)&v11 init];
  if (v5)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    segments = v5->_segments;
    v5->_segments = v6;

    v8 = v5->_segments;
    v9 = [[MADTextInputTextSegment alloc] initWithText:v4];
    [(NSMutableArray *)v8 addObject:v9];
  }

  return v5;
}

- (MADTextInput)initWithCoder:(id)a3
{
  v13[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v12.receiver = self;
  v12.super_class = MADTextInput;
  v5 = [(MADTextInput *)&v12 init];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v13[0] = objc_opt_class();
    v13[1] = objc_opt_class();
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:2];
    v8 = [v6 setWithArray:v7];

    v9 = [v4 decodeObjectOfClasses:v8 forKey:@"Segments"];
    segments = v5->_segments;
    v5->_segments = v9;
  }

  return v5;
}

- (void)addEntityUUID:(id)a3
{
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    [MADTextInput addEntityUUID:];
  }
}

- (void)addText:(id)a3
{
  segments = self->_segments;
  v4 = a3;
  v5 = [[MADTextInputTextSegment alloc] initWithText:v4];

  [(NSMutableArray *)segments addObject:v5];
}

+ (int64_t)tokenizerRevision
{
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    +[MADTextInput tokenizerRevision];
  }

  return 0x7FFFFFFFFFFFFFFFLL;
}

+ (int64_t)csuTokenizerRevision
{
  if (_os_feature_enabled_impl())
  {
    return 11;
  }

  else
  {
    return 10;
  }
}

+ (int64_t)csuTokenizerRevisionForEmbeddingVersion:(unint64_t)a3
{
  v3 = a3;
  v4 = a3 - 1;
  if (a3 - 1 < 9 && ((0x15Fu >> v4) & 1) != 0)
  {
    return qword_1C976DF38[v4];
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    [MADTextInput csuTokenizerRevisionForEmbeddingVersion:v3];
  }

  return 0;
}

- (void)addTokenIDs:(id)a3
{
  segments = self->_segments;
  v4 = a3;
  v5 = [[MADTextInputTokenSegment alloc] initWithTokenIDs:v4];

  [(NSMutableArray *)segments addObject:v5];
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] string];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [v3 appendFormat:@"<%@ %p, ", v5, self];

  [v3 appendFormat:@"segments: %@>", self->_segments];

  return v3;
}

+ (void)csuTokenizerRevisionForEmbeddingVersion:(int)a1 .cold.1(int a1)
{
  v2 = *MEMORY[0x1E69E9840];
  v1[0] = 67109120;
  v1[1] = a1;
  _os_log_error_impl(&dword_1C972C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Tokenizer revision unknown for specified embedding version (%d)", v1, 8u);
}

@end