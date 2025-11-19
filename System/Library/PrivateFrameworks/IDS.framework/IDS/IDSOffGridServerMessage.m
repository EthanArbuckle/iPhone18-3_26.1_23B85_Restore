@interface IDSOffGridServerMessage
- (BOOL)_hasOnlyAllowedClasses:(id)a3;
- (IDSOffGridServerMessage)initWithCoder:(id)a3;
- (IDSOffGridServerMessage)initWithSenderURI:(id)a3 recipientURI:(id)a4 topLevelFields:(id)a5;
- (void)encodeWithCoder:(id)a3;
@end

@implementation IDSOffGridServerMessage

- (IDSOffGridServerMessage)initWithSenderURI:(id)a3 recipientURI:(id)a4 topLevelFields:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v16.receiver = self;
  v16.super_class = IDSOffGridServerMessage;
  v12 = [(IDSOffGridServerMessage *)&v16 init];
  p_isa = &v12->super.isa;
  if (v12)
  {
    if (![(IDSOffGridServerMessage *)v12 _hasOnlyAllowedClasses:v11])
    {
      v14 = 0;
      goto LABEL_6;
    }

    objc_storeStrong(p_isa + 1, a3);
    objc_storeStrong(p_isa + 2, a4);
    objc_storeStrong(p_isa + 3, a5);
  }

  v14 = p_isa;
LABEL_6:

  return v14;
}

- (BOOL)_hasOnlyAllowedClasses:(id)a3
{
  v3 = a3;
  v4 = 1;
  if (v3)
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
    [v3 enumerateKeysAndObjectsUsingBlock:v13];
    v4 = *(v17 + 24);

    _Block_object_dispose(&v16, 8);
  }

  return v4 & 1;
}

- (IDSOffGridServerMessage)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"senderHandle"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"recipientHandle"];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"topLevelFields"];

  v8 = [[IDSOffGridServerMessage alloc] initWithSenderURI:v5 recipientURI:v6 topLevelFields:v7];
  return v8;
}

- (void)encodeWithCoder:(id)a3
{
  senderURI = self->_senderURI;
  v5 = a3;
  [v5 encodeObject:senderURI forKey:@"senderHandle"];
  [v5 encodeObject:self->_recipientURI forKey:@"recipientHandle"];
  [v5 encodeObject:self->_topLevelFields forKey:@"topLevelFields"];
}

@end