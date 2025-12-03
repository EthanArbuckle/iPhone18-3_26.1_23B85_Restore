@interface PKFelicaGreenCarTicket
- (PKFelicaGreenCarTicket)initWithCoder:(id)coder;
- (PKFelicaGreenCarTicket)initWithDictionary:(id)dictionary;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKFelicaGreenCarTicket

- (PKFelicaGreenCarTicket)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  if (dictionaryCopy)
  {
    v20.receiver = self;
    v20.super_class = PKFelicaGreenCarTicket;
    v5 = [(PKFelicaGreenCarTicket *)&v20 init];
    if (v5)
    {
      v6 = [dictionaryCopy objectForKeyedSubscript:@"NFStartStationData"];
      v7 = [v6 copy];
      originStation = v5->_originStation;
      v5->_originStation = v7;

      v9 = [dictionaryCopy objectForKeyedSubscript:@"NFEndStationData"];
      v10 = [v9 copy];
      destinationStation = v5->_destinationStation;
      v5->_destinationStation = v10;

      v12 = MEMORY[0x1E696AD98];
      v13 = [dictionaryCopy objectForKeyedSubscript:@"NFPurchaseDate"];
      v14 = [v12 numberWithInteger:IntegerFromFelicaDateFormat(v13)];
      validityStartDate = v5->_validityStartDate;
      v5->_validityStartDate = v14;

      v16 = [dictionaryCopy objectForKeyedSubscript:@"NFRefundMonth"];
      if ([v16 unsignedIntegerValue])
      {
        v5->_refunded = 1;
      }

      else
      {
        v18 = [dictionaryCopy objectForKeyedSubscript:@"NFRefundDay"];
        v5->_refunded = [v18 unsignedIntegerValue] != 0;
      }
    }

    self = v5;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (PKFelicaGreenCarTicket)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = PKFelicaGreenCarTicket;
  v5 = [(PKFelicaGreenCarTicket *)&v13 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"originStation"];
    originStation = v5->_originStation;
    v5->_originStation = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"destinationStation"];
    destinationStation = v5->_destinationStation;
    v5->_destinationStation = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"validityStartDate"];
    validityStartDate = v5->_validityStartDate;
    v5->_validityStartDate = v10;

    v5->_refunded = [coderCopy decodeBoolForKey:@"refunded"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  originStation = self->_originStation;
  coderCopy = coder;
  [coderCopy encodeObject:originStation forKey:@"originStation"];
  [coderCopy encodeObject:self->_destinationStation forKey:@"destinationStation"];
  [coderCopy encodeObject:self->_validityStartDate forKey:@"validityStartDate"];
  [coderCopy encodeBool:self->_refunded forKey:@"refunded"];
}

@end