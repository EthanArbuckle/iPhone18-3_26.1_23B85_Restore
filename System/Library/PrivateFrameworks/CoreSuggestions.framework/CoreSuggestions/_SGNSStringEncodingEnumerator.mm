@interface _SGNSStringEncodingEnumerator
- (_SGNSStringEncodingEnumerator)initWithString:(id)string encoding:(unint64_t)encoding nullTerminated:(BOOL)terminated;
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
    nullTerminationIfNeeded = [(_SGNSStringEncodingEnumerator *)self nullTerminationIfNeeded];
    goto LABEL_5;
  }

  if (self->_needsBOM)
  {
    self->_needsBOM = 0;
    nullTerminationIfNeeded = bomData();
LABEL_5:
    v5 = nullTerminationIfNeeded;
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
    nullTerminationIfNeeded2 = [v8 initWithBytes:v14 length:v13];
  }

  else
  {
    nullTerminationIfNeeded2 = [(_SGNSStringEncodingEnumerator *)self nullTerminationIfNeeded];
  }

  v5 = nullTerminationIfNeeded2;
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

- (_SGNSStringEncodingEnumerator)initWithString:(id)string encoding:(unint64_t)encoding nullTerminated:(BOOL)terminated
{
  stringCopy = string;
  v14.receiver = self;
  v14.super_class = _SGNSStringEncodingEnumerator;
  v10 = [(_SGNSStringEncodingEnumerator *)&v14 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_string, string);
    v11->_encoding = encoding;
    v12 = [stringCopy length];
    v11->_remaining.location = 0;
    v11->_remaining.length = v12;
    v11->_needsBOM = encoding == 10;
    v11->_needsNullTermination = terminated;
  }

  return v11;
}

@end