@interface CalDAVTrafficLogScrubber
+ (BOOL)redactLog:(id)a3 toOutputFile:(id)a4 context:(id)a5;
+ (id)log;
- (BOOL)scrub;
- (CalDAVTrafficLogScrubber)init;
- (id)decompressedInputFile;
- (id)temporaryUncompressedFile;
- (void)cleanUp;
- (void)compressFileAt:(id)a3 to:(id)a4;
- (void)decompressedInputFile;
- (void)scrub;
@end

@implementation CalDAVTrafficLogScrubber

+ (id)log
{
  if (log_onceToken != -1)
  {
    +[CalDAVTrafficLogScrubber log];
  }

  v3 = log_log;

  return v3;
}

uint64_t __31__CalDAVTrafficLogScrubber_log__block_invoke()
{
  log_log = os_log_create("com.apple.calendar", "CalDAVTrafficLogScrubber");

  return MEMORY[0x2821F96F8]();
}

+ (BOOL)redactLog:(id)a3 toOutputFile:(id)a4 context:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = objc_alloc_init(CalDAVTrafficLogScrubber);
  [(CalDAVTrafficLogScrubber *)v10 setContext:v7];
  [(CalDAVTrafficLogScrubber *)v10 setInputURL:v9];

  [(CalDAVTrafficLogScrubber *)v10 setOutputURL:v8];
  if ([(CalDAVTrafficLogScrubber *)v10 scrub])
  {
    [(CalDAVTrafficLogScrubber *)v10 cleanUp];
    v11 = [v7 canceled] ^ 1;
  }

  else
  {
    LOBYTE(v11) = 0;
  }

  return v11;
}

- (CalDAVTrafficLogScrubber)init
{
  v6.receiver = self;
  v6.super_class = CalDAVTrafficLogScrubber;
  v2 = [(CalDAVTrafficLogScrubber *)&v6 init];
  if (v2)
  {
    v3 = objc_opt_new();
    urlsToCleanUp = v2->_urlsToCleanUp;
    v2->_urlsToCleanUp = v3;
  }

  return v2;
}

- (void)cleanUp
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = self->_urlsToCleanUp;
  v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [(CADDiagnosticLogContext *)self->_context deleteTemporaryFile:*(*(&v9 + 1) + 8 * v7++), v9];
      }

      while (v5 != v7);
      v5 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  [(NSMutableArray *)self->_urlsToCleanUp removeAllObjects];
  v8 = *MEMORY[0x277D85DE8];
}

- (BOOL)scrub
{
  v2 = self;
  v85 = *MEMORY[0x277D85DE8];
  v3 = [(CalDAVTrafficLogScrubber *)self decompressedInputFile];
  v4 = [(CalDAVTrafficLogScrubber *)v2 temporaryUncompressedFile];
  [(NSMutableArray *)v2->_urlsToCleanUp addObject:v4];
  v5 = [(CalDAVTrafficLogScrubber *)v2 context];
  [v5 log:{@"Redacting log at %@...", v3}];

  if (!v3)
  {
    goto LABEL_89;
  }

  v6 = [v3 path];
  v7 = fopen([v6 fileSystemRepresentation], "r");

  if (!v7)
  {
    v8 = +[CalDAVTrafficLogScrubber log];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [CalDAVTrafficLogScrubber scrub];
    }
  }

  v72 = v4;
  v73 = v2;
  v71 = v3;
  v9 = [v4 path];
  v10 = fopen([v9 fileSystemRepresentation], "w");

  if (v10)
  {
    if (v7)
    {
      if (([(CADDiagnosticLogContext *)v2->_context canceled]& 1) != 0)
      {
        goto LABEL_84;
      }

      v74 = v7;
      while (1)
      {
        v11 = objc_autoreleasePoolPush();
        v12 = writeNextTaskHeader(v7, v10);
        v13 = v12;
        if (v12 != 1)
        {
          break;
        }

        if (writeRequest_onceToken != -1)
        {
          [CalDAVTrafficLogScrubber scrub];
        }

        v44 = readFromFileUntilStringAndReturnData(v7, "\n", 0);
        v45 = v44;
        if (!v44)
        {
          fputs("Failed to parse request.\n", v10);
          goto LABEL_51;
        }

        v46 = [v44 rangeOfString:@" "];
        if (v46 == 0x7FFFFFFFFFFFFFFFLL)
        {
          fprintf(v10, "Request line (length %lu) did not have a space.\n", [v45 length]);
LABEL_51:

          goto LABEL_52;
        }

        v48 = v46;
        v49 = v47;
        v50 = [v45 substringToIndex:v46];
        v51 = [writeRequest_knownMethods containsObject:v50];
        if (v51)
        {
          fputNSString(v10, v50);
          v52 = v50;
          fputc(32, v10);
          v53 = [v45 substringFromIndex:v48 + v49];
          v54 = CalRedactURLString();
          fputNSString(v10, v54);
          fputc(10, v10);

          v55 = v50;
        }

        else
        {
          fprintf(v10, "Request with unknown method. (Method length=%lu, line length=%lu)\n", [v50 length], objc_msgSend(v45, "length"));
          v55 = 0;
        }

        v14 = v55;
        if (v51)
        {
          goto LABEL_14;
        }

LABEL_62:

        objc_autoreleasePoolPop(v11);
      }

      if (v12 == 2)
      {
        v38 = readFromFileUntilStringAndReturnData(v7, "\n", 0);
        v39 = "Unparseable response status length %lu; no HTTP version\n";
        if (![v38 hasPrefix:@"HTTP/"] || (v40 = objc_msgSend(v38, "rangeOfString:", @" "), v39 = "Unparseable response status length %lu; no code\n", v40 == 0x7FFFFFFFFFFFFFFFLL) || (v42 = objc_msgSend(v38, "rangeOfString:options:range:", @" ("), 0, v40 + v41, objc_msgSend(v38, "length") - (v40 + v41), v39 = "Unparseable response status length %lu; no space after code\n", v42 == 0x7FFFFFFFFFFFFFFFLL))
        {
          fprintf(v10, v39, [v38 length]);
          goto LABEL_43;
        }

        v60 = v42;
        v61 = v43;
        if (writeHttpStatus_onceToken != -1)
        {
          [CalDAVTrafficLogScrubber scrub];
        }

        v62 = [v38 substringWithRange:{5, v60 - 5}];
        if ([v62 rangeOfCharacterFromSet:writeHttpStatus_disallowedCharacters] != 0x7FFFFFFFFFFFFFFFLL)
        {
          fprintf(v10, "Unparseable response status length %lu; http version or response code (length %lu) contained things that are not numbers\n", [v38 length], objc_msgSend(v62, "length"));
        }

        if (([v38 hasSuffix:@""]) & 1) == 0)
        {
          fprintf(v10, "Unparseable response status length %lu; no ) at end of line\n", [v38 length]);
          goto LABEL_80;
        }

        v63 = v60 + v61;
        v64 = [v38 substringToIndex:v63];
        fputNSString(v10, v64);
        v65 = [v38 substringWithRange:{v63, objc_msgSend(v38, "length") + ~v63}];
        if ([writeHttpStatus_expectedStatusDescriptions containsObject:v65])
        {
          fputNSString(v10, v65);
        }

        else
        {
          fprintf(v10, "<unexpected description length %lu>", [v65 length]);
        }

        fputs(")\n", v10);
        v66 = fgetc(v7);
        if (v66 == -1)
        {
          goto LABEL_79;
        }

        if (v66 != 10)
        {
          ungetc(v66, v7);
LABEL_79:
          fputs("[Parse failure: missing newline]\n", v10);

LABEL_80:
LABEL_43:

LABEL_52:
          v14 = 0;
          goto LABEL_62;
        }
      }

      else if (!v12)
      {
        objc_autoreleasePoolPop(v11);
        goto LABEL_84;
      }

      v14 = 0;
LABEL_14:
      v78 = v11;
      if (getHeaderRedactionBehaviors_onceToken != -1)
      {
        [CalDAVTrafficLogScrubber scrub];
      }

      v15 = getHeaderRedactionBehaviors_headerRedactionBehaviors;
      v16 = readFromFileUntilStringAndReturnData(v7, "\n\n", 0);
      if (!v16)
      {
        fputs("[Parse failure: Failed to parse headers]\n", v10);

        goto LABEL_62;
      }

      v79 = v15;
      v75 = v16;
      v76 = v14;
      v77 = v13;
      v17 = [v16 componentsSeparatedByString:@"\n"];
      v80 = 0u;
      v81 = 0u;
      v82 = 0u;
      v83 = 0u;
      v18 = [v17 countByEnumeratingWithState:&v80 objects:v84 count:16];
      if (v18)
      {
        v19 = v18;
        v20 = *v81;
        do
        {
          for (i = 0; i != v19; ++i)
          {
            if (*v81 != v20)
            {
              objc_enumerationMutation(v17);
            }

            v22 = *(*(&v80 + 1) + 8 * i);
            if ([v22 length])
            {
              v23 = [v22 rangeOfString:@": "];
              if (v23 == 0x7FFFFFFFFFFFFFFFLL)
              {
                fprintf(v10, "[Parse failure: unparseable header of length %lu]\n", [v22 length]);
              }

              else
              {
                v25 = v23;
                v26 = v24;
                v27 = [v22 substringToIndex:v23];
                fputNSString(v10, v27);
                fputs(": ", v10);
                v28 = [v22 substringFromIndex:v25 + v26];
                v29 = [v27 lowercaseString];
                v30 = [v79 objectForKeyedSubscript:v29];
                v31 = [v30 integerValue];

                v32 = CalRedactString(v31, v28);
                fputNSString(v10, v32);
                fputc(10, v10);
              }
            }

            else
            {
              fputc(10, v10);
            }
          }

          v19 = [v17 countByEnumeratingWithState:&v80 objects:v84 count:16];
        }

        while (v19);
      }

      fputc(10, v10);

      v14 = v76;
      v7 = v74;
      if (checkForString(v74, "[compression: gzip]\n", 1))
      {
        fputs("[compression: gzip]\n", v10);
      }

      v33 = checkForString(v74, "\nTask ", 0);
      if (v77 == 1)
      {
        v34 = "\n>>>>>\n";
      }

      else
      {
        v34 = "\n<<<<<\n";
      }

      v11 = v78;
      if (v33)
      {
LABEL_61:
        fputs(v34, v10);

        goto LABEL_62;
      }

      v35 = fgetc(v74);
      ungetc(v35, v74);
      if (v35 != 60 && (v35 == 66 || [v14 isEqualToString:@"PUT"]))
      {
        v36 = readFromFileUntilStringAndReturnData(v74, v34, 0);
        v37 = CalRedactString(3, v36);
        fputNSString(v10, v37);
      }

      else
      {
        v36 = readFromFileUntilStringAndReturnData(v74, v34, 1);
        if (![v36 length])
        {
LABEL_60:

          goto LABEL_61;
        }

        v56 = v14;
        v37 = [objc_alloc(MEMORY[0x277CCAE70]) initWithData:v36];
        [v37 setShouldProcessNamespaces:1];
        v57 = objc_alloc_init(CalXMLSanitizer);
        [(CalXMLSanitizer *)v57 setOutput:v10];
        [v37 setDelegate:v57];
        v58 = [v37 parse];
        v59 = [(CalXMLSanitizer *)v57 scrubbedXML];
        fputNSString(v10, v59);

        if ((v58 & 1) == 0)
        {
          fputNSString(v10, @"[Parse failure: [NSXMLParser parse] returned NO]\n");
        }

        v14 = v56;
      }

      goto LABEL_60;
    }
  }

  else
  {
    v67 = +[CalDAVTrafficLogScrubber log];
    if (os_log_type_enabled(v67, OS_LOG_TYPE_ERROR))
    {
      [CalDAVTrafficLogScrubber scrub];
    }

    if (v7)
    {
LABEL_84:
      fclose(v7);
    }

    if (!v10)
    {
      goto LABEL_87;
    }
  }

  fclose(v10);
LABEL_87:
  v2 = v73;
  v3 = v71;
  v4 = v72;
  if (([(CADDiagnosticLogContext *)v73->_context canceled]& 1) == 0)
  {
    [CADDiagnosticsUtils compressFileAt:v72 to:v73->_outputURL context:v73->_context];
  }

LABEL_89:
  v68 = [(CalDAVTrafficLogScrubber *)v2 context];
  [v68 log:{@"...finished redacting log from %@", v3}];

  v69 = *MEMORY[0x277D85DE8];
  return 1;
}

- (id)temporaryUncompressedFile
{
  v3 = [(NSURL *)self->_outputURL URLByDeletingPathExtension];
  v4 = [v3 lastPathComponent];

  v5 = [v4 stringByAppendingString:@"~temp"];

  v6 = [(CADDiagnosticLogContext *)self->_context temporaryFileForName:v5];

  return v6;
}

- (id)decompressedInputFile
{
  v2 = MEMORY[0x28223BE20](self);
  v43[4096] = *MEMORY[0x277D85DE8];
  v3 = v2 + 2;
  v4 = [v2[2] pathExtension];
  v5 = [v4 isEqualToString:@"gz"];

  if ((v5 & 1) == 0)
  {
    v18 = *v3;
    goto LABEL_47;
  }

  v6 = [v2[3] URLByDeletingPathExtension];
  v7 = [v6 lastPathComponent];

  v36 = v7;
  v8 = [v2[4] temporaryFileForName:v7];
  v9 = [v2[2] path];
  v35 = v8;
  v10 = [v8 path];
  v11 = v9;
  v12 = v10;
  memset(&strm.avail_out + 1, 0, 76);
  *&strm.avail_in = 0u;
  strm.next_in = v43;
  strm.next_out = __ptr;
  strm.avail_in = 0;
  strm.avail_out = 0x8000;
  v13 = fopen([v11 fileSystemRepresentation], "r");
  v14 = fopen([v12 fileSystemRepresentation], "w");
  if (!inflateInit2_(&strm, 47, "1.2.12", 112))
  {
    v33 = v11;
    v34 = v2 + 2;
    v19 = 1;
    next_in = strm.next_in;
    while (1)
    {
      if (next_in != v43)
      {
        [CalDAVTrafficLogScrubber decompressedInputFile];
      }

      v21 = fread(&next_in[strm.avail_in], 1uLL, 0x8000 - strm.avail_in, v13);
      if (v21)
      {
        break;
      }

      v27 = ferror(v13);
      if (v27)
      {
        v28 = v27;
        v29 = +[CalDAVTrafficLogScrubber log];
        if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
        {
          *buf = 67109120;
          v41[0] = v28;
          _os_log_error_impl(&dword_22430B000, v29, OS_LOG_TYPE_ERROR, "error reading file: %i", buf, 8u);
        }

LABEL_32:

        v19 = 0;
      }

      else if (strm.avail_in)
      {
        goto LABEL_11;
      }

LABEL_33:
      v22 = 1;
LABEL_34:
      if (strm.next_in == v43)
      {
        v15 = +[CalDAVTrafficLogScrubber log];
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          [(CalDAVTrafficLogScrubber *)buf decompressedInputFile];
        }

        v17 = v35;
        v16 = v36;
        v11 = v33;
        v3 = v34;
        goto LABEL_42;
      }

      next_in = v43;
      __memmove_chk();
      strm.next_in = v43;
      if (v22)
      {
        inflateEnd(&strm);
        fclose(v13);
        fclose(v14);

        v17 = v35;
        v16 = v36;
        v3 = v2 + 2;
        if (v19)
        {
          [v2[1] addObject:v35];
          v18 = v35;
          goto LABEL_46;
        }

        goto LABEL_43;
      }
    }

    strm.avail_in += v21;
LABEL_11:
    v22 = 0;
    while (1)
    {
      v23 = inflate(&strm, 0);
      if (v23)
      {
        v24 = v23;
        if (v23 == 1)
        {
          v25 = 0;
        }

        else
        {
          v26 = +[CalDAVTrafficLogScrubber log];
          if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
          {
            *buf = 67109120;
            v41[0] = v24;
            _os_log_error_impl(&dword_22430B000, v26, OS_LOG_TYPE_ERROR, "zlib gave an error: %i", buf, 8u);
          }

          v19 = 0;
          v25 = 1;
        }

        v22 = 1;
      }

      else
      {
        v25 = 1;
      }

      if (strm.avail_out >> 15)
      {
        goto LABEL_34;
      }

      if (fwrite(__ptr, 0x8000 - strm.avail_out, 1uLL, v14) != 1)
      {
        v29 = +[CalDAVTrafficLogScrubber log];
        if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
        {
          [(CalDAVTrafficLogScrubber *)v38 decompressedInputFile:v14];
        }

        goto LABEL_32;
      }

      if (v22)
      {
        if ((v25 & 1) == 0)
        {
          goto LABEL_33;
        }
      }

      else
      {
        strm.next_out = __ptr;
        strm.avail_out = 0x8000;
        if (!strm.avail_in)
        {
          v22 = 0;
          goto LABEL_34;
        }
      }
    }
  }

  v15 = +[CalDAVTrafficLogScrubber log];
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    [CalDAVTrafficLogScrubber decompressedInputFile];
  }

  v17 = v35;
  v16 = v36;
LABEL_42:

  inflateEnd(&strm);
  fclose(v13);
  fclose(v14);

LABEL_43:
  v30 = +[CalDAVTrafficLogScrubber log];
  if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
  {
    [(CalDAVTrafficLogScrubber *)v3 decompressedInputFile];
  }

  v18 = 0;
LABEL_46:

LABEL_47:
  v31 = *MEMORY[0x277D85DE8];

  return v18;
}

- (void)compressFileAt:(id)a3 to:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 path];
  v8 = fopen([v7 fileSystemRepresentation], "r");

  if (!v8)
  {
    v9 = +[CalDAVTrafficLogScrubber log];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [CalDAVTrafficLogScrubber scrub];
    }
  }

  v10 = [v6 path];
  v11 = fopen([v10 fileSystemRepresentation], "w");

  if (!v11)
  {
    v12 = +[CalDAVTrafficLogScrubber log];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [CalDAVTrafficLogScrubber scrub];
    }
  }

  if (CPFileCompressionZDeflate())
  {
    v13 = +[CalDAVTrafficLogScrubber log];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [CalDAVTrafficLogScrubber compressFileAt:to:];
    }
  }

  if (v8)
  {
    fclose(v8);
  }

  if (v11)
  {
    fclose(v11);
  }
}

- (void)scrub
{
  OUTLINED_FUNCTION_4_0();
  v7 = *MEMORY[0x277D85DE8];
  v0 = *__error();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x12u);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)decompressedInputFile
{
  v7 = *MEMORY[0x277D85DE8];
  v1 = *a1;
  OUTLINED_FUNCTION_2_0();
  v6 = v2;
  _os_log_error_impl(&dword_22430B000, v3, OS_LOG_TYPE_ERROR, "Couldn't decompress input file (%@) to output file (%@).", v5, 0x16u);
  v4 = *MEMORY[0x277D85DE8];
}

- (void)compressFileAt:to:.cold.3()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_3_0(&dword_22430B000, v0, v1, "Compressing file failed: %i", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

@end