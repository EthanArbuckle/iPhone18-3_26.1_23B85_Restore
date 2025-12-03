@interface OADDateTimeField
- (BOOL)isEmpty;
- (BOOL)isSimilarToTextRun:(id)run;
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

  text = [(OADTextField *)self text];
  v3 = [text length] == 0;

  return v3;
}

- (BOOL)isSimilarToTextRun:(id)run
{
  runCopy = run;
  v8.receiver = self;
  v8.super_class = OADDateTimeField;
  if ([(OADTextRun *)&v8 isSimilarToTextRun:runCopy])
  {
    format = [(OADDateTimeField *)self format];
    v6 = format == [runCopy format];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end