@interface MADTextInput
+ (int64_t)csuTokenizerRevision;
+ (int64_t)csuTokenizerRevisionForEmbeddingVersion:(unint64_t)version;
+ (int64_t)tokenizerRevision;
- (MADTextInput)init;
- (MADTextInput)initWithCoder:(id)coder;
- (MADTextInput)initWithText:(id)text;
- (id)description;
- (void)addEntityUUID:(id)d;
- (void)addText:(id)text;
- (void)addTokenIDs:(id)ds;
@end

@implementation MADTextInput

- (MADTextInput)init
{
  v6.receiver = self;
  v6.super_class = MADTextInput;
  v2 = [(MADTextInput *)&v6 init];
  if (v2)
  {
    array = [MEMORY[0x1E695DF70] array];
    segments = v2->_segments;
    v2->_segments = array;
  }

  return v2;
}

- (MADTextInput)initWithText:(id)text
{
  textCopy = text;
  v11.receiver = self;
  v11.super_class = MADTextInput;
  v5 = [(MADTextInput *)&v11 init];
  if (v5)
  {
    array = [MEMORY[0x1E695DF70] array];
    segments = v5->_segments;
    v5->_segments = array;

    v8 = v5->_segments;
    v9 = [[MADTextInputTextSegment alloc] initWithText:textCopy];
    [(NSMutableArray *)v8 addObject:v9];
  }

  return v5;
}

- (MADTextInput)initWithCoder:(id)coder
{
  v13[2] = *MEMORY[0x1E69E9840];
  coderCopy = coder;
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

    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"Segments"];
    segments = v5->_segments;
    v5->_segments = v9;
  }

  return v5;
}

- (void)addEntityUUID:(id)d
{
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    [MADTextInput addEntityUUID:];
  }
}

- (void)addText:(id)text
{
  segments = self->_segments;
  textCopy = text;
  v5 = [[MADTextInputTextSegment alloc] initWithText:textCopy];

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

+ (int64_t)csuTokenizerRevisionForEmbeddingVersion:(unint64_t)version
{
  versionCopy = version;
  v4 = version - 1;
  if (version - 1 < 9 && ((0x15Fu >> v4) & 1) != 0)
  {
    return qword_1C976DF38[v4];
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    [MADTextInput csuTokenizerRevisionForEmbeddingVersion:versionCopy];
  }

  return 0;
}

- (void)addTokenIDs:(id)ds
{
  segments = self->_segments;
  dsCopy = ds;
  v5 = [[MADTextInputTokenSegment alloc] initWithTokenIDs:dsCopy];

  [(NSMutableArray *)segments addObject:v5];
}

- (id)description
{
  string = [MEMORY[0x1E696AD60] string];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [string appendFormat:@"<%@ %p, ", v5, self];

  [string appendFormat:@"segments: %@>", self->_segments];

  return string;
}

+ (void)csuTokenizerRevisionForEmbeddingVersion:(int)a1 .cold.1(int a1)
{
  v2 = *MEMORY[0x1E69E9840];
  v1[0] = 67109120;
  v1[1] = a1;
  _os_log_error_impl(&dword_1C972C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Tokenizer revision unknown for specified embedding version (%d)", v1, 8u);
}

@end