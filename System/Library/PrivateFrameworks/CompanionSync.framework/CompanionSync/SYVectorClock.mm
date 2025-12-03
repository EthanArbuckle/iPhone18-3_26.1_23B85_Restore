@interface SYVectorClock
+ (void)initialize;
- (BOOL)_setTheory_isEqual:(id)equal;
- (BOOL)hasClockForPeer:(id)peer;
- (BOOL)hasClockForPeerID:(id)d;
- (BOOL)isEqual:(id)equal;
- (SYVectorClock)initWithJSONRepresentation:(id)representation;
- (id)clockForPeer:(id)peer;
- (id)clockForPeerID:(id)d;
- (id)compactDictionaryRepresentation;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (id)jsonRepresentation;
- (unint64_t)clockValueForPeer:(id)peer;
- (unint64_t)clockValueForPeerID:(id)d;
- (void)addClocks:(id)clocks;
- (void)copyTo:(id)to;
- (void)increaseClockForPeer:(id)peer by:(unint64_t)by;
- (void)increaseClockForPeerID:(id)d by:(unint64_t)by;
- (void)incrementClockForPeer:(id)peer;
- (void)mergeFrom:(id)from;
- (void)setClockValue:(unint64_t)value forPeer:(id)peer;
- (void)setClockValue:(unint64_t)value forPeerID:(id)d;
- (void)writeTo:(id)to;
@end

@implementation SYVectorClock

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    InstanceMethod = class_getInstanceMethod(self, sel_isEqual_);
    v4 = class_getInstanceMethod(self, sel__setTheory_isEqual_);
    if (InstanceMethod && v4 != 0)
    {

      method_exchangeImplementations(InstanceMethod, v4);
    }
  }
}

- (BOOL)_setTheory_isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    v5 = MEMORY[0x1E695DFD8];
    clocks = [(SYVectorClock *)self clocks];
    v7 = [v5 setWithArray:clocks];

    v8 = MEMORY[0x1E695DFD8];
    clocks2 = [equalCopy clocks];
    v10 = [v8 setWithArray:clocks2];

    v11 = [v7 isEqualToSet:v10];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (SYVectorClock)initWithJSONRepresentation:(id)representation
{
  v37 = *MEMORY[0x1E69E9840];
  representationCopy = representation;
  v31.receiver = self;
  v31.super_class = SYVectorClock;
  v5 = [(SYVectorClock *)&v31 init];
  if (v5)
  {
    if ([representationCopy length])
    {
      v6 = MEMORY[0x1E696ACB0];
      v7 = [representationCopy dataUsingEncoding:4];
      v8 = [v6 JSONObjectWithData:v7 options:4 error:0];

      v9 = [v8 objectForKeyedSubscript:@"clocks"];

      if (v9)
      {
        v28 = representationCopy;
        v26 = v8;
        v10 = [v8 objectForKeyedSubscript:@"clocks"];
        v27 = v5;
        v11 = v5;
        v32 = 0u;
        v33 = 0u;
        v34 = 0u;
        v35 = 0u;
        v12 = [v10 countByEnumeratingWithState:&v32 objects:v36 count:16];
        if (v12)
        {
          v13 = v12;
          v14 = *v33;
          do
          {
            v15 = 0;
            do
            {
              if (*v33 != v14)
              {
                objc_enumerationMutation(v10);
              }

              v16 = *(*(&v32 + 1) + 8 * v15);
              v17 = objc_opt_new();
              v18 = [v16 objectForKeyedSubscript:@"version"];
              [v17 setVersion:{objc_msgSend(v18, "unsignedLongLongValue")}];

              v19 = [SYPeer alloc];
              v20 = [v16 objectForKeyedSubscript:@"peer"];
              v21 = [v20 objectForKeyedSubscript:@"peerID"];
              v22 = [(SYPeer *)v19 initWithPeerID:v21 generation:0];
              [v17 setPeer:v22];

              [(SYVectorClock *)v11 addClocks:v17];
              ++v15;
            }

            while (v13 != v15);
            v13 = [v10 countByEnumeratingWithState:&v32 objects:v36 count:16];
          }

          while (v13);
        }

        v5 = v27;
        representationCopy = v28;
        v8 = v26;
      }

      else
      {
        v29[0] = MEMORY[0x1E69E9820];
        v29[1] = 3221225472;
        v29[2] = __55__SYVectorClock_Additions__initWithJSONRepresentation___block_invoke;
        v29[3] = &unk_1E86CB038;
        v30 = v5;
        [v8 enumerateKeysAndObjectsUsingBlock:v29];
        v10 = v30;
      }
    }

    v23 = v5;
  }

  v24 = *MEMORY[0x1E69E9840];
  return v5;
}

void __55__SYVectorClock_Additions__initWithJSONRepresentation___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v9 = objc_opt_new();
  v7 = [[SYPeer alloc] initWithPeerID:v6 generation:0];

  [v9 setPeer:v7];
  v8 = [v5 unsignedLongLongValue];

  [v9 setVersion:v8];
  [*(a1 + 32) addClocks:v9];
}

- (BOOL)hasClockForPeer:(id)peer
{
  peerID = [peer peerID];
  LOBYTE(self) = [(SYVectorClock *)self hasClockForPeerID:peerID];

  return self;
}

- (BOOL)hasClockForPeerID:(id)d
{
  v3 = [(SYVectorClock *)self clockForPeerID:d];
  v4 = v3 != 0;

  return v4;
}

- (id)clockForPeer:(id)peer
{
  if (peer)
  {
    peerID = [peer peerID];
    v5 = [(SYVectorClock *)self clockForPeerID:peerID];
  }

  else
  {
    LogWithTrace("Nil peer");
    v5 = 0;
  }

  return v5;
}

- (id)clockForPeerID:(id)d
{
  v20 = *MEMORY[0x1E69E9840];
  dCopy = d;
  if ([dCopy length])
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    clocks = [(SYVectorClock *)self clocks];
    v6 = [clocks countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v6)
    {
      v7 = *v16;
      while (2)
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v16 != v7)
          {
            objc_enumerationMutation(clocks);
          }

          v9 = *(*(&v15 + 1) + 8 * i);
          peer = [v9 peer];
          peerID = [peer peerID];
          v12 = [peerID isEqualToString:dCopy];

          if (v12)
          {
            v6 = v9;
            goto LABEL_12;
          }
        }

        v6 = [clocks countByEnumeratingWithState:&v15 objects:v19 count:16];
        if (v6)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:
  }

  else
  {
    LogWithTrace("Nil peer ID");
    v6 = 0;
  }

  v13 = *MEMORY[0x1E69E9840];

  return v6;
}

- (unint64_t)clockValueForPeer:(id)peer
{
  if (peer)
  {
    peerID = [peer peerID];
    v5 = [(SYVectorClock *)self clockValueForPeerID:peerID];

    return v5;
  }

  else
  {
    LogWithTrace("Nil peer");
    return 0;
  }
}

- (void)increaseClockForPeer:(id)peer by:(unint64_t)by
{
  if (peer)
  {
    peerID = [peer peerID];
    [(SYVectorClock *)self increaseClockForPeerID:peerID by:by];
  }

  else
  {

    LogWithTrace("Nil peer");
  }
}

- (void)incrementClockForPeer:(id)peer
{
  if (peer)
  {
    peerID = [peer peerID];
    [(SYVectorClock *)self increaseClockForPeerID:peerID by:1];
  }

  else
  {

    LogWithTrace("Nil peer");
  }
}

- (void)setClockValue:(unint64_t)value forPeer:(id)peer
{
  if (peer)
  {
    peerID = [peer peerID];
    [(SYVectorClock *)self setClockValue:value forPeerID:peerID];
  }

  else
  {

    LogWithTrace("Nil peer");
  }
}

- (unint64_t)clockValueForPeerID:(id)d
{
  v3 = [(SYVectorClock *)self clockForPeerID:d];
  version = [v3 version];

  return version;
}

- (void)increaseClockForPeerID:(id)d by:(unint64_t)by
{
  dCopy = d;
  v10 = dCopy;
  if (dCopy)
  {
    v7 = [(SYVectorClock *)self clockForPeerID:dCopy];
    if (v7)
    {
      v8 = v7;
      [v7 setVersion:{objc_msgSend(v7, "version") + by}];
    }

    else
    {
      v8 = objc_opt_new();
      v9 = [[SYPeer alloc] initWithPeerID:v10 generation:0];
      [v8 setPeer:v9];

      [v8 setVersion:by];
      [(SYVectorClock *)self addClocks:v8];
    }
  }

  else
  {
    LogWithTrace("Nil peer ID");
  }
}

- (void)setClockValue:(unint64_t)value forPeerID:(id)d
{
  dCopy = d;
  v10 = dCopy;
  if (dCopy)
  {
    v7 = [(SYVectorClock *)self clockForPeerID:dCopy];
    if (v7)
    {
      v8 = v7;
      [v7 setVersion:value];
    }

    else
    {
      v8 = objc_opt_new();
      v9 = [[SYPeer alloc] initWithPeerID:v10 generation:0];
      [v8 setPeer:v9];

      [v8 setVersion:value];
      [(SYVectorClock *)self addClocks:v8];
    }
  }

  else
  {
    LogWithTrace("Nil peer ID");
  }
}

- (id)compactDictionaryRepresentation
{
  if ([(SYVectorClock *)self clocksCount])
  {
    v3 = objc_opt_new();
    v4 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{-[SYVectorClock clocksCount](self, "clocksCount")}];
    clocks = [(SYVectorClock *)self clocks];
    v12 = MEMORY[0x1E69E9820];
    v13 = 3221225472;
    v14 = __59__SYVectorClock_Additions__compactDictionaryRepresentation__block_invoke;
    v15 = &unk_1E86CB060;
    v6 = v3;
    v16 = v6;
    v7 = v4;
    v17 = v7;
    [clocks enumerateObjectsUsingBlock:&v12];

    if ([v6 count])
    {
      clocks2 = [(SYVectorClock *)self clocks];
      [clocks2 removeObjectsAtIndexes:v6];
    }

    v9 = v17;
    v10 = v7;
  }

  else
  {
    v10 = objc_opt_new();
  }

  return v10;
}

void __59__SYVectorClock_Additions__compactDictionaryRepresentation__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v11 = a2;
  v5 = [v11 peer];
  v6 = [v5 peerID];

  if (v6)
  {
    v7 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{objc_msgSend(v11, "version")}];
    v8 = *(a1 + 40);
    v9 = [v11 peer];
    v10 = [v9 peerID];
    [v8 setObject:v7 forKeyedSubscript:v10];
  }

  else
  {
    LogWithTrace("Nil peer ID");
    [*(a1 + 32) addIndex:a3];
  }
}

- (id)jsonRepresentation
{
  compactDictionaryRepresentation = [(SYVectorClock *)self compactDictionaryRepresentation];
  v3 = [MEMORY[0x1E696ACB0] dataWithJSONObject:compactDictionaryRepresentation options:0 error:0];
  v4 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:v3 encoding:4];

  return v4;
}

- (void)addClocks:(id)clocks
{
  clocksCopy = clocks;
  clocks = self->_clocks;
  v8 = clocksCopy;
  if (!clocks)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_clocks;
    self->_clocks = v6;

    clocksCopy = v8;
    clocks = self->_clocks;
  }

  [(NSMutableArray *)clocks addObject:clocksCopy];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = SYVectorClock;
  v4 = [(SYVectorClock *)&v8 description];
  dictionaryRepresentation = [(SYVectorClock *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  v18 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if ([(NSMutableArray *)self->_clocks count])
  {
    v4 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_clocks, "count")}];
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v5 = self->_clocks;
    v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v14;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v14 != v8)
          {
            objc_enumerationMutation(v5);
          }

          dictionaryRepresentation = [*(*(&v13 + 1) + 8 * i) dictionaryRepresentation];
          [v4 addObject:dictionaryRepresentation];
        }

        v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v7);
    }

    [dictionary setObject:v4 forKey:@"clocks"];
  }

  v11 = *MEMORY[0x1E69E9840];

  return dictionary;
}

- (void)writeTo:(id)to
{
  v17 = *MEMORY[0x1E69E9840];
  toCopy = to;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = self->_clocks;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      v9 = 0;
      do
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v12 + 1) + 8 * v9);
        PBDataWriterWriteSubmessage();
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if ([(SYVectorClock *)self clocksCount])
  {
    [toCopy clearClocks];
    clocksCount = [(SYVectorClock *)self clocksCount];
    if (clocksCount)
    {
      v5 = clocksCount;
      for (i = 0; i != v5; ++i)
      {
        v7 = [(SYVectorClock *)self clocksAtIndex:i];
        [toCopy addClocks:v7];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = self->_clocks;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      v10 = 0;
      do
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [*(*(&v14 + 1) + 8 * v10) copyWithZone:{zone, v14}];
        [v5 addClocks:v11];

        ++v10;
      }

      while (v8 != v10);
      v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  v12 = *MEMORY[0x1E69E9840];
  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    clocks = self->_clocks;
    if (clocks | equalCopy[1])
    {
      v6 = [(NSMutableArray *)clocks isEqual:?];
    }

    else
    {
      v6 = 1;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)mergeFrom:(id)from
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = *(from + 1);
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [(SYVectorClock *)self addClocks:*(*(&v10 + 1) + 8 * v8++), v10];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  v9 = *MEMORY[0x1E69E9840];
}

@end