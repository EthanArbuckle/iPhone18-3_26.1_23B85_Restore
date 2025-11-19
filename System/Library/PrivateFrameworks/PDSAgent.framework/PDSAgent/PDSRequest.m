@interface PDSRequest
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToRequest:(id)a3;
- (PDSRequest)initWithEntries:(id)a3 requestInfo:(id)a4;
- (id)description;
- (unint64_t)hash;
@end

@implementation PDSRequest

- (PDSRequest)initWithEntries:(id)a3 requestInfo:(id)a4
{
  v8 = a3;
  v9 = a4;
  v10 = v9;
  if (v8)
  {
    if (v9)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [PDSRequest initWithEntries:a2 requestInfo:self];
    if (v10)
    {
      goto LABEL_3;
    }
  }

  [PDSRequest initWithEntries:a2 requestInfo:self];
LABEL_3:
  v14.receiver = self;
  v14.super_class = PDSRequest;
  v11 = [(PDSRequest *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_entries, a3);
    objc_storeStrong(&v12->_requestInfo, a4);
  }

  return v12;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(PDSRequest *)self isEqualToRequest:v4];

  return v5;
}

- (unint64_t)hash
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = [(PDSRequest *)self entries];
  v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = *v11;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v2);
        }

        v5 ^= [*(*(&v10 + 1) + 8 * i) hash];
      }

      v4 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v4);
  }

  else
  {
    v5 = 0;
  }

  v8 = *MEMORY[0x277D85DE8];
  return v5;
}

- (BOOL)isEqualToRequest:(id)a3
{
  if (a3 == self)
  {
    return 1;
  }

  v4 = a3;
  v5 = [(PDSRequest *)self entries];
  v6 = [v4 entries];

  LOBYTE(v4) = [v5 isEqualToSet:v6];
  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = [(PDSRequest *)self entries];
  v6 = [v3 stringWithFormat:@"<%@: %p entries = %@>", v4, self, v5];;

  return v6;
}

- (void)initWithEntries:(uint64_t)a1 requestInfo:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"PDSRequest.m" lineNumber:15 description:{@"Invalid parameter not satisfying: %@", @"entries"}];
}

- (void)initWithEntries:(uint64_t)a1 requestInfo:(uint64_t)a2 .cold.2(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"PDSRequest.m" lineNumber:16 description:{@"Invalid parameter not satisfying: %@", @"requestInfo"}];
}

@end