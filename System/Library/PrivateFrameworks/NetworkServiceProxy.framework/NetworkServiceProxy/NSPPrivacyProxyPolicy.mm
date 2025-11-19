@interface NSPPrivacyProxyPolicy
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsConditions:(id)a3;
- (int)conditionsAtIndex:(unint64_t)a3;
- (void)copyTo:(id)a3;
- (void)dealloc;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation NSPPrivacyProxyPolicy

- (void)dealloc
{
  PBRepeatedInt32Clear();
  v3.receiver = self;
  v3.super_class = NSPPrivacyProxyPolicy;
  [(NSPPrivacyProxyPolicy *)&v3 dealloc];
}

- (int)conditionsAtIndex:(unint64_t)a3
{
  p_conditions = &self->_conditions;
  count = self->_conditions.count;
  if (count <= a3)
  {
    v6 = MEMORY[0x1E695DF30];
    v7 = *MEMORY[0x1E695DA20];
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"idx (%lu) is out of range (%lu)", a3, count];
    v9 = [v6 exceptionWithName:v7 reason:v8 userInfo:0];
    [v9 raise];
  }

  return p_conditions->list[a3];
}

- (int)StringAsConditions:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"UNKNOWN"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"SAFARI_UNENCRYPTED"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"SAFARI_DNS"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"SAFARI_TRACKER"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"MAIL_TRACKER"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"SAFARI_ALL"])
  {
    v4 = 5;
  }

  else if ([v3 isEqualToString:@"SAFARI_HTTP"])
  {
    v4 = 6;
  }

  else if ([v3 isEqualToString:@"ANY_UNENCRYPTED"])
  {
    v4 = 7;
  }

  else if ([v3 isEqualToString:@"ANY_DNS"])
  {
    v4 = 8;
  }

  else if ([v3 isEqualToString:@"ANY_KNOWN_TRACKER"])
  {
    v4 = 9;
  }

  else if ([v3 isEqualToString:@"ANY_APP_TRACKER"])
  {
    v4 = 10;
  }

  else if ([v3 isEqualToString:@"NEWS_URL_RESOLUTION"])
  {
    v4 = 11;
  }

  else if ([v3 isEqualToString:@"EXPOSURE_NOTIFICATIONS"])
  {
    v4 = 12;
  }

  else if ([v3 isEqualToString:@"APPLE_CERTIFICATES"])
  {
    v4 = 13;
  }

  else if ([v3 isEqualToString:@"NETWORK_TOOLS"])
  {
    v4 = 14;
  }

  else if ([v3 isEqualToString:@"METRICS_UPLOAD"])
  {
    v4 = 15;
  }

  else if ([v3 isEqualToString:@"BRANDED_CALLING"])
  {
    v4 = 16;
  }

  else if ([v3 isEqualToString:@"NEWS_EMBEDDED_CONTENT"])
  {
    v4 = 17;
  }

  else if ([v3 isEqualToString:@"APP_METRICS"])
  {
    v4 = 18;
  }

  else if ([v3 isEqualToString:@"SAFARI_PRIVATE_UNENCRYPTED"])
  {
    v4 = 19;
  }

  else if ([v3 isEqualToString:@"SAFARI_PRIVATE_DNS"])
  {
    v4 = 20;
  }

  else if ([v3 isEqualToString:@"SAFARI_PRIVATE_ALL"])
  {
    v4 = 21;
  }

  else if ([v3 isEqualToString:@"SAFARI_METRICS"])
  {
    v4 = 22;
  }

  else if ([v3 isEqualToString:@"PROMOTED_CONTENT"])
  {
    v4 = 23;
  }

  else if ([v3 isEqualToString:@"POSTBACK_FETCH"])
  {
    v4 = 24;
  }

  else if ([v3 isEqualToString:@"PM_PR_ICON_FETCHING"])
  {
    v4 = 25;
  }

  else if ([v3 isEqualToString:@"LAUNCH_WARNING_DETAILS"])
  {
    v4 = 26;
  }

  else if ([v3 isEqualToString:@"PODCASTS_LINK_PRESENTATION"])
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
  v5 = [(NSPPrivacyProxyPolicy *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
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

    [v3 setObject:v5 forKey:@"conditions"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
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

- (void)copyTo:(id)a3
{
  v7 = a3;
  if ([(NSPPrivacyProxyPolicy *)self conditionsCount])
  {
    [v7 clearConditions];
    v4 = [(NSPPrivacyProxyPolicy *)self conditionsCount];
    if (v4)
    {
      v5 = v4;
      for (i = 0; i != v5; ++i)
      {
        [v7 addConditions:{-[NSPPrivacyProxyPolicy conditionsAtIndex:](self, "conditionsAtIndex:", i)}];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v3 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  PBRepeatedInt32Copy();
  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v3 = a3;
  if ([v3 isMemberOfClass:objc_opt_class()])
  {
    IsEqual = PBRepeatedInt32IsEqual();
  }

  else
  {
    IsEqual = 0;
  }

  return IsEqual;
}

- (void)mergeFrom:(id)a3
{
  v7 = a3;
  v4 = [v7 conditionsCount];
  if (v4)
  {
    v5 = v4;
    for (i = 0; i != v5; ++i)
    {
      -[NSPPrivacyProxyPolicy addConditions:](self, "addConditions:", [v7 conditionsAtIndex:i]);
    }
  }
}

@end