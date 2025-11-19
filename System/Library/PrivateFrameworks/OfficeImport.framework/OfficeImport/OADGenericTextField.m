@interface OADGenericTextField
- (BOOL)isSimilarToTextRun:(id)a3;
- (OADGenericTextField)initWithGuid:(id)a3 type:(id)a4;
@end

@implementation OADGenericTextField

- (OADGenericTextField)initWithGuid:(id)a3 type:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = OADGenericTextField;
  v8 = [(OADTextField *)&v14 init];
  if (v8)
  {
    v9 = [v6 copy];
    guid = v8->_guid;
    v8->_guid = v9;

    v11 = [v7 copy];
    type = v8->_type;
    v8->_type = v11;
  }

  return v8;
}

- (BOOL)isSimilarToTextRun:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = OADGenericTextField;
  if ([(OADTextRun *)&v11 isSimilarToTextRun:v4])
  {
    v5 = [(OADGenericTextField *)self guid];
    v6 = [v4 guid];
    if ([v5 isEqualToString:v6])
    {
      v7 = [(OADGenericTextField *)self type];
      v8 = [v4 type];
      v9 = [v7 isEqualToString:v8];
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