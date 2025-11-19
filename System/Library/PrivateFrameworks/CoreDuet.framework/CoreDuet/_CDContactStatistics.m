@interface _CDContactStatistics
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToContactStatistics:(id)a3;
- (_CDContactStatistics)initWithCoder:(id)a3;
- (double)interactionTimeInterval;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)firstDate:(id)a3 updatedWith:(id)a4;
- (id)firstInteractionDate;
- (id)lastDate:(id)a3 updatedWith:(id)a4;
- (id)lastInteractionDate;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)updateWithStatistics:(id)a3;
@end

@implementation _CDContactStatistics

- (_CDContactStatistics)initWithCoder:(id)a3
{
  v4 = a3;
  v20.receiver = self;
  v20.super_class = _CDContactStatistics;
  v5 = [(_CDContactStatistics *)&v20 init];
  if (v5)
  {
    v5->_outgoingRecipientCount = [v4 decodeIntegerForKey:@"outgoingRecipientCount"];
    v5->_incomingSenderCount = [v4 decodeIntegerForKey:@"incomingSenderCount"];
    v5->_incomingRecipientCount = [v4 decodeIntegerForKey:@"incomingRecipientCount"];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"lastOutgoingRecipientDate"];
    lastOutgoingRecipientDate = v5->_lastOutgoingRecipientDate;
    v5->_lastOutgoingRecipientDate = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"lastIncomingSenderDate"];
    lastIncomingSenderDate = v5->_lastIncomingSenderDate;
    v5->_lastIncomingSenderDate = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"lastIncomingRecipientDate"];
    lastIncomingRecipientDate = v5->_lastIncomingRecipientDate;
    v5->_lastIncomingRecipientDate = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"firstOutgoingRecipientDate"];
    firstOutgoingRecipientDate = v5->_firstOutgoingRecipientDate;
    v5->_firstOutgoingRecipientDate = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"firstIncomingSenderDate"];
    firstIncomingSenderDate = v5->_firstIncomingSenderDate;
    v5->_firstIncomingSenderDate = v14;

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"firstIncomingRecipientDate"];
    firstIncomingRecipientDate = v5->_firstIncomingRecipientDate;
    v5->_firstIncomingRecipientDate = v16;

    v18 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  outgoingRecipientCount = self->_outgoingRecipientCount;
  v5 = a3;
  [v5 encodeInteger:outgoingRecipientCount forKey:@"outgoingRecipientCount"];
  [v5 encodeInteger:self->_incomingSenderCount forKey:@"incomingSenderCount"];
  [v5 encodeInteger:self->_incomingRecipientCount forKey:@"incomingRecipientCount"];
  [v5 encodeObject:self->_lastOutgoingRecipientDate forKey:@"lastOutgoingRecipientDate"];
  [v5 encodeObject:self->_lastIncomingSenderDate forKey:@"lastIncomingSenderDate"];
  [v5 encodeObject:self->_lastIncomingRecipientDate forKey:@"lastIncomingRecipientDate"];
  [v5 encodeObject:self->_firstOutgoingRecipientDate forKey:@"firstOutgoingRecipientDate"];
  [v5 encodeObject:self->_firstIncomingSenderDate forKey:@"firstIncomingSenderDate"];
  [v5 encodeObject:self->_firstIncomingRecipientDate forKey:@"firstIncomingRecipientDate"];
}

- (id)description
{
  v3 = objc_alloc_init(MEMORY[0x1E696AD60]);
  [v3 appendString:@"Statistics { \n"];
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[_CDContactStatistics interactionCount](self, "interactionCount")}];
  [v3 appendFormat:@"             Count: %@\n", v4];

  [(_CDContactStatistics *)self interactionTimeInterval];
  v6 = v5 / 86400.0;
  v7 = [(_CDContactStatistics *)self firstInteractionDate];
  v8 = [(_CDContactStatistics *)self lastInteractionDate];
  [v3 appendFormat:@"             Times: %3.1f days, %@ - %@\n", *&v6, v7, v8];

  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[_CDContactStatistics outgoingRecipientCount](self, "outgoingRecipientCount")}];
  [v3 appendFormat:@"         Out Count: %@\n", v9];

  [(_CDContactStatistics *)self outgoingRecipientTimeInterval];
  v11 = v10 / 86400.0;
  v12 = [(_CDContactStatistics *)self firstOutgoingRecipientDate];
  v13 = [(_CDContactStatistics *)self lastOutgoingRecipientDate];
  [v3 appendFormat:@"         Out Times: %3.1f days, %@ - %@\n", *&v11, v12, v13];

  v14 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[_CDContactStatistics incomingSenderCount](self, "incomingSenderCount")}];
  [v3 appendFormat:@"          In Count: %@\n", v14];

  [(_CDContactStatistics *)self incomingSenderTimeInterval];
  v16 = v15 / 86400.0;
  v17 = [(_CDContactStatistics *)self firstIncomingSenderDate];
  v18 = [(_CDContactStatistics *)self lastIncomingSenderDate];
  [v3 appendFormat:@"          In Times: %3.1f days, %@ - %@\n", *&v16, v17, v18];

  v19 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[_CDContactStatistics incomingRecipientCount](self, "incomingRecipientCount")}];
  [v3 appendFormat:@"    Joint In Count: %@\n", v19];

  [(_CDContactStatistics *)self incomingRecipientTimeInterval];
  v21 = v20 / 86400.0;
  v22 = [(_CDContactStatistics *)self firstIncomingRecipientDate];
  v23 = [(_CDContactStatistics *)self lastIncomingRecipientDate];
  [v3 appendFormat:@"    Joint In Times: %3.1f days, %@ - %@\n", *&v21, v22, v23];

  [v3 appendString:@"}\n"];

  return v3;
}

- (id)firstDate:(id)a3 updatedWith:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = v6;
  if (v5)
  {
    if (v6)
    {
      v8 = [v5 earlierDate:v6];
    }

    else
    {
      v8 = v5;
    }
  }

  else
  {
    v8 = v6;
  }

  v9 = v8;

  return v9;
}

- (id)lastDate:(id)a3 updatedWith:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = v6;
  if (v5)
  {
    if (v6)
    {
      v8 = [v5 laterDate:v6];
    }

    else
    {
      v8 = v5;
    }
  }

  else
  {
    v8 = v6;
  }

  v9 = v8;

  return v9;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [[_CDContactStatistics allocWithZone:?]];
  [(_CDContactStatistics *)v4 setOutgoingRecipientCount:[(_CDContactStatistics *)self outgoingRecipientCount]];
  [(_CDContactStatistics *)v4 setIncomingSenderCount:[(_CDContactStatistics *)self incomingSenderCount]];
  [(_CDContactStatistics *)v4 setIncomingRecipientCount:[(_CDContactStatistics *)self incomingRecipientCount]];
  v5 = [(_CDContactStatistics *)self lastOutgoingRecipientDate];
  [(_CDContactStatistics *)v4 setLastOutgoingRecipientDate:v5];

  v6 = [(_CDContactStatistics *)self lastIncomingSenderDate];
  [(_CDContactStatistics *)v4 setLastIncomingSenderDate:v6];

  v7 = [(_CDContactStatistics *)self lastIncomingRecipientDate];
  [(_CDContactStatistics *)v4 setLastIncomingRecipientDate:v7];

  v8 = [(_CDContactStatistics *)self firstOutgoingRecipientDate];
  [(_CDContactStatistics *)v4 setFirstOutgoingRecipientDate:v8];

  v9 = [(_CDContactStatistics *)self firstIncomingSenderDate];
  [(_CDContactStatistics *)v4 setFirstIncomingSenderDate:v9];

  v10 = [(_CDContactStatistics *)self firstIncomingRecipientDate];
  [(_CDContactStatistics *)v4 setFirstIncomingRecipientDate:v10];

  return v4;
}

- (void)updateWithStatistics:(id)a3
{
  if (a3)
  {
    v4 = a3;
    -[_CDContactStatistics setOutgoingRecipientCount:](self, "setOutgoingRecipientCount:", -[_CDContactStatistics outgoingRecipientCount](self, "outgoingRecipientCount") + [v4 outgoingRecipientCount]);
    -[_CDContactStatistics setIncomingSenderCount:](self, "setIncomingSenderCount:", -[_CDContactStatistics incomingSenderCount](self, "incomingSenderCount") + [v4 incomingSenderCount]);
    -[_CDContactStatistics setIncomingRecipientCount:](self, "setIncomingRecipientCount:", -[_CDContactStatistics incomingRecipientCount](self, "incomingRecipientCount") + [v4 incomingRecipientCount]);
    v5 = [(_CDContactStatistics *)self firstOutgoingRecipientDate];
    v6 = [v4 firstOutgoingRecipientDate];
    v7 = [(_CDContactStatistics *)self firstDate:v5 updatedWith:v6];
    [(_CDContactStatistics *)self setFirstOutgoingRecipientDate:v7];

    v8 = [(_CDContactStatistics *)self firstIncomingSenderDate];
    v9 = [v4 firstIncomingSenderDate];
    v10 = [(_CDContactStatistics *)self firstDate:v8 updatedWith:v9];
    [(_CDContactStatistics *)self setFirstIncomingSenderDate:v10];

    v11 = [(_CDContactStatistics *)self firstIncomingRecipientDate];
    v12 = [v4 firstIncomingRecipientDate];
    v13 = [(_CDContactStatistics *)self firstDate:v11 updatedWith:v12];
    [(_CDContactStatistics *)self setFirstIncomingRecipientDate:v13];

    v14 = [(_CDContactStatistics *)self lastOutgoingRecipientDate];
    v15 = [v4 lastOutgoingRecipientDate];
    v16 = [(_CDContactStatistics *)self lastDate:v14 updatedWith:v15];
    [(_CDContactStatistics *)self setLastOutgoingRecipientDate:v16];

    v17 = [(_CDContactStatistics *)self lastIncomingSenderDate];
    v18 = [v4 lastIncomingSenderDate];
    v19 = [(_CDContactStatistics *)self lastDate:v17 updatedWith:v18];
    [(_CDContactStatistics *)self setLastIncomingSenderDate:v19];

    v22 = [(_CDContactStatistics *)self lastIncomingRecipientDate];
    v20 = [v4 lastIncomingRecipientDate];

    v21 = [(_CDContactStatistics *)self lastDate:v22 updatedWith:v20];
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
  v3 = [(_CDContactStatistics *)self lastInteractionDate];
  v4 = [(_CDContactStatistics *)self firstInteractionDate];
  [v3 timeIntervalSinceDate:v4];
  v6 = v5;

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(_CDContactStatistics *)self isEqualToContactStatistics:v5];
  }

  return v6;
}

- (BOOL)isEqualToContactStatistics:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (*&self->_outgoingRecipientCount != *(v4 + 8) || self->_incomingRecipientCount != *(v4 + 3))
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