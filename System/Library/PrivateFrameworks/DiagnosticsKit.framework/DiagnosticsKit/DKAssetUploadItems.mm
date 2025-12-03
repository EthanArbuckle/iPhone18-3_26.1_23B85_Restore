@interface DKAssetUploadItems
+ (id)assetWithItems:(id)items;
- (DKAssetUploadItems)initWithCoder:(id)coder;
- (DKAssetUploadItems)initWithItems:(id)items;
- (id)_decoderClasses;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation DKAssetUploadItems

+ (id)assetWithItems:(id)items
{
  itemsCopy = items;
  v5 = [[self alloc] initWithItems:itemsCopy];

  return v5;
}

- (DKAssetUploadItems)initWithItems:(id)items
{
  itemsCopy = items;
  v9.receiver = self;
  v9.super_class = DKAssetUploadItems;
  v6 = [(DKAssetUploadItems *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_items, items);
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

- (DKAssetUploadItems)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = DKAssetUploadItems;
  v5 = [(DKAssetUploadItems *)&v11 init];
  v6 = v5;
  if (v5)
  {
    _decoderClasses = [(DKAssetUploadItems *)v5 _decoderClasses];
    v8 = [coderCopy decodeObjectOfClasses:_decoderClasses forKey:@"items"];
    items = v6->_items;
    v6->_items = v8;
  }

  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  items = [(DKAssetUploadItems *)self items];
  [coderCopy encodeObject:items forKey:@"items"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSArray *)self->_items copyWithZone:zone];
  v7 = v5[1];
  v5[1] = v6;

  return v5;
}

@end