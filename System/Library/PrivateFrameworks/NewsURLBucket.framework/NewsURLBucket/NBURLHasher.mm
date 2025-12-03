@interface NBURLHasher
- (NBURLHasher)init;
- (id)hashForURL:(id)l maxLength:(unint64_t)length;
@end

@implementation NBURLHasher

- (NBURLHasher)init
{
  v6.receiver = self;
  v6.super_class = NBURLHasher;
  v2 = [(NBURLHasher *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(NBObjCURLHasher);
    hasher = v2->_hasher;
    v2->_hasher = v3;
  }

  return v2;
}

- (id)hashForURL:(id)l maxLength:(unint64_t)length
{
  lCopy = l;
  hasher = [(NBURLHasher *)self hasher];
  v8 = [hasher hashForURL:lCopy maxLength:length];

  return v8;
}

@end