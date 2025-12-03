@interface MADMultiModalInput
- (BOOL)_addPixelBuffer:(__CVBuffer *)buffer seed:(id)seed error:(id *)error;
- (BOOL)addEntityUUID:(id)d error:(id *)error;
- (BOOL)addEntityUUID:(id)d seed:(unint64_t)seed error:(id *)error;
- (BOOL)addFaceprint:(id)faceprint error:(id *)error;
- (BOOL)addPersonDescription:(id)description error:(id *)error;
- (BOOL)addPixelBuffer:(__CVBuffer *)buffer seed:(unint64_t)seed error:(id *)error;
- (BOOL)addText:(id)text error:(id *)error;
- (MADMultiModalInput)init;
- (MADMultiModalInput)initWithCoder:(id)coder;
- (MADMultiModalInput)initWithText:(id)text;
- (id)description;
@end

@implementation MADMultiModalInput

- (MADMultiModalInput)init
{
  v6.receiver = self;
  v6.super_class = MADMultiModalInput;
  v2 = [(MADMultiModalInput *)&v6 init];
  if (v2)
  {
    array = [MEMORY[0x1E695DF70] array];
    segments = v2->_segments;
    v2->_segments = array;
  }

  return v2;
}

- (MADMultiModalInput)initWithText:(id)text
{
  textCopy = text;
  v11.receiver = self;
  v11.super_class = MADMultiModalInput;
  v5 = [(MADMultiModalInput *)&v11 init];
  if (v5)
  {
    array = [MEMORY[0x1E695DF70] array];
    segments = v5->_segments;
    v5->_segments = array;

    v8 = v5->_segments;
    v9 = [[MADMultiModalInputTextSegment alloc] initWithText:textCopy];
    [(NSMutableArray *)v8 addObject:v9];
  }

  return v5;
}

- (MADMultiModalInput)initWithCoder:(id)coder
{
  v13[2] = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v12.receiver = self;
  v12.super_class = MADMultiModalInput;
  v5 = [(MADMultiModalInput *)&v12 init];
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

- (BOOL)addText:(id)text error:(id *)error
{
  segments = self->_segments;
  textCopy = text;
  v6 = [[MADMultiModalInputTextSegment alloc] initWithText:textCopy];

  [(NSMutableArray *)segments addObject:v6];
  return 1;
}

- (BOOL)addEntityUUID:(id)d error:(id *)error
{
  v11[1] = *MEMORY[0x1E69E9840];
  if (error)
  {
    v5 = MEMORY[0x1E696ABC0];
    v6 = *MEMORY[0x1E696A768];
    v10 = *MEMORY[0x1E696A578];
    v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Adding entity multi modal inputs are no longer supported"];
    v11[0] = v7;
    v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:&v10 count:1];
    *error = [v5 errorWithDomain:v6 code:-18 userInfo:v8];
  }

  return 0;
}

- (BOOL)addEntityUUID:(id)d seed:(unint64_t)seed error:(id *)error
{
  v12[1] = *MEMORY[0x1E69E9840];
  if (error)
  {
    v6 = MEMORY[0x1E696ABC0];
    v7 = *MEMORY[0x1E696A768];
    v11 = *MEMORY[0x1E696A578];
    seed = [MEMORY[0x1E696AEC0] stringWithFormat:@"Adding entity multi modal inputs are no longer supported", seed];
    v12[0] = seed;
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:&v11 count:1];
    *error = [v6 errorWithDomain:v7 code:-18 userInfo:v9];
  }

  return 0;
}

- (BOOL)_addPixelBuffer:(__CVBuffer *)buffer seed:(id)seed error:(id *)error
{
  v18[1] = *MEMORY[0x1E69E9840];
  seedCopy = seed;
  v9 = CVPixelBufferGetIOSurface(buffer);
  if (v9)
  {
    segments = self->_segments;
    v11 = [[MADMultiModalInputImageSegment alloc] initWithSurface:v9 seed:seedCopy];
    [(NSMutableArray *)segments addObject:v11];
  }

  else if (error)
  {
    v12 = MEMORY[0x1E696ABC0];
    v13 = *MEMORY[0x1E696A768];
    v17 = *MEMORY[0x1E696A578];
    v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"CVPixelBuffer input must be IOSurface backed"];
    v18[0] = v14;
    v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:&v17 count:1];
    *error = [v12 errorWithDomain:v13 code:-18 userInfo:v15];
  }

  return v9 != 0;
}

- (BOOL)addPixelBuffer:(__CVBuffer *)buffer seed:(unint64_t)seed error:(id *)error
{
  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:seed];
  LOBYTE(error) = [(MADMultiModalInput *)self _addPixelBuffer:buffer seed:v8 error:error];

  return error;
}

- (BOOL)addPersonDescription:(id)description error:(id *)error
{
  segments = self->_segments;
  descriptionCopy = description;
  v6 = [(MADMultiModalInputTextSegment *)[MADMultiModalInputDescriptionSegment alloc] initWithText:descriptionCopy];

  [(NSMutableArray *)segments addObject:v6];
  return 1;
}

- (BOOL)addFaceprint:(id)faceprint error:(id *)error
{
  v11[1] = *MEMORY[0x1E69E9840];
  if (error)
  {
    v5 = MEMORY[0x1E696ABC0];
    v6 = *MEMORY[0x1E696A768];
    v10 = *MEMORY[0x1E696A578];
    v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Adding faceprint multi modal inputs are no longer supported"];
    v11[0] = v7;
    v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:&v10 count:1];
    *error = [v5 errorWithDomain:v6 code:-18 userInfo:v8];
  }

  return 0;
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

@end