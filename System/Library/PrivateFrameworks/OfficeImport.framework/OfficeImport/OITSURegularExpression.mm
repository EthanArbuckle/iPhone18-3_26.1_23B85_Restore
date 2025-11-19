@interface OITSURegularExpression
+ (id)regularExpressionWithString:(id)a3;
+ (void)initialize;
- (BOOL)isEqual:(id)a3;
- (OITSURegularExpression)initWithCoder:(id)a3;
- (OITSURegularExpression)initWithExpressionString:(id)a3 options:(unsigned int)a4;
- (_NSRange)matchedRangeForCString:(const char *)a3 range:(_NSRange)a4 subexpressionRanges:(_NSRange *)a5 count:(unsigned int)a6;
- (_NSRange)matchedRangeForString:(id)a3 range:(_NSRange)a4 subexpressionRanges:(_NSRange *)a5 count:(unsigned int)a6;
- (const)getBytesForString:(id)a3 lossByte:(unsigned __int8)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (void)dealloc;
@end

@implementation OITSURegularExpression

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {

    [a1 setVersion:1];
  }
}

+ (id)regularExpressionWithString:(id)a3
{
  v3 = [[a1 alloc] initWithExpressionString:a3];

  return v3;
}

- (void)dealloc
{
  if (self->_reserved)
  {
    MEMORY[0x25F897FB0]();
    NSZoneFree([(OITSURegularExpression *)self zone], self->_reserved);
  }

  v3.receiver = self;
  v3.super_class = OITSURegularExpression;
  [(OITSURegularExpression *)&v3 dealloc];
}

- (OITSURegularExpression)initWithExpressionString:(id)a3 options:(unsigned int)a4
{
  v16 = *MEMORY[0x277D85DE8];
  v14.receiver = self;
  v14.super_class = OITSURegularExpression;
  v6 = [(OITSURegularExpression *)&v14 init];
  if (v6)
  {
    v7 = [a3 length];
    v8 = v7;
    v9 = buffer;
    if (v7 >= 0x40)
    {
      v9 = malloc_type_malloc(v7, 0x8ACFB9F4uLL);
    }

    v17.location = 0;
    v17.length = v8;
    CFStringGetBytes(a3, v17, 0x600u, 0x20u, 0, v9, v8, 0);
    v10 = NSZoneMalloc([v6 zone], 0x20uLL);
    *(v6 + 2) = v10;
    v10[2] = &v9[v8];
    if (a4)
    {
      v11 = 34;
    }

    else
    {
      v11 = 32;
    }

    v12 = regcomp(*(v6 + 2), v9, ((4 * a4) & 8 | (a4 >> 2) & 1 | v11) ^ 9);
    if (v9 != buffer)
    {
      free(v9);
    }

    if (v12)
    {
      NSLog(@"*** %s: error %d", "[OITSURegularExpression initWithExpressionString:options:]", v12);
      NSZoneFree([v6 zone], *(v6 + 2));
      *(v6 + 2) = 0;

      return 0;
    }

    else
    {
      *(v6 + 1) = [a3 copyWithZone:{objc_msgSend(v6, "zone")}];
    }
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)a3
{
  if ([(OITSURegularExpression *)self zone]== a3)
  {

    return self;
  }

  else
  {
    v4 = [objc_opt_class() allocWithZone:a3];
    expressionString = self->_expressionString;

    return [v4 initWithExpressionString:expressionString];
  }
}

- (BOOL)isEqual:(id)a3
{
  if (!a3)
  {
    return 0;
  }

  if (a3 == self)
  {
    return 1;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  expressionString = self->_expressionString;
  v6 = [a3 expressionString];

  return [(NSString *)expressionString isEqualToString:v6];
}

- (_NSRange)matchedRangeForCString:(const char *)a3 range:(_NSRange)a4 subexpressionRanges:(_NSRange *)a5 count:(unsigned int)a6
{
  length = a4.length;
  location = a4.location;
  v31 = *MEMORY[0x277D85DE8];
  v12 = [(OITSURegularExpression *)self numberOfSubexpressions];
  v13 = a6;
  if (v12 >= a6)
  {
    v14 = a6;
  }

  else
  {
    v14 = v12;
  }

  v15 = v14 + 1;
  if (v14 >= 5)
  {
    p_pmatch = malloc_type_malloc(16 * v15, 0x1000040451B5BE8uLL);
  }

  else
  {
    p_pmatch = &__pmatch;
  }

  v17 = location + length;
  rm_so = 0x7FFFFFFFFFFFFFFFLL;
  if (location == 0x7FFFFFFFFFFFFFFFLL)
  {
    v17 = -1;
    v19 = -1;
  }

  else
  {
    v19 = location;
  }

  p_pmatch->rm_so = v19;
  p_pmatch->rm_eo = v17;
  if (regexec(self->_reserved, a3, v14 + 1, p_pmatch, 4))
  {
    v20 = 0;
  }

  else
  {
    v20 = (p_pmatch->rm_eo - p_pmatch->rm_so) & ~(p_pmatch->rm_so >> 63);
    if (p_pmatch->rm_so >= 0)
    {
      rm_so = p_pmatch->rm_so;
    }

    if (v14)
    {
      p_rm_eo = &p_pmatch[1].rm_eo;
      p_length = &a5->length;
      v23 = v14;
      do
      {
        v24 = *(p_rm_eo - 1);
        v25 = (*p_rm_eo - v24) & ~(v24 >> 63);
        if (v24 < 0)
        {
          v24 = 0x7FFFFFFFFFFFFFFFLL;
        }

        *(p_length - 1) = v24;
        *p_length = v25;
        p_rm_eo += 2;
        p_length += 2;
        --v23;
      }

      while (v23);
    }

    if (v15 < v13)
    {
      v26 = ~v14 + v13;
      v27 = &a5[v14 + 1];
      do
      {
        *v27++ = xmmword_25D6FA740;
        --v26;
      }

      while (v26);
    }
  }

  if (p_pmatch != &__pmatch)
  {
    free(p_pmatch);
  }

  v28 = rm_so;
  v29 = v20;
  result.length = v29;
  result.location = v28;
  return result;
}

- (_NSRange)matchedRangeForString:(id)a3 range:(_NSRange)a4 subexpressionRanges:(_NSRange *)a5 count:(unsigned int)a6
{
  v6 = *&a6;
  length = a4.length;
  location = a4.location;
  ASCIIData = _createASCIIData(a3, 0x3Fu, a4.location, a4.length);
  v12 = [(OITSURegularExpression *)self matchedRangeForCString:[(__CFData *)ASCIIData bytes] range:location subexpressionRanges:length count:a5, v6];
  v14 = v13;

  v15 = v12;
  v16 = v14;
  result.length = v16;
  result.location = v15;
  return result;
}

- (OITSURegularExpression)initWithCoder:(id)a3
{
  v6 = [a3 versionForClassName:@"TSURegularExpression"];
  v7 = v6;
  if (v6 >= 2)
  {
    v8 = MOFullMethodName(self, a2);
    NSLog(@"%@: class version %u cannot read instances archived with version %lu", v8, 1, v7);
    [(OITSURegularExpression *)self dealloc];
    return 0;
  }

  if (v6 != 1)
  {
    return self;
  }

  v9 = [a3 decodeObject];

  return [(OITSURegularExpression *)self initWithExpressionString:v9];
}

- (const)getBytesForString:(id)a3 lossByte:(unsigned __int8)a4
{
  ASCIIData = _createASCIIData(a3, a4, 0, [a3 length]);
  v5 = ASCIIData;

  return [(__CFData *)ASCIIData bytes];
}

@end