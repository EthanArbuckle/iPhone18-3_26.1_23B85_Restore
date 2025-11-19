@interface CHPointFIFO
- (CHPointFIFO)initWithFIFO:(id)a3;
- (void)emitPoint:(CHPointFIFO *)self;
@end

@implementation CHPointFIFO

- (CHPointFIFO)initWithFIFO:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = CHPointFIFO;
  v6 = [(CHPointFIFO *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_nextFIFO, a3);
  }

  return v7;
}

- (void)emitPoint:(CHPointFIFO *)self
{
  if (self)
  {
    self = self->_nextFIFO;
  }

  objc_msgSend_addPoint_(self, a2, v2, v3, v4, v5);
}

@end