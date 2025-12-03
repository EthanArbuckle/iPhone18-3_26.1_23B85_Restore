@interface ENParticipantDevice
- (ENParticipantDevice)initWithCoder:(id)coder;
- (ENParticipantDevice)initWithDevicePublicKey:(id)key cypher:(id)cypher identifier:(id)identifier;
- (id)signAndConcealData:(id)data withSender:(id)sender cypherIdentifier:(id *)identifier error:(id *)error;
- (id)verifyAndRevealData:(id)data withReceipient:(id)receipient cypherIdentifier:(id)identifier error:(id *)error;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ENParticipantDevice

- (ENParticipantDevice)initWithDevicePublicKey:(id)key cypher:(id)cypher identifier:(id)identifier
{
  keyCopy = key;
  cypherCopy = cypher;
  identifierCopy = identifier;
  v15.receiver = self;
  v15.super_class = ENParticipantDevice;
  v12 = [(ENParticipantDevice *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_devicePublicKey, key);
    objc_storeStrong(&v13->_cypher, cypher);
    objc_storeStrong(&v13->_identifier, identifier);
  }

  return v13;
}

- (ENParticipantDevice)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kENParticipantDeviceIdentifier"];

  return 0;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  devicePublicKey = [(ENParticipantDevice *)self devicePublicKey];
  [coderCopy encodeObject:devicePublicKey forKey:@"kENParticipantDevicePublicKey"];

  cypher = [(ENParticipantDevice *)self cypher];
  [coderCopy encodeObject:cypher forKey:@"kENParticipantDeviceCypher"];

  identifier = [(ENParticipantDevice *)self identifier];
  [coderCopy encodeObject:identifier forKey:@"kENParticipantDeviceIdentifier"];
}

- (id)signAndConcealData:(id)data withSender:(id)sender cypherIdentifier:(id *)identifier error:(id *)error
{
  senderCopy = sender;
  dataCopy = data;
  cypher = [(ENParticipantDevice *)self cypher];
  v13 = [cypher cypherData:dataCopy withAccountIdentity:senderCopy identifier:identifier error:error];

  return v13;
}

- (id)verifyAndRevealData:(id)data withReceipient:(id)receipient cypherIdentifier:(id)identifier error:(id *)error
{
  identifierCopy = identifier;
  receipientCopy = receipient;
  dataCopy = data;
  cypher = [(ENParticipantDevice *)self cypher];
  devicePublicKey = [(ENParticipantDevice *)self devicePublicKey];
  v15 = [cypher decypherData:dataCopy withAccountIdentity:receipientCopy signingDevicePublicKey:devicePublicKey identifier:identifierCopy error:error];

  return v15;
}

@end