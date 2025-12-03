@interface NUMutableImageHistogram
- (void)smoothWithFunction:(int64_t)function windowSize:(int64_t)size sampleMode:(int64_t)mode;
- (void)write:(id)write;
@end

@implementation NUMutableImageHistogram

- (void)smoothWithFunction:(int64_t)function windowSize:(int64_t)size sampleMode:(int64_t)mode
{
  v21[4] = *MEMORY[0x1E69E9840];
  _red = [(NUMutableImageHistogram *)self _red];
  v21[0] = _red;
  _green = [(NUMutableImageHistogram *)self _green];
  v21[1] = _green;
  _blue = [(NUMutableImageHistogram *)self _blue];
  v21[2] = _blue;
  _luminance = [(NUMutableImageHistogram *)self _luminance];
  v21[3] = _luminance;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:4];

  v14 = [v13 count];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __68__NUMutableImageHistogram_smoothWithFunction_windowSize_sampleMode___block_invoke;
  block[3] = &unk_1E810AD48;
  v17 = v13;
  functionCopy = function;
  sizeCopy = size;
  modeCopy = mode;
  v15 = v13;
  dispatch_apply(v14, 0, block);
}

void __68__NUMutableImageHistogram_smoothWithFunction_windowSize_sampleMode___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) objectAtIndexedSubscript:a2];
  [v3 smoothWithFunction:*(a1 + 40) windowSize:*(a1 + 48) sampleMode:*(a1 + 56)];
}

- (void)write:(id)write
{
  writeCopy = write;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  _red = [(NUMutableImageHistogram *)self _red];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __33__NUMutableImageHistogram_write___block_invoke;
  v7[3] = &unk_1E810AD20;
  v7[4] = self;
  v9 = &v10;
  v6 = writeCopy;
  v8 = v6;
  [_red write:v7];

  self->super._sampleCount += v11[3];
  _Block_object_dispose(&v10, 8);
}

uint64_t __33__NUMutableImageHistogram_write___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) _green];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __33__NUMutableImageHistogram_write___block_invoke_2;
  v9[3] = &unk_1E810ACF8;
  v9[4] = *(a1 + 32);
  v8 = *(a1 + 40);
  v5 = v8;
  v10 = v8;
  v11 = a2;
  [v4 write:v9];

  v6 = *(*(*(a1 + 48) + 8) + 24);
  return v6;
}

uint64_t __33__NUMutableImageHistogram_write___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) _blue];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __33__NUMutableImageHistogram_write___block_invoke_3;
  v9[3] = &unk_1E810ACD0;
  v9[4] = *(a1 + 32);
  v8 = *(a1 + 40);
  v5 = v8;
  v10 = v8;
  v11 = *(a1 + 56);
  v12 = a2;
  [v4 write:v9];

  v6 = *(*(*(a1 + 48) + 8) + 24);
  return v6;
}

uint64_t __33__NUMutableImageHistogram_write___block_invoke_3(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) _luminance];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __33__NUMutableImageHistogram_write___block_invoke_4;
  v9[3] = &unk_1E810ACA8;
  v8 = *(a1 + 40);
  v5 = v8;
  v10 = v8;
  v11 = *(a1 + 56);
  v12 = a2;
  v9[4] = *(a1 + 32);
  [v4 write:v9];

  v6 = *(*(*(a1 + 48) + 8) + 24);
  return v6;
}

@end