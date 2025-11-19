@interface FAAgeRangeAlertModel
- (FAAgeRangeAlertModel)initWithAgeRangeResponse:(id)a3 shouldPrompt:(BOOL)a4 flowType:(int64_t)a5 title:(id)a6 message:(id)a7 primaryButtonText:(id)a8 secondaryButtonText:(id)a9;
- (FAAgeRangeAlertModel)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation FAAgeRangeAlertModel

- (FAAgeRangeAlertModel)initWithAgeRangeResponse:(id)a3 shouldPrompt:(BOOL)a4 flowType:(int64_t)a5 title:(id)a6 message:(id)a7 primaryButtonText:(id)a8 secondaryButtonText:(id)a9
{
  v23 = a3;
  v22 = a6;
  v15 = a7;
  v16 = a8;
  v17 = a9;
  v24.receiver = self;
  v24.super_class = FAAgeRangeAlertModel;
  v18 = [(FAAgeRangeAlertModel *)&v24 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_ageRangeResponse, a3);
    v19->_shouldPrompt = a4;
    v19->_flowType = a5;
    objc_storeStrong(&v19->_title, a6);
    objc_storeStrong(&v19->_message, a7);
    objc_storeStrong(&v19->_primaryButtonText, a8);
    objc_storeStrong(&v19->_secondaryButtonText, a9);
  }

  return v19;
}

- (FAAgeRangeAlertModel)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(FAAgeRangeAlertModel *)self init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_ageRangeResponse"];
    ageRangeResponse = v5->_ageRangeResponse;
    v5->_ageRangeResponse = v6;

    v5->_shouldPrompt = [v4 decodeBoolForKey:@"_shouldPrompt"];
    v5->_flowType = [v4 decodeIntegerForKey:@"_flowType"];
    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_title "];
    title = v5->_title;
    v5->_title = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_message"];
    message = v5->_message;
    v5->_message = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_primaryButtonText"];
    primaryButtonText = v5->_primaryButtonText;
    v5->_primaryButtonText = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_secondaryButtonText"];
    secondaryButtonText = v5->_secondaryButtonText;
    v5->_secondaryButtonText = v14;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  ageRangeResponse = self->_ageRangeResponse;
  v5 = a3;
  [v5 encodeObject:ageRangeResponse forKey:@"_ageRangeResponse"];
  [v5 encodeBool:self->_shouldPrompt forKey:@"_shouldPrompt"];
  [v5 encodeInteger:self->_flowType forKey:@"_flowType"];
  [v5 encodeObject:self->_title forKey:@"_title "];
  [v5 encodeObject:self->_message forKey:@"_message"];
  [v5 encodeObject:self->_primaryButtonText forKey:@"_primaryButtonText"];
  [v5 encodeObject:self->_secondaryButtonText forKey:@"_secondaryButtonText"];
}

- (id)copyWithZone:(_NSZone *)a3
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