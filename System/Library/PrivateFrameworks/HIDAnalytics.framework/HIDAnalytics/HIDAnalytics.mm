HIDAnalyticsHistogramEvent *HIDAnalyticsHistogramEventCreate(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = [MEMORY[0x277CCACA8] stringWithString:a1];
  v10 = [MEMORY[0x277CCACA8] stringWithString:a3];
  v11 = v10;
  DeepCopy = 0;
  v13 = 0;
  if (v9 && v10)
  {
    if (a2)
    {
      DeepCopy = CFPropertyListCreateDeepCopy(*MEMORY[0x277CBECE8], a2, 2uLL);
    }

    else
    {
      DeepCopy = 0;
    }

    v14 = [[HIDAnalyticsHistogramEvent alloc] initWithAttributes:v9 description:DeepCopy];
    v13 = v14;
    if (v14)
    {
      [(HIDAnalyticsHistogramEvent *)v14 addHistogramFieldWithSegments:v11 segments:a4 count:a5];
    }
  }

  v15 = v13;

  return v15;
}

HIDAnalyticsEvent *HIDAnalyticsEventCreate(uint64_t a1, void *DeepCopy)
{
  v3 = [MEMORY[0x277CCACA8] stringWithString:a1];
  v4 = v3;
  if (v3)
  {
    if (DeepCopy)
    {
      DeepCopy = CFPropertyListCreateDeepCopy(*MEMORY[0x277CBECE8], DeepCopy, 2uLL);
    }

    v3 = [[HIDAnalyticsEvent alloc] initWithAttributes:v4 description:DeepCopy];
  }

  else
  {
    DeepCopy = 0;
  }

  v5 = v3;

  return v5;
}

uint64_t HIDAnalyticsEventAddHistogramField(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = [MEMORY[0x277CCACA8] stringWithString:a2];
  if (v7)
  {
    [a1 addHistogramFieldWithSegments:v7 segments:a3 count:a4];
  }

  return MEMORY[0x2821F96F8]();
}

uint64_t HIDAnalyticsEventAddField(void *a1, uint64_t a2)
{
  v3 = [MEMORY[0x277CCACA8] stringWithString:a2];
  if (v3)
  {
    [a1 addField:v3];
  }

  return MEMORY[0x2821F96F8]();
}