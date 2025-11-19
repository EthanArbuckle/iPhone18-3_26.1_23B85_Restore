@interface DKAssetUploadItems
+ (id)assetWithItems:(id)a3;
- (DKAssetUploadItems)initWithCoder:(id)a3;
- (DKAssetUploadItems)initWithItems:(id)a3;
- (id)_decoderClasses;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation DKAssetUploadItems

+ (id)assetWithItems:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithItems:v4];

  return v5;
}

- (DKAssetUploadItems)initWithItems:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = DKAssetUploadItems;
  v6 = [(DKAssetUploadItems *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_items, a3);
  }

  return v7;
}

- (id)_decoderClasses
{
  if (_decoderClasses_onceToken_45 != -1)
  {
    [DKAssetUploadItems _decoderClasses];
  }

  v3 = _decoderClasses_decoderClasses_44;

  return v3;
}

uint64_t __37__DKAssetUploadItems__decoderClasses__block_invoke()
{
  v0 = MEMORY[0x277CBEB98];
  v1 = objc_opt_class();
  v2 = objc_opt_class();
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  _decoderClasses_decoderClasses_44 = [v0 setWithObjects:{v1, v2, v3, v4, v5, v6, objc_opt_class(), 0}];

  return MEMORY[0x2821F96F8]();
}

- (DKAssetUploadItems)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = DKAssetUploadItems;
  v5 = [(DKAssetUploadItems *)&v11 init];
  v6 = v5;
  if (v5)
  {
    v7 = [(DKAssetUploadItems *)v5 _decoderClasses];
    v8 = [v4 decodeObjectOfClasses:v7 forKey:@"items"];
    items = v6->_items;
    v6->_items = v8;
  }

  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(DKAssetUploadItems *)self items];
  [v4 encodeObject:v5 forKey:@"items"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSArray *)self->_items copyWithZone:a3];
  v7 = v5[1];
  v5[1] = v6;

  return v5;
}

@end