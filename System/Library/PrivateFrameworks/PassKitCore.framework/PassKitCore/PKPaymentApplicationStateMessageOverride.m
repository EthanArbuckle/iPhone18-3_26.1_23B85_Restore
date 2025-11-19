@interface PKPaymentApplicationStateMessageOverride
- (PKPaymentApplicationStateMessageOverride)initWithCoder:(id)a3;
- (PKPaymentApplicationStateMessageOverride)initWithDictionary:(id)a3 bundle:(id)a4 privateBundle:(id)a5;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PKPaymentApplicationStateMessageOverride

- (PKPaymentApplicationStateMessageOverride)initWithDictionary:(id)a3 bundle:(id)a4 privateBundle:(id)a5
{
  v34 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v8 PKStringForKey:@"title"];
  v12 = [v8 PKStringForKey:@"description"];
  v13 = v12;
  if (v11)
  {
    v14 = v12 == 0;
  }

  else
  {
    v14 = 1;
  }

  if (v14)
  {
    v15 = PKLogFacilityTypeGetObject(0);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v31 = v11;
      v32 = 2112;
      v33 = v13;
      _os_log_impl(&dword_1AD337000, v15, OS_LOG_TYPE_DEFAULT, "PKPaymentApplicationStateMessageOverride failed to initialize as title (%@) or description (%@) was missing", buf, 0x16u);
    }

    v16 = 0;
  }

  else
  {
    v29.receiver = self;
    v29.super_class = PKPaymentApplicationStateMessageOverride;
    v17 = [(PKPaymentApplicationStateMessageOverride *)&v29 init];
    v18 = v17;
    if (v17)
    {
      v19 = PKLocalizedPassStringForPassBundle(v13, v9, v10);
      body = v18->_body;
      v18->_body = v19;

      v21 = PKLocalizedPassStringForPassBundle(v11, v9, v10);
      title = v18->_title;
      v18->_title = v21;

      v23 = [v8 PKDictionaryForKey:@"action"];
      if (v23)
      {
        v24 = [v9 pathForResource:@"pass" ofType:@"strings"];
        v25 = [MEMORY[0x1E695DF20] dictionaryWithContentsOfFile:v24];
        v26 = [[PKPaymentPassAction alloc] initWithDictionary:v23 localizations:v25];
        action = v18->_action;
        v18->_action = v26;
      }
    }

    self = v18;
    v16 = self;
  }

  return v16;
}

- (PKPaymentApplicationStateMessageOverride)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = PKPaymentApplicationStateMessageOverride;
  v5 = [(PKPaymentApplicationStateMessageOverride *)&v13 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"title"];
    title = v5->_title;
    v5->_title = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"description"];
    body = v5->_body;
    v5->_body = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"action"];
    action = v5->_action;
    v5->_action = v10;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  title = self->_title;
  v5 = a3;
  [v5 encodeObject:title forKey:@"title"];
  [v5 encodeObject:self->_body forKey:@"description"];
  [v5 encodeObject:self->_action forKey:@"action"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_opt_class() allocWithZone:a3];
  v6 = [(NSString *)self->_title copyWithZone:a3];
  v7 = v5[1];
  v5[1] = v6;

  v8 = [(NSString *)self->_body copyWithZone:a3];
  v9 = v5[2];
  v5[2] = v8;

  v10 = [(PKPaymentPassAction *)self->_action copyWithZone:a3];
  v11 = v5[3];
  v5[3] = v10;

  return v5;
}

@end