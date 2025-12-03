@interface NSPPrivacyProxyPolicy
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsConditions:(id)conditions;
- (int)conditionsAtIndex:(unint64_t)index;
- (void)copyTo:(id)to;
- (void)dealloc;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation NSPPrivacyProxyPolicy

- (void)dealloc
{
  PBRepeatedInt32Clear();
  v3.receiver = self;
  v3.super_class = NSPPrivacyProxyPolicy;
  [(NSPPrivacyProxyPolicy *)&v3 dealloc];
}

- (int)conditionsAtIndex:(unint64_t)index
{
  p_conditions = &self->_conditions;
  count = self->_conditions.count;
  if (count <= index)
  {
    v6 = MEMORY[0x1E695DF30];
    v7 = *MEMORY[0x1E695DA20];
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"idx (%lu) is out of range (%lu)", index, count];
    v9 = [v6 exceptionWithName:v7 reason:v8 userInfo:0];
    [v9 raise];
  }

  return p_conditions->list[index];
}

- (int)StringAsConditions:(id)conditions
{
  conditionsCopy = conditions;
  if ([conditionsCopy isEqualToString:@"UNKNOWN"])
  {
    v4 = 0;
  }

  else if ([conditionsCopy isEqualToString:@"SAFARI_UNENCRYPTED"])
  {
    v4 = 1;
  }

  else if ([conditionsCopy isEqualToString:@"SAFARI_DNS"])
  {
    v4 = 2;
  }

  else if ([conditionsCopy isEqualToString:@"SAFARI_TRACKER"])
  {
    v4 = 3;
  }

  else if ([conditionsCopy isEqualToString:@"MAIL_TRACKER"])
  {
    v4 = 4;
  }

  else if ([conditionsCopy isEqualToString:@"SAFARI_ALL"])
  {
    v4 = 5;
  }

  else if ([conditionsCopy isEqualToString:@"SAFARI_HTTP"])
  {
    v4 = 6;
  }

  else if ([conditionsCopy isEqualToString:@"ANY_UNENCRYPTED"])
  {
    v4 = 7;
  }

  else if ([conditionsCopy isEqualToString:@"ANY_DNS"])
  {
    v4 = 8;
  }

  else if ([conditionsCopy isEqualToString:@"ANY_KNOWN_TRACKER"])
  {
    v4 = 9;
  }

  else if ([conditionsCopy isEqualToString:@"ANY_APP_TRACKER"])
  {
    v4 = 10;
  }

  else if ([conditionsCopy isEqualToString:@"NEWS_URL_RESOLUTION"])
  {
    v4 = 11;
  }

  else if ([conditionsCopy isEqualToString:@"EXPOSURE_NOTIFICATIONS"])
  {
    v4 = 12;
  }

  else if ([conditionsCopy isEqualToString:@"APPLE_CERTIFICATES"])
  {
    v4 = 13;
  }

  else if ([conditionsCopy isEqualToString:@"NETWORK_TOOLS"])
  {
    v4 = 14;
  }

  else if ([conditionsCopy isEqualToString:@"METRICS_UPLOAD"])
  {
    v4 = 15;
  }

  else if ([conditionsCopy isEqualToString:@"BRANDED_CALLING"])
  {
    v4 = 16;
  }

  else if ([conditionsCopy isEqualToString:@"NEWS_EMBEDDED_CONTENT"])
  {
    v4 = 17;
  }

  else if ([conditionsCopy isEqualToString:@"APP_METRICS"])
  {
    v4 = 18;
  }

  else if ([conditionsCopy isEqualToString:@"SAFARI_PRIVATE_UNENCRYPTED"])
  {
    v4 = 19;
  }

  else if ([conditionsCopy isEqualToString:@"SAFARI_PRIVATE_DNS"])
  {
    v4 = 20;
  }

  else if ([conditionsCopy isEqualToString:@"SAFARI_PRIVATE_ALL"])
  {
    v4 = 21;
  }

  else if ([conditionsCopy isEqualToString:@"SAFARI_METRICS"])
  {
    v4 = 22;
  }

  else if ([conditionsCopy isEqualToString:@"PROMOTED_CONTENT"])
  {
    v4 = 23;
  }

  else if ([conditionsCopy isEqualToString:@"POSTBACK_FETCH"])
  {
    v4 = 24;
  }

  else if ([conditionsCopy isEqualToString:@"PM_PR_ICON_FETCHING"])
  {
    v4 = 25;
  }

  else if ([conditionsCopy isEqualToString:@"LAUNCH_WARNING_DETAILS"])
  {
    v4 = 26;
  }

  else if ([conditionsCopy isEqualToString:@"PODCASTS_LINK_PRESENTATION"])
  {
    v4 = 27;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = NSPPrivacyProxyPolicy;
  v4 = [(NSPPrivacyProxyPolicy *)&v8 description];
  dictionaryRepresentation = [(NSPPrivacyProxyPolicy *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  p_conditions = &self->_conditions;
  if (self->_conditions.count)
  {
    v5 = [MEMORY[0x1E695DF70] arrayWithCapacity:?];
    if (p_conditions->count)
    {
      v6 = 0;
      do
      {
        v7 = p_conditions->list[v6];
        if (v7 >= 0x1C)
        {
          v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", p_conditions->list[v6]];
        }

        else
        {
          v8 = off_1E7A310A0[v7];
        }

        [v5 addObject:v8];

        ++v6;
      }

      while (v6 < p_conditions->count);
    }

    [dictionary setObject:v5 forKey:@"conditions"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  p_conditions = &self->_conditions;
  if (p_conditions->count)
  {
    PBDataWriterPlaceMark();
    if (p_conditions->count)
    {
      v6 = 0;
      do
      {
        v7 = p_conditions->list[v6];
        PBDataWriterWriteInt32Field();
        ++v6;
      }

      while (v6 < p_conditions->count);
    }

    PBDataWriterRecallMark();
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if ([(NSPPrivacyProxyPolicy *)self conditionsCount])
  {
    [toCopy clearConditions];
    conditionsCount = [(NSPPrivacyProxyPolicy *)self conditionsCount];
    if (conditionsCount)
    {
      v5 = conditionsCount;
      for (i = 0; i != v5; ++i)
      {
        [toCopy addConditions:{-[NSPPrivacyProxyPolicy conditionsAtIndex:](self, "conditionsAtIndex:", i)}];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v3 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  PBRepeatedInt32Copy();
  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    IsEqual = PBRepeatedInt32IsEqual();
  }

  else
  {
    IsEqual = 0;
  }

  return IsEqual;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  conditionsCount = [fromCopy conditionsCount];
  if (conditionsCount)
  {
    v5 = conditionsCount;
    for (i = 0; i != v5; ++i)
    {
      -[NSPPrivacyProxyPolicy addConditions:](self, "addConditions:", [fromCopy conditionsAtIndex:i]);
    }
  }
}

@end