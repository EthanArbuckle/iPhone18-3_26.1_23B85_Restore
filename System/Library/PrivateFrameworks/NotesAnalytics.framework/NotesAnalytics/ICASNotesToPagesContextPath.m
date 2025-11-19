@interface ICASNotesToPagesContextPath
- (ICASNotesToPagesContextPath)initWithNotesToPagesContextPath:(int64_t)a3;
- (id)toJsonValueAndReturnError:(id *)a3;
@end

@implementation ICASNotesToPagesContextPath

- (ICASNotesToPagesContextPath)initWithNotesToPagesContextPath:(int64_t)a3
{
  v5.receiver = self;
  v5.super_class = ICASNotesToPagesContextPath;
  result = [(ICASNotesToPagesContextPath *)&v5 init];
  if (result)
  {
    result->_notesToPagesContextPath = a3;
  }

  return result;
}

- (id)toJsonValueAndReturnError:(id *)a3
{
  v3 = [(ICASNotesToPagesContextPath *)self notesToPagesContextPath];
  if ((v3 - 1) > 2)
  {
    return @"unknown";
  }

  else
  {
    return off_2799AFEF8[v3 - 1];
  }
}

@end