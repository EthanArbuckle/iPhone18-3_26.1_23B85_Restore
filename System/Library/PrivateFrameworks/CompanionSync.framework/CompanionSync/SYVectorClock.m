@interface SYVectorClock
+ (void)initialize;
- (BOOL)_setTheory_isEqual:(id)a3;
- (BOOL)hasClockForPeer:(id)a3;
- (BOOL)hasClockForPeerID:(id)a3;
- (BOOL)isEqual:(id)a3;
- (SYVectorClock)initWithJSONRepresentation:(id)a3;
- (id)clockForPeer:(id)a3;
- (id)clockForPeerID:(id)a3;
- (id)compactDictionaryRepresentation;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (id)jsonRepresentation;
- (unint64_t)clockValueForPeer:(id)a3;
- (unint64_t)clockValueForPeerID:(id)a3;
- (void)addClocks:(id)a3;
- (void)copyTo:(id)a3;
- (void)increaseClockForPeer:(id)a3 by:(unint64_t)a4;
- (void)increaseClockForPeerID:(id)a3 by:(unint64_t)a4;
- (void)incrementClockForPeer:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setClockValue:(unint64_t)a3 forPeer:(id)a4;
- (void)setClockValue:(unint64_t)a3 forPeerID:(id)a4;
- (void)writeTo:(id)a3;
@end

@implementation SYVectorClock

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    InstanceMethod = class_getInstanceMethod(a1, sel_isEqual_);
    v4 = class_getInstanceMethod(a1, sel__setTheory_isEqual_);
    if (InstanceMethod && v4 != 0)
    {

      method_exchangeImplementations(InstanceMethod, v4);
    }
  }
}

- (BOOL)_setTheory_isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()])
  {
    v5 = MEMORY[0x1E695DFD8];
    v6 = [(SYVectorClock *)self clocks];
    v7 = [v5 setWithArray:v6];

    v8 = MEMORY[0x1E695DFD8];
    v9 = [v4 clocks];
    v10 = [v8 setWithArray:v9];

    v11 = [v7 isEqualToSet:v10];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (SYVectorClock)initWithJSONRepresentation:(id)a3
{
  v37 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v31.receiver = self;
  v31.super_class = SYVectorClock;
  v5 = [(SYVectorClock *)&v31 init];
  if (v5)
  {
    if ([v4 length])
    {
      v6 = MEMORY[0x1E696ACB0];
      v7 = [v4 dataUsingEncoding:4];
      v8 = [v6 JSONObjectWithData:v7 options:4 error:0];

      v9 = [v8 objectForKeyedSubscript:@"clocks"];

      if (v9)
      {
        v28 = v4;
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
        v4 = v28;
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

- (BOOL)hasClockForPeer:(id)a3
{
  v4 = [a3 peerID];
  LOBYTE(self) = [(SYVectorClock *)self hasClockForPeerID:v4];

  return self;
}

- (BOOL)hasClockForPeerID:(id)a3
{
  v3 = [(SYVectorClock *)self clockForPeerID:a3];
  v4 = v3 != 0;

  return v4;
}

- (id)clockForPeer:(id)a3
{
  if (a3)
  {
    v4 = [a3 peerID];
    v5 = [(SYVectorClock *)self clockForPeerID:v4];
  }

  else
  {
    LogWithTrace("Nil peer");
    v5 = 0;
  }

  return v5;
}

- (id)clockForPeerID:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([v4 length])
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v5 = [(SYVectorClock *)self clocks];
    v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v6)
    {
      v7 = *v16;
      while (2)
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v16 != v7)
          {
            objc_enumerationMutation(v5);
          }

          v9 = *(*(&v15 + 1) + 8 * i);
          v10 = [v9 peer];
          v11 = [v10 peerID];
          v12 = [v11 isEqualToString:v4];

          if (v12)
          {
            v6 = v9;
            goto LABEL_12;
          }
        }

        v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
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

- (unint64_t)clockValueForPeer:(id)a3
{
  if (a3)
  {
    v4 = [a3 peerID];
    v5 = [(SYVectorClock *)self clockValueForPeerID:v4];

    return v5;
  }

  else
  {
    LogWithTrace("Nil peer");
    return 0;
  }
}

- (void)increaseClockForPeer:(id)a3 by:(unint64_t)a4
{
  if (a3)
  {
    v7 = [a3 peerID];
    [(SYVectorClock *)self increaseClockForPeerID:v7 by:a4];
  }

  else
  {

    LogWithTrace("Nil peer");
  }
}

- (void)incrementClockForPeer:(id)a3
{
  if (a3)
  {
    v5 = [a3 peerID];
    [(SYVectorClock *)self increaseClockForPeerID:v5 by:1];
  }

  else
  {

    LogWithTrace("Nil peer");
  }
}

- (void)setClockValue:(unint64_t)a3 forPeer:(id)a4
{
  if (a4)
  {
    v7 = [a4 peerID];
    [(SYVectorClock *)self setClockValue:a3 forPeerID:v7];
  }

  else
  {

    LogWithTrace("Nil peer");
  }
}

- (unint64_t)clockValueForPeerID:(id)a3
{
  v3 = [(SYVectorClock *)self clockForPeerID:a3];
  v4 = [v3 version];

  return v4;
}

- (void)increaseClockForPeerID:(id)a3 by:(unint64_t)a4
{
  v6 = a3;
  v10 = v6;
  if (v6)
  {
    v7 = [(SYVectorClock *)self clockForPeerID:v6];
    if (v7)
    {
      v8 = v7;
      [v7 setVersion:{objc_msgSend(v7, "version") + a4}];
    }

    else
    {
      v8 = objc_opt_new();
      v9 = [[SYPeer alloc] initWithPeerID:v10 generation:0];
      [v8 setPeer:v9];

      [v8 setVersion:a4];
      [(SYVectorClock *)self addClocks:v8];
    }
  }

  else
  {
    LogWithTrace("Nil peer ID");
  }
}

- (void)setClockValue:(unint64_t)a3 forPeerID:(id)a4
{
  v6 = a4;
  v10 = v6;
  if (v6)
  {
    v7 = [(SYVectorClock *)self clockForPeerID:v6];
    if (v7)
    {
      v8 = v7;
      [v7 setVersion:a3];
    }

    else
    {
      v8 = objc_opt_new();
      v9 = [[SYPeer alloc] initWithPeerID:v10 generation:0];
      [v8 setPeer:v9];

      [v8 setVersion:a3];
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
    v5 = [(SYVectorClock *)self clocks];
    v12 = MEMORY[0x1E69E9820];
    v13 = 3221225472;
    v14 = __59__SYVectorClock_Additions__compactDictionaryRepresentation__block_invoke;
    v15 = &unk_1E86CB060;
    v6 = v3;
    v16 = v6;
    v7 = v4;
    v17 = v7;
    [v5 enumerateObjectsUsingBlock:&v12];

    if ([v6 count])
    {
      v8 = [(SYVectorClock *)self clocks];
      [v8 removeObjectsAtIndexes:v6];
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
  v2 = [(SYVectorClock *)self compactDictionaryRepresentation];
  v3 = [MEMORY[0x1E696ACB0] dataWithJSONObject:v2 options:0 error:0];
  v4 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:v3 encoding:4];

  return v4;
}

- (void)addClocks:(id)a3
{
  v4 = a3;
  clocks = self->_clocks;
  v8 = v4;
  if (!clocks)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_clocks;
    self->_clocks = v6;

    v4 = v8;
    clocks = self->_clocks;
  }

  [(NSMutableArray *)clocks addObject:v4];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = SYVectorClock;
  v4 = [(SYVectorClock *)&v8 description];
  v5 = [(SYVectorClock *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionary];
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

          v10 = [*(*(&v13 + 1) + 8 * i) dictionaryRepresentation];
          [v4 addObject:v10];
        }

        v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v7);
    }

    [v3 setObject:v4 forKey:@"clocks"];
  }

  v11 = *MEMORY[0x1E69E9840];

  return v3;
}

- (void)writeTo:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
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

- (void)copyTo:(id)a3
{
  v8 = a3;
  if ([(SYVectorClock *)self clocksCount])
  {
    [v8 clearClocks];
    v4 = [(SYVectorClock *)self clocksCount];
    if (v4)
    {
      v5 = v4;
      for (i = 0; i != v5; ++i)
      {
        v7 = [(SYVectorClock *)self clocksAtIndex:i];
        [v8 addClocks:v7];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
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

        v11 = [*(*(&v14 + 1) + 8 * v10) copyWithZone:{a3, v14}];
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()])
  {
    clocks = self->_clocks;
    if (clocks | v4[1])
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

- (void)mergeFrom:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = *(a3 + 1);
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