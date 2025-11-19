@interface NSError
- (BOOL)isFileExistsError;
@end

@implementation NSError

- (BOOL)isFileExistsError
{
  v3 = [(NSError *)self domain];
  if ([(NSString *)v3 isEqualToString:NSPOSIXErrorDomain])
  {
    v4 = [(NSError *)self code]== 17;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end