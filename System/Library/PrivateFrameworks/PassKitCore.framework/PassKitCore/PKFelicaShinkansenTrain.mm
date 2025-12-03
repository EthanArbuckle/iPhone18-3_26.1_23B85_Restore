@interface PKFelicaShinkansenTrain
- (PKFelicaShinkansenTrain)initWithCoder:(id)coder;
- (PKFelicaShinkansenTrain)initWithDictionary:(id)dictionary;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKFelicaShinkansenTrain

- (PKFelicaShinkansenTrain)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  if (dictionaryCopy)
  {
    v44.receiver = self;
    v44.super_class = PKFelicaShinkansenTrain;
    v5 = [(PKFelicaShinkansenTrain *)&v44 init];
    if (v5)
    {
      v6 = [dictionaryCopy objectForKeyedSubscript:@"NFTrainName"];
      v7 = v6;
      if (v6)
      {
        v6 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:v6 encoding:8];
      }

      trainName = v5->_trainName;
      v5->_trainName = v6;

      v9 = [dictionaryCopy objectForKeyedSubscript:@"NFStartStationData"];
      v10 = [v9 copy];
      originStation = v5->_originStation;
      v5->_originStation = v10;

      v12 = [dictionaryCopy objectForKeyedSubscript:@"NFEndStationData"];
      v13 = [v12 copy];
      destinationStation = v5->_destinationStation;
      v5->_destinationStation = v13;

      v15 = [dictionaryCopy objectForKeyedSubscript:@"NFDepartureHour"];
      v16 = [dictionaryCopy objectForKeyedSubscript:@"NFDepartureMinute"];
      v17 = [dictionaryCopy objectForKeyedSubscript:@"NFArrivalHour"];
      v18 = [dictionaryCopy objectForKeyedSubscript:@"NFArrivalMinute"];
      v19 = v18;
      if (v15 || v16 || v17 || v18)
      {
        v43 = v7;
        v20 = MEMORY[0x1E696AD98];
        v21 = v16;
        integerValue = [v15 integerValue];
        integerValue2 = [v21 integerValue];

        v24 = [v20 numberWithInteger:integerValue2 + 60 * integerValue];
        departureTime = v5->_departureTime;
        v5->_departureTime = v24;

        v26 = MEMORY[0x1E696AD98];
        v27 = v19;
        integerValue3 = [v17 integerValue];
        integerValue4 = [v27 integerValue];

        v7 = v43;
        v30 = [v26 numberWithInteger:integerValue4 + 60 * integerValue3];
        arrivalTime = v5->_arrivalTime;
        v5->_arrivalTime = v30;
      }

      v32 = [dictionaryCopy objectForKeyedSubscript:@"NFCarNumber"];
      v33 = [v32 copy];
      carNumber = v5->_carNumber;
      v5->_carNumber = v33;

      v35 = [dictionaryCopy objectForKeyedSubscript:@"NFSeatNumber"];
      v36 = [v35 copy];
      seatRow = v5->_seatRow;
      v5->_seatRow = v36;

      v38 = [dictionaryCopy objectForKeyedSubscript:@"NFSeatType"];
      v39 = [v38 copy];
      seatNumber = v5->_seatNumber;
      v5->_seatNumber = v39;
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

- (PKFelicaShinkansenTrain)initWithCoder:(id)coder
{
  coderCopy = coder;
  v23.receiver = self;
  v23.super_class = PKFelicaShinkansenTrain;
  v5 = [(PKFelicaShinkansenTrain *)&v23 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"originStationCode"];
    originStation = v5->_originStation;
    v5->_originStation = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"destinationStationCode"];
    destinationStation = v5->_destinationStation;
    v5->_destinationStation = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"departureTime"];
    departureTime = v5->_departureTime;
    v5->_departureTime = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"arrivalTime"];
    arrivalTime = v5->_arrivalTime;
    v5->_arrivalTime = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"trainName"];
    trainName = v5->_trainName;
    v5->_trainName = v14;

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"carNumber"];
    carNumber = v5->_carNumber;
    v5->_carNumber = v16;

    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"seatRow"];
    seatRow = v5->_seatRow;
    v5->_seatRow = v18;

    v20 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"seatNumber"];
    seatNumber = v5->_seatNumber;
    v5->_seatNumber = v20;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  originStation = self->_originStation;
  coderCopy = coder;
  [coderCopy encodeObject:originStation forKey:@"originStationCode"];
  [coderCopy encodeObject:self->_destinationStation forKey:@"destinationStationCode"];
  [coderCopy encodeObject:self->_departureTime forKey:@"departureTime"];
  [coderCopy encodeObject:self->_arrivalTime forKey:@"arrivalTime"];
  [coderCopy encodeObject:self->_trainName forKey:@"trainName"];
  [coderCopy encodeObject:self->_carNumber forKey:@"carNumber"];
  [coderCopy encodeObject:self->_seatRow forKey:@"seatRow"];
  [coderCopy encodeObject:self->_seatNumber forKey:@"seatNumber"];
}

@end