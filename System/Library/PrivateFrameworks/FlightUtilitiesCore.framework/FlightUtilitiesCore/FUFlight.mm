@interface FUFlight
+ (id)timeFormatterForIdentifier;
+ (void)loadFlightsWithNumber:(unint64_t)number airlineCode:(id)code date:(id)date dateType:(int64_t)type completionHandler:(id)handler;
- (BOOL)isEqual:(id)equal;
- (FUFlight)initWithCoder:(id)coder;
- (FUFlight)initWithDisplayAirline:(id)airline queriedAirlineTitle:(id)title displayFlightNumber:(unint64_t)number airline:(id)a6 flightNumber:(unint64_t)flightNumber flightIdentifier:(id)identifier operatorAirline:(id)operatorAirline operatorFlightNumber:(unint64_t)self0 cancellationMessage:(id)self1 allLegs:(id)self2 legs:(id)self3 identifier:(id)self4 departureLegIndex:(unint64_t)self5 arrivalLegIndex:(unint64_t)self6 expirationDate:(id)self7 rawResponse:(id)self8;
- (FUFlightStep)arrival;
- (FUFlightStep)departure;
- (NSString)displayFlightCode;
- (NSString)flightCode;
- (NSString)identifier;
- (NSString)operatorFlightCode;
- (double)duration;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)firstLeg;
- (id)lastLeg;
- (id)legsAsFlights;
- (id)relevantLeg;
- (int64_t)status;
- (void)encodeWithCoder:(id)coder;
- (void)setAllLegs:(id)legs;
- (void)setDepartureLegIndex:(unint64_t)index arrivalLegIndex:(unint64_t)legIndex;
@end

@implementation FUFlight

- (FUFlight)initWithDisplayAirline:(id)airline queriedAirlineTitle:(id)title displayFlightNumber:(unint64_t)number airline:(id)a6 flightNumber:(unint64_t)flightNumber flightIdentifier:(id)identifier operatorAirline:(id)operatorAirline operatorFlightNumber:(unint64_t)self0 cancellationMessage:(id)self1 allLegs:(id)self2 legs:(id)self3 identifier:(id)self4 departureLegIndex:(unint64_t)self5 arrivalLegIndex:(unint64_t)self6 expirationDate:(id)self7 rawResponse:(id)self8
{
  airlineCopy = airline;
  titleCopy = title;
  v51 = a6;
  identifierCopy = identifier;
  operatorAirlineCopy = operatorAirline;
  messageCopy = message;
  legsCopy = legs;
  v24 = a13;
  v25 = a14;
  dateCopy = date;
  v27 = titleCopy;
  responseCopy = response;
  v54.receiver = self;
  v54.super_class = FUFlight;
  v29 = [(FUFlight *)&v54 init];
  v30 = v29;
  if (v29)
  {
    objc_storeStrong(&v29->_displayAirline, airline);
    v31 = [v27 copy];
    queriedAirlineTitle = v30->_queriedAirlineTitle;
    v30->_queriedAirlineTitle = v31;

    v30->_displayFlightNumber = number;
    objc_storeStrong(&v30->_airline, a6);
    v30->_flightNumber = flightNumber;
    v33 = [identifierCopy copy];
    flightIdentifier = v30->_flightIdentifier;
    v30->_flightIdentifier = v33;

    objc_storeStrong(&v30->_operatorAirline, operatorAirline);
    v30->_operatorFlightNumber = operatorFlightNumber;
    v35 = [messageCopy copy];
    cancellationMessage = v30->_cancellationMessage;
    v30->_cancellationMessage = v35;

    v37 = [legsCopy copy];
    allLegs = v30->_allLegs;
    v30->_allLegs = v37;

    v39 = [v24 copy];
    legs = v30->_legs;
    v30->_legs = v39;

    v41 = [v25 copy];
    identifier = v30->_identifier;
    v30->_identifier = v41;

    v30->_departureLegIndex = index;
    v30->_arrivalLegIndex = legIndex;
    objc_storeStrong(&v30->_expirationDate, date);
    v43 = [responseCopy copy];
    rawResponse = v30->_rawResponse;
    v30->_rawResponse = v43;
  }

  return v30;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    displayAirline = [(FUFlight *)self displayAirline];
    displayAirline2 = [equalCopy displayAirline];
    if (displayAirline != displayAirline2)
    {
      displayAirline3 = [(FUFlight *)self displayAirline];
      displayAirline4 = [equalCopy displayAirline];
      if (![displayAirline3 isEqual:displayAirline4])
      {
        v9 = 0;
        goto LABEL_25;
      }
    }

    queriedAirlineTitle = [(FUFlight *)self queriedAirlineTitle];
    queriedAirlineTitle2 = [equalCopy queriedAirlineTitle];
    if (queriedAirlineTitle != queriedAirlineTitle2)
    {
      queriedAirlineTitle3 = [(FUFlight *)self queriedAirlineTitle];
      queriedAirlineTitle4 = [equalCopy queriedAirlineTitle];
      if (![queriedAirlineTitle3 isEqual:queriedAirlineTitle4])
      {
        v9 = 0;
        goto LABEL_23;
      }

      v67 = queriedAirlineTitle4;
      v68 = queriedAirlineTitle3;
    }

    displayFlightNumber = [(FUFlight *)self displayFlightNumber];
    if (displayFlightNumber == [equalCopy displayFlightNumber])
    {
      airline = [(FUFlight *)self airline];
      [equalCopy airline];
      v65 = displayAirline4;
      v66 = airline;
      v64 = v63 = displayAirline3;
      v16 = airline == v64;
      queriedAirlineTitle3 = v68;
      if (!v16)
      {
        airline2 = [(FUFlight *)self airline];
        [equalCopy airline];
        v61 = v62 = airline2;
        if (![airline2 isEqual:?])
        {
          v9 = 0;
          v18 = v66;
          queriedAirlineTitle4 = v67;
          v19 = v64;
          goto LABEL_21;
        }
      }

      flightNumber = [(FUFlight *)self flightNumber];
      if (flightNumber != [equalCopy flightNumber])
      {
        v9 = 0;
        v18 = v66;
        queriedAirlineTitle4 = v67;
        v19 = v64;
        queriedAirlineTitle3 = v68;
        if (v66 == v64)
        {
          goto LABEL_22;
        }

        goto LABEL_21;
      }

      cancellationMessage = [(FUFlight *)self cancellationMessage];
      cancellationMessage2 = [equalCopy cancellationMessage];
      v60 = cancellationMessage;
      v16 = cancellationMessage == cancellationMessage2;
      queriedAirlineTitle3 = v68;
      if (!v16)
      {
        cancellationMessage3 = [(FUFlight *)self cancellationMessage];
        cancellationMessage4 = [equalCopy cancellationMessage];
        v56 = cancellationMessage3;
        if (![cancellationMessage3 isEqual:?])
        {
          v9 = 0;
          queriedAirlineTitle4 = v67;
          v24 = cancellationMessage2;
          v23 = v60;
LABEL_53:

LABEL_54:
          v18 = v66;
          v19 = v64;
          if (v66 == v64)
          {
LABEL_22:

            displayAirline3 = v63;
            displayAirline4 = v65;
            if (queriedAirlineTitle == queriedAirlineTitle2)
            {
              goto LABEL_24;
            }

            goto LABEL_23;
          }

LABEL_21:

          goto LABEL_22;
        }
      }

      allLegs = [(FUFlight *)self allLegs];
      allLegs2 = [equalCopy allLegs];
      v58 = allLegs;
      if (allLegs != allLegs2)
      {
        allLegs3 = [(FUFlight *)self allLegs];
        allLegs4 = [equalCopy allLegs];
        v52 = allLegs3;
        if (![allLegs3 isEqual:?])
        {
          v9 = 0;
          v28 = allLegs2;
          queriedAirlineTitle4 = v67;
LABEL_51:

LABEL_52:
          v24 = cancellationMessage2;
          v23 = v60;
          if (v60 == cancellationMessage2)
          {
            goto LABEL_54;
          }

          goto LABEL_53;
        }
      }

      legs = [(FUFlight *)self legs];
      legs2 = [equalCopy legs];
      v54 = legs;
      if (legs != legs2)
      {
        legs3 = [(FUFlight *)self legs];
        legs4 = [equalCopy legs];
        v49 = legs3;
        if (![legs3 isEqual:?])
        {
          v9 = 0;
          queriedAirlineTitle4 = v67;
          v31 = legs2;
          goto LABEL_48;
        }
      }

      identifier = [(FUFlight *)self identifier];
      identifier2 = [equalCopy identifier];
      v50 = identifier;
      v16 = identifier == identifier2;
      v34 = identifier2;
      if (!v16)
      {
        v46 = identifier2;
        identifier3 = [(FUFlight *)self identifier];
        identifier4 = [equalCopy identifier];
        v45 = identifier3;
        if (![identifier3 isEqual:?])
        {
          v9 = 0;
          v34 = v46;
          goto LABEL_46;
        }

        v34 = v46;
      }

      departureLegIndex = [(FUFlight *)self departureLegIndex];
      if (departureLegIndex == [equalCopy departureLegIndex] && (v37 = -[FUFlight arrivalLegIndex](self, "arrivalLegIndex"), v37 == objc_msgSend(equalCopy, "arrivalLegIndex")))
      {
        v47 = v34;
        expirationDate = [(FUFlight *)self expirationDate];
        expirationDate2 = [equalCopy expirationDate];
        if (expirationDate == expirationDate2)
        {

          v9 = 1;
        }

        else
        {
          v43 = expirationDate2;
          expirationDate3 = [(FUFlight *)self expirationDate];
          expirationDate4 = [equalCopy expirationDate];
          v9 = [expirationDate3 isEqual:expirationDate4];
        }

        v34 = v47;
      }

      else
      {
        v9 = 0;
      }

      queriedAirlineTitle3 = v68;
      if (v50 == v34)
      {
LABEL_47:

        v31 = legs2;
        queriedAirlineTitle4 = v67;
        if (v54 == legs2)
        {

LABEL_50:
          v28 = allLegs2;
          if (v58 == allLegs2)
          {
            goto LABEL_52;
          }

          goto LABEL_51;
        }

LABEL_48:
        v41 = v31;

        goto LABEL_50;
      }

LABEL_46:

      goto LABEL_47;
    }

    v9 = 0;
    queriedAirlineTitle4 = v67;
    queriedAirlineTitle3 = v68;
    if (queriedAirlineTitle == queriedAirlineTitle2)
    {
LABEL_24:

      if (displayAirline == displayAirline2)
      {
LABEL_26:

        goto LABEL_27;
      }

LABEL_25:

      goto LABEL_26;
    }

LABEL_23:

    goto LABEL_24;
  }

  v9 = 0;
LABEL_27:

  return v9;
}

- (id)description
{
  v14 = MEMORY[0x277CCACA8];
  flightCode = [(FUFlight *)self flightCode];
  airline = [(FUFlight *)self airline];
  name = [airline name];
  departure = [(FUFlight *)self departure];
  airport = [departure airport];
  iATACode = [airport IATACode];
  arrival = [(FUFlight *)self arrival];
  airport2 = [arrival airport];
  iATACode2 = [airport2 IATACode];
  allLegs = [(FUFlight *)self allLegs];
  v12 = [v14 stringWithFormat:@"Flight: %@ (%@) %@ => %@ Legs: %@", flightCode, name, iATACode, iATACode2, allLegs];

  return v12;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  [v4 setFlightNumber:{-[FUFlight flightNumber](self, "flightNumber")}];
  v5 = objc_opt_new();
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  allLegs = [(FUFlight *)self allLegs];
  v7 = [allLegs countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v20;
    do
    {
      v10 = 0;
      do
      {
        if (*v20 != v9)
        {
          objc_enumerationMutation(allLegs);
        }

        [v5 addObject:*(*(&v19 + 1) + 8 * v10++)];
      }

      while (v8 != v10);
      v8 = [allLegs countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v8);
  }

  [v4 setAllLegs:v5];
  airline = [(FUFlight *)self airline];
  v12 = [airline copy];
  [v4 setAirline:v12];

  cancellationMessage = [(FUFlight *)self cancellationMessage];
  v14 = [cancellationMessage copy];
  [v4 setCancellationMessage:v14];

  operatorAirline = [(FUFlight *)self operatorAirline];
  v16 = [operatorAirline copy];
  [v4 setOperatorAirline:v16];

  [v4 setOperatorFlightNumber:{-[FUFlight operatorFlightNumber](self, "operatorFlightNumber")}];
  [v4 setDepartureLegIndex:-[FUFlight departureLegIndex](self arrivalLegIndex:{"departureLegIndex"), -[FUFlight arrivalLegIndex](self, "arrivalLegIndex")}];

  v17 = *MEMORY[0x277D85DE8];
  return v4;
}

- (id)legsAsFlights
{
  v23 = *MEMORY[0x277D85DE8];
  array = [MEMORY[0x277CBEB18] array];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  obj = [(FUFlight *)self legs];
  v4 = [obj countByEnumeratingWithState:&v17 objects:v22 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v18;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v18 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v17 + 1) + 8 * i);
        v9 = objc_alloc_init(FUFlight);
        airline = [(FUFlight *)self airline];
        [(FUFlight *)v9 setAirline:airline];

        [(FUFlight *)v9 setFlightNumber:[(FUFlight *)self flightNumber]];
        cancellationMessage = [(FUFlight *)self cancellationMessage];
        [(FUFlight *)v9 setCancellationMessage:cancellationMessage];

        v12 = [v8 copy];
        v21 = v12;
        v13 = [MEMORY[0x277CBEA60] arrayWithObjects:&v21 count:1];
        [(FUFlight *)v9 setAllLegs:v13];

        [array addObject:v9];
      }

      v5 = [obj countByEnumeratingWithState:&v17 objects:v22 count:16];
    }

    while (v5);
  }

  v14 = *MEMORY[0x277D85DE8];

  return array;
}

- (NSString)flightCode
{
  v3 = MEMORY[0x277CCACA8];
  airline = [(FUFlight *)self airline];
  iATACode = [airline IATACode];
  v6 = [v3 stringWithFormat:@"%@%ld", iATACode, -[FUFlight flightNumber](self, "flightNumber")];

  return v6;
}

- (NSString)displayFlightCode
{
  v3 = MEMORY[0x277CCACA8];
  queriedAirlineTitle = [(FUFlight *)self queriedAirlineTitle];
  v5 = [v3 stringWithFormat:@"%@%ld", queriedAirlineTitle, -[FUFlight displayFlightNumber](self, "displayFlightNumber")];

  return v5;
}

- (NSString)operatorFlightCode
{
  v3 = MEMORY[0x277CCACA8];
  operatorAirline = [(FUFlight *)self operatorAirline];
  iATACode = [operatorAirline IATACode];
  v6 = [v3 stringWithFormat:@"%@%ld", iATACode, -[FUFlight operatorFlightNumber](self, "operatorFlightNumber")];

  return v6;
}

- (void)setAllLegs:(id)legs
{
  objc_storeStrong(&self->_allLegs, legs);
  legsCopy = legs;
  [(FUFlight *)self setDepartureLegIndex:0];
  -[FUFlight setArrivalLegIndex:](self, "setArrivalLegIndex:", [legsCopy count] - 1);
  [(FUFlight *)self setLegs:legsCopy];
}

- (void)setDepartureLegIndex:(unint64_t)index arrivalLegIndex:(unint64_t)legIndex
{
  [(FUFlight *)self setDepartureLegIndex:?];
  [(FUFlight *)self setArrivalLegIndex:legIndex];
  allLegs = [(FUFlight *)self allLegs];
  v7 = [allLegs subarrayWithRange:{index, legIndex - index + 1}];
  [(FUFlight *)self setLegs:v7];
}

- (int64_t)status
{
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  legs = [(FUFlight *)self legs];
  v3 = [legs countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = *v13;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(legs);
        }

        status = [*(*(&v12 + 1) + 8 * i) status];
        if (status <= 6)
        {
          v9 = status;
          if (((1 << status) & 0x30) != 0)
          {
            v5 = status;
          }

          else if (status == 1)
          {
            if (v5 == 4)
            {
              v9 = 2;
              goto LABEL_20;
            }

            if (v5 == 5)
            {
              v9 = 3;
              goto LABEL_20;
            }

            v5 = 1;
          }

          else if (((1 << status) & 0x4C) != 0)
          {
            goto LABEL_20;
          }
        }
      }

      v4 = [legs countByEnumeratingWithState:&v12 objects:v16 count:16];
      v9 = v5;
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v9 = 0;
  }

LABEL_20:

  v10 = *MEMORY[0x277D85DE8];
  return v9;
}

- (id)relevantLeg
{
  v20 = *MEMORY[0x277D85DE8];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  legs = [(FUFlight *)self legs];
  v3 = [legs countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = *v16;
    do
    {
      v7 = 0;
      do
      {
        if (*v16 != v6)
        {
          objc_enumerationMutation(legs);
        }

        v8 = *(*(&v15 + 1) + 8 * v7);
        status = [v8 status];
        if (status <= 6)
        {
          if (((1 << status) & 0x30) != 0)
          {
            v10 = v8;

            v5 = v10;
          }

          else if (((1 << status) & 0x4E) != 0)
          {
            v12 = v8;

            goto LABEL_17;
          }
        }

        ++v7;
      }

      while (v4 != v7);
      v11 = [legs countByEnumeratingWithState:&v15 objects:v19 count:16];
      v4 = v11;
    }

    while (v11);
  }

  else
  {
    v5 = 0;
  }

  v5 = v5;
  v12 = v5;
LABEL_17:

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

- (id)firstLeg
{
  legs = [(FUFlight *)self legs];
  v4 = [legs count];

  if (v4)
  {
    legs2 = [(FUFlight *)self legs];
    firstObject = [legs2 firstObject];
  }

  else
  {
    firstObject = 0;
  }

  return firstObject;
}

- (id)lastLeg
{
  legs = [(FUFlight *)self legs];
  v4 = [legs count];

  if (v4)
  {
    legs2 = [(FUFlight *)self legs];
    lastObject = [legs2 lastObject];
  }

  else
  {
    lastObject = 0;
  }

  return lastObject;
}

- (FUFlightStep)departure
{
  firstLeg = [(FUFlight *)self firstLeg];
  departure = [firstLeg departure];

  return departure;
}

- (FUFlightStep)arrival
{
  lastLeg = [(FUFlight *)self lastLeg];
  arrival = [lastLeg arrival];

  return arrival;
}

- (double)duration
{
  legs = [(FUFlight *)self legs];
  firstObject = [legs firstObject];
  [firstObject duration];
  v5 = v4;

  return v5;
}

- (NSString)identifier
{
  identifier = self->_identifier;
  if (identifier)
  {
    v3 = identifier;
  }

  else
  {
    v23 = +[FUFlight timeFormatterForIdentifier];
    allLegs = [(FUFlight *)self allLegs];
    firstObject = [allLegs firstObject];
    departure = [firstObject departure];
    airport = [departure airport];
    timeZone = [airport timeZone];
    [v23 setTimeZone:timeZone];

    v22 = MEMORY[0x277CCACA8];
    airline = [(FUFlight *)self airline];
    iATACode = [airline IATACode];
    flightNumber = [(FUFlight *)self flightNumber];
    departure2 = [(FUFlight *)self departure];
    airport2 = [departure2 airport];
    iATACode2 = [airport2 IATACode];
    arrival = [(FUFlight *)self arrival];
    airport3 = [arrival airport];
    iATACode3 = [airport3 IATACode];
    v19 = [v22 stringWithFormat:@"%@-%ld-%@-%@", iATACode, flightNumber, iATACode2, iATACode3];
    v20 = self->_identifier;
    self->_identifier = v19;

    v3 = self->_identifier;
  }

  return v3;
}

+ (id)timeFormatterForIdentifier
{
  v2 = objc_alloc_init(MEMORY[0x277CCA968]);
  [v2 setDateFormat:@"ddMMyyyy"];
  v3 = [MEMORY[0x277CBEAF8] localeWithLocaleIdentifier:@"en_US"];
  [v2 setLocale:v3];

  v4 = [MEMORY[0x277CBEA80] calendarWithIdentifier:*MEMORY[0x277CBE5C0]];
  [v2 setCalendar:v4];

  return v2;
}

+ (void)loadFlightsWithNumber:(unint64_t)number airlineCode:(id)code date:(id)date dateType:(int64_t)type completionHandler:(id)handler
{
  handlerCopy = handler;
  dateCopy = date;
  codeCopy = code;
  [(objc_class *)[FUFlightFactory flightFactoryClassWithProvider:?]airlineCode:"loadFlightsWithNumber:airlineCode:date:dateType:completionHandler:" date:number dateType:codeCopy completionHandler:dateCopy, type, handlerCopy];
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  displayAirline = [(FUFlight *)self displayAirline];

  if (displayAirline)
  {
    displayAirline2 = [(FUFlight *)self displayAirline];
    [coderCopy encodeObject:displayAirline2 forKey:@"displayAirline"];
  }

  queriedAirlineTitle = [(FUFlight *)self queriedAirlineTitle];

  if (queriedAirlineTitle)
  {
    queriedAirlineTitle2 = [(FUFlight *)self queriedAirlineTitle];
    [coderCopy encodeObject:queriedAirlineTitle2 forKey:@"queriedAirlineTitle"];
  }

  [coderCopy encodeInteger:-[FUFlight displayFlightNumber](self forKey:{"displayFlightNumber"), @"displayFlightNumber"}];
  airline = [(FUFlight *)self airline];

  if (airline)
  {
    airline2 = [(FUFlight *)self airline];
    [coderCopy encodeObject:airline2 forKey:@"airline"];
  }

  [coderCopy encodeInteger:-[FUFlight flightNumber](self forKey:{"flightNumber"), @"flightNumber"}];
  operatorAirline = [(FUFlight *)self operatorAirline];

  if (operatorAirline)
  {
    operatorAirline2 = [(FUFlight *)self operatorAirline];
    [coderCopy encodeObject:operatorAirline2 forKey:@"operatorAirline"];
  }

  [coderCopy encodeInteger:-[FUFlight operatorFlightNumber](self forKey:{"operatorFlightNumber"), @"operatorFlightNumber"}];
  cancellationMessage = [(FUFlight *)self cancellationMessage];

  if (cancellationMessage)
  {
    cancellationMessage2 = [(FUFlight *)self cancellationMessage];
    [coderCopy encodeObject:cancellationMessage2 forKey:@"cancellationMessage"];
  }

  allLegs = [(FUFlight *)self allLegs];

  if (allLegs)
  {
    allLegs2 = [(FUFlight *)self allLegs];
    v16 = [allLegs2 copy];
    [coderCopy encodeObject:v16 forKey:@"allLegs"];
  }

  legs = [(FUFlight *)self legs];

  if (legs)
  {
    legs2 = [(FUFlight *)self legs];
    v19 = [legs2 copy];
    [coderCopy encodeObject:v19 forKey:@"legs"];
  }

  identifier = [(FUFlight *)self identifier];

  if (identifier)
  {
    identifier2 = [(FUFlight *)self identifier];
    [coderCopy encodeObject:identifier2 forKey:@"identifier"];
  }

  [coderCopy encodeInteger:-[FUFlight departureLegIndex](self forKey:{"departureLegIndex"), @"departureLegIndex"}];
  [coderCopy encodeInteger:-[FUFlight arrivalLegIndex](self forKey:{"arrivalLegIndex"), @"arrivalLegIndex"}];
  expirationDate = [(FUFlight *)self expirationDate];

  if (expirationDate)
  {
    expirationDate2 = [(FUFlight *)self expirationDate];
    [coderCopy encodeObject:expirationDate2 forKey:@"expirationDate"];
  }

  rawResponse = [(FUFlight *)self rawResponse];

  if (rawResponse)
  {
    rawResponse2 = [(FUFlight *)self rawResponse];
    [coderCopy encodeObject:rawResponse2 forKey:@"rawResponse"];
  }
}

- (FUFlight)initWithCoder:(id)coder
{
  coderCopy = coder;
  v35.receiver = self;
  v35.super_class = FUFlight;
  v5 = [(FUFlight *)&v35 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"displayAirline"];
    displayAirline = v5->_displayAirline;
    v5->_displayAirline = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"queriedAirlineTitle"];
    queriedAirlineTitle = v5->_queriedAirlineTitle;
    v5->_queriedAirlineTitle = v8;

    v5->_displayFlightNumber = [coderCopy decodeIntegerForKey:@"displayFlightNumber"];
    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"airline"];
    airline = v5->_airline;
    v5->_airline = v10;

    v5->_flightNumber = [coderCopy decodeIntegerForKey:@"flightNumber"];
    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"operatorAirline"];
    operatorAirline = v5->_operatorAirline;
    v5->_operatorAirline = v12;

    v5->_operatorFlightNumber = [coderCopy decodeIntegerForKey:@"operatorFlightNumber"];
    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"cancellationMessage"];
    cancellationMessage = v5->_cancellationMessage;
    v5->_cancellationMessage = v14;

    v16 = MEMORY[0x277CBEB98];
    v17 = objc_opt_class();
    v18 = [v16 setWithObjects:{v17, objc_opt_class(), 0}];
    v19 = [coderCopy decodeObjectOfClasses:v18 forKey:@"allLegs"];
    allLegs = v5->_allLegs;
    v5->_allLegs = v19;

    v21 = MEMORY[0x277CBEB98];
    v22 = objc_opt_class();
    v23 = [v21 setWithObjects:{v22, objc_opt_class(), 0}];
    v24 = [coderCopy decodeObjectOfClasses:v23 forKey:@"legs"];
    legs = v5->_legs;
    v5->_legs = v24;

    v26 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v26;

    v5->_departureLegIndex = [coderCopy decodeIntegerForKey:@"departureLegIndex"];
    v28 = [coderCopy decodeIntegerForKey:@"arrivalLegIndex"];
    v5->_arrivalLegIndex = v28;
    [(FUFlight *)v5 setDepartureLegIndex:v5->_departureLegIndex arrivalLegIndex:v28];
    v29 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"expirationDate"];
    expirationDate = v5->_expirationDate;
    v5->_expirationDate = v29;

    v31 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"rawResponse"];
    rawResponse = v5->_rawResponse;
    v5->_rawResponse = v31;

    v33 = v5;
  }

  return v5;
}

@end