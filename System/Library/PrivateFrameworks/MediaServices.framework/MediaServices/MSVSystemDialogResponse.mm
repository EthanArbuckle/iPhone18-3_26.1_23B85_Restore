@interface MSVSystemDialogResponse
- (MSVSystemDialogResponse)initWithIdentifier:(int64_t)identifier textFieldValues:(id)values;
@end

@implementation MSVSystemDialogResponse

- (MSVSystemDialogResponse)initWithIdentifier:(int64_t)identifier textFieldValues:(id)values
{
  valuesCopy = values;
  v12.receiver = self;
  v12.super_class = MSVSystemDialogResponse;
  v7 = [(MSVSystemDialogResponse *)&v12 init];
  v8 = v7;
  if (v7)
  {
    v7->_buttonIdentifier = identifier;
    v9 = [valuesCopy copy];
    textFieldValues = v8->_textFieldValues;
    v8->_textFieldValues = v9;
  }

  return v8;
}

@end