__CFString *FTCServiceNameForServiceType(uint64_t a1)
{
  switch(a1)
  {
    case 0:
      v1 = FTCServiceNameFaceTime;
      return *v1;
    case 1:
      v1 = FTCServiceNameMadrid;
      return *v1;
    case 2:
      v1 = FTCServiceNameCalling;
      return *v1;
  }

  return 0;
}

void sub_24A9ACE54(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (MarcoShouldLogRegistration())
  {
    if (!qword_27EF7F7C8)
    {
      goto LABEL_8;
    }

    v10 = objc_alloc(MEMORY[0x277CCAB68]);
    v11 = [v10 initWithCapacity:2 * qword_27EF7F7C8 + 3];
    if (qword_27EF7F7C8)
    {
      v12 = 0;
      do
      {
        [v11 appendString:@"  "];
        ++v12;
      }

      while (v12 < qword_27EF7F7C8);
    }

    [v11 appendString:@"=> "];
    if (v11)
    {
      v13 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@%@", v11, a2];
    }

    else
    {
LABEL_8:
      v13 = a2;
      v11 = 0;
    }

    v14 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:v13 arguments:&a9];
    MarcoLogRegistration();
  }
}

void sub_24A9ACFA4()
{
  if (qword_27EF7F7C8)
  {
    --qword_27EF7F7C8;
  }
}

uint64_t FTCServiceTypeForServiceName(void *a1)
{
  if ([a1 isEqualToString:@"iMessage"])
  {
    return 1;
  }

  if ([a1 isEqualToString:@"Calling"])
  {
    return 2;
  }

  return 0;
}

FTCServiceAvailabilityCenter *sub_24A9AD018()
{
  result = objc_alloc_init(FTCServiceAvailabilityCenter);
  qword_280B21A70 = result;
  return result;
}

uint64_t sub_24A9ADCC8(uint64_t a1)
{
  v1 = [*(a1 + 32) object];

  return MEMORY[0x2821F9670](v1, sel_updateAvailability);
}