@interface NUAspectFitScalePolicy
- ($0AC6E346AE4835514AAA8AC86D8F4844)scaleForImageSize:(id)size;
- (NUAspectFitScalePolicy)initWithTargetPixelSize:(id)size;
@end

@implementation NUAspectFitScalePolicy

- ($0AC6E346AE4835514AAA8AC86D8F4844)scaleForImageSize:(id)size
{
  v35 = *MEMORY[0x1E69E9840];
  if (!size.var0 || (var1 = size.var1) == 0)
  {
    v15 = NUAssertLogger_27066();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "!NUPixelSizeIsEmpty(imageSize)"];
      *buf = 138543362;
      v32 = v16;
      _os_log_error_impl(&dword_1C0184000, v15, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v18 = NUAssertLogger_27066();
    v19 = os_log_type_enabled(v18, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v19)
      {
        v22 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v23 = MEMORY[0x1E696AF00];
        v24 = v22;
        callStackSymbols = [v23 callStackSymbols];
        v26 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v32 = v22;
        v33 = 2114;
        v34 = v26;
        _os_log_error_impl(&dword_1C0184000, v18, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v19)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v21 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v32 = v21;
      _os_log_error_impl(&dword_1C0184000, v18, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUAspectFitScalePolicy scaleForImageSize:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Render/NUScalePolicy.m", 137, @"Invalid parameter not satisfying: %s", v27, v28, v29, v30, "!NUPixelSizeIsEmpty(imageSize)");
  }

  var0 = size.var0;
  if (size.var0 >= size.var1)
  {
    width = self->super._size.width;
    height = self->super._size.height;
  }

  else
  {
    height = self->super._size.width;
    width = self->super._size.height;
    if ((height | width) < 0)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"NUPixelSize NUPixelSizeMake(NSInteger, NSInteger)"}];
      [currentHandler handleFailureInFunction:v8 file:@"NUGeometryPrimitives.h" lineNumber:38 description:{@"Invalid parameter not satisfying: %@", @"(width >= 0) && (height >= 0)"}];
    }
  }

  v9 = NUScaleToFitSizeInSize(var0, var1, width, height);
  v11 = v10;
  v12 = NUScaleCompare(v9, v10, NUScaleOne, *(&NUScaleOne + 1));
  if (v12 >= 0)
  {
    v13 = *(&NUScaleOne + 1);
  }

  else
  {
    v13 = v11;
  }

  if (v12 >= 0)
  {
    v14 = NUScaleOne;
  }

  else
  {
    v14 = v9;
  }

  result.var1 = v13;
  result.var0 = v14;
  return result;
}

- (NUAspectFitScalePolicy)initWithTargetPixelSize:(id)size
{
  var1 = size.var1;
  var0 = size.var0;
  if (size.var0 >= size.var1)
  {
    var1 = size.var0;
    var0 = size.var1;
  }

  else if ((size.var1 | size.var0) < 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"NUPixelSize NUPixelSizeMake(NSInteger, NSInteger)"}];
    [currentHandler handleFailureInFunction:v7 file:@"NUGeometryPrimitives.h" lineNumber:38 description:{@"Invalid parameter not satisfying: %@", @"(width >= 0) && (height >= 0)"}];
  }

  v9.receiver = self;
  v9.super_class = NUAspectFitScalePolicy;
  return [(NUFitScalePolicy *)&v9 initWithTargetPixelSize:var1, var0];
}

@end