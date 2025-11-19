@interface BPSBookmarkableArrayEnumerator
- (BPSBookmarkableArrayEnumerator)initWithArray:(id)a3;
- (id)nextObject;
- (id)validateBookmark:(id)a3;
@end

@implementation BPSBookmarkableArrayEnumerator

- (id)nextObject
{
  index = self->_index;
  if (index >= [(NSArray *)self->_array count])
  {
    v4 = 0;
  }

  else
  {
    v4 = [(NSArray *)self->_array objectAtIndexedSubscript:self->_index];
    ++self->_index;
  }

  return v4;
}

- (BPSBookmarkableArrayEnumerator)initWithArray:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = BPSBookmarkableArrayEnumerator;
  v6 = [(BPSBookmarkableArrayEnumerator *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_array, a3);
    v7->_index = 0;
  }

  return v7;
}

- (id)validateBookmark:(id)a3
{
  v13[1] = *MEMORY[0x1E69E9840];
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = 0;
  }

  else
  {
    v5 = objc_alloc(MEMORY[0x1E696AEC0]);
    v6 = objc_opt_class();
    v7 = [v5 initWithFormat:@"%@ expected bookmark of class %@, but received %@", v6, objc_opt_class(), v3];
    v8 = MEMORY[0x1E696ABC0];
    v12 = *MEMORY[0x1E696A578];
    v13[0] = v7;
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:&v12 count:1];
    v4 = [v8 errorWithDomain:@"BiomePubSubError" code:2 userInfo:v9];
  }

  v10 = *MEMORY[0x1E69E9840];

  return v4;
}

@end