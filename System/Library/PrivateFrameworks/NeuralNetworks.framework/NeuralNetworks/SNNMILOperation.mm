@interface SNNMILOperation
- (SNNMILOperation)initWithOperatorName:(id)name inputs:(id)inputs attributes:(id)attributes outputs:(id)outputs;
- (id)attributeWithName:(id)name;
- (id)inputWithName:(id)name;
@end

@implementation SNNMILOperation

- (SNNMILOperation)initWithOperatorName:(id)name inputs:(id)inputs attributes:(id)attributes outputs:(id)outputs
{
  nameCopy = name;
  inputsCopy = inputs;
  attributesCopy = attributes;
  outputsCopy = outputs;
  v18.receiver = self;
  v18.super_class = SNNMILOperation;
  v15 = [(SNNMILOperation *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_opName, name);
    objc_storeStrong(&v16->_inputs, inputs);
    objc_storeStrong(&v16->_attributes, attributes);
    objc_storeStrong(&v16->_outputs, outputs);
  }

  return v16;
}

- (id)inputWithName:(id)name
{
  v19 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  inputs = [(SNNMILOperation *)self inputs];
  value = [inputs countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (value)
  {
    v7 = *v15;
    while (2)
    {
      for (i = 0; i != value; i = i + 1)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(inputs);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        name = [v9 name];
        v11 = [name isEqualToString:nameCopy];

        if (v11)
        {
          value = [v9 value];
          goto LABEL_11;
        }
      }

      value = [inputs countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (value)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v12 = *MEMORY[0x277D85DE8];

  return value;
}

- (id)attributeWithName:(id)name
{
  v19 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  attributes = [(SNNMILOperation *)self attributes];
  value = [attributes countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (value)
  {
    v7 = *v15;
    while (2)
    {
      for (i = 0; i != value; i = i + 1)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(attributes);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        name = [v9 name];
        v11 = [name isEqualToString:nameCopy];

        if (v11)
        {
          value = [v9 value];
          goto LABEL_11;
        }
      }

      value = [attributes countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (value)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v12 = *MEMORY[0x277D85DE8];

  return value;
}

@end