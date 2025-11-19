@interface CaliTIPMessage
- (CaliTIPMessage)initWithData:(id)a3 document:(id)a4 filename:(id)a5 scheduleChanges:(id)a6;
- (ICSCalendar)calendar;
- (ICSDocument)document;
- (ICSEvent)event;
- (ICSEvent)masterEvent;
- (NSArray)allOccurrences;
- (NSArray)occurrences;
- (id)description;
- (int64_t)compare:(id)a3;
@end

@implementation CaliTIPMessage

- (CaliTIPMessage)initWithData:(id)a3 document:(id)a4 filename:(id)a5 scheduleChanges:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v17.receiver = self;
  v17.super_class = CaliTIPMessage;
  v14 = [(CaliTIPMessage *)&v17 init];
  v15 = v14;
  if (v14)
  {
    [(CaliTIPMessage *)v14 setData:v10];
    objc_storeStrong(&v15->_document, a4);
    [(CaliTIPMessage *)v15 setFilename:v12];
    [(CaliTIPMessage *)v15 setScheduleChanges:v13];
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
  v2 = [(CaliTIPMessage *)self document];
  v3 = [v2 calendar];

  return v3;
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

  v5 = [(CaliTIPMessage *)self calendar];
  v6 = [v5 componentKeys];
  if ([v6 count])
  {
    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    v7 = v6;
    v8 = [v7 countByEnumeratingWithState:&v41 objects:v46 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v42;
      v35 = v6;
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
          v13 = [v5 componentForKey:v12];
          if (v13)
          {
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              v30 = objc_opt_class();
              v31 = objc_opt_class();
              NSLog(&cfstr_ComponentNotSu.isa, v30, v31);
LABEL_24:

              v6 = v35;
              goto LABEL_26;
            }
          }

          v14 = [v5 componentOccurrencesForKey:v12];
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
        v6 = v35;
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
      v27 = [v5 componentForKey:v26];
      if (!v27)
      {
        v28 = [v5 componentOccurrencesForKey:v26];
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
  v3 = [(CaliTIPMessage *)self event];
  v4 = [v3 recurrence_id];

  if (v4)
  {
    v5 = 0;
  }

  else
  {
    v5 = [(CaliTIPMessage *)self event];
  }

  return v5;
}

- (NSArray)allOccurrences
{
  v3 = [(CaliTIPMessage *)self event];
  v4 = [MEMORY[0x1E695DF70] array];
  if (v3)
  {
    v5 = [v3 recurrence_id];

    if (!v5)
    {
      [v4 addObject:v3];
    }

    v6 = [(CaliTIPMessage *)self calendar];
    v7 = [v3 uid];
    v8 = [v6 componentOccurrencesForKey:v7];
    [v4 addObjectsFromArray:v8];
  }

  return v4;
}

- (NSArray)occurrences
{
  v3 = [(CaliTIPMessage *)self event];
  v4 = [v3 recurrence_id];

  if (v4)
  {
    v5 = 0;
  }

  else
  {
    v6 = [(CaliTIPMessage *)self calendar];
    v7 = [v3 uid];
    v5 = [v6 componentOccurrencesForKey:v7];
  }

  return v5;
}

- (int64_t)compare:(id)a3
{
  v4 = a3;
  v5 = [(CaliTIPMessage *)self event];
  v6 = [v4 event];

  v7 = [v5 sequence];
  if (v7 >= [v6 sequence])
  {
    v9 = [v5 sequence];
    if (v9 <= [v6 sequence])
    {
      v10 = [v5 dtstamp];
      v11 = [v10 value];
      v12 = [v6 dtstamp];
      v13 = [v12 value];
      v8 = [v11 compare:v13];
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
  v3 = [(CaliTIPMessage *)self calendar];
  v4 = [(CaliTIPMessage *)self event];
  v14 = MEMORY[0x1E696AEC0];
  v5 = objc_opt_class();
  v6 = [MEMORY[0x1E69E3C68] ICSStringFromMethod:{objc_msgSend(v3, "method")}];
  v7 = [v4 uid];
  v8 = [v4 sequence];
  v9 = [v4 dtstamp];
  v10 = [v9 value];
  v11 = [v4 summary];
  v12 = [v14 stringWithFormat:@"%@ <%p> { %@ %@ %ld %@ %@}", v5, self, v6, v7, v8, v10, v11];

  return v12;
}

@end