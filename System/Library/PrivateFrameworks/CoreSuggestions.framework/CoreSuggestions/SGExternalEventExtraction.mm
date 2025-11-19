@interface SGExternalEventExtraction
- (SGExternalEventExtraction)initWithCoder:(id)a3;
- (SGExternalEventExtraction)initWithIdentifier:(id)a3 fallbackIdentifier:(id)a4 status:(int64_t)a5 category:(int64_t)a6 title:(id)a7 content:(id)a8 creationDate:(id)a9 startTime:(id)a10 startTimeZone:(id)a11 endTime:(id)a12 endTimeZone:(id)a13 isAllDay:(BOOL)a14 locations:(id)a15 icsAttachmentData:(id)a16 url:(id)a17;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SGExternalEventExtraction

- (void)encodeWithCoder:(id)a3
{
  identifier = self->_identifier;
  v5 = a3;
  [v5 encodeObject:identifier forKey:@"identifier"];
  [v5 encodeObject:self->_fallbackIdentifier forKey:@"fallbackIdentifier"];
  [v5 encodeInteger:self->_status forKey:@"status"];
  [v5 encodeInteger:self->_category forKey:@"category"];
  [v5 encodeObject:self->_title forKey:@"title"];
  [v5 encodeObject:self->_content forKey:@"content"];
  [v5 encodeObject:self->_creationDate forKey:@"creationDate"];
  [v5 encodeObject:self->_startTime forKey:@"startTime"];
  [v5 encodeObject:self->_startTimeZone forKey:@"startTimeZone"];
  [v5 encodeObject:self->_endTime forKey:@"endTime"];
  [v5 encodeObject:self->_endTimeZone forKey:@"endTimeZone"];
  [v5 encodeBool:self->_isAllDay forKey:@"isAllDay"];
  [v5 encodeObject:self->_locations forKey:@"locations"];
  [v5 encodeObject:self->_icsAttachmentData forKey:@"icsAttachmentData"];
  [v5 encodeObject:self->_url forKey:@"url"];
}

- (SGExternalEventExtraction)initWithCoder:(id)a3
{
  v60 = *MEMORY[0x1E69E9840];
  v5 = a3;
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
  v8 = [v5 decodeObjectOfClasses:v7 forKey:@"identifier"];

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
  v12 = [v5 decodeObjectOfClasses:v11 forKey:@"fallbackIdentifier"];
  fallbackIdentifier = v6->_fallbackIdentifier;
  v6->_fallbackIdentifier = v12;

  v14 = [v5 decodeIntegerForKey:@"status"];
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
  v18 = [v5 decodeIntegerForKey:@"category"];
  v19 = v18;
  if (v18 < 0xC)
  {
    v6->_category = v18;
    v20 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{objc_opt_class(), 0}];
    v21 = [v5 decodeObjectOfClasses:v20 forKey:@"title"];

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
    v26 = [v5 decodeObjectOfClasses:v25 forKey:@"content"];
    content = v6->_content;
    v6->_content = v26;

    v28 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{objc_opt_class(), 0}];
    v29 = [v5 decodeObjectOfClasses:v28 forKey:@"creationDate"];

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
    v33 = [v5 decodeObjectOfClasses:v32 forKey:@"startTime"];
    startTime = v6->_startTime;
    v6->_startTime = v33;

    v35 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{objc_opt_class(), 0}];
    v36 = [v5 decodeObjectOfClasses:v35 forKey:@"startTimeZone"];
    startTimeZone = v6->_startTimeZone;
    v6->_startTimeZone = v36;

    v38 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{objc_opt_class(), 0}];
    v39 = [v5 decodeObjectOfClasses:v38 forKey:@"endTime"];
    endTime = v6->_endTime;
    v6->_endTime = v39;

    v41 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{objc_opt_class(), 0}];
    v42 = [v5 decodeObjectOfClasses:v41 forKey:@"endTimeZone"];
    endTimeZone = v6->_endTimeZone;
    v6->_endTimeZone = v42;

    v6->_isAllDay = [v5 decodeBoolForKey:@"isAllDay"];
    v44 = objc_alloc(MEMORY[0x1E695DFD8]);
    v45 = objc_opt_class();
    v46 = [v44 initWithObjects:{v45, objc_opt_class(), 0}];
    v47 = [v5 decodeObjectOfClasses:v46 forKey:@"locations"];
    locations = v6->_locations;
    v6->_locations = v47;

    v49 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{objc_opt_class(), 0}];
    v50 = [v5 decodeObjectOfClasses:v49 forKey:@"icsAttachmentData"];
    icsAttachmentData = v6->_icsAttachmentData;
    v6->_icsAttachmentData = v50;

    v52 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{objc_opt_class(), 0}];
    v53 = [v5 decodeObjectOfClasses:v52 forKey:@"url"];
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

- (SGExternalEventExtraction)initWithIdentifier:(id)a3 fallbackIdentifier:(id)a4 status:(int64_t)a5 category:(int64_t)a6 title:(id)a7 content:(id)a8 creationDate:(id)a9 startTime:(id)a10 startTimeZone:(id)a11 endTime:(id)a12 endTimeZone:(id)a13 isAllDay:(BOOL)a14 locations:(id)a15 icsAttachmentData:(id)a16 url:(id)a17
{
  v39 = a3;
  v29 = a4;
  v38 = a4;
  v37 = a7;
  v36 = a8;
  v35 = a9;
  v34 = a10;
  v33 = a11;
  v20 = a12;
  v21 = a13;
  v22 = a15;
  v23 = a16;
  v24 = a17;
  v40.receiver = self;
  v40.super_class = SGExternalEventExtraction;
  v25 = [(SGExternalEventExtraction *)&v40 init];
  v26 = v25;
  if (v25)
  {
    objc_storeStrong(&v25->_identifier, a3);
    objc_storeStrong(&v26->_fallbackIdentifier, v29);
    v26->_status = a5;
    v26->_category = a6;
    objc_storeStrong(&v26->_title, a7);
    objc_storeStrong(&v26->_content, a8);
    objc_storeStrong(&v26->_creationDate, a9);
    objc_storeStrong(&v26->_startTime, a10);
    objc_storeStrong(&v26->_startTimeZone, a11);
    objc_storeStrong(&v26->_endTime, a12);
    objc_storeStrong(&v26->_endTimeZone, a13);
    v26->_isAllDay = a14;
    objc_storeStrong(&v26->_locations, a15);
    objc_storeStrong(&v26->_icsAttachmentData, a16);
    objc_storeStrong(&v26->_url, a17);
  }

  return v26;
}

@end