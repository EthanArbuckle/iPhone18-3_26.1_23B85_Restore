@interface MSVFinally
- (MSVFinally)initWithBlock:(id)a3;
- (void)dealloc;
@end

@implementation MSVFinally

- (void)dealloc
{
  (*(self->_block + 2))();
  v3.receiver = self;
  v3.super_class = MSVFinally;
  [(MSVFinally *)&v3 dealloc];
}

- (MSVFinally)initWithBlock:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = MSVFinally;
  v5 = [(MSVFinally *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    block = v5->_block;
    v5->_block = v6;
  }

  return v5;
}

@end