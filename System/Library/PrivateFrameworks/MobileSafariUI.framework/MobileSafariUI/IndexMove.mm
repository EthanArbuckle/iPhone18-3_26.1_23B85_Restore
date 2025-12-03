@interface IndexMove
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToMove:(id)move;
- (IndexMove)initWithIndexBeforeMove:(int64_t)move indexAfterMove:(int64_t)afterMove modified:(BOOL)modified;
- (id)description;
@end

@implementation IndexMove

- (IndexMove)initWithIndexBeforeMove:(int64_t)move indexAfterMove:(int64_t)afterMove modified:(BOOL)modified
{
  v12.receiver = self;
  v12.super_class = IndexMove;
  v8 = [(IndexMove *)&v12 init];
  v9 = v8;
  if (v8)
  {
    v8->_indexBeforeMove = move;
    v8->_indexAfterMove = afterMove;
    v8->_modified = modified;
    v10 = v8;
  }

  return v9;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(IndexMove *)self isEqualToMove:equalCopy];
  }

  return v5;
}

- (BOOL)isEqualToMove:(id)move
{
  moveCopy = move;
  v5 = moveCopy == self || moveCopy && self->_indexBeforeMove == moveCopy->_indexBeforeMove && self->_indexAfterMove == moveCopy->_indexAfterMove && self->_modified == moveCopy->_modified;

  return v5;
}

- (id)description
{
  if (self->_modified)
  {
    v2 = @"*";
  }

  else
  {
    v2 = &stru_2827BF158;
  }

  return [MEMORY[0x277CCACA8] stringWithFormat:@"[ %ld -> %ld%@ ]", self->_indexBeforeMove, self->_indexAfterMove, v2];
}

@end