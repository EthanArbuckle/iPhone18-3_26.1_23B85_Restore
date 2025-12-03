@interface OADGenericTextField
- (BOOL)isSimilarToTextRun:(id)run;
- (OADGenericTextField)initWithGuid:(id)guid type:(id)type;
@end

@implementation OADGenericTextField

- (OADGenericTextField)initWithGuid:(id)guid type:(id)type
{
  guidCopy = guid;
  typeCopy = type;
  v14.receiver = self;
  v14.super_class = OADGenericTextField;
  v8 = [(OADTextField *)&v14 init];
  if (v8)
  {
    v9 = [guidCopy copy];
    guid = v8->_guid;
    v8->_guid = v9;

    v11 = [typeCopy copy];
    type = v8->_type;
    v8->_type = v11;
  }

  return v8;
}

- (BOOL)isSimilarToTextRun:(id)run
{
  runCopy = run;
  v11.receiver = self;
  v11.super_class = OADGenericTextField;
  if ([(OADTextRun *)&v11 isSimilarToTextRun:runCopy])
  {
    guid = [(OADGenericTextField *)self guid];
    guid2 = [runCopy guid];
    if ([guid isEqualToString:guid2])
    {
      type = [(OADGenericTextField *)self type];
      type2 = [runCopy type];
      v9 = [type isEqualToString:type2];
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

@end