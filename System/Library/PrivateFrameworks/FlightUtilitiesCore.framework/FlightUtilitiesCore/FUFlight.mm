@interface FUFlight
+ (id)timeFormatterForIdentifier;
+ (void)loadFlightsWithNumber:(unint64_t)a3 airlineCode:(id)a4 date:(id)a5 dateType:(int64_t)a6 completionHandler:(id)a7;
- (BOOL)isEqual:(id)a3;
- (FUFlight)initWithCoder:(id)a3;
- (FUFlight)initWithDisplayAirline:(id)a3 queriedAirlineTitle:(id)a4 displayFlightNumber:(unint64_t)a5 airline:(id)a6 flightNumber:(unint64_t)a7 flightIdentifier:(id)a8 operatorAirline:(id)a9 operatorFlightNumber:(unint64_t)a10 cancellationMessage:(id)a11 allLegs:(id)a12 legs:(id)a13 identifier:(id)a14 departureLegIndex:(unint64_t)a15 arrivalLegIndex:(unint64_t)a16 expirationDate:(id)a17 rawResponse:(id)a18;
- (FUFlightStep)arrival;
- (FUFlightStep)departure;
- (NSString)displayFlightCode;
- (NSString)flightCode;
- (NSString)identifier;
- (NSString)operatorFlightCode;
- (double)duration;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)firstLeg;
- (id)lastLeg;
- (id)legsAsFlights;
- (id)relevantLeg;
- (int64_t)status;
- (void)encodeWithCoder:(id)a3;
- (void)setAllLegs:(id)a3;
- (void)setDepartureLegIndex:(unint64_t)a3 arrivalLegIndex:(unint64_t)a4;
@end

@implementation FUFlight

- (FUFlight)initWithDisplayAirline:(id)a3 queriedAirlineTitle:(id)a4 displayFlightNumber:(unint64_t)a5 airline:(id)a6 flightNumber:(unint64_t)a7 flightIdentifier:(id)a8 operatorAirline:(id)a9 operatorFlightNumber:(unint64_t)a10 cancellationMessage:(id)a11 allLegs:(id)a12 legs:(id)a13 identifier:(id)a14 departureLegIndex:(unint64_t)a15 arrivalLegIndex:(unint64_t)a16 expirationDate:(id)a17 rawResponse:(id)a18
{
  v52 = a3;
  v21 = a4;
  v51 = a6;
  v53 = a8;
  v50 = a9;
  v22 = a11;
  v23 = a12;
  v24 = a13;
  v25 = a14;
  v26 = a17;
  v27 = v21;
  v28 = a18;
  v54.receiver = self;
  v54.super_class = FUFlight;
  v29 = [(FUFlight *)&v54 init];
  v30 = v29;
  if (v29)
  {
    objc_storeStrong(&v29->_displayAirline, a3);
    v31 = [v27 copy];
    queriedAirlineTitle = v30->_queriedAirlineTitle;
    v30->_queriedAirlineTitle = v31;

    v30->_displayFlightNumber = a5;
    objc_storeStrong(&v30->_airline, a6);
    v30->_flightNumber = a7;
    v33 = [v53 copy];
    flightIdentifier = v30->_flightIdentifier;
    v30->_flightIdentifier = v33;

    objc_storeStrong(&v30->_operatorAirline, a9);
    v30->_operatorFlightNumber = a10;
    v35 = [v22 copy];
    cancellationMessage = v30->_cancellationMessage;
    v30->_cancellationMessage = v35;

    v37 = [v23 copy];
    allLegs = v30->_allLegs;
    v30->_allLegs = v37;

    v39 = [v24 copy];
    legs = v30->_legs;
    v30->_legs = v39;

    v41 = [v25 copy];
    identifier = v30->_identifier;
    v30->_identifier = v41;

    v30->_departureLegIndex = a15;
    v30->_arrivalLegIndex = a16;
    objc_storeStrong(&v30->_expirationDate, a17);
    v43 = [v28 copy];
    rawResponse = v30->_rawResponse;
    v30->_rawResponse = v43;
  }

  return v30;
}

- (BOOL)isEqual:(id)a3
{
  v6 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [(FUFlight *)self displayAirline];
    v8 = [v6 displayAirline];
    if (v7 != v8)
    {
      v3 = [(FUFlight *)self displayAirline];
      v4 = [v6 displayAirline];
      if (![v3 isEqual:v4])
      {
        v9 = 0;
        goto LABEL_25;
      }
    }

    v10 = [(FUFlight *)self queriedAirlineTitle];
    v11 = [v6 queriedAirlineTitle];
    if (v10 != v11)
    {
      v12 = [(FUFlight *)self queriedAirlineTitle];
      v13 = [v6 queriedAirlineTitle];
      if (![v12 isEqual:v13])
      {
        v9 = 0;
        goto LABEL_23;
      }

      v67 = v13;
      v68 = v12;
    }

    v14 = [(FUFlight *)self displayFlightNumber];
    if (v14 == [v6 displayFlightNumber])
    {
      v15 = [(FUFlight *)self airline];
      [v6 airline];
      v65 = v4;
      v66 = v15;
      v64 = v63 = v3;
      v16 = v15 == v64;
      v12 = v68;
      if (!v16)
      {
        v17 = [(FUFlight *)self airline];
        [v6 airline];
        v61 = v62 = v17;
        if (![v17 isEqual:?])
        {
          v9 = 0;
          v18 = v66;
          v13 = v67;
          v19 = v64;
          goto LABEL_21;
        }
      }

      v20 = [(FUFlight *)self flightNumber];
      if (v20 != [v6 flightNumber])
      {
        v9 = 0;
        v18 = v66;
        v13 = v67;
        v19 = v64;
        v12 = v68;
        if (v66 == v64)
        {
          goto LABEL_22;
        }

        goto LABEL_21;
      }

      v21 = [(FUFlight *)self cancellationMessage];
      v59 = [v6 cancellationMessage];
      v60 = v21;
      v16 = v21 == v59;
      v12 = v68;
      if (!v16)
      {
        v22 = [(FUFlight *)self cancellationMessage];
        v55 = [v6 cancellationMessage];
        v56 = v22;
        if (![v22 isEqual:?])
        {
          v9 = 0;
          v13 = v67;
          v24 = v59;
          v23 = v60;
LABEL_53:

LABEL_54:
          v18 = v66;
          v19 = v64;
          if (v66 == v64)
          {
LABEL_22:

            v3 = v63;
            v4 = v65;
            if (v10 == v11)
            {
              goto LABEL_24;
            }

            goto LABEL_23;
          }

LABEL_21:

          goto LABEL_22;
        }
      }

      v26 = [(FUFlight *)self allLegs];
      v57 = [v6 allLegs];
      v58 = v26;
      if (v26 != v57)
      {
        v27 = [(FUFlight *)self allLegs];
        v51 = [v6 allLegs];
        v52 = v27;
        if (![v27 isEqual:?])
        {
          v9 = 0;
          v28 = v57;
          v13 = v67;
LABEL_51:

LABEL_52:
          v24 = v59;
          v23 = v60;
          if (v60 == v59)
          {
            goto LABEL_54;
          }

          goto LABEL_53;
        }
      }

      v29 = [(FUFlight *)self legs];
      v53 = [v6 legs];
      v54 = v29;
      if (v29 != v53)
      {
        v30 = [(FUFlight *)self legs];
        v48 = [v6 legs];
        v49 = v30;
        if (![v30 isEqual:?])
        {
          v9 = 0;
          v13 = v67;
          v31 = v53;
          goto LABEL_48;
        }
      }

      v32 = [(FUFlight *)self identifier];
      v33 = [v6 identifier];
      v50 = v32;
      v16 = v32 == v33;
      v34 = v33;
      if (!v16)
      {
        v46 = v33;
        v35 = [(FUFlight *)self identifier];
        v44 = [v6 identifier];
        v45 = v35;
        if (![v35 isEqual:?])
        {
          v9 = 0;
          v34 = v46;
          goto LABEL_46;
        }

        v34 = v46;
      }

      v36 = [(FUFlight *)self departureLegIndex];
      if (v36 == [v6 departureLegIndex] && (v37 = -[FUFlight arrivalLegIndex](self, "arrivalLegIndex"), v37 == objc_msgSend(v6, "arrivalLegIndex")))
      {
        v47 = v34;
        v38 = [(FUFlight *)self expirationDate];
        v39 = [v6 expirationDate];
        if (v38 == v39)
        {

          v9 = 1;
        }

        else
        {
          v43 = v39;
          v42 = [(FUFlight *)self expirationDate];
          v40 = [v6 expirationDate];
          v9 = [v42 isEqual:v40];
        }

        v34 = v47;
      }

      else
      {
        v9 = 0;
      }

      v12 = v68;
      if (v50 == v34)
      {
LABEL_47:

        v31 = v53;
        v13 = v67;
        if (v54 == v53)
        {

LABEL_50:
          v28 = v57;
          if (v58 == v57)
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
    v13 = v67;
    v12 = v68;
    if (v10 == v11)
    {
LABEL_24:

      if (v7 == v8)
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
  v3 = [(FUFlight *)self flightCode];
  v15 = [(FUFlight *)self airline];
  v4 = [v15 name];
  v5 = [(FUFlight *)self departure];
  v6 = [v5 airport];
  v7 = [v6 IATACode];
  v8 = [(FUFlight *)self arrival];
  v9 = [v8 airport];
  v10 = [v9 IATACode];
  v11 = [(FUFlight *)self allLegs];
  v12 = [v14 stringWithFormat:@"Flight: %@ (%@) %@ => %@ Legs: %@", v3, v4, v7, v10, v11];

  return v12;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  [v4 setFlightNumber:{-[FUFlight flightNumber](self, "flightNumber")}];
  v5 = objc_opt_new();
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v6 = [(FUFlight *)self allLegs];
  v7 = [v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
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
          objc_enumerationMutation(v6);
        }

        [v5 addObject:*(*(&v19 + 1) + 8 * v10++)];
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v8);
  }

  [v4 setAllLegs:v5];
  v11 = [(FUFlight *)self airline];
  v12 = [v11 copy];
  [v4 setAirline:v12];

  v13 = [(FUFlight *)self cancellationMessage];
  v14 = [v13 copy];
  [v4 setCancellationMessage:v14];

  v15 = [(FUFlight *)self operatorAirline];
  v16 = [v15 copy];
  [v4 setOperatorAirline:v16];

  [v4 setOperatorFlightNumber:{-[FUFlight operatorFlightNumber](self, "operatorFlightNumber")}];
  [v4 setDepartureLegIndex:-[FUFlight departureLegIndex](self arrivalLegIndex:{"departureLegIndex"), -[FUFlight arrivalLegIndex](self, "arrivalLegIndex")}];

  v17 = *MEMORY[0x277D85DE8];
  return v4;
}

- (id)legsAsFlights
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB18] array];
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
        v10 = [(FUFlight *)self airline];
        [(FUFlight *)v9 setAirline:v10];

        [(FUFlight *)v9 setFlightNumber:[(FUFlight *)self flightNumber]];
        v11 = [(FUFlight *)self cancellationMessage];
        [(FUFlight *)v9 setCancellationMessage:v11];

        v12 = [v8 copy];
        v21 = v12;
        v13 = [MEMORY[0x277CBEA60] arrayWithObjects:&v21 count:1];
        [(FUFlight *)v9 setAllLegs:v13];

        [v3 addObject:v9];
      }

      v5 = [obj countByEnumeratingWithState:&v17 objects:v22 count:16];
    }

    while (v5);
  }

  v14 = *MEMORY[0x277D85DE8];

  return v3;
}

- (NSString)flightCode
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(FUFlight *)self airline];
  v5 = [v4 IATACode];
  v6 = [v3 stringWithFormat:@"%@%ld", v5, -[FUFlight flightNumber](self, "flightNumber")];

  return v6;
}

- (NSString)displayFlightCode
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(FUFlight *)self queriedAirlineTitle];
  v5 = [v3 stringWithFormat:@"%@%ld", v4, -[FUFlight displayFlightNumber](self, "displayFlightNumber")];

  return v5;
}

- (NSString)operatorFlightCode
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(FUFlight *)self operatorAirline];
  v5 = [v4 IATACode];
  v6 = [v3 stringWithFormat:@"%@%ld", v5, -[FUFlight operatorFlightNumber](self, "operatorFlightNumber")];

  return v6;
}

- (void)setAllLegs:(id)a3
{
  objc_storeStrong(&self->_allLegs, a3);
  v5 = a3;
  [(FUFlight *)self setDepartureLegIndex:0];
  -[FUFlight setArrivalLegIndex:](self, "setArrivalLegIndex:", [v5 count] - 1);
  [(FUFlight *)self setLegs:v5];
}

- (void)setDepartureLegIndex:(unint64_t)a3 arrivalLegIndex:(unint64_t)a4
{
  [(FUFlight *)self setDepartureLegIndex:?];
  [(FUFlight *)self setArrivalLegIndex:a4];
  v8 = [(FUFlight *)self allLegs];
  v7 = [v8 subarrayWithRange:{a3, a4 - a3 + 1}];
  [(FUFlight *)self setLegs:v7];
}

- (int64_t)status
{
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v2 = [(FUFlight *)self legs];
  v3 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(v2);
        }

        v8 = [*(*(&v12 + 1) + 8 * i) status];
        if (v8 <= 6)
        {
          v9 = v8;
          if (((1 << v8) & 0x30) != 0)
          {
            v5 = v8;
          }

          else if (v8 == 1)
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

          else if (((1 << v8) & 0x4C) != 0)
          {
            goto LABEL_20;
          }
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
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
  v2 = [(FUFlight *)self legs];
  v3 = [v2 countByEnumeratingWithState:&v15 objects:v19 count:16];
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
          objc_enumerationMutation(v2);
        }

        v8 = *(*(&v15 + 1) + 8 * v7);
        v9 = [v8 status];
        if (v9 <= 6)
        {
          if (((1 << v9) & 0x30) != 0)
          {
            v10 = v8;

            v5 = v10;
          }

          else if (((1 << v9) & 0x4E) != 0)
          {
            v12 = v8;

            goto LABEL_17;
          }
        }

        ++v7;
      }

      while (v4 != v7);
      v11 = [v2 countByEnumeratingWithState:&v15 objects:v19 count:16];
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
  v3 = [(FUFlight *)self legs];
  v4 = [v3 count];

  if (v4)
  {
    v5 = [(FUFlight *)self legs];
    v6 = [v5 firstObject];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)lastLeg
{
  v3 = [(FUFlight *)self legs];
  v4 = [v3 count];

  if (v4)
  {
    v5 = [(FUFlight *)self legs];
    v6 = [v5 lastObject];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (FUFlightStep)departure
{
  v2 = [(FUFlight *)self firstLeg];
  v3 = [v2 departure];

  return v3;
}

- (FUFlightStep)arrival
{
  v2 = [(FUFlight *)self lastLeg];
  v3 = [v2 arrival];

  return v3;
}

- (double)duration
{
  v2 = [(FUFlight *)self legs];
  v3 = [v2 firstObject];
  [v3 duration];
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
    v5 = [(FUFlight *)self allLegs];
    v6 = [v5 firstObject];
    v7 = [v6 departure];
    v8 = [v7 airport];
    v9 = [v8 timeZone];
    [v23 setTimeZone:v9];

    v22 = MEMORY[0x277CCACA8];
    v10 = [(FUFlight *)self airline];
    v11 = [v10 IATACode];
    v12 = [(FUFlight *)self flightNumber];
    v13 = [(FUFlight *)self departure];
    v14 = [v13 airport];
    v15 = [v14 IATACode];
    v16 = [(FUFlight *)self arrival];
    v17 = [v16 airport];
    v18 = [v17 IATACode];
    v19 = [v22 stringWithFormat:@"%@-%ld-%@-%@", v11, v12, v15, v18];
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

+ (void)loadFlightsWithNumber:(unint64_t)a3 airlineCode:(id)a4 date:(id)a5 dateType:(int64_t)a6 completionHandler:(id)a7
{
  v11 = a7;
  v12 = a5;
  v13 = a4;
  [(objc_class *)[FUFlightFactory flightFactoryClassWithProvider:?]airlineCode:"loadFlightsWithNumber:airlineCode:date:dateType:completionHandler:" date:a3 dateType:v13 completionHandler:v12, a6, v11];
}

- (void)encodeWithCoder:(id)a3
{
  v26 = a3;
  v4 = [(FUFlight *)self displayAirline];

  if (v4)
  {
    v5 = [(FUFlight *)self displayAirline];
    [v26 encodeObject:v5 forKey:@"displayAirline"];
  }

  v6 = [(FUFlight *)self queriedAirlineTitle];

  if (v6)
  {
    v7 = [(FUFlight *)self queriedAirlineTitle];
    [v26 encodeObject:v7 forKey:@"queriedAirlineTitle"];
  }

  [v26 encodeInteger:-[FUFlight displayFlightNumber](self forKey:{"displayFlightNumber"), @"displayFlightNumber"}];
  v8 = [(FUFlight *)self airline];

  if (v8)
  {
    v9 = [(FUFlight *)self airline];
    [v26 encodeObject:v9 forKey:@"airline"];
  }

  [v26 encodeInteger:-[FUFlight flightNumber](self forKey:{"flightNumber"), @"flightNumber"}];
  v10 = [(FUFlight *)self operatorAirline];

  if (v10)
  {
    v11 = [(FUFlight *)self operatorAirline];
    [v26 encodeObject:v11 forKey:@"operatorAirline"];
  }

  [v26 encodeInteger:-[FUFlight operatorFlightNumber](self forKey:{"operatorFlightNumber"), @"operatorFlightNumber"}];
  v12 = [(FUFlight *)self cancellationMessage];

  if (v12)
  {
    v13 = [(FUFlight *)self cancellationMessage];
    [v26 encodeObject:v13 forKey:@"cancellationMessage"];
  }

  v14 = [(FUFlight *)self allLegs];

  if (v14)
  {
    v15 = [(FUFlight *)self allLegs];
    v16 = [v15 copy];
    [v26 encodeObject:v16 forKey:@"allLegs"];
  }

  v17 = [(FUFlight *)self legs];

  if (v17)
  {
    v18 = [(FUFlight *)self legs];
    v19 = [v18 copy];
    [v26 encodeObject:v19 forKey:@"legs"];
  }

  v20 = [(FUFlight *)self identifier];

  if (v20)
  {
    v21 = [(FUFlight *)self identifier];
    [v26 encodeObject:v21 forKey:@"identifier"];
  }

  [v26 encodeInteger:-[FUFlight departureLegIndex](self forKey:{"departureLegIndex"), @"departureLegIndex"}];
  [v26 encodeInteger:-[FUFlight arrivalLegIndex](self forKey:{"arrivalLegIndex"), @"arrivalLegIndex"}];
  v22 = [(FUFlight *)self expirationDate];

  if (v22)
  {
    v23 = [(FUFlight *)self expirationDate];
    [v26 encodeObject:v23 forKey:@"expirationDate"];
  }

  v24 = [(FUFlight *)self rawResponse];

  if (v24)
  {
    v25 = [(FUFlight *)self rawResponse];
    [v26 encodeObject:v25 forKey:@"rawResponse"];
  }
}

- (FUFlight)initWithCoder:(id)a3
{
  v4 = a3;
  v35.receiver = self;
  v35.super_class = FUFlight;
  v5 = [(FUFlight *)&v35 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"displayAirline"];
    displayAirline = v5->_displayAirline;
    v5->_displayAirline = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"queriedAirlineTitle"];
    queriedAirlineTitle = v5->_queriedAirlineTitle;
    v5->_queriedAirlineTitle = v8;

    v5->_displayFlightNumber = [v4 decodeIntegerForKey:@"displayFlightNumber"];
    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"airline"];
    airline = v5->_airline;
    v5->_airline = v10;

    v5->_flightNumber = [v4 decodeIntegerForKey:@"flightNumber"];
    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"operatorAirline"];
    operatorAirline = v5->_operatorAirline;
    v5->_operatorAirline = v12;

    v5->_operatorFlightNumber = [v4 decodeIntegerForKey:@"operatorFlightNumber"];
    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"cancellationMessage"];
    cancellationMessage = v5->_cancellationMessage;
    v5->_cancellationMessage = v14;

    v16 = MEMORY[0x277CBEB98];
    v17 = objc_opt_class();
    v18 = [v16 setWithObjects:{v17, objc_opt_class(), 0}];
    v19 = [v4 decodeObjectOfClasses:v18 forKey:@"allLegs"];
    allLegs = v5->_allLegs;
    v5->_allLegs = v19;

    v21 = MEMORY[0x277CBEB98];
    v22 = objc_opt_class();
    v23 = [v21 setWithObjects:{v22, objc_opt_class(), 0}];
    v24 = [v4 decodeObjectOfClasses:v23 forKey:@"legs"];
    legs = v5->_legs;
    v5->_legs = v24;

    v26 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v26;

    v5->_departureLegIndex = [v4 decodeIntegerForKey:@"departureLegIndex"];
    v28 = [v4 decodeIntegerForKey:@"arrivalLegIndex"];
    v5->_arrivalLegIndex = v28;
    [(FUFlight *)v5 setDepartureLegIndex:v5->_departureLegIndex arrivalLegIndex:v28];
    v29 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"expirationDate"];
    expirationDate = v5->_expirationDate;
    v5->_expirationDate = v29;

    v31 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"rawResponse"];
    rawResponse = v5->_rawResponse;
    v5->_rawResponse = v31;

    v33 = v5;
  }

  return v5;
}

@end