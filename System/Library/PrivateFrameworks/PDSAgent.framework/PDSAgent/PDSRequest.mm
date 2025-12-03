@interface PDSRequest
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToRequest:(id)request;
- (PDSRequest)initWithEntries:(id)entries requestInfo:(id)info;
- (id)description;
- (unint64_t)hash;
@end

@implementation PDSRequest

- (PDSRequest)initWithEntries:(id)entries requestInfo:(id)info
{
  entriesCopy = entries;
  infoCopy = info;
  v10 = infoCopy;
  if (entriesCopy)
  {
    if (infoCopy)
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
    objc_storeStrong(&v11->_entries, entries);
    objc_storeStrong(&v12->_requestInfo, info);
  }

  return v12;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(PDSRequest *)self isEqualToRequest:equalCopy];

  return v5;
}

- (unint64_t)hash
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  entries = [(PDSRequest *)self entries];
  v3 = [entries countByEnumeratingWithState:&v10 objects:v14 count:16];
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
          objc_enumerationMutation(entries);
        }

        v5 ^= [*(*(&v10 + 1) + 8 * i) hash];
      }

      v4 = [entries countByEnumeratingWithState:&v10 objects:v14 count:16];
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

- (BOOL)isEqualToRequest:(id)request
{
  if (request == self)
  {
    return 1;
  }

  requestCopy = request;
  entries = [(PDSRequest *)self entries];
  entries2 = [requestCopy entries];

  LOBYTE(requestCopy) = [entries isEqualToSet:entries2];
  return requestCopy;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  entries = [(PDSRequest *)self entries];
  v6 = [v3 stringWithFormat:@"<%@: %p entries = %@>", v4, self, entries];;

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