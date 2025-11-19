@interface ENParticipantDevice
- (ENParticipantDevice)initWithCoder:(id)a3;
- (ENParticipantDevice)initWithDevicePublicKey:(id)a3 cypher:(id)a4 identifier:(id)a5;
- (id)signAndConcealData:(id)a3 withSender:(id)a4 cypherIdentifier:(id *)a5 error:(id *)a6;
- (id)verifyAndRevealData:(id)a3 withReceipient:(id)a4 cypherIdentifier:(id)a5 error:(id *)a6;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ENParticipantDevice

- (ENParticipantDevice)initWithDevicePublicKey:(id)a3 cypher:(id)a4 identifier:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = ENParticipantDevice;
  v12 = [(ENParticipantDevice *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_devicePublicKey, a3);
    objc_storeStrong(&v13->_cypher, a4);
    objc_storeStrong(&v13->_identifier, a5);
  }

  return v13;
}

- (ENParticipantDevice)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kENParticipantDeviceIdentifier"];

  return 0;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(ENParticipantDevice *)self devicePublicKey];
  [v4 encodeObject:v5 forKey:@"kENParticipantDevicePublicKey"];

  v6 = [(ENParticipantDevice *)self cypher];
  [v4 encodeObject:v6 forKey:@"kENParticipantDeviceCypher"];

  v7 = [(ENParticipantDevice *)self identifier];
  [v4 encodeObject:v7 forKey:@"kENParticipantDeviceIdentifier"];
}

- (id)signAndConcealData:(id)a3 withSender:(id)a4 cypherIdentifier:(id *)a5 error:(id *)a6
{
  v10 = a4;
  v11 = a3;
  v12 = [(ENParticipantDevice *)self cypher];
  v13 = [v12 cypherData:v11 withAccountIdentity:v10 identifier:a5 error:a6];

  return v13;
}

- (id)verifyAndRevealData:(id)a3 withReceipient:(id)a4 cypherIdentifier:(id)a5 error:(id *)a6
{
  v10 = a5;
  v11 = a4;
  v12 = a3;
  v13 = [(ENParticipantDevice *)self cypher];
  v14 = [(ENParticipantDevice *)self devicePublicKey];
  v15 = [v13 decypherData:v12 withAccountIdentity:v11 signingDevicePublicKey:v14 identifier:v10 error:a6];

  return v15;
}

@end