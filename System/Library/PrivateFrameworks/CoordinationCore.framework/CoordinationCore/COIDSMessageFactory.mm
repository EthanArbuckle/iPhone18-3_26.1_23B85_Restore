@interface COIDSMessageFactory
- (COIDSMessageFactory)init;
- (id)decodeDictionary:(id)dictionary error:(id *)error;
- (id)encodeError:(id)error;
- (id)encodeRequest:(id)request withIDSIdentifier:(BOOL)identifier;
- (id)encodeResponse:(id)response;
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

- (id)encodeRequest:(id)request withIDSIdentifier:(BOOL)identifier
{
  identifierCopy = identifier;
  v13[1] = *MEMORY[0x277D85DE8];
  requestCopy = request;
  v7 = [[COIDSMessage alloc] initWithRequest:requestCopy];

  if (identifierCopy)
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

- (id)encodeResponse:(id)response
{
  responseCopy = response;
  v4 = [[COIDSMessage alloc] initWithResponse:responseCopy];

  return v4;
}

- (id)encodeError:(id)error
{
  errorCopy = error;
  v4 = [[COIDSMessage alloc] initWithError:errorCopy];

  return v4;
}

- (id)decodeDictionary:(id)dictionary error:(id *)error
{
  dictionaryCopy = dictionary;
  v6 = [[COIDSMessage alloc] initWithDictionary:dictionaryCopy error:error];

  return v6;
}

@end