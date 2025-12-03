@interface FAAgeRangeAlertModel
- (FAAgeRangeAlertModel)initWithAgeRangeResponse:(id)response shouldPrompt:(BOOL)prompt flowType:(int64_t)type title:(id)title message:(id)message primaryButtonText:(id)text secondaryButtonText:(id)buttonText;
- (FAAgeRangeAlertModel)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation FAAgeRangeAlertModel

- (FAAgeRangeAlertModel)initWithAgeRangeResponse:(id)response shouldPrompt:(BOOL)prompt flowType:(int64_t)type title:(id)title message:(id)message primaryButtonText:(id)text secondaryButtonText:(id)buttonText
{
  responseCopy = response;
  titleCopy = title;
  messageCopy = message;
  textCopy = text;
  buttonTextCopy = buttonText;
  v24.receiver = self;
  v24.super_class = FAAgeRangeAlertModel;
  v18 = [(FAAgeRangeAlertModel *)&v24 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_ageRangeResponse, response);
    v19->_shouldPrompt = prompt;
    v19->_flowType = type;
    objc_storeStrong(&v19->_title, title);
    objc_storeStrong(&v19->_message, message);
    objc_storeStrong(&v19->_primaryButtonText, text);
    objc_storeStrong(&v19->_secondaryButtonText, buttonText);
  }

  return v19;
}

- (FAAgeRangeAlertModel)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(FAAgeRangeAlertModel *)self init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_ageRangeResponse"];
    ageRangeResponse = v5->_ageRangeResponse;
    v5->_ageRangeResponse = v6;

    v5->_shouldPrompt = [coderCopy decodeBoolForKey:@"_shouldPrompt"];
    v5->_flowType = [coderCopy decodeIntegerForKey:@"_flowType"];
    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_title "];
    title = v5->_title;
    v5->_title = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_message"];
    message = v5->_message;
    v5->_message = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_primaryButtonText"];
    primaryButtonText = v5->_primaryButtonText;
    v5->_primaryButtonText = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_secondaryButtonText"];
    secondaryButtonText = v5->_secondaryButtonText;
    v5->_secondaryButtonText = v14;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  ageRangeResponse = self->_ageRangeResponse;
  coderCopy = coder;
  [coderCopy encodeObject:ageRangeResponse forKey:@"_ageRangeResponse"];
  [coderCopy encodeBool:self->_shouldPrompt forKey:@"_shouldPrompt"];
  [coderCopy encodeInteger:self->_flowType forKey:@"_flowType"];
  [coderCopy encodeObject:self->_title forKey:@"_title "];
  [coderCopy encodeObject:self->_message forKey:@"_message"];
  [coderCopy encodeObject:self->_primaryButtonText forKey:@"_primaryButtonText"];
  [coderCopy encodeObject:self->_secondaryButtonText forKey:@"_secondaryButtonText"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_opt_new();
  v5 = [(FAAgeRangeResponse *)self->_ageRangeResponse copy];
  v6 = *(v4 + 16);
  *(v4 + 16) = v5;

  *(v4 + 8) = self->_shouldPrompt;
  *(v4 + 24) = self->_flowType;
  v7 = [(NSString *)self->_title copy];
  v8 = *(v4 + 32);
  *(v4 + 32) = v7;

  v9 = [(NSString *)self->_message copy];
  v10 = *(v4 + 40);
  *(v4 + 40) = v9;

  v11 = [(NSString *)self->_primaryButtonText copy];
  v12 = *(v4 + 48);
  *(v4 + 48) = v11;

  v13 = [(NSString *)self->_secondaryButtonText copy];
  v14 = *(v4 + 56);
  *(v4 + 56) = v13;

  return v4;
}

@end