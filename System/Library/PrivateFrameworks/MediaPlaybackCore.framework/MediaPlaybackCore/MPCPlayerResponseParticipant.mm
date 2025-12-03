@interface MPCPlayerResponseParticipant
- (MPCPlayerResponse)response;
- (MPCPlayerResponseParticipant)initWithIdentifier:(id)identifier identifierType:(int64_t)type participantIdentifier:(id)participantIdentifier displayName:(id)name response:(id)response;
- (NSString)description;
- (id)_stateDumpObject;
@end

@implementation MPCPlayerResponseParticipant

- (MPCPlayerResponse)response
{
  WeakRetained = objc_loadWeakRetained(&self->_response);

  return WeakRetained;
}

- (id)_stateDumpObject
{
  v9[2] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E695DF90];
  identifier = self->_identifier;
  v8[0] = @"identifier";
  v8[1] = @"modelObject";
  modelObject = @"@";
  if (!identifier)
  {
    identifier = @"@";
  }

  if (self->_modelObject)
  {
    modelObject = self->_modelObject;
  }

  v9[0] = identifier;
  v9[1] = modelObject;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:v8 count:2];
  v6 = [v2 dictionaryWithDictionary:v5];

  return v6;
}

- (NSString)description
{
  identifierType = self->_identifierType;
  v3 = @"unknown";
  if (identifierType == 1)
  {
    v3 = @"resolvable";
  }

  if (identifierType)
  {
    v4 = v3;
  }

  else
  {
    v4 = @"basic";
  }

  return [MEMORY[0x1E696AEC0] stringWithFormat:@"<%@: %p %@ id[%@]=%@ displayName=%@>", objc_opt_class(), self, self->_identifier, v4, self->_participantIdentifier, self->_displayName];
}

- (MPCPlayerResponseParticipant)initWithIdentifier:(id)identifier identifierType:(int64_t)type participantIdentifier:(id)participantIdentifier displayName:(id)name response:(id)response
{
  identifierCopy = identifier;
  participantIdentifierCopy = participantIdentifier;
  nameCopy = name;
  responseCopy = response;
  v24.receiver = self;
  v24.super_class = MPCPlayerResponseParticipant;
  v16 = [(MPCPlayerResponseParticipant *)&v24 init];
  if (v16)
  {
    v17 = [identifierCopy copy];
    identifier = v16->_identifier;
    v16->_identifier = v17;

    v16->_identifierType = type;
    v19 = [participantIdentifierCopy copy];
    participantIdentifier = v16->_participantIdentifier;
    v16->_participantIdentifier = v19;

    v21 = [nameCopy copy];
    displayName = v16->_displayName;
    v16->_displayName = v21;

    objc_storeWeak(&v16->_response, responseCopy);
  }

  return v16;
}

@end