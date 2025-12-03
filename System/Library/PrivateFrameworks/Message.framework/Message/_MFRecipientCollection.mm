@interface _MFRecipientCollection
- (_MFRecipientCollection)init;
- (void)addBCCRecipientWithAddress:(id)address displayName:(id)name;
- (void)addCCRecipientWithAddress:(id)address displayName:(id)name;
- (void)addToRecipientWithAddress:(id)address displayName:(id)name;
@end

@implementation _MFRecipientCollection

- (_MFRecipientCollection)init
{
  v10.receiver = self;
  v10.super_class = _MFRecipientCollection;
  v2 = [(_MFRecipientCollection *)&v10 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
    to = v2->_to;
    v2->_to = v3;

    v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
    cc = v2->_cc;
    v2->_cc = v5;

    v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
    bcc = v2->_bcc;
    v2->_bcc = v7;
  }

  return v2;
}

- (void)addToRecipientWithAddress:(id)address displayName:(id)name
{
  addressCopy = address;
  nameCopy = name;
  v7 = [[_MFEmailAddress alloc] initWithAddress:addressCopy displayName:nameCopy];
  [(_MFRecipientCollection *)self addToRecipient:v7];
}

- (void)addCCRecipientWithAddress:(id)address displayName:(id)name
{
  addressCopy = address;
  nameCopy = name;
  v7 = [[_MFEmailAddress alloc] initWithAddress:addressCopy displayName:nameCopy];
  [(_MFRecipientCollection *)self addCCRecipient:v7];
}

- (void)addBCCRecipientWithAddress:(id)address displayName:(id)name
{
  addressCopy = address;
  nameCopy = name;
  v7 = [[_MFEmailAddress alloc] initWithAddress:addressCopy displayName:nameCopy];
  [(_MFRecipientCollection *)self addBCCRecipient:v7];
}

@end