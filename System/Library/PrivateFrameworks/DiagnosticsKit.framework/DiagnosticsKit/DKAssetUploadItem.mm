@interface DKAssetUploadItem
+ (id)assetWithData:(id)data andExtra:(id)extra;
- (DKAssetUploadItem)initWithCoder:(id)coder;
- (DKAssetUploadItem)initWithData:(id)data andExtra:(id)extra;
- (id)_decoderClasses;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation DKAssetUploadItem

+ (id)assetWithData:(id)data andExtra:(id)extra
{
  extraCopy = extra;
  dataCopy = data;
  v8 = [[self alloc] initWithData:dataCopy andExtra:extraCopy];

  return v8;
}

- (DKAssetUploadItem)initWithData:(id)data andExtra:(id)extra
{
  dataCopy = data;
  extraCopy = extra;
  v12.receiver = self;
  v12.super_class = DKAssetUploadItem;
  v9 = [(DKAssetUploadItem *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_data, data);
    objc_storeStrong(&v10->_extra, extra);
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

- (DKAssetUploadItem)initWithCoder:(id)coder
{
  coderCopy = coder;
  v14.receiver = self;
  v14.super_class = DKAssetUploadItem;
  v5 = [(DKAssetUploadItem *)&v14 init];
  v6 = v5;
  if (v5)
  {
    _decoderClasses = [(DKAssetUploadItem *)v5 _decoderClasses];
    v8 = [coderCopy decodeObjectOfClasses:_decoderClasses forKey:@"data"];
    data = v6->_data;
    v6->_data = v8;

    _decoderClasses2 = [(DKAssetUploadItem *)v6 _decoderClasses];
    v11 = [coderCopy decodeObjectOfClasses:_decoderClasses2 forKey:@"extra"];
    extra = v6->_extra;
    v6->_extra = v11;
  }

  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  data = [(DKAssetUploadItem *)self data];
  [coderCopy encodeObject:data forKey:@"data"];

  extra = [(DKAssetUploadItem *)self extra];
  [coderCopy encodeObject:extra forKey:@"extra"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSData *)self->_data copyWithZone:zone];
  v7 = v5[1];
  v5[1] = v6;

  v8 = [(NSDictionary *)self->_extra copyWithZone:zone];
  v9 = v5[2];
  v5[2] = v8;

  return v5;
}

@end