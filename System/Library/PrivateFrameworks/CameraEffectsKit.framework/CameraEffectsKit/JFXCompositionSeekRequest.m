@interface JFXCompositionSeekRequest
- (JFXCompositionSeekRequest)initWithBlock:(id)a3 withSeekTime:(int)a4;
- (id)description;
@end

@implementation JFXCompositionSeekRequest

- (JFXCompositionSeekRequest)initWithBlock:(id)a3 withSeekTime:(int)a4
{
  v6.receiver = self;
  v6.super_class = JFXCompositionSeekRequest;
  result = [(JFXCompositionPlayerRequest *)&v6 initWithBlock:a3 ofType:4];
  if (result)
  {
    result->_seekTime = a4;
  }

  return result;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v7.receiver = self;
  v7.super_class = JFXCompositionSeekRequest;
  v4 = [(JFXCompositionPlayerRequest *)&v7 description];
  v5 = [v3 stringWithFormat:@"<%@ seekTime:%d>", v4, -[JFXCompositionSeekRequest seekTime](self, "seekTime")];

  return v5;
}

@end