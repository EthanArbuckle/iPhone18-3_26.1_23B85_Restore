@interface IDSQueryKeyTransparencyContext
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToQueryKeyTransparencyContext:(id)context;
- (IDSQueryKeyTransparencyContext)initWithCoder:(id)coder;
- (IDSQueryKeyTransparencyContext)initWithVerifierResult:(id)result ticket:(id)ticket accountKey:(id)key queryResponseTime:(id)time ktOptIn:(unint64_t)in;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation IDSQueryKeyTransparencyContext

- (IDSQueryKeyTransparencyContext)initWithVerifierResult:(id)result ticket:(id)ticket accountKey:(id)key queryResponseTime:(id)time ktOptIn:(unint64_t)in
{
  resultCopy = result;
  ticketCopy = ticket;
  keyCopy = key;
  timeCopy = time;
  v20.receiver = self;
  v20.super_class = IDSQueryKeyTransparencyContext;
  v17 = [(IDSQueryKeyTransparencyContext *)&v20 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_verifierResult, result);
    objc_storeStrong(&v18->_ticket, ticket);
    objc_storeStrong(&v18->_accountKey, key);
    objc_storeStrong(&v18->_queryResponseTime, time);
    v18->_ktOptIn = in;
  }

  return v18;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  verifierResult = [(IDSQueryKeyTransparencyContext *)self verifierResult];
  ticket = [(IDSQueryKeyTransparencyContext *)self ticket];
  accountKey = [(IDSQueryKeyTransparencyContext *)self accountKey];
  queryResponseTime = [(IDSQueryKeyTransparencyContext *)self queryResponseTime];
  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[IDSQueryKeyTransparencyContext ktOptIn](self, "ktOptIn")}];
  v10 = [v3 stringWithFormat:@"<%@: %p verifierResult: %@, ticket: %@, accountKey: %@, queryResponseTime: %@>, ktOptInStatus: %@", v4, self, verifierResult, ticket, accountKey, queryResponseTime, v9];

  return v10;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(IDSQueryKeyTransparencyContext *)self isEqualToQueryKeyTransparencyContext:equalCopy];

  return v5;
}

- (BOOL)isEqualToQueryKeyTransparencyContext:(id)context
{
  contextCopy = context;
  v7 = contextCopy;
  if (self == contextCopy)
  {
    v10 = 1;
  }

  else
  {
    if (contextCopy)
    {
      ticket = [(IDSQueryKeyTransparencyContext *)self ticket];
      ticket2 = [(IDSQueryKeyTransparencyContext *)v7 ticket];
      if (ticket != ticket2)
      {
        ticket3 = [(IDSQueryKeyTransparencyContext *)self ticket];
        ticket4 = [(IDSQueryKeyTransparencyContext *)v7 ticket];
        if (![ticket3 isEqual:ticket4])
        {
          v10 = 0;
          goto LABEL_25;
        }
      }

      verifierResult = [(IDSQueryKeyTransparencyContext *)self verifierResult];
      verifierResult2 = [(IDSQueryKeyTransparencyContext *)v7 verifierResult];
      if (![verifierResult isEqual:verifierResult2])
      {

        v10 = 0;
        goto LABEL_24;
      }

      accountKey = [(IDSQueryKeyTransparencyContext *)self accountKey];
      accountKey2 = [(IDSQueryKeyTransparencyContext *)v7 accountKey];
      v31 = [accountKey isEqualToData:accountKey2];
      if ((v31 & 1) == 0)
      {
        v29 = ticket4;
        accountKey3 = [(IDSQueryKeyTransparencyContext *)self accountKey];
        accountKey4 = [(IDSQueryKeyTransparencyContext *)v7 accountKey];
        v26 = accountKey3;
        if (![accountKey3 isEqual:?])
        {
          v10 = 0;
          ticket4 = v29;
          goto LABEL_22;
        }

        ticket4 = v29;
      }

      v27 = accountKey2;
      v28 = accountKey;
      v30 = ticket3;
      queryResponseTime = [(IDSQueryKeyTransparencyContext *)self queryResponseTime];
      queryResponseTime2 = [(IDSQueryKeyTransparencyContext *)v7 queryResponseTime];
      v18 = [queryResponseTime isEqualToDate:queryResponseTime2];
      if ((v18 & 1) == 0)
      {
        v22 = queryResponseTime;
        queryResponseTime3 = [(IDSQueryKeyTransparencyContext *)self queryResponseTime];
        queryResponseTime4 = [(IDSQueryKeyTransparencyContext *)v7 queryResponseTime];
        v24 = queryResponseTime3;
        if (![queryResponseTime3 isEqual:?])
        {
          v10 = 0;
          queryResponseTime = v22;
          goto LABEL_20;
        }

        queryResponseTime = v22;
      }

      ktOptIn = [(IDSQueryKeyTransparencyContext *)self ktOptIn];
      v10 = ktOptIn == [(IDSQueryKeyTransparencyContext *)v7 ktOptIn];
      if (v18)
      {
LABEL_21:

        accountKey = v28;
        ticket3 = v30;
        accountKey2 = v27;
        if (v31)
        {
LABEL_23:

LABEL_24:
          if (ticket == ticket2)
          {
LABEL_26:

            goto LABEL_27;
          }

LABEL_25:

          goto LABEL_26;
        }

LABEL_22:

        goto LABEL_23;
      }

LABEL_20:

      goto LABEL_21;
    }

    v10 = 0;
  }

LABEL_27:

  return v10;
}

- (unint64_t)hash
{
  ticket = [(IDSQueryKeyTransparencyContext *)self ticket];
  v4 = [ticket hash];
  verifierResult = [(IDSQueryKeyTransparencyContext *)self verifierResult];
  v6 = [verifierResult hash] ^ v4;
  accountKey = [(IDSQueryKeyTransparencyContext *)self accountKey];
  v8 = [accountKey hash];
  queryResponseTime = [(IDSQueryKeyTransparencyContext *)self queryResponseTime];
  v10 = v6 ^ v8 ^ [queryResponseTime hash];
  ktOptIn = [(IDSQueryKeyTransparencyContext *)self ktOptIn];

  return v10 ^ ktOptIn;
}

- (IDSQueryKeyTransparencyContext)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Ticket"];
  v16 = 0;
  v17 = &v16;
  v18 = 0x2050000000;
  v6 = qword_1EB2BBBE0;
  v19 = qword_1EB2BBBE0;
  if (!qword_1EB2BBBE0)
  {
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = sub_1A7C427AC;
    v15[3] = &unk_1E77E1708;
    v15[4] = &v16;
    sub_1A7C427AC(v15);
    v6 = v17[3];
  }

  v7 = v6;
  _Block_object_dispose(&v16, 8);
  v8 = [coderCopy decodeObjectOfClass:v6 forKey:@"VerifierResult"];
  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AccountKey"];
  v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"QueryResponseTime"];
  v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"OptInStatus"];
  unsignedIntegerValue = [v11 unsignedIntegerValue];

  v13 = [(IDSQueryKeyTransparencyContext *)self initWithVerifierResult:v8 ticket:v5 accountKey:v9 queryResponseTime:v10 ktOptIn:unsignedIntegerValue];
  return v13;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  ticket = [(IDSQueryKeyTransparencyContext *)self ticket];
  [coderCopy encodeObject:ticket forKey:@"Ticket"];

  verifierResult = [(IDSQueryKeyTransparencyContext *)self verifierResult];
  [coderCopy encodeObject:verifierResult forKey:@"VerifierResult"];

  accountKey = [(IDSQueryKeyTransparencyContext *)self accountKey];
  [coderCopy encodeObject:accountKey forKey:@"AccountKey"];

  queryResponseTime = [(IDSQueryKeyTransparencyContext *)self queryResponseTime];
  [coderCopy encodeObject:queryResponseTime forKey:@"QueryResponseTime"];

  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[IDSQueryKeyTransparencyContext ktOptIn](self, "ktOptIn")}];
  [coderCopy encodeObject:v9 forKey:@"OptInStatus"];
}

@end