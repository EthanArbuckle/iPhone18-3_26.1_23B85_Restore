@interface CKVOToken
- (CKVOToken)initWithKeyPath:(id)path index:(int64_t)index block:(id)block;
- (id)description;
@end

@implementation CKVOToken

- (CKVOToken)initWithKeyPath:(id)path index:(int64_t)index block:(id)block
{
  pathCopy = path;
  blockCopy = block;
  v16.receiver = self;
  v16.super_class = CKVOToken;
  v11 = [(CKVOToken *)&v16 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_keypath, path);
    v12->_index = index;
    v13 = MEMORY[0x24C215A50](blockCopy);
    block = v12->_block;
    v12->_block = v13;
  }

  return v12;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = CKVOToken;
  v4 = [(CKVOToken *)&v8 description];
  keypath = [(CKVOToken *)self keypath];
  v6 = [v3 stringWithFormat:@"%@ (%@ #%ld)", v4, keypath, -[CKVOToken index](self, "index")];

  return v6;
}

@end