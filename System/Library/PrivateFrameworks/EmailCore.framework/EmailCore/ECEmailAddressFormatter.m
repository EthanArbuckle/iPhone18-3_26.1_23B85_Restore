@interface ECEmailAddressFormatter
- (BOOL)getObjectValue:(id *)a3 forString:(id)a4 errorDescription:(id *)a5;
- (ECEmailAddressFormatter)initWithStyle:(int64_t)a3;
- (id)_groupListString:(id)a3;
- (id)_stringFromEmailAddressList:(id)a3 includeDisplayName:(BOOL)a4;
- (id)_stringFromGroupEmailAddress:(id)a3;
- (id)_stringFromMailboxAddress:(id)a3 includeDisplayName:(BOOL)a4;
- (id)emailAddressFromString:(id)a3;
- (id)stringForObjectValue:(id)a3;
- (id)stringFromEmailAddress:(id)a3;
- (id)stringFromEmailAddressConvertible:(id)a3;
- (id)stringFromEmailAddressList:(id)a3;
@end

@implementation ECEmailAddressFormatter

- (ECEmailAddressFormatter)initWithStyle:(int64_t)a3
{
  v5.receiver = self;
  v5.super_class = ECEmailAddressFormatter;
  result = [(ECEmailAddressFormatter *)&v5 init];
  if (result)
  {
    result->_style = a3;
  }

  return result;
}

- (id)stringForObjectValue:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(ECEmailAddressFormatter *)self stringFromEmailAddress:v4];
LABEL_5:
    v6 = v5;
    goto LABEL_6;
  }

  if ([v4 conformsToProtocol:&unk_284054FB0])
  {
    v5 = [(ECEmailAddressFormatter *)self stringFromEmailAddressConvertible:v4];
    goto LABEL_5;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v4 ef_all:&__block_literal_global_7])
  {
    v5 = [(ECEmailAddressFormatter *)self stringFromEmailAddressList:v4];
    goto LABEL_5;
  }

  v6 = 0;
LABEL_6:

  return v6;
}

- (BOOL)getObjectValue:(id *)a3 forString:(id)a4 errorDescription:(id *)a5
{
  v8 = a4;
  v9 = [(ECEmailAddressFormatter *)self emailAddressFromString:v8];
  v10 = v9;
  if (v9)
  {
    if (a3)
    {
      v11 = v9;
      *a3 = v10;
    }
  }

  else if (a5)
  {
    *a5 = [MEMORY[0x277CCACA8] stringWithFormat:@"failed to parse: %@", v8];
  }

  return v10 != 0;
}

- (id)emailAddressFromString:(id)a3
{
  v3 = [ECEmailAddress emailAddressWithString:a3];

  return v3;
}

- (id)stringFromEmailAddress:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v8 = [MEMORY[0x277CCA890] currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"ECEmailAddressFormatter.m" lineNumber:90 description:{@"Invalid parameter not satisfying: %@", @"emailAddress"}];
  }

  v6 = [(ECEmailAddressFormatter *)self _stringFromEmailAddress:v5 includeDisplayName:[(ECEmailAddressFormatter *)self shouldIncludeDisplayName]];

  return v6;
}

- (id)stringFromEmailAddressConvertible:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v8 = [MEMORY[0x277CCA890] currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"ECEmailAddressFormatter.m" lineNumber:96 description:{@"Invalid parameter not satisfying: %@", @"emailAddressConvertible"}];
  }

  v6 = [(ECEmailAddressFormatter *)self _stringFromEmailAddressConvertible:v5 includeDisplayName:[(ECEmailAddressFormatter *)self shouldIncludeDisplayName]];

  return v6;
}

- (id)stringFromEmailAddressList:(id)a3
{
  v4 = a3;
  v5 = [(ECEmailAddressFormatter *)self _stringFromEmailAddressList:v4 includeDisplayName:[(ECEmailAddressFormatter *)self shouldIncludeDisplayName]];

  return v5;
}

- (id)_stringFromEmailAddressList:(id)a3 includeDisplayName:(BOOL)a4
{
  v6 = a3;
  v7 = [MEMORY[0x277CCAB68] string];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __74__ECEmailAddressFormatter__stringFromEmailAddressList_includeDisplayName___block_invoke;
  v11[3] = &unk_27874B9B8;
  v8 = v7;
  v12 = v8;
  v13 = self;
  v14 = a4;
  [v6 enumerateObjectsUsingBlock:v11];
  v9 = [v8 copy];

  return v9;
}

void __74__ECEmailAddressFormatter__stringFromEmailAddressList_includeDisplayName___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = [*(a1 + 40) _stringFromEmailAddressConvertible:a2 includeDisplayName:*(a1 + 48)];
  v6 = @", ";
  if (!a3)
  {
    v6 = &stru_284041D88;
  }

  v7 = v5;
  [v4 appendFormat:@"%@%@", v6, v5];
}

- (id)_stringFromMailboxAddress:(id)a3 includeDisplayName:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = v6;
  style = self->_style;
  if (style == 1)
  {
    v10 = [v6 idnaAddress];
  }

  else
  {
    if (style == 2)
    {
      v9 = [v6 ef_publicDescription];
      goto LABEL_12;
    }

    v10 = [v6 simpleAddress];
  }

  v11 = v10;
  if (!v4)
  {
    goto LABEL_10;
  }

  v12 = [v7 displayName];
  v13 = [v12 ecemailaddress_trimmedAndQuotedDisplayName];

  if (![v13 length])
  {

LABEL_10:
    v9 = v11;
    goto LABEL_11;
  }

  v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ <%@>", v13, v11];

LABEL_11:
LABEL_12:

  return v9;
}

- (id)_groupListString:(id)a3
{
  v4 = [a3 groupList];
  v5 = [(ECEmailAddressFormatter *)self _stringFromEmailAddressList:v4 includeDisplayName:1];

  return v5;
}

- (id)_stringFromGroupEmailAddress:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_style == 2)
  {
    v6 = [v4 ef_publicDescription];
  }

  else
  {
    v7 = MEMORY[0x277CCACA8];
    v8 = [v4 displayName];
    v9 = [v8 ecemailaddress_trimmedAndQuotedDisplayName];
    v10 = [(ECEmailAddressFormatter *)self _groupListString:v5];
    v6 = [v7 stringWithFormat:@"%@:%@", v9, v10];;
  }

  return v6;
}

@end