@interface ODCurareModelInformation
- (ODCurareModelInformation)initWithModelInformation:(id)a3 modelURL:(id)a4;
@end

@implementation ODCurareModelInformation

- (ODCurareModelInformation)initWithModelInformation:(id)a3 modelURL:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(ODCurareModelInformation *)self init];
  v9 = v8;
  if (v8)
  {
    [(ODCurareModelInformation *)v8 setModelInformation:v6];
    [(ODCurareModelInformation *)v9 setModelURL:v7];
  }

  return v9;
}

@end