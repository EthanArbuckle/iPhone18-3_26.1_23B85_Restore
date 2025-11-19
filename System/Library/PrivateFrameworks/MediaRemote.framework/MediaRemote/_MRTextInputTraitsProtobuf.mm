@interface _MRTextInputTraitsProtobuf
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsAutocapitalizationType:(id)a3;
- (int)StringAsKeyboardType:(id)a3;
- (int)StringAsReturnKeyType:(id)a3;
- (int)autocapitalizationType;
- (int)keyboardType;
- (int)returnKeyType;
- (unint64_t)hash;
- (unint64_t)pINEntrySeparatorIndexesAtIndex:(unint64_t)a3;
- (void)copyTo:(id)a3;
- (void)dealloc;
- (void)mergeFrom:(id)a3;
- (void)setHasAutocapitalizationType:(BOOL)a3;
- (void)setHasAutocorrection:(BOOL)a3;
- (void)setHasEnablesReturnKeyAutomatically:(BOOL)a3;
- (void)setHasKeyboardType:(BOOL)a3;
- (void)setHasReturnKeyType:(BOOL)a3;
- (void)setHasSecureTextEntry:(BOOL)a3;
- (void)setHasSpellchecking:(BOOL)a3;
- (void)setHasValidTextRangeLocation:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation _MRTextInputTraitsProtobuf

- (void)dealloc
{
  PBRepeatedUInt64Clear();
  v3.receiver = self;
  v3.super_class = _MRTextInputTraitsProtobuf;
  [(_MRTextInputTraitsProtobuf *)&v3 dealloc];
}

- (int)autocapitalizationType
{
  if ((*&self->_has & 4) != 0)
  {
    return self->_autocapitalizationType;
  }

  else
  {
    return 0;
  }
}

- (void)setHasAutocapitalizationType:(BOOL)a3
{
  if (a3)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFB | v3;
}

- (int)StringAsAutocapitalizationType:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"None"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"Words"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"Sentences"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"AllCharacters"])
  {
    v4 = 3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (int)keyboardType
{
  if ((*&self->_has & 8) != 0)
  {
    return self->_keyboardType;
  }

  else
  {
    return 0;
  }
}

- (void)setHasKeyboardType:(BOOL)a3
{
  if (a3)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFF7 | v3;
}

- (int)StringAsKeyboardType:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"Default"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"ASCIICapable"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"NumbersAndPunctuation"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"URL"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"NumberPad"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"PhonePad"])
  {
    v4 = 5;
  }

  else if ([v3 isEqualToString:@"NamePhonePad"])
  {
    v4 = 6;
  }

  else if ([v3 isEqualToString:@"EmailAddress"])
  {
    v4 = 7;
  }

  else if ([v3 isEqualToString:@"DecimalPad"])
  {
    v4 = 8;
  }

  else if ([v3 isEqualToString:@"Twitter"])
  {
    v4 = 9;
  }

  else if ([v3 isEqualToString:@"WebSearch"])
  {
    v4 = 10;
  }

  else if ([v3 isEqualToString:@"Alphabet"])
  {
    v4 = 11;
  }

  else if ([v3 isEqualToString:@"PasscodePad"])
  {
    v4 = 12;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (int)returnKeyType
{
  if ((*&self->_has & 0x10) != 0)
  {
    return self->_returnKeyType;
  }

  else
  {
    return 0;
  }
}

- (void)setHasReturnKeyType:(BOOL)a3
{
  if (a3)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFEF | v3;
}

- (int)StringAsReturnKeyType:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"Default"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"Go"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"Google"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"Join"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"Next"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"Route"])
  {
    v4 = 5;
  }

  else if ([v3 isEqualToString:@"Search"])
  {
    v4 = 6;
  }

  else if ([v3 isEqualToString:@"Send"])
  {
    v4 = 7;
  }

  else if ([v3 isEqualToString:@"Yahoo"])
  {
    v4 = 8;
  }

  else if ([v3 isEqualToString:@"Done"])
  {
    v4 = 9;
  }

  else if ([v3 isEqualToString:@"EmergencyCall"])
  {
    v4 = 10;
  }

  else if ([v3 isEqualToString:@"Continue"])
  {
    v4 = 11;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasAutocorrection:(BOOL)a3
{
  if (a3)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFDF | v3;
}

- (void)setHasSpellchecking:(BOOL)a3
{
  if (a3)
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFEFF | v3;
}

- (void)setHasEnablesReturnKeyAutomatically:(BOOL)a3
{
  if (a3)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFBF | v3;
}

- (void)setHasSecureTextEntry:(BOOL)a3
{
  if (a3)
  {
    v3 = 128;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFF7F | v3;
}

- (void)setHasValidTextRangeLocation:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFD | v3;
}

- (unint64_t)pINEntrySeparatorIndexesAtIndex:(unint64_t)a3
{
  p_pINEntrySeparatorIndexes = &self->_pINEntrySeparatorIndexes;
  count = self->_pINEntrySeparatorIndexes.count;
  if (count <= a3)
  {
    v6 = MEMORY[0x1E695DF30];
    v7 = *MEMORY[0x1E695DA20];
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"idx (%lu) is out of range (%lu)", a3, count];
    v9 = [v6 exceptionWithName:v7 reason:v8 userInfo:0];
    [v9 raise];
  }

  return p_pINEntrySeparatorIndexes->list[a3];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = _MRTextInputTraitsProtobuf;
  v4 = [(_MRTextInputTraitsProtobuf *)&v8 description];
  v5 = [(_MRTextInputTraitsProtobuf *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  has = self->_has;
  if ((has & 4) != 0)
  {
    autocapitalizationType = self->_autocapitalizationType;
    if (autocapitalizationType >= 4)
    {
      v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_autocapitalizationType];
    }

    else
    {
      v6 = off_1E769A320[autocapitalizationType];
    }

    [v3 setObject:v6 forKey:@"autocapitalizationType"];

    has = self->_has;
    if ((has & 8) == 0)
    {
LABEL_3:
      if ((has & 0x10) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_13;
    }
  }

  else if ((has & 8) == 0)
  {
    goto LABEL_3;
  }

  keyboardType = self->_keyboardType;
  if (keyboardType >= 0xD)
  {
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_keyboardType];
  }

  else
  {
    v8 = off_1E769A340[keyboardType];
  }

  [v3 setObject:v8 forKey:@"keyboardType"];

  has = self->_has;
  if ((has & 0x10) != 0)
  {
LABEL_13:
    returnKeyType = self->_returnKeyType;
    if (returnKeyType >= 0xC)
    {
      v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_returnKeyType];
    }

    else
    {
      v10 = off_1E769A3A8[returnKeyType];
    }

    [v3 setObject:v10 forKey:@"returnKeyType"];

    has = self->_has;
  }

LABEL_17:
  if ((has & 0x20) != 0)
  {
    v14 = [MEMORY[0x1E696AD98] numberWithBool:self->_autocorrection];
    [v3 setObject:v14 forKey:@"autocorrection"];

    has = self->_has;
    if ((has & 0x100) == 0)
    {
LABEL_19:
      if ((has & 0x40) == 0)
      {
        goto LABEL_20;
      }

      goto LABEL_29;
    }
  }

  else if ((has & 0x100) == 0)
  {
    goto LABEL_19;
  }

  v15 = [MEMORY[0x1E696AD98] numberWithBool:self->_spellchecking];
  [v3 setObject:v15 forKey:@"spellchecking"];

  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_20:
    if ((has & 0x80) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_30;
  }

LABEL_29:
  v16 = [MEMORY[0x1E696AD98] numberWithBool:self->_enablesReturnKeyAutomatically];
  [v3 setObject:v16 forKey:@"enablesReturnKeyAutomatically"];

  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_21:
    if ((has & 2) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_31;
  }

LABEL_30:
  v17 = [MEMORY[0x1E696AD98] numberWithBool:self->_secureTextEntry];
  [v3 setObject:v17 forKey:@"secureTextEntry"];

  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_22:
    if ((has & 1) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_23;
  }

LABEL_31:
  v18 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_validTextRangeLocation];
  [v3 setObject:v18 forKey:@"validTextRangeLocation"];

  if (*&self->_has)
  {
LABEL_23:
    v11 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_validTextRangeLength];
    [v3 setObject:v11 forKey:@"validTextRangeLength"];
  }

LABEL_24:
  v12 = PBRepeatedUInt64NSArray();
  [v3 setObject:v12 forKey:@"PINEntrySeparatorIndexes"];

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  v18 = v4;
  if ((has & 4) != 0)
  {
    autocapitalizationType = self->_autocapitalizationType;
    PBDataWriterWriteInt32Field();
    v4 = v18;
    has = self->_has;
    if ((has & 8) == 0)
    {
LABEL_3:
      if ((has & 0x10) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_19;
    }
  }

  else if ((has & 8) == 0)
  {
    goto LABEL_3;
  }

  keyboardType = self->_keyboardType;
  PBDataWriterWriteInt32Field();
  v4 = v18;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_4:
    if ((has & 0x20) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_20;
  }

LABEL_19:
  returnKeyType = self->_returnKeyType;
  PBDataWriterWriteInt32Field();
  v4 = v18;
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_5:
    if ((has & 0x100) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_21;
  }

LABEL_20:
  autocorrection = self->_autocorrection;
  PBDataWriterWriteBOOLField();
  v4 = v18;
  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_6:
    if ((has & 0x40) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_22;
  }

LABEL_21:
  spellchecking = self->_spellchecking;
  PBDataWriterWriteBOOLField();
  v4 = v18;
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_7:
    if ((has & 0x80) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_23;
  }

LABEL_22:
  enablesReturnKeyAutomatically = self->_enablesReturnKeyAutomatically;
  PBDataWriterWriteBOOLField();
  v4 = v18;
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_8:
    if ((has & 2) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_24;
  }

LABEL_23:
  secureTextEntry = self->_secureTextEntry;
  PBDataWriterWriteBOOLField();
  v4 = v18;
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_9:
    if ((has & 1) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

LABEL_24:
  validTextRangeLocation = self->_validTextRangeLocation;
  PBDataWriterWriteUint64Field();
  v4 = v18;
  if (*&self->_has)
  {
LABEL_10:
    validTextRangeLength = self->_validTextRangeLength;
    PBDataWriterWriteUint64Field();
    v4 = v18;
  }

LABEL_11:
  p_pINEntrySeparatorIndexes = &self->_pINEntrySeparatorIndexes;
  if (p_pINEntrySeparatorIndexes->count)
  {
    v8 = 0;
    do
    {
      v9 = p_pINEntrySeparatorIndexes->list[v8];
      PBDataWriterWriteUint64Field();
      v4 = v18;
      ++v8;
    }

    while (v8 < p_pINEntrySeparatorIndexes->count);
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  if ((has & 4) != 0)
  {
    v4[12] = self->_autocapitalizationType;
    *(v4 + 32) |= 4u;
    has = self->_has;
    if ((has & 8) == 0)
    {
LABEL_3:
      if ((has & 0x10) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_20;
    }
  }

  else if ((has & 8) == 0)
  {
    goto LABEL_3;
  }

  v4[13] = self->_keyboardType;
  *(v4 + 32) |= 8u;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_4:
    if ((has & 0x20) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_21;
  }

LABEL_20:
  v4[14] = self->_returnKeyType;
  *(v4 + 32) |= 0x10u;
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_5:
    if ((has & 0x100) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_22;
  }

LABEL_21:
  *(v4 + 60) = self->_autocorrection;
  *(v4 + 32) |= 0x20u;
  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_6:
    if ((has & 0x40) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_23;
  }

LABEL_22:
  *(v4 + 63) = self->_spellchecking;
  *(v4 + 32) |= 0x100u;
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_7:
    if ((has & 0x80) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_24;
  }

LABEL_23:
  *(v4 + 61) = self->_enablesReturnKeyAutomatically;
  *(v4 + 32) |= 0x40u;
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_8:
    if ((has & 2) == 0)
    {
      goto LABEL_9;
    }

LABEL_25:
    *(v4 + 5) = self->_validTextRangeLocation;
    *(v4 + 32) |= 2u;
    if ((*&self->_has & 1) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

LABEL_24:
  *(v4 + 62) = self->_secureTextEntry;
  *(v4 + 32) |= 0x80u;
  has = self->_has;
  if ((has & 2) != 0)
  {
    goto LABEL_25;
  }

LABEL_9:
  if (has)
  {
LABEL_10:
    *(v4 + 4) = self->_validTextRangeLength;
    *(v4 + 32) |= 1u;
  }

LABEL_11:
  v9 = v4;
  if ([(_MRTextInputTraitsProtobuf *)self pINEntrySeparatorIndexesCount])
  {
    [v9 clearPINEntrySeparatorIndexes];
    v6 = [(_MRTextInputTraitsProtobuf *)self pINEntrySeparatorIndexesCount];
    if (v6)
    {
      v7 = v6;
      for (i = 0; i != v7; ++i)
      {
        [v9 addPINEntrySeparatorIndexes:{-[_MRTextInputTraitsProtobuf pINEntrySeparatorIndexesAtIndex:](self, "pINEntrySeparatorIndexesAtIndex:", i)}];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v5 = v4;
  has = self->_has;
  if ((has & 4) != 0)
  {
    *(v4 + 48) = self->_autocapitalizationType;
    *(v4 + 64) |= 4u;
    has = self->_has;
    if ((has & 8) == 0)
    {
LABEL_3:
      if ((has & 0x10) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_14;
    }
  }

  else if ((has & 8) == 0)
  {
    goto LABEL_3;
  }

  *(v4 + 52) = self->_keyboardType;
  *(v4 + 64) |= 8u;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_4:
    if ((has & 0x20) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_15;
  }

LABEL_14:
  *(v4 + 56) = self->_returnKeyType;
  *(v4 + 64) |= 0x10u;
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_5:
    if ((has & 0x100) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_16;
  }

LABEL_15:
  *(v4 + 60) = self->_autocorrection;
  *(v4 + 64) |= 0x20u;
  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_6:
    if ((has & 0x40) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_17;
  }

LABEL_16:
  *(v4 + 63) = self->_spellchecking;
  *(v4 + 64) |= 0x100u;
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_7:
    if ((has & 0x80) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_18;
  }

LABEL_17:
  *(v4 + 61) = self->_enablesReturnKeyAutomatically;
  *(v4 + 64) |= 0x40u;
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_8:
    if ((has & 2) == 0)
    {
      goto LABEL_9;
    }

LABEL_19:
    *(v4 + 40) = self->_validTextRangeLocation;
    *(v4 + 64) |= 2u;
    if ((*&self->_has & 1) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

LABEL_18:
  *(v4 + 62) = self->_secureTextEntry;
  *(v4 + 64) |= 0x80u;
  has = self->_has;
  if ((has & 2) != 0)
  {
    goto LABEL_19;
  }

LABEL_9:
  if (has)
  {
LABEL_10:
    *(v4 + 32) = self->_validTextRangeLength;
    *(v4 + 64) |= 1u;
  }

LABEL_11:
  PBRepeatedUInt64Copy();
  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_60;
  }

  has = self->_has;
  v6 = *(v4 + 32);
  if ((has & 4) != 0)
  {
    if ((v6 & 4) == 0 || self->_autocapitalizationType != *(v4 + 12))
    {
      goto LABEL_60;
    }
  }

  else if ((v6 & 4) != 0)
  {
    goto LABEL_60;
  }

  if ((has & 8) != 0)
  {
    if ((v6 & 8) == 0 || self->_keyboardType != *(v4 + 13))
    {
      goto LABEL_60;
    }
  }

  else if ((v6 & 8) != 0)
  {
    goto LABEL_60;
  }

  if ((has & 0x10) != 0)
  {
    if ((v6 & 0x10) == 0 || self->_returnKeyType != *(v4 + 14))
    {
      goto LABEL_60;
    }
  }

  else if ((v6 & 0x10) != 0)
  {
    goto LABEL_60;
  }

  if ((has & 0x20) != 0)
  {
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_60;
    }

    v7 = *(v4 + 60);
    if (self->_autocorrection)
    {
      if ((*(v4 + 60) & 1) == 0)
      {
        goto LABEL_60;
      }
    }

    else if (*(v4 + 60))
    {
      goto LABEL_60;
    }
  }

  else if ((v6 & 0x20) != 0)
  {
    goto LABEL_60;
  }

  if ((*&self->_has & 0x100) != 0)
  {
    if ((*(v4 + 32) & 0x100) == 0)
    {
      goto LABEL_60;
    }

    v8 = *(v4 + 63);
    if (self->_spellchecking)
    {
      if ((*(v4 + 63) & 1) == 0)
      {
        goto LABEL_60;
      }
    }

    else if (*(v4 + 63))
    {
      goto LABEL_60;
    }
  }

  else if ((*(v4 + 32) & 0x100) != 0)
  {
    goto LABEL_60;
  }

  if ((has & 0x40) != 0)
  {
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_60;
    }

    v9 = *(v4 + 61);
    if (self->_enablesReturnKeyAutomatically)
    {
      if ((*(v4 + 61) & 1) == 0)
      {
        goto LABEL_60;
      }
    }

    else if (*(v4 + 61))
    {
      goto LABEL_60;
    }
  }

  else if ((v6 & 0x40) != 0)
  {
    goto LABEL_60;
  }

  if ((has & 0x80) == 0)
  {
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_25;
    }

LABEL_60:
    IsEqual = 0;
    goto LABEL_61;
  }

  if ((v6 & 0x80) == 0)
  {
    goto LABEL_60;
  }

  v10 = *(v4 + 62);
  if (self->_secureTextEntry)
  {
    if ((*(v4 + 62) & 1) == 0)
    {
      goto LABEL_60;
    }
  }

  else if (*(v4 + 62))
  {
    goto LABEL_60;
  }

LABEL_25:
  if ((has & 2) != 0)
  {
    if ((v6 & 2) == 0 || self->_validTextRangeLocation != *(v4 + 5))
    {
      goto LABEL_60;
    }
  }

  else if ((v6 & 2) != 0)
  {
    goto LABEL_60;
  }

  if (has)
  {
    if ((v6 & 1) == 0 || self->_validTextRangeLength != *(v4 + 4))
    {
      goto LABEL_60;
    }
  }

  else if (v6)
  {
    goto LABEL_60;
  }

  IsEqual = PBRepeatedUInt64IsEqual();
LABEL_61:

  return IsEqual;
}

- (unint64_t)hash
{
  has = self->_has;
  if ((has & 4) != 0)
  {
    v3 = 2654435761 * self->_autocapitalizationType;
    if ((has & 8) != 0)
    {
LABEL_3:
      v4 = 2654435761 * self->_keyboardType;
      if ((has & 0x10) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_13;
    }
  }

  else
  {
    v3 = 0;
    if ((has & 8) != 0)
    {
      goto LABEL_3;
    }
  }

  v4 = 0;
  if ((has & 0x10) != 0)
  {
LABEL_4:
    v5 = 2654435761 * self->_returnKeyType;
    if ((has & 0x20) != 0)
    {
      goto LABEL_5;
    }

    goto LABEL_14;
  }

LABEL_13:
  v5 = 0;
  if ((has & 0x20) != 0)
  {
LABEL_5:
    v6 = 2654435761 * self->_autocorrection;
    if ((*&self->_has & 0x100) != 0)
    {
      goto LABEL_6;
    }

    goto LABEL_15;
  }

LABEL_14:
  v6 = 0;
  if ((*&self->_has & 0x100) != 0)
  {
LABEL_6:
    v7 = 2654435761 * self->_spellchecking;
    if ((has & 0x40) != 0)
    {
      goto LABEL_7;
    }

    goto LABEL_16;
  }

LABEL_15:
  v7 = 0;
  if ((has & 0x40) != 0)
  {
LABEL_7:
    v8 = 2654435761 * self->_enablesReturnKeyAutomatically;
    if ((has & 0x80) != 0)
    {
      goto LABEL_8;
    }

    goto LABEL_17;
  }

LABEL_16:
  v8 = 0;
  if ((has & 0x80) != 0)
  {
LABEL_8:
    v9 = 2654435761 * self->_secureTextEntry;
    if ((has & 2) != 0)
    {
      goto LABEL_9;
    }

LABEL_18:
    v10 = 0;
    if (has)
    {
      goto LABEL_10;
    }

LABEL_19:
    v11 = 0;
    return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ PBRepeatedUInt64Hash();
  }

LABEL_17:
  v9 = 0;
  if ((has & 2) == 0)
  {
    goto LABEL_18;
  }

LABEL_9:
  v10 = 2654435761u * self->_validTextRangeLocation;
  if ((has & 1) == 0)
  {
    goto LABEL_19;
  }

LABEL_10:
  v11 = 2654435761u * self->_validTextRangeLength;
  return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ PBRepeatedUInt64Hash();
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = *(v4 + 32);
  if ((v5 & 4) != 0)
  {
    self->_autocapitalizationType = *(v4 + 12);
    *&self->_has |= 4u;
    v5 = *(v4 + 32);
    if ((v5 & 8) == 0)
    {
LABEL_3:
      if ((v5 & 0x10) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_19;
    }
  }

  else if ((v5 & 8) == 0)
  {
    goto LABEL_3;
  }

  self->_keyboardType = *(v4 + 13);
  *&self->_has |= 8u;
  v5 = *(v4 + 32);
  if ((v5 & 0x10) == 0)
  {
LABEL_4:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_20;
  }

LABEL_19:
  self->_returnKeyType = *(v4 + 14);
  *&self->_has |= 0x10u;
  v5 = *(v4 + 32);
  if ((v5 & 0x20) == 0)
  {
LABEL_5:
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_21;
  }

LABEL_20:
  self->_autocorrection = *(v4 + 60);
  *&self->_has |= 0x20u;
  v5 = *(v4 + 32);
  if ((v5 & 0x100) == 0)
  {
LABEL_6:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_22;
  }

LABEL_21:
  self->_spellchecking = *(v4 + 63);
  *&self->_has |= 0x100u;
  v5 = *(v4 + 32);
  if ((v5 & 0x40) == 0)
  {
LABEL_7:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_23;
  }

LABEL_22:
  self->_enablesReturnKeyAutomatically = *(v4 + 61);
  *&self->_has |= 0x40u;
  v5 = *(v4 + 32);
  if ((v5 & 0x80) == 0)
  {
LABEL_8:
    if ((v5 & 2) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_24;
  }

LABEL_23:
  self->_secureTextEntry = *(v4 + 62);
  *&self->_has |= 0x80u;
  v5 = *(v4 + 32);
  if ((v5 & 2) == 0)
  {
LABEL_9:
    if ((v5 & 1) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

LABEL_24:
  self->_validTextRangeLocation = *(v4 + 5);
  *&self->_has |= 2u;
  if (*(v4 + 32))
  {
LABEL_10:
    self->_validTextRangeLength = *(v4 + 4);
    *&self->_has |= 1u;
  }

LABEL_11:
  v9 = v4;
  v6 = [v4 pINEntrySeparatorIndexesCount];
  if (v6)
  {
    v7 = v6;
    for (i = 0; i != v7; ++i)
    {
      -[_MRTextInputTraitsProtobuf addPINEntrySeparatorIndexes:](self, "addPINEntrySeparatorIndexes:", [v9 pINEntrySeparatorIndexesAtIndex:i]);
    }
  }
}

@end