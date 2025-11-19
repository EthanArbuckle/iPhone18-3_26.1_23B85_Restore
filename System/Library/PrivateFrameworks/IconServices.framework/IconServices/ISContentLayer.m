@interface ISContentLayer
- (ISContentLayer)init;
@end

@implementation ISContentLayer

- (ISContentLayer)init
{
  v6.receiver = self;
  v6.super_class = ISContentLayer;
  v2 = [(ISLayer *)&v6 init];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x1E69A8968]) initWithWhite:0.0 alpha:0.0];
    backgroundColor = v2->_backgroundColor;
    v2->_backgroundColor = v3;

    v2->_acceptSymbol = 1;
  }

  return v2;
}

@end