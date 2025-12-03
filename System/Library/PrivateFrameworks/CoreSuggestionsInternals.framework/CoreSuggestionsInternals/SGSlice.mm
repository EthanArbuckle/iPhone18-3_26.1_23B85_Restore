@interface SGSlice
+ (id)sliceWithType:(id)type range:(_NSRange)range;
+ (id)sliceWithType:(id)type start:(unint64_t)start end:(unint64_t)end;
- (SGSlice)initWithType:(id)type start:(unint64_t)start end:(unint64_t)end;
- (_NSRange)range;
- (id)description;
- (int64_t)compare:(id)compare;
@end

@implementation SGSlice

- (id)description
{
  v2 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"<%s %lu-%lu>", categoryDescriptions[self->_type.category], self->_start, self->_end];

  return v2;
}

- (int64_t)compare:(id)compare
{
  compareCopy = compare;
  start = self->_start;
  v6 = compareCopy[2];
  if (start < v6)
  {
    goto LABEL_2;
  }

  if (start > v6)
  {
    goto LABEL_4;
  }

  end = self->_end;
  v10 = compareCopy[3];
  if (end < v10)
  {
LABEL_2:
    v7 = -1;
    goto LABEL_5;
  }

  if (end > v10)
  {
LABEL_4:
    v7 = 1;
    goto LABEL_5;
  }

  type = self->_type;
  v12 = *(compareCopy + 2);
  v13 = *&type >= v12;
  v14 = *&type > v12;
  if (v13)
  {
    v7 = v14;
  }

  else
  {
    v7 = -1;
  }

LABEL_5:

  return v7;
}

- (_NSRange)range
{
  v2 = self->_end - self->_start;
  start = self->_start;
  result.length = v2;
  result.location = start;
  return result;
}

- (SGSlice)initWithType:(id)type start:(unint64_t)start end:(unint64_t)end
{
  v9.receiver = self;
  v9.super_class = SGSlice;
  result = [(SGSlice *)&v9 init];
  if (result)
  {
    result->_type = type;
    result->_start = start;
    result->_end = end;
  }

  return result;
}

+ (id)sliceWithType:(id)type range:(_NSRange)range
{
  v4 = [[SGSlice alloc] initWithType:*&type range:range.location, range.length];

  return v4;
}

+ (id)sliceWithType:(id)type start:(unint64_t)start end:(unint64_t)end
{
  v5 = [[SGSlice alloc] initWithType:*&type start:start end:end];

  return v5;
}

@end