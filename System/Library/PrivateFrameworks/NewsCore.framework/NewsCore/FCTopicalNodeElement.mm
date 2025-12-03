@interface FCTopicalNodeElement
- (BOOL)isEqual:(id)equal;
@end

@implementation FCTopicalNodeElement

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (!self)
  {
    identifier = 0;
    if (equalCopy)
    {
      goto LABEL_3;
    }

LABEL_6:
    v7 = 0;
    goto LABEL_4;
  }

  identifier = self->_identifier;
  if (!equalCopy)
  {
    goto LABEL_6;
  }

LABEL_3:
  v7 = equalCopy[1];
LABEL_4:
  v8 = identifier;
  v9 = [(NSString *)v8 isEqualToString:v7];

  return v9;
}

@end