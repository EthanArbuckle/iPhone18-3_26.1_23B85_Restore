@interface MSEmailModel
- (MSEmailModel)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MSEmailModel

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeInt32:1 forKey:@"MSCodingKeyVersion"];
  [v4 encodeObject:self->_subject forKey:@"MSCodingKeySubject"];
  [v4 encodeObject:self->_sender forKey:@"MSCodingKeySender"];
  [v4 encodeObject:self->_to forKey:@"MSCodingKeyTo"];
  [v4 encodeObject:self->_cc forKey:@"MSCodingKeyCc"];
  [v4 encodeObject:self->_bcc forKey:@"MSCodingKeyBcc"];
  [v4 encodeObject:self->_body forKey:@"MSCodingKeyBody"];
  [v4 encodeObject:self->_reference forKey:@"MSCodingKeyReference"];
  [v4 encodeInt32:LODWORD(self->_type) forKey:@"MSCodingKeyType"];
}

- (MSEmailModel)initWithCoder:(id)a3
{
  v25[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(MSEmailModel *)self init];
  if (v5)
  {
    if ([v4 containsValueForKey:@"MSCodingKeyVersion"] && objc_msgSend(v4, "decodeInt32ForKey:", @"MSCodingKeyVersion") == 1)
    {
      v6 = MEMORY[0x1E695DFD8];
      v25[0] = objc_opt_class();
      v25[1] = objc_opt_class();
      v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:2];
      v8 = [v6 setWithArray:v7];

      v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"MSCodingKeySubject"];
      subject = v5->_subject;
      v5->_subject = v9;

      v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"MSCodingKeyBody"];
      body = v5->_body;
      v5->_body = v11;

      v13 = [v4 decodeObjectOfClasses:v8 forKey:@"MSCodingKeySender"];
      sender = v5->_sender;
      v5->_sender = v13;

      v15 = [v4 decodeObjectOfClasses:v8 forKey:@"MSCodingKeyTo"];
      to = v5->_to;
      v5->_to = v15;

      v17 = [v4 decodeObjectOfClasses:v8 forKey:@"MSCodingKeyCc"];
      cc = v5->_cc;
      v5->_cc = v17;

      v19 = [v4 decodeObjectOfClasses:v8 forKey:@"MSCodingKeyBcc"];
      bcc = v5->_bcc;
      v5->_bcc = v19;

      v21 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"MSCodingKeyReference"];
      reference = v5->_reference;
      v5->_reference = v21;

      v5->_type = [v4 decodeInt32ForKey:@"MSCodingKeyType"];
    }

    else
    {

      v5 = 0;
    }
  }

  v23 = *MEMORY[0x1E69E9840];
  return v5;
}

@end