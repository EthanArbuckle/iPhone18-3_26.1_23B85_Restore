@interface NSURL(EFPathComponentAdditions)
- (EFPathComponent)ef_lastPathComponent;
- (id)ef_URLByAppendingPathComponent:()EFPathComponentAdditions;
- (id)ef_URLByAppendingPathComponent:()EFPathComponentAdditions isDirectory:;
@end

@implementation NSURL(EFPathComponentAdditions)

- (EFPathComponent)ef_lastPathComponent
{
  v2 = [EFPathComponent alloc];
  lastPathComponent = [self lastPathComponent];
  v4 = [(EFPathComponent *)v2 initWithString:lastPathComponent];

  return v4;
}

- (id)ef_URLByAppendingPathComponent:()EFPathComponentAdditions
{
  sanitizedString = [a3 sanitizedString];
  v5 = [self URLByAppendingPathComponent:sanitizedString];

  return v5;
}

- (id)ef_URLByAppendingPathComponent:()EFPathComponentAdditions isDirectory:
{
  sanitizedString = [a3 sanitizedString];
  v7 = [self URLByAppendingPathComponent:sanitizedString isDirectory:a4];

  return v7;
}

@end