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
- (void)setBcc:(id)bcc;
- (void)setBccList:(id)list;
- (void)setCc:(id)cc;
- (void)setCcList:(id)list;
- (void)setSender:(id)sender;
- (void)setSenderList:(id)list;
- (void)setTo:(id)to;
- (void)setToList:(id)list;
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

- (void)setSender:(id)sender
{
  senderCopy = sender;
  if (self->_sender != senderCopy)
  {
    v8 = senderCopy;
    v5 = [(ECEmailAddressConvertible *)senderCopy copyWithZone:0];
    sender = self->_sender;
    self->_sender = v5;

    senderList = self->_senderList;
    self->_senderList = 0;

    senderCopy = v8;
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
    stringValue = [(ECEmailAddressConvertible *)self->_sender stringValue];
    v3 = MFAddressListFromDatabaseEncodedString(stringValue);
  }

  return v3;
}

- (void)setSenderList:(id)list
{
  listCopy = list;
  if (self->_senderList != listCopy)
  {
    v8 = listCopy;
    v5 = [(NSArray *)listCopy copy];
    senderList = self->_senderList;
    self->_senderList = v5;

    sender = self->_sender;
    self->_sender = 0;

    listCopy = v8;
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

- (void)setTo:(id)to
{
  toCopy = to;
  if (self->_to != toCopy)
  {
    v8 = toCopy;
    v5 = [(ECEmailAddressConvertible *)toCopy copyWithZone:0];
    to = self->_to;
    self->_to = v5;

    toList = self->_toList;
    self->_toList = 0;

    toCopy = v8;
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
    stringValue = [(ECEmailAddressConvertible *)self->_to stringValue];
    v3 = MFAddressListFromDatabaseEncodedString(stringValue);
  }

  return v3;
}

- (void)setToList:(id)list
{
  listCopy = list;
  if (self->_toList != listCopy)
  {
    v8 = listCopy;
    v5 = [(NSArray *)listCopy copy];
    toList = self->_toList;
    self->_toList = v5;

    to = self->_to;
    self->_to = 0;

    listCopy = v8;
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

- (void)setCc:(id)cc
{
  ccCopy = cc;
  if (self->_cc != ccCopy)
  {
    v8 = ccCopy;
    v5 = [(ECEmailAddressConvertible *)ccCopy copyWithZone:0];
    cc = self->_cc;
    self->_cc = v5;

    ccList = self->_ccList;
    self->_ccList = 0;

    ccCopy = v8;
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
    stringValue = [(ECEmailAddressConvertible *)self->_cc stringValue];
    v3 = MFAddressListFromDatabaseEncodedString(stringValue);
  }

  return v3;
}

- (void)setCcList:(id)list
{
  listCopy = list;
  if (self->_ccList != listCopy)
  {
    v8 = listCopy;
    v5 = [(NSArray *)listCopy copy];
    ccList = self->_ccList;
    self->_ccList = v5;

    cc = self->_cc;
    self->_cc = 0;

    listCopy = v8;
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

- (void)setBcc:(id)bcc
{
  bccCopy = bcc;
  if (self->_bcc != bccCopy)
  {
    v8 = bccCopy;
    v5 = [(ECEmailAddressConvertible *)bccCopy copy];
    bcc = self->_bcc;
    self->_bcc = v5;

    bccList = self->_bccList;
    self->_bccList = 0;

    bccCopy = v8;
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
    stringValue = [(ECEmailAddressConvertible *)self->_bcc stringValue];
    v3 = MFAddressListFromDatabaseEncodedString(stringValue);
  }

  return v3;
}

- (void)setBccList:(id)list
{
  listCopy = list;
  if (self->_bccList != listCopy)
  {
    v8 = listCopy;
    v5 = [(NSArray *)listCopy copy];
    bccList = self->_bccList;
    self->_bccList = v5;

    bcc = self->_bcc;
    self->_bcc = 0;

    listCopy = v8;
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
  senderList = [(MFMessageReferenceContext *)self senderList];
  v5[2](v5, senderList);

  toList = [(MFMessageReferenceContext *)self toList];
  v5[2](v5, toList);

  ccList = [(MFMessageReferenceContext *)self ccList];
  v5[2](v5, ccList);

  bccList = [(MFMessageReferenceContext *)self bccList];
  v5[2](v5, bccList);

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