@interface EARVoiceCommandArgument
- (BOOL)isEqual:(id)a3;
- (EARVoiceCommandArgument)initWithCoder:(id)a3;
- (EARVoiceCommandArgument)initWithPresence:(char)a3 indexes:(id)a4 adpositionIndexes:(id)a5 text:(id)a6;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation EARVoiceCommandArgument

- (EARVoiceCommandArgument)initWithPresence:(char)a3 indexes:(id)a4 adpositionIndexes:(id)a5 text:(id)a6
{
  v8 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v23.receiver = self;
  v23.super_class = EARVoiceCommandArgument;
  v13 = [(EARVoiceCommandArgument *)&v23 init];
  v14 = v13;
  if (!v13)
  {
    goto LABEL_8;
  }

  v13->_presence = v8;
  if (v8 == 3 || v10 || v11 || v12)
  {
    v16 = [v10 copy];
    indexes = v14->_indexes;
    v14->_indexes = v16;

    v18 = [v11 copy];
    adpositionIndexes = v14->_adpositionIndexes;
    v14->_adpositionIndexes = v18;

    v20 = [v12 copy];
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v14 = 1;
  }

  else if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = v5;
    presence = self->_presence;
    if (presence == [(EARVoiceCommandArgument *)v6 presence])
    {
      indexes = self->_indexes;
      v9 = [(EARVoiceCommandArgument *)v6 indexes];
      if ([(NSIndexSet *)indexes isEqualToIndexSet:v9])
      {
        adpositionIndexes = self->_adpositionIndexes;
        v11 = [(EARVoiceCommandArgument *)v6 adpositionIndexes];
        if ([(NSIndexSet *)adpositionIndexes isEqualToIndexSet:v11])
        {
          text = self->_text;
          v13 = [(EARVoiceCommandArgument *)v6 text];
          v14 = [(NSString *)text isEqualToString:v13];
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

- (void)encodeWithCoder:(id)a3
{
  presence = self->_presence;
  v5 = a3;
  [v5 encodeInt:presence forKey:@"presence"];
  [v5 encodeObject:self->_indexes forKey:@"indexes"];
  [v5 encodeObject:self->_adpositionIndexes forKey:@"adpositionIndexes"];
  [v5 encodeObject:self->_text forKey:@"text"];
}

- (EARVoiceCommandArgument)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = EARVoiceCommandArgument;
  v5 = [(EARVoiceCommandArgument *)&v13 init];
  if (v5)
  {
    v5->_presence = [v4 decodeIntForKey:@"presence"];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"indexes"];
    indexes = v5->_indexes;
    v5->_indexes = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"adpositionIndexes"];
    adpositionIndexes = v5->_adpositionIndexes;
    v5->_adpositionIndexes = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"text"];
    text = v5->_text;
    v5->_text = v10;
  }

  return v5;
}

@end