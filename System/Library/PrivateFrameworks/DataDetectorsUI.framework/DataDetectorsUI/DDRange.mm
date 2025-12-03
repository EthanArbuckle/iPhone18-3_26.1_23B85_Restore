@interface DDRange
+ (id)rangeWithDOMRange:(id)range;
- (DDRange)initWithDOMRange:(id)range;
- (void)dealloc;
@end

@implementation DDRange

- (DDRange)initWithDOMRange:(id)range
{
  rangeCopy = range;
  v9.receiver = self;
  v9.super_class = DDRange;
  v5 = [(DDRange *)&v9 init];
  if (v5)
  {
    startContainer = [rangeCopy startContainer];
    node = v5->_node;
    v5->_node = startContainer;

    v5->_startOffset = [rangeCopy startOffset];
    v5->_endOffset = [rangeCopy endOffset];
  }

  return v5;
}

+ (id)rangeWithDOMRange:(id)range
{
  rangeCopy = range;
  v5 = [[self alloc] initWithDOMRange:rangeCopy];

  return v5;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = DDRange;
  [(DDRange *)&v2 dealloc];
}

@end