@interface MSVSystemDialogResponse
- (MSVSystemDialogResponse)initWithIdentifier:(int64_t)a3 textFieldValues:(id)a4;
@end

@implementation MSVSystemDialogResponse

- (MSVSystemDialogResponse)initWithIdentifier:(int64_t)a3 textFieldValues:(id)a4
{
  v6 = a4;
  v12.receiver = self;
  v12.super_class = MSVSystemDialogResponse;
  v7 = [(MSVSystemDialogResponse *)&v12 init];
  v8 = v7;
  if (v7)
  {
    v7->_buttonIdentifier = a3;
    v9 = [v6 copy];
    textFieldValues = v8->_textFieldValues;
    v8->_textFieldValues = v9;
  }

  return v8;
}

@end