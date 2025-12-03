@interface CSPerson(Suggestions)
- (SGSimpleNamedEmailAddress)sg_namedEmailAddress;
- (id)sg_emailAddress;
- (id)sg_initWithNamedEmailAddress:()Suggestions;
- (id)sg_initWithSerializedForm:()Suggestions;
- (id)sg_serialized;
@end

@implementation CSPerson(Suggestions)

- (id)sg_initWithSerializedForm:()Suggestions
{
  v16[1] = *MEMORY[0x1E69E9840];
  v4 = SGDelimitedStringsDeserialize(a3);
  if ([v4 count] == 3)
  {
    v5 = [v4 objectAtIndexedSubscript:0];
    v6 = [v5 length];

    if (v6)
    {
      v7 = [v4 objectAtIndexedSubscript:0];
    }

    else
    {
      v7 = 0;
    }

    v9 = [v4 objectAtIndexedSubscript:1];
    v10 = [v9 length];

    if (v10)
    {
      v11 = [v4 objectAtIndexedSubscript:1];
    }

    else
    {
      v11 = 0;
    }

    v12 = [v4 objectAtIndexedSubscript:2];
    if (v11)
    {
      v16[0] = v11;
      v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:1];
    }

    else
    {
      v13 = 0;
    }

    v8 = [self initWithDisplayName:v7 handles:v13 handleIdentifier:v12];
  }

  else
  {
    v8 = 0;
  }

  v14 = *MEMORY[0x1E69E9840];

  return v8;
}

- (id)sg_serialized
{
  displayName = [self displayName];
  v4 = displayName;
  v5 = &stru_1F385B250;
  if (displayName)
  {
    v6 = displayName;
  }

  else
  {
    v6 = &stru_1F385B250;
  }

  handles = [self handles];
  v8 = [handles count];
  if (v8)
  {
    handles2 = [self handles];
    v5 = [handles2 objectAtIndexedSubscript:0];
  }

  handleIdentifier = [self handleIdentifier];
  v16 = SGDelimitedStringsSerialize(v6, v9, v10, v11, v12, v13, v14, v15, v5);

  if (v8)
  {
  }

  return v16;
}

- (id)sg_initWithNamedEmailAddress:()Suggestions
{
  v12[1] = *MEMORY[0x1E69E9840];
  selfCopy = self;
  v5 = a3;
  name = [v5 name];
  emailAddress = [v5 emailAddress];

  v12[0] = emailAddress;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:1];
  v9 = [selfCopy initWithDisplayName:name handles:v8 handleIdentifier:@"emailAddresses"];

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

- (SGSimpleNamedEmailAddress)sg_namedEmailAddress
{
  sg_emailAddress = [self sg_emailAddress];
  if (sg_emailAddress)
  {
    v3 = [SGSimpleNamedEmailAddress alloc];
    displayName = [self displayName];
    v5 = [(SGSimpleNamedEmailAddress *)v3 initWithName:displayName emailAddress:sg_emailAddress];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)sg_emailAddress
{
  handleIdentifier = [self handleIdentifier];
  v3 = [handleIdentifier isEqualToString:@"emailAddresses"];

  if (v3 && ([self handles], v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_msgSend(v4, "count"), v4, v5))
  {
    handles = [self handles];
    v7 = [handles objectAtIndexedSubscript:0];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end