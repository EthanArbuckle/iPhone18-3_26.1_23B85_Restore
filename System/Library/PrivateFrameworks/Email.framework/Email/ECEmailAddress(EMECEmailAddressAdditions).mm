@interface ECEmailAddress(EMECEmailAddressAdditions)
+ (id)em_partiallyRedactedPeople:()EMECEmailAddressAdditions;
- (id)em_displayableString;
- (id)em_person;
@end

@implementation ECEmailAddress(EMECEmailAddressAdditions)

- (id)em_displayableString
{
  displayName = [self displayName];
  if (displayName && ([self simpleAddress], v3 = objc_claimAutoreleasedReturnValue(), v4 = objc_msgSend(displayName, "localizedCaseInsensitiveCompare:", v3), v3, !v4))
  {
    v9 = 0;
  }

  else
  {
    ea_personNameComponents = [displayName ea_personNameComponents];
    v6 = ea_personNameComponents;
    if (ea_personNameComponents)
    {
      [ea_personNameComponents setNamePrefix:0];
      [v6 setNameSuffix:0];
      v7 = objc_alloc_init(MEMORY[0x1E696ADF8]);
      [v7 setStyle:3];
      v8 = [v7 stringFromPersonNameComponents:v6];
    }

    else if ([displayName length])
    {
      v8 = displayName;
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
  simpleAddress = [self simpleAddress];
  if (simpleAddress)
  {
    v3 = objc_alloc(MEMORY[0x1E6964E50]);
    displayName = [self displayName];
    simpleAddress2 = [self simpleAddress];
    v10[0] = simpleAddress2;
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];
    v7 = [v3 initWithDisplayName:displayName handles:v6 handleIdentifier:*MEMORY[0x1E695C208]];
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