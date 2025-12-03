@interface CLKUITexture
+ (id)nullTexture2D;
+ (id)nullTextureCube;
+ (id)textureWithProviderDelegate:(id)delegate uuid:(id)uuid;
+ (id)textureWithProviderDelegate:(id)delegate uuid:(id)uuid rect:;
+ (id)textureWithProviderDelegate:(id)delegate uuid:(id)uuid rect:(id)rect nullTexture:(BOOL)texture streaming:;
+ (id)textureWithProviderDelegate:(id)delegate uuid:(id)uuid streaming:(BOOL)streaming;
- (CLKUITexture)initWithAtlas:(id)atlas rect:;
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

+ (id)textureWithProviderDelegate:(id)delegate uuid:(id)uuid
{
  uuidCopy = uuid;
  delegateCopy = delegate;
  v8 = +[CLKUITexture nullTexture2D];
  v9 = [self textureWithProviderDelegate:delegateCopy uuid:uuidCopy rect:v8 nullTexture:0 streaming:0.0];

  return v9;
}

+ (id)textureWithProviderDelegate:(id)delegate uuid:(id)uuid rect:
{
  v12 = v4;
  uuidCopy = uuid;
  delegateCopy = delegate;
  v9 = +[CLKUITexture nullTexture2D];
  v10 = [self textureWithProviderDelegate:delegateCopy uuid:uuidCopy rect:v9 nullTexture:0 streaming:v12];

  return v10;
}

+ (id)textureWithProviderDelegate:(id)delegate uuid:(id)uuid streaming:(BOOL)streaming
{
  streamingCopy = streaming;
  uuidCopy = uuid;
  delegateCopy = delegate;
  v10 = +[CLKUITexture nullTexture2D];
  v11 = [self textureWithProviderDelegate:delegateCopy uuid:uuidCopy rect:v10 nullTexture:streamingCopy streaming:0.0];

  return v11;
}

+ (id)textureWithProviderDelegate:(id)delegate uuid:(id)uuid rect:(id)rect nullTexture:(BOOL)texture streaming:
{
  textureCopy = texture;
  v16 = v6;
  rectCopy = rect;
  uuidCopy = uuid;
  delegateCopy = delegate;
  v13 = +[CLKUIResourceManager sharedInstance];
  v14 = [v13 textureForUuid:uuidCopy delegate:delegateCopy rect:rectCopy nullTexture:textureCopy streaming:v16];

  return v14;
}

- (CLKUITexture)initWithAtlas:(id)atlas rect:
{
  v10 = v3;
  atlasCopy = atlas;
  v11.receiver = self;
  v11.super_class = CLKUITexture;
  v7 = [(CLKUITexture *)&v11 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_atlas, atlas);
    *v8->_rect = v10;
    [atlasCopy incrementInstanceCount];
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