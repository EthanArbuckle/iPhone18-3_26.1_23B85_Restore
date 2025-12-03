@interface SGExternalEventExtraction
- (SGExternalEventExtraction)initWithCoder:(id)coder;
- (SGExternalEventExtraction)initWithIdentifier:(id)identifier fallbackIdentifier:(id)fallbackIdentifier status:(int64_t)status category:(int64_t)category title:(id)title content:(id)content creationDate:(id)date startTime:(id)self0 startTimeZone:(id)self1 endTime:(id)self2 endTimeZone:(id)self3 isAllDay:(BOOL)self4 locations:(id)self5 icsAttachmentData:(id)self6 url:(id)self7;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SGExternalEventExtraction

- (void)encodeWithCoder:(id)coder
{
  identifier = self->_identifier;
  coderCopy = coder;
  [coderCopy encodeObject:identifier forKey:@"identifier"];
  [coderCopy encodeObject:self->_fallbackIdentifier forKey:@"fallbackIdentifier"];
  [coderCopy encodeInteger:self->_status forKey:@"status"];
  [coderCopy encodeInteger:self->_category forKey:@"category"];
  [coderCopy encodeObject:self->_title forKey:@"title"];
  [coderCopy encodeObject:self->_content forKey:@"content"];
  [coderCopy encodeObject:self->_creationDate forKey:@"creationDate"];
  [coderCopy encodeObject:self->_startTime forKey:@"startTime"];
  [coderCopy encodeObject:self->_startTimeZone forKey:@"startTimeZone"];
  [coderCopy encodeObject:self->_endTime forKey:@"endTime"];
  [coderCopy encodeObject:self->_endTimeZone forKey:@"endTimeZone"];
  [coderCopy encodeBool:self->_isAllDay forKey:@"isAllDay"];
  [coderCopy encodeObject:self->_locations forKey:@"locations"];
  [coderCopy encodeObject:self->_icsAttachmentData forKey:@"icsAttachmentData"];
  [coderCopy encodeObject:self->_url forKey:@"url"];
}

- (SGExternalEventExtraction)initWithCoder:(id)coder
{
  v60 = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v57.receiver = self;
  v57.super_class = SGExternalEventExtraction;
  v6 = [(SGExternalEventExtraction *)&v57 init];
  if (!v6)
  {
LABEL_18:
    v24 = v6;
    goto LABEL_19;
  }

  v7 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{objc_opt_class(), 0}];
  v8 = [coderCopy decodeObjectOfClasses:v7 forKey:@"identifier"];

  if (v8)
  {
    v9 = v8;
    identifier = v6->_identifier;
    v6->_identifier = v9;
  }

  else
  {
    identifier = [MEMORY[0x1E696AAA8] currentHandler];
    [identifier handleFailureInMethod:a2 object:v6 file:@"SGExternalExtraction.m" lineNumber:63 description:{@"nonnull property %s *%s was null when decoded", "NSString", "identifier"}];
  }

  v11 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{objc_opt_class(), 0}];
  v12 = [coderCopy decodeObjectOfClasses:v11 forKey:@"fallbackIdentifier"];
  fallbackIdentifier = v6->_fallbackIdentifier;
  v6->_fallbackIdentifier = v12;

  v14 = [coderCopy decodeIntegerForKey:@"status"];
  v15 = v14;
  if (v14 >= 8)
  {
    v16 = sgLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 134217984;
      v59 = v15;
      v17 = "SGExternalEventExtraction: invalid statusValue: %ld";
LABEL_21:
      _os_log_error_impl(&dword_1BA729000, v16, OS_LOG_TYPE_ERROR, v17, buf, 0xCu);
      goto LABEL_12;
    }

    goto LABEL_12;
  }

  v6->_status = v14;
  v18 = [coderCopy decodeIntegerForKey:@"category"];
  v19 = v18;
  if (v18 < 0xC)
  {
    v6->_category = v18;
    v20 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{objc_opt_class(), 0}];
    v21 = [coderCopy decodeObjectOfClasses:v20 forKey:@"title"];

    if (v21)
    {
      v22 = v21;
      title = v6->_title;
      v6->_title = v22;
    }

    else
    {
      title = [MEMORY[0x1E696AAA8] currentHandler];
      [title handleFailureInMethod:a2 object:v6 file:@"SGExternalExtraction.m" lineNumber:77 description:{@"nonnull property %s *%s was null when decoded", "NSString", "title"}];
    }

    v25 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{objc_opt_class(), 0}];
    v26 = [coderCopy decodeObjectOfClasses:v25 forKey:@"content"];
    content = v6->_content;
    v6->_content = v26;

    v28 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{objc_opt_class(), 0}];
    v29 = [coderCopy decodeObjectOfClasses:v28 forKey:@"creationDate"];

    if (v29)
    {
      v30 = v29;
      creationDate = v6->_creationDate;
      v6->_creationDate = v30;
    }

    else
    {
      creationDate = [MEMORY[0x1E696AAA8] currentHandler];
      [creationDate handleFailureInMethod:a2 object:v6 file:@"SGExternalExtraction.m" lineNumber:79 description:{@"nonnull property %s *%s was null when decoded", "NSDate", "creationDate"}];
    }

    v32 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{objc_opt_class(), 0}];
    v33 = [coderCopy decodeObjectOfClasses:v32 forKey:@"startTime"];
    startTime = v6->_startTime;
    v6->_startTime = v33;

    v35 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{objc_opt_class(), 0}];
    v36 = [coderCopy decodeObjectOfClasses:v35 forKey:@"startTimeZone"];
    startTimeZone = v6->_startTimeZone;
    v6->_startTimeZone = v36;

    v38 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{objc_opt_class(), 0}];
    v39 = [coderCopy decodeObjectOfClasses:v38 forKey:@"endTime"];
    endTime = v6->_endTime;
    v6->_endTime = v39;

    v41 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{objc_opt_class(), 0}];
    v42 = [coderCopy decodeObjectOfClasses:v41 forKey:@"endTimeZone"];
    endTimeZone = v6->_endTimeZone;
    v6->_endTimeZone = v42;

    v6->_isAllDay = [coderCopy decodeBoolForKey:@"isAllDay"];
    v44 = objc_alloc(MEMORY[0x1E695DFD8]);
    v45 = objc_opt_class();
    v46 = [v44 initWithObjects:{v45, objc_opt_class(), 0}];
    v47 = [coderCopy decodeObjectOfClasses:v46 forKey:@"locations"];
    locations = v6->_locations;
    v6->_locations = v47;

    v49 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{objc_opt_class(), 0}];
    v50 = [coderCopy decodeObjectOfClasses:v49 forKey:@"icsAttachmentData"];
    icsAttachmentData = v6->_icsAttachmentData;
    v6->_icsAttachmentData = v50;

    v52 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{objc_opt_class(), 0}];
    v53 = [coderCopy decodeObjectOfClasses:v52 forKey:@"url"];
    url = v6->_url;
    v6->_url = v53;

    goto LABEL_18;
  }

  v16 = sgLogHandle();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    *buf = 134217984;
    v59 = v19;
    v17 = "SGExternalEventExtraction: invalid categoryValue: %ld";
    goto LABEL_21;
  }

LABEL_12:

  v24 = 0;
LABEL_19:

  v55 = *MEMORY[0x1E69E9840];
  return v24;
}

- (SGExternalEventExtraction)initWithIdentifier:(id)identifier fallbackIdentifier:(id)fallbackIdentifier status:(int64_t)status category:(int64_t)category title:(id)title content:(id)content creationDate:(id)date startTime:(id)self0 startTimeZone:(id)self1 endTime:(id)self2 endTimeZone:(id)self3 isAllDay:(BOOL)self4 locations:(id)self5 icsAttachmentData:(id)self6 url:(id)self7
{
  identifierCopy = identifier;
  fallbackIdentifierCopy = fallbackIdentifier;
  fallbackIdentifierCopy2 = fallbackIdentifier;
  titleCopy = title;
  contentCopy = content;
  dateCopy = date;
  timeCopy = time;
  zoneCopy = zone;
  endTimeCopy = endTime;
  timeZoneCopy = timeZone;
  locationsCopy = locations;
  dataCopy = data;
  urlCopy = url;
  v40.receiver = self;
  v40.super_class = SGExternalEventExtraction;
  v25 = [(SGExternalEventExtraction *)&v40 init];
  v26 = v25;
  if (v25)
  {
    objc_storeStrong(&v25->_identifier, identifier);
    objc_storeStrong(&v26->_fallbackIdentifier, fallbackIdentifierCopy);
    v26->_status = status;
    v26->_category = category;
    objc_storeStrong(&v26->_title, title);
    objc_storeStrong(&v26->_content, content);
    objc_storeStrong(&v26->_creationDate, date);
    objc_storeStrong(&v26->_startTime, time);
    objc_storeStrong(&v26->_startTimeZone, zone);
    objc_storeStrong(&v26->_endTime, endTime);
    objc_storeStrong(&v26->_endTimeZone, timeZone);
    v26->_isAllDay = day;
    objc_storeStrong(&v26->_locations, locations);
    objc_storeStrong(&v26->_icsAttachmentData, data);
    objc_storeStrong(&v26->_url, url);
  }

  return v26;
}

@end