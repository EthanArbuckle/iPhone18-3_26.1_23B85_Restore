@interface MADMultiModalInput
- (BOOL)_addPixelBuffer:(__CVBuffer *)a3 seed:(id)a4 error:(id *)a5;
- (BOOL)addEntityUUID:(id)a3 error:(id *)a4;
- (BOOL)addEntityUUID:(id)a3 seed:(unint64_t)a4 error:(id *)a5;
- (BOOL)addFaceprint:(id)a3 error:(id *)a4;
- (BOOL)addPersonDescription:(id)a3 error:(id *)a4;
- (BOOL)addPixelBuffer:(__CVBuffer *)a3 seed:(unint64_t)a4 error:(id *)a5;
- (BOOL)addText:(id)a3 error:(id *)a4;
- (MADMultiModalInput)init;
- (MADMultiModalInput)initWithCoder:(id)a3;
- (MADMultiModalInput)initWithText:(id)a3;
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
    v3 = [MEMORY[0x1E695DF70] array];
    segments = v2->_segments;
    v2->_segments = v3;
  }

  return v2;
}

- (MADMultiModalInput)initWithText:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = MADMultiModalInput;
  v5 = [(MADMultiModalInput *)&v11 init];
  if (v5)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    segments = v5->_segments;
    v5->_segments = v6;

    v8 = v5->_segments;
    v9 = [[MADMultiModalInputTextSegment alloc] initWithText:v4];
    [(NSMutableArray *)v8 addObject:v9];
  }

  return v5;
}

- (MADMultiModalInput)initWithCoder:(id)a3
{
  v13[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
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

    v9 = [v4 decodeObjectOfClasses:v8 forKey:@"Segments"];
    segments = v5->_segments;
    v5->_segments = v9;
  }

  return v5;
}

- (BOOL)addText:(id)a3 error:(id *)a4
{
  segments = self->_segments;
  v5 = a3;
  v6 = [[MADMultiModalInputTextSegment alloc] initWithText:v5];

  [(NSMutableArray *)segments addObject:v6];
  return 1;
}

- (BOOL)addEntityUUID:(id)a3 error:(id *)a4
{
  v11[1] = *MEMORY[0x1E69E9840];
  if (a4)
  {
    v5 = MEMORY[0x1E696ABC0];
    v6 = *MEMORY[0x1E696A768];
    v10 = *MEMORY[0x1E696A578];
    v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Adding entity multi modal inputs are no longer supported"];
    v11[0] = v7;
    v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:&v10 count:1];
    *a4 = [v5 errorWithDomain:v6 code:-18 userInfo:v8];
  }

  return 0;
}

- (BOOL)addEntityUUID:(id)a3 seed:(unint64_t)a4 error:(id *)a5
{
  v12[1] = *MEMORY[0x1E69E9840];
  if (a5)
  {
    v6 = MEMORY[0x1E696ABC0];
    v7 = *MEMORY[0x1E696A768];
    v11 = *MEMORY[0x1E696A578];
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Adding entity multi modal inputs are no longer supported", a4];
    v12[0] = v8;
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:&v11 count:1];
    *a5 = [v6 errorWithDomain:v7 code:-18 userInfo:v9];
  }

  return 0;
}

- (BOOL)_addPixelBuffer:(__CVBuffer *)a3 seed:(id)a4 error:(id *)a5
{
  v18[1] = *MEMORY[0x1E69E9840];
  v8 = a4;
  v9 = CVPixelBufferGetIOSurface(a3);
  if (v9)
  {
    segments = self->_segments;
    v11 = [[MADMultiModalInputImageSegment alloc] initWithSurface:v9 seed:v8];
    [(NSMutableArray *)segments addObject:v11];
  }

  else if (a5)
  {
    v12 = MEMORY[0x1E696ABC0];
    v13 = *MEMORY[0x1E696A768];
    v17 = *MEMORY[0x1E696A578];
    v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"CVPixelBuffer input must be IOSurface backed"];
    v18[0] = v14;
    v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:&v17 count:1];
    *a5 = [v12 errorWithDomain:v13 code:-18 userInfo:v15];
  }

  return v9 != 0;
}

- (BOOL)addPixelBuffer:(__CVBuffer *)a3 seed:(unint64_t)a4 error:(id *)a5
{
  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a4];
  LOBYTE(a5) = [(MADMultiModalInput *)self _addPixelBuffer:a3 seed:v8 error:a5];

  return a5;
}

- (BOOL)addPersonDescription:(id)a3 error:(id *)a4
{
  segments = self->_segments;
  v5 = a3;
  v6 = [(MADMultiModalInputTextSegment *)[MADMultiModalInputDescriptionSegment alloc] initWithText:v5];

  [(NSMutableArray *)segments addObject:v6];
  return 1;
}

- (BOOL)addFaceprint:(id)a3 error:(id *)a4
{
  v11[1] = *MEMORY[0x1E69E9840];
  if (a4)
  {
    v5 = MEMORY[0x1E696ABC0];
    v6 = *MEMORY[0x1E696A768];
    v10 = *MEMORY[0x1E696A578];
    v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Adding faceprint multi modal inputs are no longer supported"];
    v11[0] = v7;
    v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:&v10 count:1];
    *a4 = [v5 errorWithDomain:v6 code:-18 userInfo:v8];
  }

  return 0;
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

@end