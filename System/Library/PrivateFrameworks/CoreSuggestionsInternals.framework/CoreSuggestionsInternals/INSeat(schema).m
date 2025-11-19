@interface INSeat(schema)
+ (id)fromSchema:()schema;
- (id)schema;
@end

@implementation INSeat(schema)

- (id)schema
{
  v2 = objc_opt_new();
  [v2 setObject:@"http://schema.org/Seat" forKeyedSubscript:@"@type"];
  v3 = [a1 seatNumber];

  if (v3)
  {
    v4 = [a1 seatNumber];
    [v2 setObject:v4 forKeyedSubscript:@"seatNumber"];
  }

  v5 = [a1 seatRow];

  if (v5)
  {
    v6 = [a1 seatRow];
    [v2 setObject:v6 forKeyedSubscript:@"seatRow"];
  }

  v7 = [a1 seatSection];

  if (v7)
  {
    v8 = [a1 seatSection];
    [v2 setObject:v8 forKeyedSubscript:@"seatSection"];
  }

  v9 = [a1 seatingType];

  if (v9)
  {
    v10 = [a1 seatingType];
    [v2 setObject:v10 forKeyedSubscript:@"seatingType"];
  }

  if ([v2 count] < 2)
  {
    v11 = 0;
  }

  else
  {
    v11 = v2;
  }

  return v11;
}

+ (id)fromSchema:()schema
{
  v3 = a3;
  v4 = [v3 objectForKeyedSubscript:@"reservedTicket"];

  if (!v4)
  {
    v10 = [v3 objectForKeyedSubscript:@"seat"];

    if (!v10)
    {
      v8 = [v3 objectForKeyedSubscript:@"airplaneSeat"];
      v11 = [v3 objectForKeyedSubscript:@"airplaneSeatClass"];
      v12 = [v11 objectForKeyedSubscript:@"name"];
      v15 = [objc_alloc(MEMORY[0x277CD4068]) initWithSeatSection:0 seatRow:0 seatNumber:v8 seatingType:v12];
      goto LABEL_7;
    }

    v9 = [v3 objectForKeyedSubscript:@"seat"];
    v8 = v9;
LABEL_6:
    v11 = [v9 objectForKeyedSubscript:@"seatNumber"];
    v12 = [v8 objectForKeyedSubscript:@"seatRow"];
    v13 = [v8 objectForKeyedSubscript:@"seatSection"];
    v14 = [v8 objectForKeyedSubscript:@"seatingType"];
    v15 = [objc_alloc(MEMORY[0x277CD4068]) initWithSeatSection:v13 seatRow:v12 seatNumber:v11 seatingType:v14];

LABEL_7:
    goto LABEL_9;
  }

  v5 = [v3 objectForKeyedSubscript:@"reservedTicket"];
  v6 = [v5 objectForKeyedSubscript:@"ticketedSeat"];

  if (v6)
  {
    v7 = [v3 objectForKeyedSubscript:@"reservedTicket"];
    v8 = [v7 objectForKeyedSubscript:@"ticketedSeat"];

    v9 = v8;
    goto LABEL_6;
  }

  v15 = 0;
LABEL_9:

  return v15;
}

@end