@interface ICASPdfState
- (ICASPdfState)initWithPdfState:(int64_t)a3;
- (id)toJsonValueAndReturnError:(id *)a3;
@end

@implementation ICASPdfState

- (ICASPdfState)initWithPdfState:(int64_t)a3
{
  v5.receiver = self;
  v5.super_class = ICASPdfState;
  result = [(ICASPdfState *)&v5 init];
  if (result)
  {
    result->_pdfState = a3;
  }

  return result;
}

- (id)toJsonValueAndReturnError:(id *)a3
{
  v3 = [(ICASPdfState *)self pdfState];
  if ((v3 - 1) > 3)
  {
    return @"unknown";
  }

  else
  {
    return off_2799AF7E0[v3 - 1];
  }
}

@end