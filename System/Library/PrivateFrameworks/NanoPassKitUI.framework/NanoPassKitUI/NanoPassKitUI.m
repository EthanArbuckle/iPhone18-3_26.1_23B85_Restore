uint64_t NPKRemotePassActionCardTypeForPass(void *a1)
{
  v1 = a1;
  if ([v1 isTransitPass])
  {
    v2 = 1;
  }

  else if ([v1 isEMoneyPass])
  {
    v2 = 2;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t NPKProtoRemotePassActionCardTypeForNPKRemotePassActionCardType(uint64_t a1)
{
  if (a1 == 2)
  {
    return 2;
  }

  else
  {
    return a1 == 1;
  }
}

uint64_t NPKRemotePassActionCardTypeForNPKProtoRemotePassActionCardType(int a1)
{
  if (a1 == 2)
  {
    return 2;
  }

  else
  {
    return a1 == 1;
  }
}

uint64_t NPKProtoRemotePassActionResultForNPKProtoRemotePassActionResponseResult(uint64_t result)
{
  if ((result - 1) >= 4)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

uint64_t NPKRemotePassActionResponseResultForNPKProtoRemotePassActionResult(uint64_t result)
{
  if ((result - 1) >= 4)
  {
    return 0;
  }

  else
  {
    return result;
  }
}