@interface BMWalletPaymentsCommerceOrderEmailEmailMetadata
+ (id)columns;
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
+ (id)protoFields;
- (BMWalletPaymentsCommerceOrderEmailEmailMetadata)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (BMWalletPaymentsCommerceOrderEmailEmailMetadata)initWithMessageID:(id)d dateSent:(id)sent subject:(id)subject senderDomain:(id)domain deeplinkURL:(id)l fromEmailAddress:(id)address fromDisplayName:(id)name toEmailAddress:(id)self0 toDisplayName:(id)self1 replyToEmailAddress:(id)self2 replyToDisplayName:(id)self3;
- (BOOL)isEqual:(id)equal;
- (NSDate)dateSent;
- (NSString)description;
- (NSURL)deeplinkURL;
- (id)initByReadFrom:(id)from;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)to;
@end

@implementation BMWalletPaymentsCommerceOrderEmailEmailMetadata

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    messageID = [(BMWalletPaymentsCommerceOrderEmailEmailMetadata *)self messageID];
    messageID2 = [v5 messageID];
    v8 = messageID2;
    if (messageID == messageID2)
    {
    }

    else
    {
      messageID3 = [(BMWalletPaymentsCommerceOrderEmailEmailMetadata *)self messageID];
      messageID4 = [v5 messageID];
      v11 = [messageID3 isEqual:messageID4];

      if (!v11)
      {
        goto LABEL_41;
      }
    }

    dateSent = [(BMWalletPaymentsCommerceOrderEmailEmailMetadata *)self dateSent];
    dateSent2 = [v5 dateSent];
    v15 = dateSent2;
    if (dateSent == dateSent2)
    {
    }

    else
    {
      dateSent3 = [(BMWalletPaymentsCommerceOrderEmailEmailMetadata *)self dateSent];
      dateSent4 = [v5 dateSent];
      v18 = [dateSent3 isEqual:dateSent4];

      if (!v18)
      {
        goto LABEL_41;
      }
    }

    subject = [(BMWalletPaymentsCommerceOrderEmailEmailMetadata *)self subject];
    subject2 = [v5 subject];
    v21 = subject2;
    if (subject == subject2)
    {
    }

    else
    {
      subject3 = [(BMWalletPaymentsCommerceOrderEmailEmailMetadata *)self subject];
      subject4 = [v5 subject];
      v24 = [subject3 isEqual:subject4];

      if (!v24)
      {
        goto LABEL_41;
      }
    }

    senderDomain = [(BMWalletPaymentsCommerceOrderEmailEmailMetadata *)self senderDomain];
    senderDomain2 = [v5 senderDomain];
    v27 = senderDomain2;
    if (senderDomain == senderDomain2)
    {
    }

    else
    {
      senderDomain3 = [(BMWalletPaymentsCommerceOrderEmailEmailMetadata *)self senderDomain];
      senderDomain4 = [v5 senderDomain];
      v30 = [senderDomain3 isEqual:senderDomain4];

      if (!v30)
      {
        goto LABEL_41;
      }
    }

    deeplinkURL = [(BMWalletPaymentsCommerceOrderEmailEmailMetadata *)self deeplinkURL];
    deeplinkURL2 = [v5 deeplinkURL];
    v33 = deeplinkURL2;
    if (deeplinkURL == deeplinkURL2)
    {
    }

    else
    {
      deeplinkURL3 = [(BMWalletPaymentsCommerceOrderEmailEmailMetadata *)self deeplinkURL];
      deeplinkURL4 = [v5 deeplinkURL];
      v36 = [deeplinkURL3 isEqual:deeplinkURL4];

      if (!v36)
      {
        goto LABEL_41;
      }
    }

    fromEmailAddress = [(BMWalletPaymentsCommerceOrderEmailEmailMetadata *)self fromEmailAddress];
    fromEmailAddress2 = [v5 fromEmailAddress];
    v39 = fromEmailAddress2;
    if (fromEmailAddress == fromEmailAddress2)
    {
    }

    else
    {
      fromEmailAddress3 = [(BMWalletPaymentsCommerceOrderEmailEmailMetadata *)self fromEmailAddress];
      fromEmailAddress4 = [v5 fromEmailAddress];
      v42 = [fromEmailAddress3 isEqual:fromEmailAddress4];

      if (!v42)
      {
        goto LABEL_41;
      }
    }

    fromDisplayName = [(BMWalletPaymentsCommerceOrderEmailEmailMetadata *)self fromDisplayName];
    fromDisplayName2 = [v5 fromDisplayName];
    v45 = fromDisplayName2;
    if (fromDisplayName == fromDisplayName2)
    {
    }

    else
    {
      fromDisplayName3 = [(BMWalletPaymentsCommerceOrderEmailEmailMetadata *)self fromDisplayName];
      fromDisplayName4 = [v5 fromDisplayName];
      v48 = [fromDisplayName3 isEqual:fromDisplayName4];

      if (!v48)
      {
        goto LABEL_41;
      }
    }

    toEmailAddress = [(BMWalletPaymentsCommerceOrderEmailEmailMetadata *)self toEmailAddress];
    toEmailAddress2 = [v5 toEmailAddress];
    v51 = toEmailAddress2;
    if (toEmailAddress == toEmailAddress2)
    {
    }

    else
    {
      toEmailAddress3 = [(BMWalletPaymentsCommerceOrderEmailEmailMetadata *)self toEmailAddress];
      toEmailAddress4 = [v5 toEmailAddress];
      v54 = [toEmailAddress3 isEqual:toEmailAddress4];

      if (!v54)
      {
        goto LABEL_41;
      }
    }

    toDisplayName = [(BMWalletPaymentsCommerceOrderEmailEmailMetadata *)self toDisplayName];
    toDisplayName2 = [v5 toDisplayName];
    v57 = toDisplayName2;
    if (toDisplayName == toDisplayName2)
    {
    }

    else
    {
      toDisplayName3 = [(BMWalletPaymentsCommerceOrderEmailEmailMetadata *)self toDisplayName];
      toDisplayName4 = [v5 toDisplayName];
      v60 = [toDisplayName3 isEqual:toDisplayName4];

      if (!v60)
      {
        goto LABEL_41;
      }
    }

    replyToEmailAddress = [(BMWalletPaymentsCommerceOrderEmailEmailMetadata *)self replyToEmailAddress];
    replyToEmailAddress2 = [v5 replyToEmailAddress];
    v63 = replyToEmailAddress2;
    if (replyToEmailAddress == replyToEmailAddress2)
    {
    }

    else
    {
      replyToEmailAddress3 = [(BMWalletPaymentsCommerceOrderEmailEmailMetadata *)self replyToEmailAddress];
      replyToEmailAddress4 = [v5 replyToEmailAddress];
      v66 = [replyToEmailAddress3 isEqual:replyToEmailAddress4];

      if (!v66)
      {
LABEL_41:
        v12 = 0;
LABEL_42:

        goto LABEL_43;
      }
    }

    replyToDisplayName = [(BMWalletPaymentsCommerceOrderEmailEmailMetadata *)self replyToDisplayName];
    replyToDisplayName2 = [v5 replyToDisplayName];
    if (replyToDisplayName == replyToDisplayName2)
    {
      v12 = 1;
    }

    else
    {
      replyToDisplayName3 = [(BMWalletPaymentsCommerceOrderEmailEmailMetadata *)self replyToDisplayName];
      replyToDisplayName4 = [v5 replyToDisplayName];
      v12 = [replyToDisplayName3 isEqual:replyToDisplayName4];
    }

    goto LABEL_42;
  }

  v12 = 0;
LABEL_43:

  return v12;
}

- (NSURL)deeplinkURL
{
  raw_deeplinkURL = self->_raw_deeplinkURL;
  if (raw_deeplinkURL)
  {
    v4 = [MEMORY[0x1E698F280] convertValue:raw_deeplinkURL toType:4];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (NSDate)dateSent
{
  if (self->_hasRaw_dateSent)
  {
    v2 = MEMORY[0x1E698F280];
    v3 = [MEMORY[0x1E696AD98] numberWithDouble:self->_raw_dateSent];
    v4 = [v2 convertValue:v3 toType:1];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)jsonDictionary
{
  v42[11] = *MEMORY[0x1E69E9840];
  messageID = [(BMWalletPaymentsCommerceOrderEmailEmailMetadata *)self messageID];
  dateSent = [(BMWalletPaymentsCommerceOrderEmailEmailMetadata *)self dateSent];
  if (dateSent)
  {
    v5 = MEMORY[0x1E696AD98];
    dateSent2 = [(BMWalletPaymentsCommerceOrderEmailEmailMetadata *)self dateSent];
    [dateSent2 timeIntervalSinceReferenceDate];
    v7 = [v5 numberWithDouble:?];
  }

  else
  {
    v7 = 0;
  }

  subject = [(BMWalletPaymentsCommerceOrderEmailEmailMetadata *)self subject];
  senderDomain = [(BMWalletPaymentsCommerceOrderEmailEmailMetadata *)self senderDomain];
  deeplinkURL = [(BMWalletPaymentsCommerceOrderEmailEmailMetadata *)self deeplinkURL];
  absoluteString = [deeplinkURL absoluteString];

  fromEmailAddress = [(BMWalletPaymentsCommerceOrderEmailEmailMetadata *)self fromEmailAddress];
  fromDisplayName = [(BMWalletPaymentsCommerceOrderEmailEmailMetadata *)self fromDisplayName];
  toEmailAddress = [(BMWalletPaymentsCommerceOrderEmailEmailMetadata *)self toEmailAddress];
  toDisplayName = [(BMWalletPaymentsCommerceOrderEmailEmailMetadata *)self toDisplayName];
  replyToEmailAddress = [(BMWalletPaymentsCommerceOrderEmailEmailMetadata *)self replyToEmailAddress];
  replyToDisplayName = [(BMWalletPaymentsCommerceOrderEmailEmailMetadata *)self replyToDisplayName];
  v41[0] = @"messageID";
  null = messageID;
  if (!messageID)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v32 = null;
  v42[0] = null;
  v41[1] = @"dateSent";
  null2 = v7;
  if (!v7)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v31 = null2;
  v42[1] = null2;
  v41[2] = @"subject";
  null3 = subject;
  if (!subject)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v30 = null3;
  v42[2] = null3;
  v41[3] = @"senderDomain";
  null4 = senderDomain;
  if (!senderDomain)
  {
    null4 = [MEMORY[0x1E695DFB0] null];
  }

  v37 = messageID;
  v29 = null4;
  v42[3] = null4;
  v41[4] = @"deeplinkURL";
  null5 = absoluteString;
  if (!absoluteString)
  {
    null5 = [MEMORY[0x1E695DFB0] null];
  }

  v36 = v7;
  v28 = null5;
  v42[4] = null5;
  v41[5] = @"fromEmailAddress";
  null6 = fromEmailAddress;
  if (!fromEmailAddress)
  {
    null6 = [MEMORY[0x1E695DFB0] null];
  }

  v35 = subject;
  v42[5] = null6;
  v41[6] = @"fromDisplayName";
  null7 = fromDisplayName;
  if (!fromDisplayName)
  {
    null7 = [MEMORY[0x1E695DFB0] null];
  }

  v34 = senderDomain;
  v42[6] = null7;
  v41[7] = @"toEmailAddress";
  null8 = toEmailAddress;
  if (!toEmailAddress)
  {
    null8 = [MEMORY[0x1E695DFB0] null];
  }

  v42[7] = null8;
  v41[8] = @"toDisplayName";
  null9 = toDisplayName;
  if (!toDisplayName)
  {
    null9 = [MEMORY[0x1E695DFB0] null];
  }

  v42[8] = null9;
  v41[9] = @"replyToEmailAddress";
  null10 = replyToEmailAddress;
  if (!replyToEmailAddress)
  {
    null10 = [MEMORY[0x1E695DFB0] null];
  }

  v42[9] = null10;
  v41[10] = @"replyToDisplayName";
  null11 = replyToDisplayName;
  if (!replyToDisplayName)
  {
    null11 = [MEMORY[0x1E695DFB0] null];
  }

  v42[10] = null11;
  v33 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v42 forKeys:v41 count:11];
  if (replyToDisplayName)
  {
    if (replyToEmailAddress)
    {
      goto LABEL_28;
    }

LABEL_45:

    if (toDisplayName)
    {
      goto LABEL_29;
    }

    goto LABEL_46;
  }

  if (!replyToEmailAddress)
  {
    goto LABEL_45;
  }

LABEL_28:
  if (toDisplayName)
  {
    goto LABEL_29;
  }

LABEL_46:

LABEL_29:
  if (!toEmailAddress)
  {
  }

  if (!fromDisplayName)
  {
  }

  if (!fromEmailAddress)
  {
  }

  if (!absoluteString)
  {
  }

  if (v34)
  {
    if (v35)
    {
      goto LABEL_39;
    }
  }

  else
  {

    if (v35)
    {
LABEL_39:
      if (v36)
      {
        goto LABEL_40;
      }

LABEL_49:

      if (v37)
      {
        goto LABEL_41;
      }

      goto LABEL_50;
    }
  }

  if (!v36)
  {
    goto LABEL_49;
  }

LABEL_40:
  if (v37)
  {
    goto LABEL_41;
  }

LABEL_50:

LABEL_41:
  v26 = *MEMORY[0x1E69E9840];

  return v33;
}

- (BMWalletPaymentsCommerceOrderEmailEmailMetadata)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  v149[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v7 = [dictionaryCopy objectForKeyedSubscript:@"messageID"];
  errorCopy8 = self;
  if (!v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v8 = 0;
LABEL_4:
    v9 = [dictionaryCopy objectForKeyedSubscript:@"dateSent"];
    v124 = v8;
    if (v9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v10 = MEMORY[0x1E695DF00];
        v11 = v9;
        v12 = [v10 alloc];
        [v11 doubleValue];
        v14 = v13;

        self = errorCopy8;
        v15 = [v12 initWithTimeIntervalSinceReferenceDate:v14];
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v22 = objc_alloc_init(MEMORY[0x1E696AC80]);
          v122 = [v22 dateFromString:v9];

          goto LABEL_16;
        }

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (!error)
          {
            v19 = 0;
            goto LABEL_101;
          }

          v94 = objc_alloc(MEMORY[0x1E696ABC0]);
          errorCopy = error;
          v95 = *MEMORY[0x1E698F240];
          v146 = *MEMORY[0x1E696A578];
          v26 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (as time internal since 2001 (CFAbsoluteTime)), NSString (ISO8601 format), or NSDate", objc_opt_class(), @"dateSent"];
          v147 = v26;
          v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v147 forKeys:&v146 count:1];
          v96 = v94;
          self = errorCopy8;
          v97 = [v96 initWithDomain:v95 code:2 userInfo:v23];
          v19 = 0;
          error = 0;
          *errorCopy = v97;
          goto LABEL_100;
        }

        v15 = v9;
      }

      v122 = v15;
    }

    else
    {
      v122 = 0;
    }

LABEL_16:
    v23 = [dictionaryCopy objectForKeyedSubscript:@"subject"];
    if (v23 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!error)
        {
          v26 = 0;
          v19 = v122;
LABEL_100:

          v8 = v124;
          goto LABEL_101;
        }

        v40 = objc_alloc(MEMORY[0x1E696ABC0]);
        errorCopy2 = error;
        v42 = *MEMORY[0x1E698F240];
        v144 = *MEMORY[0x1E696A578];
        v121 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"subject"];
        v145 = v121;
        v43 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v145 forKeys:&v144 count:1];
        v44 = v40;
        self = errorCopy8;
        v45 = [v44 initWithDomain:v42 code:2 userInfo:v43];
        error = 0;
        *errorCopy2 = v45;
        v26 = 0;
        v19 = v122;
        goto LABEL_99;
      }

      v24 = v9;
      v25 = v23;
      v26 = v23;
    }

    else
    {
      v24 = v9;
      v25 = v23;
      v26 = 0;
    }

    v27 = [dictionaryCopy objectForKeyedSubscript:@"senderDomain"];
    v119 = v7;
    v120 = v27;
    if (!v27 || (v28 = v27, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v121 = 0;
LABEL_22:
      v29 = [dictionaryCopy objectForKeyedSubscript:@"deeplinkURL"];
      v23 = v25;
      if (!v29)
      {
        v114 = 0;
        v9 = v24;
        goto LABEL_33;
      }

      objc_opt_class();
      v9 = v24;
      if (objc_opt_isKindOfClass())
      {
        v114 = 0;
LABEL_33:
        self = errorCopy8;
        v33 = [dictionaryCopy objectForKeyedSubscript:@"fromEmailAddress"];
        v109 = v29;
        v111 = v33;
        if (v33 && (v34 = v33, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            if (!error)
            {
              v113 = 0;
              v19 = v122;
              v43 = v120;
              goto LABEL_68;
            }

            v64 = objc_alloc(MEMORY[0x1E696ABC0]);
            v65 = v26;
            errorCopy3 = error;
            v67 = *MEMORY[0x1E698F240];
            v136 = *MEMORY[0x1E696A578];
            v112 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"fromEmailAddress"];
            v137 = v112;
            v59 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v137 forKeys:&v136 count:1];
            v68 = v64;
            self = errorCopy8;
            v69 = [v68 initWithDomain:v67 code:2 userInfo:v59];
            v113 = 0;
            error = 0;
            *errorCopy3 = v69;
            v26 = v65;
            v29 = v109;
            v19 = v122;
            v43 = v120;
LABEL_67:

LABEL_68:
            v53 = v114;
LABEL_97:

LABEL_98:
            v7 = v119;
            goto LABEL_99;
          }

          v105 = v23;
          v35 = v9;
          v113 = v34;
        }

        else
        {
          v105 = v23;
          v35 = v9;
          v113 = 0;
        }

        v36 = [dictionaryCopy objectForKeyedSubscript:@"fromDisplayName"];
        if (v36 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            if (!error)
            {
              v112 = 0;
              v19 = v122;
              v43 = v120;
              v59 = v36;
              v9 = v35;
              v23 = v105;
              goto LABEL_67;
            }

            v70 = objc_alloc(MEMORY[0x1E696ABC0]);
            v71 = v26;
            errorCopy4 = error;
            v73 = *MEMORY[0x1E698F240];
            v134 = *MEMORY[0x1E696A578];
            v74 = objc_alloc(MEMORY[0x1E696AEC0]);
            v101 = objc_opt_class();
            v75 = v74;
            v59 = v36;
            v110 = [v75 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", v101, @"fromDisplayName"];
            v135 = v110;
            v76 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v135 forKeys:&v134 count:1];
            v77 = v70;
            self = errorCopy8;
            v104 = v76;
            v78 = [v77 initWithDomain:v73 code:2 userInfo:?];
            v112 = 0;
            error = 0;
            *errorCopy4 = v78;
            v26 = v71;
            v29 = v109;
            v19 = v122;
            v43 = v120;
            v9 = v35;
            v23 = v105;
            goto LABEL_66;
          }

          errorCopy6 = error;
          v103 = v36;
          v112 = v36;
        }

        else
        {
          errorCopy6 = error;
          v103 = v36;
          v112 = 0;
        }

        v38 = [dictionaryCopy objectForKeyedSubscript:@"toEmailAddress"];
        v9 = v35;
        v115 = v26;
        v104 = v38;
        if (v38)
        {
          v39 = v38;
          objc_opt_class();
          v23 = v105;
          if (objc_opt_isKindOfClass())
          {
            v110 = 0;
          }

          else
          {
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              if (!errorCopy6)
              {
                v110 = 0;
                error = 0;
                v19 = v122;
                v43 = v120;
                v59 = v103;
                v29 = v109;
                goto LABEL_66;
              }

              v79 = objc_alloc(MEMORY[0x1E696ABC0]);
              v80 = *MEMORY[0x1E698F240];
              v132 = *MEMORY[0x1E696A578];
              v108 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"toEmailAddress"];
              v133 = v108;
              v54 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v133 forKeys:&v132 count:1];
              v81 = [v79 initWithDomain:v80 code:2 userInfo:v54];
              v110 = 0;
              error = 0;
              *errorCopy6 = v81;
              goto LABEL_112;
            }

            v110 = v39;
          }
        }

        else
        {
          v110 = 0;
          v23 = v105;
        }

        v54 = [dictionaryCopy objectForKeyedSubscript:@"toDisplayName"];
        if (!v54 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
        {
          v108 = 0;
          goto LABEL_56;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v108 = v54;
LABEL_56:
          v55 = [dictionaryCopy objectForKeyedSubscript:@"replyToEmailAddress"];
          if (!v55 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
          {
            error = errorCopy6;
            v56 = 0;
            goto LABEL_59;
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            error = errorCopy6;
            v56 = v55;
LABEL_59:
            v57 = [dictionaryCopy objectForKeyedSubscript:@"replyToDisplayName"];
            if (v57 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
            {
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {
                if (error)
                {
                  v107 = objc_alloc(MEMORY[0x1E696ABC0]);
                  v102 = *MEMORY[0x1E698F240];
                  v126 = *MEMORY[0x1E696A578];
                  errorCopy7 = error;
                  v99 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"replyToDisplayName"];
                  v127 = v99;
                  v100 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v127 forKeys:&v126 count:1];
                  *errorCopy7 = [v107 initWithDomain:v102 code:2 userInfo:v100];

                  v58 = 0;
                  error = 0;
                }

                else
                {
                  v58 = 0;
                }

                goto LABEL_63;
              }

              v58 = v57;
            }

            else
            {
              v58 = 0;
            }

            error = [(BMWalletPaymentsCommerceOrderEmailEmailMetadata *)errorCopy8 initWithMessageID:v124 dateSent:v122 subject:v115 senderDomain:v121 deeplinkURL:v114 fromEmailAddress:v113 fromDisplayName:v112 toEmailAddress:v110 toDisplayName:v108 replyToEmailAddress:v56 replyToDisplayName:v58];
            errorCopy8 = error;
LABEL_63:
            v29 = v109;

            v19 = v122;
LABEL_64:

LABEL_65:
            self = errorCopy8;
            v26 = v115;
            v43 = v120;
            v59 = v103;
LABEL_66:

            goto LABEL_67;
          }

          if (errorCopy6)
          {
            v106 = objc_alloc(MEMORY[0x1E696ABC0]);
            v85 = *MEMORY[0x1E698F240];
            v128 = *MEMORY[0x1E696A578];
            v58 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"replyToEmailAddress"];
            v129 = v58;
            v57 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v129 forKeys:&v128 count:1];
            v86 = [v106 initWithDomain:v85 code:2 userInfo:v57];
            v56 = 0;
            error = 0;
            *errorCopy6 = v86;
            goto LABEL_63;
          }

          v56 = 0;
          error = 0;
LABEL_114:
          v19 = v122;
          v29 = v109;
          goto LABEL_64;
        }

        if (errorCopy6)
        {
          v82 = objc_alloc(MEMORY[0x1E696ABC0]);
          v83 = *MEMORY[0x1E698F240];
          v130 = *MEMORY[0x1E696A578];
          v56 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"toDisplayName"];
          v131 = v56;
          v55 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v131 forKeys:&v130 count:1];
          v84 = [v82 initWithDomain:v83 code:2 userInfo:v55];
          v108 = 0;
          error = 0;
          *errorCopy6 = v84;
          goto LABEL_114;
        }

        v108 = 0;
        error = 0;
LABEL_112:
        v19 = v122;
        v29 = v109;
        goto LABEL_65;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v30 = v29;
        v31 = [objc_alloc(MEMORY[0x1E695DFF8]) initWithString:v30];
        if (v31)
        {
          v32 = v31;

          v114 = v32;
          goto LABEL_33;
        }

        v29 = v30;
        v19 = v122;
        if (error)
        {
          v87 = objc_alloc(MEMORY[0x1E696ABC0]);
          v118 = v26;
          errorCopy9 = error;
          v89 = *MEMORY[0x1E698F240];
          v140 = *MEMORY[0x1E696A578];
          v90 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"-initWithString: for %@ returned nil", @"deeplinkURL"];
          v141 = v90;
          v91 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v141 forKeys:&v140 count:1];
          *errorCopy9 = [v87 initWithDomain:v89 code:2 userInfo:v91];
          v26 = v118;

          error = 0;
        }

        v53 = v29;
      }

      else
      {
        if (!error)
        {
          v19 = v122;
          v43 = v120;
          self = errorCopy8;
          goto LABEL_98;
        }

        v60 = objc_alloc(MEMORY[0x1E696ABC0]);
        v117 = v26;
        errorCopy10 = error;
        v62 = *MEMORY[0x1E698F240];
        v138 = *MEMORY[0x1E696A578];
        v53 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"deeplinkURL"];
        v139 = v53;
        v63 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v139 forKeys:&v138 count:1];
        *errorCopy10 = [v60 initWithDomain:v62 code:2 userInfo:v63];
        v26 = v117;

        error = 0;
        v19 = v122;
      }

      v43 = v120;
LABEL_96:
      self = errorCopy8;
      goto LABEL_97;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v121 = v28;
      goto LABEL_22;
    }

    if (error)
    {
      v46 = objc_alloc(MEMORY[0x1E696ABC0]);
      v116 = v26;
      errorCopy11 = error;
      v48 = *MEMORY[0x1E698F240];
      v142 = *MEMORY[0x1E696A578];
      v43 = v120;
      v49 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"senderDomain"];
      v143 = v49;
      v50 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v143 forKeys:&v142 count:1];
      v51 = v46;
      v29 = v49;
      v52 = [v51 initWithDomain:v48 code:2 userInfo:v50];
      v121 = 0;
      error = 0;
      *errorCopy11 = v52;
      v53 = v50;
      v26 = v116;
      v19 = v122;
      v23 = v25;
      v9 = v24;
      goto LABEL_96;
    }

    v121 = 0;
    v19 = v122;
    v43 = v120;
    v23 = v25;
    v9 = v24;
    self = errorCopy8;
LABEL_99:

    goto LABEL_100;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
    goto LABEL_4;
  }

  if (error)
  {
    v16 = objc_alloc(MEMORY[0x1E696ABC0]);
    errorCopy12 = error;
    v18 = *MEMORY[0x1E698F240];
    v148 = *MEMORY[0x1E696A578];
    v19 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"messageID"];
    v149[0] = v19;
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v149 forKeys:&v148 count:1];
    v20 = v16;
    self = errorCopy8;
    v21 = [v20 initWithDomain:v18 code:2 userInfo:v9];
    v8 = 0;
    error = 0;
    *errorCopy12 = v21;
LABEL_101:

    goto LABEL_102;
  }

  v8 = 0;
LABEL_102:

  v92 = *MEMORY[0x1E69E9840];
  return error;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMWalletPaymentsCommerceOrderEmailEmailMetadata *)self writeTo:v3];
  immutableData = [v3 immutableData];

  return immutableData;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v6 = toCopy;
  if (self->_messageID)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }

  if (self->_hasRaw_dateSent)
  {
    raw_dateSent = self->_raw_dateSent;
    PBDataWriterWriteDoubleField();
    toCopy = v6;
  }

  if (self->_subject)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }

  if (self->_senderDomain)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }

  if (self->_raw_deeplinkURL)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }

  if (self->_fromEmailAddress)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }

  if (self->_fromDisplayName)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }

  if (self->_toEmailAddress)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }

  if (self->_toDisplayName)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }

  if (self->_replyToEmailAddress)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }

  if (self->_replyToDisplayName)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }
}

- (id)initByReadFrom:(id)from
{
  fromCopy = from;
  v25.receiver = self;
  v25.super_class = BMWalletPaymentsCommerceOrderEmailEmailMetadata;
  v5 = [(BMEventBase *)&v25 init];
  if (!v5)
  {
    goto LABEL_54;
  }

  position = [fromCopy position];
  if (position < [fromCopy length])
  {
    do
    {
      if ([fromCopy hasError])
      {
        break;
      }

      v7 = 0;
      v8 = 0;
      v9 = 0;
      while (1)
      {
        LOBYTE(v26) = 0;
        v10 = [fromCopy position] + 1;
        if (v10 >= [fromCopy position] && (v11 = objc_msgSend(fromCopy, "position") + 1, v11 <= objc_msgSend(fromCopy, "length")))
        {
          data = [fromCopy data];
          [data getBytes:&v26 range:{objc_msgSend(fromCopy, "position"), 1}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
        }

        else
        {
          [fromCopy _setError];
        }

        v9 |= (LOBYTE(v26) & 0x7F) << v7;
        if ((LOBYTE(v26) & 0x80) == 0)
        {
          break;
        }

        v7 += 7;
        if (v8++ >= 9)
        {
          v14 = 0;
          goto LABEL_16;
        }
      }

      v14 = [fromCopy hasError] ? 0 : v9;
LABEL_16:
      if (([fromCopy hasError] & 1) != 0 || (v14 & 7) == 4)
      {
        break;
      }

      v15 = v14 >> 3;
      if ((v14 >> 3) <= 5)
      {
        if (v15 <= 2)
        {
          if (v15 == 1)
          {
            v16 = PBReaderReadString();
            v17 = 48;
            goto LABEL_45;
          }

          if (v15 == 2)
          {
            v5->_hasRaw_dateSent = 1;
            v26 = 0.0;
            v18 = [fromCopy position] + 8;
            if (v18 >= [fromCopy position] && (v19 = objc_msgSend(fromCopy, "position") + 8, v19 <= objc_msgSend(fromCopy, "length")))
            {
              data2 = [fromCopy data];
              [data2 getBytes:&v26 range:{objc_msgSend(fromCopy, "position"), 8}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 8}];
            }

            else
            {
              [fromCopy _setError];
            }

            v5->_raw_dateSent = v26;
            goto LABEL_46;
          }
        }

        else
        {
          switch(v15)
          {
            case 3:
              v16 = PBReaderReadString();
              v17 = 56;
              goto LABEL_45;
            case 4:
              v16 = PBReaderReadString();
              v17 = 64;
              goto LABEL_45;
            case 5:
              v16 = PBReaderReadString();
              v17 = 32;
              goto LABEL_45;
          }
        }
      }

      else if (v15 > 8)
      {
        switch(v15)
        {
          case 9:
            v16 = PBReaderReadString();
            v17 = 96;
            goto LABEL_45;
          case 0xA:
            v16 = PBReaderReadString();
            v17 = 104;
            goto LABEL_45;
          case 0xB:
            v16 = PBReaderReadString();
            v17 = 112;
            goto LABEL_45;
        }
      }

      else
      {
        switch(v15)
        {
          case 6:
            v16 = PBReaderReadString();
            v17 = 72;
            goto LABEL_45;
          case 7:
            v16 = PBReaderReadString();
            v17 = 80;
            goto LABEL_45;
          case 8:
            v16 = PBReaderReadString();
            v17 = 88;
LABEL_45:
            v20 = *(&v5->super.super.isa + v17);
            *(&v5->super.super.isa + v17) = v16;

            goto LABEL_46;
        }
      }

      if (!PBReaderSkipValueWithTag())
      {
        goto LABEL_53;
      }

LABEL_46:
      position2 = [fromCopy position];
    }

    while (position2 < [fromCopy length]);
  }

  if ([fromCopy hasError])
  {
LABEL_53:
    v23 = 0;
  }

  else
  {
LABEL_54:
    v23 = v5;
  }

  return v23;
}

- (NSString)description
{
  v14 = objc_alloc(MEMORY[0x1E696AEC0]);
  messageID = [(BMWalletPaymentsCommerceOrderEmailEmailMetadata *)self messageID];
  dateSent = [(BMWalletPaymentsCommerceOrderEmailEmailMetadata *)self dateSent];
  subject = [(BMWalletPaymentsCommerceOrderEmailEmailMetadata *)self subject];
  senderDomain = [(BMWalletPaymentsCommerceOrderEmailEmailMetadata *)self senderDomain];
  deeplinkURL = [(BMWalletPaymentsCommerceOrderEmailEmailMetadata *)self deeplinkURL];
  fromEmailAddress = [(BMWalletPaymentsCommerceOrderEmailEmailMetadata *)self fromEmailAddress];
  fromDisplayName = [(BMWalletPaymentsCommerceOrderEmailEmailMetadata *)self fromDisplayName];
  toEmailAddress = [(BMWalletPaymentsCommerceOrderEmailEmailMetadata *)self toEmailAddress];
  toDisplayName = [(BMWalletPaymentsCommerceOrderEmailEmailMetadata *)self toDisplayName];
  replyToEmailAddress = [(BMWalletPaymentsCommerceOrderEmailEmailMetadata *)self replyToEmailAddress];
  replyToDisplayName = [(BMWalletPaymentsCommerceOrderEmailEmailMetadata *)self replyToDisplayName];
  v15 = [v14 initWithFormat:@"BMWalletPaymentsCommerceOrderEmailEmailMetadata with messageID: %@, dateSent: %@, subject: %@, senderDomain: %@, deeplinkURL: %@, fromEmailAddress: %@, fromDisplayName: %@, toEmailAddress: %@, toDisplayName: %@, replyToEmailAddress: %@, replyToDisplayName: %@", messageID, dateSent, subject, senderDomain, deeplinkURL, fromEmailAddress, fromDisplayName, toEmailAddress, toDisplayName, replyToEmailAddress, replyToDisplayName];

  return v15;
}

- (BMWalletPaymentsCommerceOrderEmailEmailMetadata)initWithMessageID:(id)d dateSent:(id)sent subject:(id)subject senderDomain:(id)domain deeplinkURL:(id)l fromEmailAddress:(id)address fromDisplayName:(id)name toEmailAddress:(id)self0 toDisplayName:(id)self1 replyToEmailAddress:(id)self2 replyToDisplayName:(id)self3
{
  dCopy = d;
  sentCopy = sent;
  subjectCopy = subject;
  subjectCopy2 = subject;
  domainCopy = domain;
  domainCopy2 = domain;
  lCopy = l;
  addressCopy = address;
  nameCopy = name;
  emailAddressCopy = emailAddress;
  displayNameCopy = displayName;
  toEmailAddressCopy = toEmailAddress;
  toDisplayNameCopy = toDisplayName;
  v38.receiver = self;
  v38.super_class = BMWalletPaymentsCommerceOrderEmailEmailMetadata;
  v24 = [(BMEventBase *)&v38 init];
  if (v24)
  {
    v24->_dataVersion = [objc_opt_class() latestDataVersion];
    objc_storeStrong(&v24->_messageID, d);
    if (sentCopy)
    {
      v24->_hasRaw_dateSent = 1;
      [sentCopy timeIntervalSinceReferenceDate];
    }

    else
    {
      v24->_hasRaw_dateSent = 0;
      v25 = -1.0;
    }

    v24->_raw_dateSent = v25;
    objc_storeStrong(&v24->_subject, subjectCopy);
    objc_storeStrong(&v24->_senderDomain, domainCopy);
    if (lCopy)
    {
      absoluteString = [lCopy absoluteString];
    }

    else
    {
      absoluteString = 0;
    }

    raw_deeplinkURL = v24->_raw_deeplinkURL;
    v24->_raw_deeplinkURL = absoluteString;

    objc_storeStrong(&v24->_fromEmailAddress, address);
    objc_storeStrong(&v24->_fromDisplayName, name);
    objc_storeStrong(&v24->_toEmailAddress, emailAddress);
    objc_storeStrong(&v24->_toDisplayName, displayName);
    objc_storeStrong(&v24->_replyToEmailAddress, toEmailAddress);
    objc_storeStrong(&v24->_replyToDisplayName, toDisplayName);
  }

  return v24;
}

+ (id)protoFields
{
  v16[11] = *MEMORY[0x1E69E9840];
  v15 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"messageID" number:1 type:13 subMessageClass:0];
  v16[0] = v15;
  v14 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"dateSent" number:2 type:0 subMessageClass:0];
  v16[1] = v14;
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"subject" number:3 type:13 subMessageClass:0];
  v16[2] = v2;
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"senderDomain" number:4 type:13 subMessageClass:0];
  v16[3] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"deeplinkURL" number:5 type:13 subMessageClass:0];
  v16[4] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"fromEmailAddress" number:6 type:13 subMessageClass:0];
  v16[5] = v5;
  v6 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"fromDisplayName" number:7 type:13 subMessageClass:0];
  v16[6] = v6;
  v7 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"toEmailAddress" number:8 type:13 subMessageClass:0];
  v16[7] = v7;
  v8 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"toDisplayName" number:9 type:13 subMessageClass:0];
  v16[8] = v8;
  v9 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"replyToEmailAddress" number:10 type:13 subMessageClass:0];
  v16[9] = v9;
  v10 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"replyToDisplayName" number:11 type:13 subMessageClass:0];
  v16[10] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:11];

  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

+ (id)columns
{
  v16[11] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"messageID" dataType:2 requestOnly:0 fieldNumber:1 protoDataType:13 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"dateSent" dataType:3 requestOnly:0 fieldNumber:2 protoDataType:0 convertedType:1];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"subject" dataType:2 requestOnly:0 fieldNumber:3 protoDataType:13 convertedType:0];
  v5 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"senderDomain" dataType:2 requestOnly:0 fieldNumber:4 protoDataType:13 convertedType:0];
  v6 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"deeplinkURL" dataType:2 requestOnly:0 fieldNumber:5 protoDataType:13 convertedType:4];
  v14 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"fromEmailAddress" dataType:2 requestOnly:0 fieldNumber:6 protoDataType:13 convertedType:0];
  v7 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"fromDisplayName" dataType:2 requestOnly:0 fieldNumber:7 protoDataType:13 convertedType:0];
  v8 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"toEmailAddress" dataType:2 requestOnly:0 fieldNumber:8 protoDataType:13 convertedType:0];
  v15 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"toDisplayName" dataType:2 requestOnly:0 fieldNumber:9 protoDataType:13 convertedType:0];
  v9 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"replyToEmailAddress" dataType:2 requestOnly:0 fieldNumber:10 protoDataType:13 convertedType:0];
  v10 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"replyToDisplayName" dataType:2 requestOnly:0 fieldNumber:11 protoDataType:13 convertedType:0];
  v16[0] = v2;
  v16[1] = v3;
  v16[2] = v4;
  v16[3] = v5;
  v16[4] = v6;
  v16[5] = v14;
  v16[6] = v7;
  v16[7] = v8;
  v16[8] = v15;
  v16[9] = v9;
  v16[10] = v10;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:11];

  v11 = *MEMORY[0x1E69E9840];

  return v13;
}

+ (id)eventWithData:(id)data dataVersion:(unsigned int)version
{
  if (version)
  {
    v4 = 0;
  }

  else
  {
    v5 = MEMORY[0x1E69C65B8];
    dataCopy = data;
    v7 = [[v5 alloc] initWithData:dataCopy];

    v8 = [[BMWalletPaymentsCommerceOrderEmailEmailMetadata alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[10] = 0;
    }
  }

  return v4;
}

@end