@interface EMOriginalContentMessage
- (BOOL)isEqual:(id)a3;
- (EMOriginalContentMessage)initWithCoder:(id)a3;
- (EMOriginalContentMessage)initWithSearchableMessageID:(id)a3 bodyText:(id)a4 subject:(id)a5 sender:(id)a6 toList:(id)a7 ccList:(id)a8 flags:(id)a9 date:(id)a10;
- (NSString)ef_publicDescription;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation EMOriginalContentMessage

- (EMOriginalContentMessage)initWithSearchableMessageID:(id)a3 bodyText:(id)a4 subject:(id)a5 sender:(id)a6 toList:(id)a7 ccList:(id)a8 flags:(id)a9 date:(id)a10
{
  v28 = a3;
  v27 = a4;
  v29 = a5;
  v26 = a6;
  v25 = a7;
  v24 = a8;
  v23 = a9;
  v17 = a10;
  v30.receiver = self;
  v30.super_class = EMOriginalContentMessage;
  v18 = [(EMOriginalContentMessage *)&v30 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_searchableMessageID, a3);
    objc_storeStrong(&v19->_bodyText, a4);
    v20 = [v29 copy];
    subject = v19->_subject;
    v19->_subject = v20;

    objc_storeStrong(&v19->_sender, a6);
    objc_storeStrong(&v19->_date, a10);
    objc_storeStrong(&v19->_toList, a7);
    objc_storeStrong(&v19->_ccList, a8);
    objc_storeStrong(&v19->_flags, a9);
  }

  return v19;
}

- (EMOriginalContentMessage)initWithCoder:(id)a3
{
  v4 = a3;
  v34.receiver = self;
  v34.super_class = EMOriginalContentMessage;
  v5 = [(EMOriginalContentMessage *)&v34 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_searchableMessageID"];
    searchableMessageID = v5->_searchableMessageID;
    v5->_searchableMessageID = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_bodyText"];
    bodyText = v5->_bodyText;
    v5->_bodyText = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_subject"];
    subject = v5->_subject;
    v5->_subject = v10;

    v12 = MEMORY[0x1E695DFD8];
    v13 = objc_opt_class();
    v14 = [v12 setWithObjects:{v13, objc_opt_class(), 0}];
    v15 = [v4 decodeObjectOfClasses:v14 forKey:@"EFPropertyKey_sender"];
    sender = v5->_sender;
    v5->_sender = v15;

    v17 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_date"];
    date = v5->_date;
    v5->_date = v17;

    v19 = MEMORY[0x1E695DFD8];
    v20 = objc_opt_class();
    v21 = objc_opt_class();
    v22 = [v19 setWithObjects:{v20, v21, objc_opt_class(), 0}];
    v23 = [v4 decodeObjectOfClasses:v22 forKey:@"EFPropertyKey_toList"];
    toList = v5->_toList;
    v5->_toList = v23;

    v25 = MEMORY[0x1E695DFD8];
    v26 = objc_opt_class();
    v27 = objc_opt_class();
    v28 = [v25 setWithObjects:{v26, v27, objc_opt_class(), 0}];
    v29 = [v4 decodeObjectOfClasses:v28 forKey:@"EFPropertyKey_ccList"];
    ccList = v5->_ccList;
    v5->_ccList = v29;

    v31 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_flags"];
    flags = v5->_flags;
    v5->_flags = v31;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v12 = a3;
  v4 = [(EMOriginalContentMessage *)self searchableMessageID];
  [v12 encodeObject:v4 forKey:@"EFPropertyKey_searchableMessageID"];

  v5 = [(EMOriginalContentMessage *)self bodyText];
  [v12 encodeObject:v5 forKey:@"EFPropertyKey_bodyText"];

  v6 = [(EMOriginalContentMessage *)self subject];
  [v12 encodeObject:v6 forKey:@"EFPropertyKey_subject"];

  v7 = [(EMOriginalContentMessage *)self sender];
  [v12 encodeObject:v7 forKey:@"EFPropertyKey_sender"];

  v8 = [(EMOriginalContentMessage *)self date];
  [v12 encodeObject:v8 forKey:@"EFPropertyKey_date"];

  v9 = [(EMOriginalContentMessage *)self toList];
  [v12 encodeObject:v9 forKey:@"EFPropertyKey_toList"];

  v10 = [(EMOriginalContentMessage *)self ccList];
  [v12 encodeObject:v10 forKey:@"EFPropertyKey_ccList"];

  v11 = [(EMOriginalContentMessage *)self flags];
  [v12 encodeObject:v11 forKey:@"EFPropertyKey_flags"];
}

- (NSString)ef_publicDescription
{
  v31[1] = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E699B7B0] currentDevice];
  v4 = [v3 isInternal];

  if (v4)
  {
    v30 = [objc_alloc(MEMORY[0x1E699B250]) initWithStyle:2];
    v5 = MEMORY[0x1E696AEC0];
    v6 = objc_opt_class();
    v29 = NSStringFromClass(v6);
    v28 = [(EMOriginalContentMessage *)self searchableMessageID];
    v7 = MEMORY[0x1E699B858];
    v25 = [(EMOriginalContentMessage *)self bodyText];
    v27 = [v7 ec_partiallyRedactedStringForSubjectOrSummary:?];
    v8 = MEMORY[0x1E699B858];
    v24 = [(EMOriginalContentMessage *)self subject];
    v26 = [v8 ec_partiallyRedactedStringForSubjectOrSummary:?];
    v23 = [(EMOriginalContentMessage *)self sender];
    v31[0] = v23;
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v31 count:1];
    v10 = [v30 stringFromEmailAddressList:v9];
    v11 = [(EMOriginalContentMessage *)self toList];
    v12 = [v30 stringFromEmailAddressList:v11];
    v13 = [(EMOriginalContentMessage *)self ccList];
    v14 = [v30 stringFromEmailAddressList:v13];
    v15 = [(EMOriginalContentMessage *)self flags];
    v16 = [(EMOriginalContentMessage *)self date];
    v17 = [v5 stringWithFormat:@"<%@: %p>\n\tsearchableMessageID:%@\n\tbodyText:%@\n\tsubject:%@\n\tsender:%@\n\tto:%@\n\tcc:%@\n\tflags:%@\n\tdate:%@", v29, self, v28, v27, v26, v10, v12, v14, v15, v16];
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v13 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(EMOriginalContentMessage *)self searchableMessageID];
      v7 = [(EMOriginalContentMessage *)v5 searchableMessageID];
      if (EFObjectsAreEqual())
      {
        v8 = [(EMOriginalContentMessage *)self bodyText];
        v9 = [(EMOriginalContentMessage *)v5 bodyText];
        if (EFStringsAreEqual())
        {
          v10 = [(EMOriginalContentMessage *)self subject];
          v11 = [(EMOriginalContentMessage *)v5 subject];
          if (EFStringsAreEqual())
          {
            v23 = [(EMOriginalContentMessage *)self sender];
            v12 = [(EMOriginalContentMessage *)v5 sender];
            if (EFObjectsAreEqual())
            {
              v22 = [(EMOriginalContentMessage *)self date];
              v21 = [(EMOriginalContentMessage *)v5 date];
              if (EFObjectsAreEqual())
              {
                v20 = [(EMOriginalContentMessage *)self toList];
                v19 = [(EMOriginalContentMessage *)v5 toList];
                if (EFObjectsAreEqual())
                {
                  v18 = [(EMOriginalContentMessage *)self ccList];
                  v17 = [(EMOriginalContentMessage *)v5 ccList];
                  if (EFObjectsAreEqual())
                  {
                    v16 = [(EMOriginalContentMessage *)self flags];
                    v15 = [(EMOriginalContentMessage *)v5 flags];
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
  v3 = [(EMOriginalContentMessage *)self searchableMessageID];
  v4 = [v3 hash];

  v5 = [(EMOriginalContentMessage *)self bodyText];
  v6 = [v5 hash];

  v7 = [(EMOriginalContentMessage *)self subject];
  v8 = [v7 hash];

  v9 = [(EMOriginalContentMessage *)self sender];
  v10 = [v9 hash];

  v11 = [(EMOriginalContentMessage *)self date];
  v12 = [v11 hash];

  v13 = [(EMOriginalContentMessage *)self toList];
  v14 = [v13 hash];

  v15 = [(EMOriginalContentMessage *)self ccList];
  v16 = [v15 hash];

  v17 = [(EMOriginalContentMessage *)self flags];
  v18 = [v17 hash] + 0x1AE2F37BB34A05;

  return 33 * (33 * (33 * (33 * (33 * (33 * (33 * v4 + v6) + v8) + v10) + v12) + v14) + v16) + v18;
}

@end