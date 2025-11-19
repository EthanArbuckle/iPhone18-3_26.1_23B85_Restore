@interface CLKUITexture
+ (id)nullTexture2D;
+ (id)nullTextureCube;
+ (id)textureWithProviderDelegate:(id)a3 uuid:(id)a4;
+ (id)textureWithProviderDelegate:(id)a3 uuid:(id)a4 rect:;
+ (id)textureWithProviderDelegate:(id)a3 uuid:(id)a4 rect:(id)a5 nullTexture:(BOOL)a6 streaming:;
+ (id)textureWithProviderDelegate:(id)a3 uuid:(id)a4 streaming:(BOOL)a5;
- (CLKUITexture)initWithAtlas:(id)a3 rect:;
- (void)dealloc;
@end

@implementation CLKUITexture

+ (id)nullTexture2D
{
  if (nullTexture2D_onceToken != -1)
  {
    +[CLKUITexture nullTexture2D];
  }

  v3 = __nullTexture2D;

  return v3;
}

void __29__CLKUITexture_nullTexture2D__block_invoke()
{
  v0 = [CLKUITexture alloc];
  v5 = +[CLKUIResourceManager sharedInstance];
  v1 = [v5 nullAtlas2D];
  v2.i64[0] = 0x3F0000003FLL;
  v2.i64[1] = 0x3F0000003FLL;
  v3 = [(CLKUITexture *)v0 initWithAtlas:v1 rect:*vnegq_f32(v2).i64];
  v4 = __nullTexture2D;
  __nullTexture2D = v3;
}

+ (id)nullTextureCube
{
  if (nullTextureCube_onceToken != -1)
  {
    +[CLKUITexture nullTextureCube];
  }

  v3 = __nullTextureCube;

  return v3;
}

void __31__CLKUITexture_nullTextureCube__block_invoke()
{
  v0 = [CLKUITexture alloc];
  v5 = +[CLKUIResourceManager sharedInstance];
  v1 = [v5 nullAtlasCube];
  v2.i64[0] = 0x3F0000003FLL;
  v2.i64[1] = 0x3F0000003FLL;
  v3 = [(CLKUITexture *)v0 initWithAtlas:v1 rect:*vnegq_f32(v2).i64];
  v4 = __nullTextureCube;
  __nullTextureCube = v3;
}

+ (id)textureWithProviderDelegate:(id)a3 uuid:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = +[CLKUITexture nullTexture2D];
  v9 = [a1 textureWithProviderDelegate:v7 uuid:v6 rect:v8 nullTexture:0 streaming:0.0];

  return v9;
}

+ (id)textureWithProviderDelegate:(id)a3 uuid:(id)a4 rect:
{
  v12 = v4;
  v7 = a4;
  v8 = a3;
  v9 = +[CLKUITexture nullTexture2D];
  v10 = [a1 textureWithProviderDelegate:v8 uuid:v7 rect:v9 nullTexture:0 streaming:v12];

  return v10;
}

+ (id)textureWithProviderDelegate:(id)a3 uuid:(id)a4 streaming:(BOOL)a5
{
  v5 = a5;
  v8 = a4;
  v9 = a3;
  v10 = +[CLKUITexture nullTexture2D];
  v11 = [a1 textureWithProviderDelegate:v9 uuid:v8 rect:v10 nullTexture:v5 streaming:0.0];

  return v11;
}

+ (id)textureWithProviderDelegate:(id)a3 uuid:(id)a4 rect:(id)a5 nullTexture:(BOOL)a6 streaming:
{
  v7 = a6;
  v16 = v6;
  v10 = a5;
  v11 = a4;
  v12 = a3;
  v13 = +[CLKUIResourceManager sharedInstance];
  v14 = [v13 textureForUuid:v11 delegate:v12 rect:v10 nullTexture:v7 streaming:v16];

  return v14;
}

- (CLKUITexture)initWithAtlas:(id)a3 rect:
{
  v10 = v3;
  v6 = a3;
  v11.receiver = self;
  v11.super_class = CLKUITexture;
  v7 = [(CLKUITexture *)&v11 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_atlas, a3);
    *v8->_rect = v10;
    [v6 incrementInstanceCount];
    v8->_null = v8->_atlas == 0;
  }

  return v8;
}

- (void)dealloc
{
  [(CLKUIAtlas *)self->_atlas decrementInstanceCount];
  v3.receiver = self;
  v3.super_class = CLKUITexture;
  [(CLKUITexture *)&v3 dealloc];
}

@end