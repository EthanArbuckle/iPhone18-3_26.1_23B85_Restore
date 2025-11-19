@interface CKVOToken
- (CKVOToken)initWithKeyPath:(id)a3 index:(int64_t)a4 block:(id)a5;
- (id)description;
@end

@implementation CKVOToken

- (CKVOToken)initWithKeyPath:(id)a3 index:(int64_t)a4 block:(id)a5
{
  v9 = a3;
  v10 = a5;
  v16.receiver = self;
  v16.super_class = CKVOToken;
  v11 = [(CKVOToken *)&v16 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_keypath, a3);
    v12->_index = a4;
    v13 = MEMORY[0x24C215A50](v10);
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
  v5 = [(CKVOToken *)self keypath];
  v6 = [v3 stringWithFormat:@"%@ (%@ #%ld)", v4, v5, -[CKVOToken index](self, "index")];

  return v6;
}

@end