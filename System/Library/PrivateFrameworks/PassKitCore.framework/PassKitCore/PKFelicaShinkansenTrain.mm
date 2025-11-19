@interface PKFelicaShinkansenTrain
- (PKFelicaShinkansenTrain)initWithCoder:(id)a3;
- (PKFelicaShinkansenTrain)initWithDictionary:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PKFelicaShinkansenTrain

- (PKFelicaShinkansenTrain)initWithDictionary:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v44.receiver = self;
    v44.super_class = PKFelicaShinkansenTrain;
    v5 = [(PKFelicaShinkansenTrain *)&v44 init];
    if (v5)
    {
      v6 = [v4 objectForKeyedSubscript:@"NFTrainName"];
      v7 = v6;
      if (v6)
      {
        v6 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:v6 encoding:8];
      }

      trainName = v5->_trainName;
      v5->_trainName = v6;

      v9 = [v4 objectForKeyedSubscript:@"NFStartStationData"];
      v10 = [v9 copy];
      originStation = v5->_originStation;
      v5->_originStation = v10;

      v12 = [v4 objectForKeyedSubscript:@"NFEndStationData"];
      v13 = [v12 copy];
      destinationStation = v5->_destinationStation;
      v5->_destinationStation = v13;

      v15 = [v4 objectForKeyedSubscript:@"NFDepartureHour"];
      v16 = [v4 objectForKeyedSubscript:@"NFDepartureMinute"];
      v17 = [v4 objectForKeyedSubscript:@"NFArrivalHour"];
      v18 = [v4 objectForKeyedSubscript:@"NFArrivalMinute"];
      v19 = v18;
      if (v15 || v16 || v17 || v18)
      {
        v43 = v7;
        v20 = MEMORY[0x1E696AD98];
        v21 = v16;
        v22 = [v15 integerValue];
        v23 = [v21 integerValue];

        v24 = [v20 numberWithInteger:v23 + 60 * v22];
        departureTime = v5->_departureTime;
        v5->_departureTime = v24;

        v26 = MEMORY[0x1E696AD98];
        v27 = v19;
        v28 = [v17 integerValue];
        v29 = [v27 integerValue];

        v7 = v43;
        v30 = [v26 numberWithInteger:v29 + 60 * v28];
        arrivalTime = v5->_arrivalTime;
        v5->_arrivalTime = v30;
      }

      v32 = [v4 objectForKeyedSubscript:@"NFCarNumber"];
      v33 = [v32 copy];
      carNumber = v5->_carNumber;
      v5->_carNumber = v33;

      v35 = [v4 objectForKeyedSubscript:@"NFSeatNumber"];
      v36 = [v35 copy];
      seatRow = v5->_seatRow;
      v5->_seatRow = v36;

      v38 = [v4 objectForKeyedSubscript:@"NFSeatType"];
      v39 = [v38 copy];
      seatNumber = v5->_seatNumber;
      v5->_seatNumber = v39;
    }

    self = v5;
    v41 = self;
  }

  else
  {
    v41 = 0;
  }

  return v41;
}

- (PKFelicaShinkansenTrain)initWithCoder:(id)a3
{
  v4 = a3;
  v23.receiver = self;
  v23.super_class = PKFelicaShinkansenTrain;
  v5 = [(PKFelicaShinkansenTrain *)&v23 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"originStationCode"];
    originStation = v5->_originStation;
    v5->_originStation = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"destinationStationCode"];
    destinationStation = v5->_destinationStation;
    v5->_destinationStation = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"departureTime"];
    departureTime = v5->_departureTime;
    v5->_departureTime = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"arrivalTime"];
    arrivalTime = v5->_arrivalTime;
    v5->_arrivalTime = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"trainName"];
    trainName = v5->_trainName;
    v5->_trainName = v14;

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"carNumber"];
    carNumber = v5->_carNumber;
    v5->_carNumber = v16;

    v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"seatRow"];
    seatRow = v5->_seatRow;
    v5->_seatRow = v18;

    v20 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"seatNumber"];
    seatNumber = v5->_seatNumber;
    v5->_seatNumber = v20;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  originStation = self->_originStation;
  v5 = a3;
  [v5 encodeObject:originStation forKey:@"originStationCode"];
  [v5 encodeObject:self->_destinationStation forKey:@"destinationStationCode"];
  [v5 encodeObject:self->_departureTime forKey:@"departureTime"];
  [v5 encodeObject:self->_arrivalTime forKey:@"arrivalTime"];
  [v5 encodeObject:self->_trainName forKey:@"trainName"];
  [v5 encodeObject:self->_carNumber forKey:@"carNumber"];
  [v5 encodeObject:self->_seatRow forKey:@"seatRow"];
  [v5 encodeObject:self->_seatNumber forKey:@"seatNumber"];
}

@end