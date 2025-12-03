@interface EMOriginalContentMessage
- (BOOL)isEqual:(id)equal;
- (EMOriginalContentMessage)initWithCoder:(id)coder;
- (EMOriginalContentMessage)initWithSearchableMessageID:(id)d bodyText:(id)text subject:(id)subject sender:(id)sender toList:(id)list ccList:(id)ccList flags:(id)flags date:(id)self0;
- (NSString)ef_publicDescription;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation EMOriginalContentMessage

- (EMOriginalContentMessage)initWithSearchableMessageID:(id)d bodyText:(id)text subject:(id)subject sender:(id)sender toList:(id)list ccList:(id)ccList flags:(id)flags date:(id)self0
{
  dCopy = d;
  textCopy = text;
  subjectCopy = subject;
  senderCopy = sender;
  listCopy = list;
  ccListCopy = ccList;
  flagsCopy = flags;
  dateCopy = date;
  v30.receiver = self;
  v30.super_class = EMOriginalContentMessage;
  v18 = [(EMOriginalContentMessage *)&v30 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_searchableMessageID, d);
    objc_storeStrong(&v19->_bodyText, text);
    v20 = [subjectCopy copy];
    subject = v19->_subject;
    v19->_subject = v20;

    objc_storeStrong(&v19->_sender, sender);
    objc_storeStrong(&v19->_date, date);
    objc_storeStrong(&v19->_toList, list);
    objc_storeStrong(&v19->_ccList, ccList);
    objc_storeStrong(&v19->_flags, flags);
  }

  return v19;
}

- (EMOriginalContentMessage)initWithCoder:(id)coder
{
  coderCopy = coder;
  v34.receiver = self;
  v34.super_class = EMOriginalContentMessage;
  v5 = [(EMOriginalContentMessage *)&v34 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_searchableMessageID"];
    searchableMessageID = v5->_searchableMessageID;
    v5->_searchableMessageID = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_bodyText"];
    bodyText = v5->_bodyText;
    v5->_bodyText = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_subject"];
    subject = v5->_subject;
    v5->_subject = v10;

    v12 = MEMORY[0x1E695DFD8];
    v13 = objc_opt_class();
    v14 = [v12 setWithObjects:{v13, objc_opt_class(), 0}];
    v15 = [coderCopy decodeObjectOfClasses:v14 forKey:@"EFPropertyKey_sender"];
    sender = v5->_sender;
    v5->_sender = v15;

    v17 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_date"];
    date = v5->_date;
    v5->_date = v17;

    v19 = MEMORY[0x1E695DFD8];
    v20 = objc_opt_class();
    v21 = objc_opt_class();
    v22 = [v19 setWithObjects:{v20, v21, objc_opt_class(), 0}];
    v23 = [coderCopy decodeObjectOfClasses:v22 forKey:@"EFPropertyKey_toList"];
    toList = v5->_toList;
    v5->_toList = v23;

    v25 = MEMORY[0x1E695DFD8];
    v26 = objc_opt_class();
    v27 = objc_opt_class();
    v28 = [v25 setWithObjects:{v26, v27, objc_opt_class(), 0}];
    v29 = [coderCopy decodeObjectOfClasses:v28 forKey:@"EFPropertyKey_ccList"];
    ccList = v5->_ccList;
    v5->_ccList = v29;

    v31 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_flags"];
    flags = v5->_flags;
    v5->_flags = v31;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  searchableMessageID = [(EMOriginalContentMessage *)self searchableMessageID];
  [coderCopy encodeObject:searchableMessageID forKey:@"EFPropertyKey_searchableMessageID"];

  bodyText = [(EMOriginalContentMessage *)self bodyText];
  [coderCopy encodeObject:bodyText forKey:@"EFPropertyKey_bodyText"];

  subject = [(EMOriginalContentMessage *)self subject];
  [coderCopy encodeObject:subject forKey:@"EFPropertyKey_subject"];

  sender = [(EMOriginalContentMessage *)self sender];
  [coderCopy encodeObject:sender forKey:@"EFPropertyKey_sender"];

  date = [(EMOriginalContentMessage *)self date];
  [coderCopy encodeObject:date forKey:@"EFPropertyKey_date"];

  toList = [(EMOriginalContentMessage *)self toList];
  [coderCopy encodeObject:toList forKey:@"EFPropertyKey_toList"];

  ccList = [(EMOriginalContentMessage *)self ccList];
  [coderCopy encodeObject:ccList forKey:@"EFPropertyKey_ccList"];

  flags = [(EMOriginalContentMessage *)self flags];
  [coderCopy encodeObject:flags forKey:@"EFPropertyKey_flags"];
}

- (NSString)ef_publicDescription
{
  v31[1] = *MEMORY[0x1E69E9840];
  currentDevice = [MEMORY[0x1E699B7B0] currentDevice];
  isInternal = [currentDevice isInternal];

  if (isInternal)
  {
    v30 = [objc_alloc(MEMORY[0x1E699B250]) initWithStyle:2];
    v5 = MEMORY[0x1E696AEC0];
    v6 = objc_opt_class();
    v29 = NSStringFromClass(v6);
    searchableMessageID = [(EMOriginalContentMessage *)self searchableMessageID];
    v7 = MEMORY[0x1E699B858];
    bodyText = [(EMOriginalContentMessage *)self bodyText];
    v27 = [v7 ec_partiallyRedactedStringForSubjectOrSummary:?];
    v8 = MEMORY[0x1E699B858];
    subject = [(EMOriginalContentMessage *)self subject];
    v26 = [v8 ec_partiallyRedactedStringForSubjectOrSummary:?];
    sender = [(EMOriginalContentMessage *)self sender];
    v31[0] = sender;
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v31 count:1];
    v10 = [v30 stringFromEmailAddressList:v9];
    toList = [(EMOriginalContentMessage *)self toList];
    v12 = [v30 stringFromEmailAddressList:toList];
    ccList = [(EMOriginalContentMessage *)self ccList];
    v14 = [v30 stringFromEmailAddressList:ccList];
    flags = [(EMOriginalContentMessage *)self flags];
    date = [(EMOriginalContentMessage *)self date];
    v17 = [v5 stringWithFormat:@"<%@: %p>\n\tsearchableMessageID:%@\n\tbodyText:%@\n\tsubject:%@\n\tsender:%@\n\tto:%@\n\tcc:%@\n\tflags:%@\n\tdate:%@", v29, self, searchableMessageID, v27, v26, v10, v12, v14, flags, date];
  }

  else
  {
    v18 = MEMORY[0x1E696AEC0];
    v19 = objc_opt_class();
    v20 = NSStringFromClass(v19);
    v17 = [v18 stringWithFormat:@"<%@: %p>", v20, self];
  }

  v21 = *MEMORY[0x1E69E9840];

  return v17;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v13 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      searchableMessageID = [(EMOriginalContentMessage *)self searchableMessageID];
      searchableMessageID2 = [(EMOriginalContentMessage *)v5 searchableMessageID];
      if (EFObjectsAreEqual())
      {
        bodyText = [(EMOriginalContentMessage *)self bodyText];
        bodyText2 = [(EMOriginalContentMessage *)v5 bodyText];
        if (EFStringsAreEqual())
        {
          subject = [(EMOriginalContentMessage *)self subject];
          subject2 = [(EMOriginalContentMessage *)v5 subject];
          if (EFStringsAreEqual())
          {
            sender = [(EMOriginalContentMessage *)self sender];
            sender2 = [(EMOriginalContentMessage *)v5 sender];
            if (EFObjectsAreEqual())
            {
              date = [(EMOriginalContentMessage *)self date];
              date2 = [(EMOriginalContentMessage *)v5 date];
              if (EFObjectsAreEqual())
              {
                toList = [(EMOriginalContentMessage *)self toList];
                toList2 = [(EMOriginalContentMessage *)v5 toList];
                if (EFObjectsAreEqual())
                {
                  ccList = [(EMOriginalContentMessage *)self ccList];
                  ccList2 = [(EMOriginalContentMessage *)v5 ccList];
                  if (EFObjectsAreEqual())
                  {
                    flags = [(EMOriginalContentMessage *)self flags];
                    flags2 = [(EMOriginalContentMessage *)v5 flags];
                    v13 = EFObjectsAreEqual();
                  }

                  else
                  {
                    v13 = 0;
                  }
                }

                else
                {
                  v13 = 0;
                }
              }

              else
              {
                v13 = 0;
              }
            }

            else
            {
              v13 = 0;
            }
          }

          else
          {
            v13 = 0;
          }
        }

        else
        {
          v13 = 0;
        }
      }

      else
      {
        v13 = 0;
      }
    }

    else
    {
      v13 = 0;
    }
  }

  return v13;
}

- (unint64_t)hash
{
  searchableMessageID = [(EMOriginalContentMessage *)self searchableMessageID];
  v4 = [searchableMessageID hash];

  bodyText = [(EMOriginalContentMessage *)self bodyText];
  v6 = [bodyText hash];

  subject = [(EMOriginalContentMessage *)self subject];
  v8 = [subject hash];

  sender = [(EMOriginalContentMessage *)self sender];
  v10 = [sender hash];

  date = [(EMOriginalContentMessage *)self date];
  v12 = [date hash];

  toList = [(EMOriginalContentMessage *)self toList];
  v14 = [toList hash];

  ccList = [(EMOriginalContentMessage *)self ccList];
  v16 = [ccList hash];

  flags = [(EMOriginalContentMessage *)self flags];
  v18 = [flags hash] + 0x1AE2F37BB34A05;

  return 33 * (33 * (33 * (33 * (33 * (33 * (33 * v4 + v6) + v8) + v10) + v12) + v14) + v16) + v18;
}

@end