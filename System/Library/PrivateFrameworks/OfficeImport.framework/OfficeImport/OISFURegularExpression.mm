@interface OISFURegularExpression
+ (id)regularExpressionWithString:(id)string;
+ (void)initialize;
- (BOOL)isEqual:(id)equal;
- (OISFURegularExpression)initWithCoder:(id)coder;
- (OISFURegularExpression)initWithExpressionString:(id)string options:(unsigned int)options;
- (_NSRange)matchedRangeForCString:(const char *)string range:(_NSRange)range subexpressionRanges:(_NSRange *)ranges count:(unsigned int)count;
- (_NSRange)matchedRangeForString:(id)string range:(_NSRange)range subexpressionRanges:(_NSRange *)ranges count:(unsigned int)count;
- (const)getBytesForString:(id)string lossByte:(unsigned __int8)byte;
- (id)copyWithZone:(_NSZone *)zone;
- (void)dealloc;
@end

@implementation OISFURegularExpression

+ (void)initialize
{
  if (objc_opt_class() == self)
  {

    [self setVersion:1];
  }
}

+ (id)regularExpressionWithString:(id)string
{
  v3 = [[self alloc] initWithExpressionString:string];

  return v3;
}

- (void)dealloc
{
  if (self->_reserved)
  {
    MEMORY[0x25F897FB0]();
    NSZoneFree([(OISFURegularExpression *)self zone], self->_reserved);
  }

  v3.receiver = self;
  v3.super_class = OISFURegularExpression;
  [(OISFURegularExpression *)&v3 dealloc];
}

- (OISFURegularExpression)initWithExpressionString:(id)string options:(unsigned int)options
{
  v16 = *MEMORY[0x277D85DE8];
  v14.receiver = self;
  v14.super_class = OISFURegularExpression;
  v6 = [(OISFURegularExpression *)&v14 init];
  if (v6)
  {
    v7 = [string length];
    v8 = v7;
    v9 = buffer;
    if (v7 >= 0x40)
    {
      v9 = malloc_type_malloc(v7, 0xFA5EABE1uLL);
    }

    v17.location = 0;
    v17.length = v8;
    CFStringGetBytes(string, v17, 0x600u, 0x20u, 0, v9, v8, 0);
    v10 = NSZoneMalloc([v6 zone], 0x20uLL);
    *(v6 + 2) = v10;
    v10[2] = &v9[v8];
    if (options)
    {
      v11 = 34;
    }

    else
    {
      v11 = 32;
    }

    v12 = regcomp(*(v6 + 2), v9, ((4 * options) & 8 | (options >> 2) & 1 | v11) ^ 9);
    if (v9 != buffer)
    {
      free(v9);
    }

    if (v12)
    {
      NSLog(@"*** %s: error %d", "[OISFURegularExpression initWithExpressionString:options:]", v12);
      NSZoneFree([v6 zone], *(v6 + 2));
      *(v6 + 2) = 0;

      return 0;
    }

    else
    {
      *(v6 + 1) = [string copyWithZone:{objc_msgSend(v6, "zone")}];
    }
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  if ([(OISFURegularExpression *)self zone]== zone)
  {

    return self;
  }

  else
  {
    v4 = [objc_opt_class() allocWithZone:zone];
    expressionString = self->_expressionString;

    return [v4 initWithExpressionString:expressionString];
  }
}

- (BOOL)isEqual:(id)equal
{
  if (!equal)
  {
    return 0;
  }

  if (equal == self)
  {
    return 1;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  expressionString = self->_expressionString;
  expressionString = [equal expressionString];

  return [(NSString *)expressionString isEqualToString:expressionString];
}

- (_NSRange)matchedRangeForCString:(const char *)string range:(_NSRange)range subexpressionRanges:(_NSRange *)ranges count:(unsigned int)count
{
  length = range.length;
  location = range.location;
  v31 = *MEMORY[0x277D85DE8];
  numberOfSubexpressions = [(OISFURegularExpression *)self numberOfSubexpressions];
  countCopy = count;
  if (numberOfSubexpressions >= count)
  {
    countCopy2 = count;
  }

  else
  {
    countCopy2 = numberOfSubexpressions;
  }

  v15 = countCopy2 + 1;
  if (countCopy2 >= 5)
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
  if (regexec(self->_reserved, string, countCopy2 + 1, p_pmatch, 4))
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

    if (countCopy2)
    {
      p_rm_eo = &p_pmatch[1].rm_eo;
      p_length = &ranges->length;
      v23 = countCopy2;
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

    if (v15 < countCopy)
    {
      v26 = ~countCopy2 + countCopy;
      v27 = &ranges[countCopy2 + 1];
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

- (_NSRange)matchedRangeForString:(id)string range:(_NSRange)range subexpressionRanges:(_NSRange *)ranges count:(unsigned int)count
{
  v6 = *&count;
  length = range.length;
  location = range.location;
  ASCIIData = _createASCIIData(string, 0x3Fu, range.location, range.length);
  v12 = [(OISFURegularExpression *)self matchedRangeForCString:[(__CFData *)ASCIIData bytes] range:location subexpressionRanges:length count:ranges, v6];
  v14 = v13;

  v15 = v12;
  v16 = v14;
  result.length = v16;
  result.location = v15;
  return result;
}

- (OISFURegularExpression)initWithCoder:(id)coder
{
  v6 = [coder versionForClassName:@"SFURegularExpression"];
  v7 = v6;
  if (v6 >= 2)
  {
    v8 = MOFullMethodName(self, a2);
    NSLog(@"%@: class version %lu cannot read instances archived with version %lu", v8, 1, v7);
    [(OISFURegularExpression *)self dealloc];
    return 0;
  }

  if (v6 != 1)
  {
    return self;
  }

  decodeObject = [coder decodeObject];

  return [(OISFURegularExpression *)self initWithExpressionString:decodeObject];
}

- (const)getBytesForString:(id)string lossByte:(unsigned __int8)byte
{
  ASCIIData = _createASCIIData(string, byte, 0, [string length]);
  v5 = ASCIIData;

  return [(__CFData *)ASCIIData bytes];
}

@end