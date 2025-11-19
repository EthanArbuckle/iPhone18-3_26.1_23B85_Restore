@interface SGSimpleMailMessage
+ (BOOL)enumerateRfc822InNeXTMbox:(id)a3 tableOfContents:(id)a4 withBlock:(id)a5;
+ (BOOL)headerDictionaryContainsInhumanHeaders:(id)a3;
+ (BOOL)headersContainInhumanOnes:(id)a3 keys:(id)a4;
+ (_NSRange)rangeOfBodyFromRfc822:(id)a3;
+ (_NSRange)rangeOfHeadersFromRfc822:(id)a3;
+ (id)addressItemsFromEmailString:(id)a3;
+ (id)dateFromEmailString:(id)a3;
+ (id)decodeQuotedPrintable:(id)a3 charset:(unint64_t)a4 rfc2047UnderscoreAsSpace:(BOOL)a5;
+ (id)formatFlowed:(id)a3 delSp:(BOOL)a4;
+ (id)htmlBodyFromRfc822:(id)a3 headers:(id)a4 attachmentCallback:(id)a5;
+ (id)htmlFromPlainTextBody:(id)a3;
+ (id)parseHeaders:(id)a3;
+ (id)parseParameterizedHeaderValue:(id)a3;
+ (id)parseRfc822:(id)a3 attachmentCallback:(id)a4;
+ (id)parseRfc822Headers:(id)a3 htmlContent:(id)a4;
+ (id)parseRfc822Headers:(id)a3 htmlContent:(id)a4 source:(id)a5;
+ (id)simpleMailMessageFromHeaders:(id)a3;
+ (id)stripTrailingASCIIHSpace:(id)a3;
+ (id)subjectByCleaningPrefixesInSubject:(id)a3;
+ (id)uudecode:(id)a3;
- (BOOL)hasHumanHeaders;
- (BOOL)hasRecipientFromSameDomainAsSender;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToSimpleMailMessage:(id)a3;
- (BOOL)isInhumanContentNoncached;
- (NSData)htmlContentData;
- (NSIndexSet)quotedRegions;
- (NSString)htmlBody;
- (SGSimpleMailMessage)initWithCoder:(id)a3;
- (SGSimpleMailMessage)initWithMailContentEvent:(id)a3 contentProtection:(id)a4 htmlParser:(id)a5;
- (SGSimpleMailMessage)initWithMessageDictionary:(id)a3;
- (SGSimpleMailMessage)initWithSearchableItem:(id)a3;
- (id)allRecipients;
- (id)asDictionary;
- (id)author;
- (id)convertMailMessageToBMMailMessage:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)createNewSearchableItemWithSource:(id)a3 uniqueIdentifier:(id)a4 domainIdentifier:(id)a5;
- (id)dataDetectorMatchesWithSignature;
- (id)description;
- (id)headersDictionary;
- (id)initForBuilding;
- (id)senderDomain;
- (id)spotlightBundleIdentifier;
- (id)spotlightUniqueIdentifier;
- (id)textContent;
- (id)uniqueIdentifier;
- (int64_t)contentLength;
- (unint64_t)hash;
- (void)_clearExistingHtml;
- (void)encodeWithCoder:(id)a3;
- (void)setHtmlBody:(id)a3;
- (void)setHtmlContentData:(id)a3;
@end

@implementation SGSimpleMailMessage

+ (BOOL)enumerateRfc822InNeXTMbox:(id)a3 tableOfContents:(id)a4 withBlock:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [v8 length];
  v34 = [v7 length];
  if (v10 >= 0x20)
  {
    v41 = 0;
    [v8 getBytes:&v41 range:{4, 4}];
    v12 = v41;
    v41 = bswap32(v41);
    if (v12)
    {
      v11 = 1;
      v33 = [MEMORY[0x277CBEA90] dataWithBytes:"\n" length:1];
      if (v41 >= 1)
      {
        v13 = 0;
        v32 = v8;
        v14 = 32;
        v36 = v7;
        while (1)
        {
          v15 = objc_autoreleasePoolPush();
          if (v14 + 4 > v10)
          {
            goto LABEL_17;
          }

          v40 = 0;
          [v8 getBytes:&v40 range:{v14, 4}];
          v40 = bswap32(v40);
          v16 = v14 + 4 + v40;
          if (v16 > v10)
          {
            goto LABEL_17;
          }

          v39 = 0;
          [v8 getBytes:&v39 range:{v14 + 4, 4}];
          v38 = 0;
          v39 = bswap32(v39);
          [v8 getBytes:&v38 range:{v14 + 8, 4}];
          v17 = v39;
          v18 = bswap32(v38);
          v38 = v18;
          v19 = v39 + v18;
          if (v19 > v34)
          {
LABEL_17:
            objc_autoreleasePoolPop(v15);
            v11 = 0;
            goto LABEL_19;
          }

          context = v15;
          v20 = v9;
          v21 = v18;
          v22 = [v7 rangeOfData:v33 options:0 range:{v39, v18}];
          if (v22 != 0x7FFFFFFFFFFFFFFFLL)
          {
            v24 = v22;
            v25 = v23;
            v26 = objc_alloc(MEMORY[0x277CCACA8]);
            v27 = v36;
            v28 = [v26 initWithBytes:objc_msgSend(v36 length:"bytes") + v17 encoding:{v24 - v17, 1}];
            if ([v28 rangeOfString:@"From " options:11] != 0x7FFFFFFFFFFFFFFFLL)
            {
              v17 = v24 + v25;
              v21 = v19 - (v24 + v25);
            }

            v7 = v36;
          }

          v29 = [v7 subdataWithRange:{v17, v21}];
          v37 = 0;
          v9 = v20;
          (*(v20 + 2))(v20, v29, &v37);
          v30 = v37;

          objc_autoreleasePoolPop(context);
          if (v30)
          {
            break;
          }

          ++v13;
          v14 = v16;
          v7 = v36;
          v8 = v32;
          if (v13 >= v41)
          {
            v11 = 1;
            goto LABEL_19;
          }
        }

        v11 = 1;
        v7 = v36;
        v8 = v32;
      }

LABEL_19:
    }

    else
    {
      v11 = 1;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

+ (id)parseRfc822:(id)a3 attachmentCallback:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [a1 parseHeaders:v6];
  v9 = [a1 htmlBodyFromRfc822:v6 headers:v8 attachmentCallback:v7];
  v10 = [v9 rangeOfString:@"\r" options:2];
  if (v10 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v12 = v10;
    v13 = v11;
    v14 = objc_autoreleasePoolPush();
    v21.location = [v9 length];
    v20.location = v12;
    v20.length = v13;
    v21.length = 0;
    v15 = NSUnionRange(v20, v21);
    v16 = [v9 stringByReplacingOccurrencesOfString:@"\r" withString:&stru_284703F00 options:2 range:{v15.location, v15.length}];

    objc_autoreleasePoolPop(v14);
    v9 = v16;
  }

  v17 = [SGSimpleMailMessage simpleMailMessageFromHeaders:v8];
  [v17 setHtmlBody:v9];

  return v17;
}

+ (id)htmlBodyFromRfc822:(id)a3 headers:(id)a4 attachmentCallback:(id)a5
{
  v139[1] = *MEMORY[0x277D85DE8];
  v130 = a3;
  v8 = a4;
  v122 = a5;
  v114 = v8;
  v9 = [v8 hv_firstHeaderForKey:@"content-type"];
  v10 = v9;
  v11 = @"text/plain";
  if (v9)
  {
    v11 = v9;
  }

  v12 = v11;

  v106 = v12;
  v124 = [a1 parseParameterizedHeaderValue:v12];
  v13 = objc_autoreleasePoolPush();
  v14 = [v124 first];
  v117 = [v14 lowercaseString];

  objc_autoreleasePoolPop(v13);
  v126 = [v124 second];
  v15 = objc_autoreleasePoolPush();
  v16 = [v126 objectForKeyedSubscript:@"charset"];
  v17 = v16;
  if (!v16)
  {
    v16 = @"us-ascii";
  }

  theString = [(__CFString *)v16 lowercaseString];

  objc_autoreleasePoolPop(v15);
  v18 = [v126 objectForKeyedSubscript:@"boundary"];
  if (!v18)
  {
    goto LABEL_8;
  }

  v19 = objc_autoreleasePoolPush();
  v20 = [v126 objectForKeyedSubscript:@"boundary"];
  v111 = [@"\n--" stringByAppendingString:v20];

  objc_autoreleasePoolPop(v19);
  if (v111)
  {
    v21 = objc_autoreleasePoolPush();
    v109 = [v111 stringByAppendingString:@"--"];
    objc_autoreleasePoolPop(v21);
    v22 = 1;
  }

  else
  {
LABEL_8:
    v109 = 0;
    v111 = 0;
    v22 = 0;
  }

  v23 = [v114 hv_firstHeaderForKey:@"content-disposition"];
  v24 = v23;
  v25 = @"inline";
  if (v23)
  {
    v25 = v23;
  }

  v26 = v25;

  v105 = v26;
  v123 = [a1 parseParameterizedHeaderValue:v26];
  v27 = objc_autoreleasePoolPush();
  v28 = [v123 first];
  v125 = [v28 lowercaseString];

  objc_autoreleasePoolPop(v27);
  v108 = [v123 second];
  if (([v125 isEqual:@"attachment"] & 1) == 0 && (v22 & objc_msgSend(v117, "hasPrefix:", @"multipart/")) == 1)
  {
    v101 = [v117 isEqual:@"multipart/alternative"];
    if (v101)
    {
      v29 = 0;
    }

    else
    {
      if ([v117 isEqual:@"multipart/related"])
      {
        v119 = [v126 objectForKeyedSubscript:@"start"];
        v29 = v119 == 0;
LABEL_54:
        v59 = [a1 rangeOfBodyFromRfc822:v130];
        if (v59)
        {
          v61 = v60 + 1;
        }

        else
        {
          v61 = v60;
        }

        if (v59)
        {
          v62 = v59 - 1;
        }

        else
        {
          v62 = 0;
        }

        v63 = objc_autoreleasePoolPush();
        v121 = [v111 dataUsingEncoding:1];
        objc_autoreleasePoolPop(v63);
        v64 = objc_autoreleasePoolPush();
        v107 = [v109 dataUsingEncoding:1];
        objc_autoreleasePoolPop(v64);
        v103 = objc_opt_new();
        v65 = [v130 bytes];
        v113 = 0;
        v104 = v65 - 1;
        if (v29)
        {
          v66 = 5;
        }

        else
        {
          v66 = 0;
        }

        v102 = v66;
        v129 = 0x7FFFFFFFFFFFFFFFLL;
        v116 = v65;
        while (1)
        {
          v67 = [v130 rangeOfData:v121 options:0 range:{v62, v61}];
          if (v67 == 0x7FFFFFFFFFFFFFFFLL)
          {
            if (!v61)
            {
              goto LABEL_113;
            }

            if (*(v116 + v62) == 10 || *(v104 + v62 + v61) != 10)
            {
              goto LABEL_113;
            }

            location = v62 + v61 - 1;
            v71 = 1;
            v72 = 1;
            goto LABEL_94;
          }

          v73 = v67;
          v74 = v68;
          v142.length = v68 + 2;
          v141.location = v62;
          v141.length = v61;
          v142.location = v73;
          v75 = NSIntersectionRange(v141, v142);
          v76 = [v130 rangeOfData:v107 options:2 range:{v75.location, v75.length}];
          v71 = v76 != 0x7FFFFFFFFFFFFFFFLL;
          if (v76 == 0x7FFFFFFFFFFFFFFFLL)
          {
            length = v74;
          }

          else
          {
            length = v75.length;
          }

          if (v76 == 0x7FFFFFFFFFFFFFFFLL)
          {
            location = v73;
          }

          else
          {
            location = v75.location;
          }

          v78 = v62 + v61;
          v79 = length + location;
          if (length + location >= v62 + v61)
          {
            v72 = length;
            v82 = v116;
LABEL_91:
            if (location && *(v82 + location - 1) == 13)
            {
              ++v72;
              --location;
            }

LABEL_94:
            if (v129 != 0x7FFFFFFFFFFFFFFFLL)
            {
              v86 = objc_autoreleasePoolPush();
              v87 = [v130 subdataWithRange:{v129 + v113, location - (v129 + v113)}];
              v88 = [a1 parseHeaders:v87];
              v89 = v88;
              if (v119)
              {
                v90 = [v88 hv_firstHeaderForKey:@"content-id"];
                v91 = [v119 isEqual:v90];

                if (!v91)
                {
                  goto LABEL_103;
                }
              }

              v92 = objc_autoreleasePoolPush();
              v93 = [a1 htmlBodyFromRfc822:v87 headers:v89 attachmentCallback:v122];
              if (v93)
              {
                if (v101)
                {
                  [v103 removeAllObjects];
                }

                [v103 addObject:v93];
              }

              objc_autoreleasePoolPop(v92);
              if (v119)
              {
                v85 = 5;
              }

              else
              {
LABEL_103:
                v85 = v102;
              }

              objc_autoreleasePoolPop(v86);
              if (v85)
              {
                length = v72;
                goto LABEL_112;
              }
            }

            if (!v71)
            {
              v85 = 0;
              length = v72;
              v113 = v72;
              v129 = location;
              goto LABEL_112;
            }

            goto LABEL_113;
          }

          v80 = 0;
          v72 = v78 - location;
          v81 = length;
          v82 = v116;
          while (2)
          {
            v83 = v80;
            while (1)
            {
              v84 = *(v116 + v79);
              ++v81;
              if (v84 == 10 || (v83 & 1) != 0)
              {
                v72 = v81;
                if (v84 == 10)
                {
                  goto LABEL_91;
                }

LABEL_111:
                v85 = 4;
                goto LABEL_112;
              }

              if (v84 != 9 && v84 != 32)
              {
                break;
              }

              v83 = 0;
              v79 = v81 + location;
              if (v81 + location >= v78)
              {
                if ((v80 & 1) == 0)
                {
                  goto LABEL_91;
                }

                goto LABEL_111;
              }
            }

            if (v84 != 13)
            {
              goto LABEL_111;
            }

            v79 = v81 + location;
            v85 = 4;
            v80 = 1;
            if (v81 + location < v78)
            {
              continue;
            }

            break;
          }

LABEL_112:
          v94 = v62 + v61;
          v62 = location + length;
          v61 = v94 - (location + length);
          if (v85 == 5)
          {
LABEL_113:
            if ([v103 count])
            {
              v32 = [v103 _pas_proxyComponentsJoinedByString:&stru_284703F00];
            }

            else
            {
              v32 = 0;
            }

            goto LABEL_126;
          }
        }
      }

      v29 = [v117 isEqual:@"multipart/signed"];
    }

    v119 = 0;
    goto LABEL_54;
  }

  if (([v117 isEqual:@"text/html"] & 1) == 0 && (objc_msgSend(v117, "isEqual:", @"text/plain") & 1) == 0 && !objc_msgSend(v125, "isEqual:", @"attachment"))
  {
    v32 = 0;
    goto LABEL_126;
  }

  v30 = objc_autoreleasePoolPush();
  v31 = [v125 isEqual:@"attachment"];
  if (v122 || (v31 & 1) == 0)
  {
    v120 = v30;
    v33 = [a1 rangeOfBodyFromRfc822:v130];
    v35 = v34;
    v36 = objc_autoreleasePoolPush();
    v128 = [v130 subdataWithRange:{v33, v35}];
    objc_autoreleasePoolPop(v36);
    v37 = CFStringConvertIANACharSetNameToEncoding(theString);
    if (v37 == -1)
    {
      v37 = 1536;
    }

    v118 = CFStringConvertEncodingToNSStringEncoding(v37);
    if ([v117 isEqual:@"text/plain"] && (objc_msgSend(v126, "objectForKeyedSubscript:", @"format"), (v38 = objc_claimAutoreleasedReturnValue()) != 0) && (objc_msgSend(v126, "objectForKeyedSubscript:", @"format"), v39 = objc_claimAutoreleasedReturnValue(), v40 = objc_msgSend(v39, "caseInsensitiveCompare:", @"flowed"), v39, v38, !v40))
    {
      v96 = [v126 objectForKeyedSubscript:@"delsp"];
      if (v96)
      {
        v97 = [v126 objectForKeyedSubscript:@"delsp"];
        v112 = [v97 caseInsensitiveCompare:@"yes"] == 0;
      }

      else
      {
        v112 = 0;
      }

      v115 = 1;
    }

    else
    {
      v115 = 0;
      v112 = 0;
    }

    v41 = objc_autoreleasePoolPush();
    v42 = [v114 hv_firstHeaderForKey:@"content-transfer-encoding"];
    v43 = [v42 lowercaseString];

    objc_autoreleasePoolPop(v41);
    if ([v43 isEqual:@"binary"])
    {
LABEL_28:
      v44 = v128;
      goto LABEL_36;
    }

    if ([v43 isEqual:@"base64"])
    {
      v44 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBase64EncodedData:v128 options:1];
    }

    else if ([v43 isEqual:@"x-uuencode"])
    {
      v44 = [a1 uudecode:v128];
    }

    else
    {
      if ([v43 isEqual:@"quoted-printable"])
      {
        v95 = [MEMORY[0x277CCACA8] _pas_stringWithDataNoCopy:v128 encoding:1 nullTerminated:0];
        v45 = [a1 decodeQuotedPrintable:v95 charset:v118 rfc2047UnderscoreAsSpace:0];

        if (!v45)
        {
          goto LABEL_41;
        }

LABEL_37:
        v46 = [v125 isEqual:@"attachment"];
        v47 = objc_autoreleasePoolPush();
        if (!v46)
        {
          v132 = 0;
          v49 = objc_autoreleasePoolPush();
          v50 = MEMORY[0x277CCACA8];
          v138 = *MEMORY[0x277CCA680];
          v51 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v118];
          v137 = v51;
          v52 = [MEMORY[0x277CBEA60] arrayWithObjects:&v137 count:1];
          v139[0] = v52;
          v53 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v139 forKeys:&v138 count:1];
          v131 = 0;
          v54 = [v50 stringEncodingForData:v45 encodingOptions:v53 convertedString:&v131 usedLossyConversion:&v132];
          v55 = v131;

          objc_autoreleasePoolPop(v49);
          if (v54)
          {
            if (v132 == 1)
            {
              v56 = sgLogHandle();
              if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 134218240;
                v134 = v54;
                v135 = 2048;
                v136 = v118;
                _os_log_impl(&dword_231E60000, v56, OS_LOG_TYPE_DEFAULT, "Lossy conversion. Detected charset: %ld (expected: %ld)", buf, 0x16u);
              }
            }

            if ([v117 isEqual:@"text/plain"])
            {
              if (v115)
              {
                v57 = [a1 formatFlowed:v55 delSp:v112];

                v55 = v57;
              }

              v58 = [a1 htmlFromPlainTextBody:v55];

              v55 = v58;
            }

            v55 = v55;
            v32 = v55;
          }

          else
          {
            v32 = 0;
          }

          objc_autoreleasePoolPop(v47);
          goto LABEL_124;
        }

        if (!v122)
        {
          v100 = [MEMORY[0x277CCA890] currentHandler];
          [v100 handleFailureInMethod:a2 object:a1 file:@"SGSimpleMailMessage+RFC822Parsing.m" lineNumber:739 description:{@"Invalid parameter not satisfying: %@", @"attachmentCallback"}];
        }

        v48 = [v108 objectForKeyedSubscript:@"filename"];
        v122[2](v122, v45, v48, v117);

        objc_autoreleasePoolPop(v47);
LABEL_41:
        v32 = 0;
LABEL_124:

        v30 = v120;
        goto LABEL_125;
      }

      if (v115)
      {
        goto LABEL_28;
      }

      v44 = [a1 stripTrailingASCIIHSpace:v128];
    }

LABEL_36:
    v45 = v44;
    if (!v44)
    {
      goto LABEL_41;
    }

    goto LABEL_37;
  }

  v32 = 0;
LABEL_125:
  objc_autoreleasePoolPop(v30);
LABEL_126:

  v98 = *MEMORY[0x277D85DE8];

  return v32;
}

+ (id)htmlFromPlainTextBody:(id)a3
{
  v3 = a3;
  v4 = [v3 length];
  if (v4)
  {
    v5 = v4;
    v6 = [objc_alloc(MEMORY[0x277CCAB68]) initWithCapacity:v4];
    v16 = 0;
    v17 = &v16;
    v18 = 0x2020000000;
    v19 = 0;
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __60__SGSimpleMailMessage_RFC822Parsing__htmlFromPlainTextBody___block_invoke;
    v12[3] = &unk_27894CB40;
    v14 = &v16;
    v7 = v6;
    v13 = v7;
    v15 = v5;
    [v3 enumerateSubstringsInRange:0 options:v5 usingBlock:{0, v12}];
    if (v17[3])
    {
      v8 = 0;
      do
      {
        [v7 appendString:@"</blockquote>"];
        ++v8;
      }

      while (v8 < v17[3]);
    }

    if ([v7 isEqual:v3])
    {
      v9 = v3;
    }

    else
    {
      v9 = v7;
    }

    v10 = [v9 copy];

    _Block_object_dispose(&v16, 8);
  }

  else
  {
    v10 = &stru_284703F00;
  }

  return v10;
}

void __60__SGSimpleMailMessage_RFC822Parsing__htmlFromPlainTextBody___block_invoke(uint64_t a1, void *a2, uint64_t a3, unint64_t a4)
{
  v7 = a2;
  v18 = v7;
  if (!a4)
  {
LABEL_10:
    v8 = 0;
    v10 = a1 + 40;
LABEL_11:
    v11 = *(*v10 + 8);
    v12 = *(v11 + 24);
    goto LABEL_12;
  }

  v8 = 0;
  while (1)
  {
    v9 = [v7 characterAtIndex:v8];
    if (v9 != 62)
    {
      break;
    }

    ++v8;
    v7 = v18;
    if (a4 == v8)
    {
      v8 = a4;
      goto LABEL_7;
    }
  }

  if (v9 != 32)
  {
    goto LABEL_10;
  }

LABEL_7:
  v10 = a1 + 40;
  v11 = *(*(a1 + 40) + 8);
  v12 = *(v11 + 24);
  v13 = v8 - v12;
  if (v8 > v12)
  {
    do
    {
      [*(a1 + 32) appendString:@"<blockquote type=cite>"];
      --v13;
    }

    while (v13);
    goto LABEL_11;
  }

LABEL_12:
  if (v8 < v12)
  {
    v14 = v8;
    do
    {
      [*(a1 + 32) appendString:@"</blockquote>"];
      ++v14;
      v11 = *(*(a1 + 40) + 8);
    }

    while (v14 < *(v11 + 24));
  }

  *(v11 + 24) = v8;
  if (v8 < a4)
  {
    if (v8)
    {
      v15 = [v18 substringFromIndex:v8 + 1];

      v16 = v15;
    }

    else
    {
      v16 = v18;
    }

    v18 = v16;
    v17 = [v16 mutableCopy];
    [v17 replaceOccurrencesOfString:@"&" withString:@"&amp;" options:2 range:{0, objc_msgSend(v17, "length")}];
    [v17 replaceOccurrencesOfString:@"<" withString:@"&lt;" options:2 range:{0, objc_msgSend(v17, "length")}];
    [v17 replaceOccurrencesOfString:@"  " withString:@" &nbsp;" options:2 range:{0, objc_msgSend(v17, "length")}];
    [v17 replaceOccurrencesOfString:@"\t" withString:@"<span class=Apple-tab-span style=white-space:pre>\t</span>" options:2 range:{0, objc_msgSend(v17, "length")}];
    [*(a1 + 32) appendString:v17];
  }

  if (a3 + a4 != *(a1 + 48))
  {
    [*(a1 + 32) appendString:@"<br>\n"];
  }
}

+ (id)parseParameterizedHeaderValue:(id)a3
{
  v5 = a3;
  v6 = [v5 rangeOfString:@";" options:2];
  if (v6 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = MEMORY[0x277D42648];
    v8 = [v5 copy];
    v9 = [v7 tupleWithFirst:v8 second:MEMORY[0x277CBEC10]];
  }

  else
  {
    v10 = v6;
    v11 = objc_autoreleasePoolPush();
    v12 = [v5 substringToIndex:v10];
    v13 = objc_opt_new();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __68__SGSimpleMailMessage_RFC822Parsing__parseParameterizedHeaderValue___block_invoke;
    block[3] = &__block_descriptor_48_e5_v8__0l;
    block[4] = a2;
    block[5] = a1;
    if (parseParameterizedHeaderValue___pasOnceToken19 != -1)
    {
      dispatch_once(&parseParameterizedHeaderValue___pasOnceToken19, block);
    }

    v14 = parseParameterizedHeaderValue___pasExprOnceResult;
    v15 = [v5 length] - v10;
    v18 = MEMORY[0x277D85DD0];
    v19 = 3221225472;
    v20 = __68__SGSimpleMailMessage_RFC822Parsing__parseParameterizedHeaderValue___block_invoke_2;
    v21 = &unk_27894CB18;
    v22 = v5;
    v23 = v13;
    v16 = v13;
    [v14 enumerateMatchesInString:v22 options:0 range:v10 usingBlock:{v15, &v18}];
    v9 = [MEMORY[0x277D42648] tupleWithFirst:v12 second:{v16, v18, v19, v20, v21}];

    objc_autoreleasePoolPop(v11);
  }

  return v9;
}

void __68__SGSimpleMailMessage_RFC822Parsing__parseParameterizedHeaderValue___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v7 = 0;
  v3 = [MEMORY[0x277CCAC68] regularExpressionWithPattern:@"[ \\t]*[ \\t]*([^ \\t()<>@ options:;:\\\\\\/\\[\\]?.=]+)=(?:([^ \\t()<>@ error:{;:\\\\\\/\\[\\]?.=]+)|?((?:[^]|\\\\)*)?)[ \\t]*(?:(?=;)|$)", 0, &v7}];;
  v4 = v7;
  if (v4)
  {
    v6 = [MEMORY[0x277CCA890] currentHandler];
    [v6 handleFailureInMethod:*(a1 + 32) object:*(a1 + 40) file:@"SGSimpleMailMessage+RFC822Parsing.m" lineNumber:427 description:{@"error creating parameterRegex: %@", v4}];
  }

  v5 = parseParameterizedHeaderValue___pasExprOnceResult;
  parseParameterizedHeaderValue___pasExprOnceResult = v3;

  objc_autoreleasePoolPop(v2);
}

void __68__SGSimpleMailMessage_RFC822Parsing__parseParameterizedHeaderValue___block_invoke_2(uint64_t a1, void *a2)
{
  v16 = a2;
  v3 = *(a1 + 32);
  v4 = [v16 rangeAtIndex:1];
  v6 = [v3 substringWithRange:{v4, v5}];
  v7 = [v6 lowercaseString];

  if ([v16 rangeAtIndex:2] == 0x7FFFFFFFFFFFFFFFLL)
  {
    if ([v16 rangeAtIndex:3] == 0x7FFFFFFFFFFFFFFFLL)
    {
      v8 = 0;
    }

    else
    {
      v12 = *(a1 + 32);
      v13 = [v16 rangeAtIndex:3];
      v15 = [v12 substringWithRange:{v13, v14}];
      v8 = [v15 stringByReplacingOccurrencesOfString:@"\ withString:@"];
    }
  }

  else
  {
    v9 = *(a1 + 32);
    v10 = [v16 rangeAtIndex:2];
    v8 = [v9 substringWithRange:{v10, v11}];
  }

  [*(a1 + 40) setObject:v8 forKeyedSubscript:v7];
}

+ (id)formatFlowed:(id)a3 delSp:(BOOL)a4
{
  v5 = a3;
  v6 = [objc_alloc(MEMORY[0x277CCAB68]) initWithCapacity:{objc_msgSend(v5, "length")}];
  v20[0] = 0;
  v20[1] = v20;
  v20[2] = 0x2020000000;
  v21 = 0;
  v19[0] = 0;
  v19[1] = v19;
  v19[2] = 0x2020000000;
  v19[3] = 0;
  v11 = MEMORY[0x277D85DD0];
  v12 = 3221225472;
  v13 = __57__SGSimpleMailMessage_RFC822Parsing__formatFlowed_delSp___block_invoke;
  v14 = &unk_27894CAF0;
  v16 = v20;
  v7 = v6;
  v15 = v7;
  v17 = v19;
  v18 = a4;
  [v5 enumerateLinesUsingBlock:&v11];
  if ([v5 isEqual:{v7, v11, v12, v13, v14}])
  {
    v8 = v5;
  }

  else
  {
    v8 = v7;
  }

  v9 = v8;

  _Block_object_dispose(v19, 8);
  _Block_object_dispose(v20, 8);

  return v9;
}

void __57__SGSimpleMailMessage_RFC822Parsing__formatFlowed_delSp___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_opt_self();

  if (v4)
  {
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    Length = CFStringGetLength(v3);
    theString = v3;
    v47 = 0;
    v48 = Length;
    CharactersPtr = CFStringGetCharactersPtr(v3);
    CStringPtr = 0;
    v45 = CharactersPtr;
    if (!CharactersPtr)
    {
      CStringPtr = CFStringGetCStringPtr(v3, 0x600u);
    }

    v49 = 0;
    v50 = 0;
    v46 = CStringPtr;
    if (Length >= 1)
    {
      v8 = 0;
      v9 = 0;
      v4 = 0;
      v10 = 64;
      while (1)
      {
        if (v4 >= 4)
        {
          v11 = 4;
        }

        else
        {
          v11 = v4;
        }

        v12 = v48;
        if (v48 <= v4)
        {
          v35 = 0;
          Length = v4 + 1;
          goto LABEL_30;
        }

        if (v45)
        {
          break;
        }

        if (!v46)
        {
          if (v50 <= v4 || v9 > v4)
          {
            v17 = v11 + v8;
            v18 = v10 - v11;
            v19 = v4 - v11;
            v20 = v19 + 64;
            if (v19 + 64 >= v48)
            {
              v20 = v48;
            }

            v49 = v19;
            v50 = v20;
            if (v48 >= v18)
            {
              v12 = v18;
            }

            v51.location = v19 + v47;
            v51.length = v12 + v17;
            CFStringGetCharacters(theString, v51, &v36);
            v9 = v49;
          }

          v13 = &v36 - v9;
          goto LABEL_12;
        }

        v14 = v46[v47 + v4];
LABEL_15:
        v15 = v4 + 1;
        if (v14 != 62)
        {
          v35 = v14 == 32;
          Length = v4 + 1;
          goto LABEL_30;
        }

        --v8;
        ++v10;
        ++v4;
        if (Length == v15)
        {
          v35 = 0;
          v4 = Length;
          goto LABEL_30;
        }
      }

      v13 = &v45[v47];
LABEL_12:
      v14 = v13[v4];
      goto LABEL_15;
    }

    v4 = 0;
  }

  Length = 0;
  v35 = 0;
LABEL_30:

  v21 = v4 + v35;
  if ([(__CFString *)v3 length]- v21 == 3 && [(__CFString *)v3 hasSuffix:@"-- "])
  {
    v22 = *(*(a1 + 40) + 8);
    if (*(v22 + 24) == 1)
    {
      [*(a1 + 32) appendString:@"\n"];
      v22 = *(*(a1 + 40) + 8);
    }

    *(v22 + 24) = 0;
    *(*(*(a1 + 48) + 8) + 24) = 0;
    goto LABEL_38;
  }

  if ([(__CFString *)v3 length:v36]<= Length)
  {
LABEL_38:
    v24 = [(__CFString *)v3 length:v36];
    goto LABEL_39;
  }

  v23 = [(__CFString *)v3 hasSuffix:@" "];
  v24 = [(__CFString *)v3 length];
  if (!v23)
  {
LABEL_39:
    v26 = 0;
    v25 = 0;
    goto LABEL_40;
  }

  v25 = *(a1 + 56);
  v26 = 1;
LABEL_40:
  v27 = v24 - (v21 + v25);
  v28 = objc_autoreleasePoolPush();
  v29 = [(__CFString *)v3 substringWithRange:v21, v27];
  objc_autoreleasePoolPop(v28);
  if (*(*(*(a1 + 40) + 8) + 24) == 1 && *(*(*(a1 + 48) + 8) + 24) == v4)
  {
    [*(a1 + 32) appendString:v29];
  }

  else
  {
    v30 = objc_autoreleasePoolPush();
    v31 = *(*(a1 + 40) + 8);
    if (*(v31 + 24) == 1)
    {
      *(v31 + 24) = 0;
      *(*(*(a1 + 48) + 8) + 24) = 0;
      [*(a1 + 32) appendString:@"\n"];
    }

    if (v4)
    {
      v32 = *(a1 + 32);
      v33 = [(__CFString *)v3 substringToIndex:v4];
      [v32 appendString:v33];
    }

    [*(a1 + 32) appendString:v29];
    objc_autoreleasePoolPop(v30);
  }

  *(*(*(a1 + 40) + 8) + 24) = v26;
  if (v26)
  {
    v34 = v4;
  }

  else
  {
    v34 = 0;
  }

  *(*(*(a1 + 48) + 8) + 24) = v34;
  if ((v26 & 1) == 0)
  {
    [*(a1 + 32) appendString:@"\n"];
  }
}

+ (id)stripTrailingASCIIHSpace:(id)a3
{
  v3 = a3;
  v4 = [v3 bytes];
  v5 = objc_opt_new();
  v6 = [v3 length];
  [v5 addIndexesInRange:{0, v6}];
  while (1)
  {
    do
    {
      if (stripTrailingASCIIHSpace___pasOnceToken16 != -1)
      {
        dispatch_once(&stripTrailingASCIIHSpace___pasOnceToken16, &__block_literal_global_194);
      }

      v7 = [v3 rangeOfData:stripTrailingASCIIHSpace___pasExprOnceResult options:1 range:{0, v6}];
      v6 = v7;
    }

    while (!v7);
    if (v7 == 0x7FFFFFFFFFFFFFFFLL)
    {
      break;
    }

    do
    {
      v8 = *(v4 - 1 + v6);
      if (v8 != 32 && v8 != 9)
      {
        break;
      }

      [v5 removeIndex:--v6];
    }

    while (v6);
  }

  v10 = [v5 count];
  if (v10 == [v3 length])
  {
    v11 = [v3 copy];
  }

  else
  {
    v12 = malloc_type_malloc([v5 count], 0x528D44F4uLL);
    if (!v12)
    {
      v15 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE728] reason:@"malloc failed" userInfo:0];
      objc_exception_throw(v15);
    }

    v13 = v12;
    v20[0] = 0;
    v20[1] = v20;
    v20[2] = 0x2020000000;
    v20[3] = 0;
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __63__SGSimpleMailMessage_RFC822Parsing__stripTrailingASCIIHSpace___block_invoke_2;
    v16[3] = &unk_27894CAC8;
    v18 = v20;
    v19 = v12;
    v17 = v3;
    [v5 enumerateRangesUsingBlock:v16];
    v11 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytesNoCopy:v13 length:objc_msgSend(v5 freeWhenDone:{"count"), 1}];

    _Block_object_dispose(v20, 8);
  }

  return v11;
}

uint64_t __63__SGSimpleMailMessage_RFC822Parsing__stripTrailingASCIIHSpace___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = [*(a1 + 32) getBytes:*(a1 + 48) + *(*(*(a1 + 40) + 8) + 24) range:{a2, a3}];
  *(*(*(a1 + 40) + 8) + 24) += a3;
  return result;
}

void __63__SGSimpleMailMessage_RFC822Parsing__stripTrailingASCIIHSpace___block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = [@"\n" dataUsingEncoding:1];
  v2 = stripTrailingASCIIHSpace___pasExprOnceResult;
  stripTrailingASCIIHSpace___pasExprOnceResult = v1;

  objc_autoreleasePoolPop(v0);
}

+ (id)uudecode:(id)a3
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a3;
  archive_read_new();
  archive_read_support_filter_uu();
  archive_read_support_format_raw();
  archive_read_append_filter();
  [v3 bytes];
  [v3 length];
  if (archive_read_open_memory())
  {
    v4 = 0;
  }

  else if (archive_read_next_header())
  {
    v4 = 0;
  }

  else
  {
    v5 = [objc_alloc(MEMORY[0x277CBEB28]) initWithCapacity:{(3 * objc_msgSend(v3, "length")) >> 2}];
    memset(v9, 0, sizeof(v9));
    while (1)
    {
      data = archive_read_data();
      if (data < 0)
      {
        break;
      }

      [v5 appendBytes:v9 length:data];
      if (!data)
      {
        v4 = v5;
        goto LABEL_10;
      }
    }

    v4 = 0;
LABEL_10:
  }

  archive_read_free();

  v7 = *MEMORY[0x277D85DE8];

  return v4;
}

+ (_NSRange)rangeOfHeadersFromRfc822:(id)a3
{
  v3 = [a1 rangeOfBodyFromRfc822:a3];
  v4 = 0;
  result.length = v3;
  result.location = v4;
  return result;
}

+ (_NSRange)rangeOfBodyFromRfc822:(id)a3
{
  v3 = a3;
  v4 = [v3 length];
  v5 = [v3 bytes];
  if (v4)
  {
    v6 = 0;
    v7 = 0;
    v8 = 0;
    do
    {
      v9 = *(v5 + v6);
      v7 = (v9 == 13) & (v7 ^ 1);
      if ((v7 & 1) == 0)
      {
        if (v9 == 10)
        {
          if (v8 == 1)
          {
            v13 = v6 + 1;
            v10 = v4 - v13;
            v4 = v13;
            goto LABEL_10;
          }

          v8 = 1;
        }

        else
        {
          v8 = 0;
        }
      }

      ++v6;
    }

    while (v4 != v6);
  }

  v10 = 0;
LABEL_10:

  v11 = v4;
  v12 = v10;
  result.length = v12;
  result.location = v11;
  return result;
}

+ (id)parseRfc822Headers:(id)a3 htmlContent:(id)a4 source:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = objc_autoreleasePoolPush();
  v12 = [a1 parseRfc822Headers:v8 htmlContent:v9];
  [v12 setSource:v10];
  objc_autoreleasePoolPop(v11);

  return v12;
}

+ (id)parseRfc822Headers:(id)a3 htmlContent:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = objc_autoreleasePoolPush();
  v9 = [a1 parseHeaders:v6];
  v10 = [SGSimpleMailMessage simpleMailMessageFromHeaders:v9];

  v11 = [v7 copy];
  [v10 setHtmlBody:v11];

  objc_autoreleasePoolPop(v8);

  return v10;
}

+ (id)parseHeaders:(id)a3
{
  v5 = a3;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __51__SGSimpleMailMessage_RFC822Parsing__parseHeaders___block_invoke;
  block[3] = &__block_descriptor_48_e5_v8__0l;
  block[4] = a2;
  block[5] = a1;
  if (parseHeaders___pasOnceToken9 != -1)
  {
    dispatch_once(&parseHeaders___pasOnceToken9, block);
  }

  v6 = parseHeaders___pasExprOnceResult;
  v7 = [a1 rangeOfBodyFromRfc822:v5];
  if (v7 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = v5;
  }

  else
  {
    v8 = [v5 subdataWithRange:{0, v7}];
  }

  v9 = v8;
  v10 = [MEMORY[0x277CCACA8] _pas_stringWithDataNoCopy:v8 encoding:1 nullTerminated:0];
  v11 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:5];
  v12 = [v10 length];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __51__SGSimpleMailMessage_RFC822Parsing__parseHeaders___block_invoke_2;
  v18[3] = &unk_27894CAA0;
  v19 = v10;
  v21 = a2;
  v22 = a1;
  v13 = v11;
  v20 = v13;
  v14 = v10;
  [v6 enumerateMatchesInString:v14 options:0 range:0 usingBlock:{v12, v18}];
  v15 = v20;
  v16 = v13;

  return v13;
}

void __51__SGSimpleMailMessage_RFC822Parsing__parseHeaders___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v7 = 0;
  v3 = [MEMORY[0x277CCAC68] regularExpressionWithPattern:@"(?:^(\\S+?):(?:\\r?\\n[ \\t])?[ \\t]*(\\S+(?:.*\\r?\\n[ \\t].*\\S+|.*\\S)*|).*$|(?:\\r?\\n){2})" options:16 error:&v7];
  v4 = v7;
  if (v4)
  {
    v6 = [MEMORY[0x277CCA890] currentHandler];
    [v6 handleFailureInMethod:*(a1 + 32) object:*(a1 + 40) file:@"SGSimpleMailMessage+RFC822Parsing.m" lineNumber:178 description:{@"error creating headerRegex: %@", v4}];
  }

  v5 = parseHeaders___pasExprOnceResult;
  parseHeaders___pasExprOnceResult = v3;

  objc_autoreleasePoolPop(v2);
}

void __51__SGSimpleMailMessage_RFC822Parsing__parseHeaders___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v24 = a2;
  v6 = [v24 rangeAtIndex:1];
  if (v6 == 0x7FFFFFFFFFFFFFFFLL)
  {
    *a4 = 1;
  }

  else
  {
    v8 = v6;
    v9 = v7;
    v10 = objc_autoreleasePoolPush();
    v11 = [*(a1 + 32) substringWithRange:{v8, v9}];
    objc_autoreleasePoolPop(v10);
    v12 = [v24 rangeAtIndex:2];
    v14 = v13;
    if (v12 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v23 = [MEMORY[0x277CCA890] currentHandler];
      [v23 handleFailureInMethod:*(a1 + 48) object:*(a1 + 56) file:@"SGSimpleMailMessage+RFC822Parsing.m" lineNumber:208 description:{@"Invalid parameter not satisfying: %@", @"fieldValueRange.location != NSNotFound"}];
    }

    v15 = objc_autoreleasePoolPush();
    v16 = [*(a1 + 32) substringWithRange:{v12, v14}];
    objc_autoreleasePoolPop(v15);
    v17 = [v16 mutableCopy];

    [v17 replaceOccurrencesOfString:@"\r" withString:&stru_284703F00 options:2 range:{0, objc_msgSend(v17, "length")}];
    [v17 replaceOccurrencesOfString:@"\n\t" withString:@" " options:2 range:{0, objc_msgSend(v17, "length")}];
    [v17 replaceOccurrencesOfString:@"\n" withString:&stru_284703F00 options:2 range:{0, objc_msgSend(v17, "length")}];
    v18 = [SGSimpleMailHeaderKeyValue alloc];
    v19 = objc_autoreleasePoolPush();
    v20 = [v11 lowercaseString];
    objc_autoreleasePoolPop(v19);
    v21 = [*(a1 + 56) decodeEncodedWordsIn:v17];
    v22 = [(SGSimpleMailHeaderKeyValue *)v18 initWithKey:v20 value:v21];

    [*(a1 + 40) addObject:v22];
  }
}

+ (id)decodeQuotedPrintable:(id)a3 charset:(unint64_t)a4 rfc2047UnderscoreAsSpace:(BOOL)a5
{
  v8 = a3;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __93__SGSimpleMailMessage_RFC822Parsing__decodeQuotedPrintable_charset_rfc2047UnderscoreAsSpace___block_invoke;
  block[3] = &__block_descriptor_48_e5_v8__0l;
  block[4] = a2;
  block[5] = a1;
  if (decodeQuotedPrintable_charset_rfc2047UnderscoreAsSpace___pasOnceToken6 != -1)
  {
    dispatch_once(&decodeQuotedPrintable_charset_rfc2047UnderscoreAsSpace___pasOnceToken6, block);
  }

  v9 = decodeQuotedPrintable_charset_rfc2047UnderscoreAsSpace___pasExprOnceResult;
  v10 = [objc_alloc(MEMORY[0x277CBEB28]) initWithCapacity:{objc_msgSend(v8, "length")}];
  v22[0] = 0;
  v22[1] = v22;
  v22[2] = 0x2020000000;
  v22[3] = 0;
  v11 = [v8 length];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __93__SGSimpleMailMessage_RFC822Parsing__decodeQuotedPrintable_charset_rfc2047UnderscoreAsSpace___block_invoke_2;
  v17[3] = &unk_27894CA78;
  v20 = v22;
  v12 = v8;
  v18 = v12;
  v21 = a5;
  v13 = v10;
  v19 = v13;
  [v9 enumerateMatchesInString:v12 options:0 range:0 usingBlock:{v11, v17}];
  v14 = v19;
  v15 = v13;

  _Block_object_dispose(v22, 8);

  return v15;
}

void __93__SGSimpleMailMessage_RFC822Parsing__decodeQuotedPrintable_charset_rfc2047UnderscoreAsSpace___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v7 = 0;
  v3 = [MEMORY[0x277CCAC68] regularExpressionWithPattern:@"(?:=([0-9A-F]{2})|=[ \\t]*(?:\\r?\\n|$)|[ \\t]+(?:\\r?\\n|$)|$)" options:0 error:&v7];
  v4 = v7;
  if (v4)
  {
    v6 = [MEMORY[0x277CCA890] currentHandler];
    [v6 handleFailureInMethod:*(a1 + 32) object:*(a1 + 40) file:@"SGSimpleMailMessage+RFC822Parsing.m" lineNumber:126 description:{@"error creating quotedPrintableRegex: %@", v4}];
  }

  v5 = decodeQuotedPrintable_charset_rfc2047UnderscoreAsSpace___pasExprOnceResult;
  decodeQuotedPrintable_charset_rfc2047UnderscoreAsSpace___pasExprOnceResult = v3;

  objc_autoreleasePoolPop(v2);
}

void __93__SGSimpleMailMessage_RFC822Parsing__decodeQuotedPrintable_charset_rfc2047UnderscoreAsSpace___block_invoke_2(uint64_t a1, void *a2)
{
  v23[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *(*(*(a1 + 48) + 8) + 24);
  if (v4 != [v3 range])
  {
    v5 = objc_autoreleasePoolPush();
    v6 = [*(a1 + 32) substringWithRange:{*(*(*(a1 + 48) + 8) + 24), objc_msgSend(v3, "range") - *(*(*(a1 + 48) + 8) + 24)}];
    v7 = *(a1 + 56);
    v8 = objc_autoreleasePoolPush();
    if (v7 == 1)
    {
      v9 = [v6 componentsSeparatedByString:@"_"];
    }

    else
    {
      v23[0] = v6;
      v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:1];
    }

    v10 = v9;
    objc_autoreleasePoolPop(v8);
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __93__SGSimpleMailMessage_RFC822Parsing__decodeQuotedPrintable_charset_rfc2047UnderscoreAsSpace___block_invoke_3;
    v21[3] = &unk_27894CA50;
    v22 = *(a1 + 40);
    [v10 enumerateObjectsUsingBlock:v21];

    objc_autoreleasePoolPop(v5);
  }

  v11 = [v3 rangeAtIndex:1];
  if (v11 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v13 = v11;
    v14 = v12;
    v15 = objc_autoreleasePoolPush();
    v16 = [*(a1 + 32) substringWithRange:{v13, v14}];
    v20 = strtol([v16 UTF8String], 0, 16);
    [*(a1 + 40) appendBytes:&v20 length:1];

    objc_autoreleasePoolPop(v15);
  }

  v17 = [v3 range];
  *(*(*(a1 + 48) + 8) + 24) = v17 + v18;

  v19 = *MEMORY[0x277D85DE8];
}

void __93__SGSimpleMailMessage_RFC822Parsing__decodeQuotedPrintable_charset_rfc2047UnderscoreAsSpace___block_invoke_3(uint64_t a1, void *a2, uint64_t a3)
{
  v8 = a2;
  if (a3)
  {
    [*(a1 + 32) appendBytes:" " length:1];
  }

  v5 = *(a1 + 32);
  v6 = objc_autoreleasePoolPush();
  v7 = [v8 dataUsingEncoding:1 allowLossyConversion:1];
  objc_autoreleasePoolPop(v6);
  [v5 appendData:v7];
}

+ (id)dateFromEmailString:(id)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = a3;
  if (dateFromEmailString___pasOnceToken4 != -1)
  {
    dispatch_once(&dateFromEmailString___pasOnceToken4, &__block_literal_global_43);
  }

  v4 = dateFromEmailString___pasExprOnceResult;
  if (dateFromEmailString___pasOnceToken5 != -1)
  {
    dispatch_once(&dateFromEmailString___pasOnceToken5, &__block_literal_global_142);
  }

  v5 = dateFromEmailString___pasExprOnceResult_140;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v20 objects:v24 count:16];
  v8 = 0;
  if (v7)
  {
    v9 = *v21;
    while (2)
    {
      v10 = 0;
      v11 = v8;
      do
      {
        if (*v21 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v20 + 1) + 8 * v10);
        v13 = objc_autoreleasePoolPush();
        v19 = 0;
        v14 = [v12 getObjectValue:&v19 forString:v3 range:0 error:0];
        v8 = v19;

        if (v14)
        {
          v15 = [v5 components:4 fromDate:v8];
          v16 = [v15 year];

          if (v16 > 1899)
          {
            v8 = v8;
            objc_autoreleasePoolPop(v13);
            v7 = v8;
            goto LABEL_16;
          }
        }

        objc_autoreleasePoolPop(v13);
        v10 = v10 + 1;
        v11 = v8;
      }

      while (v7 != v10);
      v7 = [v6 countByEnumeratingWithState:&v20 objects:v24 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_16:

  v17 = *MEMORY[0x277D85DE8];

  return v7;
}

void __58__SGSimpleMailMessage_RFC822Parsing__dateFromEmailString___block_invoke_3()
{
  v0 = objc_autoreleasePoolPush();
  v1 = [MEMORY[0x277CBEA80] calendarWithIdentifier:*MEMORY[0x277CBE5C0]];
  v2 = dateFromEmailString___pasExprOnceResult_140;
  dateFromEmailString___pasExprOnceResult_140 = v1;

  objc_autoreleasePoolPop(v0);
}

void __58__SGSimpleMailMessage_RFC822Parsing__dateFromEmailString___block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = [objc_alloc(MEMORY[0x277CBEAF8]) initWithLocaleIdentifier:@"en_US_POSIX"];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __58__SGSimpleMailMessage_RFC822Parsing__dateFromEmailString___block_invoke_2;
  v5[3] = &unk_27894CA28;
  v6 = v1;
  v7 = &unk_28474A528;
  v8 = &unk_28474A540;
  v2 = v1;
  v3 = [&unk_28474A558 _pas_mappedArrayWithTransform:v5];

  v4 = dateFromEmailString___pasExprOnceResult;
  dateFromEmailString___pasExprOnceResult = v3;

  objc_autoreleasePoolPop(v0);
}

id __58__SGSimpleMailMessage_RFC822Parsing__dateFromEmailString___block_invoke_2(void *a1, void *a2)
{
  v3 = a2;
  v4 = objc_opt_new();
  [v4 setLocale:a1[4]];
  [v4 setShortMonthSymbols:a1[5]];
  [v4 setShortWeekdaySymbols:a1[6]];
  [v4 setLenient:1];
  [v4 setDateFormat:v3];

  return v4;
}

+ (id)addressItemsFromEmailString:(id)a3
{
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = [a1 decodeEncodedWordsIn:v4];
  v7 = [v6 componentsSeparatedByString:{@", "}];
  v8 = [v7 _pas_mappedArrayWithTransform:&__block_literal_global_8921];

  objc_autoreleasePoolPop(v5);

  return v8;
}

id __66__SGSimpleMailMessage_RFC822Parsing__addressItemsFromEmailString___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CCA900];
  v3 = a2;
  v4 = [v2 whitespaceAndNewlineCharacterSet];
  v5 = [v3 stringByTrimmingCharactersInSet:v4];

  return v5;
}

+ (id)simpleMailMessageFromHeaders:(id)a3
{
  v68 = a1;
  v76 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [[SGSimpleMailMessage alloc] initForBuilding];
  v5 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v3, "count")}];
  v71 = 0u;
  v72 = 0u;
  v73 = 0u;
  v74 = 0u;
  obj = v3;
  v6 = [obj countByEnumeratingWithState:&v71 objects:v75 count:16];
  if (!v6)
  {
    goto LABEL_50;
  }

  v7 = v6;
  v8 = *v72;
  do
  {
    for (i = 0; i != v7; ++i)
    {
      if (*v72 != v8)
      {
        objc_enumerationMutation(obj);
      }

      v10 = *(*(&v71 + 1) + 8 * i);
      v11 = objc_autoreleasePoolPush();
      v12 = [v10 key];
      [v5 addObject:v12];

      v13 = [v4 messageId];
      if (v13)
      {
      }

      else
      {
        v14 = [v10 key];
        v15 = [v14 caseInsensitiveCompare:@"message-id"];

        if (!v15)
        {
          v35 = [v10 value];
          v36 = [v35 copy];
          [v4 setMessageId:v36];
          goto LABEL_46;
        }
      }

      v16 = [v4 subject];
      if (v16)
      {
      }

      else
      {
        v17 = [v10 key];
        v18 = [v17 caseInsensitiveCompare:@"subject"];

        if (!v18)
        {
          v35 = [v10 value];
          [v4 setSubject:v35];
          goto LABEL_47;
        }
      }

      v19 = [v4 date];
      if (v19)
      {
      }

      else
      {
        v20 = [v10 key];
        v21 = [v20 caseInsensitiveCompare:@"date"];

        if (!v21)
        {
          v35 = [v10 value];
          v36 = [v68 dateFromEmailString:v35];
          [v4 setDate:v36];
          goto LABEL_46;
        }
      }

      v22 = [v4 from];
      if (v22)
      {
      }

      else
      {
        v23 = [v10 key];
        v24 = [v23 caseInsensitiveCompare:@"from"];

        if (!v24)
        {
          v47 = MEMORY[0x277D020E0];
          v35 = [v10 value];
          v36 = [v47 namedEmailAddressWithFieldValue:v35];
          [v4 setFrom:v36];
          goto LABEL_46;
        }
      }

      v25 = [v4 replyTo];
      if (v25)
      {
      }

      else
      {
        v26 = [v10 key];
        v27 = [v26 caseInsensitiveCompare:@"reply-to"];

        if (!v27)
        {
          v48 = MEMORY[0x277D020E0];
          v35 = [v10 value];
          v49 = [v68 addressItemsFromEmailString:v35];
          v50 = [v49 firstObject];
          v51 = [v48 namedEmailAddressWithFieldValue:v50];
          [v4 setReplyTo:v51];

          goto LABEL_47;
        }
      }

      v28 = [v4 to];
      if (v28)
      {
      }

      else
      {
        v29 = [v10 key];
        v30 = [v29 caseInsensitiveCompare:@"to"];

        if (!v30)
        {
          v52 = MEMORY[0x277D020E0];
          v35 = [v10 value];
          v36 = [v68 addressItemsFromEmailString:v35];
          v53 = [v52 namedEmailAddressesWithFieldValues:v36];
          [v4 setTo:v53];
          goto LABEL_45;
        }
      }

      v31 = [v4 mailConversationIdentifier];
      if (v31)
      {
      }

      else
      {
        v32 = [v10 key];
        v33 = [v32 caseInsensitiveCompare:@"conversation-id"];

        if (!v33)
        {
          v35 = [v10 value];
          [v4 setMailConversationIdentifier:v35];
          goto LABEL_47;
        }
      }

      v34 = [v4 cc];
      if (v34)
      {
      }

      else
      {
        v37 = [v10 key];
        v38 = [v37 caseInsensitiveCompare:@"cc"];

        if (!v38)
        {
          v54 = MEMORY[0x277D020E0];
          v35 = [v10 value];
          v36 = [v68 addressItemsFromEmailString:v35];
          v53 = [v54 namedEmailAddressesWithFieldValues:v36];
          [v4 setCc:v53];
          goto LABEL_45;
        }
      }

      v39 = [v4 bcc];
      if (v39)
      {

        goto LABEL_35;
      }

      v40 = [v10 key];
      v41 = [v40 caseInsensitiveCompare:@"bcc"];

      if (!v41)
      {
        v55 = MEMORY[0x277D020E0];
        v35 = [v10 value];
        v36 = [v68 addressItemsFromEmailString:v35];
        v53 = [v55 namedEmailAddressesWithFieldValues:v36];
        [v4 setBcc:v53];
LABEL_45:

LABEL_46:
        goto LABEL_47;
      }

LABEL_35:
      v35 = [v4 mailingList];
      if (!v35)
      {
        v42 = [v10 key];
        v43 = [v42 caseInsensitiveCompare:@"list-id"];

        if (v43)
        {
          goto LABEL_48;
        }

        v44 = MEMORY[0x277D020E0];
        v35 = [v10 value];
        v36 = [v68 addressItemsFromEmailString:v35];
        v45 = [v36 firstObject];
        v46 = [v44 namedEmailAddressWithFieldValue:v45];
        [v4 setMailingList:v46];

        goto LABEL_46;
      }

LABEL_47:

LABEL_48:
      objc_autoreleasePoolPop(v11);
    }

    v7 = [obj countByEnumeratingWithState:&v71 objects:v75 count:16];
  }

  while (v7);
LABEL_50:

  v56 = [v4 to];
  v57 = v56;
  v58 = MEMORY[0x277CBEBF8];
  if (v56)
  {
    v59 = v56;
  }

  else
  {
    v59 = MEMORY[0x277CBEBF8];
  }

  [v4 setTo:{v59, v68}];

  v60 = [v4 cc];
  v61 = v60;
  if (v60)
  {
    v62 = v60;
  }

  else
  {
    v62 = v58;
  }

  [v4 setCc:v62];

  v63 = [v4 bcc];
  v64 = v63;
  if (v63)
  {
    v65 = v63;
  }

  else
  {
    v65 = v58;
  }

  [v4 setBcc:v65];

  [v4 setHasInhumanHeaders:{objc_msgSend(v69, "headersContainInhumanOnes:keys:", obj, v5)}];
  [v4 setHeaders:obj];

  v66 = *MEMORY[0x277D85DE8];

  return v4;
}

- (id)convertMailMessageToBMMailMessage:(id)a3
{
  v3 = a3;
  v4 = [v3 from];
  v5 = [v4 emailAddress];

  if (v5)
  {
    v6 = objc_alloc(MEMORY[0x277CF19E8]);
    v7 = [v3 from];
    v8 = [v7 name];
    v9 = [v3 from];
    v10 = [v9 emailAddress];
    v11 = [v6 initWithName:v8 handleType:0 handle:v10 contactIdentifier:0];

    v12 = [v3 to];
    v13 = [v12 _pas_mappedArrayWithTransform:&__block_literal_global_298];
    v14 = v13;
    v15 = MEMORY[0x277CBEBF8];
    if (v13)
    {
      v15 = v13;
    }

    v16 = v15;

    v17 = [v3 subject];
    v18 = v17;
    v19 = &stru_284703F00;
    if (v17)
    {
      v19 = v17;
    }

    v20 = v19;

    if (v11 && ([v3 messageId], v21 = objc_claimAutoreleasedReturnValue(), v21, v21))
    {
      v33 = objc_alloc(MEMORY[0x277CF19B8]);
      v32 = [v3 uniqueIdentifier];
      v34 = [v3 date];
      [v34 timeIntervalSinceReferenceDate];
      v23 = v22;
      v24 = [v3 source];
      v25 = [v3 messageId];
      v26 = [v3 headersDictionary];
      v27 = [v3 htmlContentData];
      v28 = [v3 textContent];
      LOBYTE(v31) = 1;
      v29 = [v33 initWithUniqueId:v32 domainId:0 absoluteTimestamp:v24 accountIdentifier:v25 messageIdentifier:v11 fromHandle:v16 toHandles:v23 ccHandles:0 bccHandles:0 headers:v26 subject:v20 htmlContent:v27 textContent:v28 isFullyDownloaded:v31 securityMethod:0 accountHandles:0 replyTo:0 mailboxIdentifiers:0 listId:0 accountType:0 attachments:0];
    }

    else
    {
      v29 = 0;
    }
  }

  else
  {
    v29 = 0;
  }

  return v29;
}

id __57__SGSimpleMailMessage_convertMailMessageToBMMailMessage___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CF19E8];
  v3 = a2;
  v4 = [v2 alloc];
  v5 = [v3 name];
  v6 = [v3 emailAddress];

  v7 = [v4 initWithName:v5 handleType:0 handle:v6 contactIdentifier:0];

  return v7;
}

- (id)createNewSearchableItemWithSource:(id)a3 uniqueIdentifier:(id)a4 domainIdentifier:(id)a5
{
  v51[1] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = objc_autoreleasePoolPush();
  v12 = objc_alloc(MEMORY[0x277CC34B8]);
  v13 = [v12 initWithContentType:*MEMORY[0x277CE1D60]];
  v14 = [(SGMessage *)self subject];

  if (v14)
  {
    v15 = [(SGMessage *)self subject];
    [v13 setSubject:v15];
  }

  v16 = [(SGMessage *)self date];

  if (v16)
  {
    v17 = [(SGMessage *)self date];
    [v13 setContentCreationDate:v17];
  }

  v18 = [(SGSimpleMailMessage *)self appleMailMessageId];

  if (v18)
  {
    v19 = [(SGSimpleMailMessage *)self appleMailMessageId];
    [v13 setMailMessageID:v19];
  }

  v20 = [(SGMessage *)self accountHandles];

  if (v20)
  {
    v21 = [(SGMessage *)self accountHandles];
    [v13 setAccountHandles:v21];
  }

  v22 = [(SGSimpleMailMessage *)self from];

  if (v22)
  {
    v23 = [(SGSimpleMailMessage *)self from];
    v24 = [v23 name];
    v25 = v24;
    v26 = &stru_284703F00;
    if (v24)
    {
      v26 = v24;
    }

    v51[0] = v26;
    v27 = [MEMORY[0x277CBEA60] arrayWithObjects:v51 count:1];
    [v13 setAuthorNames:v27];

    v28 = [(SGSimpleMailMessage *)self from];
    v29 = [v28 emailAddress];
    v30 = v29;
    v31 = &stru_284703F00;
    if (v29)
    {
      v31 = v29;
    }

    v50 = v31;
    v32 = [MEMORY[0x277CBEA60] arrayWithObjects:&v50 count:1];
    [v13 setAuthorEmailAddresses:v32];

    v33 = [(SGSimpleMailMessage *)self from];
    v34 = [v33 asCSPerson];
    v49 = v34;
    v35 = [MEMORY[0x277CBEA60] arrayWithObjects:&v49 count:1];
    [v13 setAuthors:v35];
  }

  v36 = [(SGSimpleMailMessage *)self to];
  v37 = sgMapSelector();
  [v13 setPrimaryRecipients:v37];

  v38 = [(SGSimpleMailMessage *)self cc];
  v39 = sgMapSelector();
  [v13 setAdditionalRecipients:v39];

  v40 = [(SGSimpleMailMessage *)self bcc];
  v41 = sgMapSelector();
  [v13 setHiddenAdditionalRecipients:v41];

  v42 = [(SGSimpleMailMessage *)self headersDictionary];
  [v13 setEmailHeaders:v42];

  if (self->_htmlContentData || self->_htmlBody)
  {
    v43 = [(SGSimpleMailMessage *)self htmlContentData];
    [v13 setHTMLContentData:v43];
  }

  else
  {
    v43 = [(SGSimpleMailMessage *)self body];
    [v13 setTextContent:v43];
  }

  if (v8 || ([(SGMessage *)self source], (v8 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    [v13 setAccountIdentifier:v8];
  }

  if ([(SGMessage *)self isSent])
  {
    v48 = *MEMORY[0x277CC2338];
    v44 = [MEMORY[0x277CBEA60] arrayWithObjects:&v48 count:1];
    [v13 setMailboxIdentifiers:v44];
  }

  v45 = [objc_alloc(MEMORY[0x277CC34B0]) initWithUniqueIdentifier:v9 domainIdentifier:v10 attributeSet:v13];
  [v45 setBundleID:*MEMORY[0x277D021C0]];

  objc_autoreleasePoolPop(v11);
  v46 = *MEMORY[0x277D85DE8];

  return v45;
}

- (id)spotlightUniqueIdentifier
{
  v8.receiver = self;
  v8.super_class = SGSimpleMailMessage;
  v3 = [(SGMessage *)&v8 spotlightUniqueIdentifier];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = [(SGSimpleMailMessage *)self uniqueIdentifier];
  }

  v6 = v5;

  return v6;
}

- (id)spotlightBundleIdentifier
{
  v7.receiver = self;
  v7.super_class = SGSimpleMailMessage;
  v2 = [(SGMessage *)&v7 spotlightBundleIdentifier];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = *MEMORY[0x277D021C0];
  }

  v5 = v4;

  return v4;
}

- (BOOL)hasRecipientFromSameDomainAsSender
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = [(SGSimpleMailMessage *)self senderDomain];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = [(SGSimpleMailMessage *)self to];
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = *v14;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = [*(*(&v13 + 1) + 8 * i) emailAddress];
        v9 = emailAddressDomain(v8);
        v10 = [v9 isEqualToString:v3];

        if (v10)
        {
          LOBYTE(v5) = 1;
          goto LABEL_11;
        }
      }

      v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v11 = *MEMORY[0x277D85DE8];
  return v5;
}

- (id)senderDomain
{
  v2 = [(SGSimpleMailMessage *)self from];
  v3 = [v2 emailAddress];
  v4 = emailAddressDomain(v3);

  return v4;
}

- (id)allRecipients
{
  v3 = objc_alloc(MEMORY[0x277CBEB18]);
  v4 = [(SGSimpleMailMessage *)self to];
  v5 = [v3 initWithArray:v4];

  v6 = [(SGSimpleMailMessage *)self cc];
  [v5 addObjectsFromArray:v6];

  v7 = [(SGSimpleMailMessage *)self bcc];
  [v5 addObjectsFromArray:v7];

  v8 = [v5 copy];

  return v8;
}

- (SGSimpleMailMessage)initWithMailContentEvent:(id)a3 contentProtection:(id)a4 htmlParser:(id)a5
{
  v105 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v101.receiver = self;
  v101.super_class = SGSimpleMailMessage;
  v11 = [(SGMessage *)&v101 initWithMailContentEvent:v8 contentProtection:v9];
  if (v11)
  {
    v12 = [v8 replyTo];

    if (v12)
    {
      v13 = objc_alloc(MEMORY[0x277D020E0]);
      v14 = [v8 replyTo];
      v15 = [v13 initWithNamedHandle:v14];
      replyTo = v11->_replyTo;
      v11->_replyTo = v15;
    }

    v17 = [v8 listId];

    if (v17)
    {
      v18 = objc_alloc(MEMORY[0x277D020E0]);
      v19 = [v8 listId];
      v20 = [v18 initWithNamedHandle:v19];
      mailingList = v11->_mailingList;
      v11->_mailingList = v20;
    }

    v22 = [v8 headers];
    v83 = v9;
    v84 = v11;
    v80 = a5;
    v82 = v10;
    if (v22)
    {
      v23 = objc_opt_class();
      v24 = [v8 headers];
      v11->_hasInhumanHeaders = [v23 headerDictionaryContainsInhumanHeaders:v24];
    }

    else
    {
      v11->_hasInhumanHeaders = 0;
    }

    v99 = 0u;
    v100 = 0u;
    v97 = 0u;
    v98 = 0u;
    v85 = v8;
    v25 = [v8 headers];
    v26 = [v25 countByEnumeratingWithState:&v97 objects:v104 count:16];
    if (v26)
    {
      v27 = v26;
      v28 = *v98;
LABEL_11:
      v29 = 0;
      while (1)
      {
        if (*v98 != v28)
        {
          objc_enumerationMutation(v25);
        }

        v30 = *(*(&v97 + 1) + 8 * v29);
        if (![@"message-id" compare:v30 options:{3, v80}])
        {
          v31 = [v8 headers];
          v32 = [v31 objectForKeyedSubscript:v30];
          v33 = [v32 firstObject];
          messageId = v84->_messageId;
          v84->_messageId = v33;

          if (v84->_messageId)
          {
            break;
          }
        }

        if (v27 == ++v29)
        {
          v27 = [v25 countByEnumeratingWithState:&v97 objects:v104 count:16];
          if (v27)
          {
            goto LABEL_11;
          }

          break;
        }
      }
    }

    if (!v84->_messageId)
    {
      v35 = [v8 messageIdentifier];
      v36 = v84->_messageId;
      v84->_messageId = v35;
    }

    v37 = [v8 messageIdentifier];
    appleMailMessageId = v84->_appleMailMessageId;
    v84->_appleMailMessageId = v37;

    v39 = [v8 headers];
    v40 = [v39 objectForKeyedSubscript:@"in-reply-to"];
    v41 = [v40 objectAtIndexedSubscript:0];
    inReplyTo = v84->_inReplyTo;
    v84->_inReplyTo = v41;

    v43 = objc_alloc(MEMORY[0x277D020E0]);
    v44 = [v8 fromHandle];
    v45 = [v43 initWithNamedHandle:v44];
    from = v84->_from;
    v84->_from = v45;

    v47 = [v8 toHandles];
    v48 = [v47 _pas_mappedArrayWithTransform:&__block_literal_global_276];
    v49 = v48;
    v50 = MEMORY[0x277CBEBF8];
    if (v48)
    {
      v51 = v48;
    }

    else
    {
      v51 = MEMORY[0x277CBEBF8];
    }

    objc_storeStrong(&v84->_to, v51);

    v52 = [v85 ccHandles];
    v53 = [v52 _pas_mappedArrayWithTransform:&__block_literal_global_278];
    v54 = v53;
    if (v53)
    {
      v55 = v53;
    }

    else
    {
      v55 = v50;
    }

    objc_storeStrong(&v84->_cc, v55);

    v56 = [v85 bccHandles];
    v57 = [v56 _pas_mappedArrayWithTransform:&__block_literal_global_280];
    v58 = v57;
    if (v57)
    {
      v59 = v57;
    }

    else
    {
      v59 = v50;
    }

    objc_storeStrong(&v84->_bcc, v59);

    v60 = [v85 mailboxIdentifiers];
    mailboxIdentifiers = v84->_mailboxIdentifiers;
    v84->_mailboxIdentifiers = v60;

    [(SGMessage *)v84 setIsSent:[(NSArray *)v84->_mailboxIdentifiers containsObject:*MEMORY[0x277CC2338]]];
    v84->_isPartiallyDownloaded = [v85 isFullyDownloaded] ^ 1;
    v62 = [v85 headers];
    v63 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v62, "count")}];
    v93 = 0u;
    v94 = 0u;
    v95 = 0u;
    v96 = 0u;
    obj = v62;
    v87 = [obj countByEnumeratingWithState:&v93 objects:v103 count:16];
    if (v87)
    {
      v86 = *v94;
      do
      {
        for (i = 0; i != v87; ++i)
        {
          if (*v94 != v86)
          {
            objc_enumerationMutation(obj);
          }

          v65 = *(*(&v93 + 1) + 8 * i);
          v66 = objc_autoreleasePoolPush();
          v89 = 0u;
          v90 = 0u;
          v91 = 0u;
          v92 = 0u;
          v67 = [obj objectForKeyedSubscript:v65];
          v68 = [v67 countByEnumeratingWithState:&v89 objects:v102 count:16];
          if (v68)
          {
            v69 = v68;
            v70 = *v90;
            do
            {
              for (j = 0; j != v69; ++j)
              {
                if (*v90 != v70)
                {
                  objc_enumerationMutation(v67);
                }

                v72 = [[SGSimpleMailHeaderKeyValue alloc] initWithKey:v65 value:*(*(&v89 + 1) + 8 * j)];
                [(NSArray *)v63 addObject:v72];
              }

              v69 = [v67 countByEnumeratingWithState:&v89 objects:v102 count:16];
            }

            while (v69);
          }

          objc_autoreleasePoolPop(v66);
        }

        v87 = [obj countByEnumeratingWithState:&v93 objects:v103 count:16];
      }

      while (v87);
    }

    v11 = v84;
    headers = v84->_headers;
    v84->_headers = v63;
    v74 = v63;

    v8 = v85;
    v75 = [v85 htmlContent];
    htmlContentData = v84->_htmlContentData;
    v84->_htmlContentData = v75;

    objc_storeStrong(&v84->_htmlParser, v81);
    v77 = [v85 textContent];
    [(SGMessage *)v84 setTextContent:v77];

    v10 = v82;
    v9 = v83;
  }

  v78 = *MEMORY[0x277D85DE8];
  return v11;
}

id __77__SGSimpleMailMessage_initWithMailContentEvent_contentProtection_htmlParser___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277D020E0];
  v3 = a2;
  v4 = [[v2 alloc] initWithNamedHandle:v3];

  return v4;
}

id __77__SGSimpleMailMessage_initWithMailContentEvent_contentProtection_htmlParser___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277D020E0];
  v3 = a2;
  v4 = [[v2 alloc] initWithNamedHandle:v3];

  return v4;
}

id __77__SGSimpleMailMessage_initWithMailContentEvent_contentProtection_htmlParser___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277D020E0];
  v3 = a2;
  v4 = [[v2 alloc] initWithNamedHandle:v3];

  return v4;
}

- (SGSimpleMailMessage)initWithSearchableItem:(id)a3
{
  v78 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v75.receiver = self;
  v75.super_class = SGSimpleMailMessage;
  v5 = [(SGMessage *)&v75 initWithSearchableItem:v4];
  if (v5)
  {
    v62 = objc_autoreleasePoolPush();
    v6 = [v4 attributeSet];
    v7 = [v6 accountIdentifier];
    [(SGMessage *)v5 setSource:v7];

    v8 = [v6 contentCreationDate];
    v9 = [v8 copy];
    [(SGMessage *)v5 setDate:v9];

    v10 = [v6 authors];
    v11 = [v6 emailHeaders];
    if (v11)
    {
      v12 = objc_alloc(MEMORY[0x277CCAB00]);
      v13 = [MEMORY[0x277CCAB00] hv_headerKeyFunctions];
      v14 = [MEMORY[0x277CCAB00] hv_headerValueFunctions];
      v15 = [v12 initWithKeyPointerFunctions:v13 valuePointerFunctions:v14 capacity:{objc_msgSend(v11, "count")}];

      [(NSMapTable *)v15 hv_addEntriesFromHeadersDictionary:v11];
    }

    else
    {
      v15 = 0;
    }

    if ([v10 count])
    {
      v16 = MEMORY[0x277D020E0];
      v17 = [v10 objectAtIndexedSubscript:0];
      v18 = [v16 namedEmailAddressWithCSPerson:v17];
      [(SGSimpleMailMessage *)v5 setFrom:v18];
    }

    v19 = [(NSMapTable *)v15 objectForKey:@"reply-to"];
    if ([v19 count])
    {
      v20 = MEMORY[0x277D020E0];
      v21 = [v19 objectAtIndexedSubscript:0];
      v22 = [v20 namedEmailAddressWithFieldValue:v21];
      [(SGSimpleMailMessage *)v5 setReplyTo:v22];
    }

    v23 = [(NSMapTable *)v15 hv_firstHeaderForKey:@"message-id"];
    if (v23 || ([v6 mailMessageID], (v23 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v24 = v23;
      [(SGSimpleMailMessage *)v5 setMessageId:v23];
    }

    v25 = [v6 mailMessageID];
    appleMailMessageId = v5->_appleMailMessageId;
    v5->_appleMailMessageId = v25;

    v27 = [(NSMapTable *)v15 hv_firstHeaderForKey:@"in-reply-to"];
    inReplyTo = v5->_inReplyTo;
    v5->_inReplyTo = v27;

    v29 = [(NSMapTable *)v15 hv_firstHeaderForKey:@"list-id"];
    if (v29)
    {
      v30 = [MEMORY[0x277D020E0] namedEmailAddressWithFieldValue:v29];
      [(SGSimpleMailMessage *)v5 setMailingList:v30];
    }

    v57 = v29;
    v31 = [v6 primaryRecipients];
    v32 = sgMapAndFilter();
    [(SGSimpleMailMessage *)v5 setTo:v32];

    v33 = [v6 additionalRecipients];
    v34 = sgMapAndFilter();
    [(SGSimpleMailMessage *)v5 setCc:v34];

    v35 = [v6 hiddenAdditionalRecipients];
    v36 = sgMapAndFilter();
    [(SGSimpleMailMessage *)v5 setBcc:v36];

    v37 = [v6 mailboxIdentifiers];
    [(SGSimpleMailMessage *)v5 setMailboxIdentifiers:v37];

    v60 = v10;
    v61 = v6;
    v58 = v19;
    v59 = v11;
    if (v15)
    {
      v38 = objc_opt_class();
      v39 = NSAllMapTableKeys(v15);
      -[SGSimpleMailMessage setHasInhumanHeaders:](v5, "setHasInhumanHeaders:", [v38 headersContainInhumanOnes:v15 keys:v39]);
    }

    else
    {
      [(SGSimpleMailMessage *)v5 setHasInhumanHeaders:0];
    }

    v63 = v4;
    v40 = [v4 attributeSet];
    v41 = [v40 isPartiallyDownloaded];
    -[SGSimpleMailMessage setIsPartiallyDownloaded:](v5, "setIsPartiallyDownloaded:", [v41 BOOLValue]);

    v42 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMapTable count](v15, "count")}];
    v71 = 0u;
    v72 = 0u;
    v73 = 0u;
    v74 = 0u;
    obj = v15;
    v65 = [(NSMapTable *)obj countByEnumeratingWithState:&v71 objects:v77 count:16];
    if (v65)
    {
      v64 = *v72;
      do
      {
        for (i = 0; i != v65; ++i)
        {
          if (*v72 != v64)
          {
            objc_enumerationMutation(obj);
          }

          v44 = *(*(&v71 + 1) + 8 * i);
          v45 = objc_autoreleasePoolPush();
          v67 = 0u;
          v68 = 0u;
          v69 = 0u;
          v70 = 0u;
          v46 = [(NSMapTable *)obj objectForKey:v44];
          v47 = [v46 countByEnumeratingWithState:&v67 objects:v76 count:16];
          if (v47)
          {
            v48 = v47;
            v49 = *v68;
            do
            {
              for (j = 0; j != v48; ++j)
              {
                if (*v68 != v49)
                {
                  objc_enumerationMutation(v46);
                }

                v51 = [[SGSimpleMailHeaderKeyValue alloc] initWithKey:v44 value:*(*(&v67 + 1) + 8 * j)];
                [v42 addObject:v51];
              }

              v48 = [v46 countByEnumeratingWithState:&v67 objects:v76 count:16];
            }

            while (v48);
          }

          objc_autoreleasePoolPop(v45);
        }

        v65 = [(NSMapTable *)obj countByEnumeratingWithState:&v71 objects:v77 count:16];
      }

      while (v65);
    }

    objc_storeStrong(&v5->_headers, v42);
    v52 = [v61 HTMLContentDataNoCopy];
    if (v52)
    {
      [(SGMessage *)v5 setTextContent:0];
      [(SGSimpleMailMessage *)v5 setHtmlContentData:v52];
    }

    v4 = v63;
    -[SGMessage setIsSent:](v5, "setIsSent:", [MEMORY[0x277D41E30] mailItemIsInSent:v63]);
    v53 = objc_opt_respondsToSelector();
    if (v53)
    {
      v54 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v61, "mailCategories")}];
    }

    else
    {
      v54 = 0;
    }

    objc_storeStrong(&v5->_mailCategories, v54);
    if (v53)
    {
    }

    objc_autoreleasePoolPop(v62);
  }

  v55 = *MEMORY[0x277D85DE8];
  return v5;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x277CCACA8]);
  v4 = [(SGSimpleMailMessage *)self asDictionary];
  v5 = [v3 initWithFormat:@"<SGSimpleMailMessage %@>", v4];

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v7.receiver = self;
  v7.super_class = SGSimpleMailMessage;
  v4 = [(SGMessage *)&v7 copyWithZone:a3];
  v5 = v4;
  if (self->_htmlContentData)
  {
    [v4 setHtmlContentData:?];
  }

  else if (self->_htmlBody)
  {
    [v4 setHtmlBody:?];
  }

  [v5 setMessageId:self->_messageId];
  [v5 setFrom:self->_from];
  [v5 setReplyTo:self->_replyTo];
  [v5 setTo:self->_to];
  [v5 setCc:self->_cc];
  [v5 setBcc:self->_bcc];
  [v5 setHasInhumanHeaders:self->_hasInhumanHeaders];
  [v5 setIsPartiallyDownloaded:self->_isPartiallyDownloaded];
  [v5 setMailingList:self->_mailingList];
  objc_storeStrong(v5 + 40, self->_headers);
  objc_storeStrong(v5 + 36, self->_appleMailMessageId);
  objc_storeStrong(v5 + 37, self->_inReplyTo);
  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = SGSimpleMailMessage;
  v4 = a3;
  [(SGMessage *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_htmlBody forKey:{@"htmlBody", v5.receiver, v5.super_class}];
  [v4 encodeObject:self->_htmlContentData forKey:@"htmlContentData"];
  [v4 encodeObject:self->_messageId forKey:@"messageId"];
  [v4 encodeObject:self->_inReplyTo forKey:@"inReplyTo"];
  [v4 encodeObject:self->_from forKey:@"from"];
  [v4 encodeObject:self->_replyTo forKey:@"replyTo"];
  [v4 encodeObject:self->_mailingList forKey:@"mailingList"];
  [v4 encodeObject:self->_to forKey:@"to"];
  [v4 encodeObject:self->_cc forKey:@"cc"];
  [v4 encodeObject:self->_bcc forKey:@"bcc"];
  [v4 encodeBool:self->_hasInhumanHeaders forKey:@"hasInhumanHeaders"];
  [v4 encodeBool:self->_isPartiallyDownloaded forKey:@"isPartiallyDownloaded"];
  [v4 encodeObject:self->_headers forKey:@"headers"];
  [v4 encodeObject:self->_appleMailMessageId forKey:@"appleMailMessageId"];
}

- (SGSimpleMailMessage)initWithCoder:(id)a3
{
  v4 = a3;
  v51.receiver = self;
  v51.super_class = SGSimpleMailMessage;
  v5 = [(SGMessage *)&v51 initWithCoder:v4];
  if (v5)
  {
    v6 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{objc_opt_class(), 0}];
    v7 = [v4 decodeObjectOfClasses:v6 forKey:@"htmlBody"];
    htmlBody = v5->_htmlBody;
    v5->_htmlBody = v7;

    v9 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{objc_opt_class(), 0}];
    v10 = [v4 decodeObjectOfClasses:v9 forKey:@"htmlContentData"];
    htmlContentData = v5->_htmlContentData;
    v5->_htmlContentData = v10;

    v12 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{objc_opt_class(), 0}];
    v13 = [v4 decodeObjectOfClasses:v12 forKey:@"messageId"];
    messageId = v5->_messageId;
    v5->_messageId = v13;

    v15 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{objc_opt_class(), 0}];
    v16 = [v4 decodeObjectOfClasses:v15 forKey:@"inReplyTo"];
    inReplyTo = v5->_inReplyTo;
    v5->_inReplyTo = v16;

    v18 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{objc_opt_class(), 0}];
    v19 = [v4 decodeObjectOfClasses:v18 forKey:@"from"];
    from = v5->_from;
    v5->_from = v19;

    v21 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{objc_opt_class(), 0}];
    v22 = [v4 decodeObjectOfClasses:v21 forKey:@"mailingList"];
    mailingList = v5->_mailingList;
    v5->_mailingList = v22;

    v24 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{objc_opt_class(), 0}];
    v25 = [v4 decodeObjectOfClasses:v24 forKey:@"replyTo"];
    replyTo = v5->_replyTo;
    v5->_replyTo = v25;

    v27 = objc_alloc(MEMORY[0x277CBEB98]);
    v28 = objc_opt_class();
    v29 = [v27 initWithObjects:{v28, objc_opt_class(), 0}];
    v30 = [v4 decodeObjectOfClasses:v29 forKey:@"to"];
    to = v5->_to;
    v5->_to = v30;

    v32 = objc_alloc(MEMORY[0x277CBEB98]);
    v33 = objc_opt_class();
    v34 = [v32 initWithObjects:{v33, objc_opt_class(), 0}];
    v35 = [v4 decodeObjectOfClasses:v34 forKey:@"cc"];
    cc = v5->_cc;
    v5->_cc = v35;

    v37 = objc_alloc(MEMORY[0x277CBEB98]);
    v38 = objc_opt_class();
    v39 = [v37 initWithObjects:{v38, objc_opt_class(), 0}];
    v40 = [v4 decodeObjectOfClasses:v39 forKey:@"bcc"];
    bcc = v5->_bcc;
    v5->_bcc = v40;

    v5->_hasInhumanHeaders = [v4 decodeBoolForKey:@"hasInhumanHeaders"];
    v5->_isPartiallyDownloaded = [v4 decodeBoolForKey:@"isPartiallyDownloaded"];
    v42 = objc_alloc(MEMORY[0x277CBEB98]);
    v43 = objc_opt_class();
    v44 = [v42 initWithObjects:{v43, objc_opt_class(), 0}];
    v45 = [v4 decodeObjectOfClasses:v44 forKey:@"headers"];
    headers = v5->_headers;
    v5->_headers = v45;

    v47 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{objc_opt_class(), 0}];
    v48 = [v4 decodeObjectOfClasses:v47 forKey:@"appleMailMessageId"];
    appleMailMessageId = v5->_appleMailMessageId;
    v5->_appleMailMessageId = v48;
  }

  return v5;
}

- (unint64_t)hash
{
  v6.receiver = self;
  v6.super_class = SGSimpleMailMessage;
  v3 = [(SGSimpleMailMessage *)&v6 hash];
  v4 = [(NSString *)self->_messageId hash]- v3 + 32 * v3;
  return [(SGSimpleNamedEmailAddress *)self->_from hash]- v4 + 32 * v4;
}

- (BOOL)isEqualToSimpleMailMessage:(id)a3
{
  v4 = a3;
  v37.receiver = self;
  v37.super_class = SGSimpleMailMessage;
  if (![(SGMessage *)&v37 isEqualToMessage:v4])
  {
    goto LABEL_38;
  }

  v5 = self->_messageId;
  v6 = v5;
  if (v5 == v4[35])
  {
  }

  else
  {
    v7 = [(NSString *)v5 isEqual:?];

    if ((v7 & 1) == 0)
    {
      goto LABEL_38;
    }
  }

  v8 = self->_from;
  v9 = v8;
  if (v8 == v4[29])
  {
  }

  else
  {
    v10 = [(SGSimpleNamedEmailAddress *)v8 isEqual:?];

    if ((v10 & 1) == 0)
    {
      goto LABEL_38;
    }
  }

  v11 = self->_replyTo;
  v12 = v11;
  if (v11 == v4[30])
  {
  }

  else
  {
    v13 = [(SGSimpleNamedEmailAddress *)v11 isEqual:?];

    if ((v13 & 1) == 0)
    {
      goto LABEL_38;
    }
  }

  v14 = self->_to;
  v15 = v14;
  if (v14 == v4[31])
  {
  }

  else
  {
    v16 = [(NSArray *)v14 isEqual:?];

    if ((v16 & 1) == 0)
    {
      goto LABEL_38;
    }
  }

  v17 = self->_cc;
  v18 = v17;
  if (v17 == v4[32])
  {
  }

  else
  {
    v19 = [(NSArray *)v17 isEqual:?];

    if ((v19 & 1) == 0)
    {
      goto LABEL_38;
    }
  }

  v20 = self->_bcc;
  v21 = v20;
  if (v20 == v4[33])
  {
  }

  else
  {
    v22 = [(NSArray *)v20 isEqual:?];

    if ((v22 & 1) == 0)
    {
      goto LABEL_38;
    }
  }

  v23 = self->_headers;
  v24 = v23;
  if (v23 == v4[40])
  {
  }

  else
  {
    v25 = [(NSArray *)v23 isEqual:?];

    if ((v25 & 1) == 0)
    {
      goto LABEL_38;
    }
  }

  v26 = self->_mailingList;
  v27 = v26;
  if (v26 == v4[41])
  {
  }

  else
  {
    v28 = [(SGSimpleNamedEmailAddress *)v26 isEqual:?];

    if ((v28 & 1) == 0)
    {
      goto LABEL_38;
    }
  }

  if (self->_hasInhumanHeaders != *(v4 + 224) || self->_isPartiallyDownloaded != *(v4 + 225))
  {
    goto LABEL_38;
  }

  v29 = self->_appleMailMessageId;
  v30 = v29;
  if (v29 == v4[36])
  {
  }

  else
  {
    v31 = [(NSString *)v29 isEqual:?];

    if ((v31 & 1) == 0)
    {
LABEL_38:
      v32 = 0;
      goto LABEL_39;
    }
  }

  htmlContentData = self->_htmlContentData;
  if (htmlContentData)
  {
    v35 = [v4 htmlContentData];
    v32 = [(NSData *)htmlContentData isEqual:v35];
  }

  else
  {
    v35 = [(SGSimpleMailMessage *)self htmlBody];
    v36 = [v4 htmlBody];
    v32 = [v35 isEqual:v36];
  }

LABEL_39:
  return v32;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(SGSimpleMailMessage *)self isEqualToSimpleMailMessage:v5];
  }

  return v6;
}

- (id)uniqueIdentifier
{
  v22 = *MEMORY[0x277D85DE8];
  messageId = self->_messageId;
  if (messageId)
  {
    v3 = messageId;
  }

  else
  {
    memset(&c, 0, sizeof(c));
    CC_SHA256_Init(&c);
    v5 = objc_autoreleasePoolPush();
    v6 = [(SGSimpleNamedEmailAddress *)self->_from emailAddress];
    v7 = [v6 dataUsingEncoding:4];

    objc_autoreleasePoolPop(v5);
    if (v7)
    {
      CC_SHA256_Update(&c, [v7 bytes], objc_msgSend(v7, "length"));
    }

    v8 = objc_autoreleasePoolPush();
    v9 = [(SGMessage *)self subject];
    v10 = [v9 dataUsingEncoding:4];

    objc_autoreleasePoolPop(v8);
    if (v10)
    {
      CC_SHA256_Update(&c, [v10 bytes], objc_msgSend(v10, "length"));
    }

    v11 = [(SGMessage *)self date];
    [v11 timeIntervalSinceReferenceDate];
    v13 = v12;

    *__str = 0u;
    v21 = 0u;
    snprintf(__str, 0x20uLL, "%llu", v13);
    v14 = strlen(__str);
    CC_SHA256_Update(&c, __str, v14);
    CC_SHA256_Final(__str, &c);
    v3 = [objc_alloc(MEMORY[0x277CCAB68]) initWithCapacity:64];
    for (i = 0; i != 32; ++i)
    {
      v16 = objc_autoreleasePoolPush();
      [(NSString *)v3 appendFormat:@"%02x", __str[i]];
      objc_autoreleasePoolPop(v16);
    }
  }

  v17 = *MEMORY[0x277D85DE8];

  return v3;
}

- (id)author
{
  authorCached = self->_authorCached;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __29__SGSimpleMailMessage_author__block_invoke;
  v5[3] = &unk_27894D330;
  v5[4] = self;
  v3 = [(_PASCachedResult *)authorCached resultWithBlock:v5];

  return v3;
}

id __29__SGSimpleMailMessage_author__block_invoke(uint64_t a1)
{
  v13[1] = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) from];
  if (v2)
  {
    v3 = objc_alloc(MEMORY[0x277CC3450]);
    v4 = [*(a1 + 32) from];
    v5 = [v4 name];
    v6 = [SGNames cleanName:v5];
    v7 = [*(a1 + 32) from];
    v8 = [v7 emailAddress];
    v13[0] = v8;
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:1];
    v10 = [v3 initWithDisplayName:v6 handles:v9 handleIdentifier:*MEMORY[0x277CBCFC0]];
  }

  else
  {
    v10 = 0;
  }

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

- (int64_t)contentLength
{
  v9.receiver = self;
  v9.super_class = SGSimpleMailMessage;
  v3 = [(SGMessage *)&v9 textContent];

  if (v3)
  {
    v8.receiver = self;
    v8.super_class = SGSimpleMailMessage;
    v4 = [(SGMessage *)&v8 textContent];
    v5 = [v4 length];
  }

  else
  {
    htmlContentData = self->_htmlContentData;
    if (htmlContentData)
    {
      return [htmlContentData length];
    }

    htmlContentData = self->_htmlBody;
    if (htmlContentData)
    {
      return [htmlContentData length];
    }

    else
    {
      return 0;
    }
  }

  return v5;
}

- (id)textContent
{
  v8.receiver = self;
  v8.super_class = SGSimpleMailMessage;
  v3 = [(SGMessage *)&v8 textContent];

  if (v3)
  {
    v7.receiver = self;
    v7.super_class = SGSimpleMailMessage;
    v4 = [(SGMessage *)&v7 textContent];
  }

  else
  {
    v5 = [(SGSimpleMailMessage *)self htmlParser];
    v4 = [v5 textContent];
  }

  return v4;
}

- (id)dataDetectorMatchesWithSignature
{
  v3 = [(SGSimpleMailMessage *)self textContent];
  v4 = [(SGSimpleMailMessage *)self htmlParser];
  v5 = [v4 quotedRegions];

  v6 = [(SGSimpleMailMessage *)self htmlParser];
  v7 = [v6 tabularRegions];

  v8 = [(SGMessage *)self date];
  v9 = [objc_alloc(MEMORY[0x277CCAB58]) initWithIndexesInRange:{0, objc_msgSend(v3, "length")}];
  [v9 removeIndexes:v5];
  [v9 removeIndexes:v7];
  v10 = [SGDataDetectorMatch detectionsAndSignatureInText:v3 eligibleRegions:v9 baseDate:v8];
  if (v7)
  {
    v11 = [SGDataDetectorMatch detectionsInPlainText:v3 withEligibleRegions:v7 baseDate:v8];
    if ([v11 count])
    {
      v12 = [v11 _pas_filteredArrayWithTest:&__block_literal_global_211];

      if ([v12 count])
      {
        v13 = [v10 matches];
        v14 = [v13 mutableCopy];

        [v14 addObjectsFromArray:v12];
        v15 = [v14 copy];
        [v10 setMatches:v15];
      }
    }

    else
    {
      v12 = v11;
    }
  }

  return v10;
}

- (BOOL)hasHumanHeaders
{
  hasHumanHeadersCached = self->_hasHumanHeadersCached;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __38__SGSimpleMailMessage_hasHumanHeaders__block_invoke;
  v6[3] = &unk_278951370;
  v6[4] = self;
  v3 = [(_PASCachedResult *)hasHumanHeadersCached resultNonnullWithBlock:v6];
  v4 = [v3 BOOLValue];

  return v4;
}

id __38__SGSimpleMailMessage_hasHumanHeaders__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) headers];
  v2 = MEMORY[0x277CCABB0];
  if (v1)
  {
    v3 = [SGInhumans areHumanHeaders:v1];
  }

  else
  {
    v3 = 0;
  }

  v4 = [v2 numberWithInt:v3];

  return v4;
}

- (BOOL)isInhumanContentNoncached
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  v3 = [(SGSimpleMailMessage *)self textContent];
  if ([v3 length])
  {
    v4 = objc_autoreleasePoolPush();
    v5 = [objc_alloc(MEMORY[0x277CCAB58]) initWithIndexesInRange:{0, objc_msgSend(v3, "length")}];
    v6 = [(SGSimpleMailMessage *)self htmlParser];
    v7 = [v6 quotedRegions];
    [v5 removeIndexes:v7];

    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __48__SGSimpleMailMessage_isInhumanContentNoncached__block_invoke;
    v10[3] = &unk_27894D308;
    v12 = &v13;
    v11 = v3;
    [v5 enumerateRangesUsingBlock:v10];

    objc_autoreleasePoolPop(v4);
  }

  v8 = *(v14 + 24);

  _Block_object_dispose(&v13, 8);
  return v8;
}

void __48__SGSimpleMailMessage_isInhumanContentNoncached__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, BOOL *a4)
{
  v8 = objc_autoreleasePoolPush();
  v9 = [*(a1 + 32) substringWithRange:{a2, a3}];
  v10 = [SGInhumans isInhumanBody:v9];
  *(*(*(a1 + 40) + 8) + 24) = v10;
  *a4 = v10;

  objc_autoreleasePoolPop(v8);
}

- (NSIndexSet)quotedRegions
{
  quotedRegionsCached = self->_quotedRegionsCached;
  if (!quotedRegionsCached)
  {
    v7 = [MEMORY[0x277CCA890] currentHandler];
    [v7 handleFailureInMethod:a2 object:self file:@"SGSimpleMailMessage.m" lineNumber:325 description:{@"Invalid parameter not satisfying: %@", @"_quotedRegionsCached"}];

    quotedRegionsCached = self->_quotedRegionsCached;
  }

  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __36__SGSimpleMailMessage_quotedRegions__block_invoke;
  v8[3] = &unk_27894D2E0;
  v8[4] = self;
  v4 = [(_PASCachedResult *)quotedRegionsCached resultNonnullWithBlock:v8];

  return v4;
}

id __36__SGSimpleMailMessage_quotedRegions__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) harvestMetrics];
  [v2 startTimer:kHarvestMetricsMessageQuotedRegions];

  v3 = [*(a1 + 32) htmlParser];
  v4 = [v3 textContent];

  v5 = [v4 length];
  v6 = *(a1 + 32);
  if (v5)
  {
    v7 = [v6 messageId];
    v8 = [v7 hasSuffix:@"@email.android.com>"];

    v9 = [*(a1 + 32) htmlParser];
    v10 = [v9 quotedRegions];

    v11 = objc_opt_new();
    v12 = [objc_alloc(MEMORY[0x277CCAB58]) initWithIndexesInRange:{0, objc_msgSend(v4, "length")}];
    [v12 removeIndexes:v10];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __36__SGSimpleMailMessage_quotedRegions__block_invoke_2;
    v18[3] = &unk_27894D2B8;
    v19 = v4;
    v21 = v8;
    v13 = v11;
    v20 = v13;
    [v12 enumerateRangesUsingBlock:v18];
    if (v10)
    {
      [v13 addIndexes:v10];
    }

    v14 = [v13 copy];
    v15 = [*(a1 + 32) harvestMetrics];
    [v15 endTimer:kHarvestMetricsMessageQuotedRegions significantWork:{objc_msgSend(v14, "count") != 0}];
  }

  else
  {
    v16 = [v6 htmlParser];
    v14 = [v16 quotedRegions];
  }

  return v14;
}

void __36__SGSimpleMailMessage_quotedRegions__block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v8 = objc_autoreleasePoolPush();
  v12 = 0;
  v9 = objc_autoreleasePoolPush();
  v10 = [*(a1 + 32) substringWithRange:{a2, a3}];
  objc_autoreleasePoolPop(v9);
  v11 = [SGMailQuoteParser quotedRegionsFrom:v10 isAOSPMail:*(a1 + 48) foundToEndOfMessage:&v12];

  [v11 shiftIndexesStartingAtIndex:0 by:a2];
  [*(a1 + 40) addIndexes:v11];
  if (v12 == 1)
  {
    [*(a1 + 40) addIndexesInRange:{a2 + a3, objc_msgSend(*(a1 + 32), "length") - (a2 + a3)}];
    *a4 = 1;
  }

  objc_autoreleasePoolPop(v8);
}

- (void)setHtmlContentData:(id)a3
{
  v4 = a3;
  [(SGSimpleMailMessage *)self _clearExistingHtml];
  v5 = *MEMORY[0x277D42680];
  if (v4)
  {
    v5 = v4;
  }

  v6 = v5;

  htmlContentData = self->_htmlContentData;
  self->_htmlContentData = v6;
  v10 = v6;

  v8 = [objc_alloc(MEMORY[0x277D41E10]) initWithData:v10 encoding:4];
  htmlParser = self->_htmlParser;
  self->_htmlParser = v8;
}

- (NSData)htmlContentData
{
  htmlContentData = self->_htmlContentData;
  if (htmlContentData)
  {
    v3 = htmlContentData;
  }

  else
  {
    htmlContentDataCached = self->_htmlContentDataCached;
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __38__SGSimpleMailMessage_htmlContentData__block_invoke;
    v6[3] = &unk_27894D290;
    v6[4] = self;
    v3 = [(_PASCachedResult *)htmlContentDataCached resultNonnullWithBlock:v6];
  }

  return v3;
}

void *__38__SGSimpleMailMessage_htmlContentData__block_invoke(uint64_t a1)
{
  v1 = [*(*(a1 + 32) + 168) dataUsingEncoding:4];
  v2 = v1;
  if (v1)
  {
    v3 = v1;
  }

  else
  {
    v3 = *MEMORY[0x277D42680];
  }

  v4 = v3;

  return v3;
}

- (void)setHtmlBody:(id)a3
{
  v4 = a3;
  [(SGSimpleMailMessage *)self _clearExistingHtml];
  v5 = &stru_284703F00;
  if (v4)
  {
    v5 = v4;
  }

  v6 = v5;

  htmlBody = self->_htmlBody;
  self->_htmlBody = v6;
  v10 = v6;

  v8 = [objc_alloc(MEMORY[0x277D41E10]) initWithString:v10];
  htmlParser = self->_htmlParser;
  self->_htmlParser = v8;
}

- (NSString)htmlBody
{
  htmlBody = self->_htmlBody;
  if (htmlBody)
  {
    v3 = htmlBody;
  }

  else
  {
    htmlBodyCached = self->_htmlBodyCached;
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __31__SGSimpleMailMessage_htmlBody__block_invoke;
    v6[3] = &unk_278951348;
    v6[4] = self;
    v3 = [(_PASCachedResult *)htmlBodyCached resultNonnullWithBlock:v6];
  }

  return v3;
}

__CFString *__31__SGSimpleMailMessage_htmlBody__block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 184);
  if (v2)
  {
    v3 = [MEMORY[0x277CCACA8] _pas_stringWithDataNoCopy:v2 encoding:4 nullTerminated:0];
  }

  else
  {
    v3 = &stru_284703F00;
  }

  return v3;
}

- (void)_clearExistingHtml
{
  htmlBody = self->_htmlBody;
  self->_htmlBody = 0;

  v4 = objc_opt_new();
  htmlBodyCached = self->_htmlBodyCached;
  self->_htmlBodyCached = v4;

  htmlContentData = self->_htmlContentData;
  self->_htmlContentData = 0;

  v7 = objc_opt_new();
  htmlContentDataCached = self->_htmlContentDataCached;
  self->_htmlContentDataCached = v7;

  MEMORY[0x2821F96F8](v7, htmlContentDataCached);
}

- (id)headersDictionary
{
  v64 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v4 = self->_headers;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v50 objects:v63 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v51;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v51 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v50 + 1) + 8 * i);
        v10 = [v9 key];
        v11 = [v3 objectForKeyedSubscript:v10];

        if (!v11)
        {
          v11 = objc_opt_new();
          v12 = [v9 key];
          [v3 setObject:v11 forKeyedSubscript:v12];
        }

        v13 = [v9 value];
        [v11 addObject:v13];
      }

      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v50 objects:v63 count:16];
    }

    while (v6);
  }

  if (self->_messageId)
  {
    v14 = [v3 objectForKeyedSubscript:@"message-id"];

    if (!v14)
    {
      messageId = self->_messageId;
      v15 = [MEMORY[0x277CBEA60] arrayWithObjects:&messageId count:1];
      [v3 setObject:v15 forKeyedSubscript:@"message-id"];
    }
  }

  v16 = [(SGMessage *)self subject];
  if (v16)
  {
    v17 = v16;
    v18 = [v3 objectForKeyedSubscript:@"subject"];

    if (!v18)
    {
      v19 = [(SGMessage *)self subject];
      v61 = v19;
      v20 = [MEMORY[0x277CBEA60] arrayWithObjects:&v61 count:1];
      [v3 setObject:v20 forKeyedSubscript:@"subject"];
    }
  }

  v21 = [(SGMessage *)self date];
  if (v21)
  {
    v22 = v21;
    v23 = [v3 objectForKeyedSubscript:@"date"];

    if (!v23)
    {
      v24 = [(SGMessage *)self date];
      v25 = [v24 sg_descriptionForMimeHeaders];
      v60 = v25;
      v26 = [MEMORY[0x277CBEA60] arrayWithObjects:&v60 count:1];
      [v3 setObject:v26 forKeyedSubscript:@"date"];
    }
  }

  if (self->_from)
  {
    v27 = [v3 objectForKeyedSubscript:@"from"];

    if (!v27)
    {
      v28 = [(SGSimpleNamedEmailAddress *)self->_from serialized];
      v59 = v28;
      v29 = [MEMORY[0x277CBEA60] arrayWithObjects:&v59 count:1];
      [v3 setObject:v29 forKeyedSubscript:@"from"];
    }
  }

  if (self->_replyTo)
  {
    v30 = [v3 objectForKeyedSubscript:@"reply-to"];

    if (!v30)
    {
      v31 = [(SGSimpleNamedEmailAddress *)self->_replyTo serialized];
      v58 = v31;
      v32 = [MEMORY[0x277CBEA60] arrayWithObjects:&v58 count:1];
      [v3 setObject:v32 forKeyedSubscript:@"reply-to"];
    }
  }

  if ([(NSArray *)self->_to count])
  {
    v33 = [v3 objectForKeyedSubscript:@"to"];

    if (!v33)
    {
      v34 = [MEMORY[0x277D020E0] serializeAll:self->_to];
      v35 = [v34 _pas_componentsJoinedByString:{@", "}];
      v57 = v35;
      v36 = [MEMORY[0x277CBEA60] arrayWithObjects:&v57 count:1];
      [v3 setObject:v36 forKeyedSubscript:@"to"];
    }
  }

  if ([(NSArray *)self->_cc count])
  {
    v37 = [v3 objectForKeyedSubscript:@"cc"];

    if (!v37)
    {
      v38 = [MEMORY[0x277D020E0] serializeAll:self->_cc];
      v39 = [v38 _pas_componentsJoinedByString:{@", "}];
      v56 = v39;
      v40 = [MEMORY[0x277CBEA60] arrayWithObjects:&v56 count:1];
      [v3 setObject:v40 forKeyedSubscript:@"cc"];
    }
  }

  if ([(NSArray *)self->_bcc count])
  {
    v41 = [v3 objectForKeyedSubscript:@"bcc"];

    if (!v41)
    {
      v42 = [MEMORY[0x277D020E0] serializeAll:self->_bcc];
      v43 = [v42 _pas_componentsJoinedByString:{@", "}];
      v55 = v43;
      v44 = [MEMORY[0x277CBEA60] arrayWithObjects:&v55 count:1];
      [v3 setObject:v44 forKeyedSubscript:@"bcc"];
    }
  }

  if (self->_mailingList)
  {
    v45 = [v3 objectForKeyedSubscript:@"list-id"];

    if (!v45)
    {
      v46 = [(SGSimpleNamedEmailAddress *)self->_mailingList serialized];
      v54 = v46;
      v47 = [MEMORY[0x277CBEA60] arrayWithObjects:&v54 count:1];
      [v3 setObject:v47 forKeyedSubscript:@"list-id"];
    }
  }

  v48 = *MEMORY[0x277D85DE8];

  return v3;
}

- (id)asDictionary
{
  v38 = *MEMORY[0x277D85DE8];
  if (asDictionary_onceToken != -1)
  {
    dispatch_once(&asDictionary_onceToken, &__block_literal_global_11432);
  }

  v3 = [MEMORY[0x277CBEB38] dictionaryWithSharedKeySet:asDictionary_sharedKeySet];
  v35.receiver = self;
  v35.super_class = SGSimpleMailMessage;
  v4 = [(SGMessage *)&v35 asDictionary];
  [v3 addEntriesFromDictionary:v4];

  v5 = [(SGSimpleMailMessage *)self htmlBody];
  [v3 setObject:v5 forKeyedSubscript:@"htmlBody"];

  messageId = self->_messageId;
  if (messageId)
  {
    [v3 setObject:messageId forKeyedSubscript:@"messageId"];
  }

  inReplyTo = self->_inReplyTo;
  if (inReplyTo)
  {
    [v3 setObject:inReplyTo forKeyedSubscript:@"inReplyTo"];
  }

  from = self->_from;
  if (from)
  {
    v9 = [(SGSimpleNamedEmailAddress *)from serialized];
    [v3 setObject:v9 forKeyedSubscript:@"from"];
  }

  replyTo = self->_replyTo;
  if (replyTo)
  {
    v11 = [(SGSimpleNamedEmailAddress *)replyTo serialized];
    [v3 setObject:v11 forKeyedSubscript:@"replyTo"];
  }

  if (self->_to)
  {
    v12 = [MEMORY[0x277D020E0] serializeAll:?];
    [v3 setObject:v12 forKeyedSubscript:@"to"];
  }

  if (self->_cc)
  {
    v13 = [MEMORY[0x277D020E0] serializeAll:?];
    [v3 setObject:v13 forKeyedSubscript:@"cc"];
  }

  if (self->_bcc)
  {
    v14 = [MEMORY[0x277D020E0] serializeAll:?];
    [v3 setObject:v14 forKeyedSubscript:@"bcc"];
  }

  if (self->_hasInhumanHeaders)
  {
    v15 = [MEMORY[0x277CCABB0] numberWithBool:1];
    [v3 setObject:v15 forKeyedSubscript:@"hasInhumanHeaders"];
  }

  if (self->_isPartiallyDownloaded)
  {
    v16 = [MEMORY[0x277CCABB0] numberWithBool:1];
    [v3 setObject:v16 forKeyedSubscript:@"isPartiallyDownloaded"];
  }

  mailingList = self->_mailingList;
  if (mailingList)
  {
    v18 = [(SGSimpleNamedEmailAddress *)mailingList serialized];
    [v3 setObject:v18 forKeyedSubscript:@"mailingList"];
  }

  v19 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSArray count](self->_headers, "count")}];
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v20 = self->_headers;
  v21 = [(NSArray *)v20 countByEnumeratingWithState:&v31 objects:v37 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v32;
    do
    {
      for (i = 0; i != v22; ++i)
      {
        if (*v32 != v23)
        {
          objc_enumerationMutation(v20);
        }

        v25 = *(*(&v31 + 1) + 8 * i);
        v26 = [v25 key];
        v36[0] = v26;
        v27 = [v25 value];
        v36[1] = v27;
        v28 = [MEMORY[0x277CBEA60] arrayWithObjects:v36 count:2];
        [v19 addObject:v28];
      }

      v22 = [(NSArray *)v20 countByEnumeratingWithState:&v31 objects:v37 count:16];
    }

    while (v22);
  }

  [v3 setObject:v19 forKeyedSubscript:@"headers"];
  v29 = *MEMORY[0x277D85DE8];

  return v3;
}

uint64_t __35__SGSimpleMailMessage_asDictionary__block_invoke()
{
  v0 = [MEMORY[0x277CBEAC0] sharedKeySetForKeys:&unk_28474A5D0];
  v1 = asDictionary_sharedKeySet;
  asDictionary_sharedKeySet = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

- (SGSimpleMailMessage)initWithMessageDictionary:(id)a3
{
  v73 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v71.receiver = self;
  v71.super_class = SGSimpleMailMessage;
  v5 = [(SGMessage *)&v71 initWithMessageDictionary:v4];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"htmlBody"];

    if (v6)
    {
      v7 = [v4 objectForKeyedSubscript:@"htmlBody"];
      v8 = [v7 copy];
      [(SGSimpleMailMessage *)v5 setHtmlBody:v8];
    }

    v9 = [v4 objectForKeyedSubscript:@"messageId"];
    v10 = [v9 copy];
    messageId = v5->_messageId;
    v5->_messageId = v10;

    v12 = [v4 objectForKeyedSubscript:@"inReplyTo"];
    v13 = [v12 copy];
    inReplyTo = v5->_inReplyTo;
    v5->_inReplyTo = v13;

    v15 = [v4 objectForKeyedSubscript:@"appleMailMessageId"];
    v16 = [v15 copy];
    appleMailMessageId = v5->_appleMailMessageId;
    v5->_appleMailMessageId = v16;

    v18 = MEMORY[0x277D020E0];
    v19 = [v4 objectForKeyedSubscript:@"from"];
    v20 = [v18 namedEmailAddressWithFieldValue:v19];
    v21 = [v20 copy];
    from = v5->_from;
    v5->_from = v21;

    v23 = MEMORY[0x277D020E0];
    v24 = [v4 objectForKeyedSubscript:@"forwardedBy"];
    v25 = [v23 namedEmailAddressWithFieldValue:v24];
    v26 = [v25 copy];
    forwardedBy = v5->_forwardedBy;
    v5->_forwardedBy = v26;

    v28 = MEMORY[0x277D020E0];
    v29 = [v4 objectForKeyedSubscript:@"replyTo"];
    v30 = [v28 namedEmailAddressWithFieldValue:v29];
    v31 = [v30 copy];
    replyTo = v5->_replyTo;
    v5->_replyTo = v31;

    v33 = MEMORY[0x277D020E0];
    v34 = [v4 objectForKeyedSubscript:@"to"];
    v35 = [v33 namedEmailAddressesWithFieldValues:v34];
    to = v5->_to;
    v5->_to = v35;

    v37 = MEMORY[0x277D020E0];
    v38 = [v4 objectForKeyedSubscript:@"cc"];
    v39 = [v37 namedEmailAddressesWithFieldValues:v38];
    cc = v5->_cc;
    v5->_cc = v39;

    v41 = MEMORY[0x277D020E0];
    v42 = [v4 objectForKeyedSubscript:@"bcc"];
    v43 = [v41 namedEmailAddressesWithFieldValues:v42];
    bcc = v5->_bcc;
    v5->_bcc = v43;

    v45 = [v4 objectForKeyedSubscript:@"hasInhumanHeaders"];
    v5->_hasInhumanHeaders = [v45 BOOLValue];

    v46 = [v4 objectForKeyedSubscript:@"isPartiallyDownloaded"];
    v5->_isPartiallyDownloaded = [v46 BOOLValue];

    v47 = MEMORY[0x277D020E0];
    v48 = [v4 objectForKeyedSubscript:@"mailingList"];
    v49 = [v47 namedEmailAddressWithFieldValue:v48];
    mailingList = v5->_mailingList;
    v5->_mailingList = v49;

    v66 = v4;
    v51 = [v4 objectForKeyedSubscript:@"headers"];
    v52 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v51, "count")}];
    v67 = 0u;
    v68 = 0u;
    v69 = 0u;
    v70 = 0u;
    v53 = v51;
    v54 = [v53 countByEnumeratingWithState:&v67 objects:v72 count:16];
    if (v54)
    {
      v55 = v54;
      v56 = *v68;
      do
      {
        v57 = 0;
        do
        {
          if (*v68 != v56)
          {
            objc_enumerationMutation(v53);
          }

          v58 = *(*(&v67 + 1) + 8 * v57);
          v59 = [SGSimpleMailHeaderKeyValue alloc];
          v60 = [v58 objectAtIndexedSubscript:0];
          v61 = [v58 objectAtIndexedSubscript:1];
          v62 = [(SGSimpleMailHeaderKeyValue *)v59 initWithKey:v60 value:v61];
          [(NSArray *)v52 addObject:v62];

          ++v57;
        }

        while (v55 != v57);
        v55 = [v53 countByEnumeratingWithState:&v67 objects:v72 count:16];
      }

      while (v55);
    }

    headers = v5->_headers;
    v5->_headers = v52;

    v4 = v66;
  }

  v64 = *MEMORY[0x277D85DE8];
  return v5;
}

- (id)initForBuilding
{
  v11.receiver = self;
  v11.super_class = SGSimpleMailMessage;
  v2 = [(SGMessage *)&v11 initForBuilding];
  v3 = v2;
  if (v2)
  {
    [v2 _clearExistingHtml];
    v4 = objc_opt_new();
    v5 = v3[25];
    v3[25] = v4;

    v6 = objc_opt_new();
    v7 = v3[26];
    v3[26] = v6;

    v8 = objc_opt_new();
    v9 = v3[27];
    v3[27] = v8;
  }

  return v3;
}

+ (id)subjectByCleaningPrefixesInSubject:(id)a3
{
  v3 = a3;
  v4 = 0;
  if ([v3 length])
  {
    while (1)
    {
      v5 = [v3 rangeOfString:@":" options:0 range:{v4, objc_msgSend(v3, "length") - v4}];
      if (v5 == 0x7FFFFFFFFFFFFFFFLL || v5 - v4 > 6)
      {
        break;
      }

      v7 = v5;
      v8 = objc_autoreleasePoolPush();
      v4 = v7 + 1;
      if (v7 + 1 < [v3 length])
      {
        if (subjectByCleaningPrefixesInSubject___pasOnceToken9 != -1)
        {
          dispatch_once(&subjectByCleaningPrefixesInSubject___pasOnceToken9, &__block_literal_global_293);
        }

        v9 = subjectByCleaningPrefixesInSubject___pasExprOnceResult;
        v4 = [v3 rangeOfCharacterFromSet:v9 options:0 range:{v7 + 1, objc_msgSend(v3, "length") + ~v7}];

        if (v4 == 0x7FFFFFFFFFFFFFFFLL)
        {
          v4 = [v3 length];
          objc_autoreleasePoolPop(v8);
          break;
        }
      }

      objc_autoreleasePoolPop(v8);
    }
  }

  if ([v3 length] <= v4)
  {
    v11 = &stru_284703F00;
  }

  else
  {
    v10 = objc_autoreleasePoolPush();
    v11 = [v3 substringFromIndex:v4];
    objc_autoreleasePoolPop(v10);
  }

  return v11;
}

void __58__SGSimpleMailMessage_subjectByCleaningPrefixesInSubject___block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = [MEMORY[0x277CCA900] whitespaceCharacterSet];
  v2 = [v1 invertedSet];
  v3 = subjectByCleaningPrefixesInSubject___pasExprOnceResult;
  subjectByCleaningPrefixesInSubject___pasExprOnceResult = v2;

  objc_autoreleasePoolPop(v0);
}

+ (BOOL)headersContainInhumanOnes:(id)a3 keys:(id)a4
{
  v29 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v6 = a4;
  v7 = [v6 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v25;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v25 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v24 + 1) + 8 * i);
        v12 = objc_autoreleasePoolPush();
        v13 = [v11 lowercaseString];
        if (isInhumanHeader(v13) || ([v13 isEqual:@"list-unsubscribe"] & 1) != 0)
        {

          objc_autoreleasePoolPop(v12);
          v17 = 1;
          goto LABEL_20;
        }

        objc_autoreleasePoolPop(v12);
      }

      v8 = [v6 countByEnumeratingWithState:&v24 objects:v28 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v14 = objc_autoreleasePoolPush();
  v15 = [v5 hv_firstHeaderForKey:@"precedence"];
  v16 = v15;
  if (v15 && ([v15 isEqualToString:@"bulk"] & 1) != 0)
  {
    v17 = 1;
  }

  else
  {
    v18 = [v5 hv_firstHeaderForKey:{@"auto-submitted", v24}];
    v19 = v18;
    if (v18 && ![v18 isEqualToString:@"no"])
    {
      v17 = 1;
    }

    else
    {
      v20 = [v5 hv_firstHeaderForKey:@"x-email-type-id"];
      v21 = [v20 lowercaseString];

      v17 = [v21 hasPrefix:@"pp"];
    }
  }

  objc_autoreleasePoolPop(v14);
LABEL_20:

  v22 = *MEMORY[0x277D85DE8];
  return v17;
}

+ (BOOL)headerDictionaryContainsInhumanHeaders:(id)a3
{
  v39 = *MEMORY[0x277D85DE8];
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v3 = a3;
  v4 = [v3 countByEnumeratingWithState:&v33 objects:v38 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v34;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v34 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v33 + 1) + 8 * i);
        v9 = objc_autoreleasePoolPush();
        v10 = [v8 lowercaseString];
        if (isInhumanHeader(v10) || ([v10 isEqual:@"list-unsubscribe"] & 1) != 0)
        {

          objc_autoreleasePoolPop(v9);
          v26 = 1;
          v17 = v3;
          goto LABEL_23;
        }

        objc_autoreleasePoolPop(v9);
      }

      v5 = [v3 countByEnumeratingWithState:&v33 objects:v38 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v11 = [v3 objectForKeyedSubscript:@"precedence"];
  v12 = [v11 containsObject:@"bulk"];

  if (v12)
  {
    goto LABEL_24;
  }

  v13 = [v3 objectForKeyedSubscript:@"auto-submitted"];
  if (!v13)
  {
    goto LABEL_13;
  }

  v14 = v13;
  v15 = [v3 objectForKeyedSubscript:@"auto-submitted"];
  v16 = [v15 containsObject:@"no"];

  if (!v16)
  {
LABEL_24:
    v26 = 1;
  }

  else
  {
LABEL_13:
    [v3 objectForKeyedSubscript:@"x-email-type-id"];
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v17 = v32 = 0u;
    v18 = [v17 countByEnumeratingWithState:&v29 objects:v37 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v30;
      while (2)
      {
        for (j = 0; j != v19; ++j)
        {
          if (*v30 != v20)
          {
            objc_enumerationMutation(v17);
          }

          v22 = *(*(&v29 + 1) + 8 * j);
          v23 = objc_autoreleasePoolPush();
          v24 = [v22 lowercaseString];
          v25 = [v24 hasPrefix:@"pp"];

          objc_autoreleasePoolPop(v23);
          if (v25)
          {
            v26 = 1;
            goto LABEL_27;
          }
        }

        v19 = [v17 countByEnumeratingWithState:&v29 objects:v37 count:16];
        if (v19)
        {
          continue;
        }

        break;
      }
    }

    v26 = 0;
LABEL_27:

LABEL_23:
  }

  v27 = *MEMORY[0x277D85DE8];
  return v26;
}

@end