@interface CLSOutputClue
- (CLSOutputClue)init;
- (id)description;
- (id)relatedInputLocationClues;
@end

@implementation CLSOutputClue

- (id)description
{
  v3 = MEMORY[0x277CCAB68];
  v9.receiver = self;
  v9.super_class = CLSOutputClue;
  v4 = [(CLSClue *)&v9 description];
  v5 = [v3 stringWithString:v4];

  if ([(NSMutableArray *)self->_relatedInputLocationClues count])
  {
    v6 = [(NSMutableArray *)self->_relatedInputLocationClues valueForKeyPath:@"address"];
    v7 = [v6 flattenWithSeparator:{@", "}];
    [v5 appendFormat:@"\n\trelatedLocation:[%@]", v7];
  }

  if (self->_relatedPerson)
  {
    [v5 appendFormat:@"\n\trelatedPerson:[%@]", self->_relatedPerson];
  }

  return v5;
}

- (id)relatedInputLocationClues
{
  v2 = [(NSMutableArray *)self->_relatedInputLocationClues copy];

  return v2;
}

- (CLSOutputClue)init
{
  v6.receiver = self;
  v6.super_class = CLSOutputClue;
  v2 = [(CLSClue *)&v6 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CBEB18] array];
    relatedInputLocationClues = v2->_relatedInputLocationClues;
    v2->_relatedInputLocationClues = v3;
  }

  return v2;
}

@end