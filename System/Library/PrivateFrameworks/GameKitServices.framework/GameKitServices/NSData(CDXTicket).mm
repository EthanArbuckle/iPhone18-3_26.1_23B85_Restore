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
  LODWORD(v2) = *([self bytes] + 12);
  v3 = v2;

  return [v1 dateWithTimeIntervalSince1970:v3];
}

- (uint64_t)CDXTicketIsStub
{
  result = [self CDXTicketIsReflected];
  if (result)
  {
    return [self CDXTicketIsHolePunch] ^ 1;
  }

  return result;
}

- (uint64_t)CDXTicketTrimmed
{
  bytes = [self bytes];
  if ((*bytes & 9) != 0)
  {
    v3 = 16;
  }

  else
  {
    v3 = 16 * bytes[3] + 32;
  }

  return [self subdataWithRange:{0, v3}];
}

- (BOOL)CDXTicketIsRelatedToTicket:()CDXTicket
{
  bytes = [self bytes];
  bytes2 = [a3 bytes];
  if (*(bytes + 4) != *(bytes2 + 4) || *(bytes + 8) != *(bytes2 + 8))
  {
    return 0;
  }

  cDXTicketRevision = [self CDXTicketRevision];
  return (cDXTicketRevision - [a3 CDXTicketRevision]) < 8;
}

- (BOOL)CDXTicketWellFormed
{
  bytes = [self bytes];
  if ([self length] < 0x10)
  {
    return 0;
  }

  if ((*bytes & 9) == 0)
  {
    v3 = 16 * *(bytes + 3) + 32;
    if ((*bytes & 8) == 0)
    {
      goto LABEL_4;
    }

LABEL_9:
    if (*(bytes + 2) || *(bytes + 3) || *(bytes + 1) || *(bytes + 12))
    {
      return 0;
    }

    return [self length] >= v3;
  }

  v3 = 16;
  if ((*bytes & 8) != 0)
  {
    goto LABEL_9;
  }

LABEL_4:
  if (*(bytes + 3) && *(bytes + 1) && *(bytes + 2) < *(bytes + 1))
  {
    return [self length] >= v3;
  }

  return 0;
}

@end