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

    v8 = [a1 initWithDisplayName:v7 handles:v13 handleIdentifier:v12];
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
  v3 = [a1 displayName];
  v4 = v3;
  v5 = &stru_1F385B250;
  if (v3)
  {
    v6 = v3;
  }

  else
  {
    v6 = &stru_1F385B250;
  }

  v7 = [a1 handles];
  v8 = [v7 count];
  if (v8)
  {
    v1 = [a1 handles];
    v5 = [v1 objectAtIndexedSubscript:0];
  }

  v18 = [a1 handleIdentifier];
  v16 = SGDelimitedStringsSerialize(v6, v9, v10, v11, v12, v13, v14, v15, v5);

  if (v8)
  {
  }

  return v16;
}

- (id)sg_initWithNamedEmailAddress:()Suggestions
{
  v12[1] = *MEMORY[0x1E69E9840];
  v4 = a1;
  v5 = a3;
  v6 = [v5 name];
  v7 = [v5 emailAddress];

  v12[0] = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:1];
  v9 = [v4 initWithDisplayName:v6 handles:v8 handleIdentifier:@"emailAddresses"];

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

- (SGSimpleNamedEmailAddress)sg_namedEmailAddress
{
  v2 = [a1 sg_emailAddress];
  if (v2)
  {
    v3 = [SGSimpleNamedEmailAddress alloc];
    v4 = [a1 displayName];
    v5 = [(SGSimpleNamedEmailAddress *)v3 initWithName:v4 emailAddress:v2];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)sg_emailAddress
{
  v2 = [a1 handleIdentifier];
  v3 = [v2 isEqualToString:@"emailAddresses"];

  if (v3 && ([a1 handles], v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_msgSend(v4, "count"), v4, v5))
  {
    v6 = [a1 handles];
    v7 = [v6 objectAtIndexedSubscript:0];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end