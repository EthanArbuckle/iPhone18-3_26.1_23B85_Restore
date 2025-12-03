@interface ICASNotesToPagesContextPath
- (ICASNotesToPagesContextPath)initWithNotesToPagesContextPath:(int64_t)path;
- (id)toJsonValueAndReturnError:(id *)error;
@end

@implementation ICASNotesToPagesContextPath

- (ICASNotesToPagesContextPath)initWithNotesToPagesContextPath:(int64_t)path
{
  v5.receiver = self;
  v5.super_class = ICASNotesToPagesContextPath;
  result = [(ICASNotesToPagesContextPath *)&v5 init];
  if (result)
  {
    result->_notesToPagesContextPath = path;
  }

  return result;
}

- (id)toJsonValueAndReturnError:(id *)error
{
  notesToPagesContextPath = [(ICASNotesToPagesContextPath *)self notesToPagesContextPath];
  if ((notesToPagesContextPath - 1) > 2)
  {
    return @"unknown";
  }

  else
  {
    return off_2799AFEF8[notesToPagesContextPath - 1];
  }
}

@end