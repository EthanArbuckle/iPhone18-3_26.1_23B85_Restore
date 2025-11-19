@interface JFXCompositionPlayableElementUpdateRequest
- (JFXCompositionPlayableElementUpdateRequest)initWithBlock:(id)a3 withClip:(id)a4;
- (id)description;
@end

@implementation JFXCompositionPlayableElementUpdateRequest

- (JFXCompositionPlayableElementUpdateRequest)initWithBlock:(id)a3 withClip:(id)a4
{
  v6 = a4;
  v11.receiver = self;
  v11.super_class = JFXCompositionPlayableElementUpdateRequest;
  v7 = [(JFXCompositionPlayerRequest *)&v11 initWithBlock:a3 ofType:5];
  if (v7)
  {
    v8 = [v6 uuid];
    clipUUID = v7->_clipUUID;
    v7->_clipUUID = v8;
  }

  return v7;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = JFXCompositionPlayableElementUpdateRequest;
  v4 = [(JFXCompositionPlayerRequest *)&v8 description];
  v5 = [(JFXCompositionPlayableElementUpdateRequest *)self clipUUID];
  v6 = [v3 stringWithFormat:@"<%@ clipID:%@>", v4, v5];

  return v6;
}

@end