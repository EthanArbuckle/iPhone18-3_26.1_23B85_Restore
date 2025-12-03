@interface CSUCLIPV3Embedding
+ (id)embeddingWithBuffer:(id)buffer type:(int64_t)type revision:(int64_t)revision;
- (BOOL)isCompatibleWith:(id)with;
- (CSUCLIPV3Embedding)initWithBuffer:(id)buffer type:(int64_t)type revision:(int64_t)revision;
@end

@implementation CSUCLIPV3Embedding

- (CSUCLIPV3Embedding)initWithBuffer:(id)buffer type:(int64_t)type revision:(int64_t)revision
{
  bufferCopy = buffer;
  v14.receiver = self;
  v14.super_class = CSUCLIPV3Embedding;
  v10 = [(CSUCLIPV3Embedding *)&v14 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_buffer, buffer);
    v11->_type = type;
    v11->_revision = revision;
    v12 = v11;
  }

  return v11;
}

+ (id)embeddingWithBuffer:(id)buffer type:(int64_t)type revision:(int64_t)revision
{
  bufferCopy = buffer;
  v8 = [CSUCLIPV3Embedding alloc];
  v10 = objc_msgSend_initWithBuffer_type_revision_(v8, v9, bufferCopy, type, revision);

  return v10;
}

- (BOOL)isCompatibleWith:(id)with
{
  withCopy = with;
  v9 = objc_msgSend_revision(withCopy, v5, v6, v7, v8);
  LOBYTE(self) = v9 == objc_msgSend_revision(self, v10, v11, v12, v13);

  return self;
}

@end