@interface IDSQueryKeyTransparencyContext
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToQueryKeyTransparencyContext:(id)a3;
- (IDSQueryKeyTransparencyContext)initWithCoder:(id)a3;
- (IDSQueryKeyTransparencyContext)initWithVerifierResult:(id)a3 ticket:(id)a4 accountKey:(id)a5 queryResponseTime:(id)a6 ktOptIn:(unint64_t)a7;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation IDSQueryKeyTransparencyContext

- (IDSQueryKeyTransparencyContext)initWithVerifierResult:(id)a3 ticket:(id)a4 accountKey:(id)a5 queryResponseTime:(id)a6 ktOptIn:(unint64_t)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v20.receiver = self;
  v20.super_class = IDSQueryKeyTransparencyContext;
  v17 = [(IDSQueryKeyTransparencyContext *)&v20 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_verifierResult, a3);
    objc_storeStrong(&v18->_ticket, a4);
    objc_storeStrong(&v18->_accountKey, a5);
    objc_storeStrong(&v18->_queryResponseTime, a6);
    v18->_ktOptIn = a7;
  }

  return v18;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(IDSQueryKeyTransparencyContext *)self verifierResult];
  v6 = [(IDSQueryKeyTransparencyContext *)self ticket];
  v7 = [(IDSQueryKeyTransparencyContext *)self accountKey];
  v8 = [(IDSQueryKeyTransparencyContext *)self queryResponseTime];
  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[IDSQueryKeyTransparencyContext ktOptIn](self, "ktOptIn")}];
  v10 = [v3 stringWithFormat:@"<%@: %p verifierResult: %@, ticket: %@, accountKey: %@, queryResponseTime: %@>, ktOptInStatus: %@", v4, self, v5, v6, v7, v8, v9];

  return v10;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(IDSQueryKeyTransparencyContext *)self isEqualToQueryKeyTransparencyContext:v4];

  return v5;
}

- (BOOL)isEqualToQueryKeyTransparencyContext:(id)a3
{
  v6 = a3;
  v7 = v6;
  if (self == v6)
  {
    v10 = 1;
  }

  else
  {
    if (v6)
    {
      v8 = [(IDSQueryKeyTransparencyContext *)self ticket];
      v9 = [(IDSQueryKeyTransparencyContext *)v7 ticket];
      if (v8 != v9)
      {
        v3 = [(IDSQueryKeyTransparencyContext *)self ticket];
        v4 = [(IDSQueryKeyTransparencyContext *)v7 ticket];
        if (![v3 isEqual:v4])
        {
          v10 = 0;
          goto LABEL_25;
        }
      }

      v11 = [(IDSQueryKeyTransparencyContext *)self verifierResult];
      v12 = [(IDSQueryKeyTransparencyContext *)v7 verifierResult];
      if (![v11 isEqual:v12])
      {

        v10 = 0;
        goto LABEL_24;
      }

      v13 = [(IDSQueryKeyTransparencyContext *)self accountKey];
      v14 = [(IDSQueryKeyTransparencyContext *)v7 accountKey];
      v31 = [v13 isEqualToData:v14];
      if ((v31 & 1) == 0)
      {
        v29 = v4;
        v15 = [(IDSQueryKeyTransparencyContext *)self accountKey];
        v25 = [(IDSQueryKeyTransparencyContext *)v7 accountKey];
        v26 = v15;
        if (![v15 isEqual:?])
        {
          v10 = 0;
          v4 = v29;
          goto LABEL_22;
        }

        v4 = v29;
      }

      v27 = v14;
      v28 = v13;
      v30 = v3;
      v16 = [(IDSQueryKeyTransparencyContext *)self queryResponseTime];
      v17 = [(IDSQueryKeyTransparencyContext *)v7 queryResponseTime];
      v18 = [v16 isEqualToDate:v17];
      if ((v18 & 1) == 0)
      {
        v22 = v16;
        v19 = [(IDSQueryKeyTransparencyContext *)self queryResponseTime];
        v23 = [(IDSQueryKeyTransparencyContext *)v7 queryResponseTime];
        v24 = v19;
        if (![v19 isEqual:?])
        {
          v10 = 0;
          v16 = v22;
          goto LABEL_20;
        }

        v16 = v22;
      }

      v20 = [(IDSQueryKeyTransparencyContext *)self ktOptIn];
      v10 = v20 == [(IDSQueryKeyTransparencyContext *)v7 ktOptIn];
      if (v18)
      {
LABEL_21:

        v13 = v28;
        v3 = v30;
        v14 = v27;
        if (v31)
        {
LABEL_23:

LABEL_24:
          if (v8 == v9)
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
  v3 = [(IDSQueryKeyTransparencyContext *)self ticket];
  v4 = [v3 hash];
  v5 = [(IDSQueryKeyTransparencyContext *)self verifierResult];
  v6 = [v5 hash] ^ v4;
  v7 = [(IDSQueryKeyTransparencyContext *)self accountKey];
  v8 = [v7 hash];
  v9 = [(IDSQueryKeyTransparencyContext *)self queryResponseTime];
  v10 = v6 ^ v8 ^ [v9 hash];
  v11 = [(IDSQueryKeyTransparencyContext *)self ktOptIn];

  return v10 ^ v11;
}

- (IDSQueryKeyTransparencyContext)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"Ticket"];
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
  v8 = [v4 decodeObjectOfClass:v6 forKey:@"VerifierResult"];
  v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"AccountKey"];
  v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"QueryResponseTime"];
  v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"OptInStatus"];
  v12 = [v11 unsignedIntegerValue];

  v13 = [(IDSQueryKeyTransparencyContext *)self initWithVerifierResult:v8 ticket:v5 accountKey:v9 queryResponseTime:v10 ktOptIn:v12];
  return v13;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(IDSQueryKeyTransparencyContext *)self ticket];
  [v4 encodeObject:v5 forKey:@"Ticket"];

  v6 = [(IDSQueryKeyTransparencyContext *)self verifierResult];
  [v4 encodeObject:v6 forKey:@"VerifierResult"];

  v7 = [(IDSQueryKeyTransparencyContext *)self accountKey];
  [v4 encodeObject:v7 forKey:@"AccountKey"];

  v8 = [(IDSQueryKeyTransparencyContext *)self queryResponseTime];
  [v4 encodeObject:v8 forKey:@"QueryResponseTime"];

  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[IDSQueryKeyTransparencyContext ktOptIn](self, "ktOptIn")}];
  [v4 encodeObject:v9 forKey:@"OptInStatus"];
}

@end