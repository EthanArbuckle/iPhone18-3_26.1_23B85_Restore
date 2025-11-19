@interface HDOntologyTSVScanner
- (BOOL)scanLongLong:(int64_t *)a3;
- (BOOL)scanString:(id *)a3;
- (HDOntologyTSVScanner)init;
- (HDOntologyTSVScanner)initWithString:(id)a3;
- (id)_unescapeTSVField:(uint64_t)a1;
- (id)description;
@end

@implementation HDOntologyTSVScanner

- (HDOntologyTSVScanner)init
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE660];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The -%@ method is not available on %@", v5, objc_opt_class()}];

  return 0;
}

- (HDOntologyTSVScanner)initWithString:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = HDOntologyTSVScanner;
  v5 = [(HDOntologyTSVScanner *)&v9 init];
  if (v5)
  {
    v6 = [objc_alloc(MEMORY[0x277CCAC80]) initWithString:v4];
    scanner = v5->_scanner;
    v5->_scanner = v6;

    [(NSScanner *)v5->_scanner setCharactersToBeSkipped:0];
  }

  return v5;
}

- (id)description
{
  v3 = [(NSScanner *)self->_scanner string];
  v4 = [(NSScanner *)self->_scanner scanLocation];
  v5 = [v3 length];
  v6 = v5 + ~v4;
  if (v6 >= 0xA)
  {
    v7 = 10;
  }

  else
  {
    v7 = v5 + ~v4;
  }

  if (v6 >= 0xA)
  {
    v8 = @"...";
  }

  else
  {
    v8 = &stru_28636E7C8;
  }

  v9 = [v3 substringWithRange:{v4, v7}];
  v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"<%@:%p %@%@>", objc_opt_class(), self, v9, v8];

  return v10;
}

- (BOOL)scanLongLong:(int64_t *)a3
{
  v4 = [(NSScanner *)self->_scanner scanLongLong:a3];
  if (![(NSScanner *)self->_scanner scanString:@"\t" intoString:0])
  {
    [(HDOntologyTSVScanner *)self scanString:0];
  }

  return v4;
}

- (BOOL)scanString:(id *)a3
{
  v5 = [(NSScanner *)self->_scanner scanUpToString:@"\t" intoString:a3];
  v6 = v5;
  if (a3 && v5)
  {
    *a3 = [(HDOntologyTSVScanner *)self _unescapeTSVField:?];
  }

  [(NSScanner *)self->_scanner scanString:@"\t" intoString:0];
  return v6;
}

- (id)_unescapeTSVField:(uint64_t)a1
{
  if (a1)
  {
    v2 = [MEMORY[0x277CCAB68] stringWithString:a2];
    [v2 replaceOccurrencesOfString:@"\\t" withString:@"\t" options:2 range:{0, objc_msgSend(v2, "length")}];
    [v2 replaceOccurrencesOfString:@"\\n" withString:@"\n" options:2 range:{0, objc_msgSend(v2, "length")}];
    v3 = [v2 copy];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

@end