@interface NUChannelPort
@end

@implementation NUChannelPort

uint64_t __26___NUChannelPort_subports__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 channel];
  v6 = [v5 name];
  v7 = [v4 channel];

  v8 = [v7 name];
  v9 = [v6 compare:v8];

  return v9;
}

uint64_t __35___NUChannelPort__subportMatching___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 channel];
  v5 = [v4 type];

  if (v5 == 5)
  {
    v6 = 0;
  }

  else
  {
    v7 = *(a1 + 32);
    v8 = [v3 channel];
    v6 = [v7 match:v8];
  }

  return v6;
}

BOOL __32___NUChannelPort_elementSubport__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 channel];
  v3 = [v2 type] == 5;

  return v3;
}

uint64_t __35___NUChannelPort_hasSubConnections__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 hasConnections])
  {
    v3 = 1;
  }

  else
  {
    v3 = [v2 hasSubConnections];
  }

  return v3;
}

uint64_t __37___NUChannelPort_hasConnectedSubport__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 isConnected])
  {
    v3 = 1;
  }

  else
  {
    v3 = [v2 hasConnectedSubport];
  }

  return v3;
}

@end