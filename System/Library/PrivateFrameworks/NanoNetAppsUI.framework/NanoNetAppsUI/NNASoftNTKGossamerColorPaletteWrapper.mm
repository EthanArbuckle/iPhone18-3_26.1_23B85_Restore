@interface NNASoftNTKGossamerColorPaletteWrapper
+ (id)sharedPalette;
- (NNASoftNTKGossamerColorPaletteWrapper)init;
- (void)assertColor:(id)a3 closeTo:(id)a4;
@end

@implementation NNASoftNTKGossamerColorPaletteWrapper

+ (id)sharedPalette
{
  if (sharedPalette_onceToken != -1)
  {
    +[NNASoftNTKGossamerColorPaletteWrapper sharedPalette];
  }

  v3 = sharedPalette_wrapper;

  return v3;
}

uint64_t __54__NNASoftNTKGossamerColorPaletteWrapper_sharedPalette__block_invoke()
{
  sharedPalette_wrapper = objc_alloc_init(NNASoftNTKGossamerColorPaletteWrapper);

  return MEMORY[0x2821F96F8]();
}

- (NNASoftNTKGossamerColorPaletteWrapper)init
{
  v6.receiver = self;
  v6.super_class = NNASoftNTKGossamerColorPaletteWrapper;
  v2 = [(NNASoftNTKGossamerColorPaletteWrapper *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(SGColorPalette);
    colorPalette = v2->_colorPalette;
    v2->_colorPalette = v3;
  }

  return v2;
}

- (void)assertColor:(id)a3 closeTo:(id)a4
{
  v14 = 0.0;
  v12 = 0.0;
  v13 = 0.0;
  v10 = 0.0;
  v11 = 0.0;
  v8 = 0.0;
  v9 = 0.0;
  v7 = 0.0;
  v6 = a4;
  [a3 getRed:&v14 green:&v13 blue:&v12 alpha:&v11];
  [v6 getRed:&v10 green:&v9 blue:&v8 alpha:&v7];

  [(NNASoftNTKGossamerColorPaletteWrapper *)self assertDouble:v14 closeTo:v10];
  [(NNASoftNTKGossamerColorPaletteWrapper *)self assertDouble:v13 closeTo:v9];
  [(NNASoftNTKGossamerColorPaletteWrapper *)self assertDouble:v12 closeTo:v8];
  [(NNASoftNTKGossamerColorPaletteWrapper *)self assertDouble:v11 closeTo:v7];
}

@end