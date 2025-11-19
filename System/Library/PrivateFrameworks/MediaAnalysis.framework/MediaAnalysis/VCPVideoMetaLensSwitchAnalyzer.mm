@interface VCPVideoMetaLensSwitchAnalyzer
- (VCPVideoMetaLensSwitchAnalyzer)init;
- (id)results;
@end

@implementation VCPVideoMetaLensSwitchAnalyzer

- (VCPVideoMetaLensSwitchAnalyzer)init
{
  v6.receiver = self;
  v6.super_class = VCPVideoMetaLensSwitchAnalyzer;
  v2 = [(VCPVideoMetaLensSwitchAnalyzer *)&v6 init];
  v3 = v2;
  if (v2)
  {
    *(v2 + 4) = 0;
    *(v2 + 12) = xmmword_1C9F63370;
    v4 = v2;
  }

  return v3;
}

- (id)results
{
  v10[1] = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E696AD98] numberWithBool:{self->_hadZoom, @"quality"}];
  v9[0] = v3;
  v8[1] = @"ZoomChangeScore";
  v4 = [MEMORY[0x1E696AD98] numberWithBool:self->_settlingHadZoom];
  v9[1] = v4;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:v8 count:2];
  v10[0] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];

  return v6;
}

@end