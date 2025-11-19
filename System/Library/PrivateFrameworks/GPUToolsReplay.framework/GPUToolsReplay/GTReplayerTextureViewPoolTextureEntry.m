@interface GTReplayerTextureViewPoolTextureEntry
+ (id)entryWithTexture:(id)a3;
+ (id)entryWithTexture:(id)a3 descriptor:(id)a4;
- (GTReplayerTextureViewPoolTextureEntry)initWithTexture:(id)a3 descriptor:(id)a4;
- (id)materializeTextureView;
@end

@implementation GTReplayerTextureViewPoolTextureEntry

- (id)materializeTextureView
{
  v3 = [(MTLTextureViewDescriptor *)self->_descriptor copy];
  v4 = [v3 levelRange];
  v6 = v5;
  v7 = [(MTLTexture *)self->_texture mipmapLevelCount];
  if (v4 >= v7)
  {
    v8 = v7;
  }

  else
  {
    v8 = v4;
  }

  if (v6 >= v7 - v8)
  {
    v9 = v7 - v8;
  }

  else
  {
    v9 = v6;
  }

  [v3 setLevelRange:{v8, v9}];
  v10 = [v3 sliceRange];
  v12 = v11;
  v13 = [(MTLTexture *)self->_texture arrayLength];
  if (v10 >= v13)
  {
    v14 = v13;
  }

  else
  {
    v14 = v10;
  }

  if (v12 >= v13 - v14)
  {
    v15 = v13 - v14;
  }

  else
  {
    v15 = v12;
  }

  [v3 setSliceRange:{v14, v15}];
  v16 = [(MTLTexture *)self->_texture newTextureViewWithDescriptor:v3];

  return v16;
}

- (GTReplayerTextureViewPoolTextureEntry)initWithTexture:(id)a3 descriptor:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = GTReplayerTextureViewPoolTextureEntry;
  v9 = [(GTReplayerTextureViewPoolTextureEntry *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_texture, a3);
    objc_storeStrong(&v10->_descriptor, a4);
  }

  return v10;
}

+ (id)entryWithTexture:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithTexture:v4];

  return v5;
}

+ (id)entryWithTexture:(id)a3 descriptor:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[a1 alloc] initWithTexture:v7 descriptor:v6];

  return v8;
}

@end