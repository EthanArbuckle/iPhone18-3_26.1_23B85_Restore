@interface IQFMapsPersonalizationResult
- (IQFMapsPersonalizationResult)initWithCoder:(id)a3;
- (IQFMapsPersonalizationResult)initWithMUID:(id)a3 resultType:(unint64_t)a4 eventName:(id)a5 startEventDate:(id)a6 endEventDate:(id)a7 terminal:(id)a8 flightCode:(id)a9 ticketNumber:(id)a10 numberOfVisits:(id)a11 numberOfVisitsGivenLocation:(id)a12 dateOfLastVisit:(id)a13 entityRelevanceScore:(id)a14 numberOfGuests:(id)a15;
- (void)encodeWithCoder:(id)a3;
- (void)setScore:(double)a3;
@end

@implementation IQFMapsPersonalizationResult

- (IQFMapsPersonalizationResult)initWithMUID:(id)a3 resultType:(unint64_t)a4 eventName:(id)a5 startEventDate:(id)a6 endEventDate:(id)a7 terminal:(id)a8 flightCode:(id)a9 ticketNumber:(id)a10 numberOfVisits:(id)a11 numberOfVisitsGivenLocation:(id)a12 dateOfLastVisit:(id)a13 entityRelevanceScore:(id)a14 numberOfGuests:(id)a15
{
  v37 = a3;
  v29 = a5;
  v36 = a5;
  v35 = a6;
  v34 = a7;
  v33 = a8;
  v32 = a9;
  v31 = a10;
  v19 = a11;
  v20 = a12;
  v21 = a13;
  v22 = a14;
  v23 = a15;
  v38.receiver = self;
  v38.super_class = IQFMapsPersonalizationResult;
  v24 = [(IQFMapsPersonalizationResult *)&v38 init];
  v25 = v24;
  if (v24)
  {
    objc_storeStrong(&v24->_muid, a3);
    v25->_resultType = a4;
    objc_storeStrong(&v25->_eventName, v29);
    objc_storeStrong(&v25->_startEventDate, a6);
    objc_storeStrong(&v25->_endEventDate, a7);
    objc_storeStrong(&v25->_terminal, a8);
    objc_storeStrong(&v25->_flightCode, a9);
    objc_storeStrong(&v25->_ticketNumber, a10);
    objc_storeStrong(&v25->_numberOfVisits, a11);
    objc_storeStrong(&v25->_numberOfVisitsGivenLocation, a12);
    objc_storeStrong(&v25->_dateOfLastVisit, a13);
    objc_storeStrong(&v25->_entityRelevanceScore, a14);
    objc_storeStrong(&v25->_numberOfGuests, a15);
  }

  return v25;
}

- (IQFMapsPersonalizationResult)initWithCoder:(id)a3
{
  v4 = a3;
  v31.receiver = self;
  v31.super_class = IQFMapsPersonalizationResult;
  v5 = [(IQFMapsPersonalizationResult *)&v31 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_muid"];
    muid = v5->_muid;
    v5->_muid = v6;

    v5->_resultType = [v4 decodeIntegerForKey:@"_resultType"];
    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_eventName"];
    eventName = v5->_eventName;
    v5->_eventName = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_startEventDate"];
    startEventDate = v5->_startEventDate;
    v5->_startEventDate = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_endEventDate"];
    endEventDate = v5->_endEventDate;
    v5->_endEventDate = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_terminal"];
    terminal = v5->_terminal;
    v5->_terminal = v14;

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_flightCode"];
    flightCode = v5->_flightCode;
    v5->_flightCode = v16;

    v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_ticketNumber"];
    ticketNumber = v5->_ticketNumber;
    v5->_ticketNumber = v18;

    v20 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_numberOfVisits"];
    numberOfVisits = v5->_numberOfVisits;
    v5->_numberOfVisits = v20;

    v22 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_numberOfVisitsGivenLocation"];
    numberOfVisitsGivenLocation = v5->_numberOfVisitsGivenLocation;
    v5->_numberOfVisitsGivenLocation = v22;

    v24 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_dateOfLastVisit"];
    dateOfLastVisit = v5->_dateOfLastVisit;
    v5->_dateOfLastVisit = v24;

    v26 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_entityRelevanceScore"];
    entityRelevanceScore = v5->_entityRelevanceScore;
    v5->_entityRelevanceScore = v26;

    v28 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_numberOfGuests"];
    numberOfGuests = v5->_numberOfGuests;
    v5->_numberOfGuests = v28;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  muid = self->_muid;
  v18 = v4;
  if (muid)
  {
    [v4 encodeObject:muid forKey:@"_muid"];
    v4 = v18;
  }

  [v4 encodeInteger:self->_resultType forKey:@"_resultType"];
  eventName = self->_eventName;
  if (eventName)
  {
    [v18 encodeObject:eventName forKey:@"_eventName"];
  }

  startEventDate = self->_startEventDate;
  if (startEventDate)
  {
    [v18 encodeObject:startEventDate forKey:@"_startEventDate"];
  }

  endEventDate = self->_endEventDate;
  v9 = v18;
  if (endEventDate)
  {
    [v18 encodeObject:endEventDate forKey:@"_endEventDate"];
    v9 = v18;
  }

  terminal = self->_terminal;
  if (terminal)
  {
    [v18 encodeObject:terminal forKey:@"_terminal"];
    v9 = v18;
  }

  flightCode = self->_flightCode;
  if (flightCode)
  {
    [v18 encodeObject:flightCode forKey:@"_flightCode"];
    v9 = v18;
  }

  ticketNumber = self->_ticketNumber;
  if (ticketNumber)
  {
    [v18 encodeObject:ticketNumber forKey:@"_ticketNumber"];
    v9 = v18;
  }

  numberOfVisits = self->_numberOfVisits;
  if (numberOfVisits)
  {
    [v18 encodeObject:numberOfVisits forKey:@"_numberOfVisits"];
    v9 = v18;
  }

  numberOfVisitsGivenLocation = self->_numberOfVisitsGivenLocation;
  if (numberOfVisitsGivenLocation)
  {
    [v18 encodeObject:numberOfVisitsGivenLocation forKey:@"_numberOfVisitsGivenLocation"];
    v9 = v18;
  }

  dateOfLastVisit = self->_dateOfLastVisit;
  if (dateOfLastVisit)
  {
    [v18 encodeObject:dateOfLastVisit forKey:@"_dateOfLastVisit"];
    v9 = v18;
  }

  entityRelevanceScore = self->_entityRelevanceScore;
  if (entityRelevanceScore)
  {
    [v18 encodeObject:entityRelevanceScore forKey:@"_entityRelevanceScore"];
    v9 = v18;
  }

  numberOfGuests = self->_numberOfGuests;
  if (numberOfGuests)
  {
    [v18 encodeObject:numberOfGuests forKey:@"_numberOfGuests"];
    v9 = v18;
  }
}

- (void)setScore:(double)a3
{
  v4 = [MEMORY[0x277CCABB0] numberWithDouble:a3];
  score = self->_score;
  self->_score = v4;

  MEMORY[0x2821F96F8]();
}

@end