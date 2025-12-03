@interface MSEmailModel
- (MSEmailModel)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MSEmailModel

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInt32:1 forKey:@"MSCodingKeyVersion"];
  [coderCopy encodeObject:self->_subject forKey:@"MSCodingKeySubject"];
  [coderCopy encodeObject:self->_sender forKey:@"MSCodingKeySender"];
  [coderCopy encodeObject:self->_to forKey:@"MSCodingKeyTo"];
  [coderCopy encodeObject:self->_cc forKey:@"MSCodingKeyCc"];
  [coderCopy encodeObject:self->_bcc forKey:@"MSCodingKeyBcc"];
  [coderCopy encodeObject:self->_body forKey:@"MSCodingKeyBody"];
  [coderCopy encodeObject:self->_reference forKey:@"MSCodingKeyReference"];
  [coderCopy encodeInt32:LODWORD(self->_type) forKey:@"MSCodingKeyType"];
}

- (MSEmailModel)initWithCoder:(id)coder
{
  v25[2] = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v5 = [(MSEmailModel *)self init];
  if (v5)
  {
    if ([coderCopy containsValueForKey:@"MSCodingKeyVersion"] && objc_msgSend(coderCopy, "decodeInt32ForKey:", @"MSCodingKeyVersion") == 1)
    {
      v6 = MEMORY[0x1E695DFD8];
      v25[0] = objc_opt_class();
      v25[1] = objc_opt_class();
      v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:2];
      v8 = [v6 setWithArray:v7];

      v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"MSCodingKeySubject"];
      subject = v5->_subject;
      v5->_subject = v9;

      v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"MSCodingKeyBody"];
      body = v5->_body;
      v5->_body = v11;

      v13 = [coderCopy decodeObjectOfClasses:v8 forKey:@"MSCodingKeySender"];
      sender = v5->_sender;
      v5->_sender = v13;

      v15 = [coderCopy decodeObjectOfClasses:v8 forKey:@"MSCodingKeyTo"];
      to = v5->_to;
      v5->_to = v15;

      v17 = [coderCopy decodeObjectOfClasses:v8 forKey:@"MSCodingKeyCc"];
      cc = v5->_cc;
      v5->_cc = v17;

      v19 = [coderCopy decodeObjectOfClasses:v8 forKey:@"MSCodingKeyBcc"];
      bcc = v5->_bcc;
      v5->_bcc = v19;

      v21 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"MSCodingKeyReference"];
      reference = v5->_reference;
      v5->_reference = v21;

      v5->_type = [coderCopy decodeInt32ForKey:@"MSCodingKeyType"];
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