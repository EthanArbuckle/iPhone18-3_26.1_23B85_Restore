@interface NUTileInfo
+ (id)tileInfoWithIndex:(int64_t)index size:(id)size frameRect:(id *)rect contentRect:(id *)contentRect;
- ($0AC6E346AE4835514AAA8AC86D8F4844)size;
- ($41299696D20B6C925B74A5D5E4D5CC87)contentRect;
- ($41299696D20B6C925B74A5D5E4D5CC87)frameRect;
- (id)debugDescription;
- (id)translatedAndClippedRegion:(id)region;
@end

@implementation NUTileInfo

- ($41299696D20B6C925B74A5D5E4D5CC87)contentRect
{
  var1 = self[2].var1;
  retstr->var0 = self[2].var0;
  retstr->var1 = var1;
  return self;
}

- ($41299696D20B6C925B74A5D5E4D5CC87)frameRect
{
  var1 = self[1].var1;
  retstr->var0 = self[1].var0;
  retstr->var1 = var1;
  return self;
}

- ($0AC6E346AE4835514AAA8AC86D8F4844)size
{
  height = self->_size.height;
  width = self->_size.width;
  result.var1 = height;
  result.var0 = width;
  return result;
}

- (id)debugDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  index = [(NUTileInfo *)self index];
  v6 = [(NUTileInfo *)self size];
  v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"{%ld, %ld}", v6, v7];
  [(NUTileInfo *)self frameRect];
  v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"{origin={%ld, %ld} size={%ld, %ld}}]", v13, v14, v15];
  [(NUTileInfo *)self contentRect];
  v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"{origin={%ld, %ld} size={%ld, %ld}}]", v13, v14, v15];
  v11 = [v3 stringWithFormat:@"<%@:%p> index=%ld, size=%@, frameRect=%@, contentRect=%@", v4, self, index, v8, v9, v10];

  return v11;
}

- (id)translatedAndClippedRegion:(id)region
{
  size = self->_frameRect.size;
  v8[0] = self->_frameRect.origin;
  v8[1] = size;
  v5 = [region regionByClippingToRect:v8];
  v6 = [v5 mutableCopy];

  [v6 translateBy:{-self->_frameRect.origin.x, -self->_frameRect.origin.y}];

  return v6;
}

+ (id)tileInfoWithIndex:(int64_t)index size:(id)size frameRect:(id *)rect contentRect:(id *)contentRect
{
  var1 = size.var1;
  var0 = size.var0;
  v11 = objc_alloc_init(NUTileInfo);
  v11->_index = index;
  v11->_size.width = var0;
  v11->_size.height = var1;
  v12 = rect->var1;
  v11->_frameRect.origin = rect->var0;
  v11->_frameRect.size = v12;
  v13 = contentRect->var1;
  v11->_contentRect.origin = contentRect->var0;
  v11->_contentRect.size = v13;

  return v11;
}

@end