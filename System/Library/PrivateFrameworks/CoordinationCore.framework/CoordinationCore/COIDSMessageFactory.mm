@interface COIDSMessageFactory
- (COIDSMessageFactory)init;
- (id)decodeDictionary:(id)a3 error:(id *)a4;
- (id)encodeError:(id)a3;
- (id)encodeRequest:(id)a3 withIDSIdentifier:(BOOL)a4;
- (id)encodeResponse:(id)a3;
@end

@implementation COIDSMessageFactory

- (COIDSMessageFactory)init
{
  v6.receiver = self;
  v6.super_class = COIDSMessageFactory;
  v2 = [(COIDSMessageFactory *)&v6 init];
  if (v2)
  {
    v3 = IDSCopyLocalDeviceUniqueID();
    idsIdentifier = v2->_idsIdentifier;
    v2->_idsIdentifier = v3;
  }

  return v2;
}

- (id)encodeRequest:(id)a3 withIDSIdentifier:(BOOL)a4
{
  v4 = a4;
  v13[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [[COIDSMessage alloc] initWithRequest:v6];

  if (v4)
  {
    idsIdentifier = self->_idsIdentifier;
    v12 = @"IDMK";
    v13[0] = idsIdentifier;
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:&v12 count:1];
    [(COIDSMessage *)v7 setMetadata:v9];
  }

  v10 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)encodeResponse:(id)a3
{
  v3 = a3;
  v4 = [[COIDSMessage alloc] initWithResponse:v3];

  return v4;
}

- (id)encodeError:(id)a3
{
  v3 = a3;
  v4 = [[COIDSMessage alloc] initWithError:v3];

  return v4;
}

- (id)decodeDictionary:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [[COIDSMessage alloc] initWithDictionary:v5 error:a4];

  return v6;
}

@end