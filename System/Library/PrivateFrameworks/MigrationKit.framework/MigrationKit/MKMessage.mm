@interface MKMessage
- (MKMessage)initWithData:(id)a3;
@end

@implementation MKMessage

- (MKMessage)initWithData:(id)a3
{
  v93 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v89.receiver = self;
  v89.super_class = MKMessage;
  v5 = [(MKMessage *)&v89 init];
  if (!v5)
  {
    goto LABEL_85;
  }

  v88 = 0;
  v6 = [MEMORY[0x277CCAAA0] JSONObjectWithData:v4 options:0 error:&v88];
  v7 = v88;
  if (!v7)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v8 = +[MKLog log];
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        [(MKAccount *)v5 initWithData:v8];
      }

      goto LABEL_31;
    }

    v9 = v6;
    v10 = [v9 mk_numberForKey:@"is_sent"];
    -[MKMessage setIsSent:](v5, "setIsSent:", [v10 BOOLValue]);

    v11 = [v9 mk_numberForKey:@"is_read"];
    -[MKMessage setIsRead:](v5, "setIsRead:", [v11 BOOLValue]);

    v12 = [v9 mk_numberForKey:@"is_normalized"];
    -[MKMessage setIsNormalized:](v5, "setIsNormalized:", [v12 BOOLValue]);

    v13 = MEMORY[0x277CBEAA8];
    v14 = [v9 mk_numberForKey:@"date"];
    [v14 doubleValue];
    v15 = [v13 dateWithTimeIntervalSince1970:?];
    [(MKMessage *)v5 setDate:v15];

    [(NSDate *)v5->_date timeIntervalSinceReferenceDate];
    [(MKMessage *)v5 setTimestampInSeconds:v16];
    [(NSDate *)v5->_date timeIntervalSinceReferenceDate];
    [(MKMessage *)v5 setTimestampInNanoseconds:(v17 * *"")];
    v18 = 0x277CCA000uLL;
    v19 = [MEMORY[0x277CCAD78] UUID];
    v20 = [v19 UUIDString];
    [(MKMessage *)v5 setID:v20];

    v21 = [v9 mk_stringForKey:@"thread_id"];
    [(MKMessage *)v5 setThreadID:v21];

    v22 = [v9 mk_stringForKey:@"sender"];
    [(MKMessage *)v5 setSender:v22];

    if (!v5->_isNormalized)
    {
      v23 = [MKMessagePhoneNumber addCountryCallingCode:v5->_sender];
      [(MKMessage *)v5 setSender:v23];
    }

    v24 = [v9 mk_stringForKey:@"subject"];
    [(MKMessage *)v5 setSubject:v24];

    if ([(NSString *)v5->_subject hasPrefix:@"proto:"])
    {
      [(MKMessage *)v5 setSubject:&stru_286A8E730];
    }

    v25 = [v9 mk_stringForKey:@"body"];
    [(MKMessage *)v5 setBody:v25];

    body = v5->_body;
    if (!body || [(NSString *)body hasPrefix:@"proto:"])
    {
      [(MKMessage *)v5 setBody:&stru_286A8E730];
    }

    v27 = [v9 objectForKey:@"recipients"];
    if (v27)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v73 = v9;
        v75 = v4;
        v28 = v5;
        v29 = v27;
        v30 = objc_alloc_init(MEMORY[0x277CBEB18]);
        v84 = 0u;
        v85 = 0u;
        v86 = 0u;
        v87 = 0u;
        v31 = v29;
        v32 = [v31 countByEnumeratingWithState:&v84 objects:v92 count:16];
        if (v32)
        {
          v33 = v32;
          v34 = 0;
          v35 = *v85;
          do
          {
            for (i = 0; i != v33; ++i)
            {
              if (*v85 != v35)
              {
                objc_enumerationMutation(v31);
              }

              v37 = *(*(&v84 + 1) + 8 * i);
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) != 0 && [v37 length])
              {
                if (v28->_isNormalized)
                {
                  v38 = v37;
                }

                else
                {
                  v38 = [MKMessagePhoneNumber addCountryCallingCode:v37];
                }

                v39 = v38;

                [v30 addObject:v39];
                v34 = v39;
              }
            }

            v33 = [v31 countByEnumeratingWithState:&v84 objects:v92 count:16];
          }

          while (v33);
        }

        else
        {
          v34 = 0;
        }

        v5 = v28;
        [(MKMessage *)v28 setRecipients:v30];

        v9 = v73;
        v4 = v75;
        v18 = 0x277CCA000;
      }
    }

    isSent = v5->_isSent;
    if (isSent)
    {
      if (![(NSArray *)v5->_recipients count])
      {
        if ([(NSString *)v5->_sender length])
        {
          v42 = [(NSString *)v5->_sender copy];
          v91 = v42;
          v43 = [MEMORY[0x277CBEA60] arrayWithObjects:&v91 count:1];
          [(MKMessage *)v5 setRecipients:v43];

          goto LABEL_43;
        }

LABEL_44:
        v44 = [v9 objectForKey:@"attachments"];
        if (v44)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v72 = v27;
            v74 = v9;
            p_isa = &v5->super.isa;
            v79 = objc_alloc_init(MEMORY[0x277CBEB18]);
            v71 = v44;
            v45 = v44;
            v78 = objc_alloc_init(MEMORY[0x277CBEB18]);
            v80 = 0u;
            v81 = 0u;
            v82 = 0u;
            v83 = 0u;
            v46 = v45;
            v47 = [v46 countByEnumeratingWithState:&v80 objects:v90 count:16];
            if (!v47)
            {
              goto LABEL_64;
            }

            v48 = v47;
            v49 = *v81;
            v76 = v46;
            while (1)
            {
              for (j = 0; j != v48; ++j)
              {
                if (*v81 != v49)
                {
                  objc_enumerationMutation(v46);
                }

                v51 = *(*(&v80 + 1) + 8 * j);
                v52 = [v51 mk_stringForKey:{@"id", v71}];
                v53 = [v51 mk_stringForKey:@"content_type"];
                v54 = [v51 mk_stringForKey:@"data"];
                if ([v52 length] && objc_msgSend(v53, "length") && objc_msgSend(v54, "length") && (objc_msgSend(v53, "isEqualToString:", @"application/smil") & 1) == 0)
                {
                  if ([v53 isEqualToString:@"text/plain"])
                  {
                    v55 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBase64EncodedString:v54 options:0];
                    v56 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v55 encoding:4];
                    if (([v56 hasPrefix:@"proto:"] & 1) == 0)
                    {
                      v57 = [p_isa[9] stringByAppendingString:v56];
                      [p_isa setBody:v57];

                      v46 = v76;
                    }

LABEL_60:
                  }

                  else
                  {
                    v55 = [[MKMessageAttachment alloc] initWithID:v52 contentType:v53 base64Data:v54];
                    if (v55)
                    {
                      [v79 addObject:v55];
                      v56 = [(MKMessageAttachment *)v55 UUID];
                      [v78 addObject:v56];
                      goto LABEL_60;
                    }
                  }
                }
              }

              v48 = [v46 countByEnumeratingWithState:&v80 objects:v90 count:16];
              if (!v48)
              {
LABEL_64:

                v5 = p_isa;
                [p_isa setAttachments:v79];
                v58 = [objc_alloc(MEMORY[0x277CCA898]) initWithString:p_isa[9]];
                v59 = IMCreateSuperFormatStringWithAppendedFileTransfers();

                v60 = [MEMORY[0x277CCA880] archivedDataWithRootObject:v59];
                [p_isa setAttributedBody:v60];

                v9 = v74;
                v18 = 0x277CCA000uLL;
                v44 = v71;
                v27 = v72;
                break;
              }
            }
          }
        }

        v61 = objc_alloc_init(MEMORY[0x277CBEB18]);
        v62 = [(MKMessage *)v5 recipients];
        v63 = [v62 count];

        if (v63 >= 2)
        {
          if ([(NSString *)v5->_sender length])
          {
            [v61 addObject:v5->_sender];
          }

          [v61 addObjectsFromArray:{v5->_recipients, v71}];
LABEL_76:
          if ([v61 count])
          {
            [(MKMessage *)v5 setHandles:v61];
          }

          if (v5->_isSent)
          {
            sender = v5->_sender;
          }

          else
          {
            if ([(NSArray *)v5->_recipients count]== 1)
            {
              v66 = [(NSArray *)v5->_recipients objectAtIndexedSubscript:0];
              [(MKMessage *)v5 setAccount:v66];

LABEL_84:
              v67 = [*(v18 + 3448) UUID];
              v68 = [v67 UUIDString];
              [(MKMessage *)v5 setUUID:v68];

LABEL_85:
              v40 = v5;
              goto LABEL_86;
            }

            sender = &stru_286A8E730;
          }

          [(MKMessage *)v5 setAccount:sender];
          goto LABEL_84;
        }

        if ([(NSArray *)v5->_recipients count]== 1)
        {
          if (v5->_isSent || ![(NSString *)v5->_sender length])
          {
            v64 = [(NSArray *)v5->_recipients objectAtIndexedSubscript:0, v71];
            [v61 addObject:v64];

            goto LABEL_76;
          }
        }

        else if (![(NSString *)v5->_sender length])
        {
          goto LABEL_76;
        }

        [v61 addObject:{v5->_sender, v71}];
        goto LABEL_76;
      }

      isSent = v5->_isSent;
    }

    if (!isSent && ![(NSString *)v5->_sender length]&& [(NSArray *)v5->_recipients count])
    {
      v42 = [(NSArray *)v5->_recipients objectAtIndexedSubscript:0];
      [(MKMessage *)v5 setSender:v42];
LABEL_43:

      goto LABEL_44;
    }

    goto LABEL_44;
  }

  v8 = +[MKLog log];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    [(MKAccount *)v5 initWithData:v7, v8];
  }

LABEL_31:

  v40 = 0;
LABEL_86:

  v69 = *MEMORY[0x277D85DE8];
  return v40;
}

@end