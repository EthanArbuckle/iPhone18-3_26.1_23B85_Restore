@interface _NUVisionDetectionResult
- ($0AC6E346AE4835514AAA8AC86D8F4844)imageSize;
- (NSString)description;
@end

@implementation _NUVisionDetectionResult

- ($0AC6E346AE4835514AAA8AC86D8F4844)imageSize
{
  objc_copyStruct(v4, &self->imageSize, 16, 1, 0);
  v2 = v4[0];
  v3 = v4[1];
  result.var1 = v3;
  result.var0 = v2;
  return result;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  imageSize = [(_NUVisionDetectionResult *)self imageSize];
  v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"{%ld, %ld}", imageSize, v6];
  observations = [(_NUVisionDetectionResult *)self observations];
  v9 = [v3 stringWithFormat:@"<%@: %p imageSize = %@, observationCount = %lu>", v4, self, v7, objc_msgSend(observations, "count")];;

  return v9;
}

@end