@interface NSURL(EFPathComponentAdditions)
- (EFPathComponent)ef_lastPathComponent;
- (id)ef_URLByAppendingPathComponent:()EFPathComponentAdditions;
- (id)ef_URLByAppendingPathComponent:()EFPathComponentAdditions isDirectory:;
@end

@implementation NSURL(EFPathComponentAdditions)

- (EFPathComponent)ef_lastPathComponent
{
  v2 = [EFPathComponent alloc];
  v3 = [a1 lastPathComponent];
  v4 = [(EFPathComponent *)v2 initWithString:v3];

  return v4;
}

- (id)ef_URLByAppendingPathComponent:()EFPathComponentAdditions
{
  v4 = [a3 sanitizedString];
  v5 = [a1 URLByAppendingPathComponent:v4];

  return v5;
}

- (id)ef_URLByAppendingPathComponent:()EFPathComponentAdditions isDirectory:
{
  v6 = [a3 sanitizedString];
  v7 = [a1 URLByAppendingPathComponent:v6 isDirectory:a4];

  return v7;
}

@end