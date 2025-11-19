@interface _SGNSStringEncodingEnumerator
- (_SGNSStringEncodingEnumerator)initWithString:(id)a3 encoding:(unint64_t)a4 nullTerminated:(BOOL)a5;
- (id)nextObject;
- (id)nullTerminationIfNeeded;
@end

@implementation _SGNSStringEncodingEnumerator

- (id)nextObject
{
  v15 = *MEMORY[0x1E69E9840];
  p_remaining = &self->_remaining;
  if (!self->_remaining.length)
  {
    v4 = [(_SGNSStringEncodingEnumerator *)self nullTerminationIfNeeded];
    goto LABEL_5;
  }

  if (self->_needsBOM)
  {
    self->_needsBOM = 0;
    v4 = bomData();
LABEL_5:
    v5 = v4;
    goto LABEL_14;
  }

  v6 = objc_autoreleasePoolPush();
  bzero(v14, 0x1000uLL);
  v13 = 0;
  v12 = 0;
  if ([(NSString *)self->_string getBytes:v14 maxLength:4096 usedLength:&v13 encoding:self->_encoding options:0 range:p_remaining->location remainingRange:p_remaining->length, &v12])
  {
    if (!v12.length)
    {
      v7 = v13;
      if (v13 <= 0xFFF && self->_needsNullTermination)
      {
        self->_needsNullTermination = 0;
        v13 = v7 + 1;
        v14[v7] = 0;
      }
    }

    *p_remaining = v12;
    v8 = objc_alloc(MEMORY[0x1E695DEF0]);
    v9 = [v8 initWithBytes:v14 length:v13];
  }

  else
  {
    v9 = [(_SGNSStringEncodingEnumerator *)self nullTerminationIfNeeded];
  }

  v5 = v9;
  objc_autoreleasePoolPop(v6);
LABEL_14:
  v10 = *MEMORY[0x1E69E9840];

  return v5;
}

- (id)nullTerminationIfNeeded
{
  if (self->_needsNullTermination)
  {
    self->_needsNullTermination = 0;
    v3 = nullByteData();
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (_SGNSStringEncodingEnumerator)initWithString:(id)a3 encoding:(unint64_t)a4 nullTerminated:(BOOL)a5
{
  v9 = a3;
  v14.receiver = self;
  v14.super_class = _SGNSStringEncodingEnumerator;
  v10 = [(_SGNSStringEncodingEnumerator *)&v14 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_string, a3);
    v11->_encoding = a4;
    v12 = [v9 length];
    v11->_remaining.location = 0;
    v11->_remaining.length = v12;
    v11->_needsBOM = a4 == 10;
    v11->_needsNullTermination = a5;
  }

  return v11;
}

@end