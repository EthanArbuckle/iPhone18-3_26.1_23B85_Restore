@interface HDOntologyTSVScanner
- (BOOL)scanLongLong:(int64_t *)long;
- (BOOL)scanString:(id *)string;
- (HDOntologyTSVScanner)init;
- (HDOntologyTSVScanner)initWithString:(id)string;
- (id)_unescapeTSVField:(uint64_t)field;
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

- (HDOntologyTSVScanner)initWithString:(id)string
{
  stringCopy = string;
  v9.receiver = self;
  v9.super_class = HDOntologyTSVScanner;
  v5 = [(HDOntologyTSVScanner *)&v9 init];
  if (v5)
  {
    v6 = [objc_alloc(MEMORY[0x277CCAC80]) initWithString:stringCopy];
    scanner = v5->_scanner;
    v5->_scanner = v6;

    [(NSScanner *)v5->_scanner setCharactersToBeSkipped:0];
  }

  return v5;
}

- (id)description
{
  string = [(NSScanner *)self->_scanner string];
  scanLocation = [(NSScanner *)self->_scanner scanLocation];
  v5 = [string length];
  v6 = v5 + ~scanLocation;
  if (v6 >= 0xA)
  {
    v7 = 10;
  }

  else
  {
    v7 = v5 + ~scanLocation;
  }

  if (v6 >= 0xA)
  {
    v8 = @"...";
  }

  else
  {
    v8 = &stru_28636E7C8;
  }

  v9 = [string substringWithRange:{scanLocation, v7}];
  v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"<%@:%p %@%@>", objc_opt_class(), self, v9, v8];

  return v10;
}

- (BOOL)scanLongLong:(int64_t *)long
{
  v4 = [(NSScanner *)self->_scanner scanLongLong:long];
  if (![(NSScanner *)self->_scanner scanString:@"\t" intoString:0])
  {
    [(HDOntologyTSVScanner *)self scanString:0];
  }

  return v4;
}

- (BOOL)scanString:(id *)string
{
  v5 = [(NSScanner *)self->_scanner scanUpToString:@"\t" intoString:string];
  v6 = v5;
  if (string && v5)
  {
    *string = [(HDOntologyTSVScanner *)self _unescapeTSVField:?];
  }

  [(NSScanner *)self->_scanner scanString:@"\t" intoString:0];
  return v6;
}

- (id)_unescapeTSVField:(uint64_t)field
{
  if (field)
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