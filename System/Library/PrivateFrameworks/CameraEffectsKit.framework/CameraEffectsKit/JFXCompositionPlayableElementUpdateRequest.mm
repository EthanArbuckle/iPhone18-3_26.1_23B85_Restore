@interface JFXCompositionPlayableElementUpdateRequest
- (JFXCompositionPlayableElementUpdateRequest)initWithBlock:(id)block withClip:(id)clip;
- (id)description;
@end

@implementation JFXCompositionPlayableElementUpdateRequest

- (JFXCompositionPlayableElementUpdateRequest)initWithBlock:(id)block withClip:(id)clip
{
  clipCopy = clip;
  v11.receiver = self;
  v11.super_class = JFXCompositionPlayableElementUpdateRequest;
  v7 = [(JFXCompositionPlayerRequest *)&v11 initWithBlock:block ofType:5];
  if (v7)
  {
    uuid = [clipCopy uuid];
    clipUUID = v7->_clipUUID;
    v7->_clipUUID = uuid;
  }

  return v7;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = JFXCompositionPlayableElementUpdateRequest;
  v4 = [(JFXCompositionPlayerRequest *)&v8 description];
  clipUUID = [(JFXCompositionPlayableElementUpdateRequest *)self clipUUID];
  v6 = [v3 stringWithFormat:@"<%@ clipID:%@>", v4, clipUUID];

  return v6;
}

@end