@interface ODCurareModelInformation
- (ODCurareModelInformation)initWithModelInformation:(id)information modelURL:(id)l;
@end

@implementation ODCurareModelInformation

- (ODCurareModelInformation)initWithModelInformation:(id)information modelURL:(id)l
{
  informationCopy = information;
  lCopy = l;
  v8 = [(ODCurareModelInformation *)self init];
  v9 = v8;
  if (v8)
  {
    [(ODCurareModelInformation *)v8 setModelInformation:informationCopy];
    [(ODCurareModelInformation *)v9 setModelURL:lCopy];
  }

  return v9;
}

@end