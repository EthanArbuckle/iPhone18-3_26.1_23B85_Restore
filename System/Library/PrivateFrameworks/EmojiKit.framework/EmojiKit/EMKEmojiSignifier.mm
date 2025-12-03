@interface EMKEmojiSignifier
- (EMKEmojiSignifier)initWithString:(id)string;
- (id)description;
@end

@implementation EMKEmojiSignifier

- (EMKEmojiSignifier)initWithString:(id)string
{
  stringCopy = string;
  if (stringCopy)
  {
    v8.receiver = self;
    v8.super_class = EMKEmojiSignifier;
    self = [(EMKEmojiSignifier *)&v8 init];
    if (self)
    {
      v5 = [stringCopy copy];
      string = self->_string;
      self->_string = v5;
    }
  }

  return self;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v7.receiver = self;
  v7.super_class = EMKEmojiSignifier;
  v4 = [(EMKEmojiSignifier *)&v7 description];
  v5 = [v3 stringWithFormat:@"%@%@", v4, self->_string];

  return v5;
}

@end