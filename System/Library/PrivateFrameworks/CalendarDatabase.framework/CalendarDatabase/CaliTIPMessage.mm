@interface CaliTIPMessage
- (CaliTIPMessage)initWithData:(id)data document:(id)document filename:(id)filename scheduleChanges:(id)changes;
- (ICSCalendar)calendar;
- (ICSDocument)document;
- (ICSEvent)event;
- (ICSEvent)masterEvent;
- (NSArray)allOccurrences;
- (NSArray)occurrences;
- (id)description;
- (int64_t)compare:(id)compare;
@end

@implementation CaliTIPMessage

- (CaliTIPMessage)initWithData:(id)data document:(id)document filename:(id)filename scheduleChanges:(id)changes
{
  dataCopy = data;
  documentCopy = document;
  filenameCopy = filename;
  changesCopy = changes;
  v17.receiver = self;
  v17.super_class = CaliTIPMessage;
  v14 = [(CaliTIPMessage *)&v17 init];
  v15 = v14;
  if (v14)
  {
    [(CaliTIPMessage *)v14 setData:dataCopy];
    objc_storeStrong(&v15->_document, document);
    [(CaliTIPMessage *)v15 setFilename:filenameCopy];
    [(CaliTIPMessage *)v15 setScheduleChanges:changesCopy];
  }

  return v15;
}

- (ICSDocument)document
{
  document = self->_document;
  if (!document)
  {
    v4 = [objc_alloc(MEMORY[0x1E69E3CB0]) initWithData:self->_data options:0 error:0];
    v5 = self->_document;
    self->_document = v4;

    document = self->_document;
  }

  return document;
}

- (ICSCalendar)calendar
{
  document = [(CaliTIPMessage *)self document];
  calendar = [document calendar];

  return calendar;
}

- (ICSEvent)event
{
  v47 = *MEMORY[0x1E69E9840];
  event = self->_event;
  if (event)
  {
LABEL_2:
    v3 = event;
    goto LABEL_27;
  }

  calendar = [(CaliTIPMessage *)self calendar];
  componentKeys = [calendar componentKeys];
  if ([componentKeys count])
  {
    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    v7 = componentKeys;
    v8 = [v7 countByEnumeratingWithState:&v41 objects:v46 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v42;
      v35 = componentKeys;
      v36 = v7;
      v33 = *v42;
      while (2)
      {
        v11 = 0;
        v34 = v9;
        do
        {
          if (*v42 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v41 + 1) + 8 * v11);
          v13 = [calendar componentForKey:v12];
          if (v13)
          {
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              v30 = objc_opt_class();
              v31 = objc_opt_class();
              NSLog(&cfstr_ComponentNotSu.isa, v30, v31);
LABEL_24:

              componentKeys = v35;
              goto LABEL_26;
            }
          }

          v14 = [calendar componentOccurrencesForKey:v12];
          v37 = 0u;
          v38 = 0u;
          v39 = 0u;
          v40 = 0u;
          v15 = v14;
          v16 = [v15 countByEnumeratingWithState:&v37 objects:v45 count:16];
          if (v16)
          {
            v17 = v16;
            v18 = *v38;
            while (2)
            {
              for (i = 0; i != v17; ++i)
              {
                if (*v38 != v18)
                {
                  objc_enumerationMutation(v15);
                }

                v20 = *(*(&v37 + 1) + 8 * i);
                objc_opt_class();
                if ((objc_opt_isKindOfClass() & 1) == 0)
                {
                  v22 = objc_opt_class();
                  v23 = objc_opt_class();
                  NSLog(&cfstr_ComponentNotSu.isa, v22, v23);

                  v7 = v36;
                  goto LABEL_24;
                }
              }

              v17 = [v15 countByEnumeratingWithState:&v37 objects:v45 count:16];
              if (v17)
              {
                continue;
              }

              break;
            }
          }

          ++v11;
          v10 = v33;
          v7 = v36;
        }

        while (v11 != v34);
        v9 = [v36 countByEnumeratingWithState:&v41 objects:v46 count:16];
        componentKeys = v35;
        if (v9)
        {
          continue;
        }

        break;
      }
    }

    if ([v7 count] < 2)
    {
      v26 = [v7 objectAtIndexedSubscript:0];
      v27 = [calendar componentForKey:v26];
      if (!v27)
      {
        v28 = [calendar componentOccurrencesForKey:v26];
        if ([v28 count])
        {
          v27 = [v28 objectAtIndexedSubscript:0];
        }

        else
        {
          v27 = 0;
        }
      }

      v29 = self->_event;
      self->_event = v27;

      event = self->_event;
      goto LABEL_2;
    }

    v21 = objc_opt_class();
    NSLog(&cfstr_MoreThanOneEve.isa, v21, [v7 count]);
  }

  else
  {
    v32 = objc_opt_class();
    NSLog(&cfstr_ItipMessageCon.isa, v32);
  }

LABEL_26:

  v3 = 0;
LABEL_27:
  v24 = *MEMORY[0x1E69E9840];

  return v3;
}

- (ICSEvent)masterEvent
{
  event = [(CaliTIPMessage *)self event];
  recurrence_id = [event recurrence_id];

  if (recurrence_id)
  {
    event2 = 0;
  }

  else
  {
    event2 = [(CaliTIPMessage *)self event];
  }

  return event2;
}

- (NSArray)allOccurrences
{
  event = [(CaliTIPMessage *)self event];
  array = [MEMORY[0x1E695DF70] array];
  if (event)
  {
    recurrence_id = [event recurrence_id];

    if (!recurrence_id)
    {
      [array addObject:event];
    }

    calendar = [(CaliTIPMessage *)self calendar];
    v7 = [event uid];
    v8 = [calendar componentOccurrencesForKey:v7];
    [array addObjectsFromArray:v8];
  }

  return array;
}

- (NSArray)occurrences
{
  event = [(CaliTIPMessage *)self event];
  recurrence_id = [event recurrence_id];

  if (recurrence_id)
  {
    v5 = 0;
  }

  else
  {
    calendar = [(CaliTIPMessage *)self calendar];
    v7 = [event uid];
    v5 = [calendar componentOccurrencesForKey:v7];
  }

  return v5;
}

- (int64_t)compare:(id)compare
{
  compareCopy = compare;
  event = [(CaliTIPMessage *)self event];
  event2 = [compareCopy event];

  sequence = [event sequence];
  if (sequence >= [event2 sequence])
  {
    sequence2 = [event sequence];
    if (sequence2 <= [event2 sequence])
    {
      dtstamp = [event dtstamp];
      value = [dtstamp value];
      dtstamp2 = [event2 dtstamp];
      value2 = [dtstamp2 value];
      v8 = [value compare:value2];
    }

    else
    {
      v8 = 1;
    }
  }

  else
  {
    v8 = -1;
  }

  return v8;
}

- (id)description
{
  calendar = [(CaliTIPMessage *)self calendar];
  event = [(CaliTIPMessage *)self event];
  v14 = MEMORY[0x1E696AEC0];
  v5 = objc_opt_class();
  v6 = [MEMORY[0x1E69E3C68] ICSStringFromMethod:{objc_msgSend(calendar, "method")}];
  v7 = [event uid];
  sequence = [event sequence];
  dtstamp = [event dtstamp];
  value = [dtstamp value];
  summary = [event summary];
  v12 = [v14 stringWithFormat:@"%@ <%p> { %@ %@ %ld %@ %@}", v5, self, v6, v7, sequence, value, summary];

  return v12;
}

@end