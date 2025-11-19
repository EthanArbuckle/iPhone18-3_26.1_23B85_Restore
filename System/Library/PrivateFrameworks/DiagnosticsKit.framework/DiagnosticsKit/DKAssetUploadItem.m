@interface DKAssetUploadItem
+ (id)assetWithData:(id)a3 andExtra:(id)a4;
- (DKAssetUploadItem)initWithCoder:(id)a3;
- (DKAssetUploadItem)initWithData:(id)a3 andExtra:(id)a4;
- (id)_decoderClasses;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation DKAssetUploadItem

+ (id)assetWithData:(id)a3 andExtra:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[a1 alloc] initWithData:v7 andExtra:v6];

  return v8;
}

- (DKAssetUploadItem)initWithData:(id)a3 andExtra:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = DKAssetUploadItem;
  v9 = [(DKAssetUploadItem *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_data, a3);
    objc_storeStrong(&v10->_extra, a4);
  }

  return v10;
}

- (id)_decoderClasses
{
  if (_decoderClasses_onceToken != -1)
  {
    [DKAssetUploadItem _decoderClasses];
  }

  v3 = _decoderClasses_decoderClasses;

  return v3;
}

uint64_t __36__DKAssetUploadItem__decoderClasses__block_invoke()
{
  v0 = MEMORY[0x277CBEB98];
  v1 = objc_opt_class();
  v2 = objc_opt_class();
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  _decoderClasses_decoderClasses = [v0 setWithObjects:{v1, v2, v3, v4, v5, objc_opt_class(), 0}];

  return MEMORY[0x2821F96F8]();
}

- (DKAssetUploadItem)initWithCoder:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = DKAssetUploadItem;
  v5 = [(DKAssetUploadItem *)&v14 init];
  v6 = v5;
  if (v5)
  {
    v7 = [(DKAssetUploadItem *)v5 _decoderClasses];
    v8 = [v4 decodeObjectOfClasses:v7 forKey:@"data"];
    data = v6->_data;
    v6->_data = v8;

    v10 = [(DKAssetUploadItem *)v6 _decoderClasses];
    v11 = [v4 decodeObjectOfClasses:v10 forKey:@"extra"];
    extra = v6->_extra;
    v6->_extra = v11;
  }

  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(DKAssetUploadItem *)self data];
  [v4 encodeObject:v5 forKey:@"data"];

  v6 = [(DKAssetUploadItem *)self extra];
  [v4 encodeObject:v6 forKey:@"extra"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSData *)self->_data copyWithZone:a3];
  v7 = v5[1];
  v5[1] = v6;

  v8 = [(NSDictionary *)self->_extra copyWithZone:a3];
  v9 = v5[2];
  v5[2] = v8;

  return v5;
}

@end