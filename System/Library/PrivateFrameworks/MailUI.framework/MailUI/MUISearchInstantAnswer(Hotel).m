@interface MUISearchInstantAnswer(Hotel)
@end

@implementation MUISearchInstantAnswer(Hotel)

- (uint64_t)initHotelAnswerWithCSInstantAnswer:()Hotel .cold.1(void *a1, void *a2, void *a3)
{
  [(MUISearchInstantAnswer *)a1 initSearchInstantAnswer:a2];
  v6 = [a2 hotelCheckinDateComponents];
  if (!v6)
  {
    goto LABEL_7;
  }

  v7 = v6;
  v8 = [a2 hotelReservationForName];
  if (!v8)
  {

    goto LABEL_7;
  }

  v9 = v8;
  v10 = [a2 hotelReservationForName];
  v11 = [v10 length];

  if (v11 < 2)
  {
LABEL_7:
    *a3 = 0;
    return 1;
  }

  v12 = [a2 hotelReservationId];
  v13 = a1[20];
  a1[20] = v12;

  v14 = [a2 hotelUnderName];
  v15 = a1[21];
  a1[21] = v14;

  v16 = [a2 hotelCheckinDateComponents];
  v17 = a1[22];
  a1[22] = v16;

  v18 = [a2 hotelCheckoutDateComponents];
  v19 = a1[23];
  a1[23] = v18;

  v20 = [a2 hotelTimeZone];
  v21 = a1[24];
  a1[24] = v20;

  v22 = [a2 hotelReservationForName];
  v23 = a1[25];
  a1[25] = v22;

  v24 = [a2 hotelReservationForTelephone];
  v25 = a1[26];
  a1[26] = v24;

  v26 = [a2 hotelReservationForAddress];
  v27 = a1[27];
  a1[27] = v26;

  v28 = NSSelectorFromString(&cfstr_Hotelreservati.isa);
  if (objc_opt_respondsToSelector())
  {
    v29 = [a2 v28];
  }

  else
  {
    v29 = &stru_2826EE5B8;
  }

  v31 = a1[28];
  a1[28] = v29;

  return 0;
}

@end