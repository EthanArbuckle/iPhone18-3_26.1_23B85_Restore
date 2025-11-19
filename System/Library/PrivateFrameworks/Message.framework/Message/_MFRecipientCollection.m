@interface _MFRecipientCollection
- (_MFRecipientCollection)init;
- (void)addBCCRecipientWithAddress:(id)a3 displayName:(id)a4;
- (void)addCCRecipientWithAddress:(id)a3 displayName:(id)a4;
- (void)addToRecipientWithAddress:(id)a3 displayName:(id)a4;
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

- (void)addToRecipientWithAddress:(id)a3 displayName:(id)a4
{
  v8 = a3;
  v6 = a4;
  v7 = [[_MFEmailAddress alloc] initWithAddress:v8 displayName:v6];
  [(_MFRecipientCollection *)self addToRecipient:v7];
}

- (void)addCCRecipientWithAddress:(id)a3 displayName:(id)a4
{
  v8 = a3;
  v6 = a4;
  v7 = [[_MFEmailAddress alloc] initWithAddress:v8 displayName:v6];
  [(_MFRecipientCollection *)self addCCRecipient:v7];
}

- (void)addBCCRecipientWithAddress:(id)a3 displayName:(id)a4
{
  v8 = a3;
  v6 = a4;
  v7 = [[_MFEmailAddress alloc] initWithAddress:v8 displayName:v6];
  [(_MFRecipientCollection *)self addBCCRecipient:v7];
}

@end