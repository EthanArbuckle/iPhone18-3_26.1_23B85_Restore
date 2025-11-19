@interface NSData(CDXTicket)
- (BOOL)CDXTicketIsRelatedToTicket:()CDXTicket;
- (BOOL)CDXTicketWellFormed;
- (uint64_t)CDXTicketExpirationDate;
- (uint64_t)CDXTicketIsStub;
- (uint64_t)CDXTicketTrimmed;
@end

@implementation NSData(CDXTicket)

- (uint64_t)CDXTicketExpirationDate
{
  v1 = MEMORY[0x277CBEAA8];
  LODWORD(v2) = *([a1 bytes] + 12);
  v3 = v2;

  return [v1 dateWithTimeIntervalSince1970:v3];
}

- (uint64_t)CDXTicketIsStub
{
  result = [a1 CDXTicketIsReflected];
  if (result)
  {
    return [a1 CDXTicketIsHolePunch] ^ 1;
  }

  return result;
}

- (uint64_t)CDXTicketTrimmed
{
  v2 = [a1 bytes];
  if ((*v2 & 9) != 0)
  {
    v3 = 16;
  }

  else
  {
    v3 = 16 * v2[3] + 32;
  }

  return [a1 subdataWithRange:{0, v3}];
}

- (BOOL)CDXTicketIsRelatedToTicket:()CDXTicket
{
  v5 = [a1 bytes];
  v6 = [a3 bytes];
  if (*(v5 + 4) != *(v6 + 4) || *(v5 + 8) != *(v6 + 8))
  {
    return 0;
  }

  v9 = [a1 CDXTicketRevision];
  return (v9 - [a3 CDXTicketRevision]) < 8;
}

- (BOOL)CDXTicketWellFormed
{
  v2 = [a1 bytes];
  if ([a1 length] < 0x10)
  {
    return 0;
  }

  if ((*v2 & 9) == 0)
  {
    v3 = 16 * *(v2 + 3) + 32;
    if ((*v2 & 8) == 0)
    {
      goto LABEL_4;
    }

LABEL_9:
    if (*(v2 + 2) || *(v2 + 3) || *(v2 + 1) || *(v2 + 12))
    {
      return 0;
    }

    return [a1 length] >= v3;
  }

  v3 = 16;
  if ((*v2 & 8) != 0)
  {
    goto LABEL_9;
  }

LABEL_4:
  if (*(v2 + 3) && *(v2 + 1) && *(v2 + 2) < *(v2 + 1))
  {
    return [a1 length] >= v3;
  }

  return 0;
}

@end