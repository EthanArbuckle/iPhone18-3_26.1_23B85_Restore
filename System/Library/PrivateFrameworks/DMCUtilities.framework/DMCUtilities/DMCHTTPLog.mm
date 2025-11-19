@interface DMCHTTPLog
+ (id)_logDirectoryForIdentifier:(id)a3;
+ (void)_writeRequestLogToURL:(id)a3 request:(id)a4 response:(id)a5 responseData:(id)a6 responseError:(id)a7;
+ (void)logHTTPDetailsForIdentifier:(id)a3 request:(id)a4 response:(id)a5 responseData:(id)a6 responseError:(id)a7;
+ (void)logHTTPDetailsForIdentifier:(id)a3 request:(id)a4 response:(id)a5 responseURL:(id)a6 responseError:(id)a7;
@end

@implementation DMCHTTPLog

+ (void)logHTTPDetailsForIdentifier:(id)a3 request:(id)a4 response:(id)a5 responseData:(id)a6 responseError:(id)a7
{
  v17 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  if (+[DMCFeatureOverrides useHTTPLogging])
  {
    v16 = [a1 _logDirectoryForIdentifier:v17];
    if (v16)
    {
      [a1 _writeRequestLogToURL:v16 request:v12 response:v13 responseData:v14 responseError:v15];
    }
  }
}

+ (void)logHTTPDetailsForIdentifier:(id)a3 request:(id)a4 response:(id)a5 responseURL:(id)a6 responseError:(id)a7
{
  v20 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  if (+[DMCFeatureOverrides useHTTPLogging])
  {
    v16 = MEMORY[0x1E696AEC0];
    v17 = [v14 absoluteString];
    v18 = [v16 stringWithFormat:@"Downloaded data to file: %@", v17];

    v19 = [v18 dataUsingEncoding:4];
    [a1 logHTTPDetailsForIdentifier:v20 request:v12 response:v13 responseData:v19 responseError:v15];
  }
}

+ (void)_writeRequestLogToURL:(id)a3 request:(id)a4 response:(id)a5 responseData:(id)a6 responseError:(id)a7
{
  v95 = *MEMORY[0x1E69E9840];
  v11 = a3;
  v12 = a4;
  v79 = a5;
  v78 = a6;
  v80 = a7;
  v13 = MEMORY[0x1E696AC80];
  v14 = objc_opt_new();
  v15 = [MEMORY[0x1E695DFE8] localTimeZone];
  v16 = [v13 stringFromDate:v14 timeZone:v15 formatOptions:3955];

  v17 = MEMORY[0x1E696AEC0];
  v18 = v12;
  v19 = [v12 HTTPMethod];
  v20 = [v17 stringWithFormat:@"%@-%@.txt", v16, v19];

  v81 = v11;
  v21 = [v11 URLByAppendingPathComponent:v20 isDirectory:0];
  for (i = 1; ; ++i)
  {
    v23 = [MEMORY[0x1E696AC08] defaultManager];
    v24 = [v21 path];
    v25 = [v23 fileExistsAtPath:v24];

    if (!v25 || (i - 1) > 0x63)
    {
      break;
    }

    v26 = MEMORY[0x1E696AEC0];
    v27 = [v18 HTTPMethod];
    v28 = [v26 stringWithFormat:@"%@-%@-%lu.txt", v16, v27, i];

    v29 = [v11 URLByAppendingPathComponent:v28 isDirectory:0];

    v21 = v29;
    v20 = v28;
  }

  v30 = [MEMORY[0x1E696AC08] defaultManager];
  v31 = [v21 path];
  v32 = [v30 createFileAtPath:v31 contents:0 attributes:0];

  if (v32)
  {
    v90 = 0;
    v33 = [MEMORY[0x1E696AC00] fileHandleForWritingToURL:v21 error:&v90];
    v34 = v90;
    if (v33)
    {
      v35 = [MEMORY[0x1E695DF70] array];
      [v35 addObject:@"<<<<< Request"];
      v75 = v34;
      v36 = MEMORY[0x1E696AEC0];
      v37 = [v18 HTTPMethod];
      [v18 URL];
      v38 = v77 = v33;
      v39 = [v38 path];
      v40 = [v36 stringWithFormat:@"%@ %@ HTTP/1.1", v37, v39];
      [v35 addObject:v40];

      v41 = [v18 allHTTPHeaderFields];
      v88[0] = MEMORY[0x1E69E9820];
      v88[1] = 3221225472;
      v88[2] = __80__DMCHTTPLog__writeRequestLogToURL_request_response_responseData_responseError___block_invoke;
      v88[3] = &unk_1E7ADCB20;
      v42 = v35;
      v89 = v42;
      [v41 enumerateKeysAndObjectsUsingBlock:v88];

      [v42 addObject:@"\n"];
      v43 = [v42 componentsJoinedByString:@"\n"];
      v44 = [v43 dataUsingEncoding:4];
      v87 = 0;
      LOBYTE(v38) = [v77 writeData:v44 error:&v87];
      v45 = v87;

      if ((v38 & 1) == 0)
      {
        v46 = *DMCLogObjects();
        if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412546;
          v92 = v21;
          v93 = 2112;
          v94 = v45;
          _os_log_impl(&dword_1B1630000, v46, OS_LOG_TYPE_ERROR, "Could not write HTTP request headers to file %@: %@", buf, 0x16u);
        }
      }

      v47 = [v18 HTTPBody];
      v48 = v79;
      v76 = v47;
      if (v47)
      {
        v86 = 0;
        v49 = [v77 writeData:v47 error:&v86];
        v50 = v86;
        v51 = v45;
        v45 = v50;

        if ((v49 & 1) == 0)
        {
          v52 = *DMCLogObjects();
          if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412546;
            v92 = v21;
            v93 = 2112;
            v94 = v45;
            _os_log_impl(&dword_1B1630000, v52, OS_LOG_TYPE_ERROR, "Could not write HTTP request body to file %@: %@", buf, 0x16u);
          }
        }
      }

      v73 = v45;
      v53 = [MEMORY[0x1E695DF70] array];

      [v53 addObject:@"\n>>>>> Response"];
      if (v79)
      {
        v54 = MEMORY[0x1E696AEC0];
        v55 = [v79 statusCode];
        v56 = [MEMORY[0x1E696AC68] localizedStringForStatusCode:{objc_msgSend(v79, "statusCode")}];
        v57 = [v54 stringWithFormat:@"HTTP/1.1 %ld %@", v55, v56];
        [v53 addObject:v57];

        v58 = [v79 allHeaderFields];
        v84[0] = MEMORY[0x1E69E9820];
        v84[1] = 3221225472;
        v84[2] = __80__DMCHTTPLog__writeRequestLogToURL_request_response_responseData_responseError___block_invoke_37;
        v84[3] = &unk_1E7ADCB20;
        v59 = v53;
        v85 = v59;
        [v58 enumerateKeysAndObjectsUsingBlock:v84];

        [v59 addObject:@"\n"];
      }

      else if (v80)
      {
        [v53 addObject:@"--- Error ---"];
        v64 = [v80 description];
        [v53 addObject:v64];
      }

      else
      {
        [v53 addObject:@"--- Unknown Error ---"];
      }

      v74 = v53;
      v65 = [v53 componentsJoinedByString:@"\n"];
      v66 = [v65 dataUsingEncoding:4];
      v83 = 0;
      v67 = [v77 writeData:v66 error:&v83];
      v68 = v83;

      if ((v67 & 1) == 0)
      {
        v69 = *DMCLogObjects();
        if (os_log_type_enabled(v69, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412546;
          v92 = v21;
          v93 = 2112;
          v94 = v68;
          _os_log_impl(&dword_1B1630000, v69, OS_LOG_TYPE_ERROR, "Could not write HTTP response headers to file %@: %@", buf, 0x16u);
        }
      }

      v62 = v78;
      if (v78)
      {
        v82 = 0;
        v33 = v77;
        v70 = [v77 writeData:v78 error:&v82];
        v34 = v82;

        if ((v70 & 1) == 0)
        {
          v71 = *DMCLogObjects();
          if (os_log_type_enabled(v71, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412546;
            v92 = v21;
            v93 = 2112;
            v94 = v34;
            _os_log_impl(&dword_1B1630000, v71, OS_LOG_TYPE_ERROR, "Could not write HTTP response body to file %@: %@", buf, 0x16u);
          }
        }
      }

      else
      {
        v34 = v68;
        v33 = v77;
      }

      [v33 closeFile];
    }

    else
    {
      v63 = *DMCLogObjects();
      if (os_log_type_enabled(v63, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v92 = v21;
        v93 = 2112;
        v94 = v34;
        _os_log_impl(&dword_1B1630000, v63, OS_LOG_TYPE_ERROR, "Could not open HTTP request log file %@: %@", buf, 0x16u);
      }

      v62 = v78;
      v48 = v79;
    }

    v61 = v80;
  }

  else
  {
    v60 = *DMCLogObjects();
    v61 = v80;
    if (os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v92 = v21;
      _os_log_impl(&dword_1B1630000, v60, OS_LOG_TYPE_ERROR, "Could not create HTTP request log file %@", buf, 0xCu);
    }

    v34 = 0;
    v62 = v78;
    v48 = v79;
  }

  v72 = *MEMORY[0x1E69E9840];
}

void __80__DMCHTTPLog__writeRequestLogToURL_request_response_responseData_responseError___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %@", a2, a3];
  [v3 addObject:v4];
}

void __80__DMCHTTPLog__writeRequestLogToURL_request_response_responseData_responseError___block_invoke_37(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %@", a2, a3];
  [v3 addObject:v4];
}

+ (id)_logDirectoryForIdentifier:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E695DFF8];
  v4 = a3;
  v5 = [v3 fileURLWithPath:@"/tmp/DMCHTTPLogs"];
  v6 = [v5 URLByAppendingPathComponent:v4 isDirectory:1];

  v7 = [MEMORY[0x1E696AC08] defaultManager];
  v14 = 0;
  v8 = [v7 createDirectoryAtURL:v6 withIntermediateDirectories:1 attributes:0 error:&v14];
  v9 = v14;

  if (v8)
  {
    v10 = v6;
  }

  else
  {
    v11 = *DMCLogObjects();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v16 = v6;
      v17 = 2112;
      v18 = v9;
      _os_log_impl(&dword_1B1630000, v11, OS_LOG_TYPE_ERROR, "Could not create HTTP logs directory %@: %@", buf, 0x16u);
    }

    v10 = 0;
  }

  v12 = *MEMORY[0x1E69E9840];

  return v10;
}

@end