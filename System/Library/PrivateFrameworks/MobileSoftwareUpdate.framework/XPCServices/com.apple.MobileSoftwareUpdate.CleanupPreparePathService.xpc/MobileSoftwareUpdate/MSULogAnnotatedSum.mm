@interface MSULogAnnotatedSum
+ (id)sum;
- (MSULogAnnotatedSum)init;
- (id)description;
- (void)add:(int64_t)add annotation:(id)annotation;
- (void)add:(int64_t)add annotationFormat:(id)format;
- (void)dealloc;
- (void)format:(unint64_t)format label:(id)label padding:(unint64_t)padding;
@end

@implementation MSULogAnnotatedSum

+ (id)sum
{
  v2 = objc_alloc_init(MSULogAnnotatedSum);

  return v2;
}

- (MSULogAnnotatedSum)init
{
  v4.receiver = self;
  v4.super_class = MSULogAnnotatedSum;
  v2 = [(MSULogAnnotatedSum *)&v4 init];
  if (v2)
  {
    v2->addends = objc_alloc_init(NSMutableArray);
    v2->annotations = objc_alloc_init(NSMutableArray);
    v2->cachedDescription = 0;
    v2->_unit = 0x100000;
    v2->_label = @"MB";
    v2->_padding = 2;
  }

  return v2;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MSULogAnnotatedSum;
  [(MSULogAnnotatedSum *)&v3 dealloc];
}

- (void)format:(unint64_t)format label:(id)label padding:(unint64_t)padding
{
  objc_sync_enter(self);
  if (format)
  {
    self->_unit = format;
    self->_label = label;
    self->_padding = padding;

    self->cachedDescription = 0;
  }

  objc_sync_exit(self);
}

- (void)add:(int64_t)add annotation:(id)annotation
{
  objc_sync_enter(self);
  v7 = [NSNumber numberWithLongLong:add];
  if (v7)
  {
    [(NSMutableArray *)self->addends addObject:v7];
    if (annotation)
    {
      annotationCopy = annotation;
    }

    else
    {
      annotationCopy = &stru_100050240;
    }

    [(NSMutableArray *)self->annotations addObject:annotationCopy];

    self->cachedDescription = 0;
  }

  objc_sync_exit(self);
}

- (void)add:(int64_t)add annotationFormat:(id)format
{
  v6 = [[NSString alloc] initWithFormat:format arguments:&v7];
  [(MSULogAnnotatedSum *)self add:add annotation:v6];
}

- (id)description
{
  objc_sync_enter(self);
  cachedDescription = self->cachedDescription;
  if (!cachedDescription)
  {
    context = objc_autoreleasePoolPush();
    v22 = [NSMutableString stringWithString:@"\n"];
    v21 = [(NSMutableArray *)self->addends count];
    unit = [(MSULogAnnotatedSum *)self unit];
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    addends = self->addends;
    v5 = [(NSMutableArray *)addends countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (v5)
    {
      v6 = *v25;
      v7 = 1;
      do
      {
        for (i = 0; i != v5; i = i + 1)
        {
          if (*v25 != v6)
          {
            objc_enumerationMutation(addends);
          }

          v9 = *(*(&v24 + 1) + 8 * i);
          v10 = objc_autoreleasePoolPush();
          v11 = -[NSString length](-[NSNumber stringValue](+[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [v9 longLongValue] / unit), "stringValue"), "length");
          objc_autoreleasePoolPop(v10);
          if (v11 > v7)
          {
            v7 = v11;
          }
        }

        v5 = [(NSMutableArray *)addends countByEnumeratingWithState:&v24 objects:v28 count:16];
      }

      while (v5);
    }

    else
    {
      v7 = 1;
    }

    if (v21)
    {
      v12 = 0;
      v13 = 0;
      do
      {
        v14 = [-[NSMutableArray objectAtIndexedSubscript:](self->addends objectAtIndexedSubscript:{v12), "longLongValue"}];
        v15 = [(NSMutableArray *)self->annotations objectAtIndexedSubscript:v12];
        v16 = [(NSMutableString *)v22 length];
        [(NSMutableString *)v22 appendFormat:@"%*lld", [(MSULogAnnotatedSum *)self padding]+ v7, v14 / unit];
        if ([(NSString *)[(MSULogAnnotatedSum *)self label] length])
        {
          [(NSMutableString *)v22 appendFormat:@" %@", [(MSULogAnnotatedSum *)self label]];
        }

        if ([v15 length])
        {
          [(NSMutableString *)v22 appendFormat:@" %@", v15];
        }

        [(NSMutableString *)v22 appendString:@"\n"];
        v13 += v14 / unit;
        ++v12;
      }

      while (v21 != v12);
      if ([(MSULogAnnotatedSum *)self padding])
      {
        [(NSMutableString *)v22 replaceCharactersInRange:v16 withString:1, @"+"];
      }
    }

    else
    {
      v13 = 0;
    }

    for (j = 0; j < [(MSULogAnnotatedSum *)self padding]+ v7; ++j)
    {
      [(NSMutableString *)v22 appendString:@"-"];
    }

    [(NSMutableString *)v22 appendString:@"\n"];
    [(NSMutableString *)v22 appendFormat:@"%*lld", [(MSULogAnnotatedSum *)self padding]+ v7, v13];
    if ([(NSString *)[(MSULogAnnotatedSum *)self label] length])
    {
      [(NSMutableString *)v22 appendFormat:@" %@", [(MSULogAnnotatedSum *)self label]];
    }

    if (v22)
    {
      self->cachedDescription = [[NSString alloc] initWithString:v22];
    }

    objc_autoreleasePoolPop(context);
    cachedDescription = self->cachedDescription;
  }

  if (cachedDescription)
  {
    v18 = cachedDescription;
  }

  else
  {
    v18 = @"<MSUAnnotatedSum>";
  }

  objc_sync_exit(self);
  return v18;
}

@end