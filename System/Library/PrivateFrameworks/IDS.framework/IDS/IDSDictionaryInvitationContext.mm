@interface IDSDictionaryInvitationContext
- (BOOL)isEqual:(id)a3;
- (IDSDictionaryInvitationContext)initWithCoder:(id)a3;
- (IDSDictionaryInvitationContext)initWithDictionary:(id)a3 schema:(id)a4;
- (IDSDictionaryInvitationContext)initWithPayload:(id)a3;
- (NSString)description;
- (id)payload;
- (void)encodeWithCoder:(id)a3;
@end

@implementation IDSDictionaryInvitationContext

- (IDSDictionaryInvitationContext)initWithDictionary:(id)a3 schema:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = IDSDictionaryInvitationContext;
  v9 = [(IDSDictionaryInvitationContext *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_schemaIdentifier, a4);
    v10->_contextType = 1;
    objc_storeStrong(&v10->_dictionary, a3);
  }

  return v10;
}

- (IDSDictionaryInvitationContext)initWithPayload:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = IDSDictionaryInvitationContext;
  v5 = [(IDSDictionaryInvitationContext *)&v12 init];
  if (v5)
  {
    v6 = [v4 objectForKey:*MEMORY[0x1E69A49B0]];
    schemaIdentifier = v5->_schemaIdentifier;
    v5->_schemaIdentifier = v6;

    v8 = [v4 objectForKey:*MEMORY[0x1E69A49B8]];
    v5->_contextType = [v8 intValue];

    v9 = [v4 objectForKey:*MEMORY[0x1E69A49A0]];
    dictionary = v5->_dictionary;
    v5->_dictionary = v9;
  }

  return v5;
}

- (id)payload
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  [v3 setObject:self->_schemaIdentifier forKey:*MEMORY[0x1E69A49B0]];
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:self->_contextType];
  [v3 setObject:v4 forKey:*MEMORY[0x1E69A49B8]];

  [v3 setObject:self->_dictionary forKey:*MEMORY[0x1E69A49A0]];
  v5 = [v3 copy];

  return v5;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(IDSDictionaryInvitationContext *)self schemaIdentifier];
  v5 = [(IDSDictionaryInvitationContext *)self contextType];
  v6 = [(IDSDictionaryInvitationContext *)self payload];
  v7 = [v3 stringWithFormat:@"<IDSDictionaryInvitationContext %p>: schemaIdentifier %@ contextType %ld payload %@", self, v4, v5, v6];

  return v7;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(IDSDictionaryInvitationContext *)self contextType];
    if (v6 == [v5 contextType] && (-[IDSDictionaryInvitationContext schemaIdentifier](self, "schemaIdentifier"), v7 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v5, "schemaIdentifier"), v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v7, "isEqual:", v8), v8, v7, v9))
    {
      v10 = [(IDSDictionaryInvitationContext *)self dictionary];
      v11 = [v5 dictionary];
      v12 = [v10 isEqual:v11];
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(IDSDictionaryInvitationContext *)self payload];
  [v4 encodeObject:v5 forKey:@"contextPayload"];
}

- (IDSDictionaryInvitationContext)initWithCoder:(id)a3
{
  v3 = MEMORY[0x1E695DFD8];
  v4 = a3;
  v22 = [v3 alloc];
  v21 = objc_opt_class();
  v20 = objc_opt_class();
  v19 = objc_opt_class();
  v18 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  v11 = objc_opt_class();
  v12 = objc_opt_class();
  v13 = objc_opt_class();
  v14 = [v22 initWithObjects:{v21, v20, v19, v18, v5, v6, v7, v8, v9, v10, v11, v12, v13, objc_opt_class(), 0}];
  v15 = [v4 decodeObjectOfClasses:v14 forKey:@"contextPayload"];

  v16 = [(IDSDictionaryInvitationContext *)self initWithPayload:v15];
  return v16;
}

@end