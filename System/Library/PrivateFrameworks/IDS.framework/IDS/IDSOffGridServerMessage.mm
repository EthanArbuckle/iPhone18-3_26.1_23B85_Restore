@interface IDSOffGridServerMessage
- (BOOL)_hasOnlyAllowedClasses:(id)classes;
- (IDSOffGridServerMessage)initWithCoder:(id)coder;
- (IDSOffGridServerMessage)initWithSenderURI:(id)i recipientURI:(id)rI topLevelFields:(id)fields;
- (void)encodeWithCoder:(id)coder;
@end

@implementation IDSOffGridServerMessage

- (IDSOffGridServerMessage)initWithSenderURI:(id)i recipientURI:(id)rI topLevelFields:(id)fields
{
  iCopy = i;
  rICopy = rI;
  fieldsCopy = fields;
  v16.receiver = self;
  v16.super_class = IDSOffGridServerMessage;
  v12 = [(IDSOffGridServerMessage *)&v16 init];
  p_isa = &v12->super.isa;
  if (v12)
  {
    if (![(IDSOffGridServerMessage *)v12 _hasOnlyAllowedClasses:fieldsCopy])
    {
      v14 = 0;
      goto LABEL_6;
    }

    objc_storeStrong(p_isa + 1, i);
    objc_storeStrong(p_isa + 2, rI);
    objc_storeStrong(p_isa + 3, fields);
  }

  v14 = p_isa;
LABEL_6:

  return v14;
}

- (BOOL)_hasOnlyAllowedClasses:(id)classes
{
  classesCopy = classes;
  v4 = 1;
  if (classesCopy)
  {
    v5 = objc_alloc(MEMORY[0x1E695DEC8]);
    v6 = objc_opt_class();
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = objc_opt_class();
    v10 = [v5 initWithObjects:{v6, v7, v8, v9, objc_opt_class(), 0}];
    v16 = 0;
    v17 = &v16;
    v18 = 0x2020000000;
    v19 = 1;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = sub_195A9A424;
    v13[3] = &unk_1E74414F8;
    v11 = v10;
    v14 = v11;
    v15 = &v16;
    [classesCopy enumerateKeysAndObjectsUsingBlock:v13];
    v4 = *(v17 + 24);

    _Block_object_dispose(&v16, 8);
  }

  return v4 & 1;
}

- (IDSOffGridServerMessage)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"senderHandle"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"recipientHandle"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"topLevelFields"];

  v8 = [[IDSOffGridServerMessage alloc] initWithSenderURI:v5 recipientURI:v6 topLevelFields:v7];
  return v8;
}

- (void)encodeWithCoder:(id)coder
{
  senderURI = self->_senderURI;
  coderCopy = coder;
  [coderCopy encodeObject:senderURI forKey:@"senderHandle"];
  [coderCopy encodeObject:self->_recipientURI forKey:@"recipientHandle"];
  [coderCopy encodeObject:self->_topLevelFields forKey:@"topLevelFields"];
}

@end