@interface _CDContactStatistics
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToContactStatistics:(id)statistics;
- (_CDContactStatistics)initWithCoder:(id)coder;
- (double)interactionTimeInterval;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)firstDate:(id)date updatedWith:(id)with;
- (id)firstInteractionDate;
- (id)lastDate:(id)date updatedWith:(id)with;
- (id)lastInteractionDate;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)updateWithStatistics:(id)statistics;
@end

@implementation _CDContactStatistics

- (_CDContactStatistics)initWithCoder:(id)coder
{
  coderCopy = coder;
  v20.receiver = self;
  v20.super_class = _CDContactStatistics;
  v5 = [(_CDContactStatistics *)&v20 init];
  if (v5)
  {
    v5->_outgoingRecipientCount = [coderCopy decodeIntegerForKey:@"outgoingRecipientCount"];
    v5->_incomingSenderCount = [coderCopy decodeIntegerForKey:@"incomingSenderCount"];
    v5->_incomingRecipientCount = [coderCopy decodeIntegerForKey:@"incomingRecipientCount"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"lastOutgoingRecipientDate"];
    lastOutgoingRecipientDate = v5->_lastOutgoingRecipientDate;
    v5->_lastOutgoingRecipientDate = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"lastIncomingSenderDate"];
    lastIncomingSenderDate = v5->_lastIncomingSenderDate;
    v5->_lastIncomingSenderDate = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"lastIncomingRecipientDate"];
    lastIncomingRecipientDate = v5->_lastIncomingRecipientDate;
    v5->_lastIncomingRecipientDate = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"firstOutgoingRecipientDate"];
    firstOutgoingRecipientDate = v5->_firstOutgoingRecipientDate;
    v5->_firstOutgoingRecipientDate = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"firstIncomingSenderDate"];
    firstIncomingSenderDate = v5->_firstIncomingSenderDate;
    v5->_firstIncomingSenderDate = v14;

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"firstIncomingRecipientDate"];
    firstIncomingRecipientDate = v5->_firstIncomingRecipientDate;
    v5->_firstIncomingRecipientDate = v16;

    v18 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  outgoingRecipientCount = self->_outgoingRecipientCount;
  coderCopy = coder;
  [coderCopy encodeInteger:outgoingRecipientCount forKey:@"outgoingRecipientCount"];
  [coderCopy encodeInteger:self->_incomingSenderCount forKey:@"incomingSenderCount"];
  [coderCopy encodeInteger:self->_incomingRecipientCount forKey:@"incomingRecipientCount"];
  [coderCopy encodeObject:self->_lastOutgoingRecipientDate forKey:@"lastOutgoingRecipientDate"];
  [coderCopy encodeObject:self->_lastIncomingSenderDate forKey:@"lastIncomingSenderDate"];
  [coderCopy encodeObject:self->_lastIncomingRecipientDate forKey:@"lastIncomingRecipientDate"];
  [coderCopy encodeObject:self->_firstOutgoingRecipientDate forKey:@"firstOutgoingRecipientDate"];
  [coderCopy encodeObject:self->_firstIncomingSenderDate forKey:@"firstIncomingSenderDate"];
  [coderCopy encodeObject:self->_firstIncomingRecipientDate forKey:@"firstIncomingRecipientDate"];
}

- (id)description
{
  v3 = objc_alloc_init(MEMORY[0x1E696AD60]);
  [v3 appendString:@"Statistics { \n"];
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[_CDContactStatistics interactionCount](self, "interactionCount")}];
  [v3 appendFormat:@"             Count: %@\n", v4];

  [(_CDContactStatistics *)self interactionTimeInterval];
  v6 = v5 / 86400.0;
  firstInteractionDate = [(_CDContactStatistics *)self firstInteractionDate];
  lastInteractionDate = [(_CDContactStatistics *)self lastInteractionDate];
  [v3 appendFormat:@"             Times: %3.1f days, %@ - %@\n", *&v6, firstInteractionDate, lastInteractionDate];

  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[_CDContactStatistics outgoingRecipientCount](self, "outgoingRecipientCount")}];
  [v3 appendFormat:@"         Out Count: %@\n", v9];

  [(_CDContactStatistics *)self outgoingRecipientTimeInterval];
  v11 = v10 / 86400.0;
  firstOutgoingRecipientDate = [(_CDContactStatistics *)self firstOutgoingRecipientDate];
  lastOutgoingRecipientDate = [(_CDContactStatistics *)self lastOutgoingRecipientDate];
  [v3 appendFormat:@"         Out Times: %3.1f days, %@ - %@\n", *&v11, firstOutgoingRecipientDate, lastOutgoingRecipientDate];

  v14 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[_CDContactStatistics incomingSenderCount](self, "incomingSenderCount")}];
  [v3 appendFormat:@"          In Count: %@\n", v14];

  [(_CDContactStatistics *)self incomingSenderTimeInterval];
  v16 = v15 / 86400.0;
  firstIncomingSenderDate = [(_CDContactStatistics *)self firstIncomingSenderDate];
  lastIncomingSenderDate = [(_CDContactStatistics *)self lastIncomingSenderDate];
  [v3 appendFormat:@"          In Times: %3.1f days, %@ - %@\n", *&v16, firstIncomingSenderDate, lastIncomingSenderDate];

  v19 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[_CDContactStatistics incomingRecipientCount](self, "incomingRecipientCount")}];
  [v3 appendFormat:@"    Joint In Count: %@\n", v19];

  [(_CDContactStatistics *)self incomingRecipientTimeInterval];
  v21 = v20 / 86400.0;
  firstIncomingRecipientDate = [(_CDContactStatistics *)self firstIncomingRecipientDate];
  lastIncomingRecipientDate = [(_CDContactStatistics *)self lastIncomingRecipientDate];
  [v3 appendFormat:@"    Joint In Times: %3.1f days, %@ - %@\n", *&v21, firstIncomingRecipientDate, lastIncomingRecipientDate];

  [v3 appendString:@"}\n"];

  return v3;
}

- (id)firstDate:(id)date updatedWith:(id)with
{
  dateCopy = date;
  withCopy = with;
  v7 = withCopy;
  if (dateCopy)
  {
    if (withCopy)
    {
      v8 = [dateCopy earlierDate:withCopy];
    }

    else
    {
      v8 = dateCopy;
    }
  }

  else
  {
    v8 = withCopy;
  }

  v9 = v8;

  return v9;
}

- (id)lastDate:(id)date updatedWith:(id)with
{
  dateCopy = date;
  withCopy = with;
  v7 = withCopy;
  if (dateCopy)
  {
    if (withCopy)
    {
      v8 = [dateCopy laterDate:withCopy];
    }

    else
    {
      v8 = dateCopy;
    }
  }

  else
  {
    v8 = withCopy;
  }

  v9 = v8;

  return v9;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [[_CDContactStatistics allocWithZone:?]];
  [(_CDContactStatistics *)v4 setOutgoingRecipientCount:[(_CDContactStatistics *)self outgoingRecipientCount]];
  [(_CDContactStatistics *)v4 setIncomingSenderCount:[(_CDContactStatistics *)self incomingSenderCount]];
  [(_CDContactStatistics *)v4 setIncomingRecipientCount:[(_CDContactStatistics *)self incomingRecipientCount]];
  lastOutgoingRecipientDate = [(_CDContactStatistics *)self lastOutgoingRecipientDate];
  [(_CDContactStatistics *)v4 setLastOutgoingRecipientDate:lastOutgoingRecipientDate];

  lastIncomingSenderDate = [(_CDContactStatistics *)self lastIncomingSenderDate];
  [(_CDContactStatistics *)v4 setLastIncomingSenderDate:lastIncomingSenderDate];

  lastIncomingRecipientDate = [(_CDContactStatistics *)self lastIncomingRecipientDate];
  [(_CDContactStatistics *)v4 setLastIncomingRecipientDate:lastIncomingRecipientDate];

  firstOutgoingRecipientDate = [(_CDContactStatistics *)self firstOutgoingRecipientDate];
  [(_CDContactStatistics *)v4 setFirstOutgoingRecipientDate:firstOutgoingRecipientDate];

  firstIncomingSenderDate = [(_CDContactStatistics *)self firstIncomingSenderDate];
  [(_CDContactStatistics *)v4 setFirstIncomingSenderDate:firstIncomingSenderDate];

  firstIncomingRecipientDate = [(_CDContactStatistics *)self firstIncomingRecipientDate];
  [(_CDContactStatistics *)v4 setFirstIncomingRecipientDate:firstIncomingRecipientDate];

  return v4;
}

- (void)updateWithStatistics:(id)statistics
{
  if (statistics)
  {
    statisticsCopy = statistics;
    -[_CDContactStatistics setOutgoingRecipientCount:](self, "setOutgoingRecipientCount:", -[_CDContactStatistics outgoingRecipientCount](self, "outgoingRecipientCount") + [statisticsCopy outgoingRecipientCount]);
    -[_CDContactStatistics setIncomingSenderCount:](self, "setIncomingSenderCount:", -[_CDContactStatistics incomingSenderCount](self, "incomingSenderCount") + [statisticsCopy incomingSenderCount]);
    -[_CDContactStatistics setIncomingRecipientCount:](self, "setIncomingRecipientCount:", -[_CDContactStatistics incomingRecipientCount](self, "incomingRecipientCount") + [statisticsCopy incomingRecipientCount]);
    firstOutgoingRecipientDate = [(_CDContactStatistics *)self firstOutgoingRecipientDate];
    firstOutgoingRecipientDate2 = [statisticsCopy firstOutgoingRecipientDate];
    v7 = [(_CDContactStatistics *)self firstDate:firstOutgoingRecipientDate updatedWith:firstOutgoingRecipientDate2];
    [(_CDContactStatistics *)self setFirstOutgoingRecipientDate:v7];

    firstIncomingSenderDate = [(_CDContactStatistics *)self firstIncomingSenderDate];
    firstIncomingSenderDate2 = [statisticsCopy firstIncomingSenderDate];
    v10 = [(_CDContactStatistics *)self firstDate:firstIncomingSenderDate updatedWith:firstIncomingSenderDate2];
    [(_CDContactStatistics *)self setFirstIncomingSenderDate:v10];

    firstIncomingRecipientDate = [(_CDContactStatistics *)self firstIncomingRecipientDate];
    firstIncomingRecipientDate2 = [statisticsCopy firstIncomingRecipientDate];
    v13 = [(_CDContactStatistics *)self firstDate:firstIncomingRecipientDate updatedWith:firstIncomingRecipientDate2];
    [(_CDContactStatistics *)self setFirstIncomingRecipientDate:v13];

    lastOutgoingRecipientDate = [(_CDContactStatistics *)self lastOutgoingRecipientDate];
    lastOutgoingRecipientDate2 = [statisticsCopy lastOutgoingRecipientDate];
    v16 = [(_CDContactStatistics *)self lastDate:lastOutgoingRecipientDate updatedWith:lastOutgoingRecipientDate2];
    [(_CDContactStatistics *)self setLastOutgoingRecipientDate:v16];

    lastIncomingSenderDate = [(_CDContactStatistics *)self lastIncomingSenderDate];
    lastIncomingSenderDate2 = [statisticsCopy lastIncomingSenderDate];
    v19 = [(_CDContactStatistics *)self lastDate:lastIncomingSenderDate updatedWith:lastIncomingSenderDate2];
    [(_CDContactStatistics *)self setLastIncomingSenderDate:v19];

    lastIncomingRecipientDate = [(_CDContactStatistics *)self lastIncomingRecipientDate];
    lastIncomingRecipientDate2 = [statisticsCopy lastIncomingRecipientDate];

    v21 = [(_CDContactStatistics *)self lastDate:lastIncomingRecipientDate updatedWith:lastIncomingRecipientDate2];
    [(_CDContactStatistics *)self setLastIncomingRecipientDate:v21];
  }
}

- (id)firstInteractionDate
{
  v3 = [(_CDContactStatistics *)self firstDate:self->_firstIncomingSenderDate updatedWith:self->_firstOutgoingRecipientDate];
  v4 = [(_CDContactStatistics *)self firstDate:v3 updatedWith:self->_firstIncomingRecipientDate];

  return v4;
}

- (id)lastInteractionDate
{
  v3 = [(_CDContactStatistics *)self lastDate:self->_lastIncomingSenderDate updatedWith:self->_lastOutgoingRecipientDate];
  v4 = [(_CDContactStatistics *)self lastDate:v3 updatedWith:self->_lastIncomingRecipientDate];

  return v4;
}

- (double)interactionTimeInterval
{
  lastInteractionDate = [(_CDContactStatistics *)self lastInteractionDate];
  firstInteractionDate = [(_CDContactStatistics *)self firstInteractionDate];
  [lastInteractionDate timeIntervalSinceDate:firstInteractionDate];
  v6 = v5;

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(_CDContactStatistics *)self isEqualToContactStatistics:v5];
  }

  return v6;
}

- (BOOL)isEqualToContactStatistics:(id)statistics
{
  statisticsCopy = statistics;
  v5 = statisticsCopy;
  if (*&self->_outgoingRecipientCount != *(statisticsCopy + 8) || self->_incomingRecipientCount != *(statisticsCopy + 3))
  {
    goto LABEL_21;
  }

  v6 = self->_lastOutgoingRecipientDate;
  v7 = v6;
  if (v6 == v5[4])
  {
  }

  else
  {
    v8 = [(NSDate *)v6 isEqual:?];

    if ((v8 & 1) == 0)
    {
      goto LABEL_21;
    }
  }

  v9 = self->_lastIncomingSenderDate;
  v10 = v9;
  if (v9 == v5[5])
  {
  }

  else
  {
    v11 = [(NSDate *)v9 isEqual:?];

    if ((v11 & 1) == 0)
    {
      goto LABEL_21;
    }
  }

  v12 = self->_lastIncomingRecipientDate;
  v13 = v12;
  if (v12 == v5[6])
  {
  }

  else
  {
    v14 = [(NSDate *)v12 isEqual:?];

    if ((v14 & 1) == 0)
    {
      goto LABEL_21;
    }
  }

  v15 = self->_firstOutgoingRecipientDate;
  v16 = v15;
  if (v15 == v5[7])
  {
  }

  else
  {
    v17 = [(NSDate *)v15 isEqual:?];

    if ((v17 & 1) == 0)
    {
      goto LABEL_21;
    }
  }

  v18 = self->_firstIncomingSenderDate;
  v19 = v18;
  if (v18 == v5[8])
  {
  }

  else
  {
    v20 = [(NSDate *)v18 isEqual:?];

    if ((v20 & 1) == 0)
    {
LABEL_21:
      v21 = 0;
      goto LABEL_22;
    }
  }

  v23 = self->_firstIncomingRecipientDate;
  v24 = v23;
  if (v23 == v5[9])
  {
    v21 = 1;
  }

  else
  {
    v21 = [(NSDate *)v23 isEqual:?];
  }

LABEL_22:
  return v21;
}

- (unint64_t)hash
{
  v3 = self->_incomingSenderCount - self->_outgoingRecipientCount + 32 * self->_outgoingRecipientCount;
  v4 = self->_incomingRecipientCount - v3 + 32 * v3;
  v5 = [(NSDate *)self->_lastOutgoingRecipientDate hash]- v4 + 32 * v4;
  v6 = [(NSDate *)self->_lastIncomingSenderDate hash]- v5 + 32 * v5;
  v7 = [(NSDate *)self->_lastIncomingRecipientDate hash]- v6 + 32 * v6;
  v8 = [(NSDate *)self->_firstOutgoingRecipientDate hash]- v7 + 32 * v7;
  v9 = [(NSDate *)self->_firstIncomingSenderDate hash]- v8 + 32 * v8;
  return [(NSDate *)self->_firstIncomingRecipientDate hash]- v9 + 32 * v9;
}

@end