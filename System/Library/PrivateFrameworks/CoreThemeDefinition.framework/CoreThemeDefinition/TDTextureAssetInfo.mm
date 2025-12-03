@interface TDTextureAssetInfo
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)dealloc;
@end

@implementation TDTextureAssetInfo

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [[TDTextureAssetInfo allocWithZone:?]];
  [(TDTextureAssetInfo *)v4 setFileURL:[(TDTextureAssetInfo *)self fileURL]];
  [(TDTextureAssetInfo *)v4 setMipLevel:[(TDTextureAssetInfo *)self mipLevel]];
  [(TDTextureAssetInfo *)v4 setTextureFace:[(TDTextureAssetInfo *)self textureFace]];
  [(TDTextureAssetInfo *)v4 setFlipped:[(TDTextureAssetInfo *)self flipped]];
  return v4;
}

- (void)dealloc
{
  [(TDTextureAssetInfo *)self setFileURL:0];
  v3.receiver = self;
  v3.super_class = TDTextureAssetInfo;
  [(TDTextureAssetInfo *)&v3 dealloc];
}

- (id)description
{
  v6.receiver = self;
  v6.super_class = TDTextureAssetInfo;
  v3 = [(TDTextureAssetInfo *)&v6 description];
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"fileURL:%@ mipLevel: %d textureFace: %d flipped: %d ", -[TDTextureAssetInfo fileURL](self, "fileURL"), -[TDTextureAssetInfo mipLevel](self, "mipLevel"), -[TDTextureAssetInfo textureFace](self, "textureFace"), -[TDTextureAssetInfo flipped](self, "flipped")];
  return [MEMORY[0x277CCACA8] stringWithFormat:@"%@  %@", v3, v4];
}

@end