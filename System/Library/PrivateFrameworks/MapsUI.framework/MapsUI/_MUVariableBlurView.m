@interface _MUVariableBlurView
- (_MUVariableBlurView)initWithRadius:(double)a3 maskImage:(id)a4;
@end

@implementation _MUVariableBlurView

- (_MUVariableBlurView)initWithRadius:(double)a3 maskImage:(id)a4
{
  v21[1] = *MEMORY[0x1E69E9840];
  v7 = a4;
  v20.receiver = self;
  v20.super_class = _MUVariableBlurView;
  v8 = [(_MUVariableBlurView *)&v20 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  if (v8)
  {
    v9 = [MEMORY[0x1E69DC888] clearColor];
    [(_MUVariableBlurView *)v8 setBackgroundColor:v9];

    objc_storeStrong(&v8->_maskImage, a4);
    v10 = [MEMORY[0x1E6979378] filterWithType:*MEMORY[0x1E6979D70]];
    [v10 setValue:MEMORY[0x1E695E110] forKey:@"inputDither"];
    v11 = [v7 CGImage];
    if (v11)
    {
      [v10 setValue:v11 forKey:@"inputMaskImage"];
    }

    else
    {
      if (MUGetMUVariableBlurViewLog_onceToken != -1)
      {
        dispatch_once(&MUGetMUVariableBlurViewLog_onceToken, &__block_literal_global_9833);
      }

      v12 = MUGetMUVariableBlurViewLog_log;
      if (os_log_type_enabled(MUGetMUVariableBlurViewLog_log, OS_LOG_TYPE_FAULT))
      {
        *v19 = 0;
        _os_log_impl(&dword_1C5620000, v12, OS_LOG_TYPE_FAULT, "The maskImage being passed is nil, this is a programming error.", v19, 2u);
      }
    }

    v13 = MEMORY[0x1E695E118];
    [v10 setValue:MEMORY[0x1E695E118] forKey:@"inputNormalizeEdges"];
    [v10 setValue:v13 forKey:*MEMORY[0x1E6979B20]];
    v14 = [MEMORY[0x1E696AD98] numberWithDouble:a3];
    [v10 setValue:v14 forKey:@"inputRadius"];

    [v10 setName:@"variableBlur"];
    v15 = [(_MUVariableBlurView *)v8 backdropLayer];
    [v15 setAllowsHitTesting:0];
    [v15 setScale:0.5];
    v21[0] = v10;
    v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:1];
    [v15 setFilters:v16];

    [v15 setMasksToBounds:1];
  }

  v17 = *MEMORY[0x1E69E9840];
  return v8;
}

@end