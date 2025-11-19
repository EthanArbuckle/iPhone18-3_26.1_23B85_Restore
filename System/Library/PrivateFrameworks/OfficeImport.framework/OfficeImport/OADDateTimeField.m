@interface OADDateTimeField
- (BOOL)isEmpty;
- (BOOL)isSimilarToTextRun:(id)a3;
- (OADDateTimeField)init;
@end

@implementation OADDateTimeField

- (OADDateTimeField)init
{
  v3.receiver = self;
  v3.super_class = OADDateTimeField;
  result = [(OADTextField *)&v3 init];
  if (result)
  {
    result->_format = -1;
  }

  return result;
}

- (BOOL)isEmpty
{
  if ([(OADDateTimeField *)self format]!= -1)
  {
    return 0;
  }

  v4 = [(OADTextField *)self text];
  v3 = [v4 length] == 0;

  return v3;
}

- (BOOL)isSimilarToTextRun:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = OADDateTimeField;
  if ([(OADTextRun *)&v8 isSimilarToTextRun:v4])
  {
    v5 = [(OADDateTimeField *)self format];
    v6 = v5 == [v4 format];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end