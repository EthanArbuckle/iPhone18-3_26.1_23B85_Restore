@interface BMPathEnumerator
- (BMPathEnumerator)initWithPath:(id)path;
- (id)navigateDown;
- (id)navigateUp;
- (id)peekPath;
@end

@implementation BMPathEnumerator

- (id)peekPath
{
  if (self->_range.length)
  {
    v3 = [(NSString *)self->_path substringWithRange:self->_range.location];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)navigateDown
{
  length = self->_range.length;
  if (length)
  {
    v4 = length + self->_range.location + 1;
    if (v4 > [(NSString *)self->_path length])
    {
      v5 = 0;
      goto LABEL_11;
    }
  }

  else
  {
    [(NSString *)self->_path length];
    v4 = 0;
  }

  v6 = [(NSString *)self->_path length];
  v7 = [(NSString *)self->_path rangeOfString:@"/" options:2 range:v4, v6 - v4];
  if (v7 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = v7;
  }

  v8 = [(NSString *)self->_path substringWithRange:v4, v6 - v4];
  self->_range.location = 0;
  self->_range.length = v6;
  if ([v8 length])
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  v5 = v9;

LABEL_11:

  return v5;
}

- (BMPathEnumerator)initWithPath:(id)path
{
  pathCopy = path;
  if ([pathCopy length])
  {
    v11.receiver = self;
    v11.super_class = BMPathEnumerator;
    v5 = [(BMPathEnumerator *)&v11 init];
    if (v5)
    {
      if ([pathCopy hasSuffix:@"/"])
      {
        v6 = [pathCopy substringToIndex:{objc_msgSend(pathCopy, "length") - 1}];
      }

      else
      {
        v6 = [pathCopy copy];
      }

      path = v5->_path;
      v5->_path = v6;

      v9 = [(NSString *)v5->_path length];
      v5->_range.location = 0;
      v5->_range.length = v9;
    }

    self = v5;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (id)navigateUp
{
  p_range = &self->_range;
  v4 = [(NSString *)self->_path rangeOfString:@"/" options:6 range:self->_range.location, self->_range.length];
  if (v4 == 0x7FFFFFFFFFFFFFFFLL)
  {
    lastPathComponent = 0;
    p_range->location = 0;
    p_range->length = 0;
  }

  else
  {
    self->_range.location = 0;
    self->_range.length = v4;
    v6 = [(NSString *)self->_path substringWithRange:0, v4];
    lastPathComponent = [v6 lastPathComponent];
  }

  return lastPathComponent;
}

@end