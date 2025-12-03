@interface CARStreamInfo
- (CARStreamInfo)initWithDictionary:(id)dictionary;
- (CARStreamInfo)initWithStreamInfoDictionary:(id)dictionary;
- (CGPoint)origin;
- (id)description;
@end

@implementation CARStreamInfo

- (CGPoint)origin
{
  x = self->_origin.x;
  y = self->_origin.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CARStreamInfo)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v14.receiver = self;
  v14.super_class = CARStreamInfo;
  v5 = [(CARStreamInfo *)&v14 init];
  v6 = v5;
  if (!v5)
  {
    goto LABEL_14;
  }

  if (!CROriginFromAirPlayDictionary(dictionaryCopy, &v5->_origin.x))
  {
    goto LABEL_16;
  }

  objc_opt_class();
  v7 = [dictionaryCopy objectForKey:@"uuid"];
  if (v7 && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  if (v8)
  {
    v9 = [(CARStreamInfo *)v8 copy];
    identifier = v6->_identifier;
    v6->_identifier = v9;

    objc_opt_class();
    v11 = [dictionaryCopy objectForKey:@"zIndex"];
    if (v11 && (objc_opt_isKindOfClass() & 1) != 0)
    {
      v12 = v11;
    }

    else
    {
      v12 = 0;
    }

    if (v12)
    {
      v6->_zIndex = [v12 integerValue];

LABEL_14:
      v8 = v6;
      goto LABEL_17;
    }

LABEL_16:
    v8 = 0;
  }

LABEL_17:

  return v8;
}

- (CARStreamInfo)initWithStreamInfoDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v12.receiver = self;
  v12.super_class = CARStreamInfo;
  v5 = [(CARStreamInfo *)&v12 init];
  if (v5)
  {
    objc_opt_class();
    v6 = [dictionaryCopy objectForKey:@"ScreenID"];
    if (v6 && (objc_opt_isKindOfClass() & 1) != 0)
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }

    if (!v7)
    {
      v10 = 0;
      goto LABEL_10;
    }

    v8 = [v7 copy];
    v9 = *(v5 + 1);
    *(v5 + 1) = v8;

    *(v5 + 24) = *MEMORY[0x1E695EFF8];
    *(v5 + 2) = 0;
  }

  v10 = v5;
LABEL_10:

  return v10;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v9.receiver = self;
  v9.super_class = CARStreamInfo;
  v4 = [(CARStreamInfo *)&v9 description];
  identifier = self->_identifier;
  v6 = BSStringFromCGPoint();
  v7 = [v3 stringWithFormat:@"%@ {identifier: %@, physicalSize: %@, pixelSize: %ld}", v4, identifier, v6, self->_zIndex];

  return v7;
}

@end