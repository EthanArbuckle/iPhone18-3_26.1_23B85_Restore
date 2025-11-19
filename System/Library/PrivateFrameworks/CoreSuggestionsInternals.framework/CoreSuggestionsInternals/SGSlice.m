@interface SGSlice
+ (id)sliceWithType:(id)a3 range:(_NSRange)a4;
+ (id)sliceWithType:(id)a3 start:(unint64_t)a4 end:(unint64_t)a5;
- (SGSlice)initWithType:(id)a3 start:(unint64_t)a4 end:(unint64_t)a5;
- (_NSRange)range;
- (id)description;
- (int64_t)compare:(id)a3;
@end

@implementation SGSlice

- (id)description
{
  v2 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"<%s %lu-%lu>", categoryDescriptions[self->_type.category], self->_start, self->_end];

  return v2;
}

- (int64_t)compare:(id)a3
{
  v4 = a3;
  start = self->_start;
  v6 = v4[2];
  if (start < v6)
  {
    goto LABEL_2;
  }

  if (start > v6)
  {
    goto LABEL_4;
  }

  end = self->_end;
  v10 = v4[3];
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
  v12 = *(v4 + 2);
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

- (SGSlice)initWithType:(id)a3 start:(unint64_t)a4 end:(unint64_t)a5
{
  v9.receiver = self;
  v9.super_class = SGSlice;
  result = [(SGSlice *)&v9 init];
  if (result)
  {
    result->_type = a3;
    result->_start = a4;
    result->_end = a5;
  }

  return result;
}

+ (id)sliceWithType:(id)a3 range:(_NSRange)a4
{
  v4 = [[SGSlice alloc] initWithType:*&a3 range:a4.location, a4.length];

  return v4;
}

+ (id)sliceWithType:(id)a3 start:(unint64_t)a4 end:(unint64_t)a5
{
  v5 = [[SGSlice alloc] initWithType:*&a3 start:a4 end:a5];

  return v5;
}

@end