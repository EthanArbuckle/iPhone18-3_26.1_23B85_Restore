@interface EMKEmojiTokenList
- (EMKEmojiTokenList)initWithEmojiTokenArray:(id)array;
- (id)description;
@end

@implementation EMKEmojiTokenList

- (EMKEmojiTokenList)initWithEmojiTokenArray:(id)array
{
  arrayCopy = array;
  if (arrayCopy)
  {
    v8.receiver = self;
    v8.super_class = EMKEmojiTokenList;
    self = [(EMKEmojiTokenList *)&v8 init];
    if (self)
    {
      v5 = [arrayCopy copy];
      emojiTokenArray = self->_emojiTokenArray;
      self->_emojiTokenArray = v5;
    }
  }

  return self;
}

- (id)description
{
  v11.receiver = self;
  v11.super_class = EMKEmojiTokenList;
  v3 = [(EMKEmojiTokenList *)&v11 description];
  v4 = [v3 mutableCopy];

  v5 = [(NSArray *)self->_emojiTokenArray count];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    do
    {
      v8 = [(NSArray *)self->_emojiTokenArray objectAtIndex:v7];
      string = [v8 string];
      [v4 appendString:string];

      if (++v7 < v6)
      {
        [v4 appendString:@"/"];
      }
    }

    while (v6 != v7);
  }

  return v4;
}

@end