@interface OITSUPathSet
+ (id)parseNumberOutOfBasename:(id)a3 hasNumber:(BOOL *)a4 number:(unsigned int *)a5;
+ (void)processPath:(id)a3 base:(id *)a4 hasBaseNumber:(BOOL *)a5 baseNumber:(unsigned int *)a6 extension:(id *)a7;
- (BOOL)isPathUsed:(id)a3;
- (OITSUPathSet)init;
- (OITSUPathSet)initWithPaths:(id)a3 basePathToNumberMap:(id)a4;
- (id)addPath:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)dealloc;
- (void)pathIsNoLongerUsed:(id)a3;
- (void)pathIsUsed:(id)a3;
- (void)setUnderlyingPathSet:(id)a3;
- (void)unionPathSet:(id)a3;
@end

@implementation OITSUPathSet

- (OITSUPathSet)init
{
  v4.receiver = self;
  v4.super_class = OITSUPathSet;
  v2 = [(OITSUPathSet *)&v4 init];
  if (v2)
  {
    v2->mPaths = [objc_alloc(MEMORY[0x277CBEB58]) initWithCapacity:4096];
    v2->mBasePathToNumberMap = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:128];
  }

  return v2;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "initWithPaths:basePathToNumberMap:", self->mPaths, self->mBasePathToNumberMap}];
  [v4 setUnderlyingPathSet:self->mUnderlyingSet];
  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OITSUPathSet;
  [(OITSUPathSet *)&v3 dealloc];
}

- (id)addPath:(id)a3
{
  v19 = 0;
  v18 = 0;
  v17 = 0;
  v16 = 0;
  [objc_opt_class() processPath:a3 base:&v19 hasBaseNumber:&v18 baseNumber:&v17 extension:&v16];
  v4 = v19;
  if (v18 == 1)
  {
    v4 = [v19 stringByAppendingFormat:@"-%u", v17];
  }

  if (v16)
  {
    v4 = [v4 tsu_tolerantStringByAppendingPathExtension:?];
    v5 = v19;
    if (v16)
    {
      v5 = [v19 tsu_tolerantStringByAppendingPathExtension:?];
    }
  }

  else
  {
    v5 = v19;
  }

  v6 = [objc_msgSend(v5 "uppercaseString")];
  if ([(OITSUPathSet *)self isPathUsed:v4])
  {
    v7 = v17;
    v8 = [-[NSMutableDictionary objectForKey:](self->mBasePathToNumberMap objectForKey:{v6), "unsignedIntValue"}];
    if (v7 <= v8)
    {
      v9 = v8;
    }

    else
    {
      v9 = v7;
    }

    do
    {
      v4 = v19;
      if (v9)
      {
        v4 = [v19 stringByAppendingFormat:@"-%u", v9];
      }

      if (v16)
      {
        v4 = [v4 tsu_tolerantStringByAppendingPathExtension:?];
      }

      v9 = (v9 + 1);
    }

    while ([(OITSUPathSet *)self isPathUsed:v4]);
    mBasePathToNumberMap = self->mBasePathToNumberMap;
    v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v9];
    v12 = mBasePathToNumberMap;
    goto LABEL_19;
  }

  v13 = [-[NSMutableDictionary objectForKey:](self->mBasePathToNumberMap objectForKey:{v6), "unsignedIntValue"}];
  if (v17 >= v13)
  {
    v14 = self->mBasePathToNumberMap;
    v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v17 + 1];
    v12 = v14;
LABEL_19:
    [(NSMutableDictionary *)v12 setObject:v11 forKey:v6];
  }

  [(OITSUPathSet *)self pathIsUsed:v4];
  return v4;
}

- (void)pathIsUsed:(id)a3
{
  mPaths = self->mPaths;
  v4 = [objc_msgSend(a3 "uppercaseString")];

  [(NSMutableSet *)mPaths addObject:v4];
}

- (void)pathIsNoLongerUsed:(id)a3
{
  v4 = [objc_msgSend(a3 "uppercaseString")];
  if ([(NSMutableSet *)self->mPaths containsObject:v4])
  {
    [(NSMutableSet *)self->mPaths removeObject:v4];
    v11 = 0;
    v10 = 0;
    v9 = 0;
    v8 = 0;
    [objc_opt_class() processPath:v4 base:&v11 hasBaseNumber:&v10 baseNumber:&v9 extension:&v8];
    v5 = v11;
    if (v8)
    {
      v5 = [v11 tsu_tolerantStringByAppendingPathExtension:?];
    }

    v6 = [objc_msgSend(v5 "uppercaseString")];
    v7 = [-[NSMutableDictionary objectForKey:](self->mBasePathToNumberMap objectForKey:{v6), "unsignedIntValue"}];
    if (v7 == v9 + 1)
    {
      -[NSMutableDictionary setObject:forKey:](self->mBasePathToNumberMap, "setObject:forKey:", [MEMORY[0x277CCABB0] numberWithUnsignedInt:?], v6);
    }
  }
}

- (BOOL)isPathUsed:(id)a3
{
  if (-[NSMutableSet containsObject:](self->mPaths, "containsObject:", [objc_msgSend(a3 "uppercaseString")]))
  {
    LOBYTE(mUnderlyingSet) = 1;
  }

  else
  {
    mUnderlyingSet = self->mUnderlyingSet;
    if (mUnderlyingSet)
    {

      LOBYTE(mUnderlyingSet) = [(OITSUPathSet *)mUnderlyingSet isPathUsed:a3];
    }
  }

  return mUnderlyingSet;
}

- (void)setUnderlyingPathSet:(id)a3
{
  v5 = a3;

  self->mUnderlyingSet = a3;
}

- (void)unionPathSet:(id)a3
{
  [(NSMutableSet *)self->mPaths unionSet:*(a3 + 1)];
  v12 = objc_alloc_init(MEMORY[0x277CBEB58]);
  [v12 addObjectsFromArray:{-[NSMutableDictionary allKeys](self->mBasePathToNumberMap, "allKeys")}];
  [v12 addObjectsFromArray:{objc_msgSend(*(a3 + 2), "allKeys")}];
  v5 = [v12 objectEnumerator];
  v6 = [v5 nextObject];
  if (v6)
  {
    v7 = v6;
    do
    {
      v8 = [(NSMutableDictionary *)self->mBasePathToNumberMap objectForKey:v7];
      v9 = [*(a3 + 2) objectForKey:v7];
      v10 = v9;
      if (!v8 || v9 && (v11 = [v9 unsignedIntValue], v11 > objc_msgSend(v8, "unsignedIntValue")))
      {
        [(NSMutableDictionary *)self->mBasePathToNumberMap setObject:v10 forKey:v7];
      }

      v7 = [v5 nextObject];
    }

    while (v7);
  }
}

- (OITSUPathSet)initWithPaths:(id)a3 basePathToNumberMap:(id)a4
{
  v8.receiver = self;
  v8.super_class = OITSUPathSet;
  v6 = [(OITSUPathSet *)&v8 init];
  if (v6)
  {
    v6->mPaths = [a3 mutableCopy];
    v6->mBasePathToNumberMap = [a4 mutableCopy];
  }

  return v6;
}

+ (id)parseNumberOutOfBasename:(id)a3 hasNumber:(BOOL *)a4 number:(unsigned int *)a5
{
  v5 = a3;
  *a4 = 0;
  if (a3)
  {
    v8 = [a3 length];
    if (v8 - 1 >= 1)
    {
      v9 = v8;
      v10 = [v5 characterAtIndex:?];
      if (v10 <= 0xFF)
      {
        v11 = MEMORY[0x277D85DE0];
        if ((*(MEMORY[0x277D85DE0] + 4 * v10 + 60) & 0x400) != 0)
        {
          v12 = v9 - 2;
          while (1)
          {
            v13 = [v5 characterAtIndex:v12];
            if (v13 > 0xFF || (*(v11 + 4 * v13 + 60) & 0x400) == 0)
            {
              break;
            }

            if (v12-- <= 0)
            {
              return v5;
            }
          }

          if (v12)
          {
            if ([v5 characterAtIndex:v12] == 45)
            {
              v15 = [v5 substringToIndex:v12];
              v16 = [objc_msgSend(v5 substringFromIndex:{v12 + 1), "intValue"}];
              if (v15)
              {
                v17 = v16;
                if ([v15 length])
                {
                  if (v17 - 1 <= 0x7FFFFFFD)
                  {
                    *a4 = 1;
                    if (a5)
                    {
                      *a5 = v17;
                      return v15;
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return v5;
}

+ (void)processPath:(id)a3 base:(id *)a4 hasBaseNumber:(BOOL *)a5 baseNumber:(unsigned int *)a6 extension:(id *)a7
{
  v11 = a3;
  v13 = [a3 pathExtension];
  *a7 = v13;
  if (![v13 length])
  {
    *a7 = 0;
  }

  if (![v11 length])
  {
    v14 = MEMORY[0x277CCACA8];
    [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
    v11 = [v14 stringWithFormat:@"%.0f", v15 * 1000.0];
  }

  *a4 = [v11 stringByDeletingPathExtension];
  *a6 = 0;
  v16 = [a1 parseNumberOutOfBasename:*a4 hasNumber:a5 number:a6];
  *a4 = v16;
  v17 = [v16 lastPathComponent];
  v18 = [v17 hasPrefix:@"~"];
  if (v18)
  {
    v17 = [@"x" stringByAppendingString:v17];
  }

  v19 = 255 - [@"-0000" length];
  if (*a7)
  {
    v19 += ~[*a7 length];
  }

  v20 = [v17 fileSystemRepresentation];
  if (!v20)
  {
    if (!v18)
    {
      return;
    }

    goto LABEL_13;
  }

  v21 = [objc_msgSend(objc_msgSend(MEMORY[0x277CCAA00] "defaultManager")];
  v22 = [v17 isEqualToString:v21];
  if (!v22)
  {
    v17 = v21;
  }

  if ((v18 | v22 ^ 1))
  {
LABEL_13:
    *a4 = [objc_msgSend(*a4 "stringByDeletingLastPathComponent")];
  }
}

@end