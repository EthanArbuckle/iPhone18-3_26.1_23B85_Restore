@interface ICASPdfState
- (ICASPdfState)initWithPdfState:(int64_t)state;
- (id)toJsonValueAndReturnError:(id *)error;
@end

@implementation ICASPdfState

- (ICASPdfState)initWithPdfState:(int64_t)state
{
  v5.receiver = self;
  v5.super_class = ICASPdfState;
  result = [(ICASPdfState *)&v5 init];
  if (result)
  {
    result->_pdfState = state;
  }

  return result;
}

- (id)toJsonValueAndReturnError:(id *)error
{
  pdfState = [(ICASPdfState *)self pdfState];
  if ((pdfState - 1) > 3)
  {
    return @"unknown";
  }

  else
  {
    return off_2799AF7E0[pdfState - 1];
  }
}

@end