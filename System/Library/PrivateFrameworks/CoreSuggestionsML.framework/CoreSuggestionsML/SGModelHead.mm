@interface SGModelHead
- (SGModelHead)initWithDictionary:(id)dictionary key:(id)key;
@end

@implementation SGModelHead

- (SGModelHead)initWithDictionary:(id)dictionary key:(id)key
{
  dictionaryCopy = dictionary;
  keyCopy = key;
  v8 = dictionaryCopy;
  v9 = v8;
  if (!v8)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      v23 = MEMORY[0x277D86220];
      v24 = "dictionary";
      goto LABEL_25;
    }

    goto LABEL_9;
  }

  v25.receiver = self;
  v25.super_class = SGModelHead;
  v10 = [(SGModelHead *)&v25 init];
  self = v10;
  if (!v10)
  {
LABEL_16:
    self = self;
    selfCopy = self;
    goto LABEL_17;
  }

  objc_storeStrong(&v10->_name, key);
  v11 = [v9 objectForKeyedSubscript:@"LABELS"];
  labels = self->_labels;
  self->_labels = v11;

  if (!self->_labels)
  {
    v19 = 0;
    goto LABEL_12;
  }

  v13 = [v9 objectForKeyedSubscript:@"NUMBER_OF_DIMENSIONS"];

  if (!v13)
  {
    v19 = self->_labels;
LABEL_12:
    v17 = [(NSArray *)v19 count];
    if (v17)
    {
      goto LABEL_13;
    }

    v20 = [v9 numberAssertedForKey:@"NUMBER_OF_DIMENSIONS"];
    if (v20)
    {
      v21 = v20;
      self->_numberOfDimensions = [v20 unsignedIntegerValue];

      goto LABEL_16;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      v23 = MEMORY[0x277D86220];
      v24 = "[dictionary numberAssertedForKey:@NUMBER_OF_DIMENSIONS]";
      goto LABEL_25;
    }

    goto LABEL_9;
  }

  v14 = [v9 numberAssertedForKey:@"NUMBER_OF_DIMENSIONS"];
  if (v14)
  {
    v15 = v14;
    unsignedIntegerValue = [v14 unsignedIntegerValue];

    if ([(NSArray *)self->_labels count]== unsignedIntegerValue)
    {
      v17 = [(NSArray *)self->_labels count];
LABEL_13:
      self->_numberOfDimensions = v17;
      goto LABEL_16;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      v23 = MEMORY[0x277D86220];
      v24 = "_labels.count == numberOfDimensions";
      goto LABEL_25;
    }
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    *buf = 0;
    v23 = MEMORY[0x277D86220];
    v24 = "[dictionary numberAssertedForKey:@NUMBER_OF_DIMENSIONS]";
LABEL_25:
    _os_log_fault_impl(&dword_24799E000, v23, OS_LOG_TYPE_FAULT, v24, buf, 2u);
  }

LABEL_9:
  selfCopy = 0;
LABEL_17:

  return selfCopy;
}

@end