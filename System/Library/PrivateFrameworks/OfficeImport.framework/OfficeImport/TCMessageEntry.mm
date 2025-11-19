@interface TCMessageEntry
+ (void)initialize;
- (BOOL)isEqual:(id)a3;
- (TCMessageEntry)initWithTag:(int)a3 affectedObject:(id)a4 text:(id)a5 parameters:(char *)a6;
- (id)description;
- (id)getParameter:(unsigned int)a3;
- (int64_t)timeStampCompare:(id)a3;
- (void)addAffectedObject:(id)a3;
- (void)mergeEntries:(id)a3;
@end

@implementation TCMessageEntry

+ (void)initialize
{
  if (!percent)
  {
    v2 = objc_alloc_init(MEMORY[0x277CCAB50]);
    v3 = percent;
    percent = v2;

    v4 = percent;

    [v4 addCharactersInString:@"%"];
  }
}

- (TCMessageEntry)initWithTag:(int)a3 affectedObject:(id)a4 text:(id)a5 parameters:(char *)a6
{
  v10 = a4;
  v11 = a5;
  v25 = a6;
  v12 = [(TCMessageEntry *)self init];
  v13 = v12;
  if (v12)
  {
    v12->m_tag = a3;
    v12->m_count = 1;
    [(TCMessageEntry *)v12 addAffectedObject:v10];
    v24 = v25;
    v14 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:v11 arguments:v25];
    m_text = v13->m_text;
    v13->m_text = v14;

    [v11 length];
    v16 = [v11 rangeOfCharacterFromSet:percent];
    for (i = v17; v16 != 0x7FFFFFFFFFFFFFFFLL; i = v22)
    {
      v19 = [v11 length];
      v20 = v16 + i;
      v21 = [v11 characterAtIndex:v20];
      if (v21 != 37 && v21 != 64)
      {
        break;
      }

      v16 = [v11 rangeOfCharacterFromSet:percent options:0 range:{v20 + 1, v19 - (v20 + 1), v24}];
    }
  }

  return v13;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  if (v5 == objc_opt_class())
  {
    v7 = v4;
    if (self->m_tag == *(v7 + 4) && [(NSString *)self->m_text isEqualToString:*(v7 + 3)])
    {
      v8 = [(TCMessageEntry *)self additionalText];
      v9 = [v7 additionalText];
      if ([v8 isEqualToString:v9])
      {
        m_parameters = self->m_parameters;
        if (m_parameters == *(v7 + 4))
        {
          v6 = 1;
        }

        else
        {
          v6 = [(NSArray *)m_parameters isEqual:?];
        }
      }

      else
      {
        v6 = 0;
      }
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)getParameter:(unsigned int)a3
{
  if ([(NSArray *)self->m_parameters count]<= a3)
  {
    v5 = 0;
  }

  else
  {
    v5 = [(NSArray *)self->m_parameters objectAtIndex:a3];
  }

  return v5;
}

- (int64_t)timeStampCompare:(id)a3
{
  m_timeStamp = self->m_timeStamp;
  v4 = *(a3 + 1);
  v5 = m_timeStamp >= v4;
  v6 = m_timeStamp > v4;
  if (v5)
  {
    return v6;
  }

  else
  {
    return -1;
  }
}

- (id)description
{
  m_count = self->m_count;
  if (m_count == 1)
  {
    v3 = self->m_text;
  }

  else
  {
    v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ (%dx)", self->m_text, m_count];
  }

  return v3;
}

- (void)mergeEntries:(id)a3
{
  v8 = a3;
  self->m_count += [v8 getCount];
  v4 = [v8 affectedObjects];
  if ([v4 count])
  {
    m_affectedObjects = self->m_affectedObjects;
    if (!m_affectedObjects)
    {
      v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v7 = self->m_affectedObjects;
      self->m_affectedObjects = v6;

      m_affectedObjects = self->m_affectedObjects;
    }

    [(NSMutableArray *)m_affectedObjects addObjectsFromArray:v4];
  }
}

- (void)addAffectedObject:(id)a3
{
  v7 = a3;
  if (v7)
  {
    m_affectedObjects = self->m_affectedObjects;
    if (!m_affectedObjects)
    {
      v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v6 = self->m_affectedObjects;
      self->m_affectedObjects = v5;

      m_affectedObjects = self->m_affectedObjects;
    }

    [(NSMutableArray *)m_affectedObjects addObject:v7];
  }
}

@end