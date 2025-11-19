@interface CHSSimpleWidgetRefreshStrategy
@end

@implementation CHSSimpleWidgetRefreshStrategy

void *__64___CHSSimpleWidgetRefreshStrategy_appendDescriptionToFormatter___block_invoke(void *result)
{
  v1 = result[4];
  if (*(v1 + 8))
  {
    v2 = result[5];
  }

  else if (*(v1 + 16) == 1)
  {
    v2 = result[5];
  }

  else
  {
    if (*(v1 + 17) != 1)
    {
      return result;
    }

    v2 = result[5];
  }

  return [v2 appendObject:? withName:?];
}

@end