@interface ICTrackedParagraph
- (_NSRange)characterRange;
- (id)description;
@end

@implementation ICTrackedParagraph

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  paragraph = [(ICTrackedParagraph *)self paragraph];
  v9.location = [(ICTrackedParagraph *)self characterRange];
  v5 = NSStringFromRange(v9);
  v6 = [v3 stringWithFormat:@"<ICTrackedParagraph %p %@ %@>", self, paragraph, v5];

  return v6;
}

- (_NSRange)characterRange
{
  length = self->_characterRange.length;
  location = self->_characterRange.location;
  result.length = length;
  result.location = location;
  return result;
}

@end