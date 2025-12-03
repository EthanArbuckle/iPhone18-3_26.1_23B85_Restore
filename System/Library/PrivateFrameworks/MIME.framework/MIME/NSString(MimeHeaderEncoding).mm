@interface NSString(MimeHeaderEncoding)
- (__CFString)mf_decodeMimeHeaderValueWithEncodingHint:()MimeHeaderEncoding;
- (id)mf_decodeMimeHeaderValueWithCharsetHint:()MimeHeaderEncoding;
- (id)mf_encodedHeaderDataWithEncodingHint:()MimeHeaderEncoding;
@end

@implementation NSString(MimeHeaderEncoding)

- (id)mf_encodedHeaderDataWithEncodingHint:()MimeHeaderEncoding
{
  cfStringEncoding = a3;
  v88 = *MEMORY[0x1E69E9840];
  if (a3 == -1)
  {
    mf_bestMimeCharset = [(__CFString *)self mf_bestMimeCharset];
    cfStringEncoding = [mf_bestMimeCharset cfStringEncoding];
  }

  if (cfStringEncoding != 1536)
  {
    if (MFStringCanBeConvertedLosslessly(self, 0x600u))
    {
      cfStringEncoding = 1536;
      goto LABEL_7;
    }

    if (MFStringCanBeConvertedLosslessly(self, cfStringEncoding))
    {
LABEL_7:
      mf_bestMimeCharset2 = [MFMimeCharset charsetForEncoding:cfStringEncoding];
      if (mf_bestMimeCharset2)
      {
        goto LABEL_9;
      }
    }
  }

  mf_bestMimeCharset2 = [(__CFString *)self mf_bestMimeCharset];
LABEL_9:
  v73 = mf_bestMimeCharset2;
  if ([mf_bestMimeCharset2 cfStringEncoding] != 1536 || -[__CFString length](self, "length") >= 2 && (-[__CFString hasPrefix:](self, "hasPrefix:", @"=?") & 1) != 0 || (-[__CFString rangeOfString:](self, "rangeOfString:", @" =?"), v6) || (-[__CFString rangeOfString:](self, "rangeOfString:", @"\t=?"), v7))
  {
    if ([v73 useBase64InHeaders])
    {
      v74 = 0;
      v8 = 1;
    }

    else
    {
      v9 = MFCreateDataWithString(self, [v73 cfStringEncoding], 0);
      v10 = [v9 length];
      bytes = [v9 bytes];
      v74 = v9;
      if (v10 < 1)
      {
        v18 = 0;
      }

      else
      {
        v12 = bytes;
        v13 = 0;
        v14 = bytes + v10;
        v15 = MEMORY[0x1E69E9830];
        do
        {
          v16 = *v12;
          if ((v16 & 0x80000000) != 0)
          {
            v17 = __maskrune(v16, 0x40000uLL);
          }

          else
          {
            v17 = *(v15 + 4 * v16 + 60) & 0x40000;
          }

          if (!v17)
          {
            ++v13;
          }

          ++v12;
        }

        while (v12 < v14);
        v18 = (4 * v13);
      }

      v8 = 3 * v10 < v18;
    }

    v19 = [@"=?" mutableCopyWithZone:0];
    charsetName = [v73 charsetName];
    [v19 appendString:charsetName];

    [v19 appendString:@"?"];
    if (v8)
    {
      v21 = @"B";
    }

    else
    {
      v21 = @"Q";
    }

    [v19 appendString:v21];
    [v19 appendString:@"?"];
    v68 = v19;
    v69 = MFCreateDataWithString(v19, 0x600u, 0);
    if (v8)
    {
      cfStringEncoding2 = [v73 cfStringEncoding];
      v23 = [v69 length];
      v75 = v74;
      v77 = v69;
      v24 = [objc_allocWithZone(MEMORY[0x1E695DF88]) init];
      v25 = 3 * ((64 - v23) >> 2);
      if (v75 && [v75 length] <= v25)
      {
        [(MFBufferedDataConsumer *)v24 appendData:v77];
        mf_encodeBase64HeaderData = [v75 mf_encodeBase64HeaderData];
        [(MFBufferedDataConsumer *)v24 appendData:mf_encodeBase64HeaderData];

        [(MFBufferedDataConsumer *)v24 mf_appendCString:"?="];
      }

      else
      {
        Mutable = CFDataCreateMutable(0, 3 * ((64 - v23) >> 2));
        v27 = CFStringGetLength(self);
        length = 0xAAAAAAAAAAAAAAAALL;
        if (v27 >= 1)
        {
          v28 = 0;
          while (1)
          {
            CFDataSetLength(Mutable, v25);
            MutableBytePtr = CFDataGetMutableBytePtr(Mutable);
            v90.location = v28;
            v90.length = v27;
            Bytes = MFStringGetBytes(self, v90, cfStringEncoding2, 0, 0, MutableBytePtr, v25, &length);
            v31 = Bytes;
            if (Bytes < v27)
            {
              v32 = Bytes + v28;
              location = CFStringGetRangeOfComposedCharactersAtIndex(self, Bytes + v28).location;
              if (location < v32)
              {
                v34 = location - v28;
                if (location > v28)
                {
                  v35 = CFDataGetMutableBytePtr(Mutable);
                  v91.location = v28;
                  v91.length = v34;
                  MFStringGetBytes(self, v91, cfStringEncoding2, 0, 0, v35, v25, &length);
                  v31 = v34;
                }
              }
            }

            if (length > v25)
            {
              break;
            }

            CFDataSetLength(Mutable, length);
            if ([(MFBufferedDataConsumer *)v24 length])
            {
              [(MFBufferedDataConsumer *)v24 mf_appendCString:"\n "];
            }

            [(MFBufferedDataConsumer *)v24 appendData:v77];
            mf_encodeBase64HeaderData2 = [(__CFData *)Mutable mf_encodeBase64HeaderData];
            [(MFBufferedDataConsumer *)v24 appendData:mf_encodeBase64HeaderData2];

            [(MFBufferedDataConsumer *)v24 mf_appendCString:"?="];
            v37 = v27 <= v31;
            v27 -= v31;
            if (v37)
            {
              v38 = 0;
            }

            else
            {
              v38 = v31;
            }

            if (!v37)
            {
              v28 += v38;
              if (v27 > 0)
              {
                continue;
              }
            }

            goto LABEL_47;
          }

          ExternalRepresentation = CFStringCreateExternalRepresentation(*MEMORY[0x1E695E480], self, cfStringEncoding2, 0x3Fu);
          ef_hexString = [(__CFData *)ExternalRepresentation ef_hexString];
          v64 = MFLogGeneral();
          if (os_log_type_enabled(v64, OS_LOG_TYPE_ERROR))
          {
            *extraLength = 134218754;
            *&extraLength[4] = length;
            v82 = 2048;
            v83 = v25;
            v84 = 1024;
            v85 = cfStringEncoding2;
            v86 = 2112;
            v87 = ef_hexString;
            _os_log_error_impl(&dword_1D36B2000, v64, OS_LOG_TYPE_ERROR, "Error during base64 encoding: chunkLength=%ld maxInputBytesPerChunk=%lu encoding=%d str=%@", extraLength, 0x26u);
          }

          CFRelease(ExternalRepresentation);
          CFRelease(Mutable);
          v65 = MFLogGeneral();
          if (os_log_type_enabled(v65, OS_LOG_TYPE_FAULT))
          {
            [NSString(MimeHeaderEncoding) mf_encodedHeaderDataWithEncodingHint:v65];
          }

          data = 0;
          v56 = v24;
          goto LABEL_70;
        }

LABEL_47:
        if (Mutable)
        {
          CFRelease(Mutable);
        }
      }

      v56 = v24;
      data = v56;
    }

    else
    {
      cfStringEncoding3 = [v73 cfStringEncoding];
      v39 = [v69 length];
      v66 = v74;
      v70 = v69;
      v78 = objc_alloc_init(MFBufferedDataConsumer);
      v71 = [[MFData alloc] initWithBytesNoCopy:"?=" length:2 freeWhenDone:0];
      v72 = 64 - v39;
      if (v66 && +[MFQuotedPrintableEncoder requiredSizeToEncodeHeaderBytes:length:](MFQuotedPrintableEncoder, "requiredSizeToEncodeHeaderBytes:length:", [v66 bytes], objc_msgSend(v66, "length")) <= v72)
      {
        [(MFBufferedDataConsumer *)v78 appendData:v70];
        v58 = [(MFBaseFilterDataConsumer *)[MFQuotedPrintableEncoder alloc] initWithConsumer:v78];
        [(MFQuotedPrintableEncoder *)v58 setForHeader:1];
        [(MFQuotedPrintableEncoder *)v58 appendData:v66];
        [(MFQuotedPrintableEncoder *)v58 done];
        [(MFBufferedDataConsumer *)v78 appendData:v71];
      }

      else
      {
        v40 = CFStringGetLength(self);
        v41 = CFDataCreateMutable(0, 0);
        v67 = [[MFData alloc] initWithBytesNoCopy:"\n " length:2 freeWhenDone:0];
        if (v40 >= 1)
        {
          v42 = 0;
          v43 = 0;
          v44 = 0;
          v45 = 0;
          do
          {
            RangeOfComposedCharactersAtIndex = CFStringGetRangeOfComposedCharactersAtIndex(self, v42);
            *extraLength = 0xAAAAAAAAAAAAAAAALL;
            MFStringGetBytes(self, RangeOfComposedCharactersAtIndex, cfStringEncoding3, 0, 0, 0, 0, extraLength);
            CFDataIncreaseLength(v41, *extraLength);
            v47 = CFDataGetMutableBytePtr(v41);
            MFStringGetBytes(self, RangeOfComposedCharactersAtIndex, cfStringEncoding3, 0, 0, &v47[v43], *extraLength, 0);
            v48 = [MFQuotedPrintableEncoder requiredSizeToEncodeHeaderBytes:&v47[v43] length:*extraLength];
            v45 += v48;
            if (v45 <= v72)
            {
              v43 = CFDataGetLength(v41);
            }

            else
            {
              if (v44)
              {
                [(MFBufferedDataConsumer *)v78 appendData:v67];
              }

              [(MFBufferedDataConsumer *)v78 appendData:v70];
              v49 = [(MFBaseFilterDataConsumer *)[MFQuotedPrintableEncoder alloc] initWithConsumer:v78];
              [(MFQuotedPrintableEncoder *)v49 setForHeader:1];
              v50 = [[MFData alloc] initWithBytesNoCopy:CFDataGetBytePtr(v41) length:v43 freeWhenDone:0];
              [(MFQuotedPrintableEncoder *)v49 appendData:v50];
              [(MFQuotedPrintableEncoder *)v49 done];
              [(MFBufferedDataConsumer *)v78 appendData:v71];
              v51 = CFDataGetMutableBytePtr(v41);
              memmove(v51, &v47[v43], *extraLength);
              CFDataSetLength(v41, *extraLength);
              v43 = *extraLength;

              v44 = 1;
              v45 = v48;
            }

            v52 = v42 + v40;
            v42 = RangeOfComposedCharactersAtIndex.location + RangeOfComposedCharactersAtIndex.length;
            v40 = v52 - (RangeOfComposedCharactersAtIndex.location + RangeOfComposedCharactersAtIndex.length);
          }

          while (v40 > 0);
          if (v43)
          {
            if (v44)
            {
              [(MFBufferedDataConsumer *)v78 appendData:v67];
            }

            [(MFBufferedDataConsumer *)v78 appendData:v70];
            v53 = [(MFBaseFilterDataConsumer *)[MFQuotedPrintableEncoder alloc] initWithConsumer:v78];
            [(MFQuotedPrintableEncoder *)v53 setForHeader:1];
            v54 = [[MFData alloc] initWithBytesNoCopy:CFDataGetBytePtr(v41) length:v43 freeWhenDone:0];
            [(MFQuotedPrintableEncoder *)v53 appendData:v54];
            [(MFQuotedPrintableEncoder *)v53 done];
            [(MFBufferedDataConsumer *)v78 appendData:v71];
          }
        }

        if (v41)
        {
          CFRelease(v41);
        }
      }

      [(MFBufferedDataConsumer *)v78 done];
      data = [(MFBufferedDataConsumer *)v78 data];

      v56 = v78;
    }

LABEL_70:

    v59 = data;
    goto LABEL_71;
  }

  v59 = MFCreateDataWithString(self, [v73 cfStringEncoding], 0);
LABEL_71:

  v60 = *MEMORY[0x1E69E9840];

  return v59;
}

- (__CFString)mf_decodeMimeHeaderValueWithEncodingHint:()MimeHeaderEncoding
{
  v43 = *MEMORY[0x1E69E9840];
  SystemEncoding = CFStringGetSystemEncoding();
  [(__CFString *)self rangeOfString:@"=?"];
  v5 = v4 == 0;
  if (v4 || [(__CFString *)self hasPrefix:@"?"]&& ([(__CFString *)self hasSuffix:@"?="]& 1) != 0)
  {
    v36 = objc_alloc_init(MEMORY[0x1E696AD60]);
    if (!mf_decodeMimeHeaderValueWithEncodingHint__quSet)
    {
      mf_decodeMimeHeaderValueWithEncodingHint__quSet = CFCharacterSetCreateWithCharactersInString(0, @"?_");
    }

    v6 = [objc_alloc(MEMORY[0x1E696AE88]) initWithString:self];
    [v6 setCharactersToBeSkipped:0];
    selfCopy = self;
    v7 = 0;
    v8 = 0;
    while (([v6 isAtEnd] & 1) == 0)
    {
      if (v5)
      {
        v9 = @"?";
      }

      else
      {
        v9 = @"=?";
      }

      v40 = v8;
      v10 = [v6 scanUpToString:v9 intoString:&v40];
      v11 = v40;

      v8 = v11;
      if (v10)
      {
        if ((v7 & 1) == 0 || ([MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet], v12 = objc_claimAutoreleasedReturnValue(), -[__CFString stringByTrimmingCharactersInSet:](v11, "stringByTrimmingCharactersInSet:", v12), v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(v13, "length") == 0, v13, v12, !v14))
        {
          [v36 appendString:v8];
        }
      }

      if ([v6 mf_scanUpAndOverString:v9])
      {
        v39 = 0;
        v15 = [v6 scanUpToString:@"?" intoString:&v39];
        v16 = v39;
        if (v15 && [v6 mf_scanUpAndOverString:@"?"])
        {
          v17 = MFEncodingForCharsetWithFallback(v16, a3);
          if (v17 == -1)
          {
            v18 = a3;
          }

          else
          {
            v18 = v17;
          }

          v38 = 0;
          v7 = [v6 scanUpToString:@"?" intoString:&v38];
          v34 = v38;
          if (v7)
          {
            [v6 mf_scanUpAndOverString:@"?"];
            v19 = [(__CFString *)v34 compare:@"Q" options:1];
            if (!v19)
            {
              goto LABEL_25;
            }

            if ([(__CFString *)v34 compare:@"B" options:1])
            {
              v20 = MFLogGeneral();
              if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412290;
                v42 = v34;
                _os_log_impl(&dword_1D36B2000, v20, OS_LOG_TYPE_DEFAULT, "#Warning Never heard of a %@ type encoding--treating as unencoded", buf, 0xCu);
              }

LABEL_25:
              v21 = 0;
              goto LABEL_34;
            }

            v21 = 1;
LABEL_34:
            while (1)
            {
              v23 = [v6 mf_nextTokenWithPunctuation:mf_decodeMimeHeaderValueWithEncodingHint__quSet];

              if (!v23)
              {
                break;
              }

              if ([(__CFString *)v23 isEqual:@"_"])
              {

                v23 = @" ";
              }

              else if (-[__CFString isEqual:](v23, "isEqual:", @"?") && ([v6 mf_scanUpAndOverString:@"="] & 1) != 0)
              {
                break;
              }

              v24 = MFCreateDataWithString(v23, SystemEncoding, 0);
              v25 = v24;
              if (v19)
              {
                if (v21)
                {
                  mf_decodeBase64 = [v24 mf_decodeBase64];
                }

                else
                {
                  mf_decodeBase64 = v24;
                }
              }

              else
              {
                mf_decodeBase64 = [v24 mf_decodeQuotedPrintableForText:1];
              }

              v27 = mf_decodeBase64;
              if (mf_decodeBase64)
              {
                v28 = MFCreateStringWithData(mf_decodeBase64, v18, 0);
                if (v28 || v18 != a3 && (v28 = MFCreateStringWithData(v27, a3, 0)) != 0)
                {
                  [v36 appendString:v28];
                }

                else
                {
                  v29 = MFLogGeneral();
                  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 138412290;
                    v42 = v27;
                    _os_log_impl(&dword_1D36B2000, v29, OS_LOG_TYPE_DEFAULT, "#Warning was unable to convert decoded data to a string: %@", buf, 0xCu);
                  }

                  v28 = 0;
                }
              }

              v8 = v23;
            }
          }

          else
          {
            v22 = MFLogGeneral();
            if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v42 = selfCopy;
              _os_log_impl(&dword_1D36B2000, v22, OS_LOG_TYPE_DEFAULT, "#Warning Missing encoding char (Q or B) in MIME header: %@", buf, 0xCu);
            }

            v23 = v8;
          }

          v5 = 0;
          v8 = v23;
        }

        else
        {
          v7 = 0;
        }
      }

      else
      {
        v7 = 0;
        v16 = 0;
      }
    }

    selfCopy2 = v36;
  }

  else
  {
    selfCopy2 = self;
  }

  v31 = *MEMORY[0x1E69E9840];

  return selfCopy2;
}

- (id)mf_decodeMimeHeaderValueWithCharsetHint:()MimeHeaderEncoding
{
  v4 = a3;
  v5 = [self mf_decodeMimeHeaderValueWithEncodingHint:MFEncodingForCharset(v4)];

  return v5;
}

@end