@interface IQFMapsPersonalizationResult
- (IQFMapsPersonalizationResult)initWithCoder:(id)coder;
- (IQFMapsPersonalizationResult)initWithMUID:(id)d resultType:(unint64_t)type eventName:(id)name startEventDate:(id)date endEventDate:(id)eventDate terminal:(id)terminal flightCode:(id)code ticketNumber:(id)self0 numberOfVisits:(id)self1 numberOfVisitsGivenLocation:(id)self2 dateOfLastVisit:(id)self3 entityRelevanceScore:(id)self4 numberOfGuests:(id)self5;
- (void)encodeWithCoder:(id)coder;
- (void)setScore:(double)score;
@end

@implementation IQFMapsPersonalizationResult

- (IQFMapsPersonalizationResult)initWithMUID:(id)d resultType:(unint64_t)type eventName:(id)name startEventDate:(id)date endEventDate:(id)eventDate terminal:(id)terminal flightCode:(id)code ticketNumber:(id)self0 numberOfVisits:(id)self1 numberOfVisitsGivenLocation:(id)self2 dateOfLastVisit:(id)self3 entityRelevanceScore:(id)self4 numberOfGuests:(id)self5
{
  dCopy = d;
  nameCopy = name;
  nameCopy2 = name;
  dateCopy = date;
  eventDateCopy = eventDate;
  terminalCopy = terminal;
  codeCopy = code;
  numberCopy = number;
  visitsCopy = visits;
  locationCopy = location;
  visitCopy = visit;
  scoreCopy = score;
  guestsCopy = guests;
  v38.receiver = self;
  v38.super_class = IQFMapsPersonalizationResult;
  v24 = [(IQFMapsPersonalizationResult *)&v38 init];
  v25 = v24;
  if (v24)
  {
    objc_storeStrong(&v24->_muid, d);
    v25->_resultType = type;
    objc_storeStrong(&v25->_eventName, nameCopy);
    objc_storeStrong(&v25->_startEventDate, date);
    objc_storeStrong(&v25->_endEventDate, eventDate);
    objc_storeStrong(&v25->_terminal, terminal);
    objc_storeStrong(&v25->_flightCode, code);
    objc_storeStrong(&v25->_ticketNumber, number);
    objc_storeStrong(&v25->_numberOfVisits, visits);
    objc_storeStrong(&v25->_numberOfVisitsGivenLocation, location);
    objc_storeStrong(&v25->_dateOfLastVisit, visit);
    objc_storeStrong(&v25->_entityRelevanceScore, score);
    objc_storeStrong(&v25->_numberOfGuests, guests);
  }

  return v25;
}

- (IQFMapsPersonalizationResult)initWithCoder:(id)coder
{
  coderCopy = coder;
  v31.receiver = self;
  v31.super_class = IQFMapsPersonalizationResult;
  v5 = [(IQFMapsPersonalizationResult *)&v31 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_muid"];
    muid = v5->_muid;
    v5->_muid = v6;

    v5->_resultType = [coderCopy decodeIntegerForKey:@"_resultType"];
    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_eventName"];
    eventName = v5->_eventName;
    v5->_eventName = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_startEventDate"];
    startEventDate = v5->_startEventDate;
    v5->_startEventDate = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_endEventDate"];
    endEventDate = v5->_endEventDate;
    v5->_endEventDate = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_terminal"];
    terminal = v5->_terminal;
    v5->_terminal = v14;

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_flightCode"];
    flightCode = v5->_flightCode;
    v5->_flightCode = v16;

    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_ticketNumber"];
    ticketNumber = v5->_ticketNumber;
    v5->_ticketNumber = v18;

    v20 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_numberOfVisits"];
    numberOfVisits = v5->_numberOfVisits;
    v5->_numberOfVisits = v20;

    v22 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_numberOfVisitsGivenLocation"];
    numberOfVisitsGivenLocation = v5->_numberOfVisitsGivenLocation;
    v5->_numberOfVisitsGivenLocation = v22;

    v24 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_dateOfLastVisit"];
    dateOfLastVisit = v5->_dateOfLastVisit;
    v5->_dateOfLastVisit = v24;

    v26 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_entityRelevanceScore"];
    entityRelevanceScore = v5->_entityRelevanceScore;
    v5->_entityRelevanceScore = v26;

    v28 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_numberOfGuests"];
    numberOfGuests = v5->_numberOfGuests;
    v5->_numberOfGuests = v28;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  muid = self->_muid;
  v18 = coderCopy;
  if (muid)
  {
    [coderCopy encodeObject:muid forKey:@"_muid"];
    coderCopy = v18;
  }

  [coderCopy encodeInteger:self->_resultType forKey:@"_resultType"];
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

- (void)setScore:(double)score
{
  v4 = [MEMORY[0x277CCABB0] numberWithDouble:score];
  score = self->_score;
  self->_score = v4;

  MEMORY[0x2821F96F8]();
}

@end