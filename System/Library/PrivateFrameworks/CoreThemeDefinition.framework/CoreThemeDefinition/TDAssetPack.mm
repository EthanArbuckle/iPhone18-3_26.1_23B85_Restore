@interface TDAssetPack
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)dealloc;
@end

@implementation TDAssetPack

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(objc_opt_class());
  [v4 setTags:{-[TDAssetPack tags](self, "tags")}];
  [v4 setOutputPath:{-[TDAssetPack outputPath](self, "outputPath")}];
  [v4 setAssetPackIdentifier:{-[TDAssetPack assetPackIdentifier](self, "assetPackIdentifier")}];
  [v4 setWasModified:{-[TDAssetPack wasModified](self, "wasModified")}];
  return v4;
}

- (void)dealloc
{
  [(TDAssetPack *)self setTags:0];
  [(TDAssetPack *)self setOutputPath:0];
  [(TDAssetPack *)self setAssetStore:0];
  [(TDAssetPack *)self setAssetPackIdentifier:0];
  v3.receiver = self;
  v3.super_class = TDAssetPack;
  [(TDAssetPack *)&v3 dealloc];
}

- (BOOL)isEqual:(id)a3
{
  if (!a3)
  {
    return 0;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || ![objc_msgSend(a3 "tags")])
  {
    return 0;
  }

  v5 = [a3 assetPackIdentifier];
  v6 = [(TDAssetPack *)self assetPackIdentifier];

  return [v5 isEqualToString:v6];
}

@end