@interface ECEmailAddress(EMECEmailAddressAdditions)
+ (id)em_partiallyRedactedPeople:()EMECEmailAddressAdditions;
- (id)em_displayableString;
- (id)em_person;
@end

@implementation ECEmailAddress(EMECEmailAddressAdditions)

- (id)em_displayableString
{
  v2 = [a1 displayName];
  if (v2 && ([a1 simpleAddress], v3 = objc_claimAutoreleasedReturnValue(), v4 = objc_msgSend(v2, "localizedCaseInsensitiveCompare:", v3), v3, !v4))
  {
    v9 = 0;
  }

  else
  {
    v5 = [v2 ea_personNameComponents];
    v6 = v5;
    if (v5)
    {
      [v5 setNamePrefix:0];
      [v6 setNameSuffix:0];
      v7 = objc_alloc_init(MEMORY[0x1E696ADF8]);
      [v7 setStyle:3];
      v8 = [v7 stringFromPersonNameComponents:v6];
    }

    else if ([v2 length])
    {
      v8 = v2;
    }

    else
    {
      v8 = 0;
    }

    if ([v8 length])
    {
      v10 = v8;
    }

    else
    {
      v10 = 0;
    }

    v9 = v10;
  }

  return v9;
}

- (id)em_person
{
  v10[1] = *MEMORY[0x1E69E9840];
  v2 = [a1 simpleAddress];
  if (v2)
  {
    v3 = objc_alloc(MEMORY[0x1E6964E50]);
    v4 = [a1 displayName];
    v5 = [a1 simpleAddress];
    v10[0] = v5;
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];
    v7 = [v3 initWithDisplayName:v4 handles:v6 handleIdentifier:*MEMORY[0x1E695C208]];
  }

  else
  {
    v7 = 0;
  }

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

+ (id)em_partiallyRedactedPeople:()EMECEmailAddressAdditions
{
  v3 = [a3 ef_compactMap:&__block_literal_global_12];
  v4 = [v3 componentsJoinedByString:{@", "}];

  return v4;
}

@end