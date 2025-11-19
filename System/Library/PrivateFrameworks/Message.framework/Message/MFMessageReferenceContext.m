@interface MFMessageReferenceContext
- (ECEmailAddressConvertible)bcc;
- (ECEmailAddressConvertible)cc;
- (ECEmailAddressConvertible)sender;
- (ECEmailAddressConvertible)to;
- (NSArray)bccList;
- (NSArray)ccList;
- (NSArray)senderList;
- (NSArray)toList;
- (NSSet)participants;
- (void)setBcc:(id)a3;
- (void)setBccList:(id)a3;
- (void)setCc:(id)a3;
- (void)setCcList:(id)a3;
- (void)setSender:(id)a3;
- (void)setSenderList:(id)a3;
- (void)setTo:(id)a3;
- (void)setToList:(id)a3;
@end

@implementation MFMessageReferenceContext

- (ECEmailAddressConvertible)sender
{
  sender = self->_sender;
  if (sender)
  {
    v3 = sender;
  }

  else
  {
    v3 = MFDatabaseEncodedStringForAddressList(self->_senderList);
  }

  return v3;
}

- (void)setSender:(id)a3
{
  v4 = a3;
  if (self->_sender != v4)
  {
    v8 = v4;
    v5 = [(ECEmailAddressConvertible *)v4 copyWithZone:0];
    sender = self->_sender;
    self->_sender = v5;

    senderList = self->_senderList;
    self->_senderList = 0;

    v4 = v8;
  }
}

- (NSArray)senderList
{
  senderList = self->_senderList;
  if (senderList)
  {
    v3 = senderList;
  }

  else
  {
    v4 = [(ECEmailAddressConvertible *)self->_sender stringValue];
    v3 = MFAddressListFromDatabaseEncodedString(v4);
  }

  return v3;
}

- (void)setSenderList:(id)a3
{
  v4 = a3;
  if (self->_senderList != v4)
  {
    v8 = v4;
    v5 = [(NSArray *)v4 copy];
    senderList = self->_senderList;
    self->_senderList = v5;

    sender = self->_sender;
    self->_sender = 0;

    v4 = v8;
  }
}

- (ECEmailAddressConvertible)to
{
  to = self->_to;
  if (to)
  {
    v3 = to;
  }

  else
  {
    v3 = MFDatabaseEncodedStringForAddressList(self->_toList);
  }

  return v3;
}

- (void)setTo:(id)a3
{
  v4 = a3;
  if (self->_to != v4)
  {
    v8 = v4;
    v5 = [(ECEmailAddressConvertible *)v4 copyWithZone:0];
    to = self->_to;
    self->_to = v5;

    toList = self->_toList;
    self->_toList = 0;

    v4 = v8;
  }
}

- (NSArray)toList
{
  toList = self->_toList;
  if (toList)
  {
    v3 = toList;
  }

  else
  {
    v4 = [(ECEmailAddressConvertible *)self->_to stringValue];
    v3 = MFAddressListFromDatabaseEncodedString(v4);
  }

  return v3;
}

- (void)setToList:(id)a3
{
  v4 = a3;
  if (self->_toList != v4)
  {
    v8 = v4;
    v5 = [(NSArray *)v4 copy];
    toList = self->_toList;
    self->_toList = v5;

    to = self->_to;
    self->_to = 0;

    v4 = v8;
  }
}

- (ECEmailAddressConvertible)cc
{
  cc = self->_cc;
  if (cc)
  {
    v3 = cc;
  }

  else
  {
    v3 = MFDatabaseEncodedStringForAddressList(self->_ccList);
  }

  return v3;
}

- (void)setCc:(id)a3
{
  v4 = a3;
  if (self->_cc != v4)
  {
    v8 = v4;
    v5 = [(ECEmailAddressConvertible *)v4 copyWithZone:0];
    cc = self->_cc;
    self->_cc = v5;

    ccList = self->_ccList;
    self->_ccList = 0;

    v4 = v8;
  }
}

- (NSArray)ccList
{
  ccList = self->_ccList;
  if (ccList)
  {
    v3 = ccList;
  }

  else
  {
    v4 = [(ECEmailAddressConvertible *)self->_cc stringValue];
    v3 = MFAddressListFromDatabaseEncodedString(v4);
  }

  return v3;
}

- (void)setCcList:(id)a3
{
  v4 = a3;
  if (self->_ccList != v4)
  {
    v8 = v4;
    v5 = [(NSArray *)v4 copy];
    ccList = self->_ccList;
    self->_ccList = v5;

    cc = self->_cc;
    self->_cc = 0;

    v4 = v8;
  }
}

- (ECEmailAddressConvertible)bcc
{
  bcc = self->_bcc;
  if (bcc)
  {
    v3 = bcc;
  }

  else
  {
    v3 = MFDatabaseEncodedStringForAddressList(self->_bccList);
  }

  return v3;
}

- (void)setBcc:(id)a3
{
  v4 = a3;
  if (self->_bcc != v4)
  {
    v8 = v4;
    v5 = [(ECEmailAddressConvertible *)v4 copy];
    bcc = self->_bcc;
    self->_bcc = v5;

    bccList = self->_bccList;
    self->_bccList = 0;

    v4 = v8;
  }
}

- (NSArray)bccList
{
  bccList = self->_bccList;
  if (bccList)
  {
    v3 = bccList;
  }

  else
  {
    v4 = [(ECEmailAddressConvertible *)self->_bcc stringValue];
    v3 = MFAddressListFromDatabaseEncodedString(v4);
  }

  return v3;
}

- (void)setBccList:(id)a3
{
  v4 = a3;
  if (self->_bccList != v4)
  {
    v8 = v4;
    v5 = [(NSArray *)v4 copy];
    bccList = self->_bccList;
    self->_bccList = v5;

    bcc = self->_bcc;
    self->_bcc = 0;

    v4 = v8;
  }
}

- (NSSet)participants
{
  v3 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __41__MFMessageReferenceContext_participants__block_invoke;
  aBlock[3] = &unk_1E7AA6358;
  v4 = v3;
  v13 = v4;
  v5 = _Block_copy(aBlock);
  v6 = [(MFMessageReferenceContext *)self senderList];
  v5[2](v5, v6);

  v7 = [(MFMessageReferenceContext *)self toList];
  v5[2](v5, v7);

  v8 = [(MFMessageReferenceContext *)self ccList];
  v5[2](v5, v8);

  v9 = [(MFMessageReferenceContext *)self bccList];
  v5[2](v5, v9);

  v10 = v4;
  return v4;
}

void __41__MFMessageReferenceContext_participants__block_invoke(uint64_t a1, void *a2)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __41__MFMessageReferenceContext_participants__block_invoke_2;
  v3[3] = &unk_1E7AA72A8;
  v4 = *(a1 + 32);
  [a2 enumerateObjectsUsingBlock:v3];
}

void __41__MFMessageReferenceContext_participants__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v10 = v3;
  v5 = [v10 emailAddressValue];
  v6 = [v5 simpleAddress];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = [v10 stringValue];
  }

  v9 = v8;

  [v4 addObject:v9];
}

@end