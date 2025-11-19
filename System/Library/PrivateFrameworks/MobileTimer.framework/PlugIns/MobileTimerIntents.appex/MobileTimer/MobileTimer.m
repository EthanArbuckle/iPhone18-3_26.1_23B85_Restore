void sub_1000010D8(uint64_t a1, id a2, void *a3)
{
  v6 = a3;
  if (a2)
  {
    v5 = a2;
    a2 = [[INObjectCollection alloc] initWithItems:v5];
  }

  (*(*(a1 + 32) + 16))();
}

void sub_1000012B0(uint64_t a1, uint64_t a2)
{
  v7 = [MTUtilities mtCityFromWorldClockCity:a2];
  v3 = [NSBundle bundleWithIdentifier:@"com.apple.mobiletimer-framework"];
  v4 = [v7 identifier];
  v5 = [v3 localizedStringForKey:v4 value:&stru_100004258 table:@"WorldClock"];

  v6 = [v7 identifier];
  LOBYTE(v4) = [v5 isEqualToString:v6];

  if ((v4 & 1) == 0)
  {
    [*(a1 + 32) addObject:v7];
  }
}

void sub_100001AF4(uint64_t a1, id a2, void *a3)
{
  v6 = a3;
  if (a2)
  {
    v5 = a2;
    a2 = [[INObjectCollection alloc] initWithItems:v5];
  }

  (*(*(a1 + 32) + 16))();
}

void sub_100001CCC(uint64_t a1, uint64_t a2)
{
  v7 = [MTUtilities mtCityFromWorldClockCity:a2];
  v3 = [NSBundle bundleWithIdentifier:@"com.apple.mobiletimer-framework"];
  v4 = [v7 identifier];
  v5 = [v3 localizedStringForKey:v4 value:&stru_100004258 table:@"WorldClock"];

  v6 = [v7 identifier];
  LOBYTE(v4) = [v5 isEqualToString:v6];

  if ((v4 & 1) == 0)
  {
    [*(a1 + 32) addObject:v7];
  }
}