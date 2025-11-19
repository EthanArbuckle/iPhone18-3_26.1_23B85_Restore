@interface BMMediaRendered
+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4;
- (BMMediaRendered)initWithAbsoluteTimestamp:(double)a3 mediaAttributes:(id)a4 isOnScreen:(BOOL)a5 isFirstView:(BOOL)a6;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (id)initByReadFrom:(id)a3;
- (id)serialize;
- (void)writeTo:(id)a3;
@end

@implementation BMMediaRendered

- (BMMediaRendered)initWithAbsoluteTimestamp:(double)a3 mediaAttributes:(id)a4 isOnScreen:(BOOL)a5 isFirstView:(BOOL)a6
{
  v11 = a4;
  v15.receiver = self;
  v15.super_class = BMMediaRendered;
  v12 = [(BMEventBase *)&v15 init];
  v13 = v12;
  if (v12)
  {
    v12->_hasAbsoluteTimestamp = 1;
    v12->_absoluteTimestamp = a3;
    objc_storeStrong(&v12->_mediaAttributes, a4);
    v13->_hasIsOnScreen = 1;
    v13->_isOnScreen = a5;
    v13->_hasIsFirstView = 1;
    v13->_isFirstView = a6;
  }

  return v13;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = MEMORY[0x1E696AD98];
  [(BMMediaRendered *)self absoluteTimestamp];
  v5 = [v4 numberWithDouble:?];
  v6 = [(BMMediaRendered *)self mediaAttributes];
  v7 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMediaRendered isOnScreen](self, "isOnScreen")}];
  v8 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMediaRendered isFirstView](self, "isFirstView")}];
  v9 = [v3 initWithFormat:@"BMMediaRendered with absoluteTimestamp: %@, mediaAttributes: %@, isOnScreen: %@, isFirstView: %@", v5, v6, v7, v8];

  return v9;
}

- (id)initByReadFrom:(id)a3
{
  v4 = a3;
  v42.receiver = self;
  v42.super_class = BMMediaRendered;
  v5 = [(BMEventBase *)&v42 init];
  if (!v5)
  {
    goto LABEL_59;
  }

  v6 = objc_opt_new();
  v7 = [v4 position];
  if (v7 < [v4 length])
  {
    while (1)
    {
      if ([v4 hasError])
      {
        goto LABEL_57;
      }

      v8 = 0;
      v9 = 0;
      v10 = 0;
      while (1)
      {
        LOBYTE(v43[0]) = 0;
        v11 = [v4 position] + 1;
        if (v11 >= [v4 position] && (v12 = objc_msgSend(v4, "position") + 1, v12 <= objc_msgSend(v4, "length")))
        {
          v13 = [v4 data];
          [v13 getBytes:v43 range:{objc_msgSend(v4, "position"), 1}];

          [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
        }

        else
        {
          [v4 _setError];
        }

        v10 |= (v43[0] & 0x7F) << v8;
        if ((v43[0] & 0x80) == 0)
        {
          break;
        }

        v8 += 7;
        v14 = v9++ >= 9;
        if (v14)
        {
          v15 = 0;
          goto LABEL_16;
        }
      }

      v15 = [v4 hasError] ? 0 : v10;
LABEL_16:
      if (([v4 hasError] & 1) != 0 || (v15 & 7) == 4)
      {
        goto LABEL_57;
      }

      v16 = v15 >> 3;
      if ((v15 >> 3) > 2)
      {
        break;
      }

      if (v16 == 1)
      {
        v5->_hasAbsoluteTimestamp = 1;
        v43[0] = 0;
        v26 = [v4 position] + 8;
        if (v26 >= [v4 position] && (v27 = objc_msgSend(v4, "position") + 8, v27 <= objc_msgSend(v4, "length")))
        {
          v35 = [v4 data];
          [v35 getBytes:v43 range:{objc_msgSend(v4, "position"), 8}];

          [v4 setPosition:{objc_msgSend(v4, "position") + 8}];
        }

        else
        {
          [v4 _setError];
        }

        *&v5->_absoluteTimestamp = v43[0];
        goto LABEL_56;
      }

      if (v16 != 2)
      {
        goto LABEL_35;
      }

      v43[0] = 0;
      v43[1] = 0;
      if (!PBReaderPlaceMark() || (v17 = [[BMMediaRenderedMediaAttributes alloc] initByReadFrom:v4]) == 0)
      {
LABEL_61:

        goto LABEL_58;
      }

      v18 = v17;
      [v6 addObject:v17];
      PBReaderRecallMark();

LABEL_56:
      v36 = [v4 position];
      if (v36 >= [v4 length])
      {
        goto LABEL_57;
      }
    }

    if (v16 == 3)
    {
      v28 = 0;
      v29 = 0;
      v30 = 0;
      v5->_hasIsOnScreen = 1;
      while (1)
      {
        LOBYTE(v43[0]) = 0;
        v31 = [v4 position] + 1;
        if (v31 >= [v4 position] && (v32 = objc_msgSend(v4, "position") + 1, v32 <= objc_msgSend(v4, "length")))
        {
          v33 = [v4 data];
          [v33 getBytes:v43 range:{objc_msgSend(v4, "position"), 1}];

          [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
        }

        else
        {
          [v4 _setError];
        }

        v30 |= (v43[0] & 0x7F) << v28;
        if ((v43[0] & 0x80) == 0)
        {
          break;
        }

        v28 += 7;
        v14 = v29++ >= 9;
        if (v14)
        {
          LOBYTE(v25) = 0;
          goto LABEL_52;
        }
      }

      v25 = (v30 != 0) & ~[v4 hasError];
LABEL_52:
      v34 = 18;
      goto LABEL_53;
    }

    if (v16 == 4)
    {
      v19 = 0;
      v20 = 0;
      v21 = 0;
      v5->_hasIsFirstView = 1;
      while (1)
      {
        LOBYTE(v43[0]) = 0;
        v22 = [v4 position] + 1;
        if (v22 >= [v4 position] && (v23 = objc_msgSend(v4, "position") + 1, v23 <= objc_msgSend(v4, "length")))
        {
          v24 = [v4 data];
          [v24 getBytes:v43 range:{objc_msgSend(v4, "position"), 1}];

          [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
        }

        else
        {
          [v4 _setError];
        }

        v21 |= (v43[0] & 0x7F) << v19;
        if ((v43[0] & 0x80) == 0)
        {
          break;
        }

        v19 += 7;
        v14 = v20++ >= 9;
        if (v14)
        {
          LOBYTE(v25) = 0;
          goto LABEL_50;
        }
      }

      v25 = (v21 != 0) & ~[v4 hasError];
LABEL_50:
      v34 = 20;
LABEL_53:
      *(&v5->super.super.isa + v34) = v25;
      goto LABEL_56;
    }

LABEL_35:
    if ((PBReaderSkipValueWithTag() & 1) == 0)
    {
      goto LABEL_61;
    }

    goto LABEL_56;
  }

LABEL_57:
  v37 = [v6 copy];
  mediaAttributes = v5->_mediaAttributes;
  v5->_mediaAttributes = v37;

  v39 = [v4 hasError];
  if (v39)
  {
LABEL_58:
    v40 = 0;
  }

  else
  {
LABEL_59:
    v40 = v5;
  }

  return v40;
}

- (void)writeTo:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (self->_hasAbsoluteTimestamp)
  {
    absoluteTimestamp = self->_absoluteTimestamp;
    PBDataWriterWriteDoubleField();
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = self->_mediaAttributes;
  v7 = [(NSArray *)v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        PBDataWriterPlaceMark();
        [v11 writeTo:v4];
        PBDataWriterRecallMark();
      }

      v8 = [(NSArray *)v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  if (self->_hasIsOnScreen)
  {
    isOnScreen = self->_isOnScreen;
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasIsFirstView)
  {
    isFirstView = self->_isFirstView;
    PBDataWriterWriteBOOLField();
  }

  v14 = *MEMORY[0x1E69E9840];
}

+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4
{
  if (a4)
  {
    v4 = 0;
  }

  else
  {
    v5 = MEMORY[0x1E69C65B8];
    v6 = a3;
    v7 = [[v5 alloc] initWithData:v6];

    v4 = [[BMMediaRendered alloc] initByReadFrom:v7];
  }

  return v4;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMMediaRendered *)self writeTo:v3];
  v4 = [v3 immutableData];

  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    if (-[BMMediaRendered hasAbsoluteTimestamp](self, "hasAbsoluteTimestamp") || [v5 hasAbsoluteTimestamp])
    {
      if (-[BMMediaRendered hasAbsoluteTimestamp](self, "hasAbsoluteTimestamp") && [v5 hasAbsoluteTimestamp])
      {
        [(BMMediaRendered *)self absoluteTimestamp];
        v7 = v6;
        [v5 absoluteTimestamp];
        v9 = v7 == v8;
      }

      else
      {
        v9 = 0;
      }
    }

    else
    {
      v9 = 1;
    }

    v11 = [(BMMediaRendered *)self mediaAttributes];
    v12 = [v5 mediaAttributes];
    if (v11 == v12)
    {
      v15 = 1;
    }

    else
    {
      v13 = [(BMMediaRendered *)self mediaAttributes];
      v14 = [v5 mediaAttributes];
      v15 = [v13 isEqual:v14];
    }

    if (-[BMMediaRendered hasIsOnScreen](self, "hasIsOnScreen") || [v5 hasIsOnScreen])
    {
      if (-[BMMediaRendered hasIsOnScreen](self, "hasIsOnScreen") && [v5 hasIsOnScreen])
      {
        v16 = [(BMMediaRendered *)self isOnScreen];
        v17 = v16 ^ [v5 isOnScreen] ^ 1;
      }

      else
      {
        LOBYTE(v17) = 0;
      }
    }

    else
    {
      LOBYTE(v17) = 1;
    }

    if (-[BMMediaRendered hasIsFirstView](self, "hasIsFirstView") || [v5 hasIsFirstView])
    {
      if (-[BMMediaRendered hasIsFirstView](self, "hasIsFirstView") && [v5 hasIsFirstView])
      {
        v18 = [(BMMediaRendered *)self isFirstView];
        v19 = v18 ^ [v5 isFirstView] ^ 1;
      }

      else
      {
        LOBYTE(v19) = 0;
      }
    }

    else
    {
      LOBYTE(v19) = 1;
    }

    v10 = v9 & v15 & v17 & v19;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

@end