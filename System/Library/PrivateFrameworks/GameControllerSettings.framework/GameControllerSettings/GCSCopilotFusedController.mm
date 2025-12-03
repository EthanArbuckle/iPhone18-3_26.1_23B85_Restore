@interface GCSCopilotFusedController
+ (id)archivalClasses;
- (GCSCopilotFusedController)initWithCoder:(id)coder;
- (GCSCopilotFusedController)initWithFusedControllerIdentifier:(id)identifier pilotIdentifier:(id)pilotIdentifier copilotIdentifier:(id)copilotIdentifier;
- (GCSCopilotFusedController)initWithJSONObject:(id)object;
- (GCSJSONObject)jsonObject;
- (void)encodeWithCoder:(id)coder;
@end

@implementation GCSCopilotFusedController

- (GCSCopilotFusedController)initWithFusedControllerIdentifier:(id)identifier pilotIdentifier:(id)pilotIdentifier copilotIdentifier:(id)copilotIdentifier
{
  identifierCopy = identifier;
  pilotIdentifierCopy = pilotIdentifier;
  copilotIdentifierCopy = copilotIdentifier;
  v21.receiver = self;
  v21.super_class = GCSCopilotFusedController;
  v11 = [(GCSCopilotFusedController *)&v21 init];
  if (v11)
  {
    v12 = [identifierCopy copy];
    fusedControllerIdentifier = v11->_fusedControllerIdentifier;
    v11->_fusedControllerIdentifier = v12;

    v14 = [pilotIdentifierCopy copy];
    pilotIdentifier = v11->_pilotIdentifier;
    v11->_pilotIdentifier = v14;

    v16 = [copilotIdentifierCopy copy];
    copilotIdentifier = v11->_copilotIdentifier;
    v11->_copilotIdentifier = v16;

    date = [MEMORY[0x277CBEAA8] date];
    modifiedDate = v11->_modifiedDate;
    v11->_modifiedDate = date;
  }

  return v11;
}

+ (id)archivalClasses
{
  v2 = MEMORY[0x277CBEB98];
  v3 = objc_opt_class();
  return [v2 setWithObjects:{v3, objc_opt_class(), 0}];
}

- (GCSCopilotFusedController)initWithCoder:(id)coder
{
  coderCopy = coder;
  v15.receiver = self;
  v15.super_class = GCSCopilotFusedController;
  v5 = [(GCSCopilotFusedController *)&v15 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_fusedControllerIdentifier"];
    fusedControllerIdentifier = v5->_fusedControllerIdentifier;
    v5->_fusedControllerIdentifier = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_pilotIdentifier"];
    pilotIdentifier = v5->_pilotIdentifier;
    v5->_pilotIdentifier = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_copilotIdentifier"];
    copilotIdentifier = v5->_copilotIdentifier;
    v5->_copilotIdentifier = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_modifiedDate"];
    modifiedDate = v5->_modifiedDate;
    v5->_modifiedDate = v12;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  fusedControllerIdentifier = self->_fusedControllerIdentifier;
  coderCopy = coder;
  [coderCopy encodeObject:fusedControllerIdentifier forKey:@"_fusedControllerIdentifier"];
  [coderCopy encodeObject:self->_pilotIdentifier forKey:@"_pilotIdentifier"];
  [coderCopy encodeObject:self->_copilotIdentifier forKey:@"_copilotIdentifier"];
  [coderCopy encodeObject:self->_modifiedDate forKey:@"_modifiedDate"];
}

- (GCSCopilotFusedController)initWithJSONObject:(id)object
{
  objectCopy = object;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = objectCopy;
    v19.receiver = self;
    v19.super_class = GCSCopilotFusedController;
    v6 = [(GCSCopilotFusedController *)&v19 init];
    if (v6)
    {
      v7 = [v5 _gcs_stringForJSONKey:@"fusedControllerIdentifier"];
      fusedControllerIdentifier = v6->_fusedControllerIdentifier;
      v6->_fusedControllerIdentifier = v7;

      v9 = [v5 _gcs_stringForJSONKey:@"pilotIdentifier"];
      pilotIdentifier = v6->_pilotIdentifier;
      v6->_pilotIdentifier = v9;

      v11 = [v5 _gcs_stringForJSONKey:@"copilotIdentifier"];
      copilotIdentifier = v6->_copilotIdentifier;
      v6->_copilotIdentifier = v11;

      v13 = [v5 _gcs_dateForJSONKey:@"modifiedDate"];
      v14 = v13;
      if (v13)
      {
        date = v13;
      }

      else
      {
        date = [MEMORY[0x277CBEAA8] date];
      }

      modifiedDate = v6->_modifiedDate;
      v6->_modifiedDate = date;
    }

    self = v6;

    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (GCSJSONObject)jsonObject
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CBEB38];
  v4 = *&self->_fusedControllerIdentifier;
  v11[0] = @"fusedControllerIdentifier";
  v11[1] = @"pilotIdentifier";
  v12 = v4;
  v11[2] = @"copilotIdentifier";
  copilotIdentifier = self->_copilotIdentifier;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v12 forKeys:v11 count:3];
  v6 = [v3 dictionaryWithDictionary:v5];

  modifiedDate = self->_modifiedDate;
  if (modifiedDate)
  {
    jsonObject = [(NSDate *)modifiedDate jsonObject];
    [v6 setObject:jsonObject forKeyedSubscript:@"modifiedDate"];
  }

  v9 = *MEMORY[0x277D85DE8];

  return v6;
}

@end