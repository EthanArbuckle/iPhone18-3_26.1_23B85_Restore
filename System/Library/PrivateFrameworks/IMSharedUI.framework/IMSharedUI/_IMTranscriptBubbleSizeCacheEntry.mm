@interface _IMTranscriptBubbleSizeCacheEntry
- (CGSize)size;
- (_IMTranscriptBubbleSizeCacheEntry)initWithSize:(CGSize)a3 maximumWidth:(double)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
@end

@implementation _IMTranscriptBubbleSizeCacheEntry

- (_IMTranscriptBubbleSizeCacheEntry)initWithSize:(CGSize)a3 maximumWidth:(double)a4
{
  height = a3.height;
  width = a3.width;
  v8.receiver = self;
  v8.super_class = _IMTranscriptBubbleSizeCacheEntry;
  result = [(_IMTranscriptBubbleSizeCacheEntry *)&v8 init];
  if (result)
  {
    result->_size.width = width;
    result->_size.height = height;
    result->_maximumWidth = a4;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [_IMTranscriptBubbleSizeCacheEntry alloc];
  maximumWidth = self->_maximumWidth;
  width = self->_size.width;
  height = self->_size.height;

  return objc_msgSend_initWithSize_maximumWidth_(v4, v5, v6, width, height, maximumWidth);
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  objc_msgSend_minimumWidth(self, v6, v7);
  v9 = v8;
  objc_msgSend_maximumWidth(self, v10, v11);
  v13 = v12;
  objc_msgSend_size(self, v14, v15);
  v18 = objc_msgSend_stringWithFormat_(v3, v16, @"<%@ (%p)> MINWIDTH: %f, MAXWIDTH: %f, HEIGHT: %f", v5, self, v9, v13, v17);

  return v18;
}

- (CGSize)size
{
  width = self->_size.width;
  height = self->_size.height;
  result.height = height;
  result.width = width;
  return result;
}

@end