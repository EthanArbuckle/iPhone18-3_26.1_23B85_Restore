@interface EARVoiceCommandArgument
- (BOOL)isEqual:(id)equal;
- (EARVoiceCommandArgument)initWithCoder:(id)coder;
- (EARVoiceCommandArgument)initWithPresence:(char)presence indexes:(id)indexes adpositionIndexes:(id)adpositionIndexes text:(id)text;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation EARVoiceCommandArgument

- (EARVoiceCommandArgument)initWithPresence:(char)presence indexes:(id)indexes adpositionIndexes:(id)adpositionIndexes text:(id)text
{
  presenceCopy = presence;
  indexesCopy = indexes;
  adpositionIndexesCopy = adpositionIndexes;
  textCopy = text;
  v23.receiver = self;
  v23.super_class = EARVoiceCommandArgument;
  v13 = [(EARVoiceCommandArgument *)&v23 init];
  v14 = v13;
  if (!v13)
  {
    goto LABEL_8;
  }

  v13->_presence = presenceCopy;
  if (presenceCopy == 3 || indexesCopy || adpositionIndexesCopy || textCopy)
  {
    v16 = [indexesCopy copy];
    indexes = v14->_indexes;
    v14->_indexes = v16;

    v18 = [adpositionIndexesCopy copy];
    adpositionIndexes = v14->_adpositionIndexes;
    v14->_adpositionIndexes = v18;

    v20 = [textCopy copy];
    text = v14->_text;
    v14->_text = v20;

LABEL_8:
    v15 = v14;
    goto LABEL_9;
  }

  v15 = 0;
LABEL_9:

  return v15;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v14 = 1;
  }

  else if (equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = v5;
    presence = self->_presence;
    if (presence == [(EARVoiceCommandArgument *)v6 presence])
    {
      indexes = self->_indexes;
      indexes = [(EARVoiceCommandArgument *)v6 indexes];
      if ([(NSIndexSet *)indexes isEqualToIndexSet:indexes])
      {
        adpositionIndexes = self->_adpositionIndexes;
        adpositionIndexes = [(EARVoiceCommandArgument *)v6 adpositionIndexes];
        if ([(NSIndexSet *)adpositionIndexes isEqualToIndexSet:adpositionIndexes])
        {
          text = self->_text;
          text = [(EARVoiceCommandArgument *)v6 text];
          v14 = [(NSString *)text isEqualToString:text];
        }

        else
        {
          v14 = 0;
        }
      }

      else
      {
        v14 = 0;
      }
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (unint64_t)hash
{
  presence = self->_presence;
  v4 = [(NSIndexSet *)self->_indexes hash]+ 1571 * presence;
  v5 = [(NSIndexSet *)self->_adpositionIndexes hash]+ 1571 * v4;
  return [(NSString *)self->_text hash]+ 1571 * v5 + 0x58A39626DD1;
}

- (void)encodeWithCoder:(id)coder
{
  presence = self->_presence;
  coderCopy = coder;
  [coderCopy encodeInt:presence forKey:@"presence"];
  [coderCopy encodeObject:self->_indexes forKey:@"indexes"];
  [coderCopy encodeObject:self->_adpositionIndexes forKey:@"adpositionIndexes"];
  [coderCopy encodeObject:self->_text forKey:@"text"];
}

- (EARVoiceCommandArgument)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = EARVoiceCommandArgument;
  v5 = [(EARVoiceCommandArgument *)&v13 init];
  if (v5)
  {
    v5->_presence = [coderCopy decodeIntForKey:@"presence"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"indexes"];
    indexes = v5->_indexes;
    v5->_indexes = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"adpositionIndexes"];
    adpositionIndexes = v5->_adpositionIndexes;
    v5->_adpositionIndexes = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"text"];
    text = v5->_text;
    v5->_text = v10;
  }

  return v5;
}

@end