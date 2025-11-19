@interface DDRange
+ (id)rangeWithDOMRange:(id)a3;
- (DDRange)initWithDOMRange:(id)a3;
- (void)dealloc;
@end

@implementation DDRange

- (DDRange)initWithDOMRange:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = DDRange;
  v5 = [(DDRange *)&v9 init];
  if (v5)
  {
    v6 = [v4 startContainer];
    node = v5->_node;
    v5->_node = v6;

    v5->_startOffset = [v4 startOffset];
    v5->_endOffset = [v4 endOffset];
  }

  return v5;
}

+ (id)rangeWithDOMRange:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithDOMRange:v4];

  return v5;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = DDRange;
  [(DDRange *)&v2 dealloc];
}

@end