@interface TCMessageEntry
+ (void)initialize;
- (BOOL)isEqual:(id)equal;
- (TCMessageEntry)initWithTag:(int)tag affectedObject:(id)object text:(id)text parameters:(char *)parameters;
- (id)description;
- (id)getParameter:(unsigned int)parameter;
- (int64_t)timeStampCompare:(id)compare;
- (void)addAffectedObject:(id)object;
- (void)mergeEntries:(id)entries;
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

- (TCMessageEntry)initWithTag:(int)tag affectedObject:(id)object text:(id)text parameters:(char *)parameters
{
  objectCopy = object;
  textCopy = text;
  parametersCopy = parameters;
  v12 = [(TCMessageEntry *)self init];
  v13 = v12;
  if (v12)
  {
    v12->m_tag = tag;
    v12->m_count = 1;
    [(TCMessageEntry *)v12 addAffectedObject:objectCopy];
    v24 = parametersCopy;
    v14 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:textCopy arguments:parametersCopy];
    m_text = v13->m_text;
    v13->m_text = v14;

    [textCopy length];
    v16 = [textCopy rangeOfCharacterFromSet:percent];
    for (i = v17; v16 != 0x7FFFFFFFFFFFFFFFLL; i = v22)
    {
      v19 = [textCopy length];
      v20 = v16 + i;
      v21 = [textCopy characterAtIndex:v20];
      if (v21 != 37 && v21 != 64)
      {
        break;
      }

      v16 = [textCopy rangeOfCharacterFromSet:percent options:0 range:{v20 + 1, v19 - (v20 + 1), v24}];
    }
  }

  return v13;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = objc_opt_class();
  if (v5 == objc_opt_class())
  {
    v7 = equalCopy;
    if (self->m_tag == *(v7 + 4) && [(NSString *)self->m_text isEqualToString:*(v7 + 3)])
    {
      additionalText = [(TCMessageEntry *)self additionalText];
      additionalText2 = [v7 additionalText];
      if ([additionalText isEqualToString:additionalText2])
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

- (id)getParameter:(unsigned int)parameter
{
  if ([(NSArray *)self->m_parameters count]<= parameter)
  {
    v5 = 0;
  }

  else
  {
    v5 = [(NSArray *)self->m_parameters objectAtIndex:parameter];
  }

  return v5;
}

- (int64_t)timeStampCompare:(id)compare
{
  m_timeStamp = self->m_timeStamp;
  v4 = *(compare + 1);
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
    m_count = self->m_text;
  }

  else
  {
    m_count = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ (%dx)", self->m_text, m_count];
  }

  return m_count;
}

- (void)mergeEntries:(id)entries
{
  entriesCopy = entries;
  self->m_count += [entriesCopy getCount];
  affectedObjects = [entriesCopy affectedObjects];
  if ([affectedObjects count])
  {
    m_affectedObjects = self->m_affectedObjects;
    if (!m_affectedObjects)
    {
      v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v7 = self->m_affectedObjects;
      self->m_affectedObjects = v6;

      m_affectedObjects = self->m_affectedObjects;
    }

    [(NSMutableArray *)m_affectedObjects addObjectsFromArray:affectedObjects];
  }
}

- (void)addAffectedObject:(id)object
{
  objectCopy = object;
  if (objectCopy)
  {
    m_affectedObjects = self->m_affectedObjects;
    if (!m_affectedObjects)
    {
      v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v6 = self->m_affectedObjects;
      self->m_affectedObjects = v5;

      m_affectedObjects = self->m_affectedObjects;
    }

    [(NSMutableArray *)m_affectedObjects addObject:objectCopy];
  }
}

@end