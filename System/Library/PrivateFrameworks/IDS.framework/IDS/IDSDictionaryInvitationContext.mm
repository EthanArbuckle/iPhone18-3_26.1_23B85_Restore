@interface IDSDictionaryInvitationContext
- (BOOL)isEqual:(id)equal;
- (IDSDictionaryInvitationContext)initWithCoder:(id)coder;
- (IDSDictionaryInvitationContext)initWithDictionary:(id)dictionary schema:(id)schema;
- (IDSDictionaryInvitationContext)initWithPayload:(id)payload;
- (NSString)description;
- (id)payload;
- (void)encodeWithCoder:(id)coder;
@end

@implementation IDSDictionaryInvitationContext

- (IDSDictionaryInvitationContext)initWithDictionary:(id)dictionary schema:(id)schema
{
  dictionaryCopy = dictionary;
  schemaCopy = schema;
  v12.receiver = self;
  v12.super_class = IDSDictionaryInvitationContext;
  v9 = [(IDSDictionaryInvitationContext *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_schemaIdentifier, schema);
    v10->_contextType = 1;
    objc_storeStrong(&v10->_dictionary, dictionary);
  }

  return v10;
}

- (IDSDictionaryInvitationContext)initWithPayload:(id)payload
{
  payloadCopy = payload;
  v12.receiver = self;
  v12.super_class = IDSDictionaryInvitationContext;
  v5 = [(IDSDictionaryInvitationContext *)&v12 init];
  if (v5)
  {
    v6 = [payloadCopy objectForKey:*MEMORY[0x1E69A49B0]];
    schemaIdentifier = v5->_schemaIdentifier;
    v5->_schemaIdentifier = v6;

    v8 = [payloadCopy objectForKey:*MEMORY[0x1E69A49B8]];
    v5->_contextType = [v8 intValue];

    v9 = [payloadCopy objectForKey:*MEMORY[0x1E69A49A0]];
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
  schemaIdentifier = [(IDSDictionaryInvitationContext *)self schemaIdentifier];
  contextType = [(IDSDictionaryInvitationContext *)self contextType];
  payload = [(IDSDictionaryInvitationContext *)self payload];
  v7 = [v3 stringWithFormat:@"<IDSDictionaryInvitationContext %p>: schemaIdentifier %@ contextType %ld payload %@", self, schemaIdentifier, contextType, payload];

  return v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    contextType = [(IDSDictionaryInvitationContext *)self contextType];
    if (contextType == [v5 contextType] && (-[IDSDictionaryInvitationContext schemaIdentifier](self, "schemaIdentifier"), v7 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v5, "schemaIdentifier"), v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v7, "isEqual:", v8), v8, v7, v9))
    {
      dictionary = [(IDSDictionaryInvitationContext *)self dictionary];
      dictionary2 = [v5 dictionary];
      v12 = [dictionary isEqual:dictionary2];
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

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  payload = [(IDSDictionaryInvitationContext *)self payload];
  [coderCopy encodeObject:payload forKey:@"contextPayload"];
}

- (IDSDictionaryInvitationContext)initWithCoder:(id)coder
{
  v3 = MEMORY[0x1E695DFD8];
  coderCopy = coder;
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
  v15 = [coderCopy decodeObjectOfClasses:v14 forKey:@"contextPayload"];

  v16 = [(IDSDictionaryInvitationContext *)self initWithPayload:v15];
  return v16;
}

@end